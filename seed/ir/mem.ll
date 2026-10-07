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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"mem::copy", ptr null }
@"var.mem::copy" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"mem::move", ptr null }
@"var.mem::move" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"mem::zero", ptr null }
@"var.mem::zero" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"mem::set", ptr null }
@"var.mem::set" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"mem::align_forward", ptr null }
@"var.mem::align_forward" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"mem::is_aligned", ptr null }
@"var.mem::is_aligned" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"mem::arena", ptr null }
@"var.mem::arena" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"mem::arena_default", ptr null }
@"var.mem::arena_default" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"mem::alloc", ptr null }
@"var.mem::alloc" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"mem::reset", ptr null }
@"var.mem::reset" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"mem::destroy", ptr null }
@"var.mem::destroy" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"mem::stats", ptr null }
@"var.mem::stats" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"mem::with", ptr null }
@"var.mem::with" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"mem::pool", ptr null }
@"var.mem::pool" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"mem::pool_count", ptr null }
@"var.mem::pool_count" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"mem::pool_capacity", ptr null }
@"var.mem::pool_capacity" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"mem::pool_alloc", ptr null }
@"var.mem::pool_alloc" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.17 = internal constant { ptr, ptr } { ptr @"mem::pool_free", ptr null }
@"var.mem::pool_free" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"mem::pool_destroy", ptr null }
@"var.mem::pool_destroy" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"mem::pool_for_each", ptr null }
@"var.mem::pool_for_each" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_mem, ptr null }]

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

define internal void @__dva_global_init_mem() #1 {
entry:
  store ptr @clo.const, ptr @"var.mem::copy", align 8
  store ptr @clo.const.1, ptr @"var.mem::move", align 8
  store ptr @clo.const.2, ptr @"var.mem::zero", align 8
  store ptr @clo.const.3, ptr @"var.mem::set", align 8
  store ptr @clo.const.4, ptr @"var.mem::align_forward", align 8
  store ptr @clo.const.5, ptr @"var.mem::is_aligned", align 8
  store ptr @clo.const.6, ptr @"var.mem::arena", align 8
  store ptr @clo.const.7, ptr @"var.mem::arena_default", align 8
  store ptr @clo.const.8, ptr @"var.mem::alloc", align 8
  store ptr @clo.const.9, ptr @"var.mem::reset", align 8
  store ptr @clo.const.10, ptr @"var.mem::destroy", align 8
  store ptr @clo.const.11, ptr @"var.mem::stats", align 8
  store ptr @clo.const.12, ptr @"var.mem::with", align 8
  store ptr @clo.const.13, ptr @"var.mem::pool", align 8
  store ptr @clo.const.14, ptr @"var.mem::pool_count", align 8
  store ptr @clo.const.15, ptr @"var.mem::pool_capacity", align 8
  store ptr @clo.const.16, ptr @"var.mem::pool_alloc", align 8
  store ptr @clo.const.17, ptr @"var.mem::pool_free", align 8
  store ptr @clo.const.18, ptr @"var.mem::pool_destroy", align 8
  store ptr @clo.const.19, ptr @"var.mem::pool_for_each", align 8
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

define ptr @"mem::copy"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store ptr %1, ptr %var.src, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen4
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.int5 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int6 = and i64 %raw.int5, 281474976710655
  %raw.clean.ptr7 = inttoptr i64 %raw.clean.int6 to ptr
  %addr.tag8 = lshr i64 %raw.int5, 48
  %addr.immortal9 = icmp eq i64 %addr.tag8, 0
  br i1 %addr.immortal9, label %addr_ok11, label %addr_gen_check10

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check10:                                 ; preds = %addr_ok
  %arena.gen13 = call ptr @dva_arena_current()
  %arena.gen14 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen13, i32 0, i32 4
  %arena.gen15 = load i64, ptr %arena.gen14, align 8
  %addr.tag.match16 = icmp eq i64 %addr.tag8, %arena.gen15
  br i1 %addr.tag.match16, label %addr_ok11, label %addr_stale12

addr_ok11:                                        ; preds = %addr_stale12, %addr_gen_check10, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr7, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale12:                                     ; preds = %addr_gen_check10
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"mem::move"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store ptr %1, ptr %var.src, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen4
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.int5 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int6 = and i64 %raw.int5, 281474976710655
  %raw.clean.ptr7 = inttoptr i64 %raw.clean.int6 to ptr
  %addr.tag8 = lshr i64 %raw.int5, 48
  %addr.immortal9 = icmp eq i64 %addr.tag8, 0
  br i1 %addr.immortal9, label %addr_ok11, label %addr_gen_check10

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check10:                                 ; preds = %addr_ok
  %arena.gen13 = call ptr @dva_arena_current()
  %arena.gen14 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen13, i32 0, i32 4
  %arena.gen15 = load i64, ptr %arena.gen14, align 8
  %addr.tag.match16 = icmp eq i64 %addr.tag8, %arena.gen15
  br i1 %addr.tag.match16, label %addr_ok11, label %addr_stale12

addr_ok11:                                        ; preds = %addr_stale12, %addr_gen_check10, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr7, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale12:                                     ; preds = %addr_gen_check10
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"mem::zero"(ptr %0, i64 %1) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store i64 %1, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen3
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load1, i1 false)
  ret ptr %raw.clean.ptr

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"mem::set"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.val = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store i64 %1, ptr %var.val, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load i64, ptr %var.val, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen4
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %coerce.trunc = trunc i64 %var.load1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"mem::align_forward"(ptr %0, i64 %1) #1 {
entry:
  %var.a = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.align = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  store ptr %0, ptr %var.addr, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  store i64 %coerce.ptr2int, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %subtmp = sub i64 %var.load1, 1
  store i64 %subtmp, ptr %var.a, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %addtmp = add i64 %var.load2, %var.load3
  %var.load4 = load i64, ptr %var.a, align 8
  %bitnottmp = xor i64 %var.load4, -1
  %bandtmp = and i64 %addtmp, %bitnottmp
  %cast.int2ptr = inttoptr i64 %bandtmp to ptr
  ret ptr %cast.int2ptr
}

