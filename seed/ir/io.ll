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
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"io::#show_rune", ptr null }
@"var.io::#show_rune" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"io::#clean_addr", ptr null }
@"var.io::#clean_addr" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"io::#refill", ptr null }
@"var.io::#refill" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"io::outs", ptr null }
@"var.io::outs" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"io::errs", ptr null }
@"var.io::errs" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::read", ptr null }
@"var.io::read" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"io::read_all", ptr null }
@"var.io::read_all" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.12 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
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
  store ptr @clo.const.3, ptr @"var.io::#show_rune", align 8
  store ptr @clo.const.4, ptr @"var.io::#clean_addr", align 8
  store ptr @clo.const.5, ptr @"var.io::#refill", align 8
  store ptr @clo.const.6, ptr @"var.io::outs", align 8
  store ptr @clo.const.7, ptr @"var.io::errs", align 8
  store ptr @clo.const.8, ptr @"var.io::read", align 8
  store ptr @clo.const.9, ptr @"var.io::read_all", align 8
  store ptr @clo.const.10, ptr @"var.io::read_byte", align 8
  store ptr @clo.const.11, ptr @"var.io::read_until", align 8
  store ptr @clo.const.12, ptr @"var.io::read_line", align 8
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
  ret void

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal ptr @"io::#show_rune"(i64 %0) #1 {
entry:
  %var.b272 = alloca ptr, align 8
  %var.b87 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %b.freeze.done464, %b.freeze.done233, %b.freeze.done, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %builder.freeze, %b.freeze.done ], [ %builder.freeze253, %b.freeze.done233 ], [ %builder.freeze484, %b.freeze.done464 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.r, align 8
  %call.res = call ptr @"str::from_byte"(i64 %var.load1)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %cmptmp4 = icmp slt i64 %var.load, 2048
  br i1 %cmptmp4, label %choice.case2, label %choice.next3

choice.case2:                                     ; preds = %choice.next
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

choice.next3:                                     ; preds = %choice.next
  %cmptmp73 = icmp slt i64 %var.load, 65536
  br i1 %cmptmp73, label %choice.case71, label %choice.next72

b.buf.len5:                                       ; preds = %str_overflow_abort, %choice.case2
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load7 = load i64, ptr %var.r, align 8
  %shrtmp = lshr i64 %var.load7, 6
  %addtmp = add i64 192, %shrtmp
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load i64, ptr %var.r, align 8
  %shrtmp9 = lshr i64 %var.load8, 6
  %addtmp10 = add i64 192, %shrtmp9
  %b.b.ge0 = icmp sge i64 %addtmp10, 0
  %b.b.le255 = icmp sle i64 %addtmp10, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %choice.case2
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len5
  %b.byte.i8 = trunc i64 %addtmp10 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len11 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap12 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data13 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len11, %b.cap12
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len5
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
  %var.load22 = load i64, ptr %var.r, align 8
  %bandtmp = and i64 %var.load22, 63
  %addtmp23 = add i64 128, %bandtmp
  %b.load24 = load ptr, ptr %var.b, align 8
  %var.load25 = load i64, ptr %var.r, align 8
  %bandtmp26 = and i64 %var.load25, 63
  %addtmp27 = add i64 128, %bandtmp26
  %b.b.ge028 = icmp sge i64 %addtmp27, 0
  %b.b.le25529 = icmp sle i64 %addtmp27, 255
  %b.byte.range30 = and i1 %b.b.ge028, %b.b.le25529
  br i1 %b.byte.range30, label %b.byte_ok31, label %b.byte_err32

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

b.byte_ok31:                                      ; preds = %b.byte_err32, %b.push_done
  %b.byte.i833 = trunc i64 %addtmp27 to i8
  %b.len34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 0
  %b.len35 = load i64, ptr %b.len34, align 8
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.data38 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 1
  %b.data39 = load ptr, ptr %b.data38, align 8
  %b.needs.grow40 = icmp eq i64 %b.len35, %b.cap37
  br i1 %b.needs.grow40, label %b.grow41, label %b.nogrow42

b.byte_err32:                                     ; preds = %b.push_done
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok31

b.grow41:                                         ; preds = %b.byte_ok31
  %b.cap244 = mul i64 %b.cap37, 2
  %b.cap.small45 = icmp slt i64 %b.cap244, 16
  %b.new.cap46 = select i1 %b.cap.small45, i64 16, i64 %b.cap244
  %b.new.buf.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap46, i64 1)
  %sum48 = extractvalue { i64, i1 } %b.new.buf.len47, 0
  %ovf49 = extractvalue { i64, i1 } %b.new.buf.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %b.new.buf.len50

b.nogrow42:                                       ; preds = %b.byte_ok31
  br label %b.push_done43

b.push_done43:                                    ; preds = %b.nogrow42, %b.new.buf.len50
  %b.cur.data57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 1
  %b.cur.data58 = load ptr, ptr %b.cur.data57, align 8
  %b.cur.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 0
  %b.cur.len60 = load i64, ptr %b.cur.len59, align 8
  %b.byte.gep61 = getelementptr i8, ptr %b.cur.data58, i64 %b.cur.len60
  store i8 %b.byte.i833, ptr %b.byte.gep61, align 1
  %b.next.len62 = add i64 %b.cur.len60, 1
  %b.nul63 = getelementptr i8, ptr %b.cur.data58, i64 %b.next.len62
  store i8 0, ptr %b.nul63, align 1
  %b.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 0
  store i64 %b.next.len62, ptr %b.len.gep64, align 8
  %var.load65 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %b.freeze.len66 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %b.freeze.data67 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len50:                                  ; preds = %str_overflow_abort51, %b.grow41
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum48)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf53, ptr align 1 %b.data39, i64 %b.len35, i1 false)
  %b.grow.nul54 = getelementptr i8, ptr %b.new.buf53, i64 %b.len35
  store i8 0, ptr %b.grow.nul54, align 1
  %b.new.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 1
  store ptr %b.new.buf53, ptr %b.new.data.gep55, align 8
  %b.new.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load24, i32 0, i32 2
  store i64 %b.new.cap46, ptr %b.new.cap.gep56, align 8
  br label %b.push_done43

str_overflow_abort51:                             ; preds = %b.grow41
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len50

