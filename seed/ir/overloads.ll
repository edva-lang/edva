; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"overloads::unknown", ptr null }
@"var.overloads::unknown" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"overloads::contains", ptr null }
@"var.overloads::contains" = global ptr null
@str.0 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.0 }
@str.1 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.1 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"overloads::name_of", ptr null }
@"var.overloads::name_of" = global ptr null
@str.2 = internal unnamed_addr constant [7 x i8] c"$arity\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.2 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"overloads::symbol", ptr null }
@"var.overloads::symbol" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"overloads::is_family", ptr null }
@"var.overloads::is_family" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"overloads::name_is_qualified", ptr null }
@"var.overloads::name_is_qualified" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"overloads::decl_module_find", ptr null }
@"var.overloads::decl_module_find" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"overloads::decl_module", ptr null }
@"var.overloads::decl_module" = global ptr null
@str.3 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"overloads::resolve_family_name", ptr null }
@"var.overloads::resolve_family_name" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"overloads::has_variants", ptr null }
@"var.overloads::has_variants" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"overloads::signature", ptr null }
@"var.overloads::signature" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"overloads::select_value", ptr null }
@"var.overloads::select_value" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.12 = internal constant { ptr, ptr } { ptr @"overloads::application", ptr null }
@"var.overloads::application" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"overloads::keep_type", ptr null }
@"var.overloads::keep_type" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"overloads::keep_fparams", ptr null }
@"var.overloads::keep_fparams" = global ptr null
@str.4 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.4 }
@str.5 = internal unnamed_addr constant [14 x i8] c"overloads.dva\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.5 }
@str.6 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.6 }
@dva_thread_rec = external thread_local global ptr
@clo.const.15 = internal constant { ptr, ptr } { ptr @"overloads::walk_call", ptr null }
@str.7 = internal unnamed_addr constant [16 x i8] c"#overload_local\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.7 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"overloads::walk", ptr null }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"overloads::walk_many", ptr null }
@"var.overloads::walk_many" = global ptr null
@"var.overloads::walk_call" = global ptr null
@"var.overloads::walk" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"overloads::resolve", ptr null }
@"var.overloads::resolve" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_overloads, ptr null }]

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

define internal void @__dva_global_init_overloads() #3 {
entry:
  store ptr @clo.const, ptr @"var.overloads::unknown", align 8
  store ptr @clo.const.1, ptr @"var.overloads::contains", align 8
  store ptr @clo.const.2, ptr @"var.overloads::name_of", align 8
  store ptr @clo.const.3, ptr @"var.overloads::symbol", align 8
  store ptr @clo.const.4, ptr @"var.overloads::is_family", align 8
  store ptr @clo.const.5, ptr @"var.overloads::name_is_qualified", align 8
  store ptr @clo.const.6, ptr @"var.overloads::decl_module_find", align 8
  store ptr @clo.const.7, ptr @"var.overloads::decl_module", align 8
  store ptr @clo.const.8, ptr @"var.overloads::resolve_family_name", align 8
  store ptr @clo.const.9, ptr @"var.overloads::has_variants", align 8
  store ptr @clo.const.10, ptr @"var.overloads::signature", align 8
  store ptr @clo.const.11, ptr @"var.overloads::select_value", align 8
  store ptr @clo.const.12, ptr @"var.overloads::application", align 8
  store ptr @clo.const.13, ptr @"var.overloads::keep_type", align 8
  store ptr @clo.const.14, ptr @"var.overloads::keep_fparams", align 8
  store ptr @clo.const.17, ptr @"var.overloads::walk_many", align 8
  store ptr @clo.const.15, ptr @"var.overloads::walk_call", align 8
  store ptr @clo.const.16, ptr @"var.overloads::walk", align 8
  store ptr @clo.const.18, ptr @"var.overloads::resolve", align 8
  ret void
}

define ptr @"overloads::unknown"() #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 0, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  ret ptr %enum.alloc
}

define i1 @"overloads::contains"(ptr %0, ptr %1) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  store ptr %1, ptr %var.name, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr %var.names, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.names, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %a.after
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load5 = load ptr, ptr %var.n, align 8
  %var.load6 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load13 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load13

str.eq.then:                                      ; preds = %loop.body.59
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.59
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %str.eq.merge
  br label %loop.latch.59
}

declare i32 @memcmp(ptr, ptr, i64) #3

define { i64, ptr } @"overloads::name_of"(ptr %0) #3 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.m = alloca ptr, align 8
  %var._9 = alloca ptr, align 8
  %var.n = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next3, %choice.exit11, %choice.case
  %choice.res42 = phi ptr [ %var.load1, %choice.case ], [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.next3 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res42, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.n, align 8
  %var.load1 = load ptr, ptr %var.n, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id5 = load i64, ptr %tag.gep4, align 8
  %tag.match6 = icmp eq i64 %tag.id5, 16
  br i1 %tag.match6, label %choice.case2, label %choice.next3

choice.case2:                                     ; preds = %choice.next
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr8 = load ptr, ptr %pay.gep7, align 8
  store ptr %payload.ptr8, ptr %var._9, align 8
  store ptr %payload.ptr8, ptr %var.m, align 8
  %var.load10 = load ptr, ptr %var.m, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 2
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.else

choice.next3:                                     ; preds = %choice.next
  br label %choice.exit

choice.then:                                      ; preds = %choice.case2
  %var.load12 = load ptr, ptr %var.m, align 8
  %fld.gep13 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %call.res = call { i64, ptr } @"overloads::name_of"(ptr %fld.load14)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %cat.seg15 = load i64, ptr %cat.seg, align 8
  %cat.seg16 = and i64 %cat.seg15, 281474976710655
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load19 = load ptr, ptr %var.m, align 8
  %fld.gep20 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load19, i32 0, i32 1
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %cat.seg25 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %cat.seg26 = load ptr, ptr %cat.seg25, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg16, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len27

choice.else:                                      ; preds = %choice.case2
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %concat.tot.len36
  %choice.res = phi ptr [ %concat.str, %concat.tot.len36 ], [ @str.1.struct, %choice.else ]
  br label %choice.exit

cat.sum.len27:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum29 = extractvalue { i64, i1 } %cat.sum.len28, 0
  %ovf30 = extractvalue { i64, i1 } %cat.sum.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %cat.sum.len31

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len27

cat.sum.len31:                                    ; preds = %abort.dead33, %cat.sum.len27
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum29, i64 1)
  %sum34 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf35 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf35, label %str_overflow_abort37, label %concat.tot.len36

str_overflow_abort32:                             ; preds = %cat.sum.len27
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %cat.sum.len31

concat.tot.len36:                                 ; preds = %abort.dead38, %cat.sum.len31
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum34)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg18, i64 %cat.seg16, i1 false)
  %cat.off = add i64 0, %cat.seg16
  %cat.dst39 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst39, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off40 = add i64 %cat.off, 2
  %cat.dst41 = getelementptr i8, ptr %concat.buf, i64 %cat.off40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst41, ptr align 1 %cat.seg26, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum29
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum29, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit11

str_overflow_abort37:                             ; preds = %cat.sum.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %concat.tot.len36
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"overloads::symbol"(ptr %0, i64 %1) #3 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %var.arity = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.arity, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %var.load5 = load i64, ptr %var.arity, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load5, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 6)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

cat.sum.len6:                                     ; preds = %abort.dead, %entry
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len6

cat.sum.len10:                                    ; preds = %abort.dead12, %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum8, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort11:                             ; preds = %cat.sum.len6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %cat.sum.len10

concat.tot.len15:                                 ; preds = %abort.dead17, %cat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum13)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst18 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst18, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.off19 = add i64 %cat.off, 6
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum8
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort16:                             ; preds = %cat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %concat.tot.len15
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  ret i64 1

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.km1 = sub i64 %fmt.k.next, 1
  %fmt.sidx = sub i64 %fmt.km1, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  ret i64 %fmt.tot
}

define i1 @"overloads::is_family"(ptr %0, ptr %1) #3 {
entry:
  %var.name = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"overloads::contains"(ptr %fld.load, ptr %var.load1)
  ret i1 %call.res
}

define i1 @"overloads::name_is_qualified"(ptr %0, i64 %1) #3 {
entry:
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.61.then, label %and.61.else

and.61.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.61.else:                                      ; preds = %entry
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %idx_ok
  %and.61.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.61.else ]
  br i1 %and.61.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.61.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.61.exit

idx_oob:                                          ; preds = %and.61.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.61.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.61.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res47 = phi i1 [ %choice.res, %choice.exit43 ], [ false, %choice.else ]
  ret i1 %choice.res47

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.62.then, label %and.62.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.62.then:                                      ; preds = %idx_ok18
  %var.load25 = load ptr, ptr %var.name, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.i, align 8
  %addtmp32 = add i64 %var.load31, 1
  %idx.oob33 = icmp uge i64 %addtmp32, %s.read.len28
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

and.62.else:                                      ; preds = %idx_ok18
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok34
  %and.62.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.62.else ]
  br i1 %and.62.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.62.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.62.exit

idx_oob35:                                        ; preds = %and.62.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.62.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.62.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 1
  %call.res = call i1 @"overloads::name_is_qualified"(ptr %var.load44, i64 %addtmp46)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i1 [ true, %choice.then41 ], [ %call.res, %choice.else42 ]
  br label %choice.exit
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i64 @"overloads::decl_module_find"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %var.last = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.last, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.63.then, label %and.63.else

and.63.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.63.else:                                      ; preds = %entry
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %idx_ok
  %and.63.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.63.else ]
  br i1 %and.63.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.63.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp ne i64 %s.byte.val, 36
  br label %and.63.exit

idx_oob:                                          ; preds = %and.63.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.63.exit
  %var.load10 = load ptr, ptr %var.name, align 8
  %s.read.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob17 = icmp uge i64 %var.load16, %s.read.len13
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

choice.else:                                      ; preds = %and.63.exit
  %var.load53 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res54 = phi i64 [ %choice.res, %choice.exit43 ], [ %var.load53, %choice.else ]
  ret i64 %choice.res54

idx_ok18:                                         ; preds = %abort.dead20, %choice.then
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 58
  br i1 %cmptmp24, label %and.64.then, label %and.64.else

idx_oob19:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

and.64.then:                                      ; preds = %idx_ok18
  %var.load25 = load ptr, ptr %var.name, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.i, align 8
  %addtmp32 = add i64 %var.load31, 1
  %idx.oob33 = icmp uge i64 %addtmp32, %s.read.len28
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

and.64.else:                                      ; preds = %idx_ok18
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %idx_ok34
  %and.64.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp24, %and.64.else ]
  br i1 %and.64.phi, label %choice.then41, label %choice.else42

idx_ok34:                                         ; preds = %abort.dead36, %and.64.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.64.exit

idx_oob35:                                        ; preds = %and.64.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.then41:                                    ; preds = %and.64.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"overloads::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.64.exit
  %var.load48 = load ptr, ptr %var.name, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %addtmp50 = add i64 %var.load49, 1
  %var.load51 = load i64, ptr %var.last, align 8
  %call.res52 = call i64 @"overloads::decl_module_find"(ptr %var.load48, i64 %addtmp50, i64 %var.load51)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i64 [ %call.res, %choice.then41 ], [ %call.res52, %choice.else42 ]
  br label %choice.exit
}

define { i64, ptr } @"overloads::decl_module"(ptr %0, i64 %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.last = alloca i64, align 8
  %var.ignored = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.ignored, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i64 @"overloads::decl_module_find"(ptr %var.load, i64 0, i64 -1)
  store i64 %call.res, ptr %var.last, align 8
  %var.load1 = load i64, ptr %var.last, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.last, align 8
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load6, 0
  %rel.end = add i64 %s.read.len4, %var.load6
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load6
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.1.struct, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"overloads::resolve_family_name"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %var.priv = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.cur_mod = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.cur_mod, align 8
  %var.load = load ptr, ptr %var.cur_mod, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.65.then, label %or.65.else

or.65.then:                                       ; preds = %str.eq.merge
  br label %or.65.exit

or.65.else:                                       ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"overloads::name_is_qualified"(ptr %var.load5, i64 0)
  br label %or.65.exit

or.65.exit:                                       ; preds = %or.65.else, %or.65.then
  %or.65.phi = phi i1 [ %str.eq.result, %or.65.then ], [ %call.res, %or.65.else ]
  br i1 %or.65.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.65.exit
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %call.res8 = call i1 @"overloads::is_family"(ptr %var.load6, ptr %var.load7)
  br i1 %call.res8, label %choice.then9, label %choice.else10

choice.else:                                      ; preds = %or.65.exit
  %var.load13 = load ptr, ptr %var.cur_mod, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %cat.seg14 = load i64, ptr %cat.seg, align 8
  %cat.seg15 = and i64 %cat.seg14, 281474976710655
  %cat.seg16 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cat.seg17 = load ptr, ptr %cat.seg16, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load18 = load ptr, ptr %var.name, align 8
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %cat.seg20 = load i64, ptr %cat.seg19, align 8
  %cat.seg21 = and i64 %cat.seg20, 281474976710655
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %cat.seg23 = load ptr, ptr %cat.seg22, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg15, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len24

choice.exit:                                      ; preds = %choice.exit93, %choice.exit11
  %choice.res97 = phi ptr [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.exit93 ]
  %ret.pack98 = load { i64, ptr }, ptr %choice.res97, align 8
  ret { i64, ptr } %ret.pack98

choice.then9:                                     ; preds = %choice.then
  %var.load12 = load ptr, ptr %var.name, align 8
  br label %choice.exit11

choice.else10:                                    ; preds = %choice.then
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %var.load12, %choice.then9 ], [ @str.1.struct, %choice.else10 ]
  br label %choice.exit

cat.sum.len24:                                    ; preds = %abort.dead, %choice.else
  %cat.sum.len25 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg21)
  %sum26 = extractvalue { i64, i1 } %cat.sum.len25, 0
  %ovf27 = extractvalue { i64, i1 } %cat.sum.len25, 1
  br i1 %ovf27, label %str_overflow_abort29, label %cat.sum.len28

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len24

cat.sum.len28:                                    ; preds = %abort.dead30, %cat.sum.len24
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum26, i64 1)
  %sum31 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf32 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %concat.tot.len33

str_overflow_abort29:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %cat.sum.len28

concat.tot.len33:                                 ; preds = %abort.dead35, %cat.sum.len28
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum31)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg17, i64 %cat.seg15, i1 false)
  %cat.off = add i64 0, %cat.seg15
  %cat.dst36 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst36, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off37 = add i64 %cat.off, 2
  %cat.dst38 = getelementptr i8, ptr %concat.buf, i64 %cat.off37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst38, ptr align 1 %cat.seg23, i64 %cat.seg21, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum26
  store i8 0, ptr %concat.nul, align 1
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub, align 8
  %var.load40 = load ptr, ptr %var.ctx, align 8
  %var.load41 = load ptr, ptr %var.pub, align 8
  %call.res42 = call i1 @"overloads::is_family"(ptr %var.load40, ptr %var.load41)
  br i1 %call.res42, label %choice.then43, label %choice.exit44

str_overflow_abort34:                             ; preds = %cat.sum.len28
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %concat.tot.len33

choice.then43:                                    ; preds = %concat.tot.len33
  %var.load45 = load ptr, ptr %var.pub, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load45, align 8
  ret { i64, ptr } %ret.pack

choice.exit44:                                    ; preds = %ret.dead, %concat.tot.len33
  %var.load46 = load ptr, ptr %var.cur_mod, align 8
  %cat.seg47 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %cat.seg48 = load i64, ptr %cat.seg47, align 8
  %cat.seg49 = and i64 %cat.seg48, 281474976710655
  %cat.seg50 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %cat.seg51 = load ptr, ptr %cat.seg50, align 8
  %cat.lit.data52 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %var.load53 = load ptr, ptr %var.name, align 8
  %cat.seg54 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %cat.seg55 = load i64, ptr %cat.seg54, align 8
  %cat.seg56 = and i64 %cat.seg55, 281474976710655
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %cat.seg58 = load ptr, ptr %cat.seg57, align 8
  %cat.sum.len59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg49, i64 3)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len59, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len59, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

ret.dead:                                         ; No predecessors!
  br label %choice.exit44

cat.sum.len62:                                    ; preds = %abort.dead64, %choice.exit44
  %cat.sum.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 %cat.seg56)
  %sum66 = extractvalue { i64, i1 } %cat.sum.len65, 0
  %ovf67 = extractvalue { i64, i1 } %cat.sum.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %cat.sum.len68

str_overflow_abort63:                             ; preds = %choice.exit44
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %cat.sum.len62

cat.sum.len68:                                    ; preds = %abort.dead70, %cat.sum.len62
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %cat.sum.len68

concat.tot.len74:                                 ; preds = %abort.dead76, %cat.sum.len68
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  %cat.dst79 = getelementptr i8, ptr %concat.buf78, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 %cat.seg51, i64 %cat.seg49, i1 false)
  %cat.off80 = add i64 0, %cat.seg49
  %cat.dst81 = getelementptr i8, ptr %concat.buf78, i64 %cat.off80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst81, ptr align 1 %cat.lit.data52, i64 3, i1 false)
  %cat.off82 = add i64 %cat.off80, 3
  %cat.dst83 = getelementptr i8, ptr %concat.buf78, i64 %cat.off82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst83, ptr align 1 %cat.seg58, i64 %cat.seg56, i1 false)
  %concat.nul84 = getelementptr i8, ptr %concat.buf78, i64 %sum66
  store i8 0, ptr %concat.nul84, align 1
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %str.build.len.gep87 = getelementptr inbounds { i64, ptr }, ptr %concat.str86, i32 0, i32 0
  store i64 %sum66, ptr %str.build.len.gep87, align 8
  %str.build.data.gep88 = getelementptr inbounds { i64, ptr }, ptr %concat.str86, i32 0, i32 1
  store ptr %concat.buf78, ptr %str.build.data.gep88, align 8
  store ptr %concat.str86, ptr %var.priv, align 8
  %var.load89 = load ptr, ptr %var.ctx, align 8
  %var.load90 = load ptr, ptr %var.priv, align 8
  %call.res91 = call i1 @"overloads::is_family"(ptr %var.load89, ptr %var.load90)
  br i1 %call.res91, label %choice.then92, label %choice.exit93

str_overflow_abort75:                             ; preds = %cat.sum.len68
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %concat.tot.len74

choice.then92:                                    ; preds = %concat.tot.len74
  %var.load94 = load ptr, ptr %var.priv, align 8
  %ret.pack95 = load { i64, ptr }, ptr %var.load94, align 8
  ret { i64, ptr } %ret.pack95

choice.exit93:                                    ; preds = %ret.dead96, %concat.tot.len74
  br label %choice.exit

ret.dead96:                                       ; No predecessors!
  br label %choice.exit93
}

define i1 @"overloads::has_variants"(ptr %0, ptr %1) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %"var.result'" = alloca i1, align 1
  %"var.first'" = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.name, align 8
  store i64 -1, ptr %"var.first'", align 8
  store i1 false, ptr %"var.result'", align 1
  %var.load = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len1 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data2 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.header.66:                                   ; preds = %loop.latch.66, %entry
  %counter.load = load i64, ptr %loop.idx.66, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len1
  br i1 %loop.cond, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.66, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data2, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.d, align 8
  %var.load3 = load ptr, ptr %var.d, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load26 = load i1, ptr %"var.result'", align 1
  ret i1 %var.load26

str.eq.then:                                      ; preds = %loop.body.66
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.66
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load13 = load i64, ptr %"var.first'", align 8
  %cmptmp = icmp slt i64 %var.load13, 0
  br i1 %cmptmp, label %choice.then14, label %choice.exit15

choice.exit:                                      ; preds = %choice.exit25, %str.eq.merge
  br label %loop.latch.66

choice.then14:                                    ; preds = %choice.then
  %var.load16 = load ptr, ptr %var.d, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load16, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  store i64 %fld.load18, ptr %"var.first'", align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.then14, %choice.then
  %var.load19 = load ptr, ptr %var.d, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load19, i32 0, i32 1
  %fld.load21 = load i64, ptr %fld.gep20, align 8
  %var.load22 = load i64, ptr %"var.first'", align 8
  %cmptmp23 = icmp ne i64 %fld.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.exit25

choice.then24:                                    ; preds = %choice.exit15
  store i1 true, ptr %"var.result'", align 1
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.then24, %choice.exit15
  br label %choice.exit
}

define ptr @"overloads::signature"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var._23 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %loop.step.67 = alloca i64, align 8
  %loop.idx.67 = alloca i64, align 8
  %"var.result'" = alloca ptr, align 8
  %var.arity = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.name, align 8
  store i64 %2, ptr %var.arity, align 8
  %call.res = call ptr @"overloads::unknown"()
  store ptr %call.res, ptr %"var.result'", align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len1 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data2 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.header.67:                                   ; preds = %loop.latch.67, %entry
  %counter.load = load i64, ptr %loop.idx.67, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len1
  br i1 %loop.cond, label %loop.body.67, label %loop.exit.nat.67

loop.body.67:                                     ; preds = %loop.header.67
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.67, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data2, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.d, align 8
  %var.load3 = load ptr, ptr %var.d, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.67:                                 ; preds = %loop.header.67
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.67, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %loop.exit.nat.67
  %var.load27 = load ptr, ptr %"var.result'", align 8
  ret ptr %var.load27

str.eq.then:                                      ; preds = %loop.body.67
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.67
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %and.68.then, label %and.68.else

and.68.then:                                      ; preds = %str.eq.merge
  %var.load13 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp slt i64 %var.load13, 0
  br i1 %cmptmp, label %or.69.then, label %or.69.else

and.68.else:                                      ; preds = %str.eq.merge
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %or.69.exit
  %and.68.phi = phi i1 [ %or.69.phi, %or.69.exit ], [ %str.eq.result, %and.68.else ]
  br i1 %and.68.phi, label %choice.then, label %choice.exit

or.69.then:                                       ; preds = %and.68.then
  br label %or.69.exit

or.69.else:                                       ; preds = %and.68.then
  %var.load14 = load ptr, ptr %var.d, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load14, i32 0, i32 1
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  %var.load17 = load i64, ptr %var.arity, align 8
  %cmptmp18 = icmp eq i64 %fld.load16, %var.load17
  br label %or.69.exit

or.69.exit:                                       ; preds = %or.69.else, %or.69.then
  %or.69.phi = phi i1 [ %cmptmp, %or.69.then ], [ %cmptmp18, %or.69.else ]
  br label %and.68.exit

choice.then:                                      ; preds = %and.68.exit
  %var.load19 = load ptr, ptr %var.d, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load19, i32 0, i32 2
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit22, %and.68.exit
  br label %loop.latch.67

choice.exit22:                                    ; preds = %choice.next, %choice.case
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._23, align 8
  %var.load24 = load ptr, ptr %var.d, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load24, i32 0, i32 2
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  store ptr %fld.load26, ptr %"var.result'", align 8
  br label %choice.exit22

choice.next:                                      ; preds = %choice.then
  br label %choice.exit22
}

define ptr @"overloads::select_value"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #3 {
entry:
  %var.f = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.fam = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.n = alloca ptr, align 8
  %var.cur_mod = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.expected, align 8
  store ptr %2, ptr %var.ctx, align 8
  store ptr %3, ptr %var.locals, align 8
  store ptr %4, ptr %var.cur_mod, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call { i64, ptr } @"overloads::name_of"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.n, align 8
  %var.load1 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load5 = load ptr, ptr %var.n, align 8
  %call.res6 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load5)
  %nottmp = xor i1 %call.res6, true
  br i1 %nottmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after
  %var.load7 = load ptr, ptr %var.ctx, align 8
  %var.load8 = load ptr, ptr %var.n, align 8
  %var.load9 = load ptr, ptr %var.cur_mod, align 8
  %call.res10 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load7, ptr %var.load8, ptr %var.load9)
  store { i64, ptr } %call.res10, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.after
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res, ptr %var.fam, align 8
  %var.load11 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %eq.lhs.len12 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len13, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len13)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else17:                                    ; preds = %str.eq.merge
  %var.load32 = load ptr, ptr %var.e, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.exit20
  %choice.res33 = phi ptr [ %choice.res31, %choice.exit20 ], [ %var.load32, %choice.else17 ]
  ret ptr %choice.res33

choice.exit20:                                    ; preds = %choice.next, %choice.case
  %choice.res31 = phi ptr [ %enum.alloc, %choice.case ], [ %var.load30, %choice.next ]
  br label %choice.exit18

choice.case:                                      ; preds = %choice.then16
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep22, align 8
  %pay.gep23 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load24 = load ptr, ptr %var.fam, align 8
  %var.load25 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load25, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query26 = load i64, ptr %a.len.query, align 8
  %call.res27 = call { i64, ptr } @"overloads::symbol"(ptr %var.load24, i64 %a.len.query26)
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  store { i64, ptr } %call.res27, ptr %ret.ub.alloc29, align 8
  store ptr %ret.ub.alloc29, ptr %pay.gep23, align 8
  br label %choice.exit20

choice.next:                                      ; preds = %choice.then16
  %var.load30 = load ptr, ptr %var.e, align 8
  br label %choice.exit20
}

define ptr @"overloads::application"(ptr %0) #3 {
entry:
  %var._92 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._65 = alloca ptr, align 8
  %var.args = alloca ptr, align 8
  %var.base = alloca ptr, align 8
  %var.inner = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var.fn_e = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit57
  %choice.res252 = phi ptr [ %choice.res250, %choice.exit57 ], [ %var.load251, %choice.next ]
  ret ptr %choice.res252

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 13
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.next:                                      ; preds = %entry
  %var.load251 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.exit2:                                     ; preds = %choice.next4, %choice.case3
  %choice.res = phi ptr [ %fld.load10, %choice.case3 ], [ %fld.load13, %choice.next4 ]
  store ptr %choice.res, ptr %var.fn_e, align 8
  %var.load14 = load ptr, ptr %var.b, align 8
  %fld.gep15 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %tag.gep20 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %tag.id21 = load i64, ptr %tag.gep20, align 8
  %tag.match22 = icmp eq i64 %tag.id21, 13
  br i1 %tag.match22, label %choice.case18, label %choice.next19

choice.case3:                                     ; preds = %choice.case
  %var.load8 = load ptr, ptr %var.b, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load8, i32 0, i32 2
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  br label %choice.exit2

choice.next4:                                     ; preds = %choice.case
  %var.load11 = load ptr, ptr %var.b, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load11, i32 0, i32 1
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  br label %choice.exit2

choice.exit17:                                    ; preds = %choice.next19, %choice.case18
  %choice.res29 = phi ptr [ %fld.load25, %choice.case18 ], [ %fld.load28, %choice.next19 ]
  store ptr %choice.res29, ptr %var.arg, align 8
  %var.load30 = load ptr, ptr %var.fn_e, align 8
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 5
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case18:                                    ; preds = %choice.exit2
  %var.load23 = load ptr, ptr %var.b, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  br label %choice.exit17

choice.next19:                                    ; preds = %choice.exit2
  %var.load26 = load ptr, ptr %var.b, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  br label %choice.exit17

choice.exit31:                                    ; preds = %choice.next33, %choice.exit43
  %choice.res54 = phi ptr [ %choice.res52, %choice.exit43 ], [ %var.load53, %choice.next33 ]
  store ptr %choice.res54, ptr %var.base, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load56 = load ptr, ptr %var.base, align 8
  %tag.gep60 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %tag.id61 = load i64, ptr %tag.gep60, align 8
  %tag.match62 = icmp eq i64 %tag.id61, 9
  br i1 %tag.match62, label %choice.case58, label %choice.next59

choice.case32:                                    ; preds = %choice.exit17
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.inner, align 8
  %var.load40 = load ptr, ptr %var.inner, align 8
  %fld.gep41 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load40, i32 0, i32 0
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 13
  %tag.match49 = icmp eq i64 %tag.id47, 14
  %tag.or = or i1 %tag.match48, %tag.match49
  br i1 %tag.or, label %choice.case44, label %choice.next45

choice.next33:                                    ; preds = %choice.exit17
  %var.load53 = load ptr, ptr %var.fn_e, align 8
  br label %choice.exit31

choice.exit43:                                    ; preds = %choice.next45, %choice.case44
  %choice.res52 = phi ptr [ %call.res, %choice.case44 ], [ %var.load51, %choice.next45 ]
  br label %choice.exit31

choice.case44:                                    ; preds = %choice.case32
  %var.load50 = load ptr, ptr %var.fn_e, align 8
  %call.res = call ptr @"overloads::application"(ptr %var.load50)
  br label %choice.exit43

choice.next45:                                    ; preds = %choice.case32
  %var.load51 = load ptr, ptr %var.fn_e, align 8
  br label %choice.exit43

choice.exit57:                                    ; preds = %a.after234, %a.after173
  %choice.res250 = phi ptr [ %enum.alloc, %a.after173 ], [ %enum.alloc223, %a.after234 ]
  br label %choice.exit

choice.case58:                                    ; preds = %choice.exit31
  %pay.gep63 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %payload.ptr64 = load ptr, ptr %pay.gep63, align 8
  store ptr %payload.ptr64, ptr %var._65, align 8
  store ptr %payload.ptr64, ptr %var.c, align 8
  %var.load66 = load ptr, ptr %var.b, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load66, i32 0, i32 0
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %tag.gep72 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %tag.id73 = load i64, ptr %tag.gep72, align 8
  %tag.match74 = icmp eq i64 %tag.id73, 13
  br i1 %tag.match74, label %choice.case70, label %choice.next71

choice.next59:                                    ; preds = %choice.exit31
  %var.load193 = load ptr, ptr %var.arg, align 8
  %a.load194 = load ptr, ptr %var.args, align 8
  %a.null195 = icmp eq ptr %a.load194, null
  br i1 %a.null195, label %a.create196, label %a.after197

choice.exit69:                                    ; preds = %choice.next71, %a.store
  %var.load87 = load ptr, ptr %var.c, align 8
  %fld.gep88 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load87, i32 0, i32 2
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load89, i32 0, i32 0
  %arr.cycle.len90 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load89, i32 0, i32 1
  %arr.cycle.data91 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.70, align 8
  %cycle.prev.u = load ptr, ptr %var._65, align 8
  br label %loop.header.70

choice.case70:                                    ; preds = %choice.case58
  %var.load75 = load ptr, ptr %var.arg, align 8
  %a.load = load ptr, ptr %var.args, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next71:                                    ; preds = %choice.case58
  br label %choice.exit69

a.create:                                         ; preds = %choice.case70
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.create77, ptr %var.args, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case70
  %a.load2 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len83 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap84 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len83, %a.cap84
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data85 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len86 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data85, i64 %a.cur.len86
  %slot.p2i = ptrtoint ptr %var.load75 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len86, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit69

loop.header.70:                                   ; preds = %loop.latch.70, %choice.exit69
  %counter.load = load i64, ptr %loop.idx.70, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len90
  br i1 %loop.cond, label %loop.body.70, label %loop.exit.nat.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data91, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._92, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  %var.load93 = load ptr, ptr %var.a, align 8
  %a.load94 = load ptr, ptr %var.args, align 8
  %a.null95 = icmp eq ptr %a.load94, null
  br i1 %a.null95, label %a.create96, label %a.after97

loop.exit.nat.70:                                 ; preds = %loop.header.70
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %a.store108
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  store ptr %cycle.prev.u, ptr %var._65, align 8
  %var.load122 = load ptr, ptr %var.b, align 8
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load122, i32 0, i32 0
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %tag.gep128 = getelementptr inbounds { i64, ptr }, ptr %fld.load124, i32 0, i32 0
  %tag.id129 = load i64, ptr %tag.gep128, align 8
  %tag.match130 = icmp eq i64 %tag.id129, 14
  br i1 %tag.match130, label %choice.case126, label %choice.next127

a.create96:                                       ; preds = %loop.body.70
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 128)
  %a.len.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 0
  store i64 0, ptr %a.len.gep102, align 8
  %a.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 1
  store ptr %a.buf101, ptr %a.data.gep103, align 8
  %a.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 2
  store i64 16, ptr %a.cap.gep104, align 8
  store ptr %a.create99, ptr %var.args, align 8
  br label %a.after97

a.after97:                                        ; preds = %a.create96, %loop.body.70
  %a.load2105 = load ptr, ptr %var.args, align 8
  br label %a.check106

a.check106:                                       ; preds = %a.after97
  %a.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.len110 = load i64, ptr %a.len109, align 8
  %a.cap111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 2
  %a.cap112 = load i64, ptr %a.cap111, align 8
  %a.needs.grow113 = icmp eq i64 %a.len110, %a.cap112
  br i1 %a.needs.grow113, label %a.grow107, label %a.store108

a.grow107:                                        ; preds = %a.check106
  call void @dva_array_grow(ptr %a.load2105)
  br label %a.store108

a.store108:                                       ; preds = %a.grow107, %a.check106
  %a.cur.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 1
  %a.cur.data115 = load ptr, ptr %a.cur.data114, align 8
  %a.cur.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.cur.len117 = load i64, ptr %a.cur.len116, align 8
  %a.elem.gep118 = getelementptr i64, ptr %a.cur.data115, i64 %a.cur.len117
  %slot.p2i119 = ptrtoint ptr %var.load93 to i64
  store i64 %slot.p2i119, ptr %a.elem.gep118, align 8
  %a.next.len120 = add i64 %a.cur.len117, 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  store i64 %a.next.len120, ptr %b.len.gep121, align 8
  br label %loop.latch.70