define i1 @"mem::is_aligned"(ptr %0, i64 %1) #1 {
entry:
  %var.a = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.align = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  store ptr %0, ptr %var.addr, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  store i64 %coerce.ptr2int, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %subtmp = sub i64 %var.load1, 1
  store i64 %subtmp, ptr %var.a, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %bandtmp = and i64 %var.load2, %var.load3
  %cmptmp = icmp eq i64 %bandtmp, 0
  ret i1 %cmptmp
}

define ptr @"mem::arena"(i64 %0) #1 {
entry:
  %var.raw = alloca ptr, align 8
  %var.sz = alloca i64, align 8
  %var.chunk_size = alloca i64, align 8
  store i64 %0, ptr %var.chunk_size, align 8
  %var.load = load i64, ptr %var.chunk_size, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.chunk_size, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 67108864, %choice.then ], [ %var.load1, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %call.res = call ptr @malloc(i64 131104)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load2 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load2 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load3 = load i64, ptr %var.sz, align 8
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %var.load3)
  %var.load4 = load ptr, ptr %var.raw, align 8
  %var.load5 = load i64, ptr %var.sz, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load4, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load5, ptr %rec.fld6, align 8
  ret ptr %rec.alloc
}

define ptr @"mem::arena_default"() #1 {
entry:
  %call.res = call ptr @"mem::arena"(i64 67108864)
  ret ptr %call.res
}

define ptr @"mem::alloc"(ptr %0, i64 %1) #1 {
entry:
  %var.size = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store i64 %1, ptr %var.size, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load i64, ptr %var.size, align 8
  %call.res = call ptr @dva_arena_alloc(ptr %addr.ffi.clean, i64 %var.load1)
  ret ptr %call.res
}

define void @"mem::reset"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_restore(ptr %addr.ffi.clean, i64 0)
  ret void
}

define void @"mem::destroy"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_destroy(ptr %addr.ffi.clean)
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %addr.ffi.int4 = ptrtoint ptr %fld.load3 to i64
  %addr.ffi.masked5 = and i64 %addr.ffi.int4, 281474976710655
  %addr.ffi.clean6 = inttoptr i64 %addr.ffi.masked5 to ptr
  call void @free(ptr %addr.ffi.clean6)
  ret void
}

define ptr @"mem::stats"(ptr %0) #1 {
entry:
  %var.allocated = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.num_chunks = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen1 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen2 = load i64, ptr %arena.gen1, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen2
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.num_chunks, align 8
  %var.load3 = load ptr, ptr %var.a, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %ptr.int.l6 = ptrtoint ptr %fld.load5 to i64
  %addtmp7 = add i64 %ptr.int.l6, 16
  %ptr.res8 = inttoptr i64 %addtmp7 to ptr
  %raw.int9 = ptrtoint ptr %ptr.res8 to i64
  %raw.clean.int10 = and i64 %raw.int9, 281474976710655
  %raw.clean.ptr11 = inttoptr i64 %raw.clean.int10 to ptr
  %addr.tag12 = lshr i64 %raw.int9, 48
  %addr.immortal13 = icmp eq i64 %addr.tag12, 0
  br i1 %addr.immortal13, label %addr_ok15, label %addr_gen_check14

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check14:                                 ; preds = %addr_ok
  %arena.gen17 = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen17, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %addr.tag.match20 = icmp eq i64 %addr.tag12, %arena.gen19
  br i1 %addr.tag.match20, label %addr_ok15, label %addr_stale16

addr_ok15:                                        ; preds = %addr_stale16, %addr_gen_check14, %addr_ok
  %raw.load21 = load volatile i64, ptr %raw.clean.ptr11, align 8
  store i64 %raw.load21, ptr %var.off, align 8
  %var.load22 = load i64, ptr %var.num_chunks, align 8
  %cmptmp = icmp sgt i64 %var.load22, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale16:                                     ; preds = %addr_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok15

choice.then:                                      ; preds = %addr_ok15
  %var.load23 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load23, 1
  %var.load24 = load ptr, ptr %var.a, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64 }, ptr %var.load24, i32 0, i32 1
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %multmp = mul i64 %subtmp, %fld.load26
  %var.load27 = load i64, ptr %var.off, align 8
  %addtmp28 = add i64 %multmp, %var.load27
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok15
  %var.load29 = load i64, ptr %var.off, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp28, %choice.then ], [ %var.load29, %choice.else ]
  store i64 %choice.res, ptr %var.allocated, align 8
  %var.load30 = load i64, ptr %var.allocated, align 8
  %var.load31 = load i64, ptr %var.num_chunks, align 8
  %var.load32 = load ptr, ptr %var.a, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load32, i32 0, i32 1
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load30, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load31, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load34, ptr %rec.fld36, align 8
  ret ptr %rec.alloc
}

define void @"mem::with"(ptr %0, ptr %1) #1 {
entry:
  %var.prev = alloca ptr, align 8
  %var.action = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.action, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_set_current(ptr %addr.ffi.clean)
  store ptr %call.res, ptr %var.prev, align 8
  %clo.load = load ptr, ptr %var.action, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %entry
  call void %clo.fn.load(ptr %clo.env.load)
  br label %clo.merge

