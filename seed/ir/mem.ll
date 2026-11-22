; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"mem::copy", ptr null }
@"var.mem::copy" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"mem::move", ptr null }
@"var.mem::move" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"mem::zero", ptr null }
@"var.mem::zero" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"mem::set", ptr null }
@"var.mem::set" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"mem::clear", ptr null }
@"var.mem::clear" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"mem::truncate", ptr null }
@"var.mem::truncate" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"mem::zero_buf", ptr null }
@"var.mem::zero_buf" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"mem::write_tail", ptr null }
@"var.mem::write_tail" = global ptr null
@null_addr_cast = internal unnamed_addr constant [40 x i8] c"E4015: cannot construct Addr from zero\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"mem::align_forward", ptr null }
@"var.mem::align_forward" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"mem::is_aligned", ptr null }
@"var.mem::is_aligned" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"mem::current", ptr null }
@"var.mem::current" = global ptr null
@null_addr = internal unnamed_addr constant [48 x i8] c"E4014: null Addr in a present optional address\0A\00"
@clo.const.11 = internal constant { ptr, ptr } { ptr @"mem::set_current", ptr null }
@"var.mem::set_current" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"mem::set_global", ptr null }
@"var.mem::set_global" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"mem::save", ptr null }
@"var.mem::save" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"mem::restore_to", ptr null }
@"var.mem::restore_to" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"mem::try_arena", ptr null }
@"var.mem::try_arena" = global ptr null
@expect.reason.39 = internal unnamed_addr constant [45 x i8] c"expect: could not allocate arena descriptor\0A\00"
@unwrap_abort_msg = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"mem::arena", ptr null }
@"var.mem::arena" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"mem::arena_default", ptr null }
@"var.mem::arena_default" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"mem::alloc", ptr null }
@"var.mem::alloc" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"mem::reset", ptr null }
@"var.mem::reset" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"mem::release", ptr null }
@"var.mem::release" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"mem::destroy", ptr null }
@"var.mem::destroy" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"mem::stats", ptr null }
@"var.mem::stats" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.23 = internal constant { ptr, ptr } { ptr @"mem::global_arena", ptr null }
@"var.mem::global_arena" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"mem::provenance", ptr null }
@"var.mem::provenance" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"mem::current_provenance", ptr null }
@"var.mem::current_provenance" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"mem::owns_addr", ptr null }
@"var.mem::owns_addr" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"mem::with", ptr null }
@"var.mem::with" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"mem::escape", ptr null }
@"var.mem::escape" = global ptr null
@expect.reason.44 = internal unnamed_addr constant [41 x i8] c"expect: could not allocate pool storage\0A\00"
@clo.const.29 = internal constant { ptr, ptr } { ptr @"mem::pool", ptr null }
@"var.mem::pool" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"mem::pool_count", ptr null }
@"var.mem::pool_count" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"mem::pool_capacity", ptr null }
@"var.mem::pool_capacity" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"mem::pool_alloc", ptr null }
@"var.mem::pool_alloc" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.33 = internal constant { ptr, ptr } { ptr @"mem::pool_free", ptr null }
@"var.mem::pool_free" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"mem::pool_destroy", ptr null }
@"var.mem::pool_destroy" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"mem::pool_for_each", ptr null }
@"var.mem::pool_for_each" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"mem::index_byte", ptr null }
@"var.mem::index_byte" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_mem, ptr null }]

declare ptr @dva_arena_current() #0

declare ptr @dva_arena_set_current(ptr) #0

declare noalias ptr @malloc(i64) #0

declare void @free(ptr) #0