b.freeze.check:                                   ; preds = %b.push_done43
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data67, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data67, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data67, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur68 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %b.freeze.len66)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data67, i64 %b.freeze.len66, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done43
  %b.freeze.data69 = phi ptr [ %b.freeze.data67, %b.push_done43 ], [ %b.freeze.data67, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur70 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len66, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data69, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit

choice.case71:                                    ; preds = %choice.next3
  %arena.cur74 = call ptr @dva_arena_current()
  %builder.new75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 24)
  %b.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new75, i32 0, i32 1
  %b.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new75, i32 0, i32 0
  %b.cap.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new75, i32 0, i32 2
  %b.buf.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 1)
  %sum80 = extractvalue { i64, i1 } %b.buf.len79, 0
  %ovf81 = extractvalue { i64, i1 } %b.buf.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.buf.len82

choice.next72:                                    ; preds = %choice.next3
  %arena.cur259 = call ptr @dva_arena_current()
  %builder.new260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 24)
  %b.data.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new260, i32 0, i32 1
  %b.len.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new260, i32 0, i32 0
  %b.cap.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new260, i32 0, i32 2
  %b.buf.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 1)
  %sum265 = extractvalue { i64, i1 } %b.buf.len264, 0
  %ovf266 = extractvalue { i64, i1 } %b.buf.len264, 1
  br i1 %ovf266, label %str_overflow_abort268, label %b.buf.len267

b.buf.len82:                                      ; preds = %str_overflow_abort83, %choice.case71
  %arena.cur84 = call ptr @dva_arena_current()
  %b.buf85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum80)
  %b.nul086 = getelementptr i8, ptr %b.buf85, i64 0
  store i8 0, ptr %b.nul086, align 1
  store i64 0, ptr %b.len.gep77, align 8
  store ptr %b.buf85, ptr %b.data.gep76, align 8
  store i64 3, ptr %b.cap.gep78, align 8
  store ptr %builder.new75, ptr %var.b87, align 8
  %var.load88 = load i64, ptr %var.r, align 8
  %shrtmp89 = lshr i64 %var.load88, 12
  %addtmp90 = add i64 224, %shrtmp89
  %b.load91 = load ptr, ptr %var.b87, align 8
  %var.load92 = load i64, ptr %var.r, align 8
  %shrtmp93 = lshr i64 %var.load92, 12
  %addtmp94 = add i64 224, %shrtmp93
  %b.b.ge095 = icmp sge i64 %addtmp94, 0
  %b.b.le25596 = icmp sle i64 %addtmp94, 255
  %b.byte.range97 = and i1 %b.b.ge095, %b.b.le25596
  br i1 %b.byte.range97, label %b.byte_ok98, label %b.byte_err99

str_overflow_abort83:                             ; preds = %choice.case71
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len82

b.byte_ok98:                                      ; preds = %b.byte_err99, %b.buf.len82
  %b.byte.i8100 = trunc i64 %addtmp94 to i8
  %b.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.len102 = load i64, ptr %b.len101, align 8
  %b.cap103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap104 = load i64, ptr %b.cap103, align 8
  %b.data105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.data106 = load ptr, ptr %b.data105, align 8
  %b.needs.grow107 = icmp eq i64 %b.len102, %b.cap104
  br i1 %b.needs.grow107, label %b.grow108, label %b.nogrow109

b.byte_err99:                                     ; preds = %b.buf.len82
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok98

b.grow108:                                        ; preds = %b.byte_ok98
  %b.cap2111 = mul i64 %b.cap104, 2
  %b.cap.small112 = icmp slt i64 %b.cap2111, 16
  %b.new.cap113 = select i1 %b.cap.small112, i64 16, i64 %b.cap2111
  %b.new.buf.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len114, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len117

b.nogrow109:                                      ; preds = %b.byte_ok98
  br label %b.push_done110

b.push_done110:                                   ; preds = %b.nogrow109, %b.new.buf.len117
  %b.cur.data124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data125 = load ptr, ptr %b.cur.data124, align 8
  %b.cur.len126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len127 = load i64, ptr %b.cur.len126, align 8
  %b.byte.gep128 = getelementptr i8, ptr %b.cur.data125, i64 %b.cur.len127
  store i8 %b.byte.i8100, ptr %b.byte.gep128, align 1
  %b.next.len129 = add i64 %b.cur.len127, 1
  %b.nul130 = getelementptr i8, ptr %b.cur.data125, i64 %b.next.len129
  store i8 0, ptr %b.nul130, align 1
  %b.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %b.next.len129, ptr %b.len.gep131, align 8
  %var.load132 = load i64, ptr %var.r, align 8
  %shrtmp133 = lshr i64 %var.load132, 6
  %bandtmp134 = and i64 %shrtmp133, 63
  %addtmp135 = add i64 128, %bandtmp134
  %b.load136 = load ptr, ptr %var.b87, align 8
  %var.load137 = load i64, ptr %var.r, align 8
  %shrtmp138 = lshr i64 %var.load137, 6
  %bandtmp139 = and i64 %shrtmp138, 63
  %addtmp140 = add i64 128, %bandtmp139
  %b.b.ge0141 = icmp sge i64 %addtmp140, 0
  %b.b.le255142 = icmp sle i64 %addtmp140, 255
  %b.byte.range143 = and i1 %b.b.ge0141, %b.b.le255142
  br i1 %b.byte.range143, label %b.byte_ok144, label %b.byte_err145

b.new.buf.len117:                                 ; preds = %str_overflow_abort118, %b.grow108
  %arena.cur119 = call ptr @dva_arena_current()
  %b.new.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf120, ptr align 1 %b.data106, i64 %b.len102, i1 false)
  %b.grow.nul121 = getelementptr i8, ptr %b.new.buf120, i64 %b.len102
  store i8 0, ptr %b.grow.nul121, align 1
  %b.new.data.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf120, ptr %b.new.data.gep122, align 8
  %b.new.cap.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap113, ptr %b.new.cap.gep123, align 8
  br label %b.push_done110

str_overflow_abort118:                            ; preds = %b.grow108
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len117

b.byte_ok144:                                     ; preds = %b.byte_err145, %b.push_done110
  %b.byte.i8146 = trunc i64 %addtmp140 to i8
  %b.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 0
  %b.len148 = load i64, ptr %b.len147, align 8
  %b.cap149 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 2
  %b.cap150 = load i64, ptr %b.cap149, align 8
  %b.data151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 1
  %b.data152 = load ptr, ptr %b.data151, align 8
  %b.needs.grow153 = icmp eq i64 %b.len148, %b.cap150
  br i1 %b.needs.grow153, label %b.grow154, label %b.nogrow155