choice.exit125:                                   ; preds = %choice.next127, %a.store146
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 16)
  %tag.gep161 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep161, align 8
  %pay.gep162 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load163 = load ptr, ptr %var.c, align 8
  %fld.gep164 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load163, i32 0, i32 0
  %fld.load165 = load ptr, ptr %fld.gep164, align 8
  %var.load166 = load ptr, ptr %var.c, align 8
  %fld.gep167 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load166, i32 0, i32 1
  %fld.load168 = load ptr, ptr %fld.gep167, align 8
  %var.load169 = load ptr, ptr %var.args, align 8
  %a.load170 = load ptr, ptr %var.args, align 8
  %a.null171 = icmp eq ptr %a.load170, null
  br i1 %a.null171, label %a.create172, label %a.after173

choice.case126:                                   ; preds = %loop.exit.70
  %var.load131 = load ptr, ptr %var.arg, align 8
  %a.load132 = load ptr, ptr %var.args, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.next127:                                   ; preds = %loop.exit.70
  br label %choice.exit125

a.create134:                                      ; preds = %choice.case126
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 128)
  %a.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 0
  store i64 0, ptr %a.len.gep140, align 8
  %a.data.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 1
  store ptr %a.buf139, ptr %a.data.gep141, align 8
  %a.cap.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 2
  store i64 16, ptr %a.cap.gep142, align 8
  store ptr %a.create137, ptr %var.args, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.case126
  %a.load2143 = load ptr, ptr %var.args, align 8
  br label %a.check144

a.check144:                                       ; preds = %a.after135
  %a.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.len148 = load i64, ptr %a.len147, align 8
  %a.cap149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 2
  %a.cap150 = load i64, ptr %a.cap149, align 8
  %a.needs.grow151 = icmp eq i64 %a.len148, %a.cap150
  br i1 %a.needs.grow151, label %a.grow145, label %a.store146

a.grow145:                                        ; preds = %a.check144
  call void @dva_array_grow(ptr %a.load2143)
  br label %a.store146

a.store146:                                       ; preds = %a.grow145, %a.check144
  %a.cur.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 1
  %a.cur.data153 = load ptr, ptr %a.cur.data152, align 8
  %a.cur.len154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.cur.len155 = load i64, ptr %a.cur.len154, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.cur.data153, i64 %a.cur.len155
  %slot.p2i157 = ptrtoint ptr %var.load131 to i64
  store i64 %slot.p2i157, ptr %a.elem.gep156, align 8
  %a.next.len158 = add i64 %a.cur.len155, 1
  %b.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  store i64 %a.next.len158, ptr %b.len.gep159, align 8
  br label %choice.exit125

a.create172:                                      ; preds = %choice.exit125
  %arena.cur174 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 128)
  %a.len.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 0
  store i64 0, ptr %a.len.gep178, align 8
  %a.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 1
  store ptr %a.buf177, ptr %a.data.gep179, align 8
  %a.cap.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 2
  store i64 16, ptr %a.cap.gep180, align 8
  store ptr %a.create175, ptr %var.args, align 8
  br label %a.after173

a.after173:                                       ; preds = %a.create172, %choice.exit125
  %a.load2181 = load ptr, ptr %var.args, align 8
  %var.load182 = load ptr, ptr %var.c, align 8
  %fld.gep183 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load182, i32 0, i32 3
  %fld.load184 = load i64, ptr %fld.gep183, align 8
  %var.load185 = load ptr, ptr %var.c, align 8
  %fld.gep186 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load185, i32 0, i32 4
  %fld.load187 = load i64, ptr %fld.gep186, align 8
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load165, ptr %rec.fld, align 8
  %rec.fld189 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load168, ptr %rec.fld189, align 8
  %rec.fld190 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2181, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load184, ptr %rec.fld191, align 8
  %rec.fld192 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load187, ptr %rec.fld192, align 8
  store ptr %rec.alloc, ptr %pay.gep162, align 8
  br label %choice.exit57

a.create196:                                      ; preds = %choice.next59
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.create199, ptr %var.args, align 8
  br label %a.after197

a.after197:                                       ; preds = %a.create196, %choice.next59
  %a.load2205 = load ptr, ptr %var.args, align 8
  br label %a.check206

a.check206:                                       ; preds = %a.after197
  %a.len209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 0
  %a.len210 = load i64, ptr %a.len209, align 8
  %a.cap211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 2
  %a.cap212 = load i64, ptr %a.cap211, align 8
  %a.needs.grow213 = icmp eq i64 %a.len210, %a.cap212
  br i1 %a.needs.grow213, label %a.grow207, label %a.store208

a.grow207:                                        ; preds = %a.check206
  call void @dva_array_grow(ptr %a.load2205)
  br label %a.store208

a.store208:                                       ; preds = %a.grow207, %a.check206
  %a.cur.data214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 1
  %a.cur.data215 = load ptr, ptr %a.cur.data214, align 8
  %a.cur.len216 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 0
  %a.cur.len217 = load i64, ptr %a.cur.len216, align 8
  %a.elem.gep218 = getelementptr i64, ptr %a.cur.data215, i64 %a.cur.len217
  %slot.p2i219 = ptrtoint ptr %var.load193 to i64
  store i64 %slot.p2i219, ptr %a.elem.gep218, align 8
  %a.next.len220 = add i64 %a.cur.len217, 1
  %b.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 0
  store i64 %a.next.len220, ptr %b.len.gep221, align 8
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 16)
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc223, i32 0, i32 0
  store i64 9, ptr %tag.gep224, align 8
  %pay.gep225 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc223, i32 0, i32 1
  %var.load226 = load ptr, ptr %var.base, align 8
  %call.res227 = call { i64, ptr } @"overloads::name_of"(ptr %var.load226)
  %arena.cur228 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 16)
  store { i64, ptr } %call.res227, ptr %ret.ub.alloc, align 8
  %var.load229 = load ptr, ptr %var.base, align 8
  %var.load230 = load ptr, ptr %var.args, align 8
  %a.load231 = load ptr, ptr %var.args, align 8
  %a.null232 = icmp eq ptr %a.load231, null
  br i1 %a.null232, label %a.create233, label %a.after234

a.create233:                                      ; preds = %a.store208
  %arena.cur235 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 24)
  %arena.cur237 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 128)
  %a.len.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 0
  store i64 0, ptr %a.len.gep239, align 8
  %a.data.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 1
  store ptr %a.buf238, ptr %a.data.gep240, align 8
  %a.cap.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 2
  store i64 16, ptr %a.cap.gep241, align 8
  store ptr %a.create236, ptr %var.args, align 8
  br label %a.after234

a.after234:                                       ; preds = %a.create233, %a.store208
  %a.load2242 = load ptr, ptr %var.args, align 8
  %arena.cur243 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld245 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc244, i32 0, i32 0
  store ptr %ret.ub.alloc, ptr %rec.fld245, align 8
  %rec.fld246 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc244, i32 0, i32 1
  store ptr %var.load229, ptr %rec.fld246, align 8
  %rec.fld247 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc244, i32 0, i32 2
  store ptr %a.load2242, ptr %rec.fld247, align 8
  %rec.fld248 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc244, i32 0, i32 3
  store i64 0, ptr %rec.fld248, align 8
  %rec.fld249 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc244, i32 0, i32 4
  store i64 0, ptr %rec.fld249, align 8
  store ptr %rec.alloc244, ptr %pay.gep225, align 8
  br label %choice.exit57
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %abort.dead, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"overloads::keep_type"(ptr %0, ptr %1) #3 {
entry:
  %var.ctx = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  store ptr %0, ptr %var.ti, align 8
  store ptr %1, ptr %var.ctx, align 8
  %var.load = load ptr, ptr %var.ti, align 8
  ret ptr %var.load
}

define ptr @"overloads::keep_fparams"(ptr %0, ptr %1) #3 {
entry:
  %var.ctx = alloca ptr, align 8
  %var.params = alloca ptr, align 8
  store ptr %0, ptr %var.params, align 8
  store ptr %1, ptr %var.ctx, align 8
  %var.load = load ptr, ptr %var.params, align 8
  %a.load = load ptr, ptr %var.params, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr %var.params, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.params, align 8
  ret ptr %a.load2
}

define ptr @"overloads::walk_many"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.72 = alloca i64, align 8
  %loop.idx.72 = alloca i64, align 8
  %var.result = alloca ptr, align 8
  %var.cur_mod = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  store ptr %0, ptr %var.exprs, align 8
  store ptr %1, ptr %var.ctx, align 8
  store ptr %2, ptr %var.locals, align 8
  store ptr %3, ptr %var.cur_mod, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.result, align 8
  %var.load = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.create3, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len9 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.72, align 8
  br label %loop.header.72

loop.header.72:                                   ; preds = %loop.latch.72, %a.after
  %counter.load = load i64, ptr %loop.idx.72, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.72, label %loop.exit.nat.72

loop.body.72:                                     ; preds = %loop.header.72
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.72, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load11 = load ptr, ptr %var.e, align 8
  %var.load12 = load ptr, ptr %var.ctx, align 8
  %var.load13 = load ptr, ptr %var.locals, align 8
  %a.load14 = load ptr, ptr %var.locals, align 8
  %a.null15 = icmp eq ptr %a.load14, null
  br i1 %a.null15, label %a.create16, label %a.after17

loop.exit.nat.72:                                 ; preds = %loop.header.72
  br label %loop.exit.72

loop.latch.72:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.72, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.72, align 8
  br label %loop.header.72

loop.exit.72:                                     ; preds = %loop.exit.nat.72
  %var.load43 = load ptr, ptr %var.result, align 8
  %a.load44 = load ptr, ptr %var.result, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

a.create16:                                       ; preds = %loop.body.72
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 24)
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 128)
  %a.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 0
  store i64 0, ptr %a.len.gep22, align 8
  %a.data.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 1
  store ptr %a.buf21, ptr %a.data.gep23, align 8
  %a.cap.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 2
  store i64 16, ptr %a.cap.gep24, align 8
  store ptr %a.create19, ptr %var.locals, align 8
  br label %a.after17

a.after17:                                        ; preds = %a.create16, %loop.body.72
  %a.load225 = load ptr, ptr %var.locals, align 8
  %var.load26 = load ptr, ptr %var.cur_mod, align 8
  %call.res = call ptr @"overloads::walk"(ptr %var.load11, ptr %var.load12, ptr %a.load225, ptr %var.load26)
  %a.load27 = load ptr, ptr %var.result, align 8
  %a.null28 = icmp eq ptr %a.load27, null
  br i1 %a.null28, label %a.create29, label %a.after30

a.create29:                                       ; preds = %a.after17
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 0
  store i64 0, ptr %a.len.gep35, align 8
  %a.data.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 1
  store ptr %a.buf34, ptr %a.data.gep36, align 8
  %a.cap.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 2
  store i64 16, ptr %a.cap.gep37, align 8
  store ptr %a.create32, ptr %var.result, align 8
  br label %a.after30

a.after30:                                        ; preds = %a.create29, %a.after17
  %a.load238 = load ptr, ptr %var.result, align 8
  br label %a.check

a.check:                                          ; preds = %a.after30
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.len39 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 2
  %a.cap40 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len39, %a.cap40
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load238)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 1
  %a.cur.data41 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.cur.len42 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data41, i64 %a.cur.len42
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len42, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.72

a.create46:                                       ; preds = %loop.exit.72
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var.result, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %loop.exit.72
  %a.load255 = load ptr, ptr %var.result, align 8
  ret ptr %a.load255
}

define ptr @"overloads::walk"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %var.bc = alloca ptr, align 8
  %var._2348 = alloca ptr, align 8
  %var.cp2319 = alloca ptr, align 8
  %var._2318 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2288 = alloca ptr, align 8
  %var._2191 = alloca ptr, align 8
  %var._i2190 = alloca i64, align 8
  %var.p2182 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2157 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2132 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2089 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2042 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2017 = alloca ptr, align 8
  %var.new_val1989 = alloca ptr, align 8
  %var.r1959 = alloca ptr, align 8
  %var._1958 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1928 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1899 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1870 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1831 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1780 = alloca ptr, align 8
  %var._1779 = alloca ptr, align 8
  %var.new_val1759 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1739 = alloca ptr, align 8
  %var.new_rhs1709 = alloca ptr, align 8
  %var.new_lhs1679 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1649 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1593 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1529 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1457 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._1364 = alloca ptr, align 8
  %var._i1363 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1341 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1259 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1199 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1174 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1066 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1025 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1009 = alloca ptr, align 8
  %var.eff_mod = alloca ptr, align 8
  %var.is_top = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._952 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._745 = alloca ptr, align 8
  %var._i744 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._700 = alloca ptr, align 8
  %var._i699 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._658 = alloca ptr, align 8
  %ret.ub.salloc583 = alloca { i64, ptr }, align 8
  %var.ca = alloca ptr, align 8
  %var._562 = alloca ptr, align 8
  %var._507 = alloca ptr, align 8
  %var._i506 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._446 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._345 = alloca ptr, align 8
  %var._i344 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var._282 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._242 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._204 = alloca ptr, align 8
  %var.fam = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.callee = alloca ptr, align 8
  %var.c47 = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var.expanded = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._26 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._9 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.cur_mod = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.table = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.table, align 8
  store ptr %2, ptr %var.locals, align 8
  store ptr %3, ptr %var.cur_mod, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next2342, %a.after2359, %a.after2330, %a.after2295, %a.after2272, %choice.case2125, %a.after2098, %a.after2051, %choice.case2010, %choice.exit1965, %a.after1935, %a.after1910, %a.after1881, %a.after1840, %a.after1811, %a.after1748, %choice.exit1685, %a.after1621, %a.after1557, %a.after1485, %a.after1434, %choice.exit1265, %a.after1227, %choice.case1167, %a.after1120, %a.after931, %a.after642, %a.after404, %a.after220, %choice.exit28, %a.after, %choice.case
  %choice.res2371 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res196, %choice.exit28 ], [ %enum.alloc206, %a.after220 ], [ %enum.alloc416, %a.after404 ], [ %enum.alloc635, %a.after642 ], [ %enum.alloc920, %a.after931 ], [ %enum.alloc1132, %a.after1120 ], [ %enum.alloc1181, %choice.case1167 ], [ %enum.alloc1211, %a.after1227 ], [ %choice.res1333, %choice.exit1265 ], [ %enum.alloc1427, %a.after1434 ], [ %enum.alloc1497, %a.after1485 ], [ %enum.alloc1569, %a.after1557 ], [ %enum.alloc1633, %a.after1621 ], [ %enum.alloc1711, %choice.exit1685 ], [ %enum.alloc1761, %a.after1748 ], [ %enum.alloc1801, %a.after1811 ], [ %enum.alloc1852, %a.after1840 ], [ %enum.alloc1872, %a.after1881 ], [ %enum.alloc1901, %a.after1910 ], [ %enum.alloc1947, %a.after1935 ], [ %enum.alloc1991, %choice.exit1965 ], [ %enum.alloc2024, %choice.case2010 ], [ %enum.alloc2063, %a.after2051 ], [ %enum.alloc2110, %a.after2098 ], [ %enum.alloc2139, %choice.case2125 ], [ %enum.alloc2265, %a.after2272 ], [ %enum.alloc2307, %a.after2295 ], [ %enum.alloc2321, %a.after2330 ], [ %enum.alloc2350, %a.after2359 ], [ %var.load2370, %choice.next2342 ]
  ret ptr %choice.res2371

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id5 = load i64, ptr %tag.gep4, align 8
  %tag.match6 = icmp eq i64 %tag.id5, 9
  br i1 %tag.match6, label %choice.case2, label %choice.next3

choice.case2:                                     ; preds = %choice.next
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr8 = load ptr, ptr %pay.gep7, align 8
  store ptr %payload.ptr8, ptr %var._9, align 8
  store ptr %payload.ptr8, ptr %var.c, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep10 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep10, align 8
  %pay.gep11 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load12 = load ptr, ptr %var.c, align 8
  %var.load13 = load ptr, ptr %var.table, align 8
  %var.load14 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next3:                                     ; preds = %choice.next
  %tag.gep21 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id22 = load i64, ptr %tag.gep21, align 8
  %tag.match23 = icmp eq i64 %tag.id22, 5
  br i1 %tag.match23, label %choice.case19, label %choice.next20

a.create:                                         ; preds = %choice.case2
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create16, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case2
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load18 = load ptr, ptr %var.cur_mod, align 8
  %call.res = call ptr @"overloads::walk_call"(ptr %var.load12, ptr %var.load13, ptr %a.load2, ptr %var.load18)
  store ptr %call.res, ptr %pay.gep11, align 8
  br label %choice.exit

choice.case19:                                    ; preds = %choice.next3
  %pay.gep24 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr25 = load ptr, ptr %pay.gep24, align 8
  store ptr %payload.ptr25, ptr %var._26, align 8
  store ptr %payload.ptr25, ptr %var.b, align 8
  %var.load27 = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load27, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep31 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id32 = load i64, ptr %tag.gep31, align 8
  %tag.match33 = icmp eq i64 %tag.id32, 13
  %tag.match34 = icmp eq i64 %tag.id32, 14
  %tag.or = or i1 %tag.match33, %tag.match34
  br i1 %tag.or, label %choice.case29, label %choice.next30

choice.next20:                                    ; preds = %choice.next3
  %tag.gep199 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id200 = load i64, ptr %tag.gep199, align 8
  %tag.match201 = icmp eq i64 %tag.id200, 24
  br i1 %tag.match201, label %choice.case197, label %choice.next198

choice.exit28:                                    ; preds = %a.after180, %choice.exit79
  %choice.res196 = phi ptr [ %choice.res145, %choice.exit79 ], [ %enum.alloc147, %a.after180 ]
  br label %choice.exit

choice.case29:                                    ; preds = %choice.case19
  %var.load35 = load ptr, ptr %var.e, align 8
  %call.res36 = call ptr @"overloads::application"(ptr %var.load35)
  store ptr %call.res36, ptr %var.expanded, align 8
  %var.load37 = load ptr, ptr %var.expanded, align 8
  %tag.gep41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %tag.id42 = load i64, ptr %tag.gep41, align 8
  %tag.match43 = icmp eq i64 %tag.id42, 9
  br i1 %tag.match43, label %choice.case39, label %choice.next40

choice.next30:                                    ; preds = %choice.case19
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 16)
  %tag.gep148 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc147, i32 0, i32 0
  store i64 5, ptr %tag.gep148, align 8
  %pay.gep149 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc147, i32 0, i32 1
  %var.load150 = load ptr, ptr %var.b, align 8
  %fld.gep151 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load150, i32 0, i32 0
  %fld.load152 = load ptr, ptr %fld.gep151, align 8
  %var.load153 = load ptr, ptr %var.b, align 8
  %fld.gep154 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load153, i32 0, i32 1
  %fld.load155 = load ptr, ptr %fld.gep154, align 8
  %var.load156 = load ptr, ptr %var.table, align 8
  %var.load157 = load ptr, ptr %var.locals, align 8
  %a.load158 = load ptr, ptr %var.locals, align 8
  %a.null159 = icmp eq ptr %a.load158, null
  br i1 %a.null159, label %a.create160, label %a.after161

choice.exit38:                                    ; preds = %choice.next40, %choice.case39
  %choice.res = phi ptr [ %fld.load50, %choice.case39 ], [ @str.1.struct, %choice.next40 ]
  store ptr %choice.res, ptr %var.callee, align 8
  %var.load51 = load ptr, ptr %var.locals, align 8
  %a.load52 = load ptr, ptr %var.locals, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

choice.case39:                                    ; preds = %choice.case29
  %pay.gep44 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %payload.ptr45 = load ptr, ptr %pay.gep44, align 8
  store ptr %payload.ptr45, ptr %var._46, align 8
  store ptr %payload.ptr45, ptr %var.c47, align 8
  %var.load48 = load ptr, ptr %var.c47, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load48, i32 0, i32 0
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  br label %choice.exit38

choice.next40:                                    ; preds = %choice.case29
  br label %choice.exit38

a.create54:                                       ; preds = %choice.exit38
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 128)
  %a.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 0
  store i64 0, ptr %a.len.gep60, align 8
  %a.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 1
  store ptr %a.buf59, ptr %a.data.gep61, align 8
  %a.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 2
  store i64 16, ptr %a.cap.gep62, align 8
  store ptr %a.create57, ptr %var.locals, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %choice.exit38
  %a.load263 = load ptr, ptr %var.locals, align 8
  %var.load64 = load ptr, ptr %var.callee, align 8
  %call.res65 = call i1 @"overloads::contains"(ptr %a.load263, ptr %var.load64)
  %nottmp = xor i1 %call.res65, true
  br i1 %nottmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after55
  %var.load67 = load ptr, ptr %var.table, align 8
  %var.load68 = load ptr, ptr %var.callee, align 8
  %var.load69 = load ptr, ptr %var.cur_mod, align 8
  %call.res70 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load67, ptr %var.load68, ptr %var.load69)
  store { i64, ptr } %call.res70, ptr %ret.ub.salloc, align 8
  br label %choice.exit66

choice.else:                                      ; preds = %a.after55
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else, %choice.then
  %choice.res71 = phi ptr [ %ret.ub.salloc, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res71, ptr %var.fam, align 8
  %var.load72 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %eq.lhs.len73 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len74, %eq.rhs.len75
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit66
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %eq.lhs.data76 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data76, ptr %eq.rhs.data, i64 %eq.lhs.len74)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit66
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then77, label %choice.else78

choice.then77:                                    ; preds = %str.eq.merge
  %var.load80 = load ptr, ptr %var.expanded, align 8
  %var.load81 = load ptr, ptr %var.table, align 8
  %var.load82 = load ptr, ptr %var.locals, align 8
  %a.load83 = load ptr, ptr %var.locals, align 8
  %a.null84 = icmp eq ptr %a.load83, null
  br i1 %a.null84, label %a.create85, label %a.after86

choice.else78:                                    ; preds = %str.eq.merge
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 16)
  %tag.gep99 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc98, i32 0, i32 0
  store i64 5, ptr %tag.gep99, align 8
  %pay.gep100 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc98, i32 0, i32 1
  %var.load101 = load ptr, ptr %var.b, align 8
  %fld.gep102 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load101, i32 0, i32 0
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %var.load104 = load ptr, ptr %var.b, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load104, i32 0, i32 1
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %var.load107 = load ptr, ptr %var.table, align 8
  %var.load108 = load ptr, ptr %var.locals, align 8
  %a.load109 = load ptr, ptr %var.locals, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

choice.exit79:                                    ; preds = %a.after131, %a.after86
  %choice.res145 = phi ptr [ %call.res96, %a.after86 ], [ %enum.alloc98, %a.after131 ]
  br label %choice.exit28

a.create85:                                       ; preds = %choice.then77
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 24)
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 128)
  %a.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 0
  store i64 0, ptr %a.len.gep91, align 8
  %a.data.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 1
  store ptr %a.buf90, ptr %a.data.gep92, align 8
  %a.cap.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 2
  store i64 16, ptr %a.cap.gep93, align 8
  store ptr %a.create88, ptr %var.locals, align 8
  br label %a.after86

a.after86:                                        ; preds = %a.create85, %choice.then77
  %a.load294 = load ptr, ptr %var.locals, align 8
  %var.load95 = load ptr, ptr %var.cur_mod, align 8
  %call.res96 = call ptr @"overloads::walk"(ptr %var.load80, ptr %var.load81, ptr %a.load294, ptr %var.load95)
  br label %choice.exit79

a.create111:                                      ; preds = %choice.else78
  %arena.cur113 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 24)
  %arena.cur115 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 0
  store i64 0, ptr %a.len.gep117, align 8
  %a.data.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 1
  store ptr %a.buf116, ptr %a.data.gep118, align 8
  %a.cap.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep119, align 8
  store ptr %a.create114, ptr %var.locals, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %choice.else78
  %a.load2120 = load ptr, ptr %var.locals, align 8
  %var.load121 = load ptr, ptr %var.cur_mod, align 8
  %call.res122 = call ptr @"overloads::walk"(ptr %fld.load106, ptr %var.load107, ptr %a.load2120, ptr %var.load121)
  %var.load123 = load ptr, ptr %var.b, align 8
  %fld.gep124 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load123, i32 0, i32 2
  %fld.load125 = load ptr, ptr %fld.gep124, align 8
  %var.load126 = load ptr, ptr %var.table, align 8
  %var.load127 = load ptr, ptr %var.locals, align 8
  %a.load128 = load ptr, ptr %var.locals, align 8
  %a.null129 = icmp eq ptr %a.load128, null
  br i1 %a.null129, label %a.create130, label %a.after131

a.create130:                                      ; preds = %a.after112
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 24)
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 128)
  %a.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 0
  store i64 0, ptr %a.len.gep136, align 8
  %a.data.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 1
  store ptr %a.buf135, ptr %a.data.gep137, align 8
  %a.cap.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 2
  store i64 16, ptr %a.cap.gep138, align 8
  store ptr %a.create133, ptr %var.locals, align 8
  br label %a.after131

a.after131:                                       ; preds = %a.create130, %a.after112
  %a.load2139 = load ptr, ptr %var.locals, align 8
  %var.load140 = load ptr, ptr %var.cur_mod, align 8
  %call.res141 = call ptr @"overloads::walk"(ptr %fld.load125, ptr %var.load126, ptr %a.load2139, ptr %var.load140)
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load103, ptr %rec.fld, align 8
  %rec.fld143 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res122, ptr %rec.fld143, align 8
  %rec.fld144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res141, ptr %rec.fld144, align 8
  store ptr %rec.alloc, ptr %pay.gep100, align 8
  br label %choice.exit79

a.create160:                                      ; preds = %choice.next30
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 24)
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 128)
  %a.len.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 0
  store i64 0, ptr %a.len.gep166, align 8
  %a.data.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 1
  store ptr %a.buf165, ptr %a.data.gep167, align 8
  %a.cap.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create163, i32 0, i32 2
  store i64 16, ptr %a.cap.gep168, align 8
  store ptr %a.create163, ptr %var.locals, align 8
  br label %a.after161

a.after161:                                       ; preds = %a.create160, %choice.next30
  %a.load2169 = load ptr, ptr %var.locals, align 8
  %var.load170 = load ptr, ptr %var.cur_mod, align 8
  %call.res171 = call ptr @"overloads::walk"(ptr %fld.load155, ptr %var.load156, ptr %a.load2169, ptr %var.load170)
  %var.load172 = load ptr, ptr %var.b, align 8
  %fld.gep173 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load172, i32 0, i32 2
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %var.load175 = load ptr, ptr %var.table, align 8
  %var.load176 = load ptr, ptr %var.locals, align 8
  %a.load177 = load ptr, ptr %var.locals, align 8
  %a.null178 = icmp eq ptr %a.load177, null
  br i1 %a.null178, label %a.create179, label %a.after180

a.create179:                                      ; preds = %a.after161
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 24)
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 128)
  %a.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 0
  store i64 0, ptr %a.len.gep185, align 8
  %a.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 1
  store ptr %a.buf184, ptr %a.data.gep186, align 8
  %a.cap.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 2
  store i64 16, ptr %a.cap.gep187, align 8
  store ptr %a.create182, ptr %var.locals, align 8
  br label %a.after180

a.after180:                                       ; preds = %a.create179, %a.after161
  %a.load2188 = load ptr, ptr %var.locals, align 8
  %var.load189 = load ptr, ptr %var.cur_mod, align 8
  %call.res190 = call ptr @"overloads::walk"(ptr %fld.load174, ptr %var.load175, ptr %a.load2188, ptr %var.load189)
  %arena.cur191 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld193 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc192, i32 0, i32 0
  store ptr %fld.load152, ptr %rec.fld193, align 8
  %rec.fld194 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc192, i32 0, i32 1
  store ptr %call.res171, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc192, i32 0, i32 2
  store ptr %call.res190, ptr %rec.fld195, align 8
  store ptr %rec.alloc192, ptr %pay.gep149, align 8
  br label %choice.exit28

choice.case197:                                   ; preds = %choice.next20
  %pay.gep202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr203 = load ptr, ptr %pay.gep202, align 8
  store ptr %payload.ptr203, ptr %var._204, align 8
  store ptr %payload.ptr203, ptr %var.u, align 8
  %arena.cur205 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 16)
  %tag.gep207 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc206, i32 0, i32 0
  store i64 24, ptr %tag.gep207, align 8
  %pay.gep208 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc206, i32 0, i32 1
  %var.load209 = load ptr, ptr %var.u, align 8
  %fld.gep210 = getelementptr inbounds { ptr, ptr }, ptr %var.load209, i32 0, i32 0
  %fld.load211 = load ptr, ptr %fld.gep210, align 8
  %var.load212 = load ptr, ptr %var.u, align 8
  %fld.gep213 = getelementptr inbounds { ptr, ptr }, ptr %var.load212, i32 0, i32 1
  %fld.load214 = load ptr, ptr %fld.gep213, align 8
  %var.load215 = load ptr, ptr %var.table, align 8
  %var.load216 = load ptr, ptr %var.locals, align 8
  %a.load217 = load ptr, ptr %var.locals, align 8
  %a.null218 = icmp eq ptr %a.load217, null
  br i1 %a.null218, label %a.create219, label %a.after220

choice.next198:                                   ; preds = %choice.next20
  %tag.gep237 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id238 = load i64, ptr %tag.gep237, align 8
  %tag.match239 = icmp eq i64 %tag.id238, 14
  br i1 %tag.match239, label %choice.case235, label %choice.next236

a.create219:                                      ; preds = %choice.case197
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 24)
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 128)
  %a.len.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create222, i32 0, i32 0
  store i64 0, ptr %a.len.gep225, align 8
  %a.data.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create222, i32 0, i32 1
  store ptr %a.buf224, ptr %a.data.gep226, align 8
  %a.cap.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create222, i32 0, i32 2
  store i64 16, ptr %a.cap.gep227, align 8
  store ptr %a.create222, ptr %var.locals, align 8
  br label %a.after220

a.after220:                                       ; preds = %a.create219, %choice.case197
  %a.load2228 = load ptr, ptr %var.locals, align 8
  %var.load229 = load ptr, ptr %var.cur_mod, align 8
  %call.res230 = call ptr @"overloads::walk"(ptr %fld.load214, ptr %var.load215, ptr %a.load2228, ptr %var.load229)
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld233 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc232, i32 0, i32 0
  store ptr %fld.load211, ptr %rec.fld233, align 8
  %rec.fld234 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc232, i32 0, i32 1
  store ptr %call.res230, ptr %rec.fld234, align 8
  store ptr %rec.alloc232, ptr %pay.gep208, align 8
  br label %choice.exit

choice.case235:                                   ; preds = %choice.next198
  %pay.gep240 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr241 = load ptr, ptr %pay.gep240, align 8
  store ptr %payload.ptr241, ptr %var._242, align 8
  store ptr %payload.ptr241, ptr %var.fe, align 8
  %var.load243 = load ptr, ptr %var.locals, align 8
  %a.load244 = load ptr, ptr %var.locals, align 8
  %a.null245 = icmp eq ptr %a.load244, null
  br i1 %a.null245, label %a.create246, label %a.after247

choice.next236:                                   ; preds = %choice.next198
  %tag.gep441 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id442 = load i64, ptr %tag.gep441, align 8
  %tag.match443 = icmp eq i64 %tag.id442, 8
  br i1 %tag.match443, label %choice.case439, label %choice.next440

a.create246:                                      ; preds = %choice.case235
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 24)
  %arena.cur250 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 128)
  %a.len.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 0
  store i64 0, ptr %a.len.gep252, align 8
  %a.data.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 1
  store ptr %a.buf251, ptr %a.data.gep253, align 8
  %a.cap.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 2
  store i64 16, ptr %a.cap.gep254, align 8
  store ptr %a.create249, ptr %var.locals, align 8
  br label %a.after247

a.after247:                                       ; preds = %a.create246, %choice.case235
  %a.load2255 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 0
  %a.copy.len256 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 2
  %a.copy.cap257 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 1
  %a.copy.data258 = load ptr, ptr %a.copy.data, align 8
  %arena.cur259 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap257, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur260 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len256, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data258, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len256, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap257, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load261 = load ptr, ptr %var.fn_locals, align 8
  %a.null262 = icmp eq ptr %a.load261, null
  br i1 %a.null262, label %a.create263, label %a.after264

a.create263:                                      ; preds = %a.after247
  %arena.cur265 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 24)
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 128)
  %a.len.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 0
  store i64 0, ptr %a.len.gep269, align 8
  %a.data.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 1
  store ptr %a.buf268, ptr %a.data.gep270, align 8
  %a.cap.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create266, i32 0, i32 2
  store i64 16, ptr %a.cap.gep271, align 8
  store ptr %a.create266, ptr %var.fn_locals, align 8
  br label %a.after264

