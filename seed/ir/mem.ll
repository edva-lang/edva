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
@clo.const.6 = internal constant { ptr, ptr } { ptr @"mem::current", ptr null }
@"var.mem::current" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"mem::set_current", ptr null }
@"var.mem::set_current" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"mem::save", ptr null }
@"var.mem::save" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"mem::restore_to", ptr null }
@"var.mem::restore_to" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"mem::arena", ptr null }
@"var.mem::arena" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"mem::arena_default", ptr null }
@"var.mem::arena_default" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"mem::alloc", ptr null }
@"var.mem::alloc" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"mem::reset", ptr null }
@"var.mem::reset" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"mem::release", ptr null }
@"var.mem::release" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"mem::destroy", ptr null }
@"var.mem::destroy" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"mem::stats", ptr null }
@"var.mem::stats" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.17 = internal constant { ptr, ptr } { ptr @"mem::global_arena", ptr null }
@"var.mem::global_arena" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"mem::provenance", ptr null }
@"var.mem::provenance" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"mem::current_provenance", ptr null }
@"var.mem::current_provenance" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"mem::owns_addr", ptr null }
@"var.mem::owns_addr" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"mem::with", ptr null }
@"var.mem::with" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"mem::escape", ptr null }
@"var.mem::escape" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"mem::pool", ptr null }
@"var.mem::pool" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"mem::pool_count", ptr null }
@"var.mem::pool_count" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"mem::pool_capacity", ptr null }
@"var.mem::pool_capacity" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"mem::pool_alloc", ptr null }
@"var.mem::pool_alloc" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.27 = internal constant { ptr, ptr } { ptr @"mem::pool_free", ptr null }
@"var.mem::pool_free" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"mem::pool_destroy", ptr null }
@"var.mem::pool_destroy" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"mem::pool_for_each", ptr null }
@"var.mem::pool_for_each" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"mem::index_byte", ptr null }
@"var.mem::index_byte" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_mem, ptr null }]

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

define internal void @__dva_global_init_mem() #0 {
entry:
  store ptr @clo.const, ptr @"var.mem::copy", align 8
  store ptr @clo.const.1, ptr @"var.mem::move", align 8
  store ptr @clo.const.2, ptr @"var.mem::zero", align 8
  store ptr @clo.const.3, ptr @"var.mem::set", align 8
  store ptr @clo.const.4, ptr @"var.mem::align_forward", align 8
  store ptr @clo.const.5, ptr @"var.mem::is_aligned", align 8
  store ptr @clo.const.6, ptr @"var.mem::current", align 8
  store ptr @clo.const.7, ptr @"var.mem::set_current", align 8
  store ptr @clo.const.8, ptr @"var.mem::save", align 8
  store ptr @clo.const.9, ptr @"var.mem::restore_to", align 8
  store ptr @clo.const.10, ptr @"var.mem::arena", align 8
  store ptr @clo.const.11, ptr @"var.mem::arena_default", align 8
  store ptr @clo.const.12, ptr @"var.mem::alloc", align 8
  store ptr @clo.const.13, ptr @"var.mem::reset", align 8
  store ptr @clo.const.14, ptr @"var.mem::release", align 8
  store ptr @clo.const.15, ptr @"var.mem::destroy", align 8
  store ptr @clo.const.16, ptr @"var.mem::stats", align 8
  store ptr @clo.const.17, ptr @"var.mem::global_arena", align 8
  store ptr @clo.const.18, ptr @"var.mem::provenance", align 8
  store ptr @clo.const.19, ptr @"var.mem::current_provenance", align 8
  store ptr @clo.const.20, ptr @"var.mem::owns_addr", align 8
  store ptr @clo.const.21, ptr @"var.mem::with", align 8
  store ptr @clo.const.22, ptr @"var.mem::escape", align 8
  store ptr @clo.const.23, ptr @"var.mem::pool", align 8
  store ptr @clo.const.24, ptr @"var.mem::pool_count", align 8
  store ptr @clo.const.25, ptr @"var.mem::pool_capacity", align 8
  store ptr @clo.const.26, ptr @"var.mem::pool_alloc", align 8
  store ptr @clo.const.27, ptr @"var.mem::pool_free", align 8
  store ptr @clo.const.28, ptr @"var.mem::pool_destroy", align 8
  store ptr @clo.const.29, ptr @"var.mem::pool_for_each", align 8
  store ptr @clo.const.30, ptr @"var.mem::index_byte", align 8
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

declare ptr @memchr(ptr, i64, i64) #0

define ptr @"mem::copy"(ptr %0, ptr %1, i64 %2) #0 {
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
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

define ptr @"mem::move"(ptr %0, ptr %1, i64 %2) #0 {
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
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

define ptr @"mem::zero"(ptr %0, i64 %1) #0 {
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
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load1, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

define ptr @"mem::set"(ptr %0, i64 %1, i64 %2) #0 {
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
  %coerce.trunc = trunc i64 %var.load1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr
}