declare void @dva_arena_init(ptr, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub nuw i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

declare void @dva_builder_truncate(ptr, i64) #0

declare ptr @dva_builder_zero(i64) #0

declare i64 @dva_builder_write_tail(ptr, i64, ptr) #0

define internal void @__dva_global_init_mem() #0 {
entry:
  store ptr @clo.const, ptr @"var.mem::copy", align 8
  store ptr @clo.const.1, ptr @"var.mem::move", align 8
  store ptr @clo.const.2, ptr @"var.mem::zero", align 8
  store ptr @clo.const.3, ptr @"var.mem::set", align 8
  store ptr @clo.const.4, ptr @"var.mem::clear", align 8
  store ptr @clo.const.5, ptr @"var.mem::truncate", align 8
  store ptr @clo.const.6, ptr @"var.mem::zero_buf", align 8
  store ptr @clo.const.7, ptr @"var.mem::write_tail", align 8
  store ptr @clo.const.8, ptr @"var.mem::align_forward", align 8
  store ptr @clo.const.9, ptr @"var.mem::is_aligned", align 8
  store ptr @clo.const.10, ptr @"var.mem::current", align 8
  store ptr @clo.const.11, ptr @"var.mem::set_current", align 8
  store ptr @clo.const.12, ptr @"var.mem::set_global", align 8
  store ptr @clo.const.13, ptr @"var.mem::save", align 8
  store ptr @clo.const.14, ptr @"var.mem::restore_to", align 8
  store ptr @clo.const.15, ptr @"var.mem::try_arena", align 8
  store ptr @clo.const.16, ptr @"var.mem::arena", align 8
  store ptr @clo.const.17, ptr @"var.mem::arena_default", align 8
  store ptr @clo.const.18, ptr @"var.mem::alloc", align 8
  store ptr @clo.const.19, ptr @"var.mem::reset", align 8
  store ptr @clo.const.20, ptr @"var.mem::release", align 8
  store ptr @clo.const.21, ptr @"var.mem::destroy", align 8
  store ptr @clo.const.22, ptr @"var.mem::stats", align 8
  store ptr @clo.const.23, ptr @"var.mem::global_arena", align 8
  store ptr @clo.const.24, ptr @"var.mem::provenance", align 8
  store ptr @clo.const.25, ptr @"var.mem::current_provenance", align 8
  store ptr @clo.const.26, ptr @"var.mem::owns_addr", align 8
  store ptr @clo.const.27, ptr @"var.mem::with", align 8
  store ptr @clo.const.28, ptr @"var.mem::escape", align 8
  store ptr @clo.const.29, ptr @"var.mem::pool", align 8
  store ptr @clo.const.30, ptr @"var.mem::pool_count", align 8
  store ptr @clo.const.31, ptr @"var.mem::pool_capacity", align 8
  store ptr @clo.const.32, ptr @"var.mem::pool_alloc", align 8
  store ptr @clo.const.33, ptr @"var.mem::pool_free", align 8
  store ptr @clo.const.34, ptr @"var.mem::pool_destroy", align 8
  store ptr @clo.const.35, ptr @"var.mem::pool_for_each", align 8
  store ptr @clo.const.36, ptr @"var.mem::index_byte", align 8
  ret void
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

declare ptr @memchr(ptr, i64, i64) #0

define ptr @"mem::copy"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %raw.int = ptrtoint ptr %0 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int3 = ptrtoint ptr %1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %2, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define ptr @"mem::move"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %raw.int = ptrtoint ptr %0 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int3 = ptrtoint ptr %1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %2, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define ptr @"mem::zero"(ptr %0, i64 %1) #0 {
entry:
  %raw.int = ptrtoint ptr %0 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %1, i1 false)
  ret ptr %raw.clean.ptr
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

define ptr @"mem::set"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %raw.int = ptrtoint ptr %0 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %coerce.trunc = trunc i64 %1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %2, i1 false)
  ret ptr %raw.clean.ptr
}

define void @"mem::clear"(ptr %0) #0 {
entry:
  call void @dva_builder_truncate(ptr %0, i64 0)
  ret void
}

define void @"mem::truncate"(ptr %0, i64 %1) #0 {
entry:
  call void @dva_builder_truncate(ptr %0, i64 %1)
  ret void
}

define ptr @"mem::zero_buf"(i64 %0) #0 {
entry:
  %call.res = call ptr @dva_builder_zero(i64 %0)
  ret ptr %call.res
}

define i64 @"mem::write_tail"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %call.res = call i64 @dva_builder_write_tail(ptr %0, i64 %1, ptr %2)
  ret i64 %call.res
}

define ptr @"mem::align_forward"(ptr %0, i64 %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %0 to i64
  %subtmp = sub i64 %1, 1
  %addtmp = add i64 %coerce.ptr2int, %subtmp
  %bitnottmp = xor i64 %subtmp, -1
  %bandtmp = and i64 %addtmp, %bitnottmp
  %cast.int2ptr = inttoptr i64 %bandtmp to ptr
  %addr.is.null = icmp eq ptr %cast.int2ptr, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
  ret ptr %cast.int2ptr
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr_cast() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr_cast, i64 39)
  call void @exit(i32 1)
  unreachable
}

define i1 @"mem::is_aligned"(ptr %0, i64 %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %0 to i64
  %subtmp = sub i64 %1, 1
  %bandtmp = and i64 %coerce.ptr2int, %subtmp
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
  %addr.is.null = icmp eq ptr %0, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr()
  unreachable

addr.present:                                     ; preds = %entry
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_set_current(ptr %addr.ffi.clean)
  ret ptr %call.res
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr, i64 47)
  call void @exit(i32 1)
  unreachable
}

define ptr @"mem::set_global"() #0 {
entry:
  %call.res = call ptr @dva_arena_set_current(ptr null)
  ret ptr %call.res
}

define i64 @"mem::save"(ptr %0) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @dva_arena_save(ptr %addr.ffi.clean)
  ret i64 %call.res
}

define void @"mem::restore_to"(ptr %0, i64 %1) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_restore(ptr %addr.ffi.clean, i64 %1)
  ret void
}

define ptr @"mem::try_arena"(i64 %0) #0 {
entry:
  %cmptmp = icmp sle i64 %0, 0
  %. = select i1 %cmptmp, i64 67108864, i64 %0
  %call.res = call ptr @malloc(i64 131632)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then2, label %choice.exit4

choice.then2:                                     ; preds = %entry
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %.)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %., ptr %rec.fld9, align 8
  br label %choice.exit4

