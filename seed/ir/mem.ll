; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
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

declare noalias ptr @dva_arena_alloc(ptr, i64) #0

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

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
declare void @exit(i32) #3

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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %tag.immortal8 = icmp eq i64 %addr.tag6, 0
  br i1 %tag.immortal8, label %addr_ok7, label %tag.gen_check9

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok7:                                         ; preds = %abort.dead16, %tag.slow_check10, %tag.gen_check9, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.gen_check9:                                   ; preds = %addr_ok
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok13 = icmp eq i64 %addr.tag6, %active.gen12
  br i1 %tag.fast.ok13, label %addr_ok7, label %tag.slow_check10

tag.slow_check10:                                 ; preds = %tag.gen_check9
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %addr.tag6)
  br i1 %tag.valid15, label %addr_ok7, label %tag.stale11

tag.stale11:                                      ; preds = %tag.slow_check10
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %addr_ok7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %tag.immortal8 = icmp eq i64 %addr.tag6, 0
  br i1 %tag.immortal8, label %addr_ok7, label %tag.gen_check9

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok7:                                         ; preds = %abort.dead16, %tag.slow_check10, %tag.gen_check9, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.gen_check9:                                   ; preds = %addr_ok
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok13 = icmp eq i64 %addr.tag6, %active.gen12
  br i1 %tag.fast.ok13, label %addr_ok7, label %tag.slow_check10

tag.slow_check10:                                 ; preds = %tag.gen_check9
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %addr.tag6)
  br i1 %tag.valid15, label %addr_ok7, label %tag.stale11

tag.stale11:                                      ; preds = %tag.slow_check10
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %addr_ok7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load1, i1 false)
  ret ptr %raw.clean.ptr

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %coerce.trunc = trunc i64 %var.load1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal12, label %addr_ok11, label %tag.gen_check13

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok11:                                        ; preds = %abort.dead20, %tag.slow_check14, %tag.gen_check13, %addr_ok
  %raw.load21 = load volatile i64, ptr %raw.clean.ptr9, align 8
  store i64 %raw.load21, ptr %var.off, align 8
  %var.load22 = load i64, ptr %var.num_chunks, align 8
  %cmptmp = icmp sgt i64 %var.load22, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check13:                                  ; preds = %addr_ok
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok17 = icmp eq i64 %addr.tag10, %active.gen16
  br i1 %tag.fast.ok17, label %addr_ok11, label %tag.slow_check14

tag.slow_check14:                                 ; preds = %tag.gen_check13
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %addr.tag10)
  br i1 %tag.valid19, label %addr_ok11, label %tag.stale15

tag.stale15:                                      ; preds = %tag.slow_check14
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %addr_ok11

choice.then:                                      ; preds = %addr_ok11
  %var.load23 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load23, 1
  %var.load24 = load ptr, ptr %var.a, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64 }, ptr %var.load24, i32 0, i32 1
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %multmp = mul i64 %subtmp, %fld.load26
  %var.load27 = load i64, ptr %var.off, align 8
  %addtmp28 = add i64 %multmp, %var.load27
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok11
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
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 0
  store i64 %var.load30, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 %var.load31, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.salloc, i32 0, i32 2
  store i64 %fld.load34, ptr %rec.fld36, align 8
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load4 = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

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
  br i1 %tag.immortal15, label %addr_ok14, label %tag.gen_check16

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.else
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

tag.gen_check:                                    ; preds = %choice.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok14:                                        ; preds = %abort.dead23, %tag.slow_check17, %tag.gen_check16, %choice.exit
  %raw.load24 = load volatile i64, ptr %raw.clean.ptr12, align 8
  store i64 %raw.load24, ptr %var.num_chunks, align 8
  %var.load25 = load ptr, ptr %var.a, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %ptr.int.l28 = ptrtoint ptr %fld.load27 to i64
  %addtmp29 = add i64 %ptr.int.l28, 16
  %ptr.res30 = inttoptr i64 %addtmp29 to ptr
  %raw.int31 = ptrtoint ptr %ptr.res30 to i64
  %raw.clean.int32 = and i64 %raw.int31, 281474976710655
  %raw.clean.ptr33 = inttoptr i64 %raw.clean.int32 to ptr
  %addr.tag34 = lshr i64 %raw.int31, 48
  %tag.immortal36 = icmp eq i64 %addr.tag34, 0
  br i1 %tag.immortal36, label %addr_ok35, label %tag.gen_check37

tag.gen_check16:                                  ; preds = %choice.exit
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok20 = icmp eq i64 %addr.tag13, %active.gen19
  br i1 %tag.fast.ok20, label %addr_ok14, label %tag.slow_check17

tag.slow_check17:                                 ; preds = %tag.gen_check16
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag13)
  br i1 %tag.valid22, label %addr_ok14, label %tag.stale18

tag.stale18:                                      ; preds = %tag.slow_check17
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %addr_ok14

addr_ok35:                                        ; preds = %abort.dead44, %tag.slow_check38, %tag.gen_check37, %addr_ok14
  %raw.load45 = load volatile i64, ptr %raw.clean.ptr33, align 8
  store i64 %raw.load45, ptr %var.off, align 8
  %var.load46 = load i64, ptr %var.num_chunks, align 8
  %cmptmp47 = icmp sgt i64 %var.load46, 1
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