b.byte_err145:                                    ; preds = %b.push_done110
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok144

b.grow154:                                        ; preds = %b.byte_ok144
  %b.cap2157 = mul i64 %b.cap150, 2
  %b.cap.small158 = icmp slt i64 %b.cap2157, 16
  %b.new.cap159 = select i1 %b.cap.small158, i64 16, i64 %b.cap2157
  %b.new.buf.len160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap159, i64 1)
  %sum161 = extractvalue { i64, i1 } %b.new.buf.len160, 0
  %ovf162 = extractvalue { i64, i1 } %b.new.buf.len160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.new.buf.len163

b.nogrow155:                                      ; preds = %b.byte_ok144
  br label %b.push_done156

b.push_done156:                                   ; preds = %b.nogrow155, %b.new.buf.len163
  %b.cur.data170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 1
  %b.cur.data171 = load ptr, ptr %b.cur.data170, align 8
  %b.cur.len172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 0
  %b.cur.len173 = load i64, ptr %b.cur.len172, align 8
  %b.byte.gep174 = getelementptr i8, ptr %b.cur.data171, i64 %b.cur.len173
  store i8 %b.byte.i8146, ptr %b.byte.gep174, align 1
  %b.next.len175 = add i64 %b.cur.len173, 1
  %b.nul176 = getelementptr i8, ptr %b.cur.data171, i64 %b.next.len175
  store i8 0, ptr %b.nul176, align 1
  %b.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 0
  store i64 %b.next.len175, ptr %b.len.gep177, align 8
  %var.load178 = load i64, ptr %var.r, align 8
  %bandtmp179 = and i64 %var.load178, 63
  %addtmp180 = add i64 128, %bandtmp179
  %b.load181 = load ptr, ptr %var.b87, align 8
  %var.load182 = load i64, ptr %var.r, align 8
  %bandtmp183 = and i64 %var.load182, 63
  %addtmp184 = add i64 128, %bandtmp183
  %b.b.ge0185 = icmp sge i64 %addtmp184, 0
  %b.b.le255186 = icmp sle i64 %addtmp184, 255
  %b.byte.range187 = and i1 %b.b.ge0185, %b.b.le255186
  br i1 %b.byte.range187, label %b.byte_ok188, label %b.byte_err189

b.new.buf.len163:                                 ; preds = %str_overflow_abort164, %b.grow154
  %arena.cur165 = call ptr @dva_arena_current()
  %b.new.buf166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 %sum161)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf166, ptr align 1 %b.data152, i64 %b.len148, i1 false)
  %b.grow.nul167 = getelementptr i8, ptr %b.new.buf166, i64 %b.len148
  store i8 0, ptr %b.grow.nul167, align 1
  %b.new.data.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 1
  store ptr %b.new.buf166, ptr %b.new.data.gep168, align 8
  %b.new.cap.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load136, i32 0, i32 2
  store i64 %b.new.cap159, ptr %b.new.cap.gep169, align 8
  br label %b.push_done156

str_overflow_abort164:                            ; preds = %b.grow154
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len163

b.byte_ok188:                                     ; preds = %b.byte_err189, %b.push_done156
  %b.byte.i8190 = trunc i64 %addtmp184 to i8
  %b.len191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 0
  %b.len192 = load i64, ptr %b.len191, align 8
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.data195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 1
  %b.data196 = load ptr, ptr %b.data195, align 8
  %b.needs.grow197 = icmp eq i64 %b.len192, %b.cap194
  br i1 %b.needs.grow197, label %b.grow198, label %b.nogrow199

b.byte_err189:                                    ; preds = %b.push_done156
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok188

b.grow198:                                        ; preds = %b.byte_ok188
  %b.cap2201 = mul i64 %b.cap194, 2
  %b.cap.small202 = icmp slt i64 %b.cap2201, 16
  %b.new.cap203 = select i1 %b.cap.small202, i64 16, i64 %b.cap2201
  %b.new.buf.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum205 = extractvalue { i64, i1 } %b.new.buf.len204, 0
  %ovf206 = extractvalue { i64, i1 } %b.new.buf.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.new.buf.len207

b.nogrow199:                                      ; preds = %b.byte_ok188
  br label %b.push_done200

b.push_done200:                                   ; preds = %b.nogrow199, %b.new.buf.len207
  %b.cur.data214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data214, align 8
  %b.cur.len216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len216, align 8
  %b.byte.gep218 = getelementptr i8, ptr %b.cur.data215, i64 %b.cur.len217
  store i8 %b.byte.i8190, ptr %b.byte.gep218, align 1
  %b.next.len219 = add i64 %b.cur.len217, 1
  %b.nul220 = getelementptr i8, ptr %b.cur.data215, i64 %b.next.len219
  store i8 0, ptr %b.nul220, align 1
  %b.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 0
  store i64 %b.next.len219, ptr %b.len.gep221, align 8
  %var.load222 = load ptr, ptr %var.b87, align 8
  %b.freeze.len223 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load222, i32 0, i32 0
  %b.freeze.len224 = load i64, ptr %b.freeze.len223, align 8
  %b.freeze.data225 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load222, i32 0, i32 1
  %b.freeze.data226 = load ptr, ptr %b.freeze.data225, align 8
  %b.freeze.arena227 = call ptr @dva_arena_current()
  %b.freeze.nc.gep228 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena227, i32 0, i32 1
  %b.freeze.nc229 = load i64, ptr %b.freeze.nc.gep228, align 8
  %b.freeze.has.chunk230 = icmp sgt i64 %b.freeze.nc229, 0
  br i1 %b.freeze.has.chunk230, label %b.freeze.check231, label %b.freeze.done233

b.new.buf.len207:                                 ; preds = %str_overflow_abort208, %b.grow198
  %arena.cur209 = call ptr @dva_arena_current()
  %b.new.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf210, ptr align 1 %b.data196, i64 %b.len192, i1 false)
  %b.grow.nul211 = getelementptr i8, ptr %b.new.buf210, i64 %b.len192
  store i8 0, ptr %b.grow.nul211, align 1
  %b.new.data.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 1
  store ptr %b.new.buf210, ptr %b.new.data.gep212, align 8
  %b.new.cap.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load181, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap.gep213, align 8
  br label %b.push_done200