define ptr @"mem::align_forward"(ptr %0, i64 %1) #0 {
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

define i1 @"mem::is_aligned"(ptr %0, i64 %1) #0 {
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

define ptr @"mem::current"() #0 {
entry:
  %call.res = call ptr @dva_arena_current()
  ret ptr %call.res
}

define ptr @"mem::set_current"(ptr %0) #0 {
entry:
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_set_current(ptr %addr.ffi.clean)
  ret ptr %call.res
}

define i64 @"mem::save"(ptr %0) #0 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @dva_arena_save(ptr %addr.ffi.clean)
  ret i64 %call.res
}

define void @"mem::restore_to"(ptr %0, i64 %1) #0 {
entry:
  %var.mark = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store i64 %1, ptr %var.mark, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load i64, ptr %var.mark, align 8
  call void @dva_arena_restore(ptr %addr.ffi.clean, i64 %var.load1)
  ret void
}

define { ptr, i64 } @"mem::arena"(i64 %0) #0 {
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
  %call.res = call ptr @malloc(i64 131632)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load2 = load ptr, ptr %var.raw, align 8
  %ptr.int.l = ptrtoint ptr %var.load2 to i64
  %cmptmp3 = icmp ne i64 %ptr.int.l, 0
  br i1 %cmptmp3, label %choice.then4, label %choice.exit5

choice.then4:                                     ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load6 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load7 = load i64, ptr %var.sz, align 8
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %var.load7)
  br label %choice.exit5

choice.exit5:                                     ; preds = %choice.then4, %choice.exit
  %var.load8 = load ptr, ptr %var.raw, align 8
  %var.load9 = load i64, ptr %var.sz, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load8, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load9, ptr %rec.fld10, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.alloc, align 8
  ret { ptr, i64 } %ret.pack
}

define { ptr, i64 } @"mem::arena_default"() #0 {
entry:
  %call.res = call { ptr, i64 } @"mem::arena"(i64 67108864)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store { ptr, i64 } %call.res, ptr %ret.ub.alloc, align 8
  %ret.pack = load { ptr, i64 }, ptr %ret.ub.alloc, align 8
  ret { ptr, i64 } %ret.pack
}

define ptr @"mem::alloc"(ptr %0, i64 %1) #0 {
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

define void @"mem::reset"(ptr %0) #0 {
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

define void @"mem::release"(ptr %0) #0 {
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
  ret void
}

define void @"mem::destroy"(ptr %0) #0 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %cmptmp = icmp ne i64 %ptr.int.l, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.a, align 8
  call void @"mem::release"(ptr %var.load1)
  %var.load2 = load ptr, ptr %var.a, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load4 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define { i64, i64, i64 } @"mem::stats"(ptr %0) #0 {
entry:
  %rec.salloc = alloca { i64, i64, i64 }, align 8
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.num_chunks, align 8
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %ptr.int.l4 = ptrtoint ptr %fld.load3 to i64
  %addtmp5 = add i64 %ptr.int.l4, 16
  %ptr.res6 = inttoptr i64 %addtmp5 to ptr
  %raw.int7 = ptrtoint ptr %ptr.res6 to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  %raw.load10 = load volatile i64, ptr %raw.clean.ptr9, align 8
  store i64 %raw.load10, ptr %var.off, align 8
  %var.load11 = load i64, ptr %var.num_chunks, align 8
  %cmptmp = icmp sgt i64 %var.load11, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load12 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load12, 1
  %var.load13 = load ptr, ptr %var.a, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %multmp = mul i64 %subtmp, %fld.load15
  %var.load16 = load i64, ptr %var.off, align 8
  %addtmp17 = add i64 %multmp, %var.load16
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load18 = load i64, ptr %var.off, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp17, %choice.then ], [ %var.load18, %choice.else ]
  store i64 %choice.res, ptr %var.allocated, align 8
  %var.load19 = load i64, ptr %var.allocated, align 8
  %var.load20 = load i64, ptr %var.num_chunks, align 8
  %var.load21 = load ptr, ptr %var.a, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 0
  store i64 %var.load19, ptr %rec.fld, align 8
  %rec.fld24 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 %var.load20, ptr %rec.fld24, align 8
  %rec.fld25 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 2
  store i64 %fld.load23, ptr %rec.fld25, align 8
  %ret.pack = load { i64, i64, i64 }, ptr %rec.salloc, align 8
  ret { i64, i64, i64 } %ret.pack
}

