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

define ptr @"mem::align_forward"(ptr %0, i64 %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %0 to i64
  %subtmp = sub i64 %1, 1
  %addtmp = add i64 %coerce.ptr2int, %subtmp
  %bitnottmp = xor i64 %subtmp, -1
  %bandtmp = and i64 %addtmp, %bitnottmp
  %cast.int2ptr = inttoptr i64 %bandtmp to ptr
  ret ptr %cast.int2ptr
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
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_set_current(ptr %addr.ffi.clean)
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

define { ptr, i64 } @"mem::arena"(i64 %0) #0 {
entry:
  %cmptmp = icmp sle i64 %0, 0
  %. = select i1 %cmptmp, i64 67108864, i64 %0
  %call.res = call ptr @malloc(i64 131632)
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %cmptmp3 = icmp ne i64 %ptr.int.l, 0
  br i1 %cmptmp3, label %choice.then4, label %choice.exit5

choice.then4:                                     ; preds = %entry
  %addr.ffi.masked = and i64 %ptr.int.l, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %.)
  br label %choice.exit5

choice.exit5:                                     ; preds = %choice.then4, %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %., ptr %rec.fld10, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.alloc, align 8
  ret { ptr, i64 } %ret.pack
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
  %fld.load = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %cmptmp = icmp ne i64 %ptr.int.l, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  call void @"mem::release"(ptr %0)
  %fld.load4 = load ptr, ptr %0, align 8
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
  %fld.load = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  %fld.load3 = load ptr, ptr %0, align 8
  %ptr.int.l4 = ptrtoint ptr %fld.load3 to i64
  %addtmp5 = add i64 %ptr.int.l4, 16
  %raw.clean.int8 = and i64 %addtmp5, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  %raw.load10 = load volatile i64, ptr %raw.clean.ptr9, align 8
  %cmptmp = icmp sgt i64 %raw.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %subtmp = sub nuw nsw i64 %raw.load, 1
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %multmp = mul i64 %subtmp, %fld.load15
  %addtmp17 = add i64 %multmp, %raw.load10
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi i64 [ %addtmp17, %choice.then ], [ %raw.load10, %entry ]
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, i64, i64 } poison, i64 %choice.res, 0
  %ret.pack.fca.1.insert = insertvalue { i64, i64, i64 } %ret.pack.fca.0.insert, i64 %raw.load, 1
  %ret.pack.fca.2.insert = insertvalue { i64, i64, i64 } %ret.pack.fca.1.insert, i64 %fld.load23, 2
  ret { i64, i64, i64 } %ret.pack.fca.2.insert
}

