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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %tag.immortal8 = icmp eq i64 %addr.tag6, 0
  %active.gen9 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current10 = icmp eq i64 %addr.tag6, %active.gen9
  %tag.fast.ok11 = or i1 %tag.immortal8, %tag.current10
  br i1 %tag.fast.ok11, label %addr_ok7, label %tag.slow_check12

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok7:                                         ; preds = %tag.slow_check12, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.slow_check12:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag6)
  br label %addr_ok7
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #5 {
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
define internal void @dva_abort_stale_addr_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %tag.immortal8 = icmp eq i64 %addr.tag6, 0
  %active.gen9 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current10 = icmp eq i64 %addr.tag6, %active.gen9
  %tag.fast.ok11 = or i1 %tag.immortal8, %tag.current10
  br i1 %tag.fast.ok11, label %addr_ok7, label %tag.slow_check12

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok7:                                         ; preds = %tag.slow_check12, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.slow_check12:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag6)
  br label %addr_ok7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load1, i1 false)
  ret ptr %raw.clean.ptr

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %coerce.trunc = trunc i64 %var.load1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok
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
  %rec.salloc = alloca { ptr, i64 }, align 8
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
  %addr.ffi.int = ptrtoint ptr %var.load2 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load3 = load i64, ptr %var.sz, align 8
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %var.load3)
  %var.load4 = load ptr, ptr %var.raw, align 8
  %var.load5 = load i64, ptr %var.sz, align 8
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 0
  store ptr %var.load4, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 %var.load5, ptr %rec.fld6, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.salloc, align 8
  ret { ptr, i64 } %ret.pack
}

define { ptr, i64 } @"mem::arena_default"() #0 {
entry:
  %ret.ub.salloc = alloca { ptr, i64 }, align 8
  %call.res = call { ptr, i64 } @"mem::arena"(i64 67108864)
  store { ptr, i64 } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { ptr, i64 }, ptr %ret.ub.salloc, align 8
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
  call void @"mem::release"(ptr %var.load)
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
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
  %addr.tag10 = lshr i64 %raw.int7, 48
  %tag.immortal12 = icmp eq i64 %addr.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %addr.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %addr_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok11:                                        ; preds = %tag.slow_check16, %addr_ok
  %raw.load17 = load volatile i64, ptr %raw.clean.ptr9, align 8
  store i64 %raw.load17, ptr %var.off, align 8
  %var.load18 = load i64, ptr %var.num_chunks, align 8
  %cmptmp = icmp sgt i64 %var.load18, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check16:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag10)
  br label %addr_ok11

choice.then:                                      ; preds = %addr_ok11
  %var.load19 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load19, 1
  %var.load20 = load ptr, ptr %var.a, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %multmp = mul i64 %subtmp, %fld.load22
  %var.load23 = load i64, ptr %var.off, align 8
  %addtmp24 = add i64 %multmp, %var.load23
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok11
  %var.load25 = load i64, ptr %var.off, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp24, %choice.then ], [ %var.load25, %choice.else ]
  store i64 %choice.res, ptr %var.allocated, align 8
  %var.load26 = load i64, ptr %var.allocated, align 8
  %var.load27 = load i64, ptr %var.num_chunks, align 8
  %var.load28 = load ptr, ptr %var.a, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 0
  store i64 %var.load26, ptr %rec.fld, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 %var.load27, ptr %rec.fld31, align 8
  %rec.fld32 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 2
  store i64 %fld.load30, ptr %rec.fld32, align 8
  %ret.pack = load { i64, i64, i64 }, ptr %rec.salloc, align 8
  ret { i64, i64, i64 } %ret.pack
}

define { ptr, i64 } @"mem::global_arena"() #0 {
entry:
  %rec.salloc = alloca { ptr, i64 }, align 8
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
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 0
  store ptr %var.load6, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 %var.load7, ptr %rec.fld8, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.salloc, align 8
  ret { ptr, i64 } %ret.pack
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

choice.exit:                                      ; preds = %addr_ok, %choice.then
  %choice.res = phi i64 [ %fld.load3, %choice.then ], [ %raw.load, %addr_ok ]
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
  %addr.tag13 = lshr i64 %raw.int10, 48
  %tag.immortal15 = icmp eq i64 %addr.tag13, 0
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current17 = icmp eq i64 %addr.tag13, %active.gen16
  %tag.fast.ok18 = or i1 %tag.immortal15, %tag.current17
  br i1 %tag.fast.ok18, label %addr_ok14, label %tag.slow_check19