str_overflow_abort208:                            ; preds = %b.grow198
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len207

b.freeze.check231:                                ; preds = %b.push_done200
  %b.freeze.last.idx234 = sub i64 %b.freeze.nc229, 1
  %b.freeze.chunks.gep235 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena227, i32 0, i32 3
  %b.freeze.chunk.slot236 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep235, i64 0, i64 %b.freeze.last.idx234
  %b.freeze.last.chunk237 = load ptr, ptr %b.freeze.chunk.slot236, align 8
  %b.freeze.off.gep238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena227, i32 0, i32 2
  %b.freeze.off239 = load i64, ptr %b.freeze.off.gep238, align 8
  %b.freeze.bump240 = getelementptr i8, ptr %b.freeze.last.chunk237, i64 %b.freeze.off239
  %b.freeze.cap.gep241 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena227, i32 0, i32 0
  %b.freeze.cap242 = load i64, ptr %b.freeze.cap.gep241, align 8
  %b.freeze.chunk.end243 = getelementptr i8, ptr %b.freeze.last.chunk237, i64 %b.freeze.cap242
  %b.freeze.ge.chunk244 = icmp uge ptr %b.freeze.data226, %b.freeze.last.chunk237
  %b.freeze.lt.end245 = icmp ult ptr %b.freeze.data226, %b.freeze.chunk.end243
  %b.freeze.in.chunk246 = and i1 %b.freeze.ge.chunk244, %b.freeze.lt.end245
  %b.freeze.ge.bump247 = icmp uge ptr %b.freeze.data226, %b.freeze.bump240
  %b.freeze.reaped248 = and i1 %b.freeze.in.chunk246, %b.freeze.ge.bump247
  br i1 %b.freeze.reaped248, label %b.freeze.copy232, label %b.freeze.done233

b.freeze.copy232:                                 ; preds = %b.freeze.check231
  %arena.cur249 = call ptr @dva_arena_current()
  %b.freeze.fresh250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 %b.freeze.len224)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh250, ptr align 1 %b.freeze.data226, i64 %b.freeze.len224, i1 false)
  br label %b.freeze.done233

b.freeze.done233:                                 ; preds = %b.freeze.copy232, %b.freeze.check231, %b.push_done200
  %b.freeze.data251 = phi ptr [ %b.freeze.data226, %b.push_done200 ], [ %b.freeze.data226, %b.freeze.check231 ], [ %b.freeze.fresh250, %b.freeze.copy232 ]
  %arena.cur252 = call ptr @dva_arena_current()
  %builder.freeze253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 16)
  %str.build.len.gep254 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze253, i32 0, i32 0
  store i64 %b.freeze.len224, ptr %str.build.len.gep254, align 8
  %str.build.data.gep255 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze253, i32 0, i32 1
  store ptr %b.freeze.data251, ptr %str.build.data.gep255, align 8
  %b.freeze.rst.len256 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load222, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len256, align 8
  %b.freeze.rst.data257 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load222, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data257, align 8
  %b.freeze.rst.cap258 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load222, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap258, align 8
  br label %choice.exit

b.buf.len267:                                     ; preds = %str_overflow_abort268, %choice.next72
  %arena.cur269 = call ptr @dva_arena_current()
  %b.buf270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 %sum265)
  %b.nul0271 = getelementptr i8, ptr %b.buf270, i64 0
  store i8 0, ptr %b.nul0271, align 1
  store i64 0, ptr %b.len.gep262, align 8
  store ptr %b.buf270, ptr %b.data.gep261, align 8
  store i64 4, ptr %b.cap.gep263, align 8
  store ptr %builder.new260, ptr %var.b272, align 8
  %var.load273 = load i64, ptr %var.r, align 8
  %shrtmp274 = lshr i64 %var.load273, 18
  %addtmp275 = add i64 240, %shrtmp274
  %b.load276 = load ptr, ptr %var.b272, align 8
  %var.load277 = load i64, ptr %var.r, align 8
  %shrtmp278 = lshr i64 %var.load277, 18
  %addtmp279 = add i64 240, %shrtmp278
  %b.b.ge0280 = icmp sge i64 %addtmp279, 0
  %b.b.le255281 = icmp sle i64 %addtmp279, 255
  %b.byte.range282 = and i1 %b.b.ge0280, %b.b.le255281
  br i1 %b.byte.range282, label %b.byte_ok283, label %b.byte_err284

str_overflow_abort268:                            ; preds = %choice.next72
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len267

b.byte_ok283:                                     ; preds = %b.byte_err284, %b.buf.len267
  %b.byte.i8285 = trunc i64 %addtmp279 to i8
  %b.len286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.len287 = load i64, ptr %b.len286, align 8
  %b.cap288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  %b.cap289 = load i64, ptr %b.cap288, align 8
  %b.data290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.data291 = load ptr, ptr %b.data290, align 8
  %b.needs.grow292 = icmp eq i64 %b.len287, %b.cap289
  br i1 %b.needs.grow292, label %b.grow293, label %b.nogrow294

b.byte_err284:                                    ; preds = %b.buf.len267
  %14 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok283

b.grow293:                                        ; preds = %b.byte_ok283
  %b.cap2296 = mul i64 %b.cap289, 2
  %b.cap.small297 = icmp slt i64 %b.cap2296, 16
  %b.new.cap298 = select i1 %b.cap.small297, i64 16, i64 %b.cap2296
  %b.new.buf.len299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap298, i64 1)
  %sum300 = extractvalue { i64, i1 } %b.new.buf.len299, 0
  %ovf301 = extractvalue { i64, i1 } %b.new.buf.len299, 1
  br i1 %ovf301, label %str_overflow_abort303, label %b.new.buf.len302

b.nogrow294:                                      ; preds = %b.byte_ok283
  br label %b.push_done295