choice.exit4:                                     ; preds = %entry, %choice.then2
  %choice.res10 = phi ptr [ %rec.alloc, %choice.then2 ], [ null, %entry ]
  ret ptr %choice.res10
}

define { ptr, i64 } @"mem::arena"(i64 %0) #0 {
entry:
  %call.res = call ptr @"mem::try_arena"(i64 %0)
  %unwrap.is_pos = icmp ne ptr %call.res, null
  br i1 %unwrap.is_pos, label %unwrap.pos.38, label %unwrap.abort.38

unwrap.pos.38:                                    ; preds = %entry
  %ret.pack = load { ptr, i64 }, ptr %call.res, align 8
  ret { ptr, i64 } %ret.pack

unwrap.abort.38:                                  ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @expect.reason.39, i64 44)
  call void @dva_abort_unwrap_abort_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_unwrap_abort_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @unwrap_abort_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

define { ptr, i64 } @"mem::arena_default"() #0 {
entry:
  %call.res = call { ptr, i64 } @"mem::arena"(i64 67108864)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store { ptr, i64 } %call.res, ptr %ret.ub.alloc, align 8
  ret { ptr, i64 } %call.res
}

define ptr @"mem::alloc"(ptr %0, i64 %1) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_alloc(ptr %addr.ffi.clean, i64 %1)
  ret ptr %call.res
}

define void @"mem::reset"(ptr %0) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_restore(ptr %addr.ffi.clean, i64 0)
  ret void
}

define void @"mem::release"(ptr %0) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_destroy(ptr %addr.ffi.clean)
  ret void
}

define void @"mem::destroy"(ptr %0) #0 {
entry:
  call void @"mem::release"(ptr %0)
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  ret void
}

define { i64, i64, i64 } @"mem::stats"(ptr %0) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  %fld.load3 = load ptr, ptr %0, align 8
  %ptr.int.l4 = ptrtoint ptr %fld.load3 to i64
  %addtmp5 = add i64 %ptr.int.l4, 16
  %ptr.res6 = inttoptr i64 %addtmp5 to ptr
  %addr.is.null9 = icmp eq ptr %ptr.res6, null
  br i1 %addr.is.null9, label %addr.null7, label %addr.present8

addr.null7:                                       ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present8:                                    ; preds = %addr.present
  %raw.clean.int12 = and i64 %addtmp5, 281474976710655
  %raw.clean.ptr13 = inttoptr i64 %raw.clean.int12 to ptr
  %raw.load14 = load volatile i64, ptr %raw.clean.ptr13, align 8
  %cmptmp = icmp sgt i64 %raw.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %addr.present8
  %subtmp = sub nuw nsw i64 %raw.load, 1
  %fld.gep18 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %multmp = mul i64 %subtmp, %fld.load19
  %addtmp21 = add i64 %multmp, %raw.load14
  br label %choice.exit

choice.exit:                                      ; preds = %addr.present8, %choice.then
  %choice.res = phi i64 [ %addtmp21, %choice.then ], [ %raw.load14, %addr.present8 ]
  %fld.gep26 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, i64, i64 } poison, i64 %choice.res, 0
  %ret.pack.fca.1.insert = insertvalue { i64, i64, i64 } %ret.pack.fca.0.insert, i64 %raw.load, 1
  %ret.pack.fca.2.insert = insertvalue { i64, i64, i64 } %ret.pack.fca.1.insert, i64 %fld.load27, 2
  ret { i64, i64, i64 } %ret.pack.fca.2.insert
}

define { ptr, i64 } @"mem::global_arena"() #0 {
entry:
  %call.res = call ptr @"mem::set_global"()
  %call.res1 = call ptr @"mem::current"()
  %call.res2 = call ptr @"mem::set_current"(ptr %call.res)
  %raw.int = ptrtoint ptr %call.res1 to i64
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
  %cmptmp = icmp sgt i64 %raw.load, 0
  %raw.load. = select i1 %cmptmp, i64 %raw.load, i64 67108864
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res1, ptr %rec.alloc, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %raw.load., ptr %rec.fld8, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.alloc, align 8
  ret { ptr, i64 } %ret.pack

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_addr_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable
}

define ptr @"mem::provenance"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %fld.load6 = load ptr, ptr %0, align 8
  %raw.int = ptrtoint ptr %fld.load6 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.else
  %choice.res = phi i64 [ %raw.load, %choice.else ], [ %fld.load, %entry ]
  %fld.load9 = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load9 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit
  %raw.clean.int11 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr12 = inttoptr i64 %raw.clean.int11 to ptr
  %raw.load13 = load volatile i64, ptr %raw.clean.ptr12, align 8
  %fld.load16 = load ptr, ptr %0, align 8
  %ptr.int.l17 = ptrtoint ptr %fld.load16 to i64
  %addtmp18 = add i64 %ptr.int.l17, 16
  %ptr.res19 = inttoptr i64 %addtmp18 to ptr
  %addr.is.null22 = icmp eq ptr %ptr.res19, null
  br i1 %addr.is.null22, label %addr.null20, label %addr.present21