clo.plain:                                        ; preds = %entry
  call void %clo.fn.load()
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %var.load1 = load ptr, ptr %var.prev, align 8
  %addr.ffi.int2 = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked3 = and i64 %addr.ffi.int2, 281474976710655
  %addr.ffi.clean4 = inttoptr i64 %addr.ffi.masked3 to ptr
  %call.res5 = call ptr @dva_arena_set_current(ptr %addr.ffi.clean4)
  ret void
}

define ptr @"mem::pool"(i64 %0, i64 %1) #1 {
entry:
  %var._59 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
  %var.act = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.fs = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %var.total = alloca i64, align 8
  %var.act_sz = alloca i64, align 8
  %var.st_sz = alloca i64, align 8
  %var.fs_sz = alloca i64, align 8
  %var.buf_sz = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.es = alloca i64, align 8
  %var.capacity = alloca i64, align 8
  %var.elem_size = alloca i64, align 8
  store i64 %0, ptr %var.elem_size, align 8
  store i64 %1, ptr %var.capacity, align 8
  %var.load = load i64, ptr %var.elem_size, align 8
  %cmptmp = icmp sle i64 %var.load, 8
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.elem_size, align 8
  %addtmp = add i64 %var.load1, 7
  %bandtmp = and i64 %addtmp, -8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 8, %choice.then ], [ %bandtmp, %choice.else ]
  store i64 %choice.res, ptr %var.es, align 8
  %var.load2 = load i64, ptr %var.capacity, align 8
  %cmptmp3 = icmp sle i64 %var.load2, 0
  br i1 %cmptmp3, label %choice.then4, label %choice.else5

choice.then4:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.else5:                                     ; preds = %choice.exit
  %var.load7 = load i64, ptr %var.capacity, align 8
  br label %choice.exit6

choice.exit6:                                     ; preds = %choice.else5, %choice.then4
  %choice.res8 = phi i64 [ 1, %choice.then4 ], [ %var.load7, %choice.else5 ]
  store i64 %choice.res8, ptr %var.cap, align 8
  %var.load9 = load i64, ptr %var.cap, align 8
  %var.load10 = load i64, ptr %var.es, align 8
  %multmp = mul i64 %var.load9, %var.load10
  store i64 %multmp, ptr %var.buf_sz, align 8
  %var.load11 = load i64, ptr %var.cap, align 8
  %multmp12 = mul i64 %var.load11, 8
  store i64 %multmp12, ptr %var.fs_sz, align 8
  store i64 16, ptr %var.st_sz, align 8
  %var.load13 = load i64, ptr %var.cap, align 8
  store i64 %var.load13, ptr %var.act_sz, align 8
  %var.load14 = load i64, ptr %var.buf_sz, align 8
  %var.load15 = load i64, ptr %var.fs_sz, align 8
  %addtmp16 = add i64 %var.load14, %var.load15
  %var.load17 = load i64, ptr %var.st_sz, align 8
  %addtmp18 = add i64 %addtmp16, %var.load17
  %var.load19 = load i64, ptr %var.act_sz, align 8
  %addtmp20 = add i64 %addtmp18, %var.load19
  store i64 %addtmp20, ptr %var.total, align 8
  %var.load21 = load i64, ptr %var.total, align 8
  %call.res = call ptr @malloc(i64 %var.load21)
  store ptr %call.res, ptr %var.buf, align 8
  %var.load22 = load ptr, ptr %var.buf, align 8
  %var.load23 = load i64, ptr %var.buf_sz, align 8
  %ptr.int.l = ptrtoint ptr %var.load22 to i64
  %addtmp24 = add i64 %ptr.int.l, %var.load23
  %ptr.res = inttoptr i64 %addtmp24 to ptr
  store ptr %ptr.res, ptr %var.fs, align 8
  %var.load25 = load ptr, ptr %var.fs, align 8
  %var.load26 = load i64, ptr %var.fs_sz, align 8
  %ptr.int.l27 = ptrtoint ptr %var.load25 to i64
  %addtmp28 = add i64 %ptr.int.l27, %var.load26
  %ptr.res29 = inttoptr i64 %addtmp28 to ptr
  store ptr %ptr.res29, ptr %var.st, align 8
  %var.load30 = load ptr, ptr %var.st, align 8
  %var.load31 = load i64, ptr %var.st_sz, align 8
  %ptr.int.l32 = ptrtoint ptr %var.load30 to i64
  %addtmp33 = add i64 %ptr.int.l32, %var.load31
  %ptr.res34 = inttoptr i64 %addtmp33 to ptr
  store ptr %ptr.res34, ptr %var.act, align 8
  %var.load35 = load ptr, ptr %var.act, align 8
  %var.load36 = load i64, ptr %var.act_sz, align 8
  %raw.int = ptrtoint ptr %var.load35 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit6
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen37 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen38 = load i64, ptr %arena.gen37, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen38
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit6
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load36, i1 false)
  %var.load39 = load i64, ptr %var.cap, align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

loop.header.0:                                    ; preds = %loop.latch.0, %addr_ok
  %counter.load = load i64, ptr %loop.idx.0, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load39
  br i1 %loop.cond, label %loop.body.0, label %loop.exit.nat.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load40 = load ptr, ptr %var.fs, align 8
  %var.load41 = load i64, ptr %var.i, align 8
  %multmp42 = mul i64 %var.load41, 8
  %ptr.int.l43 = ptrtoint ptr %var.load40 to i64
  %addtmp44 = add i64 %ptr.int.l43, %multmp42
  %ptr.res45 = inttoptr i64 %addtmp44 to ptr
  %var.load46 = load i64, ptr %var.i, align 8
  %raw.int47 = ptrtoint ptr %ptr.res45 to i64
  %raw.clean.int48 = and i64 %raw.int47, 281474976710655
  %raw.clean.ptr49 = inttoptr i64 %raw.clean.int48 to ptr
  %addr.tag50 = lshr i64 %raw.int47, 48
  %addr.immortal51 = icmp eq i64 %addr.tag50, 0
  br i1 %addr.immortal51, label %addr_ok53, label %addr_gen_check52