define { ptr, i64 } @"mem::global_arena"() #0 {
entry:
  %var.eff_cap = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.g_raw = alloca ptr, align 8
  %var.prev = alloca ptr, align 8
  %call.res = call ptr @"mem::set_current"(ptr null)
  store ptr %call.res, ptr %var.prev, align 8
  %call.res1 = call ptr @"mem::current"()
  store ptr %call.res1, ptr %var.g_raw, align 8
  %var.load = load ptr, ptr %var.prev, align 8
  %call.res2 = call ptr @"mem::set_current"(ptr %var.load)
  %var.load3 = load ptr, ptr %var.g_raw, align 8
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load4 = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %var.load5 = load i64, ptr %var.cap, align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load5, %choice.then ], [ 67108864, %choice.else ]
  store i64 %choice.res, ptr %var.eff_cap, align 8
  %var.load6 = load ptr, ptr %var.g_raw, align 8
  %var.load7 = load i64, ptr %var.eff_cap, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load6, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load7, ptr %rec.fld8, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.alloc, align 8
  ret { ptr, i64 } %ret.pack
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #7 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_addr_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_addr_msg() #8 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"mem::provenance"(ptr %0) #0 {
entry:
  %var.resets = alloca i64, align 8
  %var.gen = alloca i64, align 8
  %var.next_gen = alloca i64, align 8
  %var.depth = alloca i64, align 8
  %var.allocated = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.num_chunks = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.a, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %raw.int = ptrtoint ptr %fld.load6 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %fld.load3, %choice.then ], [ %raw.load, %choice.else ]
  store i64 %choice.res, ptr %var.cap, align 8
  %var.load7 = load ptr, ptr %var.a, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %ptr.int.l = ptrtoint ptr %fld.load9 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int10 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int11 = and i64 %raw.int10, 281474976710655
  %raw.clean.ptr12 = inttoptr i64 %raw.clean.int11 to ptr
  %raw.load13 = load volatile i64, ptr %raw.clean.ptr12, align 8
  store i64 %raw.load13, ptr %var.num_chunks, align 8
  %var.load14 = load ptr, ptr %var.a, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %ptr.int.l17 = ptrtoint ptr %fld.load16 to i64
  %addtmp18 = add i64 %ptr.int.l17, 16
  %ptr.res19 = inttoptr i64 %addtmp18 to ptr
  %raw.int20 = ptrtoint ptr %ptr.res19 to i64
  %raw.clean.int21 = and i64 %raw.int20, 281474976710655
  %raw.clean.ptr22 = inttoptr i64 %raw.clean.int21 to ptr
  %raw.load23 = load volatile i64, ptr %raw.clean.ptr22, align 8
  store i64 %raw.load23, ptr %var.off, align 8
  %var.load24 = load i64, ptr %var.num_chunks, align 8
  %cmptmp25 = icmp sgt i64 %var.load24, 1
  br i1 %cmptmp25, label %choice.then26, label %choice.else27

choice.then26:                                    ; preds = %choice.exit
  %var.load29 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load29, 1
  %var.load30 = load i64, ptr %var.cap, align 8
  %multmp = mul i64 %subtmp, %var.load30
  %var.load31 = load i64, ptr %var.off, align 8
  %addtmp32 = add i64 %multmp, %var.load31
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.exit
  %var.load33 = load i64, ptr %var.off, align 8
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res34 = phi i64 [ %addtmp32, %choice.then26 ], [ %var.load33, %choice.else27 ]
  store i64 %choice.res34, ptr %var.allocated, align 8
  %var.load35 = load ptr, ptr %var.a, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 0
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %ptr.int.l38 = ptrtoint ptr %fld.load37 to i64
  %addtmp39 = add i64 %ptr.int.l38, 131104
  %ptr.res40 = inttoptr i64 %addtmp39 to ptr
  %raw.int41 = ptrtoint ptr %ptr.res40 to i64
  %raw.clean.int42 = and i64 %raw.int41, 281474976710655
  %raw.clean.ptr43 = inttoptr i64 %raw.clean.int42 to ptr
  %raw.load44 = load volatile i64, ptr %raw.clean.ptr43, align 8
  store i64 %raw.load44, ptr %var.depth, align 8
  %var.load45 = load ptr, ptr %var.a, align 8
  %fld.gep46 = getelementptr inbounds { ptr, i64 }, ptr %var.load45, i32 0, i32 0
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %ptr.int.l48 = ptrtoint ptr %fld.load47 to i64
  %addtmp49 = add i64 %ptr.int.l48, 131112
  %ptr.res50 = inttoptr i64 %addtmp49 to ptr
  %raw.int51 = ptrtoint ptr %ptr.res50 to i64
  %raw.clean.int52 = and i64 %raw.int51, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  %raw.load54 = load volatile i64, ptr %raw.clean.ptr53, align 8
  store i64 %raw.load54, ptr %var.next_gen, align 8
  %var.load55 = load i64, ptr %var.next_gen, align 8
  %cmptmp56 = icmp sgt i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %choice.exit28
  %var.load60 = load i64, ptr %var.next_gen, align 8
  br label %choice.exit59

choice.else58:                                    ; preds = %choice.exit28
  br label %choice.exit59