b.push_done295:                                   ; preds = %b.nogrow294, %b.new.buf.len302
  %b.cur.data309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.cur.data310 = load ptr, ptr %b.cur.data309, align 8
  %b.cur.len311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.cur.len312 = load i64, ptr %b.cur.len311, align 8
  %b.byte.gep313 = getelementptr i8, ptr %b.cur.data310, i64 %b.cur.len312
  store i8 %b.byte.i8285, ptr %b.byte.gep313, align 1
  %b.next.len314 = add i64 %b.cur.len312, 1
  %b.nul315 = getelementptr i8, ptr %b.cur.data310, i64 %b.next.len314
  store i8 0, ptr %b.nul315, align 1
  %b.len.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  store i64 %b.next.len314, ptr %b.len.gep316, align 8
  %var.load317 = load i64, ptr %var.r, align 8
  %shrtmp318 = lshr i64 %var.load317, 12
  %bandtmp319 = and i64 %shrtmp318, 63
  %addtmp320 = add i64 128, %bandtmp319
  %b.load321 = load ptr, ptr %var.b272, align 8
  %var.load322 = load i64, ptr %var.r, align 8
  %shrtmp323 = lshr i64 %var.load322, 12
  %bandtmp324 = and i64 %shrtmp323, 63
  %addtmp325 = add i64 128, %bandtmp324
  %b.b.ge0326 = icmp sge i64 %addtmp325, 0
  %b.b.le255327 = icmp sle i64 %addtmp325, 255
  %b.byte.range328 = and i1 %b.b.ge0326, %b.b.le255327
  br i1 %b.byte.range328, label %b.byte_ok329, label %b.byte_err330

b.new.buf.len302:                                 ; preds = %str_overflow_abort303, %b.grow293
  %arena.cur304 = call ptr @dva_arena_current()
  %b.new.buf305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 %sum300)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf305, ptr align 1 %b.data291, i64 %b.len287, i1 false)
  %b.grow.nul306 = getelementptr i8, ptr %b.new.buf305, i64 %b.len287
  store i8 0, ptr %b.grow.nul306, align 1
  %b.new.data.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  store ptr %b.new.buf305, ptr %b.new.data.gep307, align 8
  %b.new.cap.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  store i64 %b.new.cap298, ptr %b.new.cap.gep308, align 8
  br label %b.push_done295

str_overflow_abort303:                            ; preds = %b.grow293
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len302

b.byte_ok329:                                     ; preds = %b.byte_err330, %b.push_done295
  %b.byte.i8331 = trunc i64 %addtmp325 to i8
  %b.len332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 0
  %b.len333 = load i64, ptr %b.len332, align 8
  %b.cap334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 2
  %b.cap335 = load i64, ptr %b.cap334, align 8
  %b.data336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 1
  %b.data337 = load ptr, ptr %b.data336, align 8
  %b.needs.grow338 = icmp eq i64 %b.len333, %b.cap335
  br i1 %b.needs.grow338, label %b.grow339, label %b.nogrow340

b.byte_err330:                                    ; preds = %b.push_done295
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok329

b.grow339:                                        ; preds = %b.byte_ok329
  %b.cap2342 = mul i64 %b.cap335, 2
  %b.cap.small343 = icmp slt i64 %b.cap2342, 16
  %b.new.cap344 = select i1 %b.cap.small343, i64 16, i64 %b.cap2342
  %b.new.buf.len345 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap344, i64 1)
  %sum346 = extractvalue { i64, i1 } %b.new.buf.len345, 0
  %ovf347 = extractvalue { i64, i1 } %b.new.buf.len345, 1
  br i1 %ovf347, label %str_overflow_abort349, label %b.new.buf.len348

b.nogrow340:                                      ; preds = %b.byte_ok329
  br label %b.push_done341

b.push_done341:                                   ; preds = %b.nogrow340, %b.new.buf.len348
  %b.cur.data355 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 1
  %b.cur.data356 = load ptr, ptr %b.cur.data355, align 8
  %b.cur.len357 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 0
  %b.cur.len358 = load i64, ptr %b.cur.len357, align 8
  %b.byte.gep359 = getelementptr i8, ptr %b.cur.data356, i64 %b.cur.len358
  store i8 %b.byte.i8331, ptr %b.byte.gep359, align 1
  %b.next.len360 = add i64 %b.cur.len358, 1
  %b.nul361 = getelementptr i8, ptr %b.cur.data356, i64 %b.next.len360
  store i8 0, ptr %b.nul361, align 1
  %b.len.gep362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 0
  store i64 %b.next.len360, ptr %b.len.gep362, align 8
  %var.load363 = load i64, ptr %var.r, align 8
  %shrtmp364 = lshr i64 %var.load363, 6
  %bandtmp365 = and i64 %shrtmp364, 63
  %addtmp366 = add i64 128, %bandtmp365
  %b.load367 = load ptr, ptr %var.b272, align 8
  %var.load368 = load i64, ptr %var.r, align 8
  %shrtmp369 = lshr i64 %var.load368, 6
  %bandtmp370 = and i64 %shrtmp369, 63
  %addtmp371 = add i64 128, %bandtmp370
  %b.b.ge0372 = icmp sge i64 %addtmp371, 0
  %b.b.le255373 = icmp sle i64 %addtmp371, 255
  %b.byte.range374 = and i1 %b.b.ge0372, %b.b.le255373
  br i1 %b.byte.range374, label %b.byte_ok375, label %b.byte_err376

b.new.buf.len348:                                 ; preds = %str_overflow_abort349, %b.grow339
  %arena.cur350 = call ptr @dva_arena_current()
  %b.new.buf351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 %sum346)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf351, ptr align 1 %b.data337, i64 %b.len333, i1 false)
  %b.grow.nul352 = getelementptr i8, ptr %b.new.buf351, i64 %b.len333
  store i8 0, ptr %b.grow.nul352, align 1
  %b.new.data.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 1
  store ptr %b.new.buf351, ptr %b.new.data.gep353, align 8
  %b.new.cap.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load321, i32 0, i32 2
  store i64 %b.new.cap344, ptr %b.new.cap.gep354, align 8
  br label %b.push_done341

str_overflow_abort349:                            ; preds = %b.grow339
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len348

b.byte_ok375:                                     ; preds = %b.byte_err376, %b.push_done341
  %b.byte.i8377 = trunc i64 %addtmp371 to i8
  %b.len378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 0
  %b.len379 = load i64, ptr %b.len378, align 8
  %b.cap380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 2
  %b.cap381 = load i64, ptr %b.cap380, align 8
  %b.data382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 1
  %b.data383 = load ptr, ptr %b.data382, align 8
  %b.needs.grow384 = icmp eq i64 %b.len379, %b.cap381
  br i1 %b.needs.grow384, label %b.grow385, label %b.nogrow386

b.byte_err376:                                    ; preds = %b.push_done341
  %18 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok375