loop.exit.nat.0:                                  ; preds = %loop.header.0
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %addr_ok53
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %loop.exit.nat.0
  store i64 0, ptr %var._59, align 8
  %var.load60 = load ptr, ptr %var.st, align 8
  %var.load61 = load i64, ptr %var.cap, align 8
  %raw.int62 = ptrtoint ptr %var.load60 to i64
  %raw.clean.int63 = and i64 %raw.int62, 281474976710655
  %raw.clean.ptr64 = inttoptr i64 %raw.clean.int63 to ptr
  %addr.tag65 = lshr i64 %raw.int62, 48
  %addr.immortal66 = icmp eq i64 %addr.tag65, 0
  br i1 %addr.immortal66, label %addr_ok68, label %addr_gen_check67

addr_gen_check52:                                 ; preds = %loop.body.0
  %arena.gen55 = call ptr @dva_arena_current()
  %arena.gen56 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen55, i32 0, i32 4
  %arena.gen57 = load i64, ptr %arena.gen56, align 8
  %addr.tag.match58 = icmp eq i64 %addr.tag50, %arena.gen57
  br i1 %addr.tag.match58, label %addr_ok53, label %addr_stale54

addr_ok53:                                        ; preds = %addr_stale54, %addr_gen_check52, %loop.body.0
  store i64 %var.load46, ptr %raw.clean.ptr49, align 8
  br label %loop.latch.0

addr_stale54:                                     ; preds = %addr_gen_check52
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok53

addr_gen_check67:                                 ; preds = %loop.exit.0
  %arena.gen70 = call ptr @dva_arena_current()
  %arena.gen71 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen70, i32 0, i32 4
  %arena.gen72 = load i64, ptr %arena.gen71, align 8
  %addr.tag.match73 = icmp eq i64 %addr.tag65, %arena.gen72
  br i1 %addr.tag.match73, label %addr_ok68, label %addr_stale69

addr_ok68:                                        ; preds = %addr_stale69, %addr_gen_check67, %loop.exit.0
  store i64 %var.load61, ptr %raw.clean.ptr64, align 8
  %var.load74 = load ptr, ptr %var.st, align 8
  %ptr.int.l75 = ptrtoint ptr %var.load74 to i64
  %addtmp76 = add i64 %ptr.int.l75, 8
  %ptr.res77 = inttoptr i64 %addtmp76 to ptr
  %raw.int78 = ptrtoint ptr %ptr.res77 to i64
  %raw.clean.int79 = and i64 %raw.int78, 281474976710655
  %raw.clean.ptr80 = inttoptr i64 %raw.clean.int79 to ptr
  %addr.tag81 = lshr i64 %raw.int78, 48
  %addr.immortal82 = icmp eq i64 %addr.tag81, 0
  br i1 %addr.immortal82, label %addr_ok84, label %addr_gen_check83

addr_stale69:                                     ; preds = %addr_gen_check67
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok68

addr_gen_check83:                                 ; preds = %addr_ok68
  %arena.gen86 = call ptr @dva_arena_current()
  %arena.gen87 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen86, i32 0, i32 4
  %arena.gen88 = load i64, ptr %arena.gen87, align 8
  %addr.tag.match89 = icmp eq i64 %addr.tag81, %arena.gen88
  br i1 %addr.tag.match89, label %addr_ok84, label %addr_stale85

addr_ok84:                                        ; preds = %addr_stale85, %addr_gen_check83, %addr_ok68
  store i64 0, ptr %raw.clean.ptr80, align 8
  %var.load90 = load ptr, ptr %var.buf, align 8
  %var.load91 = load ptr, ptr %var.fs, align 8
  %var.load92 = load ptr, ptr %var.act, align 8
  %var.load93 = load ptr, ptr %var.st, align 8
  %var.load94 = load i64, ptr %var.es, align 8
  %var.load95 = load i64, ptr %var.cap, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load90, ptr %rec.fld, align 8
  %rec.fld96 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load91, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load92, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.load93, ptr %rec.fld98, align 8
  %rec.fld99 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load94, ptr %rec.fld99, align 8
  %rec.fld100 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load95, ptr %rec.fld100, align 8
  ret ptr %rec.alloc

addr_stale85:                                     ; preds = %addr_gen_check83
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok84
}

define i64 @"mem::pool_count"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen1 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen2 = load i64, ptr %arena.gen1, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen2
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i64 @"mem::pool_capacity"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define ptr @"mem::pool_alloc"(ptr %0) #1 {
entry:
  %var.cnt = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.top_next = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %raw.int = ptrtoint ptr %fld.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen1 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen2 = load i64, ptr %arena.gen1, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen2
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.top, align 8
  %var.load3 = load i64, ptr %var.top, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  ret ptr %ram.alloc