choice.exit59:                                    ; preds = %choice.else58, %choice.then57
  %choice.res61 = phi i64 [ %var.load60, %choice.then57 ], [ 1, %choice.else58 ]
  store i64 %choice.res61, ptr %var.gen, align 8
  %var.load62 = load ptr, ptr %var.a, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %ptr.int.l65 = ptrtoint ptr %fld.load64 to i64
  %addtmp66 = add i64 %ptr.int.l65, 131120
  %ptr.res67 = inttoptr i64 %addtmp66 to ptr
  %raw.int68 = ptrtoint ptr %ptr.res67 to i64
  %raw.clean.int69 = and i64 %raw.int68, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  %raw.load71 = load volatile i64, ptr %raw.clean.ptr70, align 8
  store i64 %raw.load71, ptr %var.resets, align 8
  %var.load72 = load ptr, ptr %var.a, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %var.load75 = load i64, ptr %var.gen, align 8
  %var.load76 = load i64, ptr %var.depth, align 8
  %var.load77 = load i64, ptr %var.resets, align 8
  %var.load78 = load i64, ptr %var.allocated, align 8
  %var.load79 = load i64, ptr %var.num_chunks, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load74, ptr %rec.fld, align 8
  %rec.fld80 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load75, ptr %rec.fld80, align 8
  %rec.fld81 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load76, ptr %rec.fld81, align 8
  %rec.fld82 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load77, ptr %rec.fld82, align 8
  %rec.fld83 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load78, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load79, ptr %rec.fld84, align 8
  ret ptr %rec.alloc
}

define ptr @"mem::current_provenance"() #0 {
entry:
  %var.eff_cap = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  %call.res = call ptr @"mem::current"()
  store ptr %call.res, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load1 = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %var.load2 = load i64, ptr %var.cap, align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load2, %choice.then ], [ 67108864, %choice.else ]
  store i64 %choice.res, ptr %var.eff_cap, align 8
  %var.load3 = load ptr, ptr %var.raw, align 8
  %var.load4 = load i64, ptr %var.eff_cap, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load3, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld5, align 8
  %call.res6 = call ptr @"mem::provenance"(ptr %rec.alloc)
  ret ptr %call.res6
}

define i1 @"mem::owns_addr"(ptr %0, ptr %1) #0 {
entry:
  %var.c_limit = alloca i64, align 8
  %var.c_base = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.num_chunks = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.raw_addr = alloca i64, align 8
  %var.ptr = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.ptr, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %cmptmp = icmp eq i64 %ptr.int.l, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load1 to i64
  %bandtmp = and i64 %coerce.ptr2int, 281474976710655
  store i64 %bandtmp, ptr %var.raw_addr, align 8
  %var.load2 = load i64, ptr %var.raw_addr, align 8
  %cmptmp3 = icmp eq i64 %var.load2, 0
  br i1 %cmptmp3, label %choice.then4, label %choice.exit5

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then4:                                     ; preds = %choice.exit
  ret i1 false

choice.exit5:                                     ; preds = %ret.dead6, %choice.exit
  %var.load7 = load ptr, ptr %var.a, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %cmptmp10 = icmp sgt i64 %fld.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.else

ret.dead6:                                        ; No predecessors!
  br label %choice.exit5

choice.then11:                                    ; preds = %choice.exit5
  %var.load13 = load ptr, ptr %var.a, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  br label %choice.exit12

choice.else:                                      ; preds = %choice.exit5
  %var.load16 = load ptr, ptr %var.a, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %raw.int = ptrtoint ptr %fld.load18 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit12

choice.exit12:                                    ; preds = %choice.else, %choice.then11
  %choice.res = phi i64 [ %fld.load15, %choice.then11 ], [ %raw.load, %choice.else ]
  store i64 %choice.res, ptr %var.cap, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 0
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load21 to i64
  %addtmp = add i64 %ptr.int.l22, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int23 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int24 = and i64 %raw.int23, 281474976710655
  %raw.clean.ptr25 = inttoptr i64 %raw.clean.int24 to ptr
  %raw.load26 = load volatile i64, ptr %raw.clean.ptr25, align 8
  store i64 %raw.load26, ptr %var.num_chunks, align 8
  %var.load27 = load ptr, ptr %var.a, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64 }, ptr %var.load27, i32 0, i32 0
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %ptr.int.l30 = ptrtoint ptr %fld.load29 to i64
  %addtmp31 = add i64 %ptr.int.l30, 16
  %ptr.res32 = inttoptr i64 %addtmp31 to ptr
  %raw.int33 = ptrtoint ptr %ptr.res32 to i64
  %raw.clean.int34 = and i64 %raw.int33, 281474976710655
  %raw.clean.ptr35 = inttoptr i64 %raw.clean.int34 to ptr
  %raw.load36 = load volatile i64, ptr %raw.clean.ptr35, align 8
  store i64 %raw.load36, ptr %var.off, align 8
  %var.load37 = load i64, ptr %var.num_chunks, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.header.29:                                   ; preds = %loop.latch.29, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load37
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load38 = load ptr, ptr %var.a, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %ptr.int.l41 = ptrtoint ptr %fld.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 24
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %var.load44 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load44, 8
  %ptr.int.l45 = ptrtoint ptr %ptr.res43 to i64
  %addtmp46 = add i64 %ptr.int.l45, %multmp
  %ptr.res47 = inttoptr i64 %addtmp46 to ptr
  %raw.int48 = ptrtoint ptr %ptr.res47 to i64
  %raw.clean.int49 = and i64 %raw.int48, 281474976710655
  %raw.clean.ptr50 = inttoptr i64 %raw.clean.int49 to ptr
  %raw.load51 = load volatile i64, ptr %raw.clean.ptr50, align 8
  %bandtmp52 = and i64 %raw.load51, 281474976710655
  store i64 %bandtmp52, ptr %var.c_base, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %var.load54 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load54, 1
  %cmptmp55 = icmp eq i64 %var.load53, %subtmp
  br i1 %cmptmp55, label %choice.then56, label %choice.else57

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit71
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  ret i1 false