b.grow385:                                        ; preds = %b.byte_ok375
  %b.cap2388 = mul i64 %b.cap381, 2
  %b.cap.small389 = icmp slt i64 %b.cap2388, 16
  %b.new.cap390 = select i1 %b.cap.small389, i64 16, i64 %b.cap2388
  %b.new.buf.len391 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap390, i64 1)
  %sum392 = extractvalue { i64, i1 } %b.new.buf.len391, 0
  %ovf393 = extractvalue { i64, i1 } %b.new.buf.len391, 1
  br i1 %ovf393, label %str_overflow_abort395, label %b.new.buf.len394

b.nogrow386:                                      ; preds = %b.byte_ok375
  br label %b.push_done387

b.push_done387:                                   ; preds = %b.nogrow386, %b.new.buf.len394
  %b.cur.data401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 1
  %b.cur.data402 = load ptr, ptr %b.cur.data401, align 8
  %b.cur.len403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 0
  %b.cur.len404 = load i64, ptr %b.cur.len403, align 8
  %b.byte.gep405 = getelementptr i8, ptr %b.cur.data402, i64 %b.cur.len404
  store i8 %b.byte.i8377, ptr %b.byte.gep405, align 1
  %b.next.len406 = add i64 %b.cur.len404, 1
  %b.nul407 = getelementptr i8, ptr %b.cur.data402, i64 %b.next.len406
  store i8 0, ptr %b.nul407, align 1
  %b.len.gep408 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 0
  store i64 %b.next.len406, ptr %b.len.gep408, align 8
  %var.load409 = load i64, ptr %var.r, align 8
  %bandtmp410 = and i64 %var.load409, 63
  %addtmp411 = add i64 128, %bandtmp410
  %b.load412 = load ptr, ptr %var.b272, align 8
  %var.load413 = load i64, ptr %var.r, align 8
  %bandtmp414 = and i64 %var.load413, 63
  %addtmp415 = add i64 128, %bandtmp414
  %b.b.ge0416 = icmp sge i64 %addtmp415, 0
  %b.b.le255417 = icmp sle i64 %addtmp415, 255
  %b.byte.range418 = and i1 %b.b.ge0416, %b.b.le255417
  br i1 %b.byte.range418, label %b.byte_ok419, label %b.byte_err420

b.new.buf.len394:                                 ; preds = %str_overflow_abort395, %b.grow385
  %arena.cur396 = call ptr @dva_arena_current()
  %b.new.buf397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 %sum392)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf397, ptr align 1 %b.data383, i64 %b.len379, i1 false)
  %b.grow.nul398 = getelementptr i8, ptr %b.new.buf397, i64 %b.len379
  store i8 0, ptr %b.grow.nul398, align 1
  %b.new.data.gep399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 1
  store ptr %b.new.buf397, ptr %b.new.data.gep399, align 8
  %b.new.cap.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load367, i32 0, i32 2
  store i64 %b.new.cap390, ptr %b.new.cap.gep400, align 8
  br label %b.push_done387

str_overflow_abort395:                            ; preds = %b.grow385
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len394

b.byte_ok419:                                     ; preds = %b.byte_err420, %b.push_done387
  %b.byte.i8421 = trunc i64 %addtmp415 to i8
  %b.len422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  %b.len423 = load i64, ptr %b.len422, align 8
  %b.cap424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 2
  %b.cap425 = load i64, ptr %b.cap424, align 8
  %b.data426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  %b.data427 = load ptr, ptr %b.data426, align 8
  %b.needs.grow428 = icmp eq i64 %b.len423, %b.cap425
  br i1 %b.needs.grow428, label %b.grow429, label %b.nogrow430

b.byte_err420:                                    ; preds = %b.push_done387
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok419

b.grow429:                                        ; preds = %b.byte_ok419
  %b.cap2432 = mul i64 %b.cap425, 2
  %b.cap.small433 = icmp slt i64 %b.cap2432, 16
  %b.new.cap434 = select i1 %b.cap.small433, i64 16, i64 %b.cap2432
  %b.new.buf.len435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap434, i64 1)
  %sum436 = extractvalue { i64, i1 } %b.new.buf.len435, 0
  %ovf437 = extractvalue { i64, i1 } %b.new.buf.len435, 1
  br i1 %ovf437, label %str_overflow_abort439, label %b.new.buf.len438

b.nogrow430:                                      ; preds = %b.byte_ok419
  br label %b.push_done431

b.push_done431:                                   ; preds = %b.nogrow430, %b.new.buf.len438
  %b.cur.data445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  %b.cur.data446 = load ptr, ptr %b.cur.data445, align 8
  %b.cur.len447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  %b.cur.len448 = load i64, ptr %b.cur.len447, align 8
  %b.byte.gep449 = getelementptr i8, ptr %b.cur.data446, i64 %b.cur.len448
  store i8 %b.byte.i8421, ptr %b.byte.gep449, align 1
  %b.next.len450 = add i64 %b.cur.len448, 1
  %b.nul451 = getelementptr i8, ptr %b.cur.data446, i64 %b.next.len450
  store i8 0, ptr %b.nul451, align 1
  %b.len.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  store i64 %b.next.len450, ptr %b.len.gep452, align 8
  %var.load453 = load ptr, ptr %var.b272, align 8
  %b.freeze.len454 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load453, i32 0, i32 0
  %b.freeze.len455 = load i64, ptr %b.freeze.len454, align 8
  %b.freeze.data456 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load453, i32 0, i32 1
  %b.freeze.data457 = load ptr, ptr %b.freeze.data456, align 8
  %b.freeze.arena458 = call ptr @dva_arena_current()
  %b.freeze.nc.gep459 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena458, i32 0, i32 1
  %b.freeze.nc460 = load i64, ptr %b.freeze.nc.gep459, align 8
  %b.freeze.has.chunk461 = icmp sgt i64 %b.freeze.nc460, 0
  br i1 %b.freeze.has.chunk461, label %b.freeze.check462, label %b.freeze.done464

b.new.buf.len438:                                 ; preds = %str_overflow_abort439, %b.grow429
  %arena.cur440 = call ptr @dva_arena_current()
  %b.new.buf441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 %sum436)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf441, ptr align 1 %b.data427, i64 %b.len423, i1 false)
  %b.grow.nul442 = getelementptr i8, ptr %b.new.buf441, i64 %b.len423
  store i8 0, ptr %b.grow.nul442, align 1
  %b.new.data.gep443 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  store ptr %b.new.buf441, ptr %b.new.data.gep443, align 8
  %b.new.cap.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 2
  store i64 %b.new.cap434, ptr %b.new.cap.gep444, align 8
  br label %b.push_done431