a.after264:                                       ; preds = %a.create263, %a.after247
  %a.load2272 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after264
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2272, i32 0, i32 0
  %a.len273 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2272, i32 0, i32 2
  %a.cap274 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len273, %a.cap274
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2272)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2272, i32 0, i32 1
  %a.cur.data275 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2272, i32 0, i32 0
  %a.cur.len276 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data275, i64 %a.cur.len276
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len276, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2272, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load277 = load ptr, ptr %var.fe, align 8
  %fld.gep278 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load277, i32 0, i32 0
  %fld.load279 = load ptr, ptr %fld.gep278, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load279, i32 0, i32 0
  %arr.cycle.len280 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load279, i32 0, i32 1
  %arr.cycle.data281 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load ptr, ptr %var._242, align 8
  br label %loop.header.76

loop.header.76:                                   ; preds = %loop.latch.76, %a.store
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len280
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data281, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._282, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load283 = load ptr, ptr %var.p, align 8
  %eq.lhs.len284 = getelementptr inbounds { i64, ptr }, ptr %var.load283, i32 0, i32 0
  %eq.lhs.len285 = load i64, ptr %eq.lhs.len284, align 8
  %eq.lhs.len286 = and i64 %eq.lhs.len285, 281474976710655
  %eq.rhs.len287 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len288 = and i64 %eq.rhs.len287, 281474976710655
  %eq.len289 = icmp eq i64 %eq.lhs.len286, %eq.rhs.len288
  br i1 %eq.len289, label %str.eq.then290, label %str.eq.else291

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit301
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store ptr %cycle.prev.u, ptr %var._242, align 8
  %var.load330 = load ptr, ptr %var.fe, align 8
  %fld.gep331 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load330, i32 0, i32 1
  %fld.load332 = load ptr, ptr %fld.gep331, align 8
  %arr.cycle.len333 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load332, i32 0, i32 0
  %arr.cycle.len334 = load i64, ptr %arr.cycle.len333, align 8
  %arr.cycle.data335 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load332, i32 0, i32 1
  %arr.cycle.data336 = load ptr, ptr %arr.cycle.data335, align 8
  store i64 0, ptr %loop.idx.77, align 8
  %cycle.prev.u337 = load ptr, ptr %var._242, align 8
  br label %loop.header.77

str.eq.then290:                                   ; preds = %loop.body.76
  %eq.lhs.data293 = getelementptr inbounds { i64, ptr }, ptr %var.load283, i32 0, i32 1
  %eq.lhs.data294 = load ptr, ptr %eq.lhs.data293, align 8
  %eq.rhs.data295 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp296 = call i32 @memcmp(ptr %eq.lhs.data294, ptr %eq.rhs.data295, i64 %eq.lhs.len286)
  %eq.cmp.zero297 = icmp eq i32 %eq.memcmp296, 0
  br label %str.eq.merge292

str.eq.else291:                                   ; preds = %loop.body.76
  br label %str.eq.merge292

str.eq.merge292:                                  ; preds = %str.eq.else291, %str.eq.then290
  %str.eq.result298 = phi i1 [ %eq.cmp.zero297, %str.eq.then290 ], [ false, %str.eq.else291 ]
  %str.neq299 = xor i1 %str.eq.result298, true
  br i1 %str.neq299, label %choice.then300, label %choice.exit301

choice.then300:                                   ; preds = %str.eq.merge292
  %var.load302 = load ptr, ptr %var.p, align 8
  %a.load303 = load ptr, ptr %var.fn_locals, align 8
  %a.null304 = icmp eq ptr %a.load303, null
  br i1 %a.null304, label %a.create305, label %a.after306

choice.exit301:                                   ; preds = %a.store317, %str.eq.merge292
  br label %loop.latch.76

a.create305:                                      ; preds = %choice.then300
  %arena.cur307 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 24)
  %arena.cur309 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 128)
  %a.len.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 0
  store i64 0, ptr %a.len.gep311, align 8
  %a.data.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 1
  store ptr %a.buf310, ptr %a.data.gep312, align 8
  %a.cap.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 2
  store i64 16, ptr %a.cap.gep313, align 8
  store ptr %a.create308, ptr %var.fn_locals, align 8
  br label %a.after306

a.after306:                                       ; preds = %a.create305, %choice.then300
  %a.load2314 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check315

a.check315:                                       ; preds = %a.after306
  %a.len318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2314, i32 0, i32 0
  %a.len319 = load i64, ptr %a.len318, align 8
  %a.cap320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2314, i32 0, i32 2
  %a.cap321 = load i64, ptr %a.cap320, align 8
  %a.needs.grow322 = icmp eq i64 %a.len319, %a.cap321
  br i1 %a.needs.grow322, label %a.grow316, label %a.store317

a.grow316:                                        ; preds = %a.check315
  call void @dva_array_grow(ptr %a.load2314)
  br label %a.store317

a.store317:                                       ; preds = %a.grow316, %a.check315
  %a.cur.data323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2314, i32 0, i32 1
  %a.cur.data324 = load ptr, ptr %a.cur.data323, align 8
  %a.cur.len325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2314, i32 0, i32 0
  %a.cur.len326 = load i64, ptr %a.cur.len325, align 8
  %a.elem.gep327 = getelementptr i64, ptr %a.cur.data324, i64 %a.cur.len326
  %slot.p2i = ptrtoint ptr %var.load302 to i64
  store i64 %slot.p2i, ptr %a.elem.gep327, align 8
  %a.next.len328 = add i64 %a.cur.len326, 1
  %b.len.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2314, i32 0, i32 0
  store i64 %a.next.len328, ptr %b.len.gep329, align 8
  br label %choice.exit301

loop.header.77:                                   ; preds = %loop.latch.77, %loop.exit.76
  %counter.load338 = load i64, ptr %loop.idx.77, align 8
  %loop.cond339 = icmp slt i64 %counter.load338, %arr.cycle.len334
  br i1 %loop.cond339, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i340 = sub i64 %counter.load338, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep341 = getelementptr i64, ptr %arr.cycle.data336, i64 %counter.load338
  %arr.elem.raw342 = load i64, ptr %arr.elem.gep341, align 8
  %slot.i2p343 = inttoptr i64 %arr.elem.raw342 to ptr
  store i64 %loop.rel.i340, ptr %var._i344, align 8
  store ptr %slot.i2p343, ptr %var._345, align 8
  store ptr %slot.i2p343, ptr %var.cp, align 8
  %var.load346 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len347 = getelementptr inbounds { i64, ptr }, ptr %var.load346, i32 0, i32 0
  %eq.lhs.len348 = load i64, ptr %eq.lhs.len347, align 8
  %eq.lhs.len349 = and i64 %eq.lhs.len348, 281474976710655
  %eq.rhs.len350 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len351 = and i64 %eq.rhs.len350, 281474976710655
  %eq.len352 = icmp eq i64 %eq.lhs.len349, %eq.rhs.len351
  br i1 %eq.len352, label %str.eq.then353, label %str.eq.else354

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit364
  %step.val394 = load i64, ptr %loop.step.77, align 8
  %loop.next395 = add i64 %counter.load338, %step.val394
  store i64 %loop.next395, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  store ptr %cycle.prev.u337, ptr %var._242, align 8
  %var.load396 = load ptr, ptr %var.fe, align 8
  %fld.gep397 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load396, i32 0, i32 2
  %fld.load398 = load ptr, ptr %fld.gep397, align 8
  %var.load399 = load ptr, ptr %var.table, align 8
  %var.load400 = load ptr, ptr %var.fn_locals, align 8
  %a.load401 = load ptr, ptr %var.fn_locals, align 8
  %a.null402 = icmp eq ptr %a.load401, null
  br i1 %a.null402, label %a.create403, label %a.after404

str.eq.then353:                                   ; preds = %loop.body.77
  %eq.lhs.data356 = getelementptr inbounds { i64, ptr }, ptr %var.load346, i32 0, i32 1
  %eq.lhs.data357 = load ptr, ptr %eq.lhs.data356, align 8
  %eq.rhs.data358 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp359 = call i32 @memcmp(ptr %eq.lhs.data357, ptr %eq.rhs.data358, i64 %eq.lhs.len349)
  %eq.cmp.zero360 = icmp eq i32 %eq.memcmp359, 0
  br label %str.eq.merge355

str.eq.else354:                                   ; preds = %loop.body.77
  br label %str.eq.merge355

str.eq.merge355:                                  ; preds = %str.eq.else354, %str.eq.then353
  %str.eq.result361 = phi i1 [ %eq.cmp.zero360, %str.eq.then353 ], [ false, %str.eq.else354 ]
  %str.neq362 = xor i1 %str.eq.result361, true
  br i1 %str.neq362, label %choice.then363, label %choice.exit364

choice.then363:                                   ; preds = %str.eq.merge355
  %var.load365 = load ptr, ptr %var.cp, align 8
  %a.load366 = load ptr, ptr %var.fn_locals, align 8
  %a.null367 = icmp eq ptr %a.load366, null
  br i1 %a.null367, label %a.create368, label %a.after369

choice.exit364:                                   ; preds = %a.store380, %str.eq.merge355
  br label %loop.latch.77

a.create368:                                      ; preds = %choice.then363
  %arena.cur370 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 24)
  %arena.cur372 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 128)
  %a.len.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 0
  store i64 0, ptr %a.len.gep374, align 8
  %a.data.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 1
  store ptr %a.buf373, ptr %a.data.gep375, align 8
  %a.cap.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 2
  store i64 16, ptr %a.cap.gep376, align 8
  store ptr %a.create371, ptr %var.fn_locals, align 8
  br label %a.after369

a.after369:                                       ; preds = %a.create368, %choice.then363
  %a.load2377 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check378

a.check378:                                       ; preds = %a.after369
  %a.len381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2377, i32 0, i32 0
  %a.len382 = load i64, ptr %a.len381, align 8
  %a.cap383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2377, i32 0, i32 2
  %a.cap384 = load i64, ptr %a.cap383, align 8
  %a.needs.grow385 = icmp eq i64 %a.len382, %a.cap384
  br i1 %a.needs.grow385, label %a.grow379, label %a.store380

a.grow379:                                        ; preds = %a.check378
  call void @dva_array_grow(ptr %a.load2377)
  br label %a.store380

a.store380:                                       ; preds = %a.grow379, %a.check378
  %a.cur.data386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2377, i32 0, i32 1
  %a.cur.data387 = load ptr, ptr %a.cur.data386, align 8
  %a.cur.len388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2377, i32 0, i32 0
  %a.cur.len389 = load i64, ptr %a.cur.len388, align 8
  %a.elem.gep390 = getelementptr i64, ptr %a.cur.data387, i64 %a.cur.len389
  %slot.p2i391 = ptrtoint ptr %var.load365 to i64
  store i64 %slot.p2i391, ptr %a.elem.gep390, align 8
  %a.next.len392 = add i64 %a.cur.len389, 1
  %b.len.gep393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2377, i32 0, i32 0
  store i64 %a.next.len392, ptr %b.len.gep393, align 8
  br label %choice.exit364

a.create403:                                      ; preds = %loop.exit.77
  %arena.cur405 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create406 = call ptr @dva_arena_alloc(ptr %arena.cur405, i64 24)
  %arena.cur407 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 128)
  %a.len.gep409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create406, i32 0, i32 0
  store i64 0, ptr %a.len.gep409, align 8
  %a.data.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create406, i32 0, i32 1
  store ptr %a.buf408, ptr %a.data.gep410, align 8
  %a.cap.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create406, i32 0, i32 2
  store i64 16, ptr %a.cap.gep411, align 8
  store ptr %a.create406, ptr %var.fn_locals, align 8
  br label %a.after404

a.after404:                                       ; preds = %a.create403, %loop.exit.77
  %a.load2412 = load ptr, ptr %var.fn_locals, align 8
  %var.load413 = load ptr, ptr %var.cur_mod, align 8
  %call.res414 = call ptr @"overloads::walk"(ptr %fld.load398, ptr %var.load399, ptr %a.load2412, ptr %var.load413)
  store ptr %call.res414, ptr %var.new_body, align 8
  %arena.cur415 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc416 = call ptr @dva_arena_alloc(ptr %arena.cur415, i64 16)
  %tag.gep417 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc416, i32 0, i32 0
  store i64 14, ptr %tag.gep417, align 8
  %pay.gep418 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc416, i32 0, i32 1
  %var.load419 = load ptr, ptr %var.fe, align 8
  %fld.gep420 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load419, i32 0, i32 0
  %fld.load421 = load ptr, ptr %fld.gep420, align 8
  %var.load422 = load ptr, ptr %var.fe, align 8
  %fld.gep423 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load422, i32 0, i32 1
  %fld.load424 = load ptr, ptr %fld.gep423, align 8
  %var.load425 = load ptr, ptr %var.new_body, align 8
  %var.load426 = load ptr, ptr %var.fe, align 8
  %fld.gep427 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load426, i32 0, i32 3
  %fld.load428 = load i64, ptr %fld.gep427, align 8
  %var.load429 = load ptr, ptr %var.fe, align 8
  %fld.gep430 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load429, i32 0, i32 4
  %fld.load431 = load i64, ptr %fld.gep430, align 8
  %arena.cur432 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld434 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc433, i32 0, i32 0
  store ptr %fld.load421, ptr %rec.fld434, align 8
  %rec.fld435 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc433, i32 0, i32 1
  store ptr %fld.load424, ptr %rec.fld435, align 8
  %rec.fld436 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc433, i32 0, i32 2
  store ptr %var.load425, ptr %rec.fld436, align 8
  %rec.fld437 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc433, i32 0, i32 3
  store i64 %fld.load428, ptr %rec.fld437, align 8
  %rec.fld438 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc433, i32 0, i32 4
  store i64 %fld.load431, ptr %rec.fld438, align 8
  store ptr %rec.alloc433, ptr %pay.gep418, align 8
  br label %choice.exit

choice.case439:                                   ; preds = %choice.next236
  %pay.gep444 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr445 = load ptr, ptr %pay.gep444, align 8
  store ptr %payload.ptr445, ptr %var._446, align 8
  store ptr %payload.ptr445, ptr %var.be, align 8
  %var.load447 = load ptr, ptr %var.locals, align 8
  %a.load448 = load ptr, ptr %var.locals, align 8
  %a.null449 = icmp eq ptr %a.load448, null
  br i1 %a.null449, label %a.create450, label %a.after451

choice.next440:                                   ; preds = %choice.next236
  %tag.gep653 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id654 = load i64, ptr %tag.gep653, align 8
  %tag.match655 = icmp eq i64 %tag.id654, 7
  br i1 %tag.match655, label %choice.case651, label %choice.next652

a.create450:                                      ; preds = %choice.case439
  %arena.cur452 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 24)
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 128)
  %a.len.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 0
  store i64 0, ptr %a.len.gep456, align 8
  %a.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 1
  store ptr %a.buf455, ptr %a.data.gep457, align 8
  %a.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 2
  store i64 16, ptr %a.cap.gep458, align 8
  store ptr %a.create453, ptr %var.locals, align 8
  br label %a.after451

a.after451:                                       ; preds = %a.create450, %choice.case439
  %a.load2459 = load ptr, ptr %var.locals, align 8
  %a.copy.len460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 0
  %a.copy.len461 = load i64, ptr %a.copy.len460, align 8
  %a.copy.cap462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 2
  %a.copy.cap463 = load i64, ptr %a.copy.cap462, align 8
  %a.copy.data464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 1
  %a.copy.data465 = load ptr, ptr %a.copy.data464, align 8
  %arena.cur466 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 24)
  %a.copy.buflen468 = add i64 %a.copy.cap463, 1
  %a.copy.bufsize469 = mul i64 %a.copy.buflen468, 8
  %arena.cur470 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf471 = call ptr @dva_arena_alloc(ptr %arena.cur470, i64 %a.copy.bufsize469)
  %a.copy.copylen472 = mul i64 %a.copy.len461, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf471, ptr align 1 %a.copy.data465, i64 %a.copy.copylen472, i1 false)
  %a.copy.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy467, i32 0, i32 0
  store i64 %a.copy.len461, ptr %a.copy.len.gep473, align 8
  %a.copy.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy467, i32 0, i32 1
  store ptr %a.copy.buf471, ptr %a.copy.data.gep474, align 8
  %a.copy.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy467, i32 0, i32 2
  store i64 %a.copy.cap463, ptr %a.copy.cap.gep475, align 8
  store ptr %a.copy467, ptr %var.blk_locals, align 8
  %arena.cur476 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur476, i64 24)
  %arena.cur477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 128)
  %a.len.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep479, align 8
  %a.data.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf478, ptr %a.data.gep480, align 8
  %a.cap.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep481, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load482 = load ptr, ptr %var.be, align 8
  %a.load483 = load ptr, ptr %var.be, align 8
  %a.null484 = icmp eq ptr %a.load483, null
  br i1 %a.null484, label %a.create485, label %a.after486

a.create485:                                      ; preds = %a.after451
  %arena.cur487 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 24)
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 128)
  %a.len.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 0
  store i64 0, ptr %a.len.gep491, align 8
  %a.data.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 1
  store ptr %a.buf490, ptr %a.data.gep492, align 8
  %a.cap.gep493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create488, i32 0, i32 2
  store i64 16, ptr %a.cap.gep493, align 8
  store ptr %a.create488, ptr %var.be, align 8
  br label %a.after486

a.after486:                                       ; preds = %a.create485, %a.after451
  %a.load2494 = load ptr, ptr %var.be, align 8
  %arr.cycle.len495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2494, i32 0, i32 0
  %arr.cycle.len496 = load i64, ptr %arr.cycle.len495, align 8
  %arr.cycle.data497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2494, i32 0, i32 1
  %arr.cycle.data498 = load ptr, ptr %arr.cycle.data497, align 8
  store i64 0, ptr %loop.idx.78, align 8
  %cycle.prev.u499 = load ptr, ptr %var._446, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after486
  %counter.load500 = load i64, ptr %loop.idx.78, align 8
  %loop.cond501 = icmp slt i64 %counter.load500, %arr.cycle.len496
  br i1 %loop.cond501, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i502 = sub i64 %counter.load500, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep503 = getelementptr i64, ptr %arr.cycle.data498, i64 %counter.load500
  %arr.elem.raw504 = load i64, ptr %arr.elem.gep503, align 8
  %slot.i2p505 = inttoptr i64 %arr.elem.raw504 to ptr
  store i64 %loop.rel.i502, ptr %var._i506, align 8
  store ptr %slot.i2p505, ptr %var._507, align 8
  store ptr %slot.i2p505, ptr %var.child, align 8
  %var.load508 = load ptr, ptr %var.child, align 8
  %var.load509 = load ptr, ptr %var.table, align 8
  %var.load510 = load ptr, ptr %var.blk_locals, align 8
  %a.load511 = load ptr, ptr %var.blk_locals, align 8
  %a.null512 = icmp eq ptr %a.load511, null
  br i1 %a.null512, label %a.create513, label %a.after514

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit554
  %step.val632 = load i64, ptr %loop.step.78, align 8
  %loop.next633 = add i64 %counter.load500, %step.val632
  store i64 %loop.next633, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  store ptr %cycle.prev.u499, ptr %var._446, align 8
  %arena.cur634 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc635 = call ptr @dva_arena_alloc(ptr %arena.cur634, i64 16)
  %tag.gep636 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc635, i32 0, i32 0
  store i64 8, ptr %tag.gep636, align 8
  %pay.gep637 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc635, i32 0, i32 1
  %var.load638 = load ptr, ptr %var.new_exprs, align 8
  %a.load639 = load ptr, ptr %var.new_exprs, align 8
  %a.null640 = icmp eq ptr %a.load639, null
  br i1 %a.null640, label %a.create641, label %a.after642

a.create513:                                      ; preds = %loop.body.78
  %arena.cur515 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create516 = call ptr @dva_arena_alloc(ptr %arena.cur515, i64 24)
  %arena.cur517 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf518 = call ptr @dva_arena_alloc(ptr %arena.cur517, i64 128)
  %a.len.gep519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create516, i32 0, i32 0
  store i64 0, ptr %a.len.gep519, align 8
  %a.data.gep520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create516, i32 0, i32 1
  store ptr %a.buf518, ptr %a.data.gep520, align 8
  %a.cap.gep521 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create516, i32 0, i32 2
  store i64 16, ptr %a.cap.gep521, align 8
  store ptr %a.create516, ptr %var.blk_locals, align 8
  br label %a.after514

a.after514:                                       ; preds = %a.create513, %loop.body.78
  %a.load2522 = load ptr, ptr %var.blk_locals, align 8
  %var.load523 = load ptr, ptr %var.cur_mod, align 8
  %call.res524 = call ptr @"overloads::walk"(ptr %var.load508, ptr %var.load509, ptr %a.load2522, ptr %var.load523)
  %a.load525 = load ptr, ptr %var.new_exprs, align 8
  %a.null526 = icmp eq ptr %a.load525, null
  br i1 %a.null526, label %a.create527, label %a.after528

a.create527:                                      ; preds = %a.after514
  %arena.cur529 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 24)
  %arena.cur531 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf532 = call ptr @dva_arena_alloc(ptr %arena.cur531, i64 128)
  %a.len.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create530, i32 0, i32 0
  store i64 0, ptr %a.len.gep533, align 8
  %a.data.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create530, i32 0, i32 1
  store ptr %a.buf532, ptr %a.data.gep534, align 8
  %a.cap.gep535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create530, i32 0, i32 2
  store i64 16, ptr %a.cap.gep535, align 8
  store ptr %a.create530, ptr %var.new_exprs, align 8
  br label %a.after528

a.after528:                                       ; preds = %a.create527, %a.after514
  %a.load2536 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check537

a.check537:                                       ; preds = %a.after528
  %a.len540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2536, i32 0, i32 0
  %a.len541 = load i64, ptr %a.len540, align 8
  %a.cap542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2536, i32 0, i32 2
  %a.cap543 = load i64, ptr %a.cap542, align 8
  %a.needs.grow544 = icmp eq i64 %a.len541, %a.cap543
  br i1 %a.needs.grow544, label %a.grow538, label %a.store539

a.grow538:                                        ; preds = %a.check537
  call void @dva_array_grow(ptr %a.load2536)
  br label %a.store539

a.store539:                                       ; preds = %a.grow538, %a.check537
  %a.cur.data545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2536, i32 0, i32 1
  %a.cur.data546 = load ptr, ptr %a.cur.data545, align 8
  %a.cur.len547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2536, i32 0, i32 0
  %a.cur.len548 = load i64, ptr %a.cur.len547, align 8
  %a.elem.gep549 = getelementptr i64, ptr %a.cur.data546, i64 %a.cur.len548
  %slot.p2i550 = ptrtoint ptr %call.res524 to i64
  store i64 %slot.p2i550, ptr %a.elem.gep549, align 8
  %a.next.len551 = add i64 %a.cur.len548, 1
  %b.len.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2536, i32 0, i32 0
  store i64 %a.next.len551, ptr %b.len.gep552, align 8
  %var.load553 = load ptr, ptr %var.child, align 8
  %tag.gep557 = getelementptr inbounds { i64, ptr }, ptr %var.load553, i32 0, i32 0
  %tag.id558 = load i64, ptr %tag.gep557, align 8
  %tag.match559 = icmp eq i64 %tag.id558, 6
  br i1 %tag.match559, label %choice.case555, label %choice.next556

choice.exit554:                                   ; preds = %choice.next556, %choice.exit600
  br label %loop.latch.78

choice.case555:                                   ; preds = %a.store539
  %pay.gep560 = getelementptr inbounds { i64, ptr }, ptr %var.load553, i32 0, i32 1
  %payload.ptr561 = load ptr, ptr %pay.gep560, align 8
  store ptr %payload.ptr561, ptr %var._562, align 8
  store ptr %payload.ptr561, ptr %var.ca, align 8
  %var.load563 = load ptr, ptr %var.locals, align 8
  %a.load564 = load ptr, ptr %var.locals, align 8
  %a.null565 = icmp eq ptr %a.load564, null
  br i1 %a.null565, label %a.create566, label %a.after567

choice.next556:                                   ; preds = %a.store539
  br label %choice.exit554

a.create566:                                      ; preds = %choice.case555
  %arena.cur568 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 24)
  %arena.cur570 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 128)
  %a.len.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create569, i32 0, i32 0
  store i64 0, ptr %a.len.gep572, align 8
  %a.data.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create569, i32 0, i32 1
  store ptr %a.buf571, ptr %a.data.gep573, align 8
  %a.cap.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create569, i32 0, i32 2
  store i64 16, ptr %a.cap.gep574, align 8
  store ptr %a.create569, ptr %var.locals, align 8
  br label %a.after567

a.after567:                                       ; preds = %a.create566, %choice.case555
  %a.load2575 = load ptr, ptr %var.locals, align 8
  %call.res576 = call i1 @"overloads::contains"(ptr %a.load2575, ptr @str.7.struct)
  br i1 %call.res576, label %or.79.then, label %or.79.else

or.79.then:                                       ; preds = %a.after567
  br label %or.79.exit

or.79.else:                                       ; preds = %a.after567
  %var.load577 = load ptr, ptr %var.table, align 8
  %var.load578 = load ptr, ptr %var.ca, align 8
  %fld.gep579 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load578, i32 0, i32 0
  %fld.load580 = load ptr, ptr %fld.gep579, align 8
  %var.load581 = load ptr, ptr %var.cur_mod, align 8
  %call.res582 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load577, ptr %fld.load580, ptr %var.load581)
  store { i64, ptr } %call.res582, ptr %ret.ub.salloc583, align 8
  %eq.lhs.len584 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc583, i32 0, i32 0
  %eq.lhs.len585 = load i64, ptr %eq.lhs.len584, align 8
  %eq.lhs.len586 = and i64 %eq.lhs.len585, 281474976710655
  %eq.rhs.len587 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len588 = and i64 %eq.rhs.len587, 281474976710655
  %eq.len589 = icmp eq i64 %eq.lhs.len586, %eq.rhs.len588
  br i1 %eq.len589, label %str.eq.then590, label %str.eq.else591

or.79.exit:                                       ; preds = %str.eq.merge592, %or.79.then
  %or.79.phi = phi i1 [ %call.res576, %or.79.then ], [ %str.eq.result598, %str.eq.merge592 ]
  br i1 %or.79.phi, label %choice.then599, label %choice.exit600

str.eq.then590:                                   ; preds = %or.79.else
  %eq.lhs.data593 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc583, i32 0, i32 1
  %eq.lhs.data594 = load ptr, ptr %eq.lhs.data593, align 8
  %eq.rhs.data595 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp596 = call i32 @memcmp(ptr %eq.lhs.data594, ptr %eq.rhs.data595, i64 %eq.lhs.len586)
  %eq.cmp.zero597 = icmp eq i32 %eq.memcmp596, 0
  br label %str.eq.merge592

str.eq.else591:                                   ; preds = %or.79.else
  br label %str.eq.merge592

str.eq.merge592:                                  ; preds = %str.eq.else591, %str.eq.then590
  %str.eq.result598 = phi i1 [ %eq.cmp.zero597, %str.eq.then590 ], [ false, %str.eq.else591 ]
  br label %or.79.exit

choice.then599:                                   ; preds = %or.79.exit
  %var.load601 = load ptr, ptr %var.ca, align 8
  %fld.gep602 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load601, i32 0, i32 0
  %fld.load603 = load ptr, ptr %fld.gep602, align 8
  %a.load604 = load ptr, ptr %var.blk_locals, align 8
  %a.null605 = icmp eq ptr %a.load604, null
  br i1 %a.null605, label %a.create606, label %a.after607

choice.exit600:                                   ; preds = %a.store618, %or.79.exit
  br label %choice.exit554

a.create606:                                      ; preds = %choice.then599
  %arena.cur608 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 24)
  %arena.cur610 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 128)
  %a.len.gep612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create609, i32 0, i32 0
  store i64 0, ptr %a.len.gep612, align 8
  %a.data.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create609, i32 0, i32 1
  store ptr %a.buf611, ptr %a.data.gep613, align 8
  %a.cap.gep614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create609, i32 0, i32 2
  store i64 16, ptr %a.cap.gep614, align 8
  store ptr %a.create609, ptr %var.blk_locals, align 8
  br label %a.after607

a.after607:                                       ; preds = %a.create606, %choice.then599
  %a.load2615 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check616

a.check616:                                       ; preds = %a.after607
  %a.len619 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2615, i32 0, i32 0
  %a.len620 = load i64, ptr %a.len619, align 8
  %a.cap621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2615, i32 0, i32 2
  %a.cap622 = load i64, ptr %a.cap621, align 8
  %a.needs.grow623 = icmp eq i64 %a.len620, %a.cap622
  br i1 %a.needs.grow623, label %a.grow617, label %a.store618

a.grow617:                                        ; preds = %a.check616
  call void @dva_array_grow(ptr %a.load2615)
  br label %a.store618

a.store618:                                       ; preds = %a.grow617, %a.check616
  %a.cur.data624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2615, i32 0, i32 1
  %a.cur.data625 = load ptr, ptr %a.cur.data624, align 8
  %a.cur.len626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2615, i32 0, i32 0
  %a.cur.len627 = load i64, ptr %a.cur.len626, align 8
  %a.elem.gep628 = getelementptr i64, ptr %a.cur.data625, i64 %a.cur.len627
  %slot.p2i629 = ptrtoint ptr %fld.load603 to i64
  store i64 %slot.p2i629, ptr %a.elem.gep628, align 8
  %a.next.len630 = add i64 %a.cur.len627, 1
  %b.len.gep631 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2615, i32 0, i32 0
  store i64 %a.next.len630, ptr %b.len.gep631, align 8
  br label %choice.exit600

a.create641:                                      ; preds = %loop.exit.78
  %arena.cur643 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create644 = call ptr @dva_arena_alloc(ptr %arena.cur643, i64 24)
  %arena.cur645 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 128)
  %a.len.gep647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 0
  store i64 0, ptr %a.len.gep647, align 8
  %a.data.gep648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 1
  store ptr %a.buf646, ptr %a.data.gep648, align 8
  %a.cap.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create644, i32 0, i32 2
  store i64 16, ptr %a.cap.gep649, align 8
  store ptr %a.create644, ptr %var.new_exprs, align 8
  br label %a.after642

a.after642:                                       ; preds = %a.create641, %loop.exit.78
  %a.load2650 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2650, ptr %pay.gep637, align 8
  br label %choice.exit

choice.case651:                                   ; preds = %choice.next440
  %pay.gep656 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr657 = load ptr, ptr %pay.gep656, align 8
  store ptr %payload.ptr657, ptr %var._658, align 8
  store ptr %payload.ptr657, ptr %var.ch, align 8
  %var.load659 = load ptr, ptr %var.ch, align 8
  %fld.gep660 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load659, i32 0, i32 0
  %fld.load661 = load ptr, ptr %fld.gep660, align 8
  %var.load662 = load ptr, ptr %var.table, align 8
  %var.load663 = load ptr, ptr %var.locals, align 8
  %a.load664 = load ptr, ptr %var.locals, align 8
  %a.null665 = icmp eq ptr %a.load664, null
  br i1 %a.null665, label %a.create666, label %a.after667

choice.next652:                                   ; preds = %choice.next440
  %tag.gep947 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id948 = load i64, ptr %tag.gep947, align 8
  %tag.match949 = icmp eq i64 %tag.id948, 6
  br i1 %tag.match949, label %choice.case945, label %choice.next946

a.create666:                                      ; preds = %choice.case651
  %arena.cur668 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 24)
  %arena.cur670 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 128)
  %a.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 0
  store i64 0, ptr %a.len.gep672, align 8
  %a.data.gep673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 1
  store ptr %a.buf671, ptr %a.data.gep673, align 8
  %a.cap.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 2
  store i64 16, ptr %a.cap.gep674, align 8
  store ptr %a.create669, ptr %var.locals, align 8
  br label %a.after667