choice.then56:                                    ; preds = %loop.body.29
  %var.load59 = load i64, ptr %var.off, align 8
  br label %choice.exit58

choice.else57:                                    ; preds = %loop.body.29
  %var.load60 = load i64, ptr %var.cap, align 8
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.else57, %choice.then56
  %choice.res61 = phi i64 [ %var.load59, %choice.then56 ], [ %var.load60, %choice.else57 ]
  store i64 %choice.res61, ptr %var.c_limit, align 8
  %var.load62 = load i64, ptr %var.raw_addr, align 8
  %var.load63 = load i64, ptr %var.c_base, align 8
  %cmptmp64 = icmp sge i64 %var.load62, %var.load63
  br i1 %cmptmp64, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %choice.exit58
  %var.load65 = load i64, ptr %var.raw_addr, align 8
  %var.load66 = load i64, ptr %var.c_base, align 8
  %var.load67 = load i64, ptr %var.c_limit, align 8
  %addtmp68 = add i64 %var.load66, %var.load67
  %cmptmp69 = icmp slt i64 %var.load65, %addtmp68
  br label %and.30.exit

and.30.else:                                      ; preds = %choice.exit58
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %cmptmp69, %and.30.then ], [ %cmptmp64, %and.30.else ]
  br i1 %and.30.phi, label %choice.then70, label %choice.exit71

choice.then70:                                    ; preds = %and.30.exit
  ret i1 true

choice.exit71:                                    ; preds = %ret.dead72, %and.30.exit
  br label %loop.latch.29

ret.dead72:                                       ; No predecessors!
  br label %choice.exit71
}

define void @"mem::with"(ptr %0, ptr %1) #0 {
entry:
  %var.prev = alloca ptr, align 8
  %var.action = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.action, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res = call ptr @"mem::set_current"(ptr %fld.load)
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
  %call.res2 = call ptr @"mem::set_current"(ptr %var.load1)
  ret void
}

define void @"mem::escape"(ptr %0) #0 {
entry:
  %var.prev = alloca ptr, align 8
  %var.action = alloca ptr, align 8
  store ptr %0, ptr %var.action, align 8
  %call.res = call ptr @"mem::set_current"(ptr null)
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
  %var.load = load ptr, ptr %var.prev, align 8
  %call.res1 = call ptr @"mem::set_current"(ptr %var.load)
  ret void
}

define ptr @"mem::pool"(i64 %0, i64 %1) #0 {
entry:
  %var.st_cap = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.32 = alloca i64, align 8
  %loop.idx.32 = alloca i64, align 8
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
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load36, i1 false)
  %var.load37 = load i64, ptr %var.cap, align 8
  store i64 0, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.header.32:                                   ; preds = %loop.latch.32, %choice.exit6
  %counter.load = load i64, ptr %loop.idx.32, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load37
  br i1 %loop.cond, label %loop.body.32, label %loop.exit.nat.32

loop.body.32:                                     ; preds = %loop.header.32
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.32, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load38 = load ptr, ptr %var.fs, align 8
  %var.load39 = load i64, ptr %var.i, align 8
  %multmp40 = mul i64 %var.load39, 8
  %ptr.int.l41 = ptrtoint ptr %var.load38 to i64
  %addtmp42 = add i64 %ptr.int.l41, %multmp40
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %var.load44 = load i64, ptr %var.i, align 8
  %raw.int45 = ptrtoint ptr %ptr.res43 to i64
  %raw.clean.int46 = and i64 %raw.int45, 281474976710655
  %raw.clean.ptr47 = inttoptr i64 %raw.clean.int46 to ptr
  store i64 %var.load44, ptr %raw.clean.ptr47, align 8
  br label %loop.latch.32

loop.exit.nat.32:                                 ; preds = %loop.header.32
  br label %loop.exit.32

