; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.sys::STDIN" = global i64 0
@"var.sys::STDOUT" = global i64 1
@"var.sys::STDERR" = global i64 2
@clo.const = internal constant { ptr, ptr } { ptr @"sys::addr_is_null", ptr null }
@"var.sys::addr_is_null" = global ptr null
@null_addr_cast = internal unnamed_addr constant [40 x i8] c"E4015: cannot construct Addr from zero\0A\00"
@null_addr = internal unnamed_addr constant [48 x i8] c"E4014: null Addr in a present optional address\0A\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"sys::addr_opt", ptr null }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"sys::raw_argv", ptr null }
@"var.sys::raw_argv" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"sys::argv_matches", ptr null }
@"var.sys::argv_matches" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"sys::c_str", ptr null }
@"var.sys::c_str" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"sys::argv_string", ptr null }
@"var.sys::argv_string" = global ptr null
@"var.sys::addr_opt" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"sys::argv", ptr null }
@"var.sys::argv" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"sys::exit", ptr null }
@"var.sys::exit" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"sys::poll_in", ptr null }
@"var.sys::poll_in" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"sys::poll_out", ptr null }
@"var.sys::poll_out" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_sys, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

define internal void @__dva_global_init_sys() #3 {
entry:
  store i64 0, ptr @"var.sys::STDIN", align 8
  store i64 1, ptr @"var.sys::STDOUT", align 8
  store i64 2, ptr @"var.sys::STDERR", align 8
  store ptr @clo.const, ptr @"var.sys::addr_is_null", align 8
  store ptr @clo.const.2, ptr @"var.sys::raw_argv", align 8
  store ptr @clo.const.3, ptr @"var.sys::argv_matches", align 8
  store ptr @clo.const.4, ptr @"var.sys::c_str", align 8
  store ptr @clo.const.5, ptr @"var.sys::argv_string", align 8
  store ptr @clo.const.1, ptr @"var.sys::addr_opt", align 8
  store ptr @clo.const.6, ptr @"var.sys::argv", align 8
  store ptr @clo.const.7, ptr @"var.sys::exit", align 8
  store ptr @clo.const.8, ptr @"var.sys::poll_in", align 8
  store ptr @clo.const.9, ptr @"var.sys::poll_out", align 8
  ret void
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @strlen(ptr) #3

declare i64 @strcmp(ptr, ptr)

declare i64 @poll(ptr, i64, i64)

define i1 @"sys::addr_is_null"(ptr %0) #3 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  %cmptmp = icmp eq i64 %coerce.ptr2int, 0
  ret i1 %cmptmp
}

define ptr @"sys::raw_argv"(i64 %0) #3 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.46.then, label %and.46.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then, label %choice.else

choice.case:                                      ; preds = %and.46.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.46.exit
  br label %choice.exit

and.46.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @sys_argc_global, align 8
  %cmptmp2 = icmp slt i64 %var.load, %var.load1
  br label %and.46.exit

and.46.else:                                      ; preds = %entry
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %cmptmp2, %and.46.then ], [ %cmptmp, %and.46.else ]
  br i1 %and.46.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %var.load4 = load ptr, ptr @sys_argv_global, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %multmp = mul i64 %var.load5, 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit3

choice.exit3:                                     ; preds = %choice.else, %addr.present
  %choice.res6 = phi ptr [ %call.res, %addr.present ], [ null, %choice.else ]
  ret ptr %choice.res6

addr.null:                                        ; preds = %choice.then
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.then
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile ptr, ptr %raw.clean.ptr, align 8
  %call.res = call ptr @"sys::addr_opt"(ptr %raw.load)
  br label %choice.exit3

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr_cast() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr_cast, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"sys::addr_opt"(ptr %0) #3 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  %cmptmp = icmp ne i64 %coerce.ptr2int, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.a, align 8
  %addr.is.null = icmp eq ptr %var.load1, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr.present3
  %choice.res = phi ptr [ %var.load1, %addr.present3 ], [ null, %choice.else ]
  ret ptr %choice.res

addr.null:                                        ; preds = %choice.then
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.then
  %addr.is.null4 = icmp eq ptr %var.load1, null
  br i1 %addr.is.null4, label %addr.null2, label %addr.present3

abort.dead:                                       ; No predecessors!
  unreachable

addr.null2:                                       ; preds = %addr.present
  call void @dva_abort_null_addr()
  unreachable

addr.present3:                                    ; preds = %addr.present
  br label %choice.exit

abort.dead5:                                      ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"sys::argv_matches"(i64 %0, ptr %1) #3 {
entry:
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load1 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %arg.str.ptr3 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr4 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %arg.str.ptr5 = load i64, ptr %arg.str.ptr4, align 8
  %arg.str.ptr6 = and i64 %arg.str.ptr5, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr7, label %nulcopy

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ false, %choice.else ]
  ret i1 %choice.res