a.after667:                                       ; preds = %a.create666, %choice.case651
  %a.load2675 = load ptr, ptr %var.locals, align 8
  %var.load676 = load ptr, ptr %var.cur_mod, align 8
  %call.res677 = call ptr @"overloads::walk"(ptr %fld.load661, ptr %var.load662, ptr %a.load2675, ptr %var.load676)
  store ptr %call.res677, ptr %var.new_cond, align 8
  %arena.cur678 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 24)
  %arena.cur680 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf681 = call ptr @dva_arena_alloc(ptr %arena.cur680, i64 128)
  %a.len.gep682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new679, i32 0, i32 0
  store i64 0, ptr %a.len.gep682, align 8
  %a.data.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new679, i32 0, i32 1
  store ptr %a.buf681, ptr %a.data.gep683, align 8
  %a.cap.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new679, i32 0, i32 2
  store i64 16, ptr %a.cap.gep684, align 8
  store ptr %a.new679, ptr %var.new_branches, align 8
  %var.load685 = load ptr, ptr %var.ch, align 8
  %fld.gep686 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load685, i32 0, i32 2
  %fld.load687 = load ptr, ptr %fld.gep686, align 8
  %arr.cycle.len688 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load687, i32 0, i32 0
  %arr.cycle.len689 = load i64, ptr %arr.cycle.len688, align 8
  %arr.cycle.data690 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load687, i32 0, i32 1
  %arr.cycle.data691 = load ptr, ptr %arr.cycle.data690, align 8
  store i64 0, ptr %loop.idx.80, align 8
  %cycle.prev.u692 = load ptr, ptr %var._658, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after667
  %counter.load693 = load i64, ptr %loop.idx.80, align 8
  %loop.cond694 = icmp slt i64 %counter.load693, %arr.cycle.len689
  br i1 %loop.cond694, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i695 = sub i64 %counter.load693, 0
  store i64 1, ptr %loop.step.80, align 8
  %arr.elem.gep696 = getelementptr i64, ptr %arr.cycle.data691, i64 %counter.load693
  %arr.elem.raw697 = load i64, ptr %arr.elem.gep696, align 8
  %slot.i2p698 = inttoptr i64 %arr.elem.raw697 to ptr
  store i64 %loop.rel.i695, ptr %var._i699, align 8
  store ptr %slot.i2p698, ptr %var._700, align 8
  store ptr %slot.i2p698, ptr %var.br, align 8
  %var.load701 = load ptr, ptr %var.locals, align 8
  %a.load702 = load ptr, ptr %var.locals, align 8
  %a.null703 = icmp eq ptr %a.load702, null
  br i1 %a.null703, label %a.create704, label %a.after705

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %a.store903
  %step.val917 = load i64, ptr %loop.step.80, align 8
  %loop.next918 = add i64 %counter.load693, %step.val917
  store i64 %loop.next918, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  store ptr %cycle.prev.u692, ptr %var._658, align 8
  %arena.cur919 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc920 = call ptr @dva_arena_alloc(ptr %arena.cur919, i64 16)
  %tag.gep921 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc920, i32 0, i32 0
  store i64 7, ptr %tag.gep921, align 8
  %pay.gep922 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc920, i32 0, i32 1
  %var.load923 = load ptr, ptr %var.new_cond, align 8
  %var.load924 = load ptr, ptr %var.ch, align 8
  %fld.gep925 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load924, i32 0, i32 1
  %fld.load926 = load i1, ptr %fld.gep925, align 1
  %var.load927 = load ptr, ptr %var.new_branches, align 8
  %a.load928 = load ptr, ptr %var.new_branches, align 8
  %a.null929 = icmp eq ptr %a.load928, null
  br i1 %a.null929, label %a.create930, label %a.after931

a.create704:                                      ; preds = %loop.body.80
  %arena.cur706 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create707 = call ptr @dva_arena_alloc(ptr %arena.cur706, i64 24)
  %arena.cur708 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 128)
  %a.len.gep710 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 0
  store i64 0, ptr %a.len.gep710, align 8
  %a.data.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 1
  store ptr %a.buf709, ptr %a.data.gep711, align 8
  %a.cap.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create707, i32 0, i32 2
  store i64 16, ptr %a.cap.gep712, align 8
  store ptr %a.create707, ptr %var.locals, align 8
  br label %a.after705

a.after705:                                       ; preds = %a.create704, %loop.body.80
  %a.load2713 = load ptr, ptr %var.locals, align 8
  %a.copy.len714 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2713, i32 0, i32 0
  %a.copy.len715 = load i64, ptr %a.copy.len714, align 8
  %a.copy.cap716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2713, i32 0, i32 2
  %a.copy.cap717 = load i64, ptr %a.copy.cap716, align 8
  %a.copy.data718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2713, i32 0, i32 1
  %a.copy.data719 = load ptr, ptr %a.copy.data718, align 8
  %arena.cur720 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy721 = call ptr @dva_arena_alloc(ptr %arena.cur720, i64 24)
  %a.copy.buflen722 = add i64 %a.copy.cap717, 1
  %a.copy.bufsize723 = mul i64 %a.copy.buflen722, 8
  %arena.cur724 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf725 = call ptr @dva_arena_alloc(ptr %arena.cur724, i64 %a.copy.bufsize723)
  %a.copy.copylen726 = mul i64 %a.copy.len715, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf725, ptr align 1 %a.copy.data719, i64 %a.copy.copylen726, i1 false)
  %a.copy.len.gep727 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy721, i32 0, i32 0
  store i64 %a.copy.len715, ptr %a.copy.len.gep727, align 8
  %a.copy.data.gep728 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy721, i32 0, i32 1
  store ptr %a.copy.buf725, ptr %a.copy.data.gep728, align 8
  %a.copy.cap.gep729 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy721, i32 0, i32 2
  store i64 %a.copy.cap717, ptr %a.copy.cap.gep729, align 8
  store ptr %a.copy721, ptr %var.br_locals, align 8
  %var.load730 = load ptr, ptr %var.br, align 8
  %fld.gep731 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load730, i32 0, i32 4
  %fld.load732 = load ptr, ptr %fld.gep731, align 8
  %arr.cycle.len733 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load732, i32 0, i32 0
  %arr.cycle.len734 = load i64, ptr %arr.cycle.len733, align 8
  %arr.cycle.data735 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load732, i32 0, i32 1
  %arr.cycle.data736 = load ptr, ptr %arr.cycle.data735, align 8
  store i64 0, ptr %loop.idx.81, align 8
  %cycle.prev.u737 = load ptr, ptr %var._700, align 8
  %cycle.prev.i = load i64, ptr %var._i699, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after705
  %counter.load738 = load i64, ptr %loop.idx.81, align 8
  %loop.cond739 = icmp slt i64 %counter.load738, %arr.cycle.len734
  br i1 %loop.cond739, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i740 = sub i64 %counter.load738, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep741 = getelementptr i64, ptr %arr.cycle.data736, i64 %counter.load738
  %arr.elem.raw742 = load i64, ptr %arr.elem.gep741, align 8
  %slot.i2p743 = inttoptr i64 %arr.elem.raw742 to ptr
  store i64 %loop.rel.i740, ptr %var._i744, align 8
  store ptr %slot.i2p743, ptr %var._745, align 8
  store ptr %slot.i2p743, ptr %var.bv, align 8
  %var.load746 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len747 = getelementptr inbounds { i64, ptr }, ptr %var.load746, i32 0, i32 0
  %eq.lhs.len748 = load i64, ptr %eq.lhs.len747, align 8
  %eq.lhs.len749 = and i64 %eq.lhs.len748, 281474976710655
  %eq.rhs.len750 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len751 = and i64 %eq.rhs.len750, 281474976710655
  %eq.len752 = icmp eq i64 %eq.lhs.len749, %eq.rhs.len751
  br i1 %eq.len752, label %str.eq.then753, label %str.eq.else754

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit764
  %step.val794 = load i64, ptr %loop.step.81, align 8
  %loop.next795 = add i64 %counter.load738, %step.val794
  store i64 %loop.next795, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  store ptr %cycle.prev.u737, ptr %var._700, align 8
  store i64 %cycle.prev.i, ptr %var._i699, align 8
  %var.load796 = load ptr, ptr %var.br, align 8
  %fld.gep797 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load796, i32 0, i32 1
  %fld.load798 = load ptr, ptr %fld.gep797, align 8
  %var.load799 = load ptr, ptr %var.table, align 8
  %var.load800 = load ptr, ptr %var.br_locals, align 8
  %a.load801 = load ptr, ptr %var.br_locals, align 8
  %a.null802 = icmp eq ptr %a.load801, null
  br i1 %a.null802, label %a.create803, label %a.after804

str.eq.then753:                                   ; preds = %loop.body.81
  %eq.lhs.data756 = getelementptr inbounds { i64, ptr }, ptr %var.load746, i32 0, i32 1
  %eq.lhs.data757 = load ptr, ptr %eq.lhs.data756, align 8
  %eq.rhs.data758 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp759 = call i32 @memcmp(ptr %eq.lhs.data757, ptr %eq.rhs.data758, i64 %eq.lhs.len749)
  %eq.cmp.zero760 = icmp eq i32 %eq.memcmp759, 0
  br label %str.eq.merge755

str.eq.else754:                                   ; preds = %loop.body.81
  br label %str.eq.merge755

str.eq.merge755:                                  ; preds = %str.eq.else754, %str.eq.then753
  %str.eq.result761 = phi i1 [ %eq.cmp.zero760, %str.eq.then753 ], [ false, %str.eq.else754 ]
  %str.neq762 = xor i1 %str.eq.result761, true
  br i1 %str.neq762, label %choice.then763, label %choice.exit764

choice.then763:                                   ; preds = %str.eq.merge755
  %var.load765 = load ptr, ptr %var.bv, align 8
  %a.load766 = load ptr, ptr %var.br_locals, align 8
  %a.null767 = icmp eq ptr %a.load766, null
  br i1 %a.null767, label %a.create768, label %a.after769

choice.exit764:                                   ; preds = %a.store780, %str.eq.merge755
  br label %loop.latch.81

a.create768:                                      ; preds = %choice.then763
  %arena.cur770 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create771 = call ptr @dva_arena_alloc(ptr %arena.cur770, i64 24)
  %arena.cur772 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 128)
  %a.len.gep774 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 0
  store i64 0, ptr %a.len.gep774, align 8
  %a.data.gep775 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 1
  store ptr %a.buf773, ptr %a.data.gep775, align 8
  %a.cap.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 2
  store i64 16, ptr %a.cap.gep776, align 8
  store ptr %a.create771, ptr %var.br_locals, align 8
  br label %a.after769

a.after769:                                       ; preds = %a.create768, %choice.then763
  %a.load2777 = load ptr, ptr %var.br_locals, align 8
  br label %a.check778

a.check778:                                       ; preds = %a.after769
  %a.len781 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2777, i32 0, i32 0
  %a.len782 = load i64, ptr %a.len781, align 8
  %a.cap783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2777, i32 0, i32 2
  %a.cap784 = load i64, ptr %a.cap783, align 8
  %a.needs.grow785 = icmp eq i64 %a.len782, %a.cap784
  br i1 %a.needs.grow785, label %a.grow779, label %a.store780

a.grow779:                                        ; preds = %a.check778
  call void @dva_array_grow(ptr %a.load2777)
  br label %a.store780

a.store780:                                       ; preds = %a.grow779, %a.check778
  %a.cur.data786 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2777, i32 0, i32 1
  %a.cur.data787 = load ptr, ptr %a.cur.data786, align 8
  %a.cur.len788 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2777, i32 0, i32 0
  %a.cur.len789 = load i64, ptr %a.cur.len788, align 8
  %a.elem.gep790 = getelementptr i64, ptr %a.cur.data787, i64 %a.cur.len789
  %slot.p2i791 = ptrtoint ptr %var.load765 to i64
  store i64 %slot.p2i791, ptr %a.elem.gep790, align 8
  %a.next.len792 = add i64 %a.cur.len789, 1
  %b.len.gep793 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2777, i32 0, i32 0
  store i64 %a.next.len792, ptr %b.len.gep793, align 8
  br label %choice.exit764

a.create803:                                      ; preds = %loop.exit.81
  %arena.cur805 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create806 = call ptr @dva_arena_alloc(ptr %arena.cur805, i64 24)
  %arena.cur807 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 128)
  %a.len.gep809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create806, i32 0, i32 0
  store i64 0, ptr %a.len.gep809, align 8
  %a.data.gep810 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create806, i32 0, i32 1
  store ptr %a.buf808, ptr %a.data.gep810, align 8
  %a.cap.gep811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create806, i32 0, i32 2
  store i64 16, ptr %a.cap.gep811, align 8
  store ptr %a.create806, ptr %var.br_locals, align 8
  br label %a.after804

a.after804:                                       ; preds = %a.create803, %loop.exit.81
  %a.load2812 = load ptr, ptr %var.br_locals, align 8
  %var.load813 = load ptr, ptr %var.cur_mod, align 8
  %call.res814 = call ptr @"overloads::walk_many"(ptr %fld.load798, ptr %var.load799, ptr %a.load2812, ptr %var.load813)
  store ptr %call.res814, ptr %var.new_cases, align 8
  %var.load815 = load ptr, ptr %var.br, align 8
  %fld.gep816 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load815, i32 0, i32 2
  %fld.load817 = load ptr, ptr %fld.gep816, align 8
  %var.load818 = load ptr, ptr %var.table, align 8
  %var.load819 = load ptr, ptr %var.br_locals, align 8
  %a.load820 = load ptr, ptr %var.br_locals, align 8
  %a.null821 = icmp eq ptr %a.load820, null
  br i1 %a.null821, label %a.create822, label %a.after823

a.create822:                                      ; preds = %a.after804
  %arena.cur824 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create825 = call ptr @dva_arena_alloc(ptr %arena.cur824, i64 24)
  %arena.cur826 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 128)
  %a.len.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 0
  store i64 0, ptr %a.len.gep828, align 8
  %a.data.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 1
  store ptr %a.buf827, ptr %a.data.gep829, align 8
  %a.cap.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 2
  store i64 16, ptr %a.cap.gep830, align 8
  store ptr %a.create825, ptr %var.br_locals, align 8
  br label %a.after823

a.after823:                                       ; preds = %a.create822, %a.after804
  %a.load2831 = load ptr, ptr %var.br_locals, align 8
  %var.load832 = load ptr, ptr %var.cur_mod, align 8
  %call.res833 = call ptr @"overloads::walk"(ptr %fld.load817, ptr %var.load818, ptr %a.load2831, ptr %var.load832)
  store ptr %call.res833, ptr %var.new_pred, align 8
  %var.load834 = load ptr, ptr %var.br, align 8
  %fld.gep835 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load834, i32 0, i32 6
  %fld.load836 = load ptr, ptr %fld.gep835, align 8
  %var.load837 = load ptr, ptr %var.table, align 8
  %var.load838 = load ptr, ptr %var.br_locals, align 8
  %a.load839 = load ptr, ptr %var.br_locals, align 8
  %a.null840 = icmp eq ptr %a.load839, null
  br i1 %a.null840, label %a.create841, label %a.after842

a.create841:                                      ; preds = %a.after823
  %arena.cur843 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create844 = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 24)
  %arena.cur845 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf846 = call ptr @dva_arena_alloc(ptr %arena.cur845, i64 128)
  %a.len.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create844, i32 0, i32 0
  store i64 0, ptr %a.len.gep847, align 8
  %a.data.gep848 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create844, i32 0, i32 1
  store ptr %a.buf846, ptr %a.data.gep848, align 8
  %a.cap.gep849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create844, i32 0, i32 2
  store i64 16, ptr %a.cap.gep849, align 8
  store ptr %a.create844, ptr %var.br_locals, align 8
  br label %a.after842

a.after842:                                       ; preds = %a.create841, %a.after823
  %a.load2850 = load ptr, ptr %var.br_locals, align 8
  %var.load851 = load ptr, ptr %var.cur_mod, align 8
  %call.res852 = call ptr @"overloads::walk"(ptr %fld.load836, ptr %var.load837, ptr %a.load2850, ptr %var.load851)
  store ptr %call.res852, ptr %var.new_blk, align 8
  %var.load853 = load ptr, ptr %var.br, align 8
  %fld.gep854 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load853, i32 0, i32 0
  %fld.load855 = load ptr, ptr %fld.gep854, align 8
  %var.load856 = load ptr, ptr %var.new_cases, align 8
  %a.load857 = load ptr, ptr %var.new_cases, align 8
  %a.null858 = icmp eq ptr %a.load857, null
  br i1 %a.null858, label %a.create859, label %a.after860

a.create859:                                      ; preds = %a.after842
  %arena.cur861 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create862 = call ptr @dva_arena_alloc(ptr %arena.cur861, i64 24)
  %arena.cur863 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf864 = call ptr @dva_arena_alloc(ptr %arena.cur863, i64 128)
  %a.len.gep865 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create862, i32 0, i32 0
  store i64 0, ptr %a.len.gep865, align 8
  %a.data.gep866 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create862, i32 0, i32 1
  store ptr %a.buf864, ptr %a.data.gep866, align 8
  %a.cap.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create862, i32 0, i32 2
  store i64 16, ptr %a.cap.gep867, align 8
  store ptr %a.create862, ptr %var.new_cases, align 8
  br label %a.after860

a.after860:                                       ; preds = %a.create859, %a.after842
  %a.load2868 = load ptr, ptr %var.new_cases, align 8
  %var.load869 = load ptr, ptr %var.new_pred, align 8
  %var.load870 = load ptr, ptr %var.br, align 8
  %fld.gep871 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load870, i32 0, i32 3
  %fld.load872 = load ptr, ptr %fld.gep871, align 8
  %var.load873 = load ptr, ptr %var.br, align 8
  %fld.gep874 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load873, i32 0, i32 4
  %fld.load875 = load ptr, ptr %fld.gep874, align 8
  %var.load876 = load ptr, ptr %var.br, align 8
  %fld.gep877 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load876, i32 0, i32 5
  %fld.load878 = load i1, ptr %fld.gep877, align 1
  %var.load879 = load ptr, ptr %var.new_blk, align 8
  %arena.cur880 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld882 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 0
  store ptr %fld.load855, ptr %rec.fld882, align 8
  %rec.fld883 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 1
  store ptr %a.load2868, ptr %rec.fld883, align 8
  %rec.fld884 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 2
  store ptr %var.load869, ptr %rec.fld884, align 8
  %rec.fld885 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 3
  store ptr %fld.load872, ptr %rec.fld885, align 8
  %rec.fld886 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 4
  store ptr %fld.load875, ptr %rec.fld886, align 8
  %rec.fld887 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 5
  store i1 %fld.load878, ptr %rec.fld887, align 1
  %rec.fld888 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc881, i32 0, i32 6
  store ptr %var.load879, ptr %rec.fld888, align 8
  %a.load889 = load ptr, ptr %var.new_branches, align 8
  %a.null890 = icmp eq ptr %a.load889, null
  br i1 %a.null890, label %a.create891, label %a.after892

a.create891:                                      ; preds = %a.after860
  %arena.cur893 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create894 = call ptr @dva_arena_alloc(ptr %arena.cur893, i64 24)
  %arena.cur895 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 128)
  %a.len.gep897 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 0
  store i64 0, ptr %a.len.gep897, align 8
  %a.data.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 1
  store ptr %a.buf896, ptr %a.data.gep898, align 8
  %a.cap.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 2
  store i64 16, ptr %a.cap.gep899, align 8
  store ptr %a.create894, ptr %var.new_branches, align 8
  br label %a.after892

a.after892:                                       ; preds = %a.create891, %a.after860
  %a.load2900 = load ptr, ptr %var.new_branches, align 8
  br label %a.check901

a.check901:                                       ; preds = %a.after892
  %a.len904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  %a.len905 = load i64, ptr %a.len904, align 8
  %a.cap906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 2
  %a.cap907 = load i64, ptr %a.cap906, align 8
  %a.needs.grow908 = icmp eq i64 %a.len905, %a.cap907
  br i1 %a.needs.grow908, label %a.grow902, label %a.store903

a.grow902:                                        ; preds = %a.check901
  call void @dva_array_grow(ptr %a.load2900)
  br label %a.store903

a.store903:                                       ; preds = %a.grow902, %a.check901
  %a.cur.data909 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 1
  %a.cur.data910 = load ptr, ptr %a.cur.data909, align 8
  %a.cur.len911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  %a.cur.len912 = load i64, ptr %a.cur.len911, align 8
  %a.elem.gep913 = getelementptr i64, ptr %a.cur.data910, i64 %a.cur.len912
  %slot.p2i914 = ptrtoint ptr %rec.alloc881 to i64
  store i64 %slot.p2i914, ptr %a.elem.gep913, align 8
  %a.next.len915 = add i64 %a.cur.len912, 1
  %b.len.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  store i64 %a.next.len915, ptr %b.len.gep916, align 8
  br label %loop.latch.80

a.create930:                                      ; preds = %loop.exit.80
  %arena.cur932 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create933 = call ptr @dva_arena_alloc(ptr %arena.cur932, i64 24)
  %arena.cur934 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 128)
  %a.len.gep936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create933, i32 0, i32 0
  store i64 0, ptr %a.len.gep936, align 8
  %a.data.gep937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create933, i32 0, i32 1
  store ptr %a.buf935, ptr %a.data.gep937, align 8
  %a.cap.gep938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create933, i32 0, i32 2
  store i64 16, ptr %a.cap.gep938, align 8
  store ptr %a.create933, ptr %var.new_branches, align 8
  br label %a.after931

a.after931:                                       ; preds = %a.create930, %loop.exit.80
  %a.load2939 = load ptr, ptr %var.new_branches, align 8
  %arena.cur940 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc941 = call ptr @dva_arena_alloc(ptr %arena.cur940, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld942 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc941, i32 0, i32 0
  store ptr %var.load923, ptr %rec.fld942, align 8
  %rec.fld943 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc941, i32 0, i32 1
  store i1 %fld.load926, ptr %rec.fld943, align 1
  %rec.fld944 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc941, i32 0, i32 2
  store ptr %a.load2939, ptr %rec.fld944, align 8
  store ptr %rec.alloc941, ptr %pay.gep922, align 8
  br label %choice.exit

choice.case945:                                   ; preds = %choice.next652
  %pay.gep950 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr951 = load ptr, ptr %pay.gep950, align 8
  store ptr %payload.ptr951, ptr %var._952, align 8
  store ptr %payload.ptr951, ptr %var.a, align 8
  %var.load953 = load ptr, ptr %var.locals, align 8
  %a.load954 = load ptr, ptr %var.locals, align 8
  %a.null955 = icmp eq ptr %a.load954, null
  br i1 %a.null955, label %a.create956, label %a.after957

choice.next946:                                   ; preds = %choice.next652
  %tag.gep1169 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1170 = load i64, ptr %tag.gep1169, align 8
  %tag.match1171 = icmp eq i64 %tag.id1170, 23
  br i1 %tag.match1171, label %choice.case1167, label %choice.next1168

a.create956:                                      ; preds = %choice.case945
  %arena.cur958 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create959 = call ptr @dva_arena_alloc(ptr %arena.cur958, i64 24)
  %arena.cur960 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 128)
  %a.len.gep962 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 0
  store i64 0, ptr %a.len.gep962, align 8
  %a.data.gep963 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 1
  store ptr %a.buf961, ptr %a.data.gep963, align 8
  %a.cap.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create959, i32 0, i32 2
  store i64 16, ptr %a.cap.gep964, align 8
  store ptr %a.create959, ptr %var.locals, align 8
  br label %a.after957

a.after957:                                       ; preds = %a.create956, %choice.case945
  %a.load2965 = load ptr, ptr %var.locals, align 8
  %call.res966 = call i1 @"overloads::contains"(ptr %a.load2965, ptr @str.7.struct)
  %nottmp967 = xor i1 %call.res966, true
  store i1 %nottmp967, ptr %var.is_top, align 1
  %var.load968 = load i1, ptr %var.is_top, align 1
  br i1 %var.load968, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %a.after957
  %var.load969 = load ptr, ptr %var.a, align 8
  %fld.gep970 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load969, i32 0, i32 0
  %fld.load971 = load ptr, ptr %fld.gep970, align 8
  %eq.lhs.len972 = getelementptr inbounds { i64, ptr }, ptr %fld.load971, i32 0, i32 0
  %eq.lhs.len973 = load i64, ptr %eq.lhs.len972, align 8
  %eq.lhs.len974 = and i64 %eq.lhs.len973, 281474976710655
  %eq.rhs.len975 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len976 = and i64 %eq.rhs.len975, 281474976710655
  %eq.len977 = icmp eq i64 %eq.lhs.len974, %eq.rhs.len976
  br i1 %eq.len977, label %str.eq.then978, label %str.eq.else979

and.82.else:                                      ; preds = %a.after957
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge980
  %and.82.phi = phi i1 [ %str.neq987, %str.eq.merge980 ], [ %var.load968, %and.82.else ]
  br i1 %and.82.phi, label %choice.then988, label %choice.else989

str.eq.then978:                                   ; preds = %and.82.then
  %eq.lhs.data981 = getelementptr inbounds { i64, ptr }, ptr %fld.load971, i32 0, i32 1
  %eq.lhs.data982 = load ptr, ptr %eq.lhs.data981, align 8
  %eq.rhs.data983 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp984 = call i32 @memcmp(ptr %eq.lhs.data982, ptr %eq.rhs.data983, i64 %eq.lhs.len974)
  %eq.cmp.zero985 = icmp eq i32 %eq.memcmp984, 0
  br label %str.eq.merge980

str.eq.else979:                                   ; preds = %and.82.then
  br label %str.eq.merge980

str.eq.merge980:                                  ; preds = %str.eq.else979, %str.eq.then978
  %str.eq.result986 = phi i1 [ %eq.cmp.zero985, %str.eq.then978 ], [ false, %str.eq.else979 ]
  %str.neq987 = xor i1 %str.eq.result986, true
  br label %and.82.exit

choice.then988:                                   ; preds = %and.82.exit
  %var.load991 = load ptr, ptr %var.a, align 8
  %fld.gep992 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load991, i32 0, i32 0
  %fld.load993 = load ptr, ptr %fld.gep992, align 8
  %call.res994 = call { i64, ptr } @"overloads::decl_module"(ptr %fld.load993, i64 0)
  %arena.cur995 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 16)
  store { i64, ptr } %call.res994, ptr %ret.ub.alloc, align 8
  br label %choice.exit990

choice.else989:                                   ; preds = %and.82.exit
  %var.load996 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit990

choice.exit990:                                   ; preds = %choice.else989, %choice.then988
  %choice.res997 = phi ptr [ %ret.ub.alloc, %choice.then988 ], [ %var.load996, %choice.else989 ]
  store ptr %choice.res997, ptr %var.eff_mod, align 8
  %var.load998 = load ptr, ptr %var.a, align 8
  %fld.gep999 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load998, i32 0, i32 5
  %fld.load1000 = load ptr, ptr %fld.gep999, align 8
  %tag.gep1004 = getelementptr inbounds { i64, ptr }, ptr %fld.load1000, i32 0, i32 0
  %tag.id1005 = load i64, ptr %tag.gep1004, align 8
  %tag.match1006 = icmp eq i64 %tag.id1005, 14
  br i1 %tag.match1006, label %choice.case1002, label %choice.next1003

choice.exit1001:                                  ; preds = %choice.exit1017, %choice.case1002
  %choice.res1032 = phi i64 [ %a.len.query1013, %choice.case1002 ], [ %choice.res1031, %choice.exit1017 ]
  store i64 %choice.res1032, ptr %var.arity, align 8
  %var.load1033 = load ptr, ptr %var.table, align 8
  %var.load1034 = load ptr, ptr %var.a, align 8
  %fld.gep1035 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1034, i32 0, i32 0
  %fld.load1036 = load ptr, ptr %fld.gep1035, align 8
  %call.res1037 = call i1 @"overloads::is_family"(ptr %var.load1033, ptr %fld.load1036)
  br i1 %call.res1037, label %and.83.then, label %and.83.else

choice.case1002:                                  ; preds = %choice.exit990
  %pay.gep1007 = getelementptr inbounds { i64, ptr }, ptr %fld.load1000, i32 0, i32 1
  %payload.ptr1008 = load ptr, ptr %pay.gep1007, align 8
  store ptr %payload.ptr1008, ptr %var._1009, align 8
  store ptr %payload.ptr1008, ptr %var.fn, align 8
  %var.load1010 = load ptr, ptr %var.fn, align 8
  %fld.gep1011 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1010, i32 0, i32 0
  %fld.load1012 = load ptr, ptr %fld.gep1011, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1012, i32 0, i32 0
  %a.len.query1013 = load i64, ptr %a.len.query, align 8
  br label %choice.exit1001

choice.next1003:                                  ; preds = %choice.exit990
  %var.load1014 = load ptr, ptr %var.a, align 8
  %fld.gep1015 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1014, i32 0, i32 8
  %fld.load1016 = load ptr, ptr %fld.gep1015, align 8
  %tag.gep1020 = getelementptr inbounds { i64, ptr }, ptr %fld.load1016, i32 0, i32 0
  %tag.id1021 = load i64, ptr %tag.gep1020, align 8
  %tag.match1022 = icmp eq i64 %tag.id1021, 8
  br i1 %tag.match1022, label %choice.case1018, label %choice.next1019

choice.exit1017:                                  ; preds = %choice.next1019, %choice.case1018
  %choice.res1031 = phi i64 [ %a.len.query1030, %choice.case1018 ], [ -1, %choice.next1019 ]
  br label %choice.exit1001

choice.case1018:                                  ; preds = %choice.next1003
  %pay.gep1023 = getelementptr inbounds { i64, ptr }, ptr %fld.load1016, i32 0, i32 1
  %payload.ptr1024 = load ptr, ptr %pay.gep1023, align 8
  store ptr %payload.ptr1024, ptr %var._1025, align 8
  store ptr %payload.ptr1024, ptr %var.ft, align 8
  %var.load1026 = load ptr, ptr %var.ft, align 8
  %fld.gep1027 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1026, i32 0, i32 0
  %fld.load1028 = load ptr, ptr %fld.gep1027, align 8
  %a.len.query1029 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1028, i32 0, i32 0
  %a.len.query1030 = load i64, ptr %a.len.query1029, align 8
  br label %choice.exit1017

choice.next1019:                                  ; preds = %choice.next1003
  br label %choice.exit1017

and.83.then:                                      ; preds = %choice.exit1001
  %var.load1038 = load i1, ptr %var.is_top, align 1
  br label %and.83.exit

and.83.else:                                      ; preds = %choice.exit1001
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %var.load1038, %and.83.then ], [ %call.res1037, %and.83.else ]
  store i1 %and.83.phi, ptr %var.family, align 1
  %var.load1039 = load i1, ptr %var.family, align 1
  br i1 %var.load1039, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load1040 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1040, 0
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp, %and.84.then ], [ %var.load1039, %and.84.else ]
  br i1 %and.84.phi, label %choice.then1041, label %choice.else1042

choice.then1041:                                  ; preds = %and.84.exit
  %var.load1044 = load ptr, ptr %var.a, align 8
  %fld.gep1045 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1044, i32 0, i32 0
  %fld.load1046 = load ptr, ptr %fld.gep1045, align 8
  %var.load1047 = load i64, ptr %var.arity, align 8
  %call.res1048 = call { i64, ptr } @"overloads::symbol"(ptr %fld.load1046, i64 %var.load1047)
  %arena.cur1049 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1050 = call ptr @dva_arena_alloc(ptr %arena.cur1049, i64 16)
  store { i64, ptr } %call.res1048, ptr %ret.ub.alloc1050, align 8
  br label %choice.exit1043

choice.else1042:                                  ; preds = %and.84.exit
  %var.load1051 = load ptr, ptr %var.a, align 8
  %fld.gep1052 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1051, i32 0, i32 0
  %fld.load1053 = load ptr, ptr %fld.gep1052, align 8
  br label %choice.exit1043

choice.exit1043:                                  ; preds = %choice.else1042, %choice.then1041
  %choice.res1054 = phi ptr [ %ret.ub.alloc1050, %choice.then1041 ], [ %fld.load1053, %choice.else1042 ]
  store ptr %choice.res1054, ptr %var.new_name, align 8
  %var.load1055 = load ptr, ptr %var.a, align 8
  %fld.gep1056 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1055, i32 0, i32 8
  %fld.load1057 = load ptr, ptr %fld.gep1056, align 8
  %tag.gep1061 = getelementptr inbounds { i64, ptr }, ptr %fld.load1057, i32 0, i32 0
  %tag.id1062 = load i64, ptr %tag.gep1061, align 8
  %tag.match1063 = icmp eq i64 %tag.id1062, 8
  br i1 %tag.match1063, label %choice.case1059, label %choice.next1060

choice.exit1058:                                  ; preds = %choice.next1060, %choice.case1059
  %choice.res1075 = phi ptr [ %fld.load1069, %choice.case1059 ], [ %call.res1074, %choice.next1060 ]
  store ptr %choice.res1075, ptr %var.expected, align 8
  %var.load1076 = load ptr, ptr %var.a, align 8
  %fld.gep1077 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1076, i32 0, i32 5
  %fld.load1078 = load ptr, ptr %fld.gep1077, align 8
  %var.load1079 = load ptr, ptr %var.table, align 8
  %var.load1080 = load ptr, ptr %var.locals, align 8
  %a.load1081 = load ptr, ptr %var.locals, align 8
  %a.null1082 = icmp eq ptr %a.load1081, null
  br i1 %a.null1082, label %a.create1083, label %a.after1084

choice.case1059:                                  ; preds = %choice.exit1043
  %pay.gep1064 = getelementptr inbounds { i64, ptr }, ptr %fld.load1057, i32 0, i32 1
  %payload.ptr1065 = load ptr, ptr %pay.gep1064, align 8
  store ptr %payload.ptr1065, ptr %var._1066, align 8
  %var.load1067 = load ptr, ptr %var.a, align 8
  %fld.gep1068 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1067, i32 0, i32 8
  %fld.load1069 = load ptr, ptr %fld.gep1068, align 8
  br label %choice.exit1058

choice.next1060:                                  ; preds = %choice.exit1043
  %var.load1070 = load ptr, ptr %var.table, align 8
  %var.load1071 = load ptr, ptr %var.a, align 8
  %fld.gep1072 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1071, i32 0, i32 0
  %fld.load1073 = load ptr, ptr %fld.gep1072, align 8
  %call.res1074 = call ptr @"overloads::signature"(ptr %var.load1070, ptr %fld.load1073, i64 -1)
  br label %choice.exit1058

a.create1083:                                     ; preds = %choice.exit1058
  %arena.cur1085 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1086 = call ptr @dva_arena_alloc(ptr %arena.cur1085, i64 24)
  %arena.cur1087 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1088 = call ptr @dva_arena_alloc(ptr %arena.cur1087, i64 128)
  %a.len.gep1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 0
  store i64 0, ptr %a.len.gep1089, align 8
  %a.data.gep1090 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 1
  store ptr %a.buf1088, ptr %a.data.gep1090, align 8
  %a.cap.gep1091 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1091, align 8
  store ptr %a.create1086, ptr %var.locals, align 8
  br label %a.after1084