str_overflow_abort439:                            ; preds = %b.grow429
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len438

b.freeze.check462:                                ; preds = %b.push_done431
  %b.freeze.last.idx465 = sub i64 %b.freeze.nc460, 1
  %b.freeze.chunks.gep466 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena458, i32 0, i32 3
  %b.freeze.chunk.slot467 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep466, i64 0, i64 %b.freeze.last.idx465
  %b.freeze.last.chunk468 = load ptr, ptr %b.freeze.chunk.slot467, align 8
  %b.freeze.off.gep469 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena458, i32 0, i32 2
  %b.freeze.off470 = load i64, ptr %b.freeze.off.gep469, align 8
  %b.freeze.bump471 = getelementptr i8, ptr %b.freeze.last.chunk468, i64 %b.freeze.off470
  %b.freeze.cap.gep472 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena458, i32 0, i32 0
  %b.freeze.cap473 = load i64, ptr %b.freeze.cap.gep472, align 8
  %b.freeze.chunk.end474 = getelementptr i8, ptr %b.freeze.last.chunk468, i64 %b.freeze.cap473
  %b.freeze.ge.chunk475 = icmp uge ptr %b.freeze.data457, %b.freeze.last.chunk468
  %b.freeze.lt.end476 = icmp ult ptr %b.freeze.data457, %b.freeze.chunk.end474
  %b.freeze.in.chunk477 = and i1 %b.freeze.ge.chunk475, %b.freeze.lt.end476
  %b.freeze.ge.bump478 = icmp uge ptr %b.freeze.data457, %b.freeze.bump471
  %b.freeze.reaped479 = and i1 %b.freeze.in.chunk477, %b.freeze.ge.bump478
  br i1 %b.freeze.reaped479, label %b.freeze.copy463, label %b.freeze.done464

b.freeze.copy463:                                 ; preds = %b.freeze.check462
  %arena.cur480 = call ptr @dva_arena_current()
  %b.freeze.fresh481 = call ptr @dva_arena_alloc(ptr %arena.cur480, i64 %b.freeze.len455)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh481, ptr align 1 %b.freeze.data457, i64 %b.freeze.len455, i1 false)
  br label %b.freeze.done464

b.freeze.done464:                                 ; preds = %b.freeze.copy463, %b.freeze.check462, %b.push_done431
  %b.freeze.data482 = phi ptr [ %b.freeze.data457, %b.push_done431 ], [ %b.freeze.data457, %b.freeze.check462 ], [ %b.freeze.fresh481, %b.freeze.copy463 ]
  %arena.cur483 = call ptr @dva_arena_current()
  %builder.freeze484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 16)
  %str.build.len.gep485 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze484, i32 0, i32 0
  store i64 %b.freeze.len455, ptr %str.build.len.gep485, align 8
  %str.build.data.gep486 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze484, i32 0, i32 1
  store ptr %b.freeze.data482, ptr %str.build.data.gep486, align 8
  %b.freeze.rst.len487 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load453, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len487, align 8
  %b.freeze.rst.data488 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load453, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data488, align 8
  %b.freeze.rst.cap489 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load453, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap489, align 8
  br label %choice.exit
}

declare ptr @"str::from_byte"(i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define internal ptr @"io::#clean_addr"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  %bandtmp = and i64 %coerce.ptr2int, 281474976710655
  %cast.int2ptr = inttoptr i64 %bandtmp to ptr
  ret ptr %cast.int2ptr
}

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

define void @"io::outs"(ptr %0) #1 {
entry:
  %var.iov = alloca ptr, align 8
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.ptr1 = load ptr, ptr %s.ptr, align 8
  %call.res = call ptr @"io::#clean_addr"(ptr %s.ptr1)
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen5 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen6 = load i64, ptr %arena.gen5, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen6
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %var.load7 = load ptr, ptr %var.nl, align 8
  %s.ptr8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.ptr9 = load ptr, ptr %s.ptr8, align 8
  %call.res10 = call ptr @"io::#clean_addr"(ptr %s.ptr9)
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %call.res, ptr %rec.fld, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %str.len.query4, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res10, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 1, ptr %rec.fld13, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load14 = load i64, ptr @"var.io::STDOUT", align 8
  %var.load15 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load15 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load14 to i32
  %call.res16 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  ret void

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define void @"io::errs"(ptr %0) #1 {
entry:
  %var.iov = alloca ptr, align 8
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.ptr1 = load ptr, ptr %s.ptr, align 8
  %call.res = call ptr @"io::#clean_addr"(ptr %s.ptr1)
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen5 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen6 = load i64, ptr %arena.gen5, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen6
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %var.load7 = load ptr, ptr %var.nl, align 8
  %s.ptr8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.ptr9 = load ptr, ptr %s.ptr8, align 8
  %call.res10 = call ptr @"io::#clean_addr"(ptr %s.ptr9)
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %call.res, ptr %rec.fld, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %str.len.query4, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res10, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 1, ptr %rec.fld13, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load14 = load i64, ptr @"var.io::STDERR", align 8
  %var.load15 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load15 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load14 to i32
  %call.res16 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  ret void

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

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
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.exit:                                      ; preds = %ret.dead, %entry
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

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load9)
  store i64 %call.res, ptr %var._, align 8
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.exit
  %var.load10 = load ptr, ptr %var.r, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.r, align 8
  %fld.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
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
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %b.len29 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load28, i32 0, i32 0
  %b.len30 = load i64, ptr %b.len29, align 8
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 2
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
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %b.ptr53 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 1
  %b.ptr54 = load ptr, ptr %b.ptr53, align 8
  %var.load55 = load ptr, ptr %var.r, align 8
  %fld.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 2
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

