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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.sys::STDIN" = global i64 0
@"var.sys::STDOUT" = global i64 0
@"var.sys::STDERR" = global i64 0
@"var.sys::addr_null" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"sys::addr_is_null", ptr null }
@"var.sys::addr_is_null" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"sys::raw_argv", ptr null }
@"var.sys::raw_argv" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"sys::argv_matches", ptr null }
@"var.sys::argv_matches" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"sys::c_str", ptr null }
@"var.sys::c_str" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"sys::argv_string", ptr null }
@"var.sys::argv_string" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"sys::addr_opt", ptr null }
@"var.sys::addr_opt" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"sys::argv", ptr null }
@"var.sys::argv" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"sys::exit", ptr null }
@"var.sys::exit" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_sys, ptr null }]

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

define internal void @__dva_global_init_sys() #1 {
entry:
  store i64 0, ptr @"var.sys::STDIN", align 8
  store i64 1, ptr @"var.sys::STDOUT", align 8
  store i64 2, ptr @"var.sys::STDERR", align 8
  store ptr null, ptr @"var.sys::addr_null", align 8
  store ptr @clo.const, ptr @"var.sys::addr_is_null", align 8
  store ptr @clo.const.1, ptr @"var.sys::raw_argv", align 8
  store ptr @clo.const.2, ptr @"var.sys::argv_matches", align 8
  store ptr @clo.const.3, ptr @"var.sys::c_str", align 8
  store ptr @clo.const.4, ptr @"var.sys::argv_string", align 8
  store ptr @clo.const.5, ptr @"var.sys::addr_opt", align 8
  store ptr @clo.const.6, ptr @"var.sys::argv", align 8
  store ptr @clo.const.7, ptr @"var.sys::exit", align 8
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

define i1 @"sys::addr_is_null"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load1 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  ret i1 %cmptmp
}

define ptr @"sys::raw_argv"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.0.then, label %and.0.else

and.0.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %var.load2 = load i64, ptr @sys_argc_global, align 8
  %cmptmp3 = icmp slt i64 %var.load1, %var.load2
  br label %and.0.exit

and.0.else:                                       ; preds = %entry
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %and.0.then
  %and.0.phi = phi i1 [ %cmptmp3, %and.0.then ], [ %cmptmp, %and.0.else ]
  br i1 %and.0.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.0.exit
  %var.load4 = load ptr, ptr @sys_argv_global, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %multmp = mul i64 %var.load5, 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %and.0.exit
  %var.load8 = load ptr, ptr @"var.sys::addr_null", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi ptr [ %raw.load, %addr_ok ], [ %var.load8, %choice.else ]
  ret ptr %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen7
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile ptr, ptr %raw.clean.ptr, align 8
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i1 @"sys::argv_matches"(i64 %0, ptr %1) #1 {
entry:
  %var.raw = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load1 = load ptr, ptr %var.raw, align 8
  %var.load2 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %ptr.int.r = ptrtoint ptr %var.load2 to i64
  %cmptmp = icmp ne i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %and.1.then, label %and.1.else

and.1.then:                                       ; preds = %entry
  %var.load3 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load4 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %arg.str.ptr5 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr6 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %arg.str.ptr7 = load i64, ptr %arg.str.ptr6, align 8
  %arg.str.ptr8 = and i64 %arg.str.ptr7, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.1.else:                                       ; preds = %entry
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %nulmerge
  %and.1.phi = phi i1 [ %cmptmp15, %nulmerge ], [ %cmptmp, %and.1.else ]
  ret i1 %and.1.phi

str_gen_check:                                    ; preds = %and.1.then
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen9 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen10 = load i64, ptr %arena.gen9, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen10
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.1.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr5, i64 %arg.str.ptr8
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr11, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr11:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr8, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len12