addr.null20:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present21:                                   ; preds = %addr.present
  %raw.clean.int25 = and i64 %addtmp18, 281474976710655
  %raw.clean.ptr26 = inttoptr i64 %raw.clean.int25 to ptr
  %raw.load27 = load volatile i64, ptr %raw.clean.ptr26, align 8
  %cmptmp29 = icmp sgt i64 %raw.load13, 1
  %subtmp = sub i64 %raw.load13, 1
  %multmp = mul i64 %subtmp, %choice.res
  %addtmp36 = add i64 %multmp, %raw.load27
  %choice.res38 = select i1 %cmptmp29, i64 %addtmp36, i64 %raw.load27
  %fld.load41 = load ptr, ptr %0, align 8
  %ptr.int.l42 = ptrtoint ptr %fld.load41 to i64
  %addtmp43 = add i64 %ptr.int.l42, 131104
  %ptr.res44 = inttoptr i64 %addtmp43 to ptr
  %addr.is.null47 = icmp eq ptr %ptr.res44, null
  br i1 %addr.is.null47, label %addr.null45, label %addr.present46

addr.null45:                                      ; preds = %addr.present21
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present46:                                   ; preds = %addr.present21
  %raw.clean.int50 = and i64 %addtmp43, 281474976710655
  %raw.clean.ptr51 = inttoptr i64 %raw.clean.int50 to ptr
  %raw.load52 = load volatile i64, ptr %raw.clean.ptr51, align 8
  %fld.load55 = load ptr, ptr %0, align 8
  %ptr.int.l56 = ptrtoint ptr %fld.load55 to i64
  %addtmp57 = add i64 %ptr.int.l56, 131112
  %ptr.res58 = inttoptr i64 %addtmp57 to ptr
  %addr.is.null61 = icmp eq ptr %ptr.res58, null
  br i1 %addr.is.null61, label %addr.null59, label %addr.present60

addr.null59:                                      ; preds = %addr.present46
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present60:                                   ; preds = %addr.present46
  %raw.clean.int64 = and i64 %addtmp57, 281474976710655
  %raw.clean.ptr65 = inttoptr i64 %raw.clean.int64 to ptr
  %raw.load66 = load volatile i64, ptr %raw.clean.ptr65, align 8
  %cmptmp68 = icmp sgt i64 %raw.load66, 0
  %raw.load66. = select i1 %cmptmp68, i64 %raw.load66, i64 1
  %fld.load76 = load ptr, ptr %0, align 8
  %ptr.int.l77 = ptrtoint ptr %fld.load76 to i64
  %addtmp78 = add i64 %ptr.int.l77, 131120
  %ptr.res79 = inttoptr i64 %addtmp78 to ptr
  %addr.is.null82 = icmp eq ptr %ptr.res79, null
  br i1 %addr.is.null82, label %addr.null80, label %addr.present81

addr.null80:                                      ; preds = %addr.present60
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present81:                                   ; preds = %addr.present60
  %raw.clean.int85 = and i64 %addtmp78, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  %raw.load87 = load volatile i64, ptr %raw.clean.ptr86, align 8
  %fld.load90 = load ptr, ptr %0, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load90, ptr %rec.alloc, align 8
  %rec.fld96 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %raw.load66., ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %raw.load52, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %raw.load87, ptr %rec.fld98, align 8
  %rec.fld99 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %choice.res38, ptr %rec.fld99, align 8
  %rec.fld100 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %raw.load13, ptr %rec.fld100, align 8
  ret ptr %rec.alloc
}

define ptr @"mem::current_provenance"() #0 {
entry:
  %call.res = call ptr @"mem::current"()
  %raw.int = ptrtoint ptr %call.res to i64
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
  %cmptmp = icmp sgt i64 %raw.load, 0
  %raw.load. = select i1 %cmptmp, i64 %raw.load, i64 67108864
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %raw.load., ptr %rec.fld5, align 8
  %call.res6 = call ptr @"mem::provenance"(ptr %rec.alloc)
  ret ptr %call.res6

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok
}