arg.str.ptr7:                                     ; preds = %choice.then
  br label %nulmerge

nulcopy:                                          ; preds = %choice.then
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len8

nulmerge:                                         ; preds = %nulcopy.len8, %arg.str.ptr7
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr3, %arg.str.ptr7 ], [ %nulcopy.buf, %nulcopy.len8 ]
  %call.res10 = call i64 @strcmp(ptr %addr.ffi.clean, ptr %arg.str.ptr9)
  %cmptmp = icmp eq i64 %call.res10, 0
  br label %choice.exit

nulcopy.len8:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len8
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"sys::c_str"(ptr %0) #3 {
entry:
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @strlen(ptr %addr.ffi.clean)
  store i64 %call.res, ptr %var.len, align 8
  %var.load1 = load i64, ptr %var.len, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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

b.buf.len2:                                       ; preds = %abort.dead, %entry
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load4 = load ptr, ptr %var.b, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %load.raw = load ptr, ptr %var.raw, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 8)
  %env.store.gep = getelementptr inbounds { ptr }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.raw, ptr %env.store.gep, align 8
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.85", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res8 = call i64 @"mem::write_tail"(ptr %var.load4, i64 %var.load5, ptr %clo.alloc)
  %var.load9 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  %b.freeze.len10 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  %b.freeze.data11 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

b.freeze.check:                                   ; preds = %b.buf.len2
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data11, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data11, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data11, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len10, 1
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data11, i64 %b.freeze.len10, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len10
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len2
  %b.freeze.data13 = phi ptr [ %b.freeze.data11, %b.buf.len2 ], [ %b.freeze.data11, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len10, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data13, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define internal i64 @"$anon_fn.85"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.n = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load ptr, ptr %env.gep, align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  %var.load6 = load i64, ptr %var.n, align 8
  ret i64 %var.load6
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"sys::argv_string"(i64 %0) #3 {
entry:
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load1 = load ptr, ptr %var.raw, align 8
  %call.res2 = call { i64, ptr } @"sys::c_str"(ptr %var.load1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then ], [ @str.0.struct, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"sys::argv"(i64 %0) #3 {
entry:
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"sys::raw_argv"(i64 %var.load)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load1 = load ptr, ptr %var.raw, align 8
  %call.res2 = call { i64, ptr } @"sys::c_str"(ptr %var.load1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then ], [ null, %choice.else ]
  %ret.niche.nn = icmp ne ptr %choice.res, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack
}

define void @"sys::exit"(i64 %0) #3 {
entry:
  %var.code = alloca i64, align 8
  store i64 %0, ptr %var.code, align 8
  %var.load = load i64, ptr %var.code, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  call void @exit(i32 %coerce.trunc)
  ret void
}

define i1 @"sys::poll_in"(i64 %0, i64 %1) #3 {
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
  br i1 %cmptmp, label %and.48.then, label %and.48.else

and.48.then:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %"var.pfd'", align 8
  %fld.gep = getelementptr inbounds <{ i32, i16, i16 }>, ptr %var.load6, i32 0, i32 2
  %fld.load = load i16, ptr %fld.gep, align 2
  %coerce.sext = sext i16 %fld.load to i64
  %bandtmp = and i64 %coerce.sext, 1
  %cmptmp7 = icmp ne i64 %bandtmp, 0
  br label %and.48.exit

and.48.else:                                      ; preds = %entry
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %and.48.then
  %and.48.phi = phi i1 [ %cmptmp7, %and.48.then ], [ %cmptmp, %and.48.else ]
  ret i1 %and.48.phi
}

define i1 @"sys::poll_out"(i64 %0, i64 %1) #3 {
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
  store i16 4, ptr %rec.fld1, align 2
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
  br i1 %cmptmp, label %and.49.then, label %and.49.else

and.49.then:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %"var.pfd'", align 8
  %fld.gep = getelementptr inbounds <{ i32, i16, i16 }>, ptr %var.load6, i32 0, i32 2
  %fld.load = load i16, ptr %fld.gep, align 2
  %coerce.sext = sext i16 %fld.load to i64
  %bandtmp = and i64 %coerce.sext, 4
  %cmptmp7 = icmp ne i64 %bandtmp, 0
  br label %and.49.exit

and.49.else:                                      ; preds = %entry
  br label %and.49.exit

and.49.exit:                                      ; preds = %and.49.else, %and.49.then
  %and.49.phi = phi i1 [ %cmptmp7, %and.49.then ], [ %cmptmp, %and.49.else ]
  ret i1 %and.49.phi
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