define { ptr, i64 } @"mem::global_arena"() #0 {
entry:
  %call.res = call ptr @"mem::set_current"(ptr null)
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
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #6 {
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
define internal void @dva_abort_stale_addr_msg() #7 {
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
  %raw.clean.int11 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr12 = inttoptr i64 %raw.clean.int11 to ptr
  %raw.load13 = load volatile i64, ptr %raw.clean.ptr12, align 8
  %fld.load16 = load ptr, ptr %0, align 8
  %ptr.int.l17 = ptrtoint ptr %fld.load16 to i64
  %addtmp18 = add i64 %ptr.int.l17, 16
  %raw.clean.int21 = and i64 %addtmp18, 281474976710655
  %raw.clean.ptr22 = inttoptr i64 %raw.clean.int21 to ptr
  %raw.load23 = load volatile i64, ptr %raw.clean.ptr22, align 8
  %cmptmp25 = icmp sgt i64 %raw.load13, 1
  %subtmp = sub i64 %raw.load13, 1
  %multmp = mul i64 %subtmp, %choice.res
  %addtmp32 = add i64 %multmp, %raw.load23
  %choice.res34 = select i1 %cmptmp25, i64 %addtmp32, i64 %raw.load23
  %fld.load37 = load ptr, ptr %0, align 8
  %ptr.int.l38 = ptrtoint ptr %fld.load37 to i64
  %addtmp39 = add i64 %ptr.int.l38, 131104
  %raw.clean.int42 = and i64 %addtmp39, 281474976710655
  %raw.clean.ptr43 = inttoptr i64 %raw.clean.int42 to ptr
  %raw.load44 = load volatile i64, ptr %raw.clean.ptr43, align 8
  %fld.load47 = load ptr, ptr %0, align 8
  %ptr.int.l48 = ptrtoint ptr %fld.load47 to i64
  %addtmp49 = add i64 %ptr.int.l48, 131112
  %raw.clean.int52 = and i64 %addtmp49, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  %raw.load54 = load volatile i64, ptr %raw.clean.ptr53, align 8
  %cmptmp56 = icmp sgt i64 %raw.load54, 0
  %choice.res61 = select i1 %cmptmp56, i64 %raw.load54, i64 1
  %fld.load64 = load ptr, ptr %0, align 8
  %ptr.int.l65 = ptrtoint ptr %fld.load64 to i64
  %addtmp66 = add i64 %ptr.int.l65, 131120
  %raw.clean.int69 = and i64 %addtmp66, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  %raw.load71 = load volatile i64, ptr %raw.clean.ptr70, align 8
  %fld.load74 = load ptr, ptr %0, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load74, ptr %rec.alloc, align 8
  %rec.fld80 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %choice.res61, ptr %rec.fld80, align 8
  %rec.fld81 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %raw.load44, ptr %rec.fld81, align 8
  %rec.fld82 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %raw.load71, ptr %rec.fld82, align 8
  %rec.fld83 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %choice.res34, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %raw.load13, ptr %rec.fld84, align 8
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
  %fld.load = load ptr, ptr %0, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %cmptmp = icmp eq i64 %ptr.int.l, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %loop.body.29, %loop.header.29, %choice.exit, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ false, %choice.exit ], [ false, %loop.header.29 ], [ true, %loop.body.29 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %entry
  %coerce.ptr2int = ptrtoint ptr %1 to i64
  %bandtmp = and i64 %coerce.ptr2int, 281474976710655
  %cmptmp3 = icmp eq i64 %bandtmp, 0
  br i1 %cmptmp3, label %common.ret, label %choice.exit5

choice.exit5:                                     ; preds = %choice.exit
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %cmptmp10 = icmp sgt i64 %fld.load9, 0
  br i1 %cmptmp10, label %choice.exit12, label %choice.else

choice.else:                                      ; preds = %choice.exit5
  %raw.clean.int = and i64 %ptr.int.l, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit12

choice.exit12:                                    ; preds = %choice.exit5, %choice.else
  %choice.res = phi i64 [ %raw.load, %choice.else ], [ %fld.load9, %choice.exit5 ]
  %fld.load21 = load ptr, ptr %0, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load21 to i64
  %addtmp = add i64 %ptr.int.l22, 8
  %raw.clean.int24 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr25 = inttoptr i64 %raw.clean.int24 to ptr
  %raw.load26 = load volatile i64, ptr %raw.clean.ptr25, align 8
  %fld.load29 = load ptr, ptr %0, align 8
  %ptr.int.l30 = ptrtoint ptr %fld.load29 to i64
  %addtmp31 = add i64 %ptr.int.l30, 16
  %raw.clean.int34 = and i64 %addtmp31, 281474976710655
  %raw.clean.ptr35 = inttoptr i64 %raw.clean.int34 to ptr
  %raw.load36 = load volatile i64, ptr %raw.clean.ptr35, align 8
  br label %loop.header.29

loop.header.29:                                   ; preds = %choice.exit71, %choice.exit12
  %loop.idx.29.0 = phi i64 [ 0, %choice.exit12 ], [ %loop.next, %choice.exit71 ]
  %loop.cond = icmp slt i64 %loop.idx.29.0, %raw.load26
  br i1 %loop.cond, label %loop.body.29, label %common.ret

loop.body.29:                                     ; preds = %loop.header.29
  %fld.load40 = load ptr, ptr %0, align 8
  %ptr.int.l41 = ptrtoint ptr %fld.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 24
  %multmp = mul i64 %loop.idx.29.0, 8
  %addtmp46 = add i64 %addtmp42, %multmp
  %raw.clean.int49 = and i64 %addtmp46, 281474976710655
  %raw.clean.ptr50 = inttoptr i64 %raw.clean.int49 to ptr
  %raw.load51 = load volatile i64, ptr %raw.clean.ptr50, align 8
  %bandtmp52 = and i64 %raw.load51, 281474976710655
  %subtmp = sub i64 %raw.load26, 1
  %cmptmp55 = icmp eq i64 %loop.idx.29.0, %subtmp
  %raw.load36.choice.res = select i1 %cmptmp55, i64 %raw.load36, i64 %choice.res
  %cmptmp64 = icmp sge i64 %bandtmp, %bandtmp52
  %addtmp68 = add i64 %bandtmp52, %raw.load36.choice.res
  %cmptmp69 = icmp slt i64 %bandtmp, %addtmp68
  %and.30.phi = select i1 %cmptmp64, i1 %cmptmp69, i1 false
  br i1 %and.30.phi, label %common.ret, label %choice.exit71

choice.exit71:                                    ; preds = %loop.body.29
  %loop.next = add i64 %loop.idx.29.0, 1
  br label %loop.header.29
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
  %call.res = call ptr @"mem::set_current"(ptr null)
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
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %addtmp24 = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp24 to ptr
  %addtmp28 = add i64 %addtmp24, %multmp12
  %ptr.res29 = inttoptr i64 %addtmp28 to ptr
  %addtmp33 = add i64 %addtmp28, 16
  %ptr.res34 = inttoptr i64 %addtmp33 to ptr
  %raw.clean.int = and i64 %addtmp33, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %choice.res8, i1 false)
  br label %loop.header.32