choice.exit:                                      ; preds = %ret.dead, %addr_ok
  %var.load4 = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load4, 1
  store i64 %subtmp, ptr %var.top_next, align 8
  %var.load5 = load ptr, ptr %var.p, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %var.load8 = load i64, ptr %var.top_next, align 8
  %raw.int9 = ptrtoint ptr %fld.load7 to i64
  %raw.clean.int10 = and i64 %raw.int9, 281474976710655
  %raw.clean.ptr11 = inttoptr i64 %raw.clean.int10 to ptr
  %addr.tag12 = lshr i64 %raw.int9, 48
  %addr.immortal13 = icmp eq i64 %addr.tag12, 0
  br i1 %addr.immortal13, label %addr_ok15, label %addr_gen_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check14:                                 ; preds = %choice.exit
  %arena.gen17 = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen17, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %addr.tag.match20 = icmp eq i64 %addr.tag12, %arena.gen19
  br i1 %addr.tag.match20, label %addr_ok15, label %addr_stale16

addr_ok15:                                        ; preds = %addr_stale16, %addr_gen_check14, %choice.exit
  store i64 %var.load8, ptr %raw.clean.ptr11, align 8
  %var.load21 = load ptr, ptr %var.p, align 8
  %fld.gep22 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %var.load24 = load i64, ptr %var.top_next, align 8
  %multmp = mul i64 %var.load24, 8
  %ptr.int.l = ptrtoint ptr %fld.load23 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int25 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int26 = and i64 %raw.int25, 281474976710655
  %raw.clean.ptr27 = inttoptr i64 %raw.clean.int26 to ptr
  %addr.tag28 = lshr i64 %raw.int25, 48
  %addr.immortal29 = icmp eq i64 %addr.tag28, 0
  br i1 %addr.immortal29, label %addr_ok31, label %addr_gen_check30

addr_stale16:                                     ; preds = %addr_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok15

addr_gen_check30:                                 ; preds = %addr_ok15
  %arena.gen33 = call ptr @dva_arena_current()
  %arena.gen34 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen33, i32 0, i32 4
  %arena.gen35 = load i64, ptr %arena.gen34, align 8
  %addr.tag.match36 = icmp eq i64 %addr.tag28, %arena.gen35
  br i1 %addr.tag.match36, label %addr_ok31, label %addr_stale32

addr_ok31:                                        ; preds = %addr_stale32, %addr_gen_check30, %addr_ok15
  %raw.load37 = load volatile i64, ptr %raw.clean.ptr27, align 8
  store i64 %raw.load37, ptr %var.idx, align 8
  %var.load38 = load ptr, ptr %var.p, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load38, i32 0, i32 2
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %var.load41 = load i64, ptr %var.idx, align 8
  %ptr.int.l42 = ptrtoint ptr %fld.load40 to i64
  %addtmp43 = add i64 %ptr.int.l42, %var.load41
  %ptr.res44 = inttoptr i64 %addtmp43 to ptr
  %raw.int45 = ptrtoint ptr %ptr.res44 to i64
  %raw.clean.int46 = and i64 %raw.int45, 281474976710655
  %raw.clean.ptr47 = inttoptr i64 %raw.clean.int46 to ptr
  %addr.tag48 = lshr i64 %raw.int45, 48
  %addr.immortal49 = icmp eq i64 %addr.tag48, 0
  br i1 %addr.immortal49, label %addr_ok51, label %addr_gen_check50

addr_stale32:                                     ; preds = %addr_gen_check30
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok31

addr_gen_check50:                                 ; preds = %addr_ok31
  %arena.gen53 = call ptr @dva_arena_current()
  %arena.gen54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen53, i32 0, i32 4
  %arena.gen55 = load i64, ptr %arena.gen54, align 8
  %addr.tag.match56 = icmp eq i64 %addr.tag48, %arena.gen55
  br i1 %addr.tag.match56, label %addr_ok51, label %addr_stale52

addr_ok51:                                        ; preds = %addr_stale52, %addr_gen_check50, %addr_ok31
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr47, i8 1, i64 1, i1 false)
  %var.load57 = load ptr, ptr %var.p, align 8
  %fld.gep58 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load57, i32 0, i32 3
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %ptr.int.l60 = ptrtoint ptr %fld.load59 to i64
  %addtmp61 = add i64 %ptr.int.l60, 8
  %ptr.res62 = inttoptr i64 %addtmp61 to ptr
  %raw.int63 = ptrtoint ptr %ptr.res62 to i64
  %raw.clean.int64 = and i64 %raw.int63, 281474976710655
  %raw.clean.ptr65 = inttoptr i64 %raw.clean.int64 to ptr
  %addr.tag66 = lshr i64 %raw.int63, 48
  %addr.immortal67 = icmp eq i64 %addr.tag66, 0
  br i1 %addr.immortal67, label %addr_ok69, label %addr_gen_check68

addr_stale52:                                     ; preds = %addr_gen_check50
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok51

addr_gen_check68:                                 ; preds = %addr_ok51
  %arena.gen71 = call ptr @dva_arena_current()
  %arena.gen72 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen71, i32 0, i32 4
  %arena.gen73 = load i64, ptr %arena.gen72, align 8
  %addr.tag.match74 = icmp eq i64 %addr.tag66, %arena.gen73
  br i1 %addr.tag.match74, label %addr_ok69, label %addr_stale70

addr_ok69:                                        ; preds = %addr_stale70, %addr_gen_check68, %addr_ok51
  %raw.load75 = load volatile i64, ptr %raw.clean.ptr65, align 8
  store i64 %raw.load75, ptr %var.cnt, align 8
  %var.load76 = load ptr, ptr %var.p, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load76, i32 0, i32 3
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %ptr.int.l79 = ptrtoint ptr %fld.load78 to i64
  %addtmp80 = add i64 %ptr.int.l79, 8
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %var.load82 = load i64, ptr %var.cnt, align 8
  %addtmp83 = add i64 %var.load82, 1
  %raw.int84 = ptrtoint ptr %ptr.res81 to i64
  %raw.clean.int85 = and i64 %raw.int84, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  %addr.tag87 = lshr i64 %raw.int84, 48
  %addr.immortal88 = icmp eq i64 %addr.tag87, 0
  br i1 %addr.immortal88, label %addr_ok90, label %addr_gen_check89