addr_ok:                                          ; preds = %tag.slow_check, %choice.else
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

tag.slow_check:                                   ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok14:                                        ; preds = %tag.slow_check19, %choice.exit
  %raw.load20 = load volatile i64, ptr %raw.clean.ptr12, align 8
  store i64 %raw.load20, ptr %var.num_chunks, align 8
  %var.load21 = load ptr, ptr %var.a, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %ptr.int.l24 = ptrtoint ptr %fld.load23 to i64
  %addtmp25 = add i64 %ptr.int.l24, 16
  %ptr.res26 = inttoptr i64 %addtmp25 to ptr
  %raw.int27 = ptrtoint ptr %ptr.res26 to i64
  %raw.clean.int28 = and i64 %raw.int27, 281474976710655
  %raw.clean.ptr29 = inttoptr i64 %raw.clean.int28 to ptr
  %addr.tag30 = lshr i64 %raw.int27, 48
  %tag.immortal32 = icmp eq i64 %addr.tag30, 0
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current34 = icmp eq i64 %addr.tag30, %active.gen33
  %tag.fast.ok35 = or i1 %tag.immortal32, %tag.current34
  br i1 %tag.fast.ok35, label %addr_ok31, label %tag.slow_check36

tag.slow_check19:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag13)
  br label %addr_ok14

addr_ok31:                                        ; preds = %tag.slow_check36, %addr_ok14
  %raw.load37 = load volatile i64, ptr %raw.clean.ptr29, align 8
  store i64 %raw.load37, ptr %var.off, align 8
  %var.load38 = load i64, ptr %var.num_chunks, align 8
  %cmptmp39 = icmp sgt i64 %var.load38, 1
  br i1 %cmptmp39, label %choice.then40, label %choice.else41

tag.slow_check36:                                 ; preds = %addr_ok14
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag30)
  br label %addr_ok31

choice.then40:                                    ; preds = %addr_ok31
  %var.load43 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load43, 1
  %var.load44 = load i64, ptr %var.cap, align 8
  %multmp = mul i64 %subtmp, %var.load44
  %var.load45 = load i64, ptr %var.off, align 8
  %addtmp46 = add i64 %multmp, %var.load45
  br label %choice.exit42

choice.else41:                                    ; preds = %addr_ok31
  %var.load47 = load i64, ptr %var.off, align 8
  br label %choice.exit42

choice.exit42:                                    ; preds = %choice.else41, %choice.then40
  %choice.res48 = phi i64 [ %addtmp46, %choice.then40 ], [ %var.load47, %choice.else41 ]
  store i64 %choice.res48, ptr %var.allocated, align 8
  %var.load49 = load ptr, ptr %var.a, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i64 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %ptr.int.l52 = ptrtoint ptr %fld.load51 to i64
  %addtmp53 = add i64 %ptr.int.l52, 131104
  %ptr.res54 = inttoptr i64 %addtmp53 to ptr
  %raw.int55 = ptrtoint ptr %ptr.res54 to i64
  %raw.clean.int56 = and i64 %raw.int55, 281474976710655
  %raw.clean.ptr57 = inttoptr i64 %raw.clean.int56 to ptr
  %addr.tag58 = lshr i64 %raw.int55, 48
  %tag.immortal60 = icmp eq i64 %addr.tag58, 0
  %active.gen61 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current62 = icmp eq i64 %addr.tag58, %active.gen61
  %tag.fast.ok63 = or i1 %tag.immortal60, %tag.current62
  br i1 %tag.fast.ok63, label %addr_ok59, label %tag.slow_check64

addr_ok59:                                        ; preds = %tag.slow_check64, %choice.exit42
  %raw.load65 = load volatile i64, ptr %raw.clean.ptr57, align 8
  store i64 %raw.load65, ptr %var.depth, align 8
  %var.load66 = load ptr, ptr %var.a, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64 }, ptr %var.load66, i32 0, i32 0
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %ptr.int.l69 = ptrtoint ptr %fld.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 131112
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %raw.int72 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int73 = and i64 %raw.int72, 281474976710655
  %raw.clean.ptr74 = inttoptr i64 %raw.clean.int73 to ptr
  %addr.tag75 = lshr i64 %raw.int72, 48
  %tag.immortal77 = icmp eq i64 %addr.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %addr.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %addr_ok76, label %tag.slow_check81

tag.slow_check64:                                 ; preds = %choice.exit42
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag58)
  br label %addr_ok59