a.after1084:                                      ; preds = %a.create1083, %choice.exit1058
  %a.load21092 = load ptr, ptr %var.locals, align 8
  %var.load1093 = load ptr, ptr %var.eff_mod, align 8
  %call.res1094 = call ptr @"overloads::walk"(ptr %fld.load1078, ptr %var.load1079, ptr %a.load21092, ptr %var.load1093)
  %var.load1095 = load ptr, ptr %var.expected, align 8
  %var.load1096 = load ptr, ptr %var.table, align 8
  %var.load1097 = load ptr, ptr %var.locals, align 8
  %a.load1098 = load ptr, ptr %var.locals, align 8
  %a.null1099 = icmp eq ptr %a.load1098, null
  br i1 %a.null1099, label %a.create1100, label %a.after1101

a.create1100:                                     ; preds = %a.after1084
  %arena.cur1102 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1103 = call ptr @dva_arena_alloc(ptr %arena.cur1102, i64 24)
  %arena.cur1104 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1105 = call ptr @dva_arena_alloc(ptr %arena.cur1104, i64 128)
  %a.len.gep1106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1103, i32 0, i32 0
  store i64 0, ptr %a.len.gep1106, align 8
  %a.data.gep1107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1103, i32 0, i32 1
  store ptr %a.buf1105, ptr %a.data.gep1107, align 8
  %a.cap.gep1108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1103, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1108, align 8
  store ptr %a.create1103, ptr %var.locals, align 8
  br label %a.after1101

a.after1101:                                      ; preds = %a.create1100, %a.after1084
  %a.load21109 = load ptr, ptr %var.locals, align 8
  %var.load1110 = load ptr, ptr %var.eff_mod, align 8
  %call.res1111 = call ptr @"overloads::select_value"(ptr %call.res1094, ptr %var.load1095, ptr %var.load1096, ptr %a.load21109, ptr %var.load1110)
  store ptr %call.res1111, ptr %var.new_rhs, align 8
  %var.load1112 = load ptr, ptr %var.a, align 8
  %fld.gep1113 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1112, i32 0, i32 6
  %fld.load1114 = load ptr, ptr %fld.gep1113, align 8
  %var.load1115 = load ptr, ptr %var.table, align 8
  %var.load1116 = load ptr, ptr %var.locals, align 8
  %a.load1117 = load ptr, ptr %var.locals, align 8
  %a.null1118 = icmp eq ptr %a.load1117, null
  br i1 %a.null1118, label %a.create1119, label %a.after1120

a.create1119:                                     ; preds = %a.after1101
  %arena.cur1121 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1122 = call ptr @dva_arena_alloc(ptr %arena.cur1121, i64 24)
  %arena.cur1123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1124 = call ptr @dva_arena_alloc(ptr %arena.cur1123, i64 128)
  %a.len.gep1125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 0
  store i64 0, ptr %a.len.gep1125, align 8
  %a.data.gep1126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 1
  store ptr %a.buf1124, ptr %a.data.gep1126, align 8
  %a.cap.gep1127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1122, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1127, align 8
  store ptr %a.create1122, ptr %var.locals, align 8
  br label %a.after1120