define i1 @"mem::owns_addr"(ptr %0, ptr %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %1 to i64
  %bandtmp = and i64 %coerce.ptr2int, 281474976710655
  %cmptmp = icmp eq i64 %bandtmp, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %addr.present49, %loop.header.40, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ false, %loop.header.40 ], [ true, %addr.present49 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp3 = icmp sgt i64 %fld.load, 0
  br i1 %cmptmp3, label %choice.exit5, label %choice.else

choice.else:                                      ; preds = %choice.exit
  %fld.load11 = load ptr, ptr %0, align 8
  %raw.int = ptrtoint ptr %fld.load11 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit5

choice.exit5:                                     ; preds = %choice.exit, %choice.else
  %choice.res = phi i64 [ %raw.load, %choice.else ], [ %fld.load, %choice.exit ]
  %fld.load14 = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load14 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit5
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit5
  %raw.clean.int16 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr17 = inttoptr i64 %raw.clean.int16 to ptr
  %raw.load18 = load volatile i64, ptr %raw.clean.ptr17, align 8
  %fld.load21 = load ptr, ptr %0, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load21 to i64
  %addtmp23 = add i64 %ptr.int.l22, 16
  %ptr.res24 = inttoptr i64 %addtmp23 to ptr
  %addr.is.null27 = icmp eq ptr %ptr.res24, null
  br i1 %addr.is.null27, label %addr.null25, label %addr.present26

addr.null25:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present26:                                   ; preds = %addr.present
  %raw.clean.int30 = and i64 %addtmp23, 281474976710655
  %raw.clean.ptr31 = inttoptr i64 %raw.clean.int30 to ptr
  %raw.load32 = load volatile i64, ptr %raw.clean.ptr31, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %choice.exit75, %addr.present26
  %loop.idx.40.0 = phi i64 [ 0, %addr.present26 ], [ %loop.next, %choice.exit75 ]
  %loop.cond = icmp slt i64 %loop.idx.40.0, %raw.load18
  br i1 %loop.cond, label %loop.body.40, label %common.ret

loop.body.40:                                     ; preds = %loop.header.40
  %fld.load36 = load ptr, ptr %0, align 8
  %ptr.int.l37 = ptrtoint ptr %fld.load36 to i64
  %addtmp38 = add i64 %ptr.int.l37, 24
  %ptr.res39 = inttoptr i64 %addtmp38 to ptr
  %addr.is.null42 = icmp eq ptr %ptr.res39, null
  br i1 %addr.is.null42, label %addr.null40, label %addr.present41

addr.null40:                                      ; preds = %loop.body.40
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present41:                                   ; preds = %loop.body.40
  %multmp = mul i64 %loop.idx.40.0, 8
  %addtmp46 = add i64 %addtmp38, %multmp
  %ptr.res47 = inttoptr i64 %addtmp46 to ptr
  %addr.is.null50 = icmp eq ptr %ptr.res47, null
  br i1 %addr.is.null50, label %addr.null48, label %addr.present49

addr.null48:                                      ; preds = %addr.present41
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present49:                                   ; preds = %addr.present41
  %raw.clean.int53 = and i64 %addtmp46, 281474976710655
  %raw.clean.ptr54 = inttoptr i64 %raw.clean.int53 to ptr
  %raw.load55 = load volatile i64, ptr %raw.clean.ptr54, align 8
  %bandtmp56 = and i64 %raw.load55, 281474976710655
  %subtmp = sub i64 %raw.load18, 1
  %cmptmp59 = icmp eq i64 %loop.idx.40.0, %subtmp
  %raw.load32.choice.res = select i1 %cmptmp59, i64 %raw.load32, i64 %choice.res
  %cmptmp68 = icmp sge i64 %bandtmp, %bandtmp56
  %addtmp72 = add i64 %bandtmp56, %raw.load32.choice.res
  %cmptmp73 = icmp slt i64 %bandtmp, %addtmp72
  %and.41.phi = select i1 %cmptmp68, i1 %cmptmp73, i1 false
  br i1 %and.41.phi, label %common.ret, label %choice.exit75

choice.exit75:                                    ; preds = %addr.present49
  %loop.next = add i64 %loop.idx.40.0, 1
  br label %loop.header.40
}

define void @"mem::with"(ptr %0, ptr %1) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call ptr @"mem::set_current"(ptr %fld.load)
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %1, align 8
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
  %call.res2 = call ptr @"mem::set_current"(ptr %call.res)
  ret void
}

define void @"mem::escape"(ptr %0) #0 {
entry:
  %call.res = call ptr @"mem::set_global"()
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %0, align 8
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
  %call.res1 = call ptr @"mem::set_current"(ptr %call.res)
  ret void
}

define ptr @"mem::pool"(i64 %0, i64 %1) #0 {
entry:
  %cmptmp = icmp sle i64 %0, 8
  %addtmp = add i64 %0, 7
  %bandtmp = and i64 %addtmp, -8
  %choice.res = select i1 %cmptmp, i64 8, i64 %bandtmp
  %cmptmp3 = icmp sle i64 %1, 0
  %choice.res8 = select i1 %cmptmp3, i64 1, i64 %1
  %multmp = mul i64 %choice.res8, %choice.res
  %multmp12 = mul i64 %choice.res8, 8
  %addtmp16 = add i64 %multmp, %multmp12
  %addtmp18 = add i64 %addtmp16, 16
  %addtmp20 = add i64 %addtmp18, %choice.res8
  %call.res = call ptr @malloc(i64 %addtmp20)
  %unwrap.is_pos = icmp ne ptr %call.res, null
  br i1 %unwrap.is_pos, label %unwrap.pos.43, label %unwrap.abort.43

unwrap.pos.43:                                    ; preds = %entry
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %addtmp24 = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp24 to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

unwrap.abort.43:                                  ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @expect.reason.44, i64 40)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

addr.null:                                        ; preds = %unwrap.pos.43
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %unwrap.pos.43
  %addtmp29 = add i64 %addtmp24, %multmp12
  %ptr.res30 = inttoptr i64 %addtmp29 to ptr
  %addr.is.null33 = icmp eq ptr %ptr.res30, null
  br i1 %addr.is.null33, label %addr.null31, label %addr.present32

