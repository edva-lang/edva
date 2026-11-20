; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@str.0 = internal unnamed_addr constant [5 x i8] c"poll\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"poll::backend_name", ptr null }
@"var.poll::backend_name" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"poll::poll_in", ptr null }
@"var.poll::poll_in" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"poll::stdin_ready", ptr null }
@"var.poll::stdin_ready" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_poll, ptr null }]

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #0 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #1

define internal void @__dva_global_init_poll() #2 {
entry:
  store ptr @clo.const, ptr @"var.poll::backend_name", align 8
  store ptr @clo.const.1, ptr @"var.poll::poll_in", align 8
  store ptr @clo.const.2, ptr @"var.poll::stdin_ready", align 8
  ret void
}

declare i64 @poll(ptr, i64, i64)

define { i64, ptr } @"poll::backend_name"() #2 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack
}

define i1 @"poll::poll_in"(i64 %0, i64 %1) #2 {
entry:
  %var.res = alloca i64, align 8
  %"var.pfd'" = alloca ptr, align 8
  %var.timeout_ms = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i16, i16 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i16, i16 }>, ptr %rec.alloc, i32 0, i32 0
  store i32 %coerce.trunc, ptr %rec.fld, align 4
  %rec.fld1 = getelementptr inbounds <{ i32, i16, i16 }>, ptr %rec.alloc, i32 0, i32 1
  store i16 1, ptr %rec.fld1, align 2
  %rec.fld2 = getelementptr inbounds <{ i32, i16, i16 }>, ptr %rec.alloc, i32 0, i32 2
  store i16 0, ptr %rec.fld2, align 2
  store ptr %rec.alloc, ptr %"var.pfd'", align 8
  %var.load3 = load ptr, ptr %"var.pfd'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load4 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 1, i64 %var.load4)
  store i64 %call.res, ptr %var.res, align 8
  %var.load5 = load i64, ptr %var.res, align 8
  %cmptmp = icmp sgt i64 %var.load5, 0
  br i1 %cmptmp, label %and.4.then, label %and.4.else

and.4.then:                                       ; preds = %entry
  %var.load6 = load ptr, ptr %"var.pfd'", align 8
  %fld.gep = getelementptr inbounds <{ i32, i16, i16 }>, ptr %var.load6, i32 0, i32 2
  %fld.load = load i16, ptr %fld.gep, align 2
  %coerce.sext = sext i16 %fld.load to i64
  %bandtmp = and i64 %coerce.sext, 1
  %cmptmp7 = icmp ne i64 %bandtmp, 0
  br label %and.4.exit

and.4.else:                                       ; preds = %entry
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %and.4.then
  %and.4.phi = phi i1 [ %cmptmp7, %and.4.then ], [ %cmptmp, %and.4.else ]
  ret i1 %and.4.phi
}

define i1 @"poll::stdin_ready"(i64 %0) #2 {
entry:
  %var.timeout_ms = alloca i64, align 8
  store i64 %0, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i1 @"poll::poll_in"(i64 0, i64 %var.load)
  ret i1 %call.res
}

attributes #0 = { alwaysinline "nounwind" }
attributes #1 = { noinline "nounwind" }
attributes #2 = { "nounwind" }