addr_ok76:                                        ; preds = %tag.slow_check81, %addr_ok59
  %raw.load82 = load volatile i64, ptr %raw.clean.ptr74, align 8
  store i64 %raw.load82, ptr %var.next_gen, align 8
  %var.load83 = load i64, ptr %var.next_gen, align 8
  %cmptmp84 = icmp sgt i64 %var.load83, 0
  br i1 %cmptmp84, label %choice.then85, label %choice.else86

tag.slow_check81:                                 ; preds = %addr_ok59
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag75)
  br label %addr_ok76

choice.then85:                                    ; preds = %addr_ok76
  %var.load88 = load i64, ptr %var.next_gen, align 8
  br label %choice.exit87

choice.else86:                                    ; preds = %addr_ok76
  br label %choice.exit87

choice.exit87:                                    ; preds = %choice.else86, %choice.then85
  %choice.res89 = phi i64 [ %var.load88, %choice.then85 ], [ 1, %choice.else86 ]
  store i64 %choice.res89, ptr %var.gen, align 8
  %var.load90 = load ptr, ptr %var.a, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64 }, ptr %var.load90, i32 0, i32 0
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %ptr.int.l93 = ptrtoint ptr %fld.load92 to i64
  %addtmp94 = add i64 %ptr.int.l93, 131120
  %ptr.res95 = inttoptr i64 %addtmp94 to ptr
  %raw.int96 = ptrtoint ptr %ptr.res95 to i64
  %raw.clean.int97 = and i64 %raw.int96, 281474976710655
  %raw.clean.ptr98 = inttoptr i64 %raw.clean.int97 to ptr
  %addr.tag99 = lshr i64 %raw.int96, 48
  %tag.immortal101 = icmp eq i64 %addr.tag99, 0
  %active.gen102 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current103 = icmp eq i64 %addr.tag99, %active.gen102
  %tag.fast.ok104 = or i1 %tag.immortal101, %tag.current103
  br i1 %tag.fast.ok104, label %addr_ok100, label %tag.slow_check105

addr_ok100:                                       ; preds = %tag.slow_check105, %choice.exit87
  %raw.load106 = load volatile i64, ptr %raw.clean.ptr98, align 8
  store i64 %raw.load106, ptr %var.resets, align 8
  %var.load107 = load ptr, ptr %var.a, align 8
  %fld.gep108 = getelementptr inbounds { ptr, i64 }, ptr %var.load107, i32 0, i32 0
  %fld.load109 = load ptr, ptr %fld.gep108, align 8
  %var.load110 = load i64, ptr %var.gen, align 8
  %var.load111 = load i64, ptr %var.depth, align 8
  %var.load112 = load i64, ptr %var.resets, align 8
  %var.load113 = load i64, ptr %var.allocated, align 8
  %var.load114 = load i64, ptr %var.num_chunks, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load109, ptr %rec.fld, align 8
  %rec.fld115 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load110, ptr %rec.fld115, align 8
  %rec.fld116 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load111, ptr %rec.fld116, align 8
  %rec.fld117 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load112, ptr %rec.fld117, align 8
  %rec.fld118 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load113, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load114, ptr %rec.fld119, align 8
  ret ptr %rec.alloc

tag.slow_check105:                                ; preds = %choice.exit87
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag99)
  br label %addr_ok100
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

choice.exit12:                                    ; preds = %addr_ok, %choice.then11
  %choice.res = phi i64 [ %fld.load15, %choice.then11 ], [ %raw.load, %addr_ok ]
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
  %addr.tag26 = lshr i64 %raw.int23, 48
  %tag.immortal28 = icmp eq i64 %addr.tag26, 0
  %active.gen29 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current30 = icmp eq i64 %addr.tag26, %active.gen29
  %tag.fast.ok31 = or i1 %tag.immortal28, %tag.current30
  br i1 %tag.fast.ok31, label %addr_ok27, label %tag.slow_check32

addr_ok:                                          ; preds = %tag.slow_check, %choice.else
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit12

tag.slow_check:                                   ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok27:                                        ; preds = %tag.slow_check32, %choice.exit12
  %raw.load33 = load volatile i64, ptr %raw.clean.ptr25, align 8
  store i64 %raw.load33, ptr %var.num_chunks, align 8
  %var.load34 = load ptr, ptr %var.a, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %ptr.int.l37 = ptrtoint ptr %fld.load36 to i64
  %addtmp38 = add i64 %ptr.int.l37, 16
  %ptr.res39 = inttoptr i64 %addtmp38 to ptr
  %raw.int40 = ptrtoint ptr %ptr.res39 to i64
  %raw.clean.int41 = and i64 %raw.int40, 281474976710655
  %raw.clean.ptr42 = inttoptr i64 %raw.clean.int41 to ptr
  %addr.tag43 = lshr i64 %raw.int40, 48
  %tag.immortal45 = icmp eq i64 %addr.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %addr.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %addr_ok44, label %tag.slow_check49