loop.latch.32:                                    ; preds = %loop.body.32
  %step.val = load i64, ptr %loop.step.32, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.exit.32:                                     ; preds = %loop.exit.nat.32
  %var.load48 = load i64, ptr %var.cap, align 8
  store i64 %var.load48, ptr %var.st_cap, align 8
  %var.load49 = load ptr, ptr %var.st, align 8
  %var.load50 = load i64, ptr %var.st_cap, align 8
  %raw.int51 = ptrtoint ptr %var.load49 to i64
  %raw.clean.int52 = and i64 %raw.int51, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  store i64 %var.load50, ptr %raw.clean.ptr53, align 8
  %var.load54 = load ptr, ptr %var.st, align 8
  %ptr.int.l55 = ptrtoint ptr %var.load54 to i64
  %addtmp56 = add i64 %ptr.int.l55, 8
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %raw.int58 = ptrtoint ptr %ptr.res57 to i64
  %raw.clean.int59 = and i64 %raw.int58, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  store i64 0, ptr %raw.clean.ptr60, align 8
  %var.load61 = load ptr, ptr %var.buf, align 8
  %var.load62 = load ptr, ptr %var.fs, align 8
  %var.load63 = load ptr, ptr %var.act, align 8
  %var.load64 = load ptr, ptr %var.st, align 8
  %var.load65 = load i64, ptr %var.es, align 8
  %var.load66 = load i64, ptr %var.cap, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load61, ptr %rec.fld, align 8
  %rec.fld67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load62, ptr %rec.fld67, align 8
  %rec.fld68 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load63, ptr %rec.fld68, align 8
  %rec.fld69 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.load64, ptr %rec.fld69, align 8
  %rec.fld70 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load65, ptr %rec.fld70, align 8
  %rec.fld71 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load66, ptr %rec.fld71, align 8
  ret ptr %rec.alloc
}

define i64 @"mem::pool_count"(ptr %0) #0 {
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load
}

define i64 @"mem::pool_capacity"(ptr %0) #0 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define { i1, i64 } @"mem::pool_alloc"(ptr %0) #0 {
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.top, align 8
  %var.load1 = load i64, ptr %var.top, align 8
  %cmptmp = icmp eq i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load2, 1
  store i64 %subtmp, ptr %var.top_next, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 3
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load i64, ptr %var.top_next, align 8
  %raw.int7 = ptrtoint ptr %fld.load5 to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  store i64 %var.load6, ptr %raw.clean.ptr9, align 8
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 1
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %var.load13 = load i64, ptr %var.top_next, align 8
  %multmp = mul i64 %var.load13, 8
  %ptr.int.l = ptrtoint ptr %fld.load12 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int14 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int15 = and i64 %raw.int14, 281474976710655
  %raw.clean.ptr16 = inttoptr i64 %raw.clean.int15 to ptr
  %raw.load17 = load volatile i64, ptr %raw.clean.ptr16, align 8
  store i64 %raw.load17, ptr %var.idx, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 2
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %var.load21 = load i64, ptr %var.idx, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load20 to i64
  %addtmp23 = add i64 %ptr.int.l22, %var.load21
  %ptr.res24 = inttoptr i64 %addtmp23 to ptr
  %raw.int25 = ptrtoint ptr %ptr.res24 to i64
  %raw.clean.int26 = and i64 %raw.int25, 281474976710655
  %raw.clean.ptr27 = inttoptr i64 %raw.clean.int26 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr27, i8 1, i64 1, i1 false)
  %var.load28 = load ptr, ptr %var.p, align 8
  %fld.gep29 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 3
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %ptr.int.l31 = ptrtoint ptr %fld.load30 to i64
  %addtmp32 = add i64 %ptr.int.l31, 8
  %ptr.res33 = inttoptr i64 %addtmp32 to ptr
  %raw.int34 = ptrtoint ptr %ptr.res33 to i64
  %raw.clean.int35 = and i64 %raw.int34, 281474976710655
  %raw.clean.ptr36 = inttoptr i64 %raw.clean.int35 to ptr
  %raw.load37 = load volatile i64, ptr %raw.clean.ptr36, align 8
  store i64 %raw.load37, ptr %var.cnt, align 8
  %var.load38 = load ptr, ptr %var.p, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load38, i32 0, i32 3
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %ptr.int.l41 = ptrtoint ptr %fld.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 8
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %var.load44 = load i64, ptr %var.cnt, align 8
  %addtmp45 = add i64 %var.load44, 1
  %raw.int46 = ptrtoint ptr %ptr.res43 to i64
  %raw.clean.int47 = and i64 %raw.int46, 281474976710655
  %raw.clean.ptr48 = inttoptr i64 %raw.clean.int47 to ptr
  store i64 %addtmp45, ptr %raw.clean.ptr48, align 8
  %var.load49 = load ptr, ptr %var.p, align 8
  %fld.gep50 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %var.load52 = load i64, ptr %var.idx, align 8
  %var.load53 = load ptr, ptr %var.p, align 8
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 4
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %multmp56 = mul i64 %var.load52, %fld.load55
  %ptr.int.l57 = ptrtoint ptr %fld.load51 to i64
  %addtmp58 = add i64 %ptr.int.l57, %multmp56
  %ptr.res59 = inttoptr i64 %addtmp58 to ptr
  %p.to.i64 = ptrtoint ptr %ptr.res59 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define i1 @"mem::pool_free"(ptr %0, ptr %1) #0 {
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
  %cmptmp = icmp sge i64 %var.load3, 0
  br i1 %cmptmp, label %and.34.then, label %and.34.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit11