a.after1120:                                      ; preds = %a.create1119, %a.after1101
  %a.load21128 = load ptr, ptr %var.locals, align 8
  %var.load1129 = load ptr, ptr %var.eff_mod, align 8
  %call.res1130 = call ptr @"overloads::walk"(ptr %fld.load1114, ptr %var.load1115, ptr %a.load21128, ptr %var.load1129)
  store ptr %call.res1130, ptr %var.new_lhs, align 8
  %arena.cur1131 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1132 = call ptr @dva_arena_alloc(ptr %arena.cur1131, i64 16)
  %tag.gep1133 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1132, i32 0, i32 0
  store i64 6, ptr %tag.gep1133, align 8
  %pay.gep1134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1132, i32 0, i32 1
  %var.load1135 = load ptr, ptr %var.new_name, align 8
  %var.load1136 = load ptr, ptr %var.a, align 8
  %fld.gep1137 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1136, i32 0, i32 1
  %fld.load1138 = load i1, ptr %fld.gep1137, align 1
  %var.load1139 = load ptr, ptr %var.a, align 8
  %fld.gep1140 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1139, i32 0, i32 2
  %fld.load1141 = load i1, ptr %fld.gep1140, align 1
  %var.load1142 = load ptr, ptr %var.a, align 8
  %fld.gep1143 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1142, i32 0, i32 3
  %fld.load1144 = load i1, ptr %fld.gep1143, align 1
  %var.load1145 = load ptr, ptr %var.a, align 8
  %fld.gep1146 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1145, i32 0, i32 4
  %fld.load1147 = load i1, ptr %fld.gep1146, align 1
  %var.load1148 = load ptr, ptr %var.new_rhs, align 8
  %var.load1149 = load ptr, ptr %var.new_lhs, align 8
  %var.load1150 = load ptr, ptr %var.a, align 8
  %fld.gep1151 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1150, i32 0, i32 7
  %fld.load1152 = load ptr, ptr %fld.gep1151, align 8
  %var.load1153 = load ptr, ptr %var.a, align 8
  %fld.gep1154 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1153, i32 0, i32 8
  %fld.load1155 = load ptr, ptr %fld.gep1154, align 8
  %arena.cur1156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1157 = call ptr @dva_arena_alloc(ptr %arena.cur1156, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1158 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 0
  store ptr %var.load1135, ptr %rec.fld1158, align 8
  %rec.fld1159 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 1
  store i1 %fld.load1138, ptr %rec.fld1159, align 1
  %rec.fld1160 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 2
  store i1 %fld.load1141, ptr %rec.fld1160, align 1
  %rec.fld1161 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 3
  store i1 %fld.load1144, ptr %rec.fld1161, align 1
  %rec.fld1162 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 4
  store i1 %fld.load1147, ptr %rec.fld1162, align 1
  %rec.fld1163 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 5
  store ptr %var.load1148, ptr %rec.fld1163, align 8
  %rec.fld1164 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 6
  store ptr %var.load1149, ptr %rec.fld1164, align 8
  %rec.fld1165 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 7
  store ptr %fld.load1152, ptr %rec.fld1165, align 8
  %rec.fld1166 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1157, i32 0, i32 8
  store ptr %fld.load1155, ptr %rec.fld1166, align 8
  store ptr %rec.alloc1157, ptr %pay.gep1134, align 8
  br label %choice.exit

choice.case1167:                                  ; preds = %choice.next946
  %pay.gep1172 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1173 = load ptr, ptr %pay.gep1172, align 8
  store ptr %payload.ptr1173, ptr %var._1174, align 8
  store ptr %payload.ptr1173, ptr %var.td, align 8
  %var.load1175 = load ptr, ptr %var.td, align 8
  %fld.gep1176 = getelementptr inbounds { ptr, ptr }, ptr %var.load1175, i32 0, i32 1
  %fld.load1177 = load ptr, ptr %fld.gep1176, align 8
  %var.load1178 = load ptr, ptr %var.table, align 8
  %call.res1179 = call ptr @"overloads::keep_type"(ptr %fld.load1177, ptr %var.load1178)
  store ptr %call.res1179, ptr %var.new_ti, align 8
  %arena.cur1180 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1181 = call ptr @dva_arena_alloc(ptr %arena.cur1180, i64 16)
  %tag.gep1182 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1181, i32 0, i32 0
  store i64 23, ptr %tag.gep1182, align 8
  %pay.gep1183 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1181, i32 0, i32 1
  %var.load1184 = load ptr, ptr %var.td, align 8
  %fld.gep1185 = getelementptr inbounds { ptr, ptr }, ptr %var.load1184, i32 0, i32 0
  %fld.load1186 = load ptr, ptr %fld.gep1185, align 8
  %var.load1187 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1188 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1189 = call ptr @dva_arena_alloc(ptr %arena.cur1188, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1190 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1189, i32 0, i32 0
  store ptr %fld.load1186, ptr %rec.fld1190, align 8
  %rec.fld1191 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1189, i32 0, i32 1
  store ptr %var.load1187, ptr %rec.fld1191, align 8
  store ptr %rec.alloc1189, ptr %pay.gep1183, align 8
  br label %choice.exit

choice.next1168:                                  ; preds = %choice.next946
  %tag.gep1194 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1195 = load i64, ptr %tag.gep1194, align 8
  %tag.match1196 = icmp eq i64 %tag.id1195, 21
  br i1 %tag.match1196, label %choice.case1192, label %choice.next1193

choice.case1192:                                  ; preds = %choice.next1168
  %pay.gep1197 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1198 = load ptr, ptr %pay.gep1197, align 8
  store ptr %payload.ptr1198, ptr %var._1199, align 8
  store ptr %payload.ptr1198, ptr %var.f, align 8
  %var.load1200 = load ptr, ptr %var.f, align 8
  %fld.gep1201 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1200, i32 0, i32 3
  %fld.load1202 = load ptr, ptr %fld.gep1201, align 8
  %var.load1203 = load ptr, ptr %var.table, align 8
  %call.res1204 = call ptr @"overloads::keep_fparams"(ptr %fld.load1202, ptr %var.load1203)
  store ptr %call.res1204, ptr %var.new_params, align 8
  %var.load1205 = load ptr, ptr %var.f, align 8
  %fld.gep1206 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1205, i32 0, i32 5
  %fld.load1207 = load ptr, ptr %fld.gep1206, align 8
  %var.load1208 = load ptr, ptr %var.table, align 8
  %call.res1209 = call ptr @"overloads::keep_type"(ptr %fld.load1207, ptr %var.load1208)
  store ptr %call.res1209, ptr %var.new_ret_ti, align 8
  %arena.cur1210 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1211 = call ptr @dva_arena_alloc(ptr %arena.cur1210, i64 16)
  %tag.gep1212 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1211, i32 0, i32 0
  store i64 21, ptr %tag.gep1212, align 8
  %pay.gep1213 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1211, i32 0, i32 1
  %var.load1214 = load ptr, ptr %var.f, align 8
  %fld.gep1215 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1214, i32 0, i32 0
  %fld.load1216 = load ptr, ptr %fld.gep1215, align 8
  %var.load1217 = load ptr, ptr %var.f, align 8
  %fld.gep1218 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1217, i32 0, i32 1
  %fld.load1219 = load ptr, ptr %fld.gep1218, align 8
  %var.load1220 = load ptr, ptr %var.f, align 8
  %fld.gep1221 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1220, i32 0, i32 2
  %fld.load1222 = load ptr, ptr %fld.gep1221, align 8
  %var.load1223 = load ptr, ptr %var.new_params, align 8
  %a.load1224 = load ptr, ptr %var.new_params, align 8
  %a.null1225 = icmp eq ptr %a.load1224, null
  br i1 %a.null1225, label %a.create1226, label %a.after1227

choice.next1193:                                  ; preds = %choice.next1168
  %tag.gep1254 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1255 = load i64, ptr %tag.gep1254, align 8
  %tag.match1256 = icmp eq i64 %tag.id1255, 16
  br i1 %tag.match1256, label %choice.case1252, label %choice.next1253

a.create1226:                                     ; preds = %choice.case1192
  %arena.cur1228 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1229 = call ptr @dva_arena_alloc(ptr %arena.cur1228, i64 24)
  %arena.cur1230 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1231 = call ptr @dva_arena_alloc(ptr %arena.cur1230, i64 128)
  %a.len.gep1232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 0
  store i64 0, ptr %a.len.gep1232, align 8
  %a.data.gep1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 1
  store ptr %a.buf1231, ptr %a.data.gep1233, align 8
  %a.cap.gep1234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1234, align 8
  store ptr %a.create1229, ptr %var.new_params, align 8
  br label %a.after1227

a.after1227:                                      ; preds = %a.create1226, %choice.case1192
  %a.load21235 = load ptr, ptr %var.new_params, align 8
  %var.load1236 = load ptr, ptr %var.f, align 8
  %fld.gep1237 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1236, i32 0, i32 4
  %fld.load1238 = load ptr, ptr %fld.gep1237, align 8
  %var.load1239 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1240 = load ptr, ptr %var.f, align 8
  %fld.gep1241 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1240, i32 0, i32 6
  %fld.load1242 = load i1, ptr %fld.gep1241, align 1
  %arena.cur1243 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1244 = call ptr @dva_arena_alloc(ptr %arena.cur1243, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1245 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 0
  store ptr %fld.load1216, ptr %rec.fld1245, align 8
  %rec.fld1246 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 1
  store ptr %fld.load1219, ptr %rec.fld1246, align 8
  %rec.fld1247 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 2
  store ptr %fld.load1222, ptr %rec.fld1247, align 8
  %rec.fld1248 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 3
  store ptr %a.load21235, ptr %rec.fld1248, align 8
  %rec.fld1249 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 4
  store ptr %fld.load1238, ptr %rec.fld1249, align 8
  %rec.fld1250 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 5
  store ptr %var.load1239, ptr %rec.fld1250, align 8
  %rec.fld1251 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1244, i32 0, i32 6
  store i1 %fld.load1242, ptr %rec.fld1251, align 1
  store ptr %rec.alloc1244, ptr %pay.gep1213, align 8
  br label %choice.exit

choice.case1252:                                  ; preds = %choice.next1193
  %pay.gep1257 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1258 = load ptr, ptr %pay.gep1257, align 8
  store ptr %payload.ptr1258, ptr %var._1259, align 8
  store ptr %payload.ptr1258, ptr %var.m, align 8
  %var.load1260 = load ptr, ptr %var.m, align 8
  %fld.gep1261 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1260, i32 0, i32 2
  %fld.load1262 = load i1, ptr %fld.gep1261, align 1
  br i1 %fld.load1262, label %choice.then1263, label %choice.else1264

choice.next1253:                                  ; preds = %choice.next1193
  %tag.gep1336 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1337 = load i64, ptr %tag.gep1336, align 8
  %tag.match1338 = icmp eq i64 %tag.id1337, 15
  br i1 %tag.match1338, label %choice.case1334, label %choice.next1335

choice.then1263:                                  ; preds = %choice.case1252
  %arena.cur1266 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1267 = call ptr @dva_arena_alloc(ptr %arena.cur1266, i64 16)
  %tag.gep1268 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1267, i32 0, i32 0
  store i64 3, ptr %tag.gep1268, align 8
  %pay.gep1269 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1267, i32 0, i32 1
  %var.load1270 = load ptr, ptr %var.e, align 8
  %call.res1271 = call { i64, ptr } @"overloads::name_of"(ptr %var.load1270)
  %arena.cur1272 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1273 = call ptr @dva_arena_alloc(ptr %arena.cur1272, i64 16)
  store { i64, ptr } %call.res1271, ptr %ret.ub.alloc1273, align 8
  store ptr %ret.ub.alloc1273, ptr %pay.gep1269, align 8
  br label %choice.exit1265

choice.else1264:                                  ; preds = %choice.case1252
  %arena.cur1274 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1275 = call ptr @dva_arena_alloc(ptr %arena.cur1274, i64 16)
  %tag.gep1276 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1275, i32 0, i32 0
  store i64 16, ptr %tag.gep1276, align 8
  %pay.gep1277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1275, i32 0, i32 1
  %var.load1278 = load ptr, ptr %var.m, align 8
  %fld.gep1279 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1278, i32 0, i32 0
  %fld.load1280 = load ptr, ptr %fld.gep1279, align 8
  %var.load1281 = load ptr, ptr %var.table, align 8
  %var.load1282 = load ptr, ptr %var.locals, align 8
  %a.load1283 = load ptr, ptr %var.locals, align 8
  %a.null1284 = icmp eq ptr %a.load1283, null
  br i1 %a.null1284, label %a.create1285, label %a.after1286

choice.exit1265:                                  ; preds = %a.after1308, %choice.then1263
  %choice.res1333 = phi ptr [ %enum.alloc1267, %choice.then1263 ], [ %enum.alloc1275, %a.after1308 ]
  br label %choice.exit

a.create1285:                                     ; preds = %choice.else1264
  %arena.cur1287 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1288 = call ptr @dva_arena_alloc(ptr %arena.cur1287, i64 24)
  %arena.cur1289 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1290 = call ptr @dva_arena_alloc(ptr %arena.cur1289, i64 128)
  %a.len.gep1291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 0
  store i64 0, ptr %a.len.gep1291, align 8
  %a.data.gep1292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 1
  store ptr %a.buf1290, ptr %a.data.gep1292, align 8
  %a.cap.gep1293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1293, align 8
  store ptr %a.create1288, ptr %var.locals, align 8
  br label %a.after1286

a.after1286:                                      ; preds = %a.create1285, %choice.else1264
  %a.load21294 = load ptr, ptr %var.locals, align 8
  %var.load1295 = load ptr, ptr %var.cur_mod, align 8
  %call.res1296 = call ptr @"overloads::walk"(ptr %fld.load1280, ptr %var.load1281, ptr %a.load21294, ptr %var.load1295)
  %var.load1297 = load ptr, ptr %var.m, align 8
  %fld.gep1298 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1297, i32 0, i32 1
  %fld.load1299 = load ptr, ptr %fld.gep1298, align 8
  %var.load1300 = load ptr, ptr %var.m, align 8
  %fld.gep1301 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1300, i32 0, i32 3
  %fld.load1302 = load ptr, ptr %fld.gep1301, align 8
  %var.load1303 = load ptr, ptr %var.table, align 8
  %var.load1304 = load ptr, ptr %var.locals, align 8
  %a.load1305 = load ptr, ptr %var.locals, align 8
  %a.null1306 = icmp eq ptr %a.load1305, null
  br i1 %a.null1306, label %a.create1307, label %a.after1308

a.create1307:                                     ; preds = %a.after1286
  %arena.cur1309 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1310 = call ptr @dva_arena_alloc(ptr %arena.cur1309, i64 24)
  %arena.cur1311 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1312 = call ptr @dva_arena_alloc(ptr %arena.cur1311, i64 128)
  %a.len.gep1313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1310, i32 0, i32 0
  store i64 0, ptr %a.len.gep1313, align 8
  %a.data.gep1314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1310, i32 0, i32 1
  store ptr %a.buf1312, ptr %a.data.gep1314, align 8
  %a.cap.gep1315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1310, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1315, align 8
  store ptr %a.create1310, ptr %var.locals, align 8
  br label %a.after1308

a.after1308:                                      ; preds = %a.create1307, %a.after1286
  %a.load21316 = load ptr, ptr %var.locals, align 8
  %var.load1317 = load ptr, ptr %var.cur_mod, align 8
  %call.res1318 = call ptr @"overloads::walk"(ptr %fld.load1302, ptr %var.load1303, ptr %a.load21316, ptr %var.load1317)
  %var.load1319 = load ptr, ptr %var.m, align 8
  %fld.gep1320 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1319, i32 0, i32 4
  %fld.load1321 = load i64, ptr %fld.gep1320, align 8
  %var.load1322 = load ptr, ptr %var.m, align 8
  %fld.gep1323 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1322, i32 0, i32 5
  %fld.load1324 = load i64, ptr %fld.gep1323, align 8
  %arena.cur1325 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1326 = call ptr @dva_arena_alloc(ptr %arena.cur1325, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1327 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 0
  store ptr %call.res1296, ptr %rec.fld1327, align 8
  %rec.fld1328 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 1
  store ptr %fld.load1299, ptr %rec.fld1328, align 8
  %rec.fld1329 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 2
  store i1 false, ptr %rec.fld1329, align 1
  %rec.fld1330 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 3
  store ptr %call.res1318, ptr %rec.fld1330, align 8
  %rec.fld1331 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 4
  store i64 %fld.load1321, ptr %rec.fld1331, align 8
  %rec.fld1332 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1326, i32 0, i32 5
  store i64 %fld.load1324, ptr %rec.fld1332, align 8
  store ptr %rec.alloc1326, ptr %pay.gep1277, align 8
  br label %choice.exit1265

choice.case1334:                                  ; preds = %choice.next1253
  %pay.gep1339 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1340 = load ptr, ptr %pay.gep1339, align 8
  store ptr %payload.ptr1340, ptr %var._1341, align 8
  store ptr %payload.ptr1340, ptr %var.re, align 8
  %arena.cur1342 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1343 = call ptr @dva_arena_alloc(ptr %arena.cur1342, i64 24)
  %arena.cur1344 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1345 = call ptr @dva_arena_alloc(ptr %arena.cur1344, i64 128)
  %a.len.gep1346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1343, i32 0, i32 0
  store i64 0, ptr %a.len.gep1346, align 8
  %a.data.gep1347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1343, i32 0, i32 1
  store ptr %a.buf1345, ptr %a.data.gep1347, align 8
  %a.cap.gep1348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1343, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1348, align 8
  store ptr %a.new1343, ptr %var.new_fields, align 8
  %var.load1349 = load ptr, ptr %var.re, align 8
  %fld.gep1350 = getelementptr inbounds { ptr, i1 }, ptr %var.load1349, i32 0, i32 0
  %fld.load1351 = load ptr, ptr %fld.gep1350, align 8
  %arr.cycle.len1352 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1351, i32 0, i32 0
  %arr.cycle.len1353 = load i64, ptr %arr.cycle.len1352, align 8
  %arr.cycle.data1354 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1351, i32 0, i32 1
  %arr.cycle.data1355 = load ptr, ptr %arr.cycle.data1354, align 8
  store i64 0, ptr %loop.idx.85, align 8
  %cycle.prev.u1356 = load ptr, ptr %var._1341, align 8
  br label %loop.header.85

choice.next1335:                                  ; preds = %choice.next1253
  %tag.gep1452 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1453 = load i64, ptr %tag.gep1452, align 8
  %tag.match1454 = icmp eq i64 %tag.id1453, 17
  br i1 %tag.match1454, label %choice.case1450, label %choice.next1451

loop.header.85:                                   ; preds = %loop.latch.85, %choice.case1334
  %counter.load1357 = load i64, ptr %loop.idx.85, align 8
  %loop.cond1358 = icmp slt i64 %counter.load1357, %arr.cycle.len1353
  br i1 %loop.cond1358, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i1359 = sub i64 %counter.load1357, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep1360 = getelementptr i64, ptr %arr.cycle.data1355, i64 %counter.load1357
  %arr.elem.raw1361 = load i64, ptr %arr.elem.gep1360, align 8
  %slot.i2p1362 = inttoptr i64 %arr.elem.raw1361 to ptr
  store i64 %loop.rel.i1359, ptr %var._i1363, align 8
  store ptr %slot.i2p1362, ptr %var._1364, align 8
  store ptr %slot.i2p1362, ptr %var.fld, align 8
  %var.load1365 = load ptr, ptr %var.fld, align 8
  %fld.gep1366 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1365, i32 0, i32 2
  %fld.load1367 = load ptr, ptr %fld.gep1366, align 8
  %var.load1368 = load ptr, ptr %var.table, align 8
  %var.load1369 = load ptr, ptr %var.locals, align 8
  %a.load1370 = load ptr, ptr %var.locals, align 8
  %a.null1371 = icmp eq ptr %a.load1370, null
  br i1 %a.null1371, label %a.create1372, label %a.after1373

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store1410
  %step.val1424 = load i64, ptr %loop.step.85, align 8
  %loop.next1425 = add i64 %counter.load1357, %step.val1424
  store i64 %loop.next1425, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  store ptr %cycle.prev.u1356, ptr %var._1341, align 8
  %arena.cur1426 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1427 = call ptr @dva_arena_alloc(ptr %arena.cur1426, i64 16)
  %tag.gep1428 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1427, i32 0, i32 0
  store i64 15, ptr %tag.gep1428, align 8
  %pay.gep1429 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1427, i32 0, i32 1
  %var.load1430 = load ptr, ptr %var.new_fields, align 8
  %a.load1431 = load ptr, ptr %var.new_fields, align 8
  %a.null1432 = icmp eq ptr %a.load1431, null
  br i1 %a.null1432, label %a.create1433, label %a.after1434

a.create1372:                                     ; preds = %loop.body.85
  %arena.cur1374 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1375 = call ptr @dva_arena_alloc(ptr %arena.cur1374, i64 24)
  %arena.cur1376 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1377 = call ptr @dva_arena_alloc(ptr %arena.cur1376, i64 128)
  %a.len.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1375, i32 0, i32 0
  store i64 0, ptr %a.len.gep1378, align 8
  %a.data.gep1379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1375, i32 0, i32 1
  store ptr %a.buf1377, ptr %a.data.gep1379, align 8
  %a.cap.gep1380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1375, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1380, align 8
  store ptr %a.create1375, ptr %var.locals, align 8
  br label %a.after1373

a.after1373:                                      ; preds = %a.create1372, %loop.body.85
  %a.load21381 = load ptr, ptr %var.locals, align 8
  %var.load1382 = load ptr, ptr %var.cur_mod, align 8
  %call.res1383 = call ptr @"overloads::walk"(ptr %fld.load1367, ptr %var.load1368, ptr %a.load21381, ptr %var.load1382)
  store ptr %call.res1383, ptr %var.new_val, align 8
  %var.load1384 = load ptr, ptr %var.fld, align 8
  %fld.gep1385 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1384, i32 0, i32 0
  %fld.load1386 = load i1, ptr %fld.gep1385, align 1
  %var.load1387 = load ptr, ptr %var.fld, align 8
  %fld.gep1388 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1387, i32 0, i32 1
  %fld.load1389 = load ptr, ptr %fld.gep1388, align 8
  %var.load1390 = load ptr, ptr %var.new_val, align 8
  %arena.cur1391 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1392 = call ptr @dva_arena_alloc(ptr %arena.cur1391, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1393 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1392, i32 0, i32 0
  store i1 %fld.load1386, ptr %rec.fld1393, align 1
  %rec.fld1394 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1392, i32 0, i32 1
  store ptr %fld.load1389, ptr %rec.fld1394, align 8
  %rec.fld1395 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1392, i32 0, i32 2
  store ptr %var.load1390, ptr %rec.fld1395, align 8
  %a.load1396 = load ptr, ptr %var.new_fields, align 8
  %a.null1397 = icmp eq ptr %a.load1396, null
  br i1 %a.null1397, label %a.create1398, label %a.after1399

a.create1398:                                     ; preds = %a.after1373
  %arena.cur1400 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1401 = call ptr @dva_arena_alloc(ptr %arena.cur1400, i64 24)
  %arena.cur1402 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1403 = call ptr @dva_arena_alloc(ptr %arena.cur1402, i64 128)
  %a.len.gep1404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1401, i32 0, i32 0
  store i64 0, ptr %a.len.gep1404, align 8
  %a.data.gep1405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1401, i32 0, i32 1
  store ptr %a.buf1403, ptr %a.data.gep1405, align 8
  %a.cap.gep1406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1401, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1406, align 8
  store ptr %a.create1401, ptr %var.new_fields, align 8
  br label %a.after1399

a.after1399:                                      ; preds = %a.create1398, %a.after1373
  %a.load21407 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1408

a.check1408:                                      ; preds = %a.after1399
  %a.len1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21407, i32 0, i32 0
  %a.len1412 = load i64, ptr %a.len1411, align 8
  %a.cap1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21407, i32 0, i32 2
  %a.cap1414 = load i64, ptr %a.cap1413, align 8
  %a.needs.grow1415 = icmp eq i64 %a.len1412, %a.cap1414
  br i1 %a.needs.grow1415, label %a.grow1409, label %a.store1410

a.grow1409:                                       ; preds = %a.check1408
  call void @dva_array_grow(ptr %a.load21407)
  br label %a.store1410

a.store1410:                                      ; preds = %a.grow1409, %a.check1408
  %a.cur.data1416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21407, i32 0, i32 1
  %a.cur.data1417 = load ptr, ptr %a.cur.data1416, align 8
  %a.cur.len1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21407, i32 0, i32 0
  %a.cur.len1419 = load i64, ptr %a.cur.len1418, align 8
  %a.elem.gep1420 = getelementptr i64, ptr %a.cur.data1417, i64 %a.cur.len1419
  %slot.p2i1421 = ptrtoint ptr %rec.alloc1392 to i64
  store i64 %slot.p2i1421, ptr %a.elem.gep1420, align 8
  %a.next.len1422 = add i64 %a.cur.len1419, 1
  %b.len.gep1423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21407, i32 0, i32 0
  store i64 %a.next.len1422, ptr %b.len.gep1423, align 8
  br label %loop.latch.85

a.create1433:                                     ; preds = %loop.exit.85
  %arena.cur1435 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1436 = call ptr @dva_arena_alloc(ptr %arena.cur1435, i64 24)
  %arena.cur1437 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1438 = call ptr @dva_arena_alloc(ptr %arena.cur1437, i64 128)
  %a.len.gep1439 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1436, i32 0, i32 0
  store i64 0, ptr %a.len.gep1439, align 8
  %a.data.gep1440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1436, i32 0, i32 1
  store ptr %a.buf1438, ptr %a.data.gep1440, align 8
  %a.cap.gep1441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1436, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1441, align 8
  store ptr %a.create1436, ptr %var.new_fields, align 8
  br label %a.after1434

a.after1434:                                      ; preds = %a.create1433, %loop.exit.85
  %a.load21442 = load ptr, ptr %var.new_fields, align 8
  %var.load1443 = load ptr, ptr %var.re, align 8
  %fld.gep1444 = getelementptr inbounds { ptr, i1 }, ptr %var.load1443, i32 0, i32 1
  %fld.load1445 = load i1, ptr %fld.gep1444, align 1
  %arena.cur1446 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1447 = call ptr @dva_arena_alloc(ptr %arena.cur1446, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1448 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1447, i32 0, i32 0
  store ptr %a.load21442, ptr %rec.fld1448, align 8
  %rec.fld1449 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1447, i32 0, i32 1
  store i1 %fld.load1445, ptr %rec.fld1449, align 1
  store ptr %rec.alloc1447, ptr %pay.gep1429, align 8
  br label %choice.exit

choice.case1450:                                  ; preds = %choice.next1335
  %pay.gep1455 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1456 = load ptr, ptr %pay.gep1455, align 8
  store ptr %payload.ptr1456, ptr %var._1457, align 8
  store ptr %payload.ptr1456, ptr %var.ka, align 8
  %var.load1458 = load ptr, ptr %var.ka, align 8
  %fld.gep1459 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1458, i32 0, i32 0
  %fld.load1460 = load ptr, ptr %fld.gep1459, align 8
  %var.load1461 = load ptr, ptr %var.table, align 8
  %var.load1462 = load ptr, ptr %var.locals, align 8
  %a.load1463 = load ptr, ptr %var.locals, align 8
  %a.null1464 = icmp eq ptr %a.load1463, null
  br i1 %a.null1464, label %a.create1465, label %a.after1466

choice.next1451:                                  ; preds = %choice.next1335
  %tag.gep1524 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1525 = load i64, ptr %tag.gep1524, align 8
  %tag.match1526 = icmp eq i64 %tag.id1525, 12
  br i1 %tag.match1526, label %choice.case1522, label %choice.next1523

a.create1465:                                     ; preds = %choice.case1450
  %arena.cur1467 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1468 = call ptr @dva_arena_alloc(ptr %arena.cur1467, i64 24)
  %arena.cur1469 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1470 = call ptr @dva_arena_alloc(ptr %arena.cur1469, i64 128)
  %a.len.gep1471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1468, i32 0, i32 0
  store i64 0, ptr %a.len.gep1471, align 8
  %a.data.gep1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1468, i32 0, i32 1
  store ptr %a.buf1470, ptr %a.data.gep1472, align 8
  %a.cap.gep1473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1468, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1473, align 8
  store ptr %a.create1468, ptr %var.locals, align 8
  br label %a.after1466

a.after1466:                                      ; preds = %a.create1465, %choice.case1450
  %a.load21474 = load ptr, ptr %var.locals, align 8
  %var.load1475 = load ptr, ptr %var.cur_mod, align 8
  %call.res1476 = call ptr @"overloads::walk"(ptr %fld.load1460, ptr %var.load1461, ptr %a.load21474, ptr %var.load1475)
  store ptr %call.res1476, ptr %var.new_target, align 8
  %var.load1477 = load ptr, ptr %var.ka, align 8
  %fld.gep1478 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1477, i32 0, i32 1
  %fld.load1479 = load ptr, ptr %fld.gep1478, align 8
  %var.load1480 = load ptr, ptr %var.table, align 8
  %var.load1481 = load ptr, ptr %var.locals, align 8
  %a.load1482 = load ptr, ptr %var.locals, align 8
  %a.null1483 = icmp eq ptr %a.load1482, null
  br i1 %a.null1483, label %a.create1484, label %a.after1485

a.create1484:                                     ; preds = %a.after1466
  %arena.cur1486 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1487 = call ptr @dva_arena_alloc(ptr %arena.cur1486, i64 24)
  %arena.cur1488 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1489 = call ptr @dva_arena_alloc(ptr %arena.cur1488, i64 128)
  %a.len.gep1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1487, i32 0, i32 0
  store i64 0, ptr %a.len.gep1490, align 8
  %a.data.gep1491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1487, i32 0, i32 1
  store ptr %a.buf1489, ptr %a.data.gep1491, align 8
  %a.cap.gep1492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1487, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1492, align 8
  store ptr %a.create1487, ptr %var.locals, align 8
  br label %a.after1485

a.after1485:                                      ; preds = %a.create1484, %a.after1466
  %a.load21493 = load ptr, ptr %var.locals, align 8
  %var.load1494 = load ptr, ptr %var.cur_mod, align 8
  %call.res1495 = call ptr @"overloads::walk"(ptr %fld.load1479, ptr %var.load1480, ptr %a.load21493, ptr %var.load1494)
  store ptr %call.res1495, ptr %var.new_key, align 8
  %arena.cur1496 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1497 = call ptr @dva_arena_alloc(ptr %arena.cur1496, i64 16)
  %tag.gep1498 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1497, i32 0, i32 0
  store i64 17, ptr %tag.gep1498, align 8
  %pay.gep1499 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1497, i32 0, i32 1
  %var.load1500 = load ptr, ptr %var.new_target, align 8
  %var.load1501 = load ptr, ptr %var.new_key, align 8
  %var.load1502 = load ptr, ptr %var.ka, align 8
  %fld.gep1503 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1502, i32 0, i32 2
  %fld.load1504 = load i1, ptr %fld.gep1503, align 1
  %var.load1505 = load ptr, ptr %var.ka, align 8
  %fld.gep1506 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1505, i32 0, i32 3
  %fld.load1507 = load i1, ptr %fld.gep1506, align 1
  %var.load1508 = load ptr, ptr %var.ka, align 8
  %fld.gep1509 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1508, i32 0, i32 4
  %fld.load1510 = load i64, ptr %fld.gep1509, align 8
  %var.load1511 = load ptr, ptr %var.ka, align 8
  %fld.gep1512 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1511, i32 0, i32 5
  %fld.load1513 = load i64, ptr %fld.gep1512, align 8
  %arena.cur1514 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1515 = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1516 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 0
  store ptr %var.load1500, ptr %rec.fld1516, align 8
  %rec.fld1517 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 1
  store ptr %var.load1501, ptr %rec.fld1517, align 8
  %rec.fld1518 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 2
  store i1 %fld.load1504, ptr %rec.fld1518, align 1
  %rec.fld1519 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 3
  store i1 %fld.load1507, ptr %rec.fld1519, align 1
  %rec.fld1520 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 4
  store i64 %fld.load1510, ptr %rec.fld1520, align 8
  %rec.fld1521 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1515, i32 0, i32 5
  store i64 %fld.load1513, ptr %rec.fld1521, align 8
  store ptr %rec.alloc1515, ptr %pay.gep1499, align 8
  br label %choice.exit

choice.case1522:                                  ; preds = %choice.next1451
  %pay.gep1527 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1528 = load ptr, ptr %pay.gep1527, align 8
  store ptr %payload.ptr1528, ptr %var._1529, align 8
  store ptr %payload.ptr1528, ptr %var.cy, align 8
  %var.load1530 = load ptr, ptr %var.cy, align 8
  %fld.gep1531 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1530, i32 0, i32 0
  %fld.load1532 = load ptr, ptr %fld.gep1531, align 8
  %var.load1533 = load ptr, ptr %var.table, align 8
  %var.load1534 = load ptr, ptr %var.locals, align 8
  %a.load1535 = load ptr, ptr %var.locals, align 8
  %a.null1536 = icmp eq ptr %a.load1535, null
  br i1 %a.null1536, label %a.create1537, label %a.after1538

choice.next1523:                                  ; preds = %choice.next1451
  %tag.gep1588 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1589 = load i64, ptr %tag.gep1588, align 8
  %tag.match1590 = icmp eq i64 %tag.id1589, 11
  br i1 %tag.match1590, label %choice.case1586, label %choice.next1587

a.create1537:                                     ; preds = %choice.case1522
  %arena.cur1539 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1540 = call ptr @dva_arena_alloc(ptr %arena.cur1539, i64 24)
  %arena.cur1541 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1542 = call ptr @dva_arena_alloc(ptr %arena.cur1541, i64 128)
  %a.len.gep1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1540, i32 0, i32 0
  store i64 0, ptr %a.len.gep1543, align 8
  %a.data.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1540, i32 0, i32 1
  store ptr %a.buf1542, ptr %a.data.gep1544, align 8
  %a.cap.gep1545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1540, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1545, align 8
  store ptr %a.create1540, ptr %var.locals, align 8
  br label %a.after1538

a.after1538:                                      ; preds = %a.create1537, %choice.case1522
  %a.load21546 = load ptr, ptr %var.locals, align 8
  %var.load1547 = load ptr, ptr %var.cur_mod, align 8
  %call.res1548 = call ptr @"overloads::walk"(ptr %fld.load1532, ptr %var.load1533, ptr %a.load21546, ptr %var.load1547)
  store ptr %call.res1548, ptr %var.new_iter, align 8
  %var.load1549 = load ptr, ptr %var.cy, align 8
  %fld.gep1550 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1549, i32 0, i32 1
  %fld.load1551 = load ptr, ptr %fld.gep1550, align 8
  %var.load1552 = load ptr, ptr %var.table, align 8
  %var.load1553 = load ptr, ptr %var.locals, align 8
  %a.load1554 = load ptr, ptr %var.locals, align 8
  %a.null1555 = icmp eq ptr %a.load1554, null
  br i1 %a.null1555, label %a.create1556, label %a.after1557

a.create1556:                                     ; preds = %a.after1538
  %arena.cur1558 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1559 = call ptr @dva_arena_alloc(ptr %arena.cur1558, i64 24)
  %arena.cur1560 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1561 = call ptr @dva_arena_alloc(ptr %arena.cur1560, i64 128)
  %a.len.gep1562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 0
  store i64 0, ptr %a.len.gep1562, align 8
  %a.data.gep1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 1
  store ptr %a.buf1561, ptr %a.data.gep1563, align 8
  %a.cap.gep1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1559, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1564, align 8
  store ptr %a.create1559, ptr %var.locals, align 8
  br label %a.after1557

a.after1557:                                      ; preds = %a.create1556, %a.after1538
  %a.load21565 = load ptr, ptr %var.locals, align 8
  %var.load1566 = load ptr, ptr %var.cur_mod, align 8
  %call.res1567 = call ptr @"overloads::walk"(ptr %fld.load1551, ptr %var.load1552, ptr %a.load21565, ptr %var.load1566)
  store ptr %call.res1567, ptr %var.new_fn, align 8
  %arena.cur1568 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1569 = call ptr @dva_arena_alloc(ptr %arena.cur1568, i64 16)
  %tag.gep1570 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1569, i32 0, i32 0
  store i64 12, ptr %tag.gep1570, align 8
  %pay.gep1571 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1569, i32 0, i32 1
  %var.load1572 = load ptr, ptr %var.new_iter, align 8
  %var.load1573 = load ptr, ptr %var.new_fn, align 8
  %var.load1574 = load ptr, ptr %var.cy, align 8
  %fld.gep1575 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1574, i32 0, i32 2
  %fld.load1576 = load i1, ptr %fld.gep1575, align 1
  %var.load1577 = load ptr, ptr %var.cy, align 8
  %fld.gep1578 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1577, i32 0, i32 3
  %fld.load1579 = load i1, ptr %fld.gep1578, align 1
  %arena.cur1580 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1581 = call ptr @dva_arena_alloc(ptr %arena.cur1580, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1582 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1581, i32 0, i32 0
  store ptr %var.load1572, ptr %rec.fld1582, align 8
  %rec.fld1583 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1581, i32 0, i32 1
  store ptr %var.load1573, ptr %rec.fld1583, align 8
  %rec.fld1584 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1581, i32 0, i32 2
  store i1 %fld.load1576, ptr %rec.fld1584, align 1
  %rec.fld1585 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1581, i32 0, i32 3
  store i1 %fld.load1579, ptr %rec.fld1585, align 1
  store ptr %rec.alloc1581, ptr %pay.gep1571, align 8
  br label %choice.exit

choice.case1586:                                  ; preds = %choice.next1523
  %pay.gep1591 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1592 = load ptr, ptr %pay.gep1591, align 8
  store ptr %payload.ptr1592, ptr %var._1593, align 8
  store ptr %payload.ptr1592, ptr %var.ce, align 8
  %var.load1594 = load ptr, ptr %var.ce, align 8
  %fld.gep1595 = getelementptr inbounds { ptr, ptr }, ptr %var.load1594, i32 0, i32 0
  %fld.load1596 = load ptr, ptr %fld.gep1595, align 8
  %var.load1597 = load ptr, ptr %var.table, align 8
  %var.load1598 = load ptr, ptr %var.locals, align 8
  %a.load1599 = load ptr, ptr %var.locals, align 8
  %a.null1600 = icmp eq ptr %a.load1599, null
  br i1 %a.null1600, label %a.create1601, label %a.after1602

choice.next1587:                                  ; preds = %choice.next1523
  %tag.gep1644 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1645 = load i64, ptr %tag.gep1644, align 8
  %tag.match1646 = icmp eq i64 %tag.id1645, 13
  br i1 %tag.match1646, label %choice.case1642, label %choice.next1643

a.create1601:                                     ; preds = %choice.case1586
  %arena.cur1603 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1604 = call ptr @dva_arena_alloc(ptr %arena.cur1603, i64 24)
  %arena.cur1605 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1606 = call ptr @dva_arena_alloc(ptr %arena.cur1605, i64 128)
  %a.len.gep1607 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1604, i32 0, i32 0
  store i64 0, ptr %a.len.gep1607, align 8
  %a.data.gep1608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1604, i32 0, i32 1
  store ptr %a.buf1606, ptr %a.data.gep1608, align 8
  %a.cap.gep1609 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1604, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1609, align 8
  store ptr %a.create1604, ptr %var.locals, align 8
  br label %a.after1602

a.after1602:                                      ; preds = %a.create1601, %choice.case1586
  %a.load21610 = load ptr, ptr %var.locals, align 8
  %var.load1611 = load ptr, ptr %var.cur_mod, align 8
  %call.res1612 = call ptr @"overloads::walk"(ptr %fld.load1596, ptr %var.load1597, ptr %a.load21610, ptr %var.load1611)
  store ptr %call.res1612, ptr %var.new_cy, align 8
  %var.load1613 = load ptr, ptr %var.ce, align 8
  %fld.gep1614 = getelementptr inbounds { ptr, ptr }, ptr %var.load1613, i32 0, i32 1
  %fld.load1615 = load ptr, ptr %fld.gep1614, align 8
  %var.load1616 = load ptr, ptr %var.table, align 8
  %var.load1617 = load ptr, ptr %var.locals, align 8
  %a.load1618 = load ptr, ptr %var.locals, align 8
  %a.null1619 = icmp eq ptr %a.load1618, null
  br i1 %a.null1619, label %a.create1620, label %a.after1621

a.create1620:                                     ; preds = %a.after1602
  %arena.cur1622 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1623 = call ptr @dva_arena_alloc(ptr %arena.cur1622, i64 24)
  %arena.cur1624 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1625 = call ptr @dva_arena_alloc(ptr %arena.cur1624, i64 128)
  %a.len.gep1626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1623, i32 0, i32 0
  store i64 0, ptr %a.len.gep1626, align 8
  %a.data.gep1627 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1623, i32 0, i32 1
  store ptr %a.buf1625, ptr %a.data.gep1627, align 8
  %a.cap.gep1628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1623, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1628, align 8
  store ptr %a.create1623, ptr %var.locals, align 8
  br label %a.after1621

a.after1621:                                      ; preds = %a.create1620, %a.after1602
  %a.load21629 = load ptr, ptr %var.locals, align 8
  %var.load1630 = load ptr, ptr %var.cur_mod, align 8
  %call.res1631 = call ptr @"overloads::walk"(ptr %fld.load1615, ptr %var.load1616, ptr %a.load21629, ptr %var.load1630)
  store ptr %call.res1631, ptr %var.new_br, align 8
  %arena.cur1632 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1633 = call ptr @dva_arena_alloc(ptr %arena.cur1632, i64 16)
  %tag.gep1634 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1633, i32 0, i32 0
  store i64 11, ptr %tag.gep1634, align 8
  %pay.gep1635 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1633, i32 0, i32 1
  %var.load1636 = load ptr, ptr %var.new_cy, align 8
  %var.load1637 = load ptr, ptr %var.new_br, align 8
  %arena.cur1638 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1639 = call ptr @dva_arena_alloc(ptr %arena.cur1638, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1640 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1639, i32 0, i32 0
  store ptr %var.load1636, ptr %rec.fld1640, align 8
  %rec.fld1641 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1639, i32 0, i32 1
  store ptr %var.load1637, ptr %rec.fld1641, align 8
  store ptr %rec.alloc1639, ptr %pay.gep1635, align 8
  br label %choice.exit

choice.case1642:                                  ; preds = %choice.next1587
  %pay.gep1647 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1648 = load ptr, ptr %pay.gep1647, align 8
  store ptr %payload.ptr1648, ptr %var._1649, align 8
  store ptr %payload.ptr1648, ptr %var.r, align 8
  %var.load1650 = load ptr, ptr %var.r, align 8
  %fld.gep1651 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1650, i32 0, i32 0
  %fld.load1652 = load i1, ptr %fld.gep1651, align 1
  br i1 %fld.load1652, label %choice.then1653, label %choice.else1654

choice.next1643:                                  ; preds = %choice.next1587
  %tag.gep1734 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1735 = load i64, ptr %tag.gep1734, align 8
  %tag.match1736 = icmp eq i64 %tag.id1735, 36
  br i1 %tag.match1736, label %choice.case1732, label %choice.next1733

choice.then1653:                                  ; preds = %choice.case1642
  %var.load1656 = load ptr, ptr %var.r, align 8
  %fld.gep1657 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1656, i32 0, i32 2
  %fld.load1658 = load ptr, ptr %fld.gep1657, align 8
  %var.load1659 = load ptr, ptr %var.table, align 8
  %var.load1660 = load ptr, ptr %var.locals, align 8
  %a.load1661 = load ptr, ptr %var.locals, align 8
  %a.null1662 = icmp eq ptr %a.load1661, null
  br i1 %a.null1662, label %a.create1663, label %a.after1664

choice.else1654:                                  ; preds = %choice.case1642
  %var.load1675 = load ptr, ptr %var.r, align 8
  %fld.gep1676 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1675, i32 0, i32 2
  %fld.load1677 = load ptr, ptr %fld.gep1676, align 8
  br label %choice.exit1655

choice.exit1655:                                  ; preds = %choice.else1654, %a.after1664
  %choice.res1678 = phi ptr [ %call.res1674, %a.after1664 ], [ %fld.load1677, %choice.else1654 ]
  store ptr %choice.res1678, ptr %var.new_lhs1679, align 8
  %var.load1680 = load ptr, ptr %var.r, align 8
  %fld.gep1681 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1680, i32 0, i32 1
  %fld.load1682 = load i1, ptr %fld.gep1681, align 1
  br i1 %fld.load1682, label %choice.then1683, label %choice.else1684

a.create1663:                                     ; preds = %choice.then1653
  %arena.cur1665 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1666 = call ptr @dva_arena_alloc(ptr %arena.cur1665, i64 24)
  %arena.cur1667 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1668 = call ptr @dva_arena_alloc(ptr %arena.cur1667, i64 128)
  %a.len.gep1669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 0
  store i64 0, ptr %a.len.gep1669, align 8
  %a.data.gep1670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 1
  store ptr %a.buf1668, ptr %a.data.gep1670, align 8
  %a.cap.gep1671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1666, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1671, align 8
  store ptr %a.create1666, ptr %var.locals, align 8
  br label %a.after1664

a.after1664:                                      ; preds = %a.create1663, %choice.then1653
  %a.load21672 = load ptr, ptr %var.locals, align 8
  %var.load1673 = load ptr, ptr %var.cur_mod, align 8
  %call.res1674 = call ptr @"overloads::walk"(ptr %fld.load1658, ptr %var.load1659, ptr %a.load21672, ptr %var.load1673)
  br label %choice.exit1655

choice.then1683:                                  ; preds = %choice.exit1655
  %var.load1686 = load ptr, ptr %var.r, align 8
  %fld.gep1687 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1686, i32 0, i32 3
  %fld.load1688 = load ptr, ptr %fld.gep1687, align 8
  %var.load1689 = load ptr, ptr %var.table, align 8
  %var.load1690 = load ptr, ptr %var.locals, align 8
  %a.load1691 = load ptr, ptr %var.locals, align 8
  %a.null1692 = icmp eq ptr %a.load1691, null
  br i1 %a.null1692, label %a.create1693, label %a.after1694

choice.else1684:                                  ; preds = %choice.exit1655
  %var.load1705 = load ptr, ptr %var.r, align 8
  %fld.gep1706 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1705, i32 0, i32 3
  %fld.load1707 = load ptr, ptr %fld.gep1706, align 8
  br label %choice.exit1685

choice.exit1685:                                  ; preds = %choice.else1684, %a.after1694
  %choice.res1708 = phi ptr [ %call.res1704, %a.after1694 ], [ %fld.load1707, %choice.else1684 ]
  store ptr %choice.res1708, ptr %var.new_rhs1709, align 8
  %arena.cur1710 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1711 = call ptr @dva_arena_alloc(ptr %arena.cur1710, i64 16)
  %tag.gep1712 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1711, i32 0, i32 0
  store i64 13, ptr %tag.gep1712, align 8
  %pay.gep1713 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1711, i32 0, i32 1
  %var.load1714 = load ptr, ptr %var.r, align 8
  %fld.gep1715 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1714, i32 0, i32 0
  %fld.load1716 = load i1, ptr %fld.gep1715, align 1
  %var.load1717 = load ptr, ptr %var.r, align 8
  %fld.gep1718 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1717, i32 0, i32 1
  %fld.load1719 = load i1, ptr %fld.gep1718, align 1
  %var.load1720 = load ptr, ptr %var.new_lhs1679, align 8
  %var.load1721 = load ptr, ptr %var.new_rhs1709, align 8
  %var.load1722 = load ptr, ptr %var.r, align 8
  %fld.gep1723 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1722, i32 0, i32 4
  %fld.load1724 = load i1, ptr %fld.gep1723, align 1
  %arena.cur1725 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1726 = call ptr @dva_arena_alloc(ptr %arena.cur1725, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1727 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1726, i32 0, i32 0
  store i1 %fld.load1716, ptr %rec.fld1727, align 1
  %rec.fld1728 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1726, i32 0, i32 1
  store i1 %fld.load1719, ptr %rec.fld1728, align 1
  %rec.fld1729 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1726, i32 0, i32 2
  store ptr %var.load1720, ptr %rec.fld1729, align 8
  %rec.fld1730 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1726, i32 0, i32 3
  store ptr %var.load1721, ptr %rec.fld1730, align 8
  %rec.fld1731 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1726, i32 0, i32 4
  store i1 %fld.load1724, ptr %rec.fld1731, align 1
  store ptr %rec.alloc1726, ptr %pay.gep1713, align 8
  br label %choice.exit

a.create1693:                                     ; preds = %choice.then1683
  %arena.cur1695 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1696 = call ptr @dva_arena_alloc(ptr %arena.cur1695, i64 24)
  %arena.cur1697 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1698 = call ptr @dva_arena_alloc(ptr %arena.cur1697, i64 128)
  %a.len.gep1699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 0
  store i64 0, ptr %a.len.gep1699, align 8
  %a.data.gep1700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 1
  store ptr %a.buf1698, ptr %a.data.gep1700, align 8
  %a.cap.gep1701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1701, align 8
  store ptr %a.create1696, ptr %var.locals, align 8
  br label %a.after1694

a.after1694:                                      ; preds = %a.create1693, %choice.then1683
  %a.load21702 = load ptr, ptr %var.locals, align 8
  %var.load1703 = load ptr, ptr %var.cur_mod, align 8
  %call.res1704 = call ptr @"overloads::walk"(ptr %fld.load1688, ptr %var.load1689, ptr %a.load21702, ptr %var.load1703)
  br label %choice.exit1685

choice.case1732:                                  ; preds = %choice.next1643
  %pay.gep1737 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1738 = load ptr, ptr %pay.gep1737, align 8
  store ptr %payload.ptr1738, ptr %var._1739, align 8
  store ptr %payload.ptr1738, ptr %var.na, align 8
  %var.load1740 = load ptr, ptr %var.na, align 8
  %fld.gep1741 = getelementptr inbounds { ptr, ptr }, ptr %var.load1740, i32 0, i32 1
  %fld.load1742 = load ptr, ptr %fld.gep1741, align 8
  %var.load1743 = load ptr, ptr %var.table, align 8
  %var.load1744 = load ptr, ptr %var.locals, align 8
  %a.load1745 = load ptr, ptr %var.locals, align 8
  %a.null1746 = icmp eq ptr %a.load1745, null
  br i1 %a.null1746, label %a.create1747, label %a.after1748

choice.next1733:                                  ; preds = %choice.next1643
  %tag.gep1774 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1775 = load i64, ptr %tag.gep1774, align 8
  %tag.match1776 = icmp eq i64 %tag.id1775, 18
  br i1 %tag.match1776, label %choice.case1772, label %choice.next1773

a.create1747:                                     ; preds = %choice.case1732
  %arena.cur1749 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1750 = call ptr @dva_arena_alloc(ptr %arena.cur1749, i64 24)
  %arena.cur1751 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1752 = call ptr @dva_arena_alloc(ptr %arena.cur1751, i64 128)
  %a.len.gep1753 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 0
  store i64 0, ptr %a.len.gep1753, align 8
  %a.data.gep1754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 1
  store ptr %a.buf1752, ptr %a.data.gep1754, align 8
  %a.cap.gep1755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1755, align 8
  store ptr %a.create1750, ptr %var.locals, align 8
  br label %a.after1748

a.after1748:                                      ; preds = %a.create1747, %choice.case1732
  %a.load21756 = load ptr, ptr %var.locals, align 8
  %var.load1757 = load ptr, ptr %var.cur_mod, align 8
  %call.res1758 = call ptr @"overloads::walk"(ptr %fld.load1742, ptr %var.load1743, ptr %a.load21756, ptr %var.load1757)
  store ptr %call.res1758, ptr %var.new_val1759, align 8
  %arena.cur1760 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1761 = call ptr @dva_arena_alloc(ptr %arena.cur1760, i64 16)
  %tag.gep1762 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1761, i32 0, i32 0
  store i64 36, ptr %tag.gep1762, align 8
  %pay.gep1763 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1761, i32 0, i32 1
  %var.load1764 = load ptr, ptr %var.na, align 8
  %fld.gep1765 = getelementptr inbounds { ptr, ptr }, ptr %var.load1764, i32 0, i32 0
  %fld.load1766 = load ptr, ptr %fld.gep1765, align 8
  %var.load1767 = load ptr, ptr %var.new_val1759, align 8
  %arena.cur1768 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1769 = call ptr @dva_arena_alloc(ptr %arena.cur1768, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1770 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1769, i32 0, i32 0
  store ptr %fld.load1766, ptr %rec.fld1770, align 8
  %rec.fld1771 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1769, i32 0, i32 1
  store ptr %var.load1767, ptr %rec.fld1771, align 8
  store ptr %rec.alloc1769, ptr %pay.gep1763, align 8
  br label %choice.exit

choice.case1772:                                  ; preds = %choice.next1733
  %pay.gep1777 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1778 = load ptr, ptr %pay.gep1777, align 8
  store ptr %payload.ptr1778, ptr %var._1779, align 8
  store ptr %payload.ptr1778, ptr %var.v1780, align 8
  %var.load1781 = load ptr, ptr %var.v1780, align 8
  %fld.gep1782 = getelementptr inbounds { ptr, ptr }, ptr %var.load1781, i32 0, i32 1
  %fld.load1783 = load ptr, ptr %fld.gep1782, align 8
  %var.load1784 = load ptr, ptr %var.table, align 8
  %var.load1785 = load ptr, ptr %var.locals, align 8
  %a.load1786 = load ptr, ptr %var.locals, align 8
  %a.null1787 = icmp eq ptr %a.load1786, null
  br i1 %a.null1787, label %a.create1788, label %a.after1789

choice.next1773:                                  ; preds = %choice.next1733
  %tag.gep1826 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1827 = load i64, ptr %tag.gep1826, align 8
  %tag.match1828 = icmp eq i64 %tag.id1827, 22
  br i1 %tag.match1828, label %choice.case1824, label %choice.next1825

a.create1788:                                     ; preds = %choice.case1772
  %arena.cur1790 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1791 = call ptr @dva_arena_alloc(ptr %arena.cur1790, i64 24)
  %arena.cur1792 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1793 = call ptr @dva_arena_alloc(ptr %arena.cur1792, i64 128)
  %a.len.gep1794 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 0
  store i64 0, ptr %a.len.gep1794, align 8
  %a.data.gep1795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 1
  store ptr %a.buf1793, ptr %a.data.gep1795, align 8
  %a.cap.gep1796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1796, align 8
  store ptr %a.create1791, ptr %var.locals, align 8
  br label %a.after1789

a.after1789:                                      ; preds = %a.create1788, %choice.case1772
  %a.load21797 = load ptr, ptr %var.locals, align 8
  %var.load1798 = load ptr, ptr %var.cur_mod, align 8
  %call.res1799 = call ptr @"overloads::walk_many"(ptr %fld.load1783, ptr %var.load1784, ptr %a.load21797, ptr %var.load1798)
  store ptr %call.res1799, ptr %var.new_args, align 8
  %arena.cur1800 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1801 = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 16)
  %tag.gep1802 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1801, i32 0, i32 0
  store i64 18, ptr %tag.gep1802, align 8
  %pay.gep1803 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1801, i32 0, i32 1
  %var.load1804 = load ptr, ptr %var.v1780, align 8
  %fld.gep1805 = getelementptr inbounds { ptr, ptr }, ptr %var.load1804, i32 0, i32 0
  %fld.load1806 = load ptr, ptr %fld.gep1805, align 8
  %var.load1807 = load ptr, ptr %var.new_args, align 8
  %a.load1808 = load ptr, ptr %var.new_args, align 8
  %a.null1809 = icmp eq ptr %a.load1808, null
  br i1 %a.null1809, label %a.create1810, label %a.after1811

a.create1810:                                     ; preds = %a.after1789
  %arena.cur1812 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1813 = call ptr @dva_arena_alloc(ptr %arena.cur1812, i64 24)
  %arena.cur1814 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1815 = call ptr @dva_arena_alloc(ptr %arena.cur1814, i64 128)
  %a.len.gep1816 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 0
  store i64 0, ptr %a.len.gep1816, align 8
  %a.data.gep1817 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 1
  store ptr %a.buf1815, ptr %a.data.gep1817, align 8
  %a.cap.gep1818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1818, align 8
  store ptr %a.create1813, ptr %var.new_args, align 8
  br label %a.after1811

a.after1811:                                      ; preds = %a.create1810, %a.after1789
  %a.load21819 = load ptr, ptr %var.new_args, align 8
  %arena.cur1820 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1821 = call ptr @dva_arena_alloc(ptr %arena.cur1820, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1822 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1821, i32 0, i32 0
  store ptr %fld.load1806, ptr %rec.fld1822, align 8
  %rec.fld1823 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1821, i32 0, i32 1
  store ptr %a.load21819, ptr %rec.fld1823, align 8
  store ptr %rec.alloc1821, ptr %pay.gep1803, align 8
  br label %choice.exit

choice.case1824:                                  ; preds = %choice.next1773
  %pay.gep1829 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1830 = load ptr, ptr %pay.gep1829, align 8
  store ptr %payload.ptr1830, ptr %var._1831, align 8
  store ptr %payload.ptr1830, ptr %var.tc, align 8
  %var.load1832 = load ptr, ptr %var.tc, align 8
  %fld.gep1833 = getelementptr inbounds { ptr, ptr }, ptr %var.load1832, i32 0, i32 1
  %fld.load1834 = load ptr, ptr %fld.gep1833, align 8
  %var.load1835 = load ptr, ptr %var.table, align 8
  %var.load1836 = load ptr, ptr %var.locals, align 8
  %a.load1837 = load ptr, ptr %var.locals, align 8
  %a.null1838 = icmp eq ptr %a.load1837, null
  br i1 %a.null1838, label %a.create1839, label %a.after1840

choice.next1825:                                  ; preds = %choice.next1773
  %tag.gep1865 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1866 = load i64, ptr %tag.gep1865, align 8
  %tag.match1867 = icmp eq i64 %tag.id1866, 31
  br i1 %tag.match1867, label %choice.case1863, label %choice.next1864

a.create1839:                                     ; preds = %choice.case1824
  %arena.cur1841 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1842 = call ptr @dva_arena_alloc(ptr %arena.cur1841, i64 24)
  %arena.cur1843 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1844 = call ptr @dva_arena_alloc(ptr %arena.cur1843, i64 128)
  %a.len.gep1845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1842, i32 0, i32 0
  store i64 0, ptr %a.len.gep1845, align 8
  %a.data.gep1846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1842, i32 0, i32 1
  store ptr %a.buf1844, ptr %a.data.gep1846, align 8
  %a.cap.gep1847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1842, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1847, align 8
  store ptr %a.create1842, ptr %var.locals, align 8
  br label %a.after1840

a.after1840:                                      ; preds = %a.create1839, %choice.case1824
  %a.load21848 = load ptr, ptr %var.locals, align 8
  %var.load1849 = load ptr, ptr %var.cur_mod, align 8
  %call.res1850 = call ptr @"overloads::walk"(ptr %fld.load1834, ptr %var.load1835, ptr %a.load21848, ptr %var.load1849)
  store ptr %call.res1850, ptr %var.new_expr, align 8
  %arena.cur1851 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1852 = call ptr @dva_arena_alloc(ptr %arena.cur1851, i64 16)
  %tag.gep1853 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1852, i32 0, i32 0
  store i64 22, ptr %tag.gep1853, align 8
  %pay.gep1854 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1852, i32 0, i32 1
  %var.load1855 = load ptr, ptr %var.tc, align 8
  %fld.gep1856 = getelementptr inbounds { ptr, ptr }, ptr %var.load1855, i32 0, i32 0
  %fld.load1857 = load ptr, ptr %fld.gep1856, align 8
  %var.load1858 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1859 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1860 = call ptr @dva_arena_alloc(ptr %arena.cur1859, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1861 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1860, i32 0, i32 0
  store ptr %fld.load1857, ptr %rec.fld1861, align 8
  %rec.fld1862 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1860, i32 0, i32 1
  store ptr %var.load1858, ptr %rec.fld1862, align 8
  store ptr %rec.alloc1860, ptr %pay.gep1854, align 8
  br label %choice.exit

choice.case1863:                                  ; preds = %choice.next1825
  %pay.gep1868 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1869 = load ptr, ptr %pay.gep1868, align 8
  store ptr %payload.ptr1869, ptr %var._1870, align 8
  store ptr %payload.ptr1869, ptr %var.sp, align 8
  %arena.cur1871 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1872 = call ptr @dva_arena_alloc(ptr %arena.cur1871, i64 16)
  %tag.gep1873 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1872, i32 0, i32 0
  store i64 31, ptr %tag.gep1873, align 8
  %pay.gep1874 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1872, i32 0, i32 1
  %var.load1875 = load ptr, ptr %var.sp, align 8
  %var.load1876 = load ptr, ptr %var.table, align 8
  %var.load1877 = load ptr, ptr %var.locals, align 8
  %a.load1878 = load ptr, ptr %var.locals, align 8
  %a.null1879 = icmp eq ptr %a.load1878, null
  br i1 %a.null1879, label %a.create1880, label %a.after1881

choice.next1864:                                  ; preds = %choice.next1825
  %tag.gep1894 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1895 = load i64, ptr %tag.gep1894, align 8
  %tag.match1896 = icmp eq i64 %tag.id1895, 32
  br i1 %tag.match1896, label %choice.case1892, label %choice.next1893

a.create1880:                                     ; preds = %choice.case1863
  %arena.cur1882 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1883 = call ptr @dva_arena_alloc(ptr %arena.cur1882, i64 24)
  %arena.cur1884 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1885 = call ptr @dva_arena_alloc(ptr %arena.cur1884, i64 128)
  %a.len.gep1886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 0
  store i64 0, ptr %a.len.gep1886, align 8
  %a.data.gep1887 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 1
  store ptr %a.buf1885, ptr %a.data.gep1887, align 8
  %a.cap.gep1888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1883, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1888, align 8
  store ptr %a.create1883, ptr %var.locals, align 8
  br label %a.after1881

a.after1881:                                      ; preds = %a.create1880, %choice.case1863
  %a.load21889 = load ptr, ptr %var.locals, align 8
  %var.load1890 = load ptr, ptr %var.cur_mod, align 8
  %call.res1891 = call ptr @"overloads::walk_call"(ptr %var.load1875, ptr %var.load1876, ptr %a.load21889, ptr %var.load1890)
  store ptr %call.res1891, ptr %pay.gep1874, align 8
  br label %choice.exit

choice.case1892:                                  ; preds = %choice.next1864
  %pay.gep1897 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1898 = load ptr, ptr %pay.gep1897, align 8
  store ptr %payload.ptr1898, ptr %var._1899, align 8
  store ptr %payload.ptr1898, ptr %var.jn, align 8
  %arena.cur1900 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1901 = call ptr @dva_arena_alloc(ptr %arena.cur1900, i64 16)
  %tag.gep1902 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1901, i32 0, i32 0
  store i64 32, ptr %tag.gep1902, align 8
  %pay.gep1903 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1901, i32 0, i32 1
  %var.load1904 = load ptr, ptr %var.jn, align 8
  %var.load1905 = load ptr, ptr %var.table, align 8
  %var.load1906 = load ptr, ptr %var.locals, align 8
  %a.load1907 = load ptr, ptr %var.locals, align 8
  %a.null1908 = icmp eq ptr %a.load1907, null
  br i1 %a.null1908, label %a.create1909, label %a.after1910

choice.next1893:                                  ; preds = %choice.next1864
  %tag.gep1923 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1924 = load i64, ptr %tag.gep1923, align 8
  %tag.match1925 = icmp eq i64 %tag.id1924, 33
  br i1 %tag.match1925, label %choice.case1921, label %choice.next1922

a.create1909:                                     ; preds = %choice.case1892
  %arena.cur1911 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1912 = call ptr @dva_arena_alloc(ptr %arena.cur1911, i64 24)
  %arena.cur1913 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1914 = call ptr @dva_arena_alloc(ptr %arena.cur1913, i64 128)
  %a.len.gep1915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 0
  store i64 0, ptr %a.len.gep1915, align 8
  %a.data.gep1916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 1
  store ptr %a.buf1914, ptr %a.data.gep1916, align 8
  %a.cap.gep1917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1917, align 8
  store ptr %a.create1912, ptr %var.locals, align 8
  br label %a.after1910

a.after1910:                                      ; preds = %a.create1909, %choice.case1892
  %a.load21918 = load ptr, ptr %var.locals, align 8
  %var.load1919 = load ptr, ptr %var.cur_mod, align 8
  %call.res1920 = call ptr @"overloads::walk"(ptr %var.load1904, ptr %var.load1905, ptr %a.load21918, ptr %var.load1919)
  store ptr %call.res1920, ptr %pay.gep1903, align 8
  br label %choice.exit

choice.case1921:                                  ; preds = %choice.next1893
  %pay.gep1926 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1927 = load ptr, ptr %pay.gep1926, align 8
  store ptr %payload.ptr1927, ptr %var._1928, align 8
  store ptr %payload.ptr1927, ptr %var.ex, align 8
  %var.load1929 = load ptr, ptr %var.ex, align 8
  %var.load1930 = load ptr, ptr %var.table, align 8
  %var.load1931 = load ptr, ptr %var.locals, align 8
  %a.load1932 = load ptr, ptr %var.locals, align 8
  %a.null1933 = icmp eq ptr %a.load1932, null
  br i1 %a.null1933, label %a.create1934, label %a.after1935

choice.next1922:                                  ; preds = %choice.next1893
  %tag.gep1953 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1954 = load i64, ptr %tag.gep1953, align 8
  %tag.match1955 = icmp eq i64 %tag.id1954, 37
  br i1 %tag.match1955, label %choice.case1951, label %choice.next1952

a.create1934:                                     ; preds = %choice.case1921
  %arena.cur1936 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1937 = call ptr @dva_arena_alloc(ptr %arena.cur1936, i64 24)
  %arena.cur1938 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1939 = call ptr @dva_arena_alloc(ptr %arena.cur1938, i64 128)
  %a.len.gep1940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 0
  store i64 0, ptr %a.len.gep1940, align 8
  %a.data.gep1941 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 1
  store ptr %a.buf1939, ptr %a.data.gep1941, align 8
  %a.cap.gep1942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1942, align 8
  store ptr %a.create1937, ptr %var.locals, align 8
  br label %a.after1935

a.after1935:                                      ; preds = %a.create1934, %choice.case1921
  %a.load21943 = load ptr, ptr %var.locals, align 8
  %var.load1944 = load ptr, ptr %var.cur_mod, align 8
  %call.res1945 = call ptr @"overloads::walk"(ptr %var.load1929, ptr %var.load1930, ptr %a.load21943, ptr %var.load1944)
  store ptr %call.res1945, ptr %var.new_ex, align 8
  %arena.cur1946 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1947 = call ptr @dva_arena_alloc(ptr %arena.cur1946, i64 16)
  %tag.gep1948 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1947, i32 0, i32 0
  store i64 33, ptr %tag.gep1948, align 8
  %pay.gep1949 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1947, i32 0, i32 1
  %var.load1950 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1950, ptr %pay.gep1949, align 8
  br label %choice.exit

choice.case1951:                                  ; preds = %choice.next1922
  %pay.gep1956 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1957 = load ptr, ptr %pay.gep1956, align 8
  store ptr %payload.ptr1957, ptr %var._1958, align 8
  store ptr %payload.ptr1957, ptr %var.r1959, align 8
  %var.load1960 = load ptr, ptr %var.r1959, align 8
  %fld.gep1961 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1960, i32 0, i32 0
  %fld.load1962 = load i1, ptr %fld.gep1961, align 1
  br i1 %fld.load1962, label %choice.then1963, label %choice.else1964

choice.next1952:                                  ; preds = %choice.next1922
  %tag.gep2012 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2013 = load i64, ptr %tag.gep2012, align 8
  %tag.match2014 = icmp eq i64 %tag.id2013, 28
  br i1 %tag.match2014, label %choice.case2010, label %choice.next2011

choice.then1963:                                  ; preds = %choice.case1951
  %var.load1966 = load ptr, ptr %var.r1959, align 8
  %fld.gep1967 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1966, i32 0, i32 1
  %fld.load1968 = load ptr, ptr %fld.gep1967, align 8
  %var.load1969 = load ptr, ptr %var.table, align 8
  %var.load1970 = load ptr, ptr %var.locals, align 8
  %a.load1971 = load ptr, ptr %var.locals, align 8
  %a.null1972 = icmp eq ptr %a.load1971, null
  br i1 %a.null1972, label %a.create1973, label %a.after1974

choice.else1964:                                  ; preds = %choice.case1951
  %var.load1985 = load ptr, ptr %var.r1959, align 8
  %fld.gep1986 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1985, i32 0, i32 1
  %fld.load1987 = load ptr, ptr %fld.gep1986, align 8
  br label %choice.exit1965

choice.exit1965:                                  ; preds = %choice.else1964, %a.after1974
  %choice.res1988 = phi ptr [ %call.res1984, %a.after1974 ], [ %fld.load1987, %choice.else1964 ]
  store ptr %choice.res1988, ptr %var.new_val1989, align 8
  %arena.cur1990 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1991 = call ptr @dva_arena_alloc(ptr %arena.cur1990, i64 16)
  %tag.gep1992 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1991, i32 0, i32 0
  store i64 37, ptr %tag.gep1992, align 8
  %pay.gep1993 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1991, i32 0, i32 1
  %var.load1994 = load ptr, ptr %var.r1959, align 8
  %fld.gep1995 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1994, i32 0, i32 0
  %fld.load1996 = load i1, ptr %fld.gep1995, align 1
  %var.load1997 = load ptr, ptr %var.new_val1989, align 8
  %var.load1998 = load ptr, ptr %var.r1959, align 8
  %fld.gep1999 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1998, i32 0, i32 2
  %fld.load2000 = load i64, ptr %fld.gep1999, align 8
  %var.load2001 = load ptr, ptr %var.r1959, align 8
  %fld.gep2002 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2001, i32 0, i32 3
  %fld.load2003 = load i64, ptr %fld.gep2002, align 8
  %arena.cur2004 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2005 = call ptr @dva_arena_alloc(ptr %arena.cur2004, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2006 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2005, i32 0, i32 0
  store i1 %fld.load1996, ptr %rec.fld2006, align 1
  %rec.fld2007 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2005, i32 0, i32 1
  store ptr %var.load1997, ptr %rec.fld2007, align 8
  %rec.fld2008 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2005, i32 0, i32 2
  store i64 %fld.load2000, ptr %rec.fld2008, align 8
  %rec.fld2009 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2005, i32 0, i32 3
  store i64 %fld.load2003, ptr %rec.fld2009, align 8
  store ptr %rec.alloc2005, ptr %pay.gep1993, align 8
  br label %choice.exit

a.create1973:                                     ; preds = %choice.then1963
  %arena.cur1975 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1976 = call ptr @dva_arena_alloc(ptr %arena.cur1975, i64 24)
  %arena.cur1977 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1978 = call ptr @dva_arena_alloc(ptr %arena.cur1977, i64 128)
  %a.len.gep1979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 0
  store i64 0, ptr %a.len.gep1979, align 8
  %a.data.gep1980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 1
  store ptr %a.buf1978, ptr %a.data.gep1980, align 8
  %a.cap.gep1981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1976, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1981, align 8
  store ptr %a.create1976, ptr %var.locals, align 8
  br label %a.after1974

a.after1974:                                      ; preds = %a.create1973, %choice.then1963
  %a.load21982 = load ptr, ptr %var.locals, align 8
  %var.load1983 = load ptr, ptr %var.cur_mod, align 8
  %call.res1984 = call ptr @"overloads::walk"(ptr %fld.load1968, ptr %var.load1969, ptr %a.load21982, ptr %var.load1983)
  br label %choice.exit1965

choice.case2010:                                  ; preds = %choice.next1952
  %pay.gep2015 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2016 = load ptr, ptr %pay.gep2015, align 8
  store ptr %payload.ptr2016, ptr %var._2017, align 8
  store ptr %payload.ptr2016, ptr %var.ac, align 8
  %var.load2018 = load ptr, ptr %var.ac, align 8
  %fld.gep2019 = getelementptr inbounds { ptr, i64 }, ptr %var.load2018, i32 0, i32 0
  %fld.load2020 = load ptr, ptr %fld.gep2019, align 8
  %var.load2021 = load ptr, ptr %var.table, align 8
  %call.res2022 = call ptr @"overloads::keep_type"(ptr %fld.load2020, ptr %var.load2021)
  store ptr %call.res2022, ptr %var.new_elem, align 8
  %arena.cur2023 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2024 = call ptr @dva_arena_alloc(ptr %arena.cur2023, i64 16)
  %tag.gep2025 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2024, i32 0, i32 0
  store i64 28, ptr %tag.gep2025, align 8
  %pay.gep2026 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2024, i32 0, i32 1
  %var.load2027 = load ptr, ptr %var.new_elem, align 8
  %var.load2028 = load ptr, ptr %var.ac, align 8
  %fld.gep2029 = getelementptr inbounds { ptr, i64 }, ptr %var.load2028, i32 0, i32 1
  %fld.load2030 = load i64, ptr %fld.gep2029, align 8
  %arena.cur2031 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2032 = call ptr @dva_arena_alloc(ptr %arena.cur2031, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2033 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2032, i32 0, i32 0
  store ptr %var.load2027, ptr %rec.fld2033, align 8
  %rec.fld2034 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2032, i32 0, i32 1
  store i64 %fld.load2030, ptr %rec.fld2034, align 8
  store ptr %rec.alloc2032, ptr %pay.gep2026, align 8
  br label %choice.exit

choice.next2011:                                  ; preds = %choice.next1952
  %tag.gep2037 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2038 = load i64, ptr %tag.gep2037, align 8
  %tag.match2039 = icmp eq i64 %tag.id2038, 38
  br i1 %tag.match2039, label %choice.case2035, label %choice.next2036

choice.case2035:                                  ; preds = %choice.next2011
  %pay.gep2040 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2041 = load ptr, ptr %pay.gep2040, align 8
  store ptr %payload.ptr2041, ptr %var._2042, align 8
  store ptr %payload.ptr2041, ptr %var.ud, align 8
  %var.load2043 = load ptr, ptr %var.ud, align 8
  %fld.gep2044 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2043, i32 0, i32 1
  %fld.load2045 = load ptr, ptr %fld.gep2044, align 8
  %var.load2046 = load ptr, ptr %var.table, align 8
  %var.load2047 = load ptr, ptr %var.locals, align 8
  %a.load2048 = load ptr, ptr %var.locals, align 8
  %a.null2049 = icmp eq ptr %a.load2048, null
  br i1 %a.null2049, label %a.create2050, label %a.after2051

choice.next2036:                                  ; preds = %choice.next2011
  %tag.gep2084 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2085 = load i64, ptr %tag.gep2084, align 8
  %tag.match2086 = icmp eq i64 %tag.id2085, 19
  br i1 %tag.match2086, label %choice.case2082, label %choice.next2083

a.create2050:                                     ; preds = %choice.case2035
  %arena.cur2052 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2053 = call ptr @dva_arena_alloc(ptr %arena.cur2052, i64 24)
  %arena.cur2054 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2055 = call ptr @dva_arena_alloc(ptr %arena.cur2054, i64 128)
  %a.len.gep2056 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2053, i32 0, i32 0
  store i64 0, ptr %a.len.gep2056, align 8
  %a.data.gep2057 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2053, i32 0, i32 1
  store ptr %a.buf2055, ptr %a.data.gep2057, align 8
  %a.cap.gep2058 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2053, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2058, align 8
  store ptr %a.create2053, ptr %var.locals, align 8
  br label %a.after2051

a.after2051:                                      ; preds = %a.create2050, %choice.case2035
  %a.load22059 = load ptr, ptr %var.locals, align 8
  %var.load2060 = load ptr, ptr %var.cur_mod, align 8
  %call.res2061 = call ptr @"overloads::walk"(ptr %fld.load2045, ptr %var.load2046, ptr %a.load22059, ptr %var.load2060)
  store ptr %call.res2061, ptr %var.new_msg, align 8
  %arena.cur2062 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2063 = call ptr @dva_arena_alloc(ptr %arena.cur2062, i64 16)
  %tag.gep2064 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2063, i32 0, i32 0
  store i64 38, ptr %tag.gep2064, align 8
  %pay.gep2065 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2063, i32 0, i32 1
  %var.load2066 = load ptr, ptr %var.ud, align 8
  %fld.gep2067 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2066, i32 0, i32 0
  %fld.load2068 = load i1, ptr %fld.gep2067, align 1
  %var.load2069 = load ptr, ptr %var.new_msg, align 8
  %var.load2070 = load ptr, ptr %var.ud, align 8
  %fld.gep2071 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2070, i32 0, i32 2
  %fld.load2072 = load i64, ptr %fld.gep2071, align 8
  %var.load2073 = load ptr, ptr %var.ud, align 8
  %fld.gep2074 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2073, i32 0, i32 3
  %fld.load2075 = load i64, ptr %fld.gep2074, align 8
  %arena.cur2076 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2077 = call ptr @dva_arena_alloc(ptr %arena.cur2076, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2078 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2077, i32 0, i32 0
  store i1 %fld.load2068, ptr %rec.fld2078, align 1
  %rec.fld2079 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2077, i32 0, i32 1
  store ptr %var.load2069, ptr %rec.fld2079, align 8
  %rec.fld2080 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2077, i32 0, i32 2
  store i64 %fld.load2072, ptr %rec.fld2080, align 8
  %rec.fld2081 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2077, i32 0, i32 3
  store i64 %fld.load2075, ptr %rec.fld2081, align 8
  store ptr %rec.alloc2077, ptr %pay.gep2065, align 8
  br label %choice.exit

choice.case2082:                                  ; preds = %choice.next2036
  %pay.gep2087 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2088 = load ptr, ptr %pay.gep2087, align 8
  store ptr %payload.ptr2088, ptr %var._2089, align 8
  store ptr %payload.ptr2088, ptr %var.rm, align 8
  %var.load2090 = load ptr, ptr %var.rm, align 8
  %fld.gep2091 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2090, i32 0, i32 0
  %fld.load2092 = load ptr, ptr %fld.gep2091, align 8
  %var.load2093 = load ptr, ptr %var.table, align 8
  %var.load2094 = load ptr, ptr %var.locals, align 8
  %a.load2095 = load ptr, ptr %var.locals, align 8
  %a.null2096 = icmp eq ptr %a.load2095, null
  br i1 %a.null2096, label %a.create2097, label %a.after2098

choice.next2083:                                  ; preds = %choice.next2036
  %tag.gep2127 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2128 = load i64, ptr %tag.gep2127, align 8
  %tag.match2129 = icmp eq i64 %tag.id2128, 26
  br i1 %tag.match2129, label %choice.case2125, label %choice.next2126

a.create2097:                                     ; preds = %choice.case2082
  %arena.cur2099 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2100 = call ptr @dva_arena_alloc(ptr %arena.cur2099, i64 24)
  %arena.cur2101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2102 = call ptr @dva_arena_alloc(ptr %arena.cur2101, i64 128)
  %a.len.gep2103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2100, i32 0, i32 0
  store i64 0, ptr %a.len.gep2103, align 8
  %a.data.gep2104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2100, i32 0, i32 1
  store ptr %a.buf2102, ptr %a.data.gep2104, align 8
  %a.cap.gep2105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2105, align 8
  store ptr %a.create2100, ptr %var.locals, align 8
  br label %a.after2098

a.after2098:                                      ; preds = %a.create2097, %choice.case2082
  %a.load22106 = load ptr, ptr %var.locals, align 8
  %var.load2107 = load ptr, ptr %var.cur_mod, align 8
  %call.res2108 = call ptr @"overloads::walk"(ptr %fld.load2092, ptr %var.load2093, ptr %a.load22106, ptr %var.load2107)
  store ptr %call.res2108, ptr %var.new_addr, align 8
  %arena.cur2109 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2110 = call ptr @dva_arena_alloc(ptr %arena.cur2109, i64 16)
  %tag.gep2111 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2110, i32 0, i32 0
  store i64 19, ptr %tag.gep2111, align 8
  %pay.gep2112 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2110, i32 0, i32 1
  %var.load2113 = load ptr, ptr %var.new_addr, align 8
  %var.load2114 = load ptr, ptr %var.rm, align 8
  %fld.gep2115 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2114, i32 0, i32 1
  %fld.load2116 = load ptr, ptr %fld.gep2115, align 8
  %var.load2117 = load ptr, ptr %var.rm, align 8
  %fld.gep2118 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2117, i32 0, i32 2
  %fld.load2119 = load ptr, ptr %fld.gep2118, align 8
  %arena.cur2120 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2121 = call ptr @dva_arena_alloc(ptr %arena.cur2120, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2122 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2121, i32 0, i32 0
  store ptr %var.load2113, ptr %rec.fld2122, align 8
  %rec.fld2123 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2121, i32 0, i32 1
  store ptr %fld.load2116, ptr %rec.fld2123, align 8
  %rec.fld2124 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2121, i32 0, i32 2
  store ptr %fld.load2119, ptr %rec.fld2124, align 8
  store ptr %rec.alloc2121, ptr %pay.gep2112, align 8
  br label %choice.exit

choice.case2125:                                  ; preds = %choice.next2083
  %pay.gep2130 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2131 = load ptr, ptr %pay.gep2130, align 8
  store ptr %payload.ptr2131, ptr %var._2132, align 8
  store ptr %payload.ptr2131, ptr %var.so, align 8
  %var.load2133 = load ptr, ptr %var.so, align 8
  %fld.gep2134 = getelementptr inbounds { ptr, ptr }, ptr %var.load2133, i32 0, i32 1
  %fld.load2135 = load ptr, ptr %fld.gep2134, align 8
  %var.load2136 = load ptr, ptr %var.table, align 8
  %call.res2137 = call ptr @"overloads::keep_type"(ptr %fld.load2135, ptr %var.load2136)
  store ptr %call.res2137, ptr %var.new_sti, align 8
  %arena.cur2138 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2139 = call ptr @dva_arena_alloc(ptr %arena.cur2138, i64 16)
  %tag.gep2140 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2139, i32 0, i32 0
  store i64 26, ptr %tag.gep2140, align 8
  %pay.gep2141 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2139, i32 0, i32 1
  %var.load2142 = load ptr, ptr %var.so, align 8
  %fld.gep2143 = getelementptr inbounds { ptr, ptr }, ptr %var.load2142, i32 0, i32 0
  %fld.load2144 = load ptr, ptr %fld.gep2143, align 8
  %var.load2145 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2146 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2147 = call ptr @dva_arena_alloc(ptr %arena.cur2146, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2148 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2147, i32 0, i32 0
  store ptr %fld.load2144, ptr %rec.fld2148, align 8
  %rec.fld2149 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2147, i32 0, i32 1
  store ptr %var.load2145, ptr %rec.fld2149, align 8
  store ptr %rec.alloc2147, ptr %pay.gep2141, align 8
  br label %choice.exit

choice.next2126:                                  ; preds = %choice.next2083
  %tag.gep2152 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2153 = load i64, ptr %tag.gep2152, align 8
  %tag.match2154 = icmp eq i64 %tag.id2153, 29
  br i1 %tag.match2154, label %choice.case2150, label %choice.next2151

choice.case2150:                                  ; preds = %choice.next2126
  %pay.gep2155 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2156 = load ptr, ptr %pay.gep2155, align 8
  store ptr %payload.ptr2156, ptr %var._2157, align 8
  store ptr %payload.ptr2156, ptr %var.ml, align 8
  %arena.cur2158 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new2159 = call ptr @dva_arena_alloc(ptr %arena.cur2158, i64 24)
  %arena.cur2160 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2161 = call ptr @dva_arena_alloc(ptr %arena.cur2160, i64 128)
  %a.len.gep2162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2159, i32 0, i32 0
  store i64 0, ptr %a.len.gep2162, align 8
  %a.data.gep2163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2159, i32 0, i32 1
  store ptr %a.buf2161, ptr %a.data.gep2163, align 8
  %a.cap.gep2164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2159, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2164, align 8
  store ptr %a.new2159, ptr %var.new_pairs, align 8
  %var.load2165 = load ptr, ptr %var.ml, align 8
  %a.load2166 = load ptr, ptr %var.ml, align 8
  %a.null2167 = icmp eq ptr %a.load2166, null
  br i1 %a.null2167, label %a.create2168, label %a.after2169

choice.next2151:                                  ; preds = %choice.next2126
  %tag.gep2283 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2284 = load i64, ptr %tag.gep2283, align 8
  %tag.match2285 = icmp eq i64 %tag.id2284, 30
  br i1 %tag.match2285, label %choice.case2281, label %choice.next2282

a.create2168:                                     ; preds = %choice.case2150
  %arena.cur2170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2171 = call ptr @dva_arena_alloc(ptr %arena.cur2170, i64 24)
  %arena.cur2172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2173 = call ptr @dva_arena_alloc(ptr %arena.cur2172, i64 128)
  %a.len.gep2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2171, i32 0, i32 0
  store i64 0, ptr %a.len.gep2174, align 8
  %a.data.gep2175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2171, i32 0, i32 1
  store ptr %a.buf2173, ptr %a.data.gep2175, align 8
  %a.cap.gep2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2176, align 8
  store ptr %a.create2171, ptr %var.ml, align 8
  br label %a.after2169

a.after2169:                                      ; preds = %a.create2168, %choice.case2150
  %a.load22177 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22177, i32 0, i32 0
  %arr.cycle.len2179 = load i64, ptr %arr.cycle.len2178, align 8
  %arr.cycle.data2180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22177, i32 0, i32 1
  %arr.cycle.data2181 = load ptr, ptr %arr.cycle.data2180, align 8
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u2183 = load ptr, ptr %var._2157, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after2169
  %counter.load2184 = load i64, ptr %loop.idx.86, align 8
  %loop.cond2185 = icmp slt i64 %counter.load2184, %arr.cycle.len2179
  br i1 %loop.cond2185, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i2186 = sub i64 %counter.load2184, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep2187 = getelementptr i64, ptr %arr.cycle.data2181, i64 %counter.load2184
  %arr.elem.raw2188 = load i64, ptr %arr.elem.gep2187, align 8
  %slot.i2p2189 = inttoptr i64 %arr.elem.raw2188 to ptr
  store i64 %loop.rel.i2186, ptr %var._i2190, align 8
  store ptr %slot.i2p2189, ptr %var._2191, align 8
  store ptr %slot.i2p2189, ptr %var.p2182, align 8
  %var.load2192 = load ptr, ptr %var.p2182, align 8
  %fld.gep2193 = getelementptr inbounds { ptr, ptr }, ptr %var.load2192, i32 0, i32 0
  %fld.load2194 = load ptr, ptr %fld.gep2193, align 8
  %var.load2195 = load ptr, ptr %var.table, align 8
  %var.load2196 = load ptr, ptr %var.locals, align 8
  %a.load2197 = load ptr, ptr %var.locals, align 8
  %a.null2198 = icmp eq ptr %a.load2197, null
  br i1 %a.null2198, label %a.create2199, label %a.after2200

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store2248
  %step.val2262 = load i64, ptr %loop.step.86, align 8
  %loop.next2263 = add i64 %counter.load2184, %step.val2262
  store i64 %loop.next2263, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  store ptr %cycle.prev.u2183, ptr %var._2157, align 8
  %arena.cur2264 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2265 = call ptr @dva_arena_alloc(ptr %arena.cur2264, i64 16)
  %tag.gep2266 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2265, i32 0, i32 0
  store i64 29, ptr %tag.gep2266, align 8
  %pay.gep2267 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2265, i32 0, i32 1
  %var.load2268 = load ptr, ptr %var.new_pairs, align 8
  %a.load2269 = load ptr, ptr %var.new_pairs, align 8
  %a.null2270 = icmp eq ptr %a.load2269, null
  br i1 %a.null2270, label %a.create2271, label %a.after2272

a.create2199:                                     ; preds = %loop.body.86
  %arena.cur2201 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2202 = call ptr @dva_arena_alloc(ptr %arena.cur2201, i64 24)
  %arena.cur2203 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2204 = call ptr @dva_arena_alloc(ptr %arena.cur2203, i64 128)
  %a.len.gep2205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2202, i32 0, i32 0
  store i64 0, ptr %a.len.gep2205, align 8
  %a.data.gep2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2202, i32 0, i32 1
  store ptr %a.buf2204, ptr %a.data.gep2206, align 8
  %a.cap.gep2207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2207, align 8
  store ptr %a.create2202, ptr %var.locals, align 8
  br label %a.after2200

a.after2200:                                      ; preds = %a.create2199, %loop.body.86
  %a.load22208 = load ptr, ptr %var.locals, align 8
  %var.load2209 = load ptr, ptr %var.cur_mod, align 8
  %call.res2210 = call ptr @"overloads::walk"(ptr %fld.load2194, ptr %var.load2195, ptr %a.load22208, ptr %var.load2209)
  %var.load2211 = load ptr, ptr %var.p2182, align 8
  %fld.gep2212 = getelementptr inbounds { ptr, ptr }, ptr %var.load2211, i32 0, i32 1
  %fld.load2213 = load ptr, ptr %fld.gep2212, align 8
  %var.load2214 = load ptr, ptr %var.table, align 8
  %var.load2215 = load ptr, ptr %var.locals, align 8
  %a.load2216 = load ptr, ptr %var.locals, align 8
  %a.null2217 = icmp eq ptr %a.load2216, null
  br i1 %a.null2217, label %a.create2218, label %a.after2219

a.create2218:                                     ; preds = %a.after2200
  %arena.cur2220 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2221 = call ptr @dva_arena_alloc(ptr %arena.cur2220, i64 24)
  %arena.cur2222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2223 = call ptr @dva_arena_alloc(ptr %arena.cur2222, i64 128)
  %a.len.gep2224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2221, i32 0, i32 0
  store i64 0, ptr %a.len.gep2224, align 8
  %a.data.gep2225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2221, i32 0, i32 1
  store ptr %a.buf2223, ptr %a.data.gep2225, align 8
  %a.cap.gep2226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2221, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2226, align 8
  store ptr %a.create2221, ptr %var.locals, align 8
  br label %a.after2219

a.after2219:                                      ; preds = %a.create2218, %a.after2200
  %a.load22227 = load ptr, ptr %var.locals, align 8
  %var.load2228 = load ptr, ptr %var.cur_mod, align 8
  %call.res2229 = call ptr @"overloads::walk"(ptr %fld.load2213, ptr %var.load2214, ptr %a.load22227, ptr %var.load2228)
  %arena.cur2230 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2231 = call ptr @dva_arena_alloc(ptr %arena.cur2230, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2232 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2231, i32 0, i32 0
  store ptr %call.res2210, ptr %rec.fld2232, align 8
  %rec.fld2233 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2231, i32 0, i32 1
  store ptr %call.res2229, ptr %rec.fld2233, align 8
  %a.load2234 = load ptr, ptr %var.new_pairs, align 8
  %a.null2235 = icmp eq ptr %a.load2234, null
  br i1 %a.null2235, label %a.create2236, label %a.after2237

a.create2236:                                     ; preds = %a.after2219
  %arena.cur2238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2239 = call ptr @dva_arena_alloc(ptr %arena.cur2238, i64 24)
  %arena.cur2240 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2241 = call ptr @dva_arena_alloc(ptr %arena.cur2240, i64 128)
  %a.len.gep2242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2239, i32 0, i32 0
  store i64 0, ptr %a.len.gep2242, align 8
  %a.data.gep2243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2239, i32 0, i32 1
  store ptr %a.buf2241, ptr %a.data.gep2243, align 8
  %a.cap.gep2244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2244, align 8
  store ptr %a.create2239, ptr %var.new_pairs, align 8
  br label %a.after2237

a.after2237:                                      ; preds = %a.create2236, %a.after2219
  %a.load22245 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2246

a.check2246:                                      ; preds = %a.after2237
  %a.len2249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22245, i32 0, i32 0
  %a.len2250 = load i64, ptr %a.len2249, align 8
  %a.cap2251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22245, i32 0, i32 2
  %a.cap2252 = load i64, ptr %a.cap2251, align 8
  %a.needs.grow2253 = icmp eq i64 %a.len2250, %a.cap2252
  br i1 %a.needs.grow2253, label %a.grow2247, label %a.store2248

a.grow2247:                                       ; preds = %a.check2246
  call void @dva_array_grow(ptr %a.load22245)
  br label %a.store2248

a.store2248:                                      ; preds = %a.grow2247, %a.check2246
  %a.cur.data2254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22245, i32 0, i32 1
  %a.cur.data2255 = load ptr, ptr %a.cur.data2254, align 8
  %a.cur.len2256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22245, i32 0, i32 0
  %a.cur.len2257 = load i64, ptr %a.cur.len2256, align 8
  %a.elem.gep2258 = getelementptr i64, ptr %a.cur.data2255, i64 %a.cur.len2257
  %slot.p2i2259 = ptrtoint ptr %rec.alloc2231 to i64
  store i64 %slot.p2i2259, ptr %a.elem.gep2258, align 8
  %a.next.len2260 = add i64 %a.cur.len2257, 1
  %b.len.gep2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22245, i32 0, i32 0
  store i64 %a.next.len2260, ptr %b.len.gep2261, align 8
  br label %loop.latch.86

a.create2271:                                     ; preds = %loop.exit.86
  %arena.cur2273 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2274 = call ptr @dva_arena_alloc(ptr %arena.cur2273, i64 24)
  %arena.cur2275 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2276 = call ptr @dva_arena_alloc(ptr %arena.cur2275, i64 128)
  %a.len.gep2277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 0
  store i64 0, ptr %a.len.gep2277, align 8
  %a.data.gep2278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 1
  store ptr %a.buf2276, ptr %a.data.gep2278, align 8
  %a.cap.gep2279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2279, align 8
  store ptr %a.create2274, ptr %var.new_pairs, align 8
  br label %a.after2272

a.after2272:                                      ; preds = %a.create2271, %loop.exit.86
  %a.load22280 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22280, ptr %pay.gep2267, align 8
  br label %choice.exit

choice.case2281:                                  ; preds = %choice.next2151
  %pay.gep2286 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2287 = load ptr, ptr %pay.gep2286, align 8
  store ptr %payload.ptr2287, ptr %var._2288, align 8
  store ptr %payload.ptr2287, ptr %var.ct, align 8
  %var.load2289 = load ptr, ptr %var.ct, align 8
  %var.load2290 = load ptr, ptr %var.table, align 8
  %var.load2291 = load ptr, ptr %var.locals, align 8
  %a.load2292 = load ptr, ptr %var.locals, align 8
  %a.null2293 = icmp eq ptr %a.load2292, null
  br i1 %a.null2293, label %a.create2294, label %a.after2295

choice.next2282:                                  ; preds = %choice.next2151
  %tag.gep2313 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2314 = load i64, ptr %tag.gep2313, align 8
  %tag.match2315 = icmp eq i64 %tag.id2314, 25
  br i1 %tag.match2315, label %choice.case2311, label %choice.next2312

a.create2294:                                     ; preds = %choice.case2281
  %arena.cur2296 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2297 = call ptr @dva_arena_alloc(ptr %arena.cur2296, i64 24)
  %arena.cur2298 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2299 = call ptr @dva_arena_alloc(ptr %arena.cur2298, i64 128)
  %a.len.gep2300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2297, i32 0, i32 0
  store i64 0, ptr %a.len.gep2300, align 8
  %a.data.gep2301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2297, i32 0, i32 1
  store ptr %a.buf2299, ptr %a.data.gep2301, align 8
  %a.cap.gep2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2297, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2302, align 8
  store ptr %a.create2297, ptr %var.locals, align 8
  br label %a.after2295

a.after2295:                                      ; preds = %a.create2294, %choice.case2281
  %a.load22303 = load ptr, ptr %var.locals, align 8
  %var.load2304 = load ptr, ptr %var.cur_mod, align 8
  %call.res2305 = call ptr @"overloads::walk"(ptr %var.load2289, ptr %var.load2290, ptr %a.load22303, ptr %var.load2304)
  store ptr %call.res2305, ptr %var.new_ce, align 8
  %arena.cur2306 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2307 = call ptr @dva_arena_alloc(ptr %arena.cur2306, i64 16)
  %tag.gep2308 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2307, i32 0, i32 0
  store i64 30, ptr %tag.gep2308, align 8
  %pay.gep2309 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2307, i32 0, i32 1
  %var.load2310 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2310, ptr %pay.gep2309, align 8
  br label %choice.exit

choice.case2311:                                  ; preds = %choice.next2282
  %pay.gep2316 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2317 = load ptr, ptr %pay.gep2316, align 8
  store ptr %payload.ptr2317, ptr %var._2318, align 8
  store ptr %payload.ptr2317, ptr %var.cp2319, align 8
  %arena.cur2320 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2321 = call ptr @dva_arena_alloc(ptr %arena.cur2320, i64 16)
  %tag.gep2322 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2321, i32 0, i32 0
  store i64 25, ptr %tag.gep2322, align 8
  %pay.gep2323 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2321, i32 0, i32 1
  %var.load2324 = load ptr, ptr %var.cp2319, align 8
  %var.load2325 = load ptr, ptr %var.table, align 8
  %var.load2326 = load ptr, ptr %var.locals, align 8
  %a.load2327 = load ptr, ptr %var.locals, align 8
  %a.null2328 = icmp eq ptr %a.load2327, null
  br i1 %a.null2328, label %a.create2329, label %a.after2330

choice.next2312:                                  ; preds = %choice.next2282
  %tag.gep2343 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2344 = load i64, ptr %tag.gep2343, align 8
  %tag.match2345 = icmp eq i64 %tag.id2344, 27
  br i1 %tag.match2345, label %choice.case2341, label %choice.next2342

a.create2329:                                     ; preds = %choice.case2311
  %arena.cur2331 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2332 = call ptr @dva_arena_alloc(ptr %arena.cur2331, i64 24)
  %arena.cur2333 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2334 = call ptr @dva_arena_alloc(ptr %arena.cur2333, i64 128)
  %a.len.gep2335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2332, i32 0, i32 0
  store i64 0, ptr %a.len.gep2335, align 8
  %a.data.gep2336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2332, i32 0, i32 1
  store ptr %a.buf2334, ptr %a.data.gep2336, align 8
  %a.cap.gep2337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2332, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2337, align 8
  store ptr %a.create2332, ptr %var.locals, align 8
  br label %a.after2330

a.after2330:                                      ; preds = %a.create2329, %choice.case2311
  %a.load22338 = load ptr, ptr %var.locals, align 8
  %var.load2339 = load ptr, ptr %var.cur_mod, align 8
  %call.res2340 = call ptr @"overloads::walk"(ptr %var.load2324, ptr %var.load2325, ptr %a.load22338, ptr %var.load2339)
  store ptr %call.res2340, ptr %pay.gep2323, align 8
  br label %choice.exit

choice.case2341:                                  ; preds = %choice.next2312
  %pay.gep2346 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2347 = load ptr, ptr %pay.gep2346, align 8
  store ptr %payload.ptr2347, ptr %var._2348, align 8
  store ptr %payload.ptr2347, ptr %var.bc, align 8
  %arena.cur2349 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2350 = call ptr @dva_arena_alloc(ptr %arena.cur2349, i64 16)
  %tag.gep2351 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2350, i32 0, i32 0
  store i64 27, ptr %tag.gep2351, align 8
  %pay.gep2352 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2350, i32 0, i32 1
  %var.load2353 = load ptr, ptr %var.bc, align 8
  %var.load2354 = load ptr, ptr %var.table, align 8
  %var.load2355 = load ptr, ptr %var.locals, align 8
  %a.load2356 = load ptr, ptr %var.locals, align 8
  %a.null2357 = icmp eq ptr %a.load2356, null
  br i1 %a.null2357, label %a.create2358, label %a.after2359

choice.next2342:                                  ; preds = %choice.next2312
  %var.load2370 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2358:                                     ; preds = %choice.case2341
  %arena.cur2360 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2361 = call ptr @dva_arena_alloc(ptr %arena.cur2360, i64 24)
  %arena.cur2362 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2363 = call ptr @dva_arena_alloc(ptr %arena.cur2362, i64 128)
  %a.len.gep2364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2361, i32 0, i32 0
  store i64 0, ptr %a.len.gep2364, align 8
  %a.data.gep2365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2361, i32 0, i32 1
  store ptr %a.buf2363, ptr %a.data.gep2365, align 8
  %a.cap.gep2366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2361, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2366, align 8
  store ptr %a.create2361, ptr %var.locals, align 8
  br label %a.after2359

a.after2359:                                      ; preds = %a.create2358, %choice.case2341
  %a.load22367 = load ptr, ptr %var.locals, align 8
  %var.load2368 = load ptr, ptr %var.cur_mod, align 8
  %call.res2369 = call ptr @"overloads::walk"(ptr %var.load2353, ptr %var.load2354, ptr %a.load22367, ptr %var.load2368)
  store ptr %call.res2369, ptr %pay.gep2352, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._85 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %loop.step.74 = alloca i64, align 8
  %loop.idx.74 = alloca i64, align 8
  %var.args = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.target_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.fam = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.original = alloca ptr, align 8
  %var.cur_mod = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  store ptr %0, ptr %var.c, align 8
  store ptr %1, ptr %var.ctx, align 8
  store ptr %2, ptr %var.locals, align 8
  store ptr %3, ptr %var.cur_mod, align 8
  %var.load = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.c, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load8 = load ptr, ptr %var.c, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 1
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %call.res = call { i64, ptr } @"overloads::name_of"(ptr %fld.load10)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %fld.load7, %choice.then ], [ %ret.ub.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.original, align 8
  %var.load11 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 24)
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create13, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load15 = load ptr, ptr %var.original, align 8
  %call.res16 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load15)
  %nottmp = xor i1 %call.res16, true
  br i1 %nottmp, label %choice.then17, label %choice.else18

choice.then17:                                    ; preds = %a.after
  %var.load20 = load ptr, ptr %var.ctx, align 8
  %var.load21 = load ptr, ptr %var.original, align 8
  %var.load22 = load ptr, ptr %var.cur_mod, align 8
  %call.res23 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load20, ptr %var.load21, ptr %var.load22)
  store { i64, ptr } %call.res23, ptr %ret.ub.salloc, align 8
  br label %choice.exit19

choice.else18:                                    ; preds = %a.after
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res24 = phi ptr [ %ret.ub.salloc, %choice.then17 ], [ @str.1.struct, %choice.else18 ]
  store ptr %choice.res24, ptr %var.fam, align 8
  %var.load25 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len27 = load i64, ptr %eq.lhs.len26, align 8
  %eq.lhs.len28 = and i64 %eq.lhs.len27, 281474976710655
  %eq.rhs.len29 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len29, 281474976710655
  %eq.len31 = icmp eq i64 %eq.lhs.len28, %eq.rhs.len30
  br i1 %eq.len31, label %str.eq.then32, label %str.eq.else33

str.eq.then32:                                    ; preds = %choice.exit19
  %eq.lhs.data35 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data36 = load ptr, ptr %eq.lhs.data35, align 8
  %eq.rhs.data37 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp38 = call i32 @memcmp(ptr %eq.lhs.data36, ptr %eq.rhs.data37, i64 %eq.lhs.len28)
  %eq.cmp.zero39 = icmp eq i32 %eq.memcmp38, 0
  br label %str.eq.merge34

str.eq.else33:                                    ; preds = %choice.exit19
  br label %str.eq.merge34

str.eq.merge34:                                   ; preds = %str.eq.else33, %str.eq.then32
  %str.eq.result40 = phi i1 [ %eq.cmp.zero39, %str.eq.then32 ], [ false, %str.eq.else33 ]
  %str.neq41 = xor i1 %str.eq.result40, true
  store i1 %str.neq41, ptr %var.family, align 1
  %var.load42 = load i1, ptr %var.family, align 1
  br i1 %var.load42, label %choice.then43, label %choice.else44

choice.then43:                                    ; preds = %str.eq.merge34
  %var.load46 = load ptr, ptr %var.fam, align 8
  %var.load47 = load ptr, ptr %var.c, align 8
  %fld.gep48 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load47, i32 0, i32 2
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 0
  %a.len.query50 = load i64, ptr %a.len.query, align 8
  %call.res51 = call { i64, ptr } @"overloads::symbol"(ptr %var.load46, i64 %a.len.query50)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  store { i64, ptr } %call.res51, ptr %ret.ub.alloc53, align 8
  br label %choice.exit45

choice.else44:                                    ; preds = %str.eq.merge34
  %var.load54 = load ptr, ptr %var.c, align 8
  %fld.gep55 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 0
  %fld.load56 = load ptr, ptr %fld.gep55, align 8
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.else44, %choice.then43
  %choice.res57 = phi ptr [ %ret.ub.alloc53, %choice.then43 ], [ %fld.load56, %choice.else44 ]
  store ptr %choice.res57, ptr %var.target_name, align 8
  %var.load58 = load i1, ptr %var.family, align 1
  br i1 %var.load58, label %choice.then59, label %choice.else60

choice.then59:                                    ; preds = %choice.exit45
  %var.load62 = load ptr, ptr %var.ctx, align 8
  %var.load63 = load ptr, ptr %var.fam, align 8
  %var.load64 = load ptr, ptr %var.c, align 8
  %fld.gep65 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load64, i32 0, i32 2
  %fld.load66 = load ptr, ptr %fld.gep65, align 8
  %a.len.query67 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load66, i32 0, i32 0
  %a.len.query68 = load i64, ptr %a.len.query67, align 8
  %call.res69 = call ptr @"overloads::signature"(ptr %var.load62, ptr %var.load63, i64 %a.len.query68)
  br label %choice.exit61

choice.else60:                                    ; preds = %choice.exit45
  %call.res70 = call ptr @"overloads::unknown"()
  br label %choice.exit61

choice.exit61:                                    ; preds = %choice.else60, %choice.then59
  %choice.res71 = phi ptr [ %call.res69, %choice.then59 ], [ %call.res70, %choice.else60 ]
  store ptr %choice.res71, ptr %var.expected, align 8
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 24)
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load78 = load ptr, ptr %var.c, align 8
  %fld.gep79 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load78, i32 0, i32 2
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load80, i32 0, i32 0
  %arr.cycle.len81 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load80, i32 0, i32 1
  %arr.cycle.data82 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.74, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %choice.exit61
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len81
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load83 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

loop.exit.nat.74:                                 ; preds = %loop.header.74
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %loop.exit.nat.74
  %var.load178 = load i1, ptr %var.family, align 1
  br i1 %var.load178, label %choice.then179, label %choice.else180

choice.exit84:                                    ; preds = %choice.next, %choice.exit94
  %choice.res127 = phi ptr [ %choice.res125, %choice.exit94 ], [ %call.res126, %choice.next ]
  store ptr %choice.res127, ptr %var.arg_ti, align 8
  %var.load128 = load ptr, ptr %var.a, align 8
  %var.load129 = load ptr, ptr %var.ctx, align 8
  %var.load130 = load ptr, ptr %var.locals, align 8
  %a.load131 = load ptr, ptr %var.locals, align 8
  %a.null132 = icmp eq ptr %a.load131, null
  br i1 %a.null132, label %a.create133, label %a.after134

choice.case:                                      ; preds = %loop.body.74
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._85, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load86 = load i64, ptr %var.i, align 8
  %var.load87 = load ptr, ptr %var.f, align 8
  %fld.gep88 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load87, i32 0, i32 1
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %a.len.query90 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load89, i32 0, i32 0
  %a.len.query91 = load i64, ptr %a.len.query90, align 8
  %cmptmp = icmp slt i64 %var.load86, %a.len.query91
  br i1 %cmptmp, label %choice.then92, label %choice.else93

choice.next:                                      ; preds = %loop.body.74
  %call.res126 = call ptr @"overloads::unknown"()
  br label %choice.exit84

choice.then92:                                    ; preds = %choice.case
  %var.load95 = load ptr, ptr %var.f, align 8
  %fld.gep96 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load95, i32 0, i32 1
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %var.load98 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load97, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.else93:                                    ; preds = %choice.case
  %call.res124 = call ptr @"overloads::unknown"()
  br label %choice.exit94

choice.exit94:                                    ; preds = %choice.else93, %unwrap.pos.75
  %choice.res125 = phi ptr [ %pay.ptr, %unwrap.pos.75 ], [ %call.res124, %choice.else93 ]
  br label %choice.exit84

a.rd.check:                                       ; preds = %choice.then92
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load97, i32 0, i32 0
  %a.rd.len99 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load98, 0
  %a.rd.lt = icmp slt i64 %var.load98, %a.rd.len99
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load97, i32 0, i32 1
  %a.rd.data100 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data100, i64 %var.load98
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then92
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 56)
  %err.code.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 0
  store i64 4011, ptr %err.code.gep104, align 8
  %err.msg.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep105, align 8
  %err.file.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep106, align 8
  %err.line.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 3
  store i64 0, ptr %err.line.gep107, align 8
  %err.col.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 4
  store i64 0, ptr %err.col.gep108, align 8
  %err.ctx.gep109 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc103, i32 0, i32 5
  %err.ctx0.gep110 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep109, i32 0, i32 0
  store i64 %var.load98, ptr %err.ctx0.gep110, align 8
  %err.ctx1.gep111 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep109, i32 0, i32 1
  store i64 %a.rd.len99, ptr %err.ctx1.gep111, align 8
  %err.p2i112 = ptrtoint ptr %err.alloc103 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i112, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  br label %choice.exit94

unwrap.abort.75:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep113, align 8
  %err.msg.gep114 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep114, align 8
  %err.file.gep115 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep115, align 8
  %err.line.gep116 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep116, align 8
  %err.col.gep117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep117, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len118 = load i64, ptr %err.msg.len, align 8
  %err.msg.len119 = and i64 %err.msg.len118, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len119 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data120 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len121 = load i64, ptr %err.file.len, align 8
  %err.file.len122 = and i64 %err.file.len121, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len122 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data123 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.75
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.75
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data120, i32 %err.file.len32, ptr %err.file.data123, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create133:                                      ; preds = %choice.exit84
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 24)
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 128)
  %a.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 0
  store i64 0, ptr %a.len.gep139, align 8
  %a.data.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 1
  store ptr %a.buf138, ptr %a.data.gep140, align 8
  %a.cap.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 2
  store i64 16, ptr %a.cap.gep141, align 8
  store ptr %a.create136, ptr %var.locals, align 8
  br label %a.after134

a.after134:                                       ; preds = %a.create133, %choice.exit84
  %a.load2142 = load ptr, ptr %var.locals, align 8
  %var.load143 = load ptr, ptr %var.cur_mod, align 8
  %call.res144 = call ptr @"overloads::walk"(ptr %var.load128, ptr %var.load129, ptr %a.load2142, ptr %var.load143)
  %var.load145 = load ptr, ptr %var.arg_ti, align 8
  %var.load146 = load ptr, ptr %var.ctx, align 8
  %var.load147 = load ptr, ptr %var.locals, align 8
  %a.load148 = load ptr, ptr %var.locals, align 8
  %a.null149 = icmp eq ptr %a.load148, null
  br i1 %a.null149, label %a.create150, label %a.after151

a.create150:                                      ; preds = %a.after134
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 24)
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 128)
  %a.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 0
  store i64 0, ptr %a.len.gep156, align 8
  %a.data.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 1
  store ptr %a.buf155, ptr %a.data.gep157, align 8
  %a.cap.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep158, align 8
  store ptr %a.create153, ptr %var.locals, align 8
  br label %a.after151

a.after151:                                       ; preds = %a.create150, %a.after134
  %a.load2159 = load ptr, ptr %var.locals, align 8
  %var.load160 = load ptr, ptr %var.cur_mod, align 8
  %call.res161 = call ptr @"overloads::select_value"(ptr %call.res144, ptr %var.load145, ptr %var.load146, ptr %a.load2159, ptr %var.load160)
  %a.load162 = load ptr, ptr %var.args, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

a.create164:                                      ; preds = %a.after151
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 24)
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 128)
  %a.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 0
  store i64 0, ptr %a.len.gep170, align 8
  %a.data.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 1
  store ptr %a.buf169, ptr %a.data.gep171, align 8
  %a.cap.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep172, align 8
  store ptr %a.create167, ptr %var.args, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %a.after151
  %a.load2173 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after165
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.len174 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 2
  %a.cap175 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len174, %a.cap175
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2173)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 1
  %a.cur.data176 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.cur.len177 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data176, i64 %a.cur.len177
  %slot.p2i = ptrtoint ptr %call.res161 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len177, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.74

choice.then179:                                   ; preds = %loop.exit.74
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 16)
  %tag.gep183 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep183, align 8
  %pay.gep184 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load185 = load ptr, ptr %var.target_name, align 8
  store ptr %var.load185, ptr %pay.gep184, align 8
  br label %choice.exit181

choice.else180:                                   ; preds = %loop.exit.74
  %var.load186 = load ptr, ptr %var.c, align 8
  %fld.gep187 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load186, i32 0, i32 1
  %fld.load188 = load ptr, ptr %fld.gep187, align 8
  %var.load189 = load ptr, ptr %var.ctx, align 8
  %var.load190 = load ptr, ptr %var.locals, align 8
  %a.load191 = load ptr, ptr %var.locals, align 8
  %a.null192 = icmp eq ptr %a.load191, null
  br i1 %a.null192, label %a.create193, label %a.after194

choice.exit181:                                   ; preds = %a.after194, %choice.then179
  %choice.res205 = phi ptr [ %enum.alloc, %choice.then179 ], [ %call.res204, %a.after194 ]
  store ptr %choice.res205, ptr %var.target, align 8
  %var.load206 = load ptr, ptr %var.target_name, align 8
  %var.load207 = load ptr, ptr %var.target, align 8
  %var.load208 = load ptr, ptr %var.args, align 8
  %a.load209 = load ptr, ptr %var.args, align 8
  %a.null210 = icmp eq ptr %a.load209, null
  br i1 %a.null210, label %a.create211, label %a.after212

a.create193:                                      ; preds = %choice.else180
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 24)
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 128)
  %a.len.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 0
  store i64 0, ptr %a.len.gep199, align 8
  %a.data.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 1
  store ptr %a.buf198, ptr %a.data.gep200, align 8
  %a.cap.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 2
  store i64 16, ptr %a.cap.gep201, align 8
  store ptr %a.create196, ptr %var.locals, align 8
  br label %a.after194

a.after194:                                       ; preds = %a.create193, %choice.else180
  %a.load2202 = load ptr, ptr %var.locals, align 8
  %var.load203 = load ptr, ptr %var.cur_mod, align 8
  %call.res204 = call ptr @"overloads::walk"(ptr %fld.load188, ptr %var.load189, ptr %a.load2202, ptr %var.load203)
  br label %choice.exit181

a.create211:                                      ; preds = %choice.exit181
  %arena.cur213 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 24)
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 128)
  %a.len.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 0
  store i64 0, ptr %a.len.gep217, align 8
  %a.data.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 1
  store ptr %a.buf216, ptr %a.data.gep218, align 8
  %a.cap.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create214, i32 0, i32 2
  store i64 16, ptr %a.cap.gep219, align 8
  store ptr %a.create214, ptr %var.args, align 8
  br label %a.after212