loop.header.32:                                   ; preds = %loop.body.32, %entry
  %loop.idx.32.0 = phi i64 [ 0, %entry ], [ %loop.next, %loop.body.32 ]
  %loop.cond = icmp slt i64 %loop.idx.32.0, %choice.res8
  br i1 %loop.cond, label %loop.body.32, label %loop.exit.32

loop.body.32:                                     ; preds = %loop.header.32
  %multmp40 = mul i64 %loop.idx.32.0, 8
  %addtmp42 = add i64 %addtmp24, %multmp40
  %raw.clean.int46 = and i64 %addtmp42, 281474976710655
  %raw.clean.ptr47 = inttoptr i64 %raw.clean.int46 to ptr
  store i64 %loop.idx.32.0, ptr %raw.clean.ptr47, align 8
  %loop.next = add i64 %loop.idx.32.0, 1
  br label %loop.header.32

loop.exit.32:                                     ; preds = %loop.header.32
  %raw.clean.int52 = and i64 %addtmp28, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  store i64 %choice.res8, ptr %raw.clean.ptr53, align 8
  %addtmp56 = add i64 %addtmp28, 8
  %raw.clean.int59 = and i64 %addtmp56, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  store i64 0, ptr %raw.clean.ptr60, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %ptr.res, ptr %rec.fld67, align 8
  %rec.fld68 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %ptr.res34, ptr %rec.fld68, align 8
  %rec.fld69 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %ptr.res29, ptr %rec.fld69, align 8
  %rec.fld70 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %choice.res, ptr %rec.fld70, align 8
  %rec.fld71 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %choice.res8, ptr %rec.fld71, align 8
  ret ptr %rec.alloc
}

define i64 @"mem::pool_count"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
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