addr.null31:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present32:                                   ; preds = %addr.present
  %addtmp38 = add i64 %addtmp29, 16
  %ptr.res39 = inttoptr i64 %addtmp38 to ptr
  %addr.is.null42 = icmp eq ptr %ptr.res39, null
  br i1 %addr.is.null42, label %addr.null40, label %addr.present41

addr.null40:                                      ; preds = %addr.present32
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present41:                                   ; preds = %addr.present32
  %raw.clean.int = and i64 %addtmp38, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %choice.res8, i1 false)
  br label %loop.header.45

loop.header.45:                                   ; preds = %addr.present54, %addr.present41
  %loop.idx.45.0 = phi i64 [ 0, %addr.present41 ], [ %loop.next, %addr.present54 ]
  %loop.cond = icmp slt i64 %loop.idx.45.0, %choice.res8
  br i1 %loop.cond, label %loop.body.45, label %loop.exit.45

loop.body.45:                                     ; preds = %loop.header.45
  %multmp49 = mul i64 %loop.idx.45.0, 8
  %addtmp51 = add i64 %addtmp24, %multmp49
  %ptr.res52 = inttoptr i64 %addtmp51 to ptr
  %addr.is.null55 = icmp eq ptr %ptr.res52, null
  br i1 %addr.is.null55, label %addr.null53, label %addr.present54

loop.exit.45:                                     ; preds = %loop.header.45
  %raw.clean.int65 = and i64 %addtmp29, 281474976710655
  %raw.clean.ptr66 = inttoptr i64 %raw.clean.int65 to ptr
  store i64 %choice.res8, ptr %raw.clean.ptr66, align 8
  %addtmp69 = add i64 %addtmp29, 8
  %ptr.res70 = inttoptr i64 %addtmp69 to ptr
  %addr.is.null73 = icmp eq ptr %ptr.res70, null
  br i1 %addr.is.null73, label %addr.null71, label %addr.present72

addr.null53:                                      ; preds = %loop.body.45
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present54:                                   ; preds = %loop.body.45
  %raw.clean.int59 = and i64 %addtmp51, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  store i64 %loop.idx.45.0, ptr %raw.clean.ptr60, align 8
  %loop.next = add i64 %loop.idx.45.0, 1
  br label %loop.header.45

addr.null71:                                      ; preds = %loop.exit.45
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present72:                                   ; preds = %loop.exit.45
  %raw.clean.int76 = and i64 %addtmp69, 281474976710655
  %raw.clean.ptr77 = inttoptr i64 %raw.clean.int76 to ptr
  store i64 0, ptr %raw.clean.ptr77, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld84 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %ptr.res, ptr %rec.fld84, align 8
  %rec.fld85 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %ptr.res39, ptr %rec.fld85, align 8
  %rec.fld86 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %ptr.res30, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %choice.res, ptr %rec.fld87, align 8
  %rec.fld88 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %choice.res8, ptr %rec.fld88, align 8
  ret ptr %rec.alloc
}

define i64 @"mem::pool_count"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load
}

define i64 @"mem::pool_capacity"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define ptr @"mem::pool_alloc"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %raw.int = ptrtoint ptr %fld.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  %cmptmp = icmp eq i64 %raw.load, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %addr.present53, %entry
  %common.ret.op = phi ptr [ null, %entry ], [ %ptr.res71, %addr.present53 ]
  ret ptr %common.ret.op

choice.exit:                                      ; preds = %entry
  %subtmp = sub nuw i64 %raw.load, 1
  %fld.load5 = load ptr, ptr %fld.gep, align 8
  %raw.int7 = ptrtoint ptr %fld.load5 to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  store i64 %subtmp, ptr %raw.clean.ptr9, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %multmp = mul i64 %subtmp, 8
  %ptr.int.l = ptrtoint ptr %fld.load12 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit
  %raw.clean.int15 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr16 = inttoptr i64 %raw.clean.int15 to ptr
  %raw.load17 = load volatile i64, ptr %raw.clean.ptr16, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load20 to i64
  %addtmp23 = add i64 %ptr.int.l22, %raw.load17
  %ptr.res24 = inttoptr i64 %addtmp23 to ptr
  %addr.is.null27 = icmp eq ptr %ptr.res24, null
  br i1 %addr.is.null27, label %addr.null25, label %addr.present26

addr.null25:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present26:                                   ; preds = %addr.present
  %raw.clean.int30 = and i64 %addtmp23, 281474976710655
  %raw.clean.ptr31 = inttoptr i64 %raw.clean.int30 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr31, i8 1, i64 1, i1 false)
  %fld.load34 = load ptr, ptr %fld.gep, align 8
  %ptr.int.l35 = ptrtoint ptr %fld.load34 to i64
  %addtmp36 = add i64 %ptr.int.l35, 8
  %ptr.res37 = inttoptr i64 %addtmp36 to ptr
  %addr.is.null40 = icmp eq ptr %ptr.res37, null
  br i1 %addr.is.null40, label %addr.null38, label %addr.present39