tag.gen_check37:                                  ; preds = %addr_ok14
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok41 = icmp eq i64 %addr.tag34, %active.gen40
  br i1 %tag.fast.ok41, label %addr_ok35, label %tag.slow_check38

tag.slow_check38:                                 ; preds = %tag.gen_check37
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %addr.tag34)
  br i1 %tag.valid43, label %addr_ok35, label %tag.stale39

tag.stale39:                                      ; preds = %tag.slow_check38
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %addr_ok35

choice.then48:                                    ; preds = %addr_ok35
  %var.load51 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load51, 1
  %var.load52 = load i64, ptr %var.cap, align 8
  %multmp = mul i64 %subtmp, %var.load52
  %var.load53 = load i64, ptr %var.off, align 8
  %addtmp54 = add i64 %multmp, %var.load53
  br label %choice.exit50

choice.else49:                                    ; preds = %addr_ok35
  %var.load55 = load i64, ptr %var.off, align 8
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else49, %choice.then48
  %choice.res56 = phi i64 [ %addtmp54, %choice.then48 ], [ %var.load55, %choice.else49 ]
  store i64 %choice.res56, ptr %var.allocated, align 8
  %var.load57 = load ptr, ptr %var.a, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64 }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %ptr.int.l60 = ptrtoint ptr %fld.load59 to i64
  %addtmp61 = add i64 %ptr.int.l60, 131104
  %ptr.res62 = inttoptr i64 %addtmp61 to ptr
  %raw.int63 = ptrtoint ptr %ptr.res62 to i64
  %raw.clean.int64 = and i64 %raw.int63, 281474976710655
  %raw.clean.ptr65 = inttoptr i64 %raw.clean.int64 to ptr
  %addr.tag66 = lshr i64 %raw.int63, 48
  %tag.immortal68 = icmp eq i64 %addr.tag66, 0
  br i1 %tag.immortal68, label %addr_ok67, label %tag.gen_check69

addr_ok67:                                        ; preds = %abort.dead76, %tag.slow_check70, %tag.gen_check69, %choice.exit50
  %raw.load77 = load volatile i64, ptr %raw.clean.ptr65, align 8
  store i64 %raw.load77, ptr %var.depth, align 8
  %var.load78 = load ptr, ptr %var.a, align 8
  %fld.gep79 = getelementptr inbounds { ptr, i64 }, ptr %var.load78, i32 0, i32 0
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %ptr.int.l81 = ptrtoint ptr %fld.load80 to i64
  %addtmp82 = add i64 %ptr.int.l81, 131112
  %ptr.res83 = inttoptr i64 %addtmp82 to ptr
  %raw.int84 = ptrtoint ptr %ptr.res83 to i64
  %raw.clean.int85 = and i64 %raw.int84, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  %addr.tag87 = lshr i64 %raw.int84, 48
  %tag.immortal89 = icmp eq i64 %addr.tag87, 0
  br i1 %tag.immortal89, label %addr_ok88, label %tag.gen_check90

tag.gen_check69:                                  ; preds = %choice.exit50
  %active.gen72 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok73 = icmp eq i64 %addr.tag66, %active.gen72
  br i1 %tag.fast.ok73, label %addr_ok67, label %tag.slow_check70

tag.slow_check70:                                 ; preds = %tag.gen_check69
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %addr.tag66)
  br i1 %tag.valid75, label %addr_ok67, label %tag.stale71

tag.stale71:                                      ; preds = %tag.slow_check70
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %addr_ok67

addr_ok88:                                        ; preds = %abort.dead97, %tag.slow_check91, %tag.gen_check90, %addr_ok67
  %raw.load98 = load volatile i64, ptr %raw.clean.ptr86, align 8
  store i64 %raw.load98, ptr %var.next_gen, align 8
  %var.load99 = load i64, ptr %var.next_gen, align 8
  %cmptmp100 = icmp sgt i64 %var.load99, 0
  br i1 %cmptmp100, label %choice.then101, label %choice.else102

tag.gen_check90:                                  ; preds = %addr_ok67
  %active.gen93 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok94 = icmp eq i64 %addr.tag87, %active.gen93
  br i1 %tag.fast.ok94, label %addr_ok88, label %tag.slow_check91

tag.slow_check91:                                 ; preds = %tag.gen_check90
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %addr.tag87)
  br i1 %tag.valid96, label %addr_ok88, label %tag.stale92

tag.stale92:                                      ; preds = %tag.slow_check91
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %addr_ok88

choice.then101:                                   ; preds = %addr_ok88
  %var.load104 = load i64, ptr %var.next_gen, align 8
  br label %choice.exit103

choice.else102:                                   ; preds = %addr_ok88
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res105 = phi i64 [ %var.load104, %choice.then101 ], [ 1, %choice.else102 ]
  store i64 %choice.res105, ptr %var.gen, align 8
  %var.load106 = load ptr, ptr %var.a, align 8
  %fld.gep107 = getelementptr inbounds { ptr, i64 }, ptr %var.load106, i32 0, i32 0
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %ptr.int.l109 = ptrtoint ptr %fld.load108 to i64
  %addtmp110 = add i64 %ptr.int.l109, 131120
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %raw.int112 = ptrtoint ptr %ptr.res111 to i64
  %raw.clean.int113 = and i64 %raw.int112, 281474976710655
  %raw.clean.ptr114 = inttoptr i64 %raw.clean.int113 to ptr
  %addr.tag115 = lshr i64 %raw.int112, 48
  %tag.immortal117 = icmp eq i64 %addr.tag115, 0
  br i1 %tag.immortal117, label %addr_ok116, label %tag.gen_check118