define { i1, i64 } @"mem::pool_alloc"(ptr %0) #0 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %raw.int = ptrtoint ptr %fld.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  %cmptmp = icmp eq i64 %raw.load, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %choice.exit
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.exit ], [ zeroinitializer, %entry ]
  ret { i1, i64 } %common.ret.op

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
  %raw.clean.int15 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr16 = inttoptr i64 %raw.clean.int15 to ptr
  %raw.load17 = load volatile i64, ptr %raw.clean.ptr16, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %ptr.int.l22 = ptrtoint ptr %fld.load20 to i64
  %addtmp23 = add i64 %ptr.int.l22, %raw.load17
  %raw.clean.int26 = and i64 %addtmp23, 281474976710655
  %raw.clean.ptr27 = inttoptr i64 %raw.clean.int26 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr27, i8 1, i64 1, i1 false)
  %fld.load30 = load ptr, ptr %fld.gep, align 8
  %ptr.int.l31 = ptrtoint ptr %fld.load30 to i64
  %addtmp32 = add i64 %ptr.int.l31, 8
  %raw.clean.int35 = and i64 %addtmp32, 281474976710655
  %raw.clean.ptr36 = inttoptr i64 %raw.clean.int35 to ptr
  %raw.load37 = load volatile i64, ptr %raw.clean.ptr36, align 8
  %fld.load40 = load ptr, ptr %fld.gep, align 8
  %ptr.int.l41 = ptrtoint ptr %fld.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 8
  %addtmp45 = add i64 %raw.load37, 1
  %raw.clean.int47 = and i64 %addtmp42, 281474976710655
  %raw.clean.ptr48 = inttoptr i64 %raw.clean.int47 to ptr
  store i64 %addtmp45, ptr %raw.clean.ptr48, align 8
  %fld.load51 = load ptr, ptr %0, align 8
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %multmp56 = mul i64 %raw.load17, %fld.load55
  %ptr.int.l57 = ptrtoint ptr %fld.load51 to i64
  %addtmp58 = add i64 %ptr.int.l57, %multmp56
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp58, 1
  br label %common.ret
}

define i1 @"mem::pool_free"(ptr %0, ptr %1) #0 {
entry:
  %coerce.ptr2int = ptrtoint ptr %1 to i64
  %fld.load = load ptr, ptr %0, align 8
  %coerce.ptr2int2 = ptrtoint ptr %fld.load to i64
  %subtmp = sub i64 %coerce.ptr2int, %coerce.ptr2int2
  %cmptmp = icmp sge i64 %subtmp, 0
  br i1 %cmptmp, label %and.34.then, label %and.34.exit

and.34.then:                                      ; preds = %entry
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %multmp = mul i64 %fld.load6, %fld.load9
  %cmptmp10 = icmp slt i64 %subtmp, %multmp
  br label %and.34.exit

and.34.exit:                                      ; preds = %entry, %and.34.then
  %and.34.phi = phi i1 [ %cmptmp10, %and.34.then ], [ false, %entry ]
  %nottmp = xor i1 %and.34.phi, true
  br i1 %nottmp, label %common.ret, label %choice.exit11

common.ret:                                       ; preds = %choice.exit33, %div.ok, %and.34.exit, %choice.exit42
  %common.ret.op = phi i1 [ true, %choice.exit42 ], [ false, %and.34.exit ], [ false, %div.ok ], [ false, %choice.exit33 ]
  ret i1 %common.ret.op

choice.exit11:                                    ; preds = %and.34.exit
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
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp40 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp40, label %common.ret, label %choice.exit42