tag.slow_check32:                                 ; preds = %choice.exit12
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag26)
  br label %addr_ok27

addr_ok44:                                        ; preds = %tag.slow_check49, %addr_ok27
  %raw.load50 = load volatile i64, ptr %raw.clean.ptr42, align 8
  store i64 %raw.load50, ptr %var.off, align 8
  %var.load51 = load i64, ptr %var.num_chunks, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

tag.slow_check49:                                 ; preds = %addr_ok27
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag43)
  br label %addr_ok44

loop.header.29:                                   ; preds = %loop.latch.29, %addr_ok44
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load51
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load52 = load ptr, ptr %var.a, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %ptr.int.l55 = ptrtoint ptr %fld.load54 to i64
  %addtmp56 = add i64 %ptr.int.l55, 24
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %var.load58 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load58, 8
  %ptr.int.l59 = ptrtoint ptr %ptr.res57 to i64
  %addtmp60 = add i64 %ptr.int.l59, %multmp
  %ptr.res61 = inttoptr i64 %addtmp60 to ptr
  %raw.int62 = ptrtoint ptr %ptr.res61 to i64
  %raw.clean.int63 = and i64 %raw.int62, 281474976710655
  %raw.clean.ptr64 = inttoptr i64 %raw.clean.int63 to ptr
  %addr.tag65 = lshr i64 %raw.int62, 48
  %tag.immortal67 = icmp eq i64 %addr.tag65, 0
  %active.gen68 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current69 = icmp eq i64 %addr.tag65, %active.gen68
  %tag.fast.ok70 = or i1 %tag.immortal67, %tag.current69
  br i1 %tag.fast.ok70, label %addr_ok66, label %tag.slow_check71

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit92
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  ret i1 false

addr_ok66:                                        ; preds = %tag.slow_check71, %loop.body.29
  %raw.load72 = load volatile i64, ptr %raw.clean.ptr64, align 8
  %bandtmp73 = and i64 %raw.load72, 281474976710655
  store i64 %bandtmp73, ptr %var.c_base, align 8
  %var.load74 = load i64, ptr %var.i, align 8
  %var.load75 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load75, 1
  %cmptmp76 = icmp eq i64 %var.load74, %subtmp
  br i1 %cmptmp76, label %choice.then77, label %choice.else78

tag.slow_check71:                                 ; preds = %loop.body.29
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag65)
  br label %addr_ok66

choice.then77:                                    ; preds = %addr_ok66
  %var.load80 = load i64, ptr %var.off, align 8
  br label %choice.exit79

choice.else78:                                    ; preds = %addr_ok66
  %var.load81 = load i64, ptr %var.cap, align 8
  br label %choice.exit79

choice.exit79:                                    ; preds = %choice.else78, %choice.then77
  %choice.res82 = phi i64 [ %var.load80, %choice.then77 ], [ %var.load81, %choice.else78 ]
  store i64 %choice.res82, ptr %var.c_limit, align 8
  %var.load83 = load i64, ptr %var.raw_addr, align 8
  %var.load84 = load i64, ptr %var.c_base, align 8
  %cmptmp85 = icmp sge i64 %var.load83, %var.load84
  br i1 %cmptmp85, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %choice.exit79
  %var.load86 = load i64, ptr %var.raw_addr, align 8
  %var.load87 = load i64, ptr %var.c_base, align 8
  %var.load88 = load i64, ptr %var.c_limit, align 8
  %addtmp89 = add i64 %var.load87, %var.load88
  %cmptmp90 = icmp slt i64 %var.load86, %addtmp89
  br label %and.30.exit

and.30.else:                                      ; preds = %choice.exit79
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %cmptmp90, %and.30.then ], [ %cmptmp85, %and.30.else ]
  br i1 %and.30.phi, label %choice.then91, label %choice.exit92

choice.then91:                                    ; preds = %and.30.exit
  ret i1 true

choice.exit92:                                    ; preds = %ret.dead93, %and.30.exit
  br label %loop.latch.29

ret.dead93:                                       ; No predecessors!
  br label %choice.exit92
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %choice.exit6
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load36, i1 false)
  %var.load37 = load i64, ptr %var.cap, align 8
  store i64 0, ptr %loop.idx.32, align 8
  br label %loop.header.32

tag.slow_check:                                   ; preds = %choice.exit6
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