nulmerge:                                         ; preds = %nulcopy.len12, %arg.str.ptr11
  %arg.str.ptr13 = phi ptr [ %arg.str.ptr5, %arg.str.ptr11 ], [ %nulcopy.buf, %nulcopy.len12 ]
  %call.res14 = call i64 @strcmp(ptr %addr.ffi.clean, ptr %arg.str.ptr13)
  %cmptmp15 = icmp eq i64 %call.res14, 0
  br label %and.1.exit

nulcopy.len12:                                    ; preds = %str_overflow_abort, %nulcopy
  %arena.cur = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr5, i64 %arg.str.ptr8, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr8
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"sys::c_str"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %var.load1 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load1 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load2 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @strlen(ptr %addr.ffi.clean)
  store i64 %call.res, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 1
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

choice.exit:                                      ; preds = %b.freeze.done, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %builder.freeze, %b.freeze.done ]
  ret ptr %choice.res

b.buf.len4:                                       ; preds = %str_overflow_abort, %choice.else
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.ptr7 = load ptr, ptr %b.ptr, align 8
  %var.load8 = load ptr, ptr %var.raw, align 8
  %var.load9 = load i64, ptr %var.len, align 8
  %addtmp10 = add i64 %var.load9, 1
  %raw.int = ptrtoint ptr %b.ptr7 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort:                               ; preds = %choice.else
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4

addr_gen_check:                                   ; preds = %b.buf.len4
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen11 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen12 = load i64, ptr %arena.gen11, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen12
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len4
  %raw.int13 = ptrtoint ptr %var.load8 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.gen21 = call ptr @dva_arena_current()
  %arena.gen22 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen21, i32 0, i32 4
  %arena.gen23 = load i64, ptr %arena.gen22, align 8
  %addr.tag.match24 = icmp eq i64 %addr.tag16, %arena.gen23
  br i1 %addr.tag.match24, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr15, i64 %addtmp10, i1 false)
  %var.load25 = load i64, ptr %var.len, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load25, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale20:                                     ; preds = %addr_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

b.len_big_check:                                  ; preds = %addr_ok19
  %b.len.big = icmp sgt i64 %var.load25, %b.cap26
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load25, ptr %b.len.gep27, align 8
  %var.load28 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 0
  %b.freeze.len29 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %b.freeze.data30 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok19
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data30, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data30, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data30, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur31 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %b.freeze.len29)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data30, i64 %b.freeze.len29, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data32 = phi ptr [ %b.freeze.data30, %b.len_ok ], [ %b.freeze.data30, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur33 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len29, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data32, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"sys::argv_string"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  %call.res1 = call ptr @"sys::c_str"(ptr %call.res)
  ret ptr %call.res1
}

define ptr @"sys::addr_opt"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load1 to i64
  %cmptmp = icmp ne i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  %var.load2 = load ptr, ptr %var.a, align 8
  store ptr %var.load2, ptr %pay.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %arena.cur3 = call ptr @dva_arena_current()
  %ram.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc4, i32 0, i32 0
  store i64 0, ptr %tag.gep5, align 8
  %pay.gep6 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc4, i32 0, i32 1
  store ptr null, ptr %pay.gep6, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ram.alloc, %choice.then ], [ %ram.alloc4, %choice.else ]
  ret ptr %choice.res
}

define ptr @"sys::argv"(i64 %0) #1 {
entry:
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  %call.res1 = call ptr @"sys::addr_opt"(ptr %call.res)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.raw, align 8
  %var.load2 = load ptr, ptr %var.raw, align 8
  %call.res3 = call ptr @"sys::c_str"(ptr %var.load2)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res3, %choice.then ], [ null, %choice.else ]
  ret ptr %choice.res
}

define void @"sys::exit"(i64 %0) #1 {
entry:
  %var.code = alloca i64, align 8
  store i64 %0, ptr %var.code, align 8
  %var.load = load i64, ptr %var.code, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  call void @exit(i32 %coerce.trunc)
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