addr_stale70:                                     ; preds = %addr_gen_check68
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok69

addr_gen_check89:                                 ; preds = %addr_ok69
  %arena.gen92 = call ptr @dva_arena_current()
  %arena.gen93 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen92, i32 0, i32 4
  %arena.gen94 = load i64, ptr %arena.gen93, align 8
  %addr.tag.match95 = icmp eq i64 %addr.tag87, %arena.gen94
  br i1 %addr.tag.match95, label %addr_ok90, label %addr_stale91

addr_ok90:                                        ; preds = %addr_stale91, %addr_gen_check89, %addr_ok69
  store i64 %addtmp83, ptr %raw.clean.ptr86, align 8
  %arena.cur96 = call ptr @dva_arena_current()
  %ram.alloc97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 16)
  %tag.gep98 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc97, i32 0, i32 0
  store i64 1, ptr %tag.gep98, align 8
  %pay.gep99 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc97, i32 0, i32 1
  %var.load100 = load ptr, ptr %var.p, align 8
  %fld.gep101 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %var.load103 = load i64, ptr %var.idx, align 8
  %var.load104 = load ptr, ptr %var.p, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load104, i32 0, i32 4
  %fld.load106 = load i64, ptr %fld.gep105, align 8
  %multmp107 = mul i64 %var.load103, %fld.load106
  %ptr.int.l108 = ptrtoint ptr %fld.load102 to i64
  %addtmp109 = add i64 %ptr.int.l108, %multmp107
  %ptr.res110 = inttoptr i64 %addtmp109 to ptr
  store ptr %ptr.res110, ptr %pay.gep99, align 8
  ret ptr %ram.alloc97

addr_stale91:                                     ; preds = %addr_gen_check89
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok90
}

define i1 @"mem::pool_free"(ptr %0, ptr %1) #1 {
entry:
  %var.cnt = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.is_act = alloca i8, align 1
  %var.idx = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.addr, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %coerce.ptr2int2 = ptrtoint ptr %fld.load to i64
  %subtmp = sub i64 %coerce.ptr2int, %coerce.ptr2int2
  store i64 %subtmp, ptr %var.off, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.1.then, label %or.1.else

or.1.then:                                        ; preds = %entry
  br label %or.1.exit

or.1.else:                                        ; preds = %entry
  %var.load4 = load i64, ptr %var.off, align 8
  %var.load5 = load ptr, ptr %var.p, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 5
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %var.load8 = load ptr, ptr %var.p, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 4
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %multmp = mul i64 %fld.load7, %fld.load10
  %cmptmp11 = icmp sge i64 %var.load4, %multmp
  br label %or.1.exit

or.1.exit:                                        ; preds = %or.1.else, %or.1.then
  %or.1.phi = phi i1 [ %cmptmp, %or.1.then ], [ %cmptmp11, %or.1.else ]
  br i1 %or.1.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.1.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.1.exit
  %var.load12 = load i64, ptr %var.off, align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %div.is.zero = icmp eq i64 %fld.load15, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

ret.dead:                                         ; No predecessors!
  br label %choice.exit

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %var.load12, -9223372036854775808
  %div.is.negone = icmp eq i64 %fld.load15, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load12, %fld.load15
  store i64 %divtmp, ptr %var.idx, align 8
  %var.load16 = load i64, ptr %var.off, align 8
  %var.load17 = load ptr, ptr %var.p, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 4
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %div.is.zero20 = icmp eq i64 %fld.load19, 0
  br i1 %div.is.zero20, label %div.zero_abort22, label %div.not_zero21

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero21:                                   ; preds = %div.zero_abort22, %div.ok
  %div.is.min23 = icmp eq i64 %var.load16, -9223372036854775808
  %div.is.negone24 = icmp eq i64 %fld.load19, -1
  %div.is.ovf25 = and i1 %div.is.min23, %div.is.negone24
  br i1 %div.is.ovf25, label %div.ovf_abort27, label %div.ok26

div.zero_abort22:                                 ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero21

div.ok26:                                         ; preds = %div.ovf_abort27, %div.not_zero21
  %modtmp = srem i64 %var.load16, %fld.load19
  %cmptmp28 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp28, label %choice.then29, label %choice.exit30

div.ovf_abort27:                                  ; preds = %div.not_zero21
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok26

choice.then29:                                    ; preds = %div.ok26
  ret i1 false

choice.exit30:                                    ; preds = %ret.dead31, %div.ok26
  %var.load32 = load ptr, ptr %var.p, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.idx, align 8
  %ptr.int.l = ptrtoint ptr %fld.load34 to i64
  %addtmp = add i64 %ptr.int.l, %var.load35
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead31:                                       ; No predecessors!
  br label %choice.exit30

addr_gen_check:                                   ; preds = %choice.exit30
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen37
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit30
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load38 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load38 to i64
  %cmptmp39 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.exit41

addr_stale:                                       ; preds = %addr_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then40:                                    ; preds = %addr_ok
  ret i1 false