addr_ok116:                                       ; preds = %abort.dead125, %tag.slow_check119, %tag.gen_check118, %choice.exit103
  %raw.load126 = load volatile i64, ptr %raw.clean.ptr114, align 8
  store i64 %raw.load126, ptr %var.resets, align 8
  %var.load127 = load ptr, ptr %var.a, align 8
  %fld.gep128 = getelementptr inbounds { ptr, i64 }, ptr %var.load127, i32 0, i32 0
  %fld.load129 = load ptr, ptr %fld.gep128, align 8
  %var.load130 = load i64, ptr %var.gen, align 8
  %var.load131 = load i64, ptr %var.depth, align 8
  %var.load132 = load i64, ptr %var.resets, align 8
  %var.load133 = load i64, ptr %var.allocated, align 8
  %var.load134 = load i64, ptr %var.num_chunks, align 8
  %arena.cur135 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load129, ptr %rec.fld, align 8
  %rec.fld136 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load130, ptr %rec.fld136, align 8
  %rec.fld137 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load131, ptr %rec.fld137, align 8
  %rec.fld138 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load132, ptr %rec.fld138, align 8
  %rec.fld139 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load133, ptr %rec.fld139, align 8
  %rec.fld140 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load134, ptr %rec.fld140, align 8
  ret ptr %rec.alloc

tag.gen_check118:                                 ; preds = %choice.exit103
  %active.gen121 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok122 = icmp eq i64 %addr.tag115, %active.gen121
  br i1 %tag.fast.ok122, label %addr_ok116, label %tag.slow_check119

tag.slow_check119:                                ; preds = %tag.gen_check118
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %addr.tag115)
  br i1 %tag.valid124, label %addr_ok116, label %tag.stale120

tag.stale120:                                     ; preds = %tag.slow_check119
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead125:                                    ; No predecessors!
  br label %addr_ok116
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load1 = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %arena.cur5 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load3, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld6, align 8
  %call.res7 = call ptr @"mem::provenance"(ptr %rec.alloc)
  ret ptr %call.res7
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

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
  br i1 %tag.immortal28, label %addr_ok27, label %tag.gen_check29

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.else
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit12

tag.gen_check:                                    ; preds = %choice.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok27:                                        ; preds = %abort.dead36, %tag.slow_check30, %tag.gen_check29, %choice.exit12
  %raw.load37 = load volatile i64, ptr %raw.clean.ptr25, align 8
  store i64 %raw.load37, ptr %var.num_chunks, align 8
  %var.load38 = load ptr, ptr %var.a, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %ptr.int.l41 = ptrtoint ptr %fld.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 16
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %raw.int44 = ptrtoint ptr %ptr.res43 to i64
  %raw.clean.int45 = and i64 %raw.int44, 281474976710655
  %raw.clean.ptr46 = inttoptr i64 %raw.clean.int45 to ptr
  %addr.tag47 = lshr i64 %raw.int44, 48
  %tag.immortal49 = icmp eq i64 %addr.tag47, 0
  br i1 %tag.immortal49, label %addr_ok48, label %tag.gen_check50

tag.gen_check29:                                  ; preds = %choice.exit12
  %active.gen32 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok33 = icmp eq i64 %addr.tag26, %active.gen32
  br i1 %tag.fast.ok33, label %addr_ok27, label %tag.slow_check30

tag.slow_check30:                                 ; preds = %tag.gen_check29
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %addr.tag26)
  br i1 %tag.valid35, label %addr_ok27, label %tag.stale31

tag.stale31:                                      ; preds = %tag.slow_check30
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %addr_ok27

addr_ok48:                                        ; preds = %abort.dead57, %tag.slow_check51, %tag.gen_check50, %addr_ok27
  %raw.load58 = load volatile i64, ptr %raw.clean.ptr46, align 8
  store i64 %raw.load58, ptr %var.off, align 8
  %var.load59 = load i64, ptr %var.num_chunks, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

tag.gen_check50:                                  ; preds = %addr_ok27
  %active.gen53 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok54 = icmp eq i64 %addr.tag47, %active.gen53
  br i1 %tag.fast.ok54, label %addr_ok48, label %tag.slow_check51

tag.slow_check51:                                 ; preds = %tag.gen_check50
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %addr.tag47)
  br i1 %tag.valid56, label %addr_ok48, label %tag.stale52

tag.stale52:                                      ; preds = %tag.slow_check51
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %addr_ok48

loop.header.29:                                   ; preds = %loop.latch.29, %addr_ok48
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load59
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load60 = load ptr, ptr %var.a, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %ptr.int.l63 = ptrtoint ptr %fld.load62 to i64
  %addtmp64 = add i64 %ptr.int.l63, 24
  %ptr.res65 = inttoptr i64 %addtmp64 to ptr
  %var.load66 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load66, 8
  %ptr.int.l67 = ptrtoint ptr %ptr.res65 to i64
  %addtmp68 = add i64 %ptr.int.l67, %multmp
  %ptr.res69 = inttoptr i64 %addtmp68 to ptr
  %raw.int70 = ptrtoint ptr %ptr.res69 to i64
  %raw.clean.int71 = and i64 %raw.int70, 281474976710655
  %raw.clean.ptr72 = inttoptr i64 %raw.clean.int71 to ptr
  %addr.tag73 = lshr i64 %raw.int70, 48
  %tag.immortal75 = icmp eq i64 %addr.tag73, 0
  br i1 %tag.immortal75, label %addr_ok74, label %tag.gen_check76

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit104
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  ret i1 false