loop.header.32:                                   ; preds = %loop.latch.32, %addr_ok
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
  %addr.tag48 = lshr i64 %raw.int45, 48
  %tag.immortal50 = icmp eq i64 %addr.tag48, 0
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current52 = icmp eq i64 %addr.tag48, %active.gen51
  %tag.fast.ok53 = or i1 %tag.immortal50, %tag.current52
  br i1 %tag.fast.ok53, label %addr_ok49, label %tag.slow_check54

loop.exit.nat.32:                                 ; preds = %loop.header.32
  br label %loop.exit.32

loop.latch.32:                                    ; preds = %addr_ok49
  %step.val = load i64, ptr %loop.step.32, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.exit.32:                                     ; preds = %loop.exit.nat.32
  %var.load55 = load i64, ptr %var.cap, align 8
  store i64 %var.load55, ptr %var.st_cap, align 8
  %var.load56 = load ptr, ptr %var.st, align 8
  %var.load57 = load i64, ptr %var.st_cap, align 8
  %raw.int58 = ptrtoint ptr %var.load56 to i64
  %raw.clean.int59 = and i64 %raw.int58, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  %addr.tag61 = lshr i64 %raw.int58, 48
  %tag.immortal63 = icmp eq i64 %addr.tag61, 0
  %active.gen64 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current65 = icmp eq i64 %addr.tag61, %active.gen64
  %tag.fast.ok66 = or i1 %tag.immortal63, %tag.current65
  br i1 %tag.fast.ok66, label %addr_ok62, label %tag.slow_check67

addr_ok49:                                        ; preds = %tag.slow_check54, %loop.body.32
  store i64 %var.load44, ptr %raw.clean.ptr47, align 8
  br label %loop.latch.32

tag.slow_check54:                                 ; preds = %loop.body.32
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag48)
  br label %addr_ok49

addr_ok62:                                        ; preds = %tag.slow_check67, %loop.exit.32
  store i64 %var.load57, ptr %raw.clean.ptr60, align 8
  %var.load68 = load ptr, ptr %var.st, align 8
  %ptr.int.l69 = ptrtoint ptr %var.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 8
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %raw.int72 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int73 = and i64 %raw.int72, 281474976710655
  %raw.clean.ptr74 = inttoptr i64 %raw.clean.int73 to ptr
  %addr.tag75 = lshr i64 %raw.int72, 48
  %tag.immortal77 = icmp eq i64 %addr.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %addr.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %addr_ok76, label %tag.slow_check81

tag.slow_check67:                                 ; preds = %loop.exit.32
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag61)
  br label %addr_ok62

addr_ok76:                                        ; preds = %tag.slow_check81, %addr_ok62
  store i64 0, ptr %raw.clean.ptr74, align 8
  %var.load82 = load ptr, ptr %var.buf, align 8
  %var.load83 = load ptr, ptr %var.fs, align 8
  %var.load84 = load ptr, ptr %var.act, align 8
  %var.load85 = load ptr, ptr %var.st, align 8
  %var.load86 = load i64, ptr %var.es, align 8
  %var.load87 = load i64, ptr %var.cap, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load82, ptr %rec.fld, align 8
  %rec.fld88 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load83, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load84, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.load85, ptr %rec.fld90, align 8
  %rec.fld91 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load86, ptr %rec.fld91, align 8
  %rec.fld92 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load87, ptr %rec.fld92, align 8
  ret ptr %rec.alloc

tag.slow_check81:                                 ; preds = %addr_ok62
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag75)
  br label %addr_ok76
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.top, align 8
  %var.load1 = load i64, ptr %var.top, align 8
  %cmptmp = icmp eq i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %addr_ok
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
  %addr.tag10 = lshr i64 %raw.int7, 48
  %tag.immortal12 = icmp eq i64 %addr.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %addr.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %addr_ok11, label %tag.slow_check16

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok11:                                        ; preds = %tag.slow_check16, %choice.exit
  store i64 %var.load6, ptr %raw.clean.ptr9, align 8
  %var.load17 = load ptr, ptr %var.p, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %var.load20 = load i64, ptr %var.top_next, align 8
  %multmp = mul i64 %var.load20, 8
  %ptr.int.l = ptrtoint ptr %fld.load19 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int21 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int22 = and i64 %raw.int21, 281474976710655
  %raw.clean.ptr23 = inttoptr i64 %raw.clean.int22 to ptr
  %addr.tag24 = lshr i64 %raw.int21, 48
  %tag.immortal26 = icmp eq i64 %addr.tag24, 0
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current28 = icmp eq i64 %addr.tag24, %active.gen27
  %tag.fast.ok29 = or i1 %tag.immortal26, %tag.current28
  br i1 %tag.fast.ok29, label %addr_ok25, label %tag.slow_check30