choice.exit41:                                    ; preds = %ret.dead42, %addr_ok
  %var.load43 = load ptr, ptr %var.p, align 8
  %fld.gep44 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load ptr, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.idx, align 8
  %ptr.int.l47 = ptrtoint ptr %fld.load45 to i64
  %addtmp48 = add i64 %ptr.int.l47, %var.load46
  %ptr.res49 = inttoptr i64 %addtmp48 to ptr
  %raw.int50 = ptrtoint ptr %ptr.res49 to i64
  %raw.clean.int51 = and i64 %raw.int50, 281474976710655
  %raw.clean.ptr52 = inttoptr i64 %raw.clean.int51 to ptr
  %addr.tag53 = lshr i64 %raw.int50, 48
  %addr.immortal54 = icmp eq i64 %addr.tag53, 0
  br i1 %addr.immortal54, label %addr_ok56, label %addr_gen_check55

ret.dead42:                                       ; No predecessors!
  br label %choice.exit41

addr_gen_check55:                                 ; preds = %choice.exit41
  %arena.gen58 = call ptr @dva_arena_current()
  %arena.gen59 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen58, i32 0, i32 4
  %arena.gen60 = load i64, ptr %arena.gen59, align 8
  %addr.tag.match61 = icmp eq i64 %addr.tag53, %arena.gen60
  br i1 %addr.tag.match61, label %addr_ok56, label %addr_stale57

addr_ok56:                                        ; preds = %addr_stale57, %addr_gen_check55, %choice.exit41
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr52, i8 0, i64 1, i1 false)
  %var.load62 = load ptr, ptr %var.p, align 8
  %fld.gep63 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load62, i32 0, i32 3
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %raw.int65 = ptrtoint ptr %fld.load64 to i64
  %raw.clean.int66 = and i64 %raw.int65, 281474976710655
  %raw.clean.ptr67 = inttoptr i64 %raw.clean.int66 to ptr
  %addr.tag68 = lshr i64 %raw.int65, 48
  %addr.immortal69 = icmp eq i64 %addr.tag68, 0
  br i1 %addr.immortal69, label %addr_ok71, label %addr_gen_check70

addr_stale57:                                     ; preds = %addr_gen_check55
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok56

addr_gen_check70:                                 ; preds = %addr_ok56
  %arena.gen73 = call ptr @dva_arena_current()
  %arena.gen74 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen73, i32 0, i32 4
  %arena.gen75 = load i64, ptr %arena.gen74, align 8
  %addr.tag.match76 = icmp eq i64 %addr.tag68, %arena.gen75
  br i1 %addr.tag.match76, label %addr_ok71, label %addr_stale72

addr_ok71:                                        ; preds = %addr_stale72, %addr_gen_check70, %addr_ok56
  %raw.load77 = load volatile i64, ptr %raw.clean.ptr67, align 8
  store i64 %raw.load77, ptr %var.top, align 8
  %var.load78 = load ptr, ptr %var.p, align 8
  %fld.gep79 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load78, i32 0, i32 1
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %var.load81 = load i64, ptr %var.top, align 8
  %multmp82 = mul i64 %var.load81, 8
  %ptr.int.l83 = ptrtoint ptr %fld.load80 to i64
  %addtmp84 = add i64 %ptr.int.l83, %multmp82
  %ptr.res85 = inttoptr i64 %addtmp84 to ptr
  %var.load86 = load i64, ptr %var.idx, align 8
  %raw.int87 = ptrtoint ptr %ptr.res85 to i64
  %raw.clean.int88 = and i64 %raw.int87, 281474976710655
  %raw.clean.ptr89 = inttoptr i64 %raw.clean.int88 to ptr
  %addr.tag90 = lshr i64 %raw.int87, 48
  %addr.immortal91 = icmp eq i64 %addr.tag90, 0
  br i1 %addr.immortal91, label %addr_ok93, label %addr_gen_check92

addr_stale72:                                     ; preds = %addr_gen_check70
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok71

addr_gen_check92:                                 ; preds = %addr_ok71
  %arena.gen95 = call ptr @dva_arena_current()
  %arena.gen96 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen95, i32 0, i32 4
  %arena.gen97 = load i64, ptr %arena.gen96, align 8
  %addr.tag.match98 = icmp eq i64 %addr.tag90, %arena.gen97
  br i1 %addr.tag.match98, label %addr_ok93, label %addr_stale94

addr_ok93:                                        ; preds = %addr_stale94, %addr_gen_check92, %addr_ok71
  store i64 %var.load86, ptr %raw.clean.ptr89, align 8
  %var.load99 = load ptr, ptr %var.p, align 8
  %fld.gep100 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load99, i32 0, i32 3
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %var.load102 = load i64, ptr %var.top, align 8
  %addtmp103 = add i64 %var.load102, 1
  %raw.int104 = ptrtoint ptr %fld.load101 to i64
  %raw.clean.int105 = and i64 %raw.int104, 281474976710655
  %raw.clean.ptr106 = inttoptr i64 %raw.clean.int105 to ptr
  %addr.tag107 = lshr i64 %raw.int104, 48
  %addr.immortal108 = icmp eq i64 %addr.tag107, 0
  br i1 %addr.immortal108, label %addr_ok110, label %addr_gen_check109

addr_stale94:                                     ; preds = %addr_gen_check92
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok93

addr_gen_check109:                                ; preds = %addr_ok93
  %arena.gen112 = call ptr @dva_arena_current()
  %arena.gen113 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen112, i32 0, i32 4
  %arena.gen114 = load i64, ptr %arena.gen113, align 8
  %addr.tag.match115 = icmp eq i64 %addr.tag107, %arena.gen114
  br i1 %addr.tag.match115, label %addr_ok110, label %addr_stale111