addr.null38:                                      ; preds = %addr.present26
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present39:                                   ; preds = %addr.present26
  %raw.clean.int43 = and i64 %addtmp36, 281474976710655
  %raw.clean.ptr44 = inttoptr i64 %raw.clean.int43 to ptr
  %raw.load45 = load volatile i64, ptr %raw.clean.ptr44, align 8
  %fld.load48 = load ptr, ptr %fld.gep, align 8
  %ptr.int.l49 = ptrtoint ptr %fld.load48 to i64
  %addtmp50 = add i64 %ptr.int.l49, 8
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %addr.is.null54 = icmp eq ptr %ptr.res51, null
  br i1 %addr.is.null54, label %addr.null52, label %addr.present53

addr.null52:                                      ; preds = %addr.present39
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present53:                                   ; preds = %addr.present39
  %addtmp57 = add i64 %raw.load45, 1
  %raw.clean.int59 = and i64 %addtmp50, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  store i64 %addtmp57, ptr %raw.clean.ptr60, align 8
  %fld.load63 = load ptr, ptr %0, align 8
  %fld.gep66 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %multmp68 = mul i64 %raw.load17, %fld.load67
  %ptr.int.l69 = ptrtoint ptr %fld.load63 to i64
  %addtmp70 = add i64 %ptr.int.l69, %multmp68
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %addr.is.null74 = icmp eq ptr %ptr.res71, null
  br i1 %addr.is.null74, label %addr.null72, label %common.ret

addr.null72:                                      ; preds = %addr.present53
  call void @dva_abort_null_addr_cast()
  unreachable
}

define i1 @"mem::pool_free"(ptr %0, ptr %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %1 to i64
  %fld.load = load ptr, ptr %0, align 8
  %coerce.ptr2int2 = ptrtoint ptr %fld.load to i64
  %subtmp = sub i64 %coerce.ptr2int, %coerce.ptr2int2
  %cmptmp = icmp sge i64 %subtmp, 0
  br i1 %cmptmp, label %and.47.then, label %and.47.exit

and.47.then:                                      ; preds = %entry
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %multmp = mul i64 %fld.load6, %fld.load9
  %cmptmp10 = icmp slt i64 %subtmp, %multmp
  br label %and.47.exit

and.47.exit:                                      ; preds = %entry, %and.47.then
  %and.47.phi = phi i1 [ %cmptmp10, %and.47.then ], [ false, %entry ]
  %nottmp = xor i1 %and.47.phi, true
  br i1 %nottmp, label %common.ret, label %choice.exit11

common.ret:                                       ; preds = %addr.present, %div.ok, %and.47.exit, %addr.present111
  %common.ret.op = phi i1 [ true, %addr.present111 ], [ false, %and.47.exit ], [ false, %div.ok ], [ false, %addr.present ]
  ret i1 %common.ret.op

choice.exit11:                                    ; preds = %and.47.exit
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %div.is.zero = icmp eq i64 %fld.load15, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

div.notzero:                                      ; preds = %choice.exit11
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %fld.load15, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit11
  call void @dva_abort_div_zero_msg()
  unreachable

div.ok:                                           ; preds = %div.notzero
  %divtmp = sdiv i64 %subtmp, %fld.load15
  %modtmp = srem i64 %subtmp, %fld.load15
  %cmptmp31 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp31, label %common.ret, label %choice.exit33

div.ovf_abort:                                    ; preds = %div.notzero
  call void @dva_abort_div_ovf_msg()
  unreachable

choice.exit33:                                    ; preds = %div.ok
  %fld.gep36 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %ptr.int.l = ptrtoint ptr %fld.load37 to i64
  %addtmp = add i64 %ptr.int.l, %divtmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit33
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit33
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp41 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp41, label %common.ret, label %choice.exit43

choice.exit43:                                    ; preds = %addr.present
  %fld.load47 = load ptr, ptr %fld.gep36, align 8
  %ptr.int.l49 = ptrtoint ptr %fld.load47 to i64
  %addtmp50 = add i64 %ptr.int.l49, %divtmp
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %addr.is.null54 = icmp eq ptr %ptr.res51, null
  br i1 %addr.is.null54, label %addr.null52, label %addr.present53

addr.null52:                                      ; preds = %choice.exit43
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present53:                                   ; preds = %choice.exit43
  %raw.clean.int57 = and i64 %addtmp50, 281474976710655
  %raw.clean.ptr58 = inttoptr i64 %raw.clean.int57 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr58, i8 0, i64 1, i1 false)
  %fld.gep60 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %raw.int62 = ptrtoint ptr %fld.load61 to i64
  %raw.clean.int63 = and i64 %raw.int62, 281474976710655
  %raw.clean.ptr64 = inttoptr i64 %raw.clean.int63 to ptr
  %raw.load65 = load volatile i64, ptr %raw.clean.ptr64, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %multmp70 = mul i64 %raw.load65, 8
  %ptr.int.l71 = ptrtoint ptr %fld.load68 to i64
  %addtmp72 = add i64 %ptr.int.l71, %multmp70
  %ptr.res73 = inttoptr i64 %addtmp72 to ptr
  %addr.is.null76 = icmp eq ptr %ptr.res73, null
  br i1 %addr.is.null76, label %addr.null74, label %addr.present75