a.after212:                                       ; preds = %a.create211, %choice.exit181
  %a.load2220 = load ptr, ptr %var.args, align 8
  %var.load221 = load ptr, ptr %var.c, align 8
  %fld.gep222 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load221, i32 0, i32 3
  %fld.load223 = load i64, ptr %fld.gep222, align 8
  %var.load224 = load ptr, ptr %var.c, align 8
  %fld.gep225 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load224, i32 0, i32 4
  %fld.load226 = load i64, ptr %fld.gep225, align 8
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load206, ptr %rec.fld, align 8
  %rec.fld228 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load207, ptr %rec.fld228, align 8
  %rec.fld229 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2220, ptr %rec.fld229, align 8
  %rec.fld230 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load223, ptr %rec.fld230, align 8
  %rec.fld231 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load226, ptr %rec.fld231, align 8
  ret ptr %rec.alloc
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"overloads::resolve"(ptr %0) #3 {
entry:
  %var._152 = alloca ptr, align 8
  %var._i151 = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.ctx = alloca ptr, align 8
  %var.arity = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var._68 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._52 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._42 = alloca ptr, align 8
  %var._32 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %var.exprs = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.defs = alloca ptr, align 8
  %var.program = alloca ptr, align 8
  store ptr %0, ptr %var.program, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.defs, align 8
  %var.load = load ptr, ptr %var.program, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %a.after
  %choice.res = phi ptr [ %a.load2, %a.after ], [ %a.new11, %choice.next ]
  store ptr %choice.res, ptr %var.exprs, align 8
  %var.load17 = load ptr, ptr %var.exprs, align 8
  %a.load18 = load ptr, ptr %var.exprs, align 8
  %a.null19 = icmp eq ptr %a.load18, null
  br i1 %a.null19, label %a.create20, label %a.after21

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load2 = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next:                                      ; preds = %entry
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 0
  store i64 0, ptr %a.len.gep14, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  br label %choice.exit