choice.case:                                      ; preds = %and.34.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.34.exit
  br label %choice.exit

and.34.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 5
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.p, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 4
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %multmp = mul i64 %fld.load6, %fld.load9
  %cmptmp10 = icmp slt i64 %var.load3, %multmp
  br label %and.34.exit

and.34.else:                                      ; preds = %entry
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %and.34.then
  %and.34.phi = phi i1 [ %cmptmp10, %and.34.then ], [ %cmptmp, %and.34.else ]
  br i1 %and.34.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  ret i1 false

choice.exit11:                                    ; preds = %ret.dead, %choice.exit
  %var.load12 = load i64, ptr %var.off, align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %div.is.zero = icmp eq i64 %fld.load15, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

div.notzero:                                      ; preds = %abort.dead, %choice.exit11
  %div.is.min = icmp eq i64 %var.load12, -9223372036854775808
  %div.is.negone = icmp eq i64 %fld.load15, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit11
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.notzero

div.ok:                                           ; preds = %abort.dead16, %div.notzero
  %divtmp = sdiv i64 %var.load12, %fld.load15
  store i64 %divtmp, ptr %var.idx, align 8
  %var.load17 = load i64, ptr %var.off, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 4
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %div.is.zero21 = icmp eq i64 %fld.load20, 0
  br i1 %div.is.zero21, label %div.zero_abort23, label %div.notzero22

div.ovf_abort:                                    ; preds = %div.notzero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %div.ok

div.notzero22:                                    ; preds = %abort.dead24, %div.ok
  %div.is.min25 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.negone26 = icmp eq i64 %fld.load20, -1
  %div.is.ovf27 = and i1 %div.is.min25, %div.is.negone26
  br i1 %div.is.ovf27, label %div.ovf_abort29, label %div.ok28

div.zero_abort23:                                 ; preds = %div.ok
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %div.notzero22

div.ok28:                                         ; preds = %abort.dead30, %div.notzero22
  %modtmp = srem i64 %var.load17, %fld.load20
  %cmptmp31 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

div.ovf_abort29:                                  ; preds = %div.notzero22
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %div.ok28

choice.then32:                                    ; preds = %div.ok28
  ret i1 false

choice.exit33:                                    ; preds = %ret.dead34, %div.ok28
  %var.load35 = load ptr, ptr %var.p, align 8
  %fld.gep36 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load35, i32 0, i32 2
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %var.load38 = load i64, ptr %var.idx, align 8
  %ptr.int.l = ptrtoint ptr %fld.load37 to i64
  %addtmp = add i64 %ptr.int.l, %var.load38
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load39 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load39 to i64
  %cmptmp40 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp40, label %choice.then41, label %choice.exit42

ret.dead34:                                       ; No predecessors!
  br label %choice.exit33

choice.then41:                                    ; preds = %choice.exit33
  ret i1 false