choice.exit42:                                    ; preds = %choice.exit33
  %fld.load46 = load ptr, ptr %fld.gep36, align 8
  %ptr.int.l48 = ptrtoint ptr %fld.load46 to i64
  %addtmp49 = add i64 %ptr.int.l48, %divtmp
  %raw.clean.int52 = and i64 %addtmp49, 281474976710655
  %raw.clean.ptr53 = inttoptr i64 %raw.clean.int52 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr53, i8 0, i64 1, i1 false)
  %fld.gep55 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  %raw.int57 = ptrtoint ptr %fld.load56 to i64
  %raw.clean.int58 = and i64 %raw.int57, 281474976710655
  %raw.clean.ptr59 = inttoptr i64 %raw.clean.int58 to ptr
  %raw.load60 = load volatile i64, ptr %raw.clean.ptr59, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %multmp65 = mul i64 %raw.load60, 8
  %ptr.int.l66 = ptrtoint ptr %fld.load63 to i64
  %addtmp67 = add i64 %ptr.int.l66, %multmp65
  %raw.clean.int71 = and i64 %addtmp67, 281474976710655
  %raw.clean.ptr72 = inttoptr i64 %raw.clean.int71 to ptr
  store i64 %divtmp, ptr %raw.clean.ptr72, align 8
  %fld.load75 = load ptr, ptr %fld.gep55, align 8
  %addtmp77 = add i64 %raw.load60, 1
  %raw.int78 = ptrtoint ptr %fld.load75 to i64
  %raw.clean.int79 = and i64 %raw.int78, 281474976710655
  %raw.clean.ptr80 = inttoptr i64 %raw.clean.int79 to ptr
  store i64 %addtmp77, ptr %raw.clean.ptr80, align 8
  %fld.load83 = load ptr, ptr %fld.gep55, align 8
  %ptr.int.l84 = ptrtoint ptr %fld.load83 to i64
  %addtmp85 = add i64 %ptr.int.l84, 8
  %raw.clean.int88 = and i64 %addtmp85, 281474976710655
  %raw.clean.ptr89 = inttoptr i64 %raw.clean.int88 to ptr
  %raw.load90 = load volatile i64, ptr %raw.clean.ptr89, align 8
  %fld.load93 = load ptr, ptr %fld.gep55, align 8
  %ptr.int.l94 = ptrtoint ptr %fld.load93 to i64
  %addtmp95 = add i64 %ptr.int.l94, 8
  %subtmp98 = sub i64 %raw.load90, 1
  %raw.clean.int100 = and i64 %addtmp95, 281474976710655
  %raw.clean.ptr101 = inttoptr i64 %raw.clean.int100 to ptr
  store i64 %subtmp98, ptr %raw.clean.ptr101, align 8
  br label %common.ret
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #7 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #7 {
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
  br label %loop.header.36

loop.header.36:                                   ; preds = %choice.exit, %entry
  %loop.idx.36.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.36.0, %fld.load
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.36

loop.body.36:                                     ; preds = %loop.header.36
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load3 to i64
  %addtmp = add i64 %ptr.int.l, %loop.idx.36.0
  %raw.clean.int = and i64 %addtmp, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %addtmp, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

loop.exit.36:                                     ; preds = %loop.header.36
  ret void

addr_ok:                                          ; preds = %tag.slow_check, %loop.body.36
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %loop.body.36
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %1, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %fld.load8 = load ptr, ptr %0, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %loop.idx.36.0, %fld.load12
  %ptr.int.l13 = ptrtoint ptr %fld.load8 to i64
  %addtmp14 = add i64 %ptr.int.l13, %multmp
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

choice.exit:                                      ; preds = %clo.cap, %clo.plain, %addr_ok
  %loop.next = add i64 %loop.idx.36.0, 1
  br label %loop.header.36

clo.cap:                                          ; preds = %choice.then
  call void %clo.fn.load(ptr %clo.env.load, ptr %ptr.res15)
  br label %choice.exit

clo.plain:                                        ; preds = %choice.then
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
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %cmptmp5 = icmp eq i64 %ptr.int.l, 0
  %subtmp = sub i64 %ptr.int.l, %addr.ffi.int
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  %choice.res = select i1 %cmptmp5, { i1, i64 } zeroinitializer, { i1, i64 } %ram.pay
  br label %common.ret
}

attributes #0 = { "nounwind" }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noinline "nounwind" }
attributes #7 = { cold noinline noreturn "nounwind" }