a.create:                                         ; preds = %choice.case
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.create4, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case
  %a.load2 = load ptr, ptr %var.b, align 8
  br label %choice.exit

a.create20:                                       ; preds = %choice.exit
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 128)
  %a.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 0
  store i64 0, ptr %a.len.gep26, align 8
  %a.data.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 1
  store ptr %a.buf25, ptr %a.data.gep27, align 8
  %a.cap.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 2
  store i64 16, ptr %a.cap.gep28, align 8
  store ptr %a.create23, ptr %var.exprs, align 8
  br label %a.after21

a.after21:                                        ; preds = %a.create20, %choice.exit
  %a.load229 = load ptr, ptr %var.exprs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load229, i32 0, i32 0
  %arr.cycle.len30 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load229, i32 0, i32 1
  %arr.cycle.data31 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %a.after21
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len30
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data31, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._32, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load33 = load ptr, ptr %var.e, align 8
  %tag.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %tag.id38 = load i64, ptr %tag.gep37, align 8
  %tag.match39 = icmp eq i64 %tag.id38, 6
  br i1 %tag.match39, label %choice.case35, label %choice.next36

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load104 = load ptr, ptr %var.defs, align 8
  %a.load105 = load ptr, ptr %var.defs, align 8
  %a.null106 = icmp eq ptr %a.load105, null
  br i1 %a.null106, label %a.create107, label %a.after108

choice.exit34:                                    ; preds = %choice.next36, %choice.exit77
  br label %loop.latch.87

choice.case35:                                    ; preds = %loop.body.87
  %pay.gep40 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %payload.ptr41 = load ptr, ptr %pay.gep40, align 8
  store ptr %payload.ptr41, ptr %var._42, align 8
  store ptr %payload.ptr41, ptr %var.a, align 8
  %var.load43 = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load43, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep47 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id48 = load i64, ptr %tag.gep47, align 8
  %tag.match49 = icmp eq i64 %tag.id48, 14
  br i1 %tag.match49, label %choice.case45, label %choice.next46

choice.next36:                                    ; preds = %loop.body.87
  br label %choice.exit34

choice.exit44:                                    ; preds = %choice.exit60, %choice.case45
  %choice.res75 = phi i64 [ %a.len.query56, %choice.case45 ], [ %choice.res74, %choice.exit60 ]
  store i64 %choice.res75, ptr %var.arity, align 8
  %var.load76 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load76, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit77

choice.case45:                                    ; preds = %choice.case35
  %pay.gep50 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr51 = load ptr, ptr %pay.gep50, align 8
  store ptr %payload.ptr51, ptr %var._52, align 8
  store ptr %payload.ptr51, ptr %var.fn, align 8
  %var.load53 = load ptr, ptr %var.fn, align 8
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 0
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 0
  %a.len.query56 = load i64, ptr %a.len.query, align 8
  br label %choice.exit44

choice.next46:                                    ; preds = %choice.case35
  %var.load57 = load ptr, ptr %var.a, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load57, i32 0, i32 8
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %tag.gep63 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %tag.id64 = load i64, ptr %tag.gep63, align 8
  %tag.match65 = icmp eq i64 %tag.id64, 8
  br i1 %tag.match65, label %choice.case61, label %choice.next62

choice.exit60:                                    ; preds = %choice.next62, %choice.case61
  %choice.res74 = phi i64 [ %a.len.query73, %choice.case61 ], [ -1, %choice.next62 ]
  br label %choice.exit44

choice.case61:                                    ; preds = %choice.next46
  %pay.gep66 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %payload.ptr67 = load ptr, ptr %pay.gep66, align 8
  store ptr %payload.ptr67, ptr %var._68, align 8
  store ptr %payload.ptr67, ptr %var.f, align 8
  %var.load69 = load ptr, ptr %var.f, align 8
  %fld.gep70 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load69, i32 0, i32 0
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %a.len.query72 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load71, i32 0, i32 0
  %a.len.query73 = load i64, ptr %a.len.query72, align 8
  br label %choice.exit60

choice.next62:                                    ; preds = %choice.next46
  br label %choice.exit60

choice.then:                                      ; preds = %choice.exit44
  %var.load78 = load ptr, ptr %var.a, align 8
  %fld.gep79 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load78, i32 0, i32 0
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %var.load81 = load i64, ptr %var.arity, align 8
  %var.load82 = load ptr, ptr %var.a, align 8
  %fld.gep83 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load82, i32 0, i32 8
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load80, ptr %rec.fld, align 8
  %rec.fld86 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load81, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load84, ptr %rec.fld87, align 8
  %a.load88 = load ptr, ptr %var.defs, align 8
  %a.null89 = icmp eq ptr %a.load88, null
  br i1 %a.null89, label %a.create90, label %a.after91

choice.exit77:                                    ; preds = %a.store, %choice.exit44
  br label %choice.exit34

a.create90:                                       ; preds = %choice.then
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  store ptr %a.create93, ptr %var.defs, align 8
  br label %a.after91

a.after91:                                        ; preds = %a.create90, %choice.then
  %a.load299 = load ptr, ptr %var.defs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after91
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.len100 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 2
  %a.cap101 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len100, %a.cap101
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load299)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 1
  %a.cur.data102 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.cur.len103 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data102, i64 %a.cur.len103
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len103, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit77

a.create107:                                      ; preds = %loop.exit.87
  %arena.cur109 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 24)
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 128)
  %a.len.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 0
  store i64 0, ptr %a.len.gep113, align 8
  %a.data.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 1
  store ptr %a.buf112, ptr %a.data.gep114, align 8
  %a.cap.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 2
  store i64 16, ptr %a.cap.gep115, align 8
  store ptr %a.create110, ptr %var.defs, align 8
  br label %a.after108

a.after108:                                       ; preds = %a.create107, %loop.exit.87
  %a.load2116 = load ptr, ptr %var.defs, align 8
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 24)
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 128)
  %a.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 0
  store i64 0, ptr %a.len.gep121, align 8
  %a.data.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 1
  store ptr %a.buf120, ptr %a.data.gep122, align 8
  %a.cap.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep123, align 8
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld126 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc125, i32 0, i32 0
  store ptr %a.load2116, ptr %rec.fld126, align 8
  %rec.fld127 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc125, i32 0, i32 1
  store ptr %a.new118, ptr %rec.fld127, align 8
  store ptr %rec.alloc125, ptr %var.ctx, align 8
  %var.load128 = load ptr, ptr %var.defs, align 8
  %a.load129 = load ptr, ptr %var.defs, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

a.create131:                                      ; preds = %a.after108
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.defs, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.after108
  %a.load2140 = load ptr, ptr %var.defs, align 8
  %arr.cycle.len141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %arr.cycle.len142 = load i64, ptr %arr.cycle.len141, align 8
  %arr.cycle.data143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 1
  %arr.cycle.data144 = load ptr, ptr %arr.cycle.data143, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %a.after132
  %counter.load145 = load i64, ptr %loop.idx.88, align 8
  %loop.cond146 = icmp slt i64 %counter.load145, %arr.cycle.len142
  br i1 %loop.cond146, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i147 = sub i64 %counter.load145, 0
  store i64 1, ptr %loop.step.88, align 8
  %arr.elem.gep148 = getelementptr i64, ptr %arr.cycle.data144, i64 %counter.load145
  %arr.elem.raw149 = load i64, ptr %arr.elem.gep148, align 8
  %slot.i2p150 = inttoptr i64 %arr.elem.raw149 to ptr
  store i64 %loop.rel.i147, ptr %var._i151, align 8
  store ptr %slot.i2p150, ptr %var._152, align 8
  store ptr %slot.i2p150, ptr %var.d, align 8
  %var.load153 = load ptr, ptr %var.ctx, align 8
  %var.load154 = load ptr, ptr %var.d, align 8
  %fld.gep155 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load154, i32 0, i32 0
  %fld.load156 = load ptr, ptr %fld.gep155, align 8
  %call.res = call i1 @"overloads::has_variants"(ptr %var.load153, ptr %fld.load156)
  br i1 %call.res, label %and.89.then, label %and.89.else

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit165
  %step.val187 = load i64, ptr %loop.step.88, align 8
  %loop.next188 = add i64 %counter.load145, %step.val187
  store i64 %loop.next188, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  %var.load189 = load ptr, ptr %var.ctx, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr }, ptr %var.load189, i32 0, i32 1
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %a.len.query192 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %a.len.query193 = load i64, ptr %a.len.query192, align 8
  %cmptmp194 = icmp sgt i64 %a.len.query193, 0
  br i1 %cmptmp194, label %choice.then195, label %choice.else

and.89.then:                                      ; preds = %loop.body.88
  %var.load157 = load ptr, ptr %var.ctx, align 8
  %fld.gep158 = getelementptr inbounds { ptr, ptr }, ptr %var.load157, i32 0, i32 1
  %fld.load159 = load ptr, ptr %fld.gep158, align 8
  %var.load160 = load ptr, ptr %var.d, align 8
  %fld.gep161 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load160, i32 0, i32 0
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %call.res163 = call i1 @"overloads::contains"(ptr %fld.load159, ptr %fld.load162)
  %nottmp = xor i1 %call.res163, true
  br label %and.89.exit

and.89.else:                                      ; preds = %loop.body.88
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %and.89.then
  %and.89.phi = phi i1 [ %nottmp, %and.89.then ], [ %call.res, %and.89.else ]
  br i1 %and.89.phi, label %choice.then164, label %choice.exit165

choice.then164:                                   ; preds = %and.89.exit
  %var.load166 = load ptr, ptr %var.ctx, align 8
  %var.load167 = load ptr, ptr %var.d, align 8
  %fld.gep168 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load167, i32 0, i32 0
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %fld.gep170 = getelementptr inbounds { ptr, ptr }, ptr %var.load166, i32 0, i32 1
  %a.fld.load = load ptr, ptr %fld.gep170, align 8
  br label %a.check171

choice.exit165:                                   ; preds = %a.store173, %and.89.exit
  br label %loop.latch.88

a.check171:                                       ; preds = %choice.then164
  %a.len174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len175 = load i64, ptr %a.len174, align 8
  %a.cap176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap177 = load i64, ptr %a.cap176, align 8
  %a.needs.grow178 = icmp eq i64 %a.len175, %a.cap177
  br i1 %a.needs.grow178, label %a.grow172, label %a.store173

a.grow172:                                        ; preds = %a.check171
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store173

a.store173:                                       ; preds = %a.grow172, %a.check171
  %a.cur.data179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data180 = load ptr, ptr %a.cur.data179, align 8
  %a.cur.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len182 = load i64, ptr %a.cur.len181, align 8
  %a.elem.gep183 = getelementptr i64, ptr %a.cur.data180, i64 %a.cur.len182
  %slot.p2i184 = ptrtoint ptr %fld.load169 to i64
  store i64 %slot.p2i184, ptr %a.elem.gep183, align 8
  %a.next.len185 = add i64 %a.cur.len182, 1
  %b.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len185, ptr %b.len.gep186, align 8
  br label %choice.exit165

choice.then195:                                   ; preds = %loop.exit.88
  %var.load197 = load ptr, ptr %var.program, align 8
  %var.load198 = load ptr, ptr %var.ctx, align 8
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 24)
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 128)
  %a.len.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new200, i32 0, i32 0
  store i64 0, ptr %a.len.gep203, align 8
  %a.data.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new200, i32 0, i32 1
  store ptr %a.buf202, ptr %a.data.gep204, align 8
  %a.cap.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new200, i32 0, i32 2
  store i64 16, ptr %a.cap.gep205, align 8
  %call.res206 = call ptr @"overloads::walk"(ptr %var.load197, ptr %var.load198, ptr %a.new200, ptr @str.1.struct)
  br label %choice.exit196

choice.else:                                      ; preds = %loop.exit.88
  %var.load207 = load ptr, ptr %var.program, align 8
  br label %choice.exit196

choice.exit196:                                   ; preds = %choice.else, %choice.then195
  %choice.res208 = phi ptr [ %call.res206, %choice.then195 ], [ %var.load207, %choice.else ]
  ret ptr %choice.res208
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