choice.exit42:                                    ; preds = %ret.dead43, %choice.exit33
  %var.load44 = load ptr, ptr %var.p, align 8
  %fld.gep45 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load44, i32 0, i32 2
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %var.load47 = load i64, ptr %var.idx, align 8
  %ptr.int.l48 = ptrtoint ptr %fld.load46 to i64
  %addtmp49 = add i64 %ptr.int.l48, %var.load47
  %ptr.res50 = inttoptr i64 %addtmp49 to ptr
  %raw.int51 = ptrtoint ptr %ptr.res50 to i64
  %raw.clean.int52 = and i64 %raw.int51, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr53, i8 0, i64 1, i1 false)
  %var.load54 = load ptr, ptr %var.p, align 8
  %fld.gep55 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 3
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %raw.int57 = ptrtoint ptr %fld.load56 to i64
  %raw.clean.int58 = and i64 %raw.int57, 281474976710655
  %raw.clean.ptr59 = inttoptr i64 %raw.clean.int58 to ptr
  %raw.load60 = load volatile i64, ptr %raw.clean.ptr59, align 8
  store i64 %raw.load60, ptr %var.top, align 8
  %var.load61 = load ptr, ptr %var.p, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %var.load64 = load i64, ptr %var.top, align 8
  %multmp65 = mul i64 %var.load64, 8
  %ptr.int.l66 = ptrtoint ptr %fld.load63 to i64
  %addtmp67 = add i64 %ptr.int.l66, %multmp65
  %ptr.res68 = inttoptr i64 %addtmp67 to ptr
  %var.load69 = load i64, ptr %var.idx, align 8
  %raw.int70 = ptrtoint ptr %ptr.res68 to i64
  %raw.clean.int71 = and i64 %raw.int70, 281474976710655
  %raw.clean.ptr72 = inttoptr i64 %raw.clean.int71 to ptr
  store i64 %var.load69, ptr %raw.clean.ptr72, align 8
  %var.load73 = load ptr, ptr %var.p, align 8
  %fld.gep74 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 3
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %var.load76 = load i64, ptr %var.top, align 8
  %addtmp77 = add i64 %var.load76, 1
  %raw.int78 = ptrtoint ptr %fld.load75 to i64
  %raw.clean.int79 = and i64 %raw.int78, 281474976710655
  %raw.clean.ptr80 = inttoptr i64 %raw.clean.int79 to ptr
  store i64 %addtmp77, ptr %raw.clean.ptr80, align 8
  %var.load81 = load ptr, ptr %var.p, align 8
  %fld.gep82 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load81, i32 0, i32 3
  %fld.load83 = load ptr, ptr %fld.gep82, align 8
  %ptr.int.l84 = ptrtoint ptr %fld.load83 to i64
  %addtmp85 = add i64 %ptr.int.l84, 8
  %ptr.res86 = inttoptr i64 %addtmp85 to ptr
  %raw.int87 = ptrtoint ptr %ptr.res86 to i64
  %raw.clean.int88 = and i64 %raw.int87, 281474976710655
  %raw.clean.ptr89 = inttoptr i64 %raw.clean.int88 to ptr
  %raw.load90 = load volatile i64, ptr %raw.clean.ptr89, align 8
  store i64 %raw.load90, ptr %var.cnt, align 8
  %var.load91 = load ptr, ptr %var.p, align 8
  %fld.gep92 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load91, i32 0, i32 3
  %fld.load93 = load ptr, ptr %fld.gep92, align 8
  %ptr.int.l94 = ptrtoint ptr %fld.load93 to i64
  %addtmp95 = add i64 %ptr.int.l94, 8
  %ptr.res96 = inttoptr i64 %addtmp95 to ptr
  %var.load97 = load i64, ptr %var.cnt, align 8
  %subtmp98 = sub i64 %var.load97, 1
  %raw.int99 = ptrtoint ptr %ptr.res96 to i64
  %raw.clean.int100 = and i64 %raw.int99, 281474976710655
  %raw.clean.ptr101 = inttoptr i64 %raw.clean.int100 to ptr
  store i64 %subtmp98, ptr %raw.clean.ptr101, align 8
  ret i1 true

ret.dead43:                                       ; No predecessors!
  br label %choice.exit42
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #8 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #8 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"mem::pool_destroy"(ptr %0) #0 {
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

define void @"mem::pool_for_each"(ptr %0, ptr %1) #0 {
entry:
  %var.is_act = alloca i8, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.f, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 0, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.header.36:                                   ; preds = %loop.latch.36, %entry
  %counter.load = load i64, ptr %loop.idx.36, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.nat.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.36, align 8
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
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

loop.exit.nat.36:                                 ; preds = %loop.header.36
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %loop.exit.nat.36
  ret void

addr_ok:                                          ; preds = %tag.slow_check, %loop.body.36
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load5 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load5 to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %loop.body.36
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %clo.load = load ptr, ptr %var.f, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %var.load9, %fld.load12
  %ptr.int.l13 = ptrtoint ptr %fld.load8 to i64
  %addtmp14 = add i64 %ptr.int.l13, %multmp
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

choice.exit:                                      ; preds = %clo.merge, %addr_ok
  br label %loop.latch.36

clo.cap:                                          ; preds = %choice.then
  call void %clo.fn.load(ptr %clo.env.load, ptr %ptr.res15)
  br label %clo.merge

clo.plain:                                        ; preds = %choice.then
  call void %clo.fn.load(ptr %ptr.res15)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  br label %choice.exit
}

define { i1, i64 } @"mem::index_byte"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.r = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.byte = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.byte, align 8
  store i64 %2, ptr %var.len, align 8
  %var.load = load i64, ptr %var.len, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load i64, ptr %var.byte, align 8
  %bandtmp = and i64 %var.load2, 255
  %var.load3 = load i64, ptr %var.len, align 8
  %call.res = call ptr @memchr(ptr %addr.ffi.clean, i64 %bandtmp, i64 %var.load3)
  store ptr %call.res, ptr %var.r, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %cmptmp5 = icmp eq i64 %ptr.int.l, 0
  br i1 %cmptmp5, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  br label %choice.exit7

choice.else:                                      ; preds = %choice.exit
  %var.load8 = load ptr, ptr %var.r, align 8
  %var.load9 = load ptr, ptr %var.p, align 8
  %ptr.int.l10 = ptrtoint ptr %var.load8 to i64
  %ptr.int.r = ptrtoint ptr %var.load9 to i64
  %subtmp = sub i64 %ptr.int.l10, %ptr.int.r
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.then6
  %choice.res = phi { i1, i64 } [ zeroinitializer, %choice.then6 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noinline "nounwind" }
attributes #8 = { cold noinline noreturn "nounwind" }