addr_ok74:                                        ; preds = %abort.dead83, %tag.slow_check77, %tag.gen_check76, %loop.body.29
  %raw.load84 = load volatile i64, ptr %raw.clean.ptr72, align 8
  %bandtmp85 = and i64 %raw.load84, 281474976710655
  store i64 %bandtmp85, ptr %var.c_base, align 8
  %var.load86 = load i64, ptr %var.i, align 8
  %var.load87 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load87, 1
  %cmptmp88 = icmp eq i64 %var.load86, %subtmp
  br i1 %cmptmp88, label %choice.then89, label %choice.else90

tag.gen_check76:                                  ; preds = %loop.body.29
  %active.gen79 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok80 = icmp eq i64 %addr.tag73, %active.gen79
  br i1 %tag.fast.ok80, label %addr_ok74, label %tag.slow_check77

tag.slow_check77:                                 ; preds = %tag.gen_check76
  %arena.cur81 = call ptr @dva_arena_current()
  %tag.valid82 = call i1 @dva_arena_validate_tag(ptr %arena.cur81, i64 %addr.tag73)
  br i1 %tag.valid82, label %addr_ok74, label %tag.stale78

tag.stale78:                                      ; preds = %tag.slow_check77
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %addr_ok74

choice.then89:                                    ; preds = %addr_ok74
  %var.load92 = load i64, ptr %var.off, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %addr_ok74
  %var.load93 = load i64, ptr %var.cap, align 8
  br label %choice.exit91

choice.exit91:                                    ; preds = %choice.else90, %choice.then89
  %choice.res94 = phi i64 [ %var.load92, %choice.then89 ], [ %var.load93, %choice.else90 ]
  store i64 %choice.res94, ptr %var.c_limit, align 8
  %var.load95 = load i64, ptr %var.raw_addr, align 8
  %var.load96 = load i64, ptr %var.c_base, align 8
  %cmptmp97 = icmp sge i64 %var.load95, %var.load96
  br i1 %cmptmp97, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %choice.exit91
  %var.load98 = load i64, ptr %var.raw_addr, align 8
  %var.load99 = load i64, ptr %var.c_base, align 8
  %var.load100 = load i64, ptr %var.c_limit, align 8
  %addtmp101 = add i64 %var.load99, %var.load100
  %cmptmp102 = icmp slt i64 %var.load98, %addtmp101
  br label %and.30.exit

and.30.else:                                      ; preds = %choice.exit91
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %cmptmp102, %and.30.then ], [ %cmptmp97, %and.30.else ]
  br i1 %and.30.phi, label %choice.then103, label %choice.exit104

choice.then103:                                   ; preds = %and.30.exit
  ret i1 true

choice.exit104:                                   ; preds = %ret.dead105, %and.30.exit
  br label %loop.latch.29

ret.dead105:                                      ; No predecessors!
  br label %choice.exit104
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit6
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load36, i1 false)
  %var.load37 = load i64, ptr %var.cap, align 8
  store i64 0, ptr %loop.idx.32, align 8
  br label %loop.header.32

tag.gen_check:                                    ; preds = %choice.exit6
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal50, label %addr_ok49, label %tag.gen_check51

loop.exit.nat.32:                                 ; preds = %loop.header.32
  br label %loop.exit.32

loop.latch.32:                                    ; preds = %addr_ok49
  %step.val = load i64, ptr %loop.step.32, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.exit.32:                                     ; preds = %loop.exit.nat.32
  %var.load59 = load i64, ptr %var.cap, align 8
  store i64 %var.load59, ptr %var.st_cap, align 8
  %var.load60 = load ptr, ptr %var.st, align 8
  %var.load61 = load i64, ptr %var.st_cap, align 8
  %raw.int62 = ptrtoint ptr %var.load60 to i64
  %raw.clean.int63 = and i64 %raw.int62, 281474976710655
  %raw.clean.ptr64 = inttoptr i64 %raw.clean.int63 to ptr
  %addr.tag65 = lshr i64 %raw.int62, 48
  %tag.immortal67 = icmp eq i64 %addr.tag65, 0
  br i1 %tag.immortal67, label %addr_ok66, label %tag.gen_check68

addr_ok49:                                        ; preds = %abort.dead58, %tag.slow_check52, %tag.gen_check51, %loop.body.32
  store i64 %var.load44, ptr %raw.clean.ptr47, align 8
  br label %loop.latch.32

tag.gen_check51:                                  ; preds = %loop.body.32
  %active.gen54 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok55 = icmp eq i64 %addr.tag48, %active.gen54
  br i1 %tag.fast.ok55, label %addr_ok49, label %tag.slow_check52

tag.slow_check52:                                 ; preds = %tag.gen_check51
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %addr.tag48)
  br i1 %tag.valid57, label %addr_ok49, label %tag.stale53