tag.slow_check16:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag10)
  br label %addr_ok11

addr_ok25:                                        ; preds = %tag.slow_check30, %addr_ok11
  %raw.load31 = load volatile i64, ptr %raw.clean.ptr23, align 8
  store i64 %raw.load31, ptr %var.idx, align 8
  %var.load32 = load ptr, ptr %var.p, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.idx, align 8
  %ptr.int.l36 = ptrtoint ptr %fld.load34 to i64
  %addtmp37 = add i64 %ptr.int.l36, %var.load35
  %ptr.res38 = inttoptr i64 %addtmp37 to ptr
  %raw.int39 = ptrtoint ptr %ptr.res38 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %tag.immortal44 = icmp eq i64 %addr.tag42, 0
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current46 = icmp eq i64 %addr.tag42, %active.gen45
  %tag.fast.ok47 = or i1 %tag.immortal44, %tag.current46
  br i1 %tag.fast.ok47, label %addr_ok43, label %tag.slow_check48

tag.slow_check30:                                 ; preds = %addr_ok11
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag24)
  br label %addr_ok25

addr_ok43:                                        ; preds = %tag.slow_check48, %addr_ok25
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr41, i8 1, i64 1, i1 false)
  %var.load49 = load ptr, ptr %var.p, align 8
  %fld.gep50 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 3
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %ptr.int.l52 = ptrtoint ptr %fld.load51 to i64
  %addtmp53 = add i64 %ptr.int.l52, 8
  %ptr.res54 = inttoptr i64 %addtmp53 to ptr
  %raw.int55 = ptrtoint ptr %ptr.res54 to i64
  %raw.clean.int56 = and i64 %raw.int55, 281474976710655
  %raw.clean.ptr57 = inttoptr i64 %raw.clean.int56 to ptr
  %addr.tag58 = lshr i64 %raw.int55, 48
  %tag.immortal60 = icmp eq i64 %addr.tag58, 0
  %active.gen61 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current62 = icmp eq i64 %addr.tag58, %active.gen61
  %tag.fast.ok63 = or i1 %tag.immortal60, %tag.current62
  br i1 %tag.fast.ok63, label %addr_ok59, label %tag.slow_check64

tag.slow_check48:                                 ; preds = %addr_ok25
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag42)
  br label %addr_ok43

addr_ok59:                                        ; preds = %tag.slow_check64, %addr_ok43
  %raw.load65 = load volatile i64, ptr %raw.clean.ptr57, align 8
  store i64 %raw.load65, ptr %var.cnt, align 8
  %var.load66 = load ptr, ptr %var.p, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load66, i32 0, i32 3
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %ptr.int.l69 = ptrtoint ptr %fld.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 8
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %var.load72 = load i64, ptr %var.cnt, align 8
  %addtmp73 = add i64 %var.load72, 1
  %raw.int74 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int75 = and i64 %raw.int74, 281474976710655
  %raw.clean.ptr76 = inttoptr i64 %raw.clean.int75 to ptr
  %addr.tag77 = lshr i64 %raw.int74, 48
  %tag.immortal79 = icmp eq i64 %addr.tag77, 0
  %active.gen80 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current81 = icmp eq i64 %addr.tag77, %active.gen80
  %tag.fast.ok82 = or i1 %tag.immortal79, %tag.current81
  br i1 %tag.fast.ok82, label %addr_ok78, label %tag.slow_check83

tag.slow_check64:                                 ; preds = %addr_ok43
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag58)
  br label %addr_ok59

addr_ok78:                                        ; preds = %tag.slow_check83, %addr_ok59
  store i64 %addtmp73, ptr %raw.clean.ptr76, align 8
  %var.load84 = load ptr, ptr %var.p, align 8
  %fld.gep85 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load84, i32 0, i32 0
  %fld.load86 = load ptr, ptr %fld.gep85, align 8
  %var.load87 = load i64, ptr %var.idx, align 8
  %var.load88 = load ptr, ptr %var.p, align 8
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load88, i32 0, i32 4
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %multmp91 = mul i64 %var.load87, %fld.load90
  %ptr.int.l92 = ptrtoint ptr %fld.load86 to i64
  %addtmp93 = add i64 %ptr.int.l92, %multmp91
  %ptr.res94 = inttoptr i64 %addtmp93 to ptr
  %p.to.i64 = ptrtoint ptr %ptr.res94 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