choice.exit47:                                    ; preds = %addr_ok67, %b.buf.len42
  %var.load73 = load i64, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap74 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load73, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then46
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen59 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen60 = load i64, ptr %arena.gen59, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen60
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then46
  %raw.int61 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int62 = and i64 %raw.int61, 281474976710655
  %raw.clean.ptr63 = inttoptr i64 %raw.clean.int62 to ptr
  %addr.tag64 = lshr i64 %raw.int61, 48
  %addr.immortal65 = icmp eq i64 %addr.tag64, 0
  br i1 %addr.immortal65, label %addr_ok67, label %addr_gen_check66

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check66:                                 ; preds = %addr_ok
  %arena.gen69 = call ptr @dva_arena_current()
  %arena.gen70 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen69, i32 0, i32 4
  %arena.gen71 = load i64, ptr %arena.gen70, align 8
  %addr.tag.match72 = icmp eq i64 %addr.tag64, %arena.gen71
  br i1 %addr.tag.match72, label %addr_ok67, label %addr_stale68

addr_ok67:                                        ; preds = %addr_stale68, %addr_gen_check66, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr63, i64 %var.load58, i1 false)
  br label %choice.exit47

addr_stale68:                                     ; preds = %addr_gen_check66
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok67

b.len_big_check:                                  ; preds = %choice.exit47
  %b.len.big = icmp sgt i64 %var.load73, %b.cap74
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load73, ptr %b.len.gep75, align 8
  %var.load76 = load ptr, ptr %var.r, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load77, i32 0, i32 2
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %var.load80 = load i64, ptr %var.take, align 8
  %addtmp81 = add i64 %fld.load79, %var.load80
  %fld.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 2
  store i64 %addtmp81, ptr %fld.gep82, align 8
  %var.load83 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 0
  %b.freeze.len84 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 1
  %b.freeze.data85 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit47
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data85, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data85, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data85, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur86 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %b.freeze.len84)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data85, i64 %b.freeze.len84, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data87 = phi ptr [ %b.freeze.data85, %b.len_ok ], [ %b.freeze.data85, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur88 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len84, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data87, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
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
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

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
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %b.ptr29 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load28, i32 0, i32 1
  %b.ptr30 = load ptr, ptr %b.ptr29, align 8
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 2
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen39
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit17
  %raw.int40 = ptrtoint ptr %ptr.res36 to i64
  %raw.clean.int41 = and i64 %raw.int40, 281474976710655
  %raw.clean.ptr42 = inttoptr i64 %raw.clean.int41 to ptr
  %addr.tag43 = lshr i64 %raw.int40, 48
  %addr.immortal44 = icmp eq i64 %addr.tag43, 0
  br i1 %addr.immortal44, label %addr_ok46, label %addr_gen_check45

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check45:                                 ; preds = %addr_ok
  %arena.gen48 = call ptr @dva_arena_current()
  %arena.gen49 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen48, i32 0, i32 4
  %arena.gen50 = load i64, ptr %arena.gen49, align 8
  %addr.tag.match51 = icmp eq i64 %addr.tag43, %arena.gen50
  br i1 %addr.tag.match51, label %addr_ok46, label %addr_stale47

addr_ok46:                                        ; preds = %addr_stale47, %addr_gen_check45, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr42, i64 %var.load37, i1 false)
  %var.load52 = load i64, ptr %var.cur, align 8
  %var.load53 = load i64, ptr %var.take, align 8
  %addtmp54 = add i64 %var.load52, %var.load53
  %b.load = load ptr, ptr %var.res_b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp54, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale47:                                     ; preds = %addr_gen_check45
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok46

b.len_big_check:                                  ; preds = %addr_ok46
  %b.len.big = icmp sgt i64 %addtmp54, %b.cap55
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp54, ptr %b.len.gep56, align 8
  %var.load57 = load ptr, ptr %var.r, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load i64, ptr %var.take, align 8
  %addtmp62 = add i64 %fld.load60, %var.load61
  %fld.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load57, i32 0, i32 2
  store i64 %addtmp62, ptr %fld.gep63, align 8
  br label %choice.exit12

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok46
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
  %var.load136 = load ptr, ptr %var.res_b, align 8
  %b.len137 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  %b.len138 = load i64, ptr %b.len137, align 8
  %cmptmp139 = icmp eq i64 %b.len138, 0
  br i1 %cmptmp139, label %choice.then140, label %choice.exit141

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
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
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
  %b.cap128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 2
  %b.cap129 = load i64, ptr %b.cap128, align 8
  %b.len.neg130 = icmp slt i64 %addtmp126, 0
  br i1 %b.len.neg130, label %b.len_oob133, label %b.len_big_check131

choice.exit123:                                   ; preds = %b.len_ok132
  br label %choice.exit101

b.len_big_check131:                               ; preds = %choice.else122
  %b.len.big134 = icmp sgt i64 %addtmp126, %b.cap129
  br i1 %b.len.big134, label %b.len_oob133, label %b.len_ok132

b.len_ok132:                                      ; preds = %b.len_oob133, %b.len_big_check131
  %b.len.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 0
  store i64 %addtmp126, ptr %b.len.gep135, align 8
  br label %choice.exit123

b.len_oob133:                                     ; preds = %b.len_big_check131, %choice.else122
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok132

choice.then140:                                   ; preds = %loop.exit.1
  %tag142 = load i64, ptr null, align 8
  %is_pos143 = icmp ne i64 %tag142, 0
  %pay.ptr144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche145 = select i1 %is_pos143, ptr %pay.ptr144, ptr null
  ret ptr %ret.niche145

choice.exit141:                                   ; preds = %ret.dead146, %loop.exit.1
  %var.load147 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 0
  %b.freeze.len148 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 1
  %b.freeze.data149 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead146:                                      ; No predecessors!
  br label %choice.exit141

b.freeze.check:                                   ; preds = %choice.exit141
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data149, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data149, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data149, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur150 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %b.freeze.len148)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data149, i64 %b.freeze.len148, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit141
  %b.freeze.data151 = phi ptr [ %b.freeze.data149, %choice.exit141 ], [ %b.freeze.data149, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur152 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len148, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data151, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
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

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

addr_gen_check:                                   ; preds = %choice.exit16
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen24 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen25 = load i64, ptr %arena.gen24, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen25
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit16
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
  %arena.cur32 = call ptr @dva_arena_current()
  %ram.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc33, i32 0, i32 0
  store i64 1, ptr %tag.gep34, align 8
  %pay.gep35 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc33, i32 0, i32 1
  %var.load36 = load i64, ptr %var.b, align 8
  %arena.cur37 = call ptr @dva_arena_current()
  %pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 8)
  store i64 %var.load36, ptr %pay.alloc, align 8
  store ptr %pay.alloc, ptr %pay.gep35, align 8
  ret ptr %ram.alloc33

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