tag.stale53:                                      ; preds = %tag.slow_check52
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %addr_ok49

addr_ok66:                                        ; preds = %abort.dead75, %tag.slow_check69, %tag.gen_check68, %loop.exit.32
  store i64 %var.load61, ptr %raw.clean.ptr64, align 8
  %var.load76 = load ptr, ptr %var.st, align 8
  %ptr.int.l77 = ptrtoint ptr %var.load76 to i64
  %addtmp78 = add i64 %ptr.int.l77, 8
  %ptr.res79 = inttoptr i64 %addtmp78 to ptr
  %raw.int80 = ptrtoint ptr %ptr.res79 to i64
  %raw.clean.int81 = and i64 %raw.int80, 281474976710655
  %raw.clean.ptr82 = inttoptr i64 %raw.clean.int81 to ptr
  %addr.tag83 = lshr i64 %raw.int80, 48
  %tag.immortal85 = icmp eq i64 %addr.tag83, 0
  br i1 %tag.immortal85, label %addr_ok84, label %tag.gen_check86

tag.gen_check68:                                  ; preds = %loop.exit.32
  %active.gen71 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok72 = icmp eq i64 %addr.tag65, %active.gen71
  br i1 %tag.fast.ok72, label %addr_ok66, label %tag.slow_check69

tag.slow_check69:                                 ; preds = %tag.gen_check68
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %addr.tag65)
  br i1 %tag.valid74, label %addr_ok66, label %tag.stale70

tag.stale70:                                      ; preds = %tag.slow_check69
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead75:                                     ; No predecessors!
  br label %addr_ok66

addr_ok84:                                        ; preds = %abort.dead93, %tag.slow_check87, %tag.gen_check86, %addr_ok66
  store i64 0, ptr %raw.clean.ptr82, align 8
  %var.load94 = load ptr, ptr %var.buf, align 8
  %var.load95 = load ptr, ptr %var.fs, align 8
  %var.load96 = load ptr, ptr %var.act, align 8
  %var.load97 = load ptr, ptr %var.st, align 8
  %var.load98 = load i64, ptr %var.es, align 8
  %var.load99 = load i64, ptr %var.cap, align 8
  %arena.cur100 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load94, ptr %rec.fld, align 8
  %rec.fld101 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load95, ptr %rec.fld101, align 8
  %rec.fld102 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load96, ptr %rec.fld102, align 8
  %rec.fld103 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.load97, ptr %rec.fld103, align 8
  %rec.fld104 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load98, ptr %rec.fld104, align 8
  %rec.fld105 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load99, ptr %rec.fld105, align 8
  ret ptr %rec.alloc

tag.gen_check86:                                  ; preds = %addr_ok66
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok90 = icmp eq i64 %addr.tag83, %active.gen89
  br i1 %tag.fast.ok90, label %addr_ok84, label %tag.slow_check87

tag.slow_check87:                                 ; preds = %tag.gen_check86
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %addr.tag83)
  br i1 %tag.valid92, label %addr_ok84, label %tag.stale88

tag.stale88:                                      ; preds = %tag.slow_check87
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %addr_ok84
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.top, align 8
  %var.load1 = load i64, ptr %var.top, align 8
  %cmptmp = icmp eq i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal12, label %addr_ok11, label %tag.gen_check13

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok11:                                        ; preds = %abort.dead20, %tag.slow_check14, %tag.gen_check13, %choice.exit
  store i64 %var.load6, ptr %raw.clean.ptr9, align 8
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
  %tag.immortal30 = icmp eq i64 %addr.tag28, 0
  br i1 %tag.immortal30, label %addr_ok29, label %tag.gen_check31

tag.gen_check13:                                  ; preds = %choice.exit
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok17 = icmp eq i64 %addr.tag10, %active.gen16
  br i1 %tag.fast.ok17, label %addr_ok11, label %tag.slow_check14

tag.slow_check14:                                 ; preds = %tag.gen_check13
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %addr.tag10)
  br i1 %tag.valid19, label %addr_ok11, label %tag.stale15

tag.stale15:                                      ; preds = %tag.slow_check14
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %addr_ok11

addr_ok29:                                        ; preds = %abort.dead38, %tag.slow_check32, %tag.gen_check31, %addr_ok11
  %raw.load39 = load volatile i64, ptr %raw.clean.ptr27, align 8
  store i64 %raw.load39, ptr %var.idx, align 8
  %var.load40 = load ptr, ptr %var.p, align 8
  %fld.gep41 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load40, i32 0, i32 2
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %var.load43 = load i64, ptr %var.idx, align 8
  %ptr.int.l44 = ptrtoint ptr %fld.load42 to i64
  %addtmp45 = add i64 %ptr.int.l44, %var.load43
  %ptr.res46 = inttoptr i64 %addtmp45 to ptr
  %raw.int47 = ptrtoint ptr %ptr.res46 to i64
  %raw.clean.int48 = and i64 %raw.int47, 281474976710655
  %raw.clean.ptr49 = inttoptr i64 %raw.clean.int48 to ptr
  %addr.tag50 = lshr i64 %raw.int47, 48
  %tag.immortal52 = icmp eq i64 %addr.tag50, 0
  br i1 %tag.immortal52, label %addr_ok51, label %tag.gen_check53