tag.slow_check83:                                 ; preds = %addr_ok59
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag77)
  br label %addr_ok78
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
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

div.not_zero:                                     ; preds = %abort.dead, %choice.exit11
  %div.is.min = icmp eq i64 %var.load12, -9223372036854775808
  %div.is.negone = icmp eq i64 %fld.load15, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit11
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.not_zero

div.ok:                                           ; preds = %abort.dead16, %div.not_zero
  %divtmp = sdiv i64 %var.load12, %fld.load15
  store i64 %divtmp, ptr %var.idx, align 8
  %var.load17 = load i64, ptr %var.off, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 4
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %div.is.zero21 = icmp eq i64 %fld.load20, 0
  br i1 %div.is.zero21, label %div.zero_abort23, label %div.not_zero22

div.ovf_abort:                                    ; preds = %div.not_zero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %div.ok

div.not_zero22:                                   ; preds = %abort.dead24, %div.ok
  %div.is.min25 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.negone26 = icmp eq i64 %fld.load20, -1
  %div.is.ovf27 = and i1 %div.is.min25, %div.is.negone26
  br i1 %div.is.ovf27, label %div.ovf_abort29, label %div.ok28

div.zero_abort23:                                 ; preds = %div.ok
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %div.not_zero22

div.ok28:                                         ; preds = %abort.dead30, %div.not_zero22
  %modtmp = srem i64 %var.load17, %fld.load20
  %cmptmp31 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

div.ovf_abort29:                                  ; preds = %div.not_zero22
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
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

ret.dead34:                                       ; No predecessors!
  br label %choice.exit33

addr_ok:                                          ; preds = %tag.slow_check, %choice.exit33
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load39 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load39 to i64
  %cmptmp40 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp40, label %choice.then41, label %choice.exit42

tag.slow_check:                                   ; preds = %choice.exit33
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then41:                                    ; preds = %addr_ok
  ret i1 false

choice.exit42:                                    ; preds = %ret.dead43, %addr_ok
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
  %addr.tag54 = lshr i64 %raw.int51, 48
  %tag.immortal56 = icmp eq i64 %addr.tag54, 0
  %active.gen57 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current58 = icmp eq i64 %addr.tag54, %active.gen57
  %tag.fast.ok59 = or i1 %tag.immortal56, %tag.current58
  br i1 %tag.fast.ok59, label %addr_ok55, label %tag.slow_check60

ret.dead43:                                       ; No predecessors!
  br label %choice.exit42

addr_ok55:                                        ; preds = %tag.slow_check60, %choice.exit42
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr53, i8 0, i64 1, i1 false)
  %var.load61 = load ptr, ptr %var.p, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 3
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %raw.int64 = ptrtoint ptr %fld.load63 to i64
  %raw.clean.int65 = and i64 %raw.int64, 281474976710655
  %raw.clean.ptr66 = inttoptr i64 %raw.clean.int65 to ptr
  %addr.tag67 = lshr i64 %raw.int64, 48
  %tag.immortal69 = icmp eq i64 %addr.tag67, 0
  %active.gen70 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current71 = icmp eq i64 %addr.tag67, %active.gen70
  %tag.fast.ok72 = or i1 %tag.immortal69, %tag.current71
  br i1 %tag.fast.ok72, label %addr_ok68, label %tag.slow_check73

tag.slow_check60:                                 ; preds = %choice.exit42
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag54)
  br label %addr_ok55

addr_ok68:                                        ; preds = %tag.slow_check73, %addr_ok55
  %raw.load74 = load volatile i64, ptr %raw.clean.ptr66, align 8
  store i64 %raw.load74, ptr %var.top, align 8
  %var.load75 = load ptr, ptr %var.p, align 8
  %fld.gep76 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load75, i32 0, i32 1
  %fld.load77 = load ptr, ptr %fld.gep76, align 8
  %var.load78 = load i64, ptr %var.top, align 8
  %multmp79 = mul i64 %var.load78, 8
  %ptr.int.l80 = ptrtoint ptr %fld.load77 to i64
  %addtmp81 = add i64 %ptr.int.l80, %multmp79
  %ptr.res82 = inttoptr i64 %addtmp81 to ptr
  %var.load83 = load i64, ptr %var.idx, align 8
  %raw.int84 = ptrtoint ptr %ptr.res82 to i64
  %raw.clean.int85 = and i64 %raw.int84, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  %addr.tag87 = lshr i64 %raw.int84, 48
  %tag.immortal89 = icmp eq i64 %addr.tag87, 0
  %active.gen90 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current91 = icmp eq i64 %addr.tag87, %active.gen90
  %tag.fast.ok92 = or i1 %tag.immortal89, %tag.current91
  br i1 %tag.fast.ok92, label %addr_ok88, label %tag.slow_check93