addr_ok110:                                       ; preds = %addr_stale111, %addr_gen_check109, %addr_ok93
  store i64 %addtmp103, ptr %raw.clean.ptr106, align 8
  %var.load116 = load ptr, ptr %var.p, align 8
  %fld.gep117 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load116, i32 0, i32 3
  %fld.load118 = load ptr, ptr %fld.gep117, align 8
  %ptr.int.l119 = ptrtoint ptr %fld.load118 to i64
  %addtmp120 = add i64 %ptr.int.l119, 8
  %ptr.res121 = inttoptr i64 %addtmp120 to ptr
  %raw.int122 = ptrtoint ptr %ptr.res121 to i64
  %raw.clean.int123 = and i64 %raw.int122, 281474976710655
  %raw.clean.ptr124 = inttoptr i64 %raw.clean.int123 to ptr
  %addr.tag125 = lshr i64 %raw.int122, 48
  %addr.immortal126 = icmp eq i64 %addr.tag125, 0
  br i1 %addr.immortal126, label %addr_ok128, label %addr_gen_check127

addr_stale111:                                    ; preds = %addr_gen_check109
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok110

addr_gen_check127:                                ; preds = %addr_ok110
  %arena.gen130 = call ptr @dva_arena_current()
  %arena.gen131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen130, i32 0, i32 4
  %arena.gen132 = load i64, ptr %arena.gen131, align 8
  %addr.tag.match133 = icmp eq i64 %addr.tag125, %arena.gen132
  br i1 %addr.tag.match133, label %addr_ok128, label %addr_stale129

addr_ok128:                                       ; preds = %addr_stale129, %addr_gen_check127, %addr_ok110
  %raw.load134 = load volatile i64, ptr %raw.clean.ptr124, align 8
  store i64 %raw.load134, ptr %var.cnt, align 8
  %var.load135 = load ptr, ptr %var.p, align 8
  %fld.gep136 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load135, i32 0, i32 3
  %fld.load137 = load ptr, ptr %fld.gep136, align 8
  %ptr.int.l138 = ptrtoint ptr %fld.load137 to i64
  %addtmp139 = add i64 %ptr.int.l138, 8
  %ptr.res140 = inttoptr i64 %addtmp139 to ptr
  %var.load141 = load i64, ptr %var.cnt, align 8
  %subtmp142 = sub i64 %var.load141, 1
  %raw.int143 = ptrtoint ptr %ptr.res140 to i64
  %raw.clean.int144 = and i64 %raw.int143, 281474976710655
  %raw.clean.ptr145 = inttoptr i64 %raw.clean.int144 to ptr
  %addr.tag146 = lshr i64 %raw.int143, 48
  %addr.immortal147 = icmp eq i64 %addr.tag146, 0
  br i1 %addr.immortal147, label %addr_ok149, label %addr_gen_check148

addr_stale129:                                    ; preds = %addr_gen_check127
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok128

addr_gen_check148:                                ; preds = %addr_ok128
  %arena.gen151 = call ptr @dva_arena_current()
  %arena.gen152 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen151, i32 0, i32 4
  %arena.gen153 = load i64, ptr %arena.gen152, align 8
  %addr.tag.match154 = icmp eq i64 %addr.tag146, %arena.gen153
  br i1 %addr.tag.match154, label %addr_ok149, label %addr_stale150

addr_ok149:                                       ; preds = %addr_stale150, %addr_gen_check148, %addr_ok128
  store i64 %subtmp142, ptr %raw.clean.ptr145, align 8
  ret i1 true

addr_stale150:                                    ; preds = %addr_gen_check148
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok149
}

define void @"mem::pool_destroy"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  ret void
}

define void @"mem::pool_for_each"(ptr %0, ptr %1) #1 {
entry:
  %var.is_act = alloca i8, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.2 = alloca i64, align 8
  %loop.idx.2 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.f, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 0, ptr %loop.idx.2, align 8
  br label %loop.header.2

loop.header.2:                                    ; preds = %loop.latch.2, %entry
  %counter.load = load i64, ptr %loop.idx.2, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load
  br i1 %loop.cond, label %loop.body.2, label %loop.exit.nat.2

loop.body.2:                                      ; preds = %loop.header.2
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.2, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %var.load4 = load i64, ptr %var.i, align 8
  %ptr.int.l = ptrtoint ptr %fld.load3 to i64
  %addtmp = add i64 %ptr.int.l, %var.load4
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.2:                                  ; preds = %loop.header.2
  br label %loop.exit.2

loop.latch.2:                                     ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.2, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.2, align 8
  br label %loop.header.2

loop.exit.2:                                      ; preds = %loop.exit.nat.2
  ret void

addr_gen_check:                                   ; preds = %loop.body.2
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen5 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen6 = load i64, ptr %arena.gen5, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen6
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.2
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load7 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load7 to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %clo.load = load ptr, ptr %var.f, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %var.load8 = load ptr, ptr %var.p, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %var.load11 = load i64, ptr %var.i, align 8
  %var.load12 = load ptr, ptr %var.p, align 8
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %multmp = mul i64 %var.load11, %fld.load14
  %ptr.int.l15 = ptrtoint ptr %fld.load10 to i64
  %addtmp16 = add i64 %ptr.int.l15, %multmp
  %ptr.res17 = inttoptr i64 %addtmp16 to ptr
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

choice.exit:                                      ; preds = %clo.merge, %addr_ok
  br label %loop.latch.2

clo.cap:                                          ; preds = %choice.then
  call void %clo.fn.load(ptr %clo.env.load, ptr %ptr.res17)
  br label %clo.merge

clo.plain:                                        ; preds = %choice.then
  call void %clo.fn.load(ptr %ptr.res17)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