tag.gen_check31:                                  ; preds = %addr_ok11
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok35 = icmp eq i64 %addr.tag28, %active.gen34
  br i1 %tag.fast.ok35, label %addr_ok29, label %tag.slow_check32

tag.slow_check32:                                 ; preds = %tag.gen_check31
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %addr.tag28)
  br i1 %tag.valid37, label %addr_ok29, label %tag.stale33

tag.stale33:                                      ; preds = %tag.slow_check32
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %addr_ok29

addr_ok51:                                        ; preds = %abort.dead60, %tag.slow_check54, %tag.gen_check53, %addr_ok29
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr49, i8 1, i64 1, i1 false)
  %var.load61 = load ptr, ptr %var.p, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 3
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %ptr.int.l64 = ptrtoint ptr %fld.load63 to i64
  %addtmp65 = add i64 %ptr.int.l64, 8
  %ptr.res66 = inttoptr i64 %addtmp65 to ptr
  %raw.int67 = ptrtoint ptr %ptr.res66 to i64
  %raw.clean.int68 = and i64 %raw.int67, 281474976710655
  %raw.clean.ptr69 = inttoptr i64 %raw.clean.int68 to ptr
  %addr.tag70 = lshr i64 %raw.int67, 48
  %tag.immortal72 = icmp eq i64 %addr.tag70, 0
  br i1 %tag.immortal72, label %addr_ok71, label %tag.gen_check73

tag.gen_check53:                                  ; preds = %addr_ok29
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok57 = icmp eq i64 %addr.tag50, %active.gen56
  br i1 %tag.fast.ok57, label %addr_ok51, label %tag.slow_check54

tag.slow_check54:                                 ; preds = %tag.gen_check53
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %addr.tag50)
  br i1 %tag.valid59, label %addr_ok51, label %tag.stale55

tag.stale55:                                      ; preds = %tag.slow_check54
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %addr_ok51

addr_ok71:                                        ; preds = %abort.dead80, %tag.slow_check74, %tag.gen_check73, %addr_ok51
  %raw.load81 = load volatile i64, ptr %raw.clean.ptr69, align 8
  store i64 %raw.load81, ptr %var.cnt, align 8
  %var.load82 = load ptr, ptr %var.p, align 8
  %fld.gep83 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load82, i32 0, i32 3
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %ptr.int.l85 = ptrtoint ptr %fld.load84 to i64
  %addtmp86 = add i64 %ptr.int.l85, 8
  %ptr.res87 = inttoptr i64 %addtmp86 to ptr
  %var.load88 = load i64, ptr %var.cnt, align 8
  %addtmp89 = add i64 %var.load88, 1
  %raw.int90 = ptrtoint ptr %ptr.res87 to i64
  %raw.clean.int91 = and i64 %raw.int90, 281474976710655
  %raw.clean.ptr92 = inttoptr i64 %raw.clean.int91 to ptr
  %addr.tag93 = lshr i64 %raw.int90, 48
  %tag.immortal95 = icmp eq i64 %addr.tag93, 0
  br i1 %tag.immortal95, label %addr_ok94, label %tag.gen_check96

tag.gen_check73:                                  ; preds = %addr_ok51
  %active.gen76 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok77 = icmp eq i64 %addr.tag70, %active.gen76
  br i1 %tag.fast.ok77, label %addr_ok71, label %tag.slow_check74

tag.slow_check74:                                 ; preds = %tag.gen_check73
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %addr.tag70)
  br i1 %tag.valid79, label %addr_ok71, label %tag.stale75

tag.stale75:                                      ; preds = %tag.slow_check74
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %addr_ok71

addr_ok94:                                        ; preds = %abort.dead103, %tag.slow_check97, %tag.gen_check96, %addr_ok71
  store i64 %addtmp89, ptr %raw.clean.ptr92, align 8
  %var.load104 = load ptr, ptr %var.p, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load104, i32 0, i32 0
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %var.load107 = load i64, ptr %var.idx, align 8
  %var.load108 = load ptr, ptr %var.p, align 8
  %fld.gep109 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load108, i32 0, i32 4
  %fld.load110 = load i64, ptr %fld.gep109, align 8
  %multmp111 = mul i64 %var.load107, %fld.load110
  %ptr.int.l112 = ptrtoint ptr %fld.load106 to i64
  %addtmp113 = add i64 %ptr.int.l112, %multmp111
  %ptr.res114 = inttoptr i64 %addtmp113 to ptr
  %p.to.i64 = ptrtoint ptr %ptr.res114 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

tag.gen_check96:                                  ; preds = %addr_ok71
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok100 = icmp eq i64 %addr.tag93, %active.gen99
  br i1 %tag.fast.ok100, label %addr_ok94, label %tag.slow_check97

tag.slow_check97:                                 ; preds = %tag.gen_check96
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %addr.tag93)
  br i1 %tag.valid102, label %addr_ok94, label %tag.stale98

tag.stale98:                                      ; preds = %tag.slow_check97
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %addr_ok94
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
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %div.ok

div.not_zero22:                                   ; preds = %abort.dead24, %div.ok
  %div.is.min25 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.negone26 = icmp eq i64 %fld.load20, -1
  %div.is.ovf27 = and i1 %div.is.min25, %div.is.negone26
  br i1 %div.is.ovf27, label %div.ovf_abort29, label %div.ok28

div.zero_abort23:                                 ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %div.not_zero22