tag.slow_check73:                                 ; preds = %addr_ok55
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag67)
  br label %addr_ok68

addr_ok88:                                        ; preds = %tag.slow_check93, %addr_ok68
  store i64 %var.load83, ptr %raw.clean.ptr86, align 8
  %var.load94 = load ptr, ptr %var.p, align 8
  %fld.gep95 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load94, i32 0, i32 3
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %var.load97 = load i64, ptr %var.top, align 8
  %addtmp98 = add i64 %var.load97, 1
  %raw.int99 = ptrtoint ptr %fld.load96 to i64
  %raw.clean.int100 = and i64 %raw.int99, 281474976710655
  %raw.clean.ptr101 = inttoptr i64 %raw.clean.int100 to ptr
  %addr.tag102 = lshr i64 %raw.int99, 48
  %tag.immortal104 = icmp eq i64 %addr.tag102, 0
  %active.gen105 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current106 = icmp eq i64 %addr.tag102, %active.gen105
  %tag.fast.ok107 = or i1 %tag.immortal104, %tag.current106
  br i1 %tag.fast.ok107, label %addr_ok103, label %tag.slow_check108

tag.slow_check93:                                 ; preds = %addr_ok68
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag87)
  br label %addr_ok88

addr_ok103:                                       ; preds = %tag.slow_check108, %addr_ok88
  store i64 %addtmp98, ptr %raw.clean.ptr101, align 8
  %var.load109 = load ptr, ptr %var.p, align 8
  %fld.gep110 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load109, i32 0, i32 3
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %ptr.int.l112 = ptrtoint ptr %fld.load111 to i64
  %addtmp113 = add i64 %ptr.int.l112, 8
  %ptr.res114 = inttoptr i64 %addtmp113 to ptr
  %raw.int115 = ptrtoint ptr %ptr.res114 to i64
  %raw.clean.int116 = and i64 %raw.int115, 281474976710655
  %raw.clean.ptr117 = inttoptr i64 %raw.clean.int116 to ptr
  %addr.tag118 = lshr i64 %raw.int115, 48
  %tag.immortal120 = icmp eq i64 %addr.tag118, 0
  %active.gen121 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current122 = icmp eq i64 %addr.tag118, %active.gen121
  %tag.fast.ok123 = or i1 %tag.immortal120, %tag.current122
  br i1 %tag.fast.ok123, label %addr_ok119, label %tag.slow_check124

tag.slow_check108:                                ; preds = %addr_ok88
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag102)
  br label %addr_ok103

addr_ok119:                                       ; preds = %tag.slow_check124, %addr_ok103
  %raw.load125 = load volatile i64, ptr %raw.clean.ptr117, align 8
  store i64 %raw.load125, ptr %var.cnt, align 8
  %var.load126 = load ptr, ptr %var.p, align 8
  %fld.gep127 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load126, i32 0, i32 3
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %ptr.int.l129 = ptrtoint ptr %fld.load128 to i64
  %addtmp130 = add i64 %ptr.int.l129, 8
  %ptr.res131 = inttoptr i64 %addtmp130 to ptr
  %var.load132 = load i64, ptr %var.cnt, align 8
  %subtmp133 = sub i64 %var.load132, 1
  %raw.int134 = ptrtoint ptr %ptr.res131 to i64
  %raw.clean.int135 = and i64 %raw.int134, 281474976710655
  %raw.clean.ptr136 = inttoptr i64 %raw.clean.int135 to ptr
  %addr.tag137 = lshr i64 %raw.int134, 48
  %tag.immortal139 = icmp eq i64 %addr.tag137, 0
  %active.gen140 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current141 = icmp eq i64 %addr.tag137, %active.gen140
  %tag.fast.ok142 = or i1 %tag.immortal139, %tag.current141
  br i1 %tag.fast.ok142, label %addr_ok138, label %tag.slow_check143

tag.slow_check124:                                ; preds = %addr_ok103
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag118)
  br label %addr_ok119

addr_ok138:                                       ; preds = %tag.slow_check143, %addr_ok119
  store i64 %subtmp133, ptr %raw.clean.ptr136, align 8
  ret i1 true

tag.slow_check143:                                ; preds = %addr_ok119
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag137)
  br label %addr_ok138
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #6 {
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
attributes #5 = { cold noinline "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