addr.null74:                                      ; preds = %addr.present53
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present75:                                   ; preds = %addr.present53
  %raw.clean.int80 = and i64 %addtmp72, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  store i64 %divtmp, ptr %raw.clean.ptr81, align 8
  %fld.load84 = load ptr, ptr %fld.gep60, align 8
  %addtmp86 = add i64 %raw.load65, 1
  %raw.int87 = ptrtoint ptr %fld.load84 to i64
  %raw.clean.int88 = and i64 %raw.int87, 281474976710655
  %raw.clean.ptr89 = inttoptr i64 %raw.clean.int88 to ptr
  store i64 %addtmp86, ptr %raw.clean.ptr89, align 8
  %fld.load92 = load ptr, ptr %fld.gep60, align 8
  %ptr.int.l93 = ptrtoint ptr %fld.load92 to i64
  %addtmp94 = add i64 %ptr.int.l93, 8
  %ptr.res95 = inttoptr i64 %addtmp94 to ptr
  %addr.is.null98 = icmp eq ptr %ptr.res95, null
  br i1 %addr.is.null98, label %addr.null96, label %addr.present97

addr.null96:                                      ; preds = %addr.present75
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present97:                                   ; preds = %addr.present75
  %raw.clean.int101 = and i64 %addtmp94, 281474976710655
  %raw.clean.ptr102 = inttoptr i64 %raw.clean.int101 to ptr
  %raw.load103 = load volatile i64, ptr %raw.clean.ptr102, align 8
  %fld.load106 = load ptr, ptr %fld.gep60, align 8
  %ptr.int.l107 = ptrtoint ptr %fld.load106 to i64
  %addtmp108 = add i64 %ptr.int.l107, 8
  %ptr.res109 = inttoptr i64 %addtmp108 to ptr
  %addr.is.null112 = icmp eq ptr %ptr.res109, null
  br i1 %addr.is.null112, label %addr.null110, label %addr.present111

addr.null110:                                     ; preds = %addr.present97
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present111:                                  ; preds = %addr.present97
  %subtmp115 = sub i64 %raw.load103, 1
  %raw.clean.int117 = and i64 %addtmp108, 281474976710655
  %raw.clean.ptr118 = inttoptr i64 %raw.clean.int117 to ptr
  store i64 %subtmp115, ptr %raw.clean.ptr118, align 8
  br label %common.ret
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable
}

define void @"mem::pool_destroy"(ptr %0) #0 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  ret void
}

define void @"mem::pool_for_each"(ptr %0, ptr %1) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %choice.exit, %entry
  %loop.idx.49.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.49.0, %fld.load
  br i1 %loop.cond, label %loop.body.49, label %loop.exit.49

loop.body.49:                                     ; preds = %loop.header.49
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load3 to i64
  %addtmp = add i64 %ptr.int.l, %loop.idx.49.0
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

loop.exit.49:                                     ; preds = %loop.header.49
  ret void

addr.null:                                        ; preds = %loop.body.49
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %loop.body.49
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %addtmp, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %addr.present
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %addr.present
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %1, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %fld.load8 = load ptr, ptr %0, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %loop.idx.49.0, %fld.load12
  %ptr.int.l13 = ptrtoint ptr %fld.load8 to i64
  %addtmp14 = add i64 %ptr.int.l13, %multmp
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %addr.is.null18 = icmp eq ptr %ptr.res15, null
  br i1 %addr.is.null18, label %addr.null16, label %addr.present17

choice.exit:                                      ; preds = %clo.cap, %clo.plain, %addr_ok
  %loop.next = add i64 %loop.idx.49.0, 1
  br label %loop.header.49

addr.null16:                                      ; preds = %choice.then
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present17:                                   ; preds = %choice.then
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %addr.present17
  call void %clo.fn.load(ptr %clo.env.load, ptr %ptr.res15)
  br label %choice.exit

clo.plain:                                        ; preds = %addr.present17
  call void %clo.fn.load(ptr %ptr.res15)
  br label %choice.exit
}

define { i1, i64 } @"mem::index_byte"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %cmptmp = icmp sle i64 %2, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %choice.exit
  %common.ret.op = phi { i1, i64 } [ %choice.res, %choice.exit ], [ zeroinitializer, %entry ]
  ret { i1, i64 } %common.ret.op

choice.exit:                                      ; preds = %entry
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %bandtmp = and i64 %1, 255
  %call.res = call ptr @memchr(ptr %addr.ffi.clean, i64 %bandtmp, i64 %2)
  %niche.ne.null = icmp ne ptr %call.res, null
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %subtmp = sub i64 %ptr.int.l, %addr.ffi.int
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  %choice.res = select i1 %niche.ne.null, { i1, i64 } %ram.pay, { i1, i64 } zeroinitializer
  br label %common.ret
}

attributes #0 = { "nounwind" }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { cold noinline "nounwind" }