div.ok28:                                         ; preds = %abort.dead30, %div.not_zero22
  %modtmp = srem i64 %var.load17, %fld.load20
  %cmptmp31 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

div.ovf_abort29:                                  ; preds = %div.not_zero22
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

ret.dead34:                                       ; No predecessors!
  br label %choice.exit33

addr_ok:                                          ; preds = %abort.dead39, %tag.slow_check, %tag.gen_check, %choice.exit33
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load40 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load40 to i64
  %cmptmp41 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.exit43

tag.gen_check:                                    ; preds = %choice.exit33
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %addr_ok

choice.then42:                                    ; preds = %addr_ok
  ret i1 false

choice.exit43:                                    ; preds = %ret.dead44, %addr_ok
  %var.load45 = load ptr, ptr %var.p, align 8
  %fld.gep46 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load45, i32 0, i32 2
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %var.load48 = load i64, ptr %var.idx, align 8
  %ptr.int.l49 = ptrtoint ptr %fld.load47 to i64
  %addtmp50 = add i64 %ptr.int.l49, %var.load48
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %raw.int52 = ptrtoint ptr %ptr.res51 to i64
  %raw.clean.int53 = and i64 %raw.int52, 281474976710655
  %raw.clean.ptr54 = inttoptr i64 %raw.clean.int53 to ptr
  %addr.tag55 = lshr i64 %raw.int52, 48
  %tag.immortal57 = icmp eq i64 %addr.tag55, 0
  br i1 %tag.immortal57, label %addr_ok56, label %tag.gen_check58

ret.dead44:                                       ; No predecessors!
  br label %choice.exit43

addr_ok56:                                        ; preds = %abort.dead65, %tag.slow_check59, %tag.gen_check58, %choice.exit43
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr54, i8 0, i64 1, i1 false)
  %var.load66 = load ptr, ptr %var.p, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load66, i32 0, i32 3
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %raw.int69 = ptrtoint ptr %fld.load68 to i64
  %raw.clean.int70 = and i64 %raw.int69, 281474976710655
  %raw.clean.ptr71 = inttoptr i64 %raw.clean.int70 to ptr
  %addr.tag72 = lshr i64 %raw.int69, 48
  %tag.immortal74 = icmp eq i64 %addr.tag72, 0
  br i1 %tag.immortal74, label %addr_ok73, label %tag.gen_check75

tag.gen_check58:                                  ; preds = %choice.exit43
  %active.gen61 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok62 = icmp eq i64 %addr.tag55, %active.gen61
  br i1 %tag.fast.ok62, label %addr_ok56, label %tag.slow_check59

tag.slow_check59:                                 ; preds = %tag.gen_check58
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %addr.tag55)
  br i1 %tag.valid64, label %addr_ok56, label %tag.stale60

tag.stale60:                                      ; preds = %tag.slow_check59
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %addr_ok56

addr_ok73:                                        ; preds = %abort.dead82, %tag.slow_check76, %tag.gen_check75, %addr_ok56
  %raw.load83 = load volatile i64, ptr %raw.clean.ptr71, align 8
  store i64 %raw.load83, ptr %var.top, align 8
  %var.load84 = load ptr, ptr %var.p, align 8
  %fld.gep85 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load84, i32 0, i32 1
  %fld.load86 = load ptr, ptr %fld.gep85, align 8
  %var.load87 = load i64, ptr %var.top, align 8
  %multmp88 = mul i64 %var.load87, 8
  %ptr.int.l89 = ptrtoint ptr %fld.load86 to i64
  %addtmp90 = add i64 %ptr.int.l89, %multmp88
  %ptr.res91 = inttoptr i64 %addtmp90 to ptr
  %var.load92 = load i64, ptr %var.idx, align 8
  %raw.int93 = ptrtoint ptr %ptr.res91 to i64
  %raw.clean.int94 = and i64 %raw.int93, 281474976710655
  %raw.clean.ptr95 = inttoptr i64 %raw.clean.int94 to ptr
  %addr.tag96 = lshr i64 %raw.int93, 48
  %tag.immortal98 = icmp eq i64 %addr.tag96, 0
  br i1 %tag.immortal98, label %addr_ok97, label %tag.gen_check99

tag.gen_check75:                                  ; preds = %addr_ok56
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok79 = icmp eq i64 %addr.tag72, %active.gen78
  br i1 %tag.fast.ok79, label %addr_ok73, label %tag.slow_check76

tag.slow_check76:                                 ; preds = %tag.gen_check75
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %addr.tag72)
  br i1 %tag.valid81, label %addr_ok73, label %tag.stale77

tag.stale77:                                      ; preds = %tag.slow_check76
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %addr_ok73

addr_ok97:                                        ; preds = %abort.dead106, %tag.slow_check100, %tag.gen_check99, %addr_ok73
  store i64 %var.load92, ptr %raw.clean.ptr95, align 8
  %var.load107 = load ptr, ptr %var.p, align 8
  %fld.gep108 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load107, i32 0, i32 3
  %fld.load109 = load ptr, ptr %fld.gep108, align 8
  %var.load110 = load i64, ptr %var.top, align 8
  %addtmp111 = add i64 %var.load110, 1
  %raw.int112 = ptrtoint ptr %fld.load109 to i64
  %raw.clean.int113 = and i64 %raw.int112, 281474976710655
  %raw.clean.ptr114 = inttoptr i64 %raw.clean.int113 to ptr
  %addr.tag115 = lshr i64 %raw.int112, 48
  %tag.immortal117 = icmp eq i64 %addr.tag115, 0
  br i1 %tag.immortal117, label %addr_ok116, label %tag.gen_check118

tag.gen_check99:                                  ; preds = %addr_ok73
  %active.gen102 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok103 = icmp eq i64 %addr.tag96, %active.gen102
  br i1 %tag.fast.ok103, label %addr_ok97, label %tag.slow_check100

tag.slow_check100:                                ; preds = %tag.gen_check99
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %addr.tag96)
  br i1 %tag.valid105, label %addr_ok97, label %tag.stale101

tag.stale101:                                     ; preds = %tag.slow_check100
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %addr_ok97

addr_ok116:                                       ; preds = %abort.dead125, %tag.slow_check119, %tag.gen_check118, %addr_ok97
  store i64 %addtmp111, ptr %raw.clean.ptr114, align 8
  %var.load126 = load ptr, ptr %var.p, align 8
  %fld.gep127 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load126, i32 0, i32 3
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %ptr.int.l129 = ptrtoint ptr %fld.load128 to i64
  %addtmp130 = add i64 %ptr.int.l129, 8
  %ptr.res131 = inttoptr i64 %addtmp130 to ptr
  %raw.int132 = ptrtoint ptr %ptr.res131 to i64
  %raw.clean.int133 = and i64 %raw.int132, 281474976710655
  %raw.clean.ptr134 = inttoptr i64 %raw.clean.int133 to ptr
  %addr.tag135 = lshr i64 %raw.int132, 48
  %tag.immortal137 = icmp eq i64 %addr.tag135, 0
  br i1 %tag.immortal137, label %addr_ok136, label %tag.gen_check138

tag.gen_check118:                                 ; preds = %addr_ok97
  %active.gen121 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok122 = icmp eq i64 %addr.tag115, %active.gen121
  br i1 %tag.fast.ok122, label %addr_ok116, label %tag.slow_check119

tag.slow_check119:                                ; preds = %tag.gen_check118
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %addr.tag115)
  br i1 %tag.valid124, label %addr_ok116, label %tag.stale120

tag.stale120:                                     ; preds = %tag.slow_check119
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead125:                                    ; No predecessors!
  br label %addr_ok116

addr_ok136:                                       ; preds = %abort.dead145, %tag.slow_check139, %tag.gen_check138, %addr_ok116
  %raw.load146 = load volatile i64, ptr %raw.clean.ptr134, align 8
  store i64 %raw.load146, ptr %var.cnt, align 8
  %var.load147 = load ptr, ptr %var.p, align 8
  %fld.gep148 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load147, i32 0, i32 3
  %fld.load149 = load ptr, ptr %fld.gep148, align 8
  %ptr.int.l150 = ptrtoint ptr %fld.load149 to i64
  %addtmp151 = add i64 %ptr.int.l150, 8
  %ptr.res152 = inttoptr i64 %addtmp151 to ptr
  %var.load153 = load i64, ptr %var.cnt, align 8
  %subtmp154 = sub i64 %var.load153, 1
  %raw.int155 = ptrtoint ptr %ptr.res152 to i64
  %raw.clean.int156 = and i64 %raw.int155, 281474976710655
  %raw.clean.ptr157 = inttoptr i64 %raw.clean.int156 to ptr
  %addr.tag158 = lshr i64 %raw.int155, 48
  %tag.immortal160 = icmp eq i64 %addr.tag158, 0
  br i1 %tag.immortal160, label %addr_ok159, label %tag.gen_check161

tag.gen_check138:                                 ; preds = %addr_ok116
  %active.gen141 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok142 = icmp eq i64 %addr.tag135, %active.gen141
  br i1 %tag.fast.ok142, label %addr_ok136, label %tag.slow_check139

tag.slow_check139:                                ; preds = %tag.gen_check138
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %addr.tag135)
  br i1 %tag.valid144, label %addr_ok136, label %tag.stale140

tag.stale140:                                     ; preds = %tag.slow_check139
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead145:                                    ; No predecessors!
  br label %addr_ok136

addr_ok159:                                       ; preds = %abort.dead168, %tag.slow_check162, %tag.gen_check161, %addr_ok136
  store i64 %subtmp154, ptr %raw.clean.ptr157, align 8
  ret i1 true

tag.gen_check161:                                 ; preds = %addr_ok136
  %active.gen164 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok165 = icmp eq i64 %addr.tag158, %active.gen164
  br i1 %tag.fast.ok165, label %addr_ok159, label %tag.slow_check162

tag.slow_check162:                                ; preds = %tag.gen_check161
  %arena.cur166 = call ptr @dva_arena_current()
  %tag.valid167 = call i1 @dva_arena_validate_tag(ptr %arena.cur166, i64 %addr.tag158)
  br i1 %tag.valid167, label %addr_ok159, label %tag.stale163

tag.stale163:                                     ; preds = %tag.slow_check162
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead168:                                    ; No predecessors!
  br label %addr_ok159
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

loop.exit.nat.36:                                 ; preds = %loop.header.36
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %loop.exit.nat.36
  ret void

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %loop.body.36
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load5 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load5 to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %loop.body.36
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
