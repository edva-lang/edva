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
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %concat.str84 = alloca { i64, ptr }, align 8
  %var.pub = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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

choice.exit:                                      ; preds = %choice.exit91, %choice.exit11
  %choice.res95 = phi ptr [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.exit91 ]
  %ret.pack96 = load { i64, ptr }, ptr %choice.res95, align 8
  ret { i64, ptr } %ret.pack96

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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub, align 8
  %var.load39 = load ptr, ptr %var.ctx, align 8
  %var.load40 = load ptr, ptr %var.pub, align 8
  %call.res41 = call i1 @"overloads::is_family"(ptr %var.load39, ptr %var.load40)
  br i1 %call.res41, label %choice.then42, label %choice.exit43

str_overflow_abort34:                             ; preds = %cat.sum.len28
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %concat.tot.len33

choice.then42:                                    ; preds = %concat.tot.len33
  %var.load44 = load ptr, ptr %var.pub, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load44, align 8
  ret { i64, ptr } %ret.pack

choice.exit43:                                    ; preds = %ret.dead, %concat.tot.len33
  %var.load45 = load ptr, ptr %var.cur_mod, align 8
  %cat.seg46 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %cat.seg47 = load i64, ptr %cat.seg46, align 8
  %cat.seg48 = and i64 %cat.seg47, 281474976710655
  %cat.seg49 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %cat.seg50 = load ptr, ptr %cat.seg49, align 8
  %cat.lit.data51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %var.load52 = load ptr, ptr %var.name, align 8
  %cat.seg53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %cat.seg54 = load i64, ptr %cat.seg53, align 8
  %cat.seg55 = and i64 %cat.seg54, 281474976710655
  %cat.seg56 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %cat.seg57 = load ptr, ptr %cat.seg56, align 8
  %cat.sum.len58 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg48, i64 3)
  %sum59 = extractvalue { i64, i1 } %cat.sum.len58, 0
  %ovf60 = extractvalue { i64, i1 } %cat.sum.len58, 1
  br i1 %ovf60, label %str_overflow_abort62, label %cat.sum.len61

ret.dead:                                         ; No predecessors!
  br label %choice.exit43

cat.sum.len61:                                    ; preds = %abort.dead63, %choice.exit43
  %cat.sum.len64 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum59, i64 %cat.seg55)
  %sum65 = extractvalue { i64, i1 } %cat.sum.len64, 0
  %ovf66 = extractvalue { i64, i1 } %cat.sum.len64, 1
  br i1 %ovf66, label %str_overflow_abort68, label %cat.sum.len67

str_overflow_abort62:                             ; preds = %choice.exit43
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %cat.sum.len61

cat.sum.len67:                                    ; preds = %abort.dead69, %cat.sum.len61
  %concat.tot.len70 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum65, i64 1)
  %sum71 = extractvalue { i64, i1 } %concat.tot.len70, 0
  %ovf72 = extractvalue { i64, i1 } %concat.tot.len70, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.tot.len73

str_overflow_abort68:                             ; preds = %cat.sum.len61
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead69:                                     ; No predecessors!
  br label %cat.sum.len67

concat.tot.len73:                                 ; preds = %abort.dead75, %cat.sum.len67
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum71)
  %cat.dst78 = getelementptr i8, ptr %concat.buf77, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst78, ptr align 1 %cat.seg50, i64 %cat.seg48, i1 false)
  %cat.off79 = add i64 0, %cat.seg48
  %cat.dst80 = getelementptr i8, ptr %concat.buf77, i64 %cat.off79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 %cat.lit.data51, i64 3, i1 false)
  %cat.off81 = add i64 %cat.off79, 3
  %cat.dst82 = getelementptr i8, ptr %concat.buf77, i64 %cat.off81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %cat.seg57, i64 %cat.seg55, i1 false)
  %concat.nul83 = getelementptr i8, ptr %concat.buf77, i64 %sum65
  store i8 0, ptr %concat.nul83, align 1
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 0
  store i64 %sum65, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 1
  store ptr %concat.buf77, ptr %str.build.data.gep86, align 8
  store ptr %concat.str84, ptr %var.priv, align 8
  %var.load87 = load ptr, ptr %var.ctx, align 8
  %var.load88 = load ptr, ptr %var.priv, align 8
  %call.res89 = call i1 @"overloads::is_family"(ptr %var.load87, ptr %var.load88)
  br i1 %call.res89, label %choice.then90, label %choice.exit91

str_overflow_abort74:                             ; preds = %cat.sum.len67
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead75:                                     ; No predecessors!
  br label %concat.tot.len73

choice.then90:                                    ; preds = %concat.tot.len73
  %var.load92 = load ptr, ptr %var.priv, align 8
  %ret.pack93 = load { i64, ptr }, ptr %var.load92, align 8
  ret { i64, ptr } %ret.pack93

choice.exit91:                                    ; preds = %ret.dead94, %concat.tot.len73
  br label %choice.exit

ret.dead94:                                       ; No predecessors!
  br label %choice.exit91
}

define i1 @"overloads::has_variants"(ptr %0, ptr %1) #3 {
entry:
  %var._i = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.d, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var._i = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.d, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var._i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %var._92 = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._92, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var._2343 = alloca ptr, align 8
  %var.cp2314 = alloca ptr, align 8
  %var._2313 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2283 = alloca ptr, align 8
  %var._i2185 = alloca i64, align 8
  %var.p2184 = alloca ptr, align 8
  %var._2183 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2152 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2127 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2084 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2037 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2012 = alloca ptr, align 8
  %var.new_val1984 = alloca ptr, align 8
  %var.r1954 = alloca ptr, align 8
  %var._1953 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1923 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1894 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1865 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1826 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1775 = alloca ptr, align 8
  %var._1774 = alloca ptr, align 8
  %var.new_val1754 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1734 = alloca ptr, align 8
  %var.new_rhs1704 = alloca ptr, align 8
  %var.new_lhs1674 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1644 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1588 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1524 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1452 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._i1359 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %var._1358 = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1337 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1255 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1195 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1170 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1062 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1021 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1005 = alloca ptr, align 8
  %var.eff_mod = alloca ptr, align 8
  %var.is_top = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._948 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._i741 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %var._740 = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._i697 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %var._696 = alloca ptr, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._656 = alloca ptr, align 8
  %ret.ub.salloc581 = alloca { i64, ptr }, align 8
  %var.ca = alloca ptr, align 8
  %var._560 = alloca ptr, align 8
  %var._i505 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %var._504 = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._445 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._i344 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %var._343 = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %var._282 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2337, %a.after2354, %a.after2325, %a.after2290, %a.after2267, %choice.case2120, %a.after2093, %a.after2046, %choice.case2005, %choice.exit1960, %a.after1930, %a.after1905, %a.after1876, %a.after1835, %a.after1806, %a.after1743, %choice.exit1680, %a.after1616, %a.after1552, %a.after1480, %a.after1429, %choice.exit1261, %a.after1223, %choice.case1163, %a.after1116, %a.after927, %a.after640, %a.after403, %a.after220, %choice.exit28, %a.after, %choice.case
  %choice.res2366 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res196, %choice.exit28 ], [ %enum.alloc206, %a.after220 ], [ %enum.alloc415, %a.after403 ], [ %enum.alloc633, %a.after640 ], [ %enum.alloc916, %a.after927 ], [ %enum.alloc1128, %a.after1116 ], [ %enum.alloc1177, %choice.case1163 ], [ %enum.alloc1207, %a.after1223 ], [ %choice.res1329, %choice.exit1261 ], [ %enum.alloc1422, %a.after1429 ], [ %enum.alloc1492, %a.after1480 ], [ %enum.alloc1564, %a.after1552 ], [ %enum.alloc1628, %a.after1616 ], [ %enum.alloc1706, %choice.exit1680 ], [ %enum.alloc1756, %a.after1743 ], [ %enum.alloc1796, %a.after1806 ], [ %enum.alloc1847, %a.after1835 ], [ %enum.alloc1867, %a.after1876 ], [ %enum.alloc1896, %a.after1905 ], [ %enum.alloc1942, %a.after1930 ], [ %enum.alloc1986, %choice.exit1960 ], [ %enum.alloc2019, %choice.case2005 ], [ %enum.alloc2058, %a.after2046 ], [ %enum.alloc2105, %a.after2093 ], [ %enum.alloc2134, %choice.case2120 ], [ %enum.alloc2260, %a.after2267 ], [ %enum.alloc2302, %a.after2290 ], [ %enum.alloc2316, %a.after2325 ], [ %enum.alloc2345, %a.after2354 ], [ %var.load2365, %choice.next2337 ]
  ret ptr %choice.res2366

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
  %tag.gep440 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id441 = load i64, ptr %tag.gep440, align 8
  %tag.match442 = icmp eq i64 %tag.id441, 8
  br i1 %tag.match442, label %choice.case438, label %choice.next439

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
  store ptr %slot.i2p, ptr %var._282, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var.load330 = load ptr, ptr %var.fe, align 8
  %fld.gep331 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load330, i32 0, i32 1
  %fld.load332 = load ptr, ptr %fld.gep331, align 8
  %arr.cycle.len333 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load332, i32 0, i32 0
  %arr.cycle.len334 = load i64, ptr %arr.cycle.len333, align 8
  %arr.cycle.data335 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load332, i32 0, i32 1
  %arr.cycle.data336 = load ptr, ptr %arr.cycle.data335, align 8
  store i64 0, ptr %loop.idx.77, align 8
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
  %counter.load337 = load i64, ptr %loop.idx.77, align 8
  %loop.cond338 = icmp slt i64 %counter.load337, %arr.cycle.len334
  br i1 %loop.cond338, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i339 = sub i64 %counter.load337, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep340 = getelementptr i64, ptr %arr.cycle.data336, i64 %counter.load337
  %arr.elem.raw341 = load i64, ptr %arr.elem.gep340, align 8
  %slot.i2p342 = inttoptr i64 %arr.elem.raw341 to ptr
  store ptr %slot.i2p342, ptr %var._343, align 8
  store ptr %slot.i2p342, ptr %var.cp, align 8
  store i64 %loop.rel.i339, ptr %var._i344, align 8
  %var.load345 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len346 = getelementptr inbounds { i64, ptr }, ptr %var.load345, i32 0, i32 0
  %eq.lhs.len347 = load i64, ptr %eq.lhs.len346, align 8
  %eq.lhs.len348 = and i64 %eq.lhs.len347, 281474976710655
  %eq.rhs.len349 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len350 = and i64 %eq.rhs.len349, 281474976710655
  %eq.len351 = icmp eq i64 %eq.lhs.len348, %eq.rhs.len350
  br i1 %eq.len351, label %str.eq.then352, label %str.eq.else353

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit363
  %step.val393 = load i64, ptr %loop.step.77, align 8
  %loop.next394 = add i64 %counter.load337, %step.val393
  store i64 %loop.next394, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  %var.load395 = load ptr, ptr %var.fe, align 8
  %fld.gep396 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load395, i32 0, i32 2
  %fld.load397 = load ptr, ptr %fld.gep396, align 8
  %var.load398 = load ptr, ptr %var.table, align 8
  %var.load399 = load ptr, ptr %var.fn_locals, align 8
  %a.load400 = load ptr, ptr %var.fn_locals, align 8
  %a.null401 = icmp eq ptr %a.load400, null
  br i1 %a.null401, label %a.create402, label %a.after403

str.eq.then352:                                   ; preds = %loop.body.77
  %eq.lhs.data355 = getelementptr inbounds { i64, ptr }, ptr %var.load345, i32 0, i32 1
  %eq.lhs.data356 = load ptr, ptr %eq.lhs.data355, align 8
  %eq.rhs.data357 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp358 = call i32 @memcmp(ptr %eq.lhs.data356, ptr %eq.rhs.data357, i64 %eq.lhs.len348)
  %eq.cmp.zero359 = icmp eq i32 %eq.memcmp358, 0
  br label %str.eq.merge354

str.eq.else353:                                   ; preds = %loop.body.77
  br label %str.eq.merge354

str.eq.merge354:                                  ; preds = %str.eq.else353, %str.eq.then352
  %str.eq.result360 = phi i1 [ %eq.cmp.zero359, %str.eq.then352 ], [ false, %str.eq.else353 ]
  %str.neq361 = xor i1 %str.eq.result360, true
  br i1 %str.neq361, label %choice.then362, label %choice.exit363

choice.then362:                                   ; preds = %str.eq.merge354
  %var.load364 = load ptr, ptr %var.cp, align 8
  %a.load365 = load ptr, ptr %var.fn_locals, align 8
  %a.null366 = icmp eq ptr %a.load365, null
  br i1 %a.null366, label %a.create367, label %a.after368

choice.exit363:                                   ; preds = %a.store379, %str.eq.merge354
  br label %loop.latch.77

a.create367:                                      ; preds = %choice.then362
  %arena.cur369 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 24)
  %arena.cur371 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 128)
  %a.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 0
  store i64 0, ptr %a.len.gep373, align 8
  %a.data.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 1
  store ptr %a.buf372, ptr %a.data.gep374, align 8
  %a.cap.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create370, i32 0, i32 2
  store i64 16, ptr %a.cap.gep375, align 8
  store ptr %a.create370, ptr %var.fn_locals, align 8
  br label %a.after368

a.after368:                                       ; preds = %a.create367, %choice.then362
  %a.load2376 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check377

a.check377:                                       ; preds = %a.after368
  %a.len380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2376, i32 0, i32 0
  %a.len381 = load i64, ptr %a.len380, align 8
  %a.cap382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2376, i32 0, i32 2
  %a.cap383 = load i64, ptr %a.cap382, align 8
  %a.needs.grow384 = icmp eq i64 %a.len381, %a.cap383
  br i1 %a.needs.grow384, label %a.grow378, label %a.store379

a.grow378:                                        ; preds = %a.check377
  call void @dva_array_grow(ptr %a.load2376)
  br label %a.store379

a.store379:                                       ; preds = %a.grow378, %a.check377
  %a.cur.data385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2376, i32 0, i32 1
  %a.cur.data386 = load ptr, ptr %a.cur.data385, align 8
  %a.cur.len387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2376, i32 0, i32 0
  %a.cur.len388 = load i64, ptr %a.cur.len387, align 8
  %a.elem.gep389 = getelementptr i64, ptr %a.cur.data386, i64 %a.cur.len388
  %slot.p2i390 = ptrtoint ptr %var.load364 to i64
  store i64 %slot.p2i390, ptr %a.elem.gep389, align 8
  %a.next.len391 = add i64 %a.cur.len388, 1
  %b.len.gep392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2376, i32 0, i32 0
  store i64 %a.next.len391, ptr %b.len.gep392, align 8
  br label %choice.exit363

a.create402:                                      ; preds = %loop.exit.77
  %arena.cur404 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 24)
  %arena.cur406 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf407 = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 128)
  %a.len.gep408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create405, i32 0, i32 0
  store i64 0, ptr %a.len.gep408, align 8
  %a.data.gep409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create405, i32 0, i32 1
  store ptr %a.buf407, ptr %a.data.gep409, align 8
  %a.cap.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create405, i32 0, i32 2
  store i64 16, ptr %a.cap.gep410, align 8
  store ptr %a.create405, ptr %var.fn_locals, align 8
  br label %a.after403

a.after403:                                       ; preds = %a.create402, %loop.exit.77
  %a.load2411 = load ptr, ptr %var.fn_locals, align 8
  %var.load412 = load ptr, ptr %var.cur_mod, align 8
  %call.res413 = call ptr @"overloads::walk"(ptr %fld.load397, ptr %var.load398, ptr %a.load2411, ptr %var.load412)
  store ptr %call.res413, ptr %var.new_body, align 8
  %arena.cur414 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 16)
  %tag.gep416 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc415, i32 0, i32 0
  store i64 14, ptr %tag.gep416, align 8
  %pay.gep417 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc415, i32 0, i32 1
  %var.load418 = load ptr, ptr %var.fe, align 8
  %fld.gep419 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load418, i32 0, i32 0
  %fld.load420 = load ptr, ptr %fld.gep419, align 8
  %var.load421 = load ptr, ptr %var.fe, align 8
  %fld.gep422 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load421, i32 0, i32 1
  %fld.load423 = load ptr, ptr %fld.gep422, align 8
  %var.load424 = load ptr, ptr %var.new_body, align 8
  %var.load425 = load ptr, ptr %var.fe, align 8
  %fld.gep426 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load425, i32 0, i32 3
  %fld.load427 = load i64, ptr %fld.gep426, align 8
  %var.load428 = load ptr, ptr %var.fe, align 8
  %fld.gep429 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load428, i32 0, i32 4
  %fld.load430 = load i64, ptr %fld.gep429, align 8
  %arena.cur431 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc432 = call ptr @dva_arena_alloc(ptr %arena.cur431, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld433 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc432, i32 0, i32 0
  store ptr %fld.load420, ptr %rec.fld433, align 8
  %rec.fld434 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc432, i32 0, i32 1
  store ptr %fld.load423, ptr %rec.fld434, align 8
  %rec.fld435 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc432, i32 0, i32 2
  store ptr %var.load424, ptr %rec.fld435, align 8
  %rec.fld436 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc432, i32 0, i32 3
  store i64 %fld.load427, ptr %rec.fld436, align 8
  %rec.fld437 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc432, i32 0, i32 4
  store i64 %fld.load430, ptr %rec.fld437, align 8
  store ptr %rec.alloc432, ptr %pay.gep417, align 8
  br label %choice.exit

choice.case438:                                   ; preds = %choice.next236
  %pay.gep443 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr444 = load ptr, ptr %pay.gep443, align 8
  store ptr %payload.ptr444, ptr %var._445, align 8
  store ptr %payload.ptr444, ptr %var.be, align 8
  %var.load446 = load ptr, ptr %var.locals, align 8
  %a.load447 = load ptr, ptr %var.locals, align 8
  %a.null448 = icmp eq ptr %a.load447, null
  br i1 %a.null448, label %a.create449, label %a.after450

choice.next439:                                   ; preds = %choice.next236
  %tag.gep651 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id652 = load i64, ptr %tag.gep651, align 8
  %tag.match653 = icmp eq i64 %tag.id652, 7
  br i1 %tag.match653, label %choice.case649, label %choice.next650

a.create449:                                      ; preds = %choice.case438
  %arena.cur451 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create452 = call ptr @dva_arena_alloc(ptr %arena.cur451, i64 24)
  %arena.cur453 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 128)
  %a.len.gep455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create452, i32 0, i32 0
  store i64 0, ptr %a.len.gep455, align 8
  %a.data.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create452, i32 0, i32 1
  store ptr %a.buf454, ptr %a.data.gep456, align 8
  %a.cap.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create452, i32 0, i32 2
  store i64 16, ptr %a.cap.gep457, align 8
  store ptr %a.create452, ptr %var.locals, align 8
  br label %a.after450

a.after450:                                       ; preds = %a.create449, %choice.case438
  %a.load2458 = load ptr, ptr %var.locals, align 8
  %a.copy.len459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2458, i32 0, i32 0
  %a.copy.len460 = load i64, ptr %a.copy.len459, align 8
  %a.copy.cap461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2458, i32 0, i32 2
  %a.copy.cap462 = load i64, ptr %a.copy.cap461, align 8
  %a.copy.data463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2458, i32 0, i32 1
  %a.copy.data464 = load ptr, ptr %a.copy.data463, align 8
  %arena.cur465 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 24)
  %a.copy.buflen467 = add i64 %a.copy.cap462, 1
  %a.copy.bufsize468 = mul i64 %a.copy.buflen467, 8
  %arena.cur469 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 %a.copy.bufsize468)
  %a.copy.copylen471 = mul i64 %a.copy.len460, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf470, ptr align 1 %a.copy.data464, i64 %a.copy.copylen471, i1 false)
  %a.copy.len.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy466, i32 0, i32 0
  store i64 %a.copy.len460, ptr %a.copy.len.gep472, align 8
  %a.copy.data.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy466, i32 0, i32 1
  store ptr %a.copy.buf470, ptr %a.copy.data.gep473, align 8
  %a.copy.cap.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy466, i32 0, i32 2
  store i64 %a.copy.cap462, ptr %a.copy.cap.gep474, align 8
  store ptr %a.copy466, ptr %var.blk_locals, align 8
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 24)
  %arena.cur476 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf477 = call ptr @dva_arena_alloc(ptr %arena.cur476, i64 128)
  %a.len.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep478, align 8
  %a.data.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf477, ptr %a.data.gep479, align 8
  %a.cap.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep480, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load481 = load ptr, ptr %var.be, align 8
  %a.load482 = load ptr, ptr %var.be, align 8
  %a.null483 = icmp eq ptr %a.load482, null
  br i1 %a.null483, label %a.create484, label %a.after485

a.create484:                                      ; preds = %a.after450
  %arena.cur486 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 24)
  %arena.cur488 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 128)
  %a.len.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 0
  store i64 0, ptr %a.len.gep490, align 8
  %a.data.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 1
  store ptr %a.buf489, ptr %a.data.gep491, align 8
  %a.cap.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 2
  store i64 16, ptr %a.cap.gep492, align 8
  store ptr %a.create487, ptr %var.be, align 8
  br label %a.after485

a.after485:                                       ; preds = %a.create484, %a.after450
  %a.load2493 = load ptr, ptr %var.be, align 8
  %arr.cycle.len494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2493, i32 0, i32 0
  %arr.cycle.len495 = load i64, ptr %arr.cycle.len494, align 8
  %arr.cycle.data496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2493, i32 0, i32 1
  %arr.cycle.data497 = load ptr, ptr %arr.cycle.data496, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after485
  %counter.load498 = load i64, ptr %loop.idx.78, align 8
  %loop.cond499 = icmp slt i64 %counter.load498, %arr.cycle.len495
  br i1 %loop.cond499, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i500 = sub i64 %counter.load498, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep501 = getelementptr i64, ptr %arr.cycle.data497, i64 %counter.load498
  %arr.elem.raw502 = load i64, ptr %arr.elem.gep501, align 8
  %slot.i2p503 = inttoptr i64 %arr.elem.raw502 to ptr
  store ptr %slot.i2p503, ptr %var._504, align 8
  store ptr %slot.i2p503, ptr %var.child, align 8
  store i64 %loop.rel.i500, ptr %var._i505, align 8
  %var.load506 = load ptr, ptr %var.child, align 8
  %var.load507 = load ptr, ptr %var.table, align 8
  %var.load508 = load ptr, ptr %var.blk_locals, align 8
  %a.load509 = load ptr, ptr %var.blk_locals, align 8
  %a.null510 = icmp eq ptr %a.load509, null
  br i1 %a.null510, label %a.create511, label %a.after512

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit552
  %step.val630 = load i64, ptr %loop.step.78, align 8
  %loop.next631 = add i64 %counter.load498, %step.val630
  store i64 %loop.next631, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  %arena.cur632 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc633 = call ptr @dva_arena_alloc(ptr %arena.cur632, i64 16)
  %tag.gep634 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc633, i32 0, i32 0
  store i64 8, ptr %tag.gep634, align 8
  %pay.gep635 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc633, i32 0, i32 1
  %var.load636 = load ptr, ptr %var.new_exprs, align 8
  %a.load637 = load ptr, ptr %var.new_exprs, align 8
  %a.null638 = icmp eq ptr %a.load637, null
  br i1 %a.null638, label %a.create639, label %a.after640

a.create511:                                      ; preds = %loop.body.78
  %arena.cur513 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 24)
  %arena.cur515 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf516 = call ptr @dva_arena_alloc(ptr %arena.cur515, i64 128)
  %a.len.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 0
  store i64 0, ptr %a.len.gep517, align 8
  %a.data.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 1
  store ptr %a.buf516, ptr %a.data.gep518, align 8
  %a.cap.gep519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 2
  store i64 16, ptr %a.cap.gep519, align 8
  store ptr %a.create514, ptr %var.blk_locals, align 8
  br label %a.after512

a.after512:                                       ; preds = %a.create511, %loop.body.78
  %a.load2520 = load ptr, ptr %var.blk_locals, align 8
  %var.load521 = load ptr, ptr %var.cur_mod, align 8
  %call.res522 = call ptr @"overloads::walk"(ptr %var.load506, ptr %var.load507, ptr %a.load2520, ptr %var.load521)
  %a.load523 = load ptr, ptr %var.new_exprs, align 8
  %a.null524 = icmp eq ptr %a.load523, null
  br i1 %a.null524, label %a.create525, label %a.after526

a.create525:                                      ; preds = %a.after512
  %arena.cur527 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create528 = call ptr @dva_arena_alloc(ptr %arena.cur527, i64 24)
  %arena.cur529 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 128)
  %a.len.gep531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 0
  store i64 0, ptr %a.len.gep531, align 8
  %a.data.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 1
  store ptr %a.buf530, ptr %a.data.gep532, align 8
  %a.cap.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 2
  store i64 16, ptr %a.cap.gep533, align 8
  store ptr %a.create528, ptr %var.new_exprs, align 8
  br label %a.after526

a.after526:                                       ; preds = %a.create525, %a.after512
  %a.load2534 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check535

a.check535:                                       ; preds = %a.after526
  %a.len538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 0
  %a.len539 = load i64, ptr %a.len538, align 8
  %a.cap540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 2
  %a.cap541 = load i64, ptr %a.cap540, align 8
  %a.needs.grow542 = icmp eq i64 %a.len539, %a.cap541
  br i1 %a.needs.grow542, label %a.grow536, label %a.store537

a.grow536:                                        ; preds = %a.check535
  call void @dva_array_grow(ptr %a.load2534)
  br label %a.store537

a.store537:                                       ; preds = %a.grow536, %a.check535
  %a.cur.data543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 1
  %a.cur.data544 = load ptr, ptr %a.cur.data543, align 8
  %a.cur.len545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 0
  %a.cur.len546 = load i64, ptr %a.cur.len545, align 8
  %a.elem.gep547 = getelementptr i64, ptr %a.cur.data544, i64 %a.cur.len546
  %slot.p2i548 = ptrtoint ptr %call.res522 to i64
  store i64 %slot.p2i548, ptr %a.elem.gep547, align 8
  %a.next.len549 = add i64 %a.cur.len546, 1
  %b.len.gep550 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 0
  store i64 %a.next.len549, ptr %b.len.gep550, align 8
  %var.load551 = load ptr, ptr %var.child, align 8
  %tag.gep555 = getelementptr inbounds { i64, ptr }, ptr %var.load551, i32 0, i32 0
  %tag.id556 = load i64, ptr %tag.gep555, align 8
  %tag.match557 = icmp eq i64 %tag.id556, 6
  br i1 %tag.match557, label %choice.case553, label %choice.next554

choice.exit552:                                   ; preds = %choice.next554, %choice.exit598
  br label %loop.latch.78

choice.case553:                                   ; preds = %a.store537
  %pay.gep558 = getelementptr inbounds { i64, ptr }, ptr %var.load551, i32 0, i32 1
  %payload.ptr559 = load ptr, ptr %pay.gep558, align 8
  store ptr %payload.ptr559, ptr %var._560, align 8
  store ptr %payload.ptr559, ptr %var.ca, align 8
  %var.load561 = load ptr, ptr %var.locals, align 8
  %a.load562 = load ptr, ptr %var.locals, align 8
  %a.null563 = icmp eq ptr %a.load562, null
  br i1 %a.null563, label %a.create564, label %a.after565

choice.next554:                                   ; preds = %a.store537
  br label %choice.exit552

a.create564:                                      ; preds = %choice.case553
  %arena.cur566 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create567 = call ptr @dva_arena_alloc(ptr %arena.cur566, i64 24)
  %arena.cur568 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 128)
  %a.len.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 0
  store i64 0, ptr %a.len.gep570, align 8
  %a.data.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 1
  store ptr %a.buf569, ptr %a.data.gep571, align 8
  %a.cap.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 2
  store i64 16, ptr %a.cap.gep572, align 8
  store ptr %a.create567, ptr %var.locals, align 8
  br label %a.after565

a.after565:                                       ; preds = %a.create564, %choice.case553
  %a.load2573 = load ptr, ptr %var.locals, align 8
  %call.res574 = call i1 @"overloads::contains"(ptr %a.load2573, ptr @str.7.struct)
  br i1 %call.res574, label %or.79.then, label %or.79.else

or.79.then:                                       ; preds = %a.after565
  br label %or.79.exit

or.79.else:                                       ; preds = %a.after565
  %var.load575 = load ptr, ptr %var.table, align 8
  %var.load576 = load ptr, ptr %var.ca, align 8
  %fld.gep577 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load576, i32 0, i32 0
  %fld.load578 = load ptr, ptr %fld.gep577, align 8
  %var.load579 = load ptr, ptr %var.cur_mod, align 8
  %call.res580 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load575, ptr %fld.load578, ptr %var.load579)
  store { i64, ptr } %call.res580, ptr %ret.ub.salloc581, align 8
  %eq.lhs.len582 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc581, i32 0, i32 0
  %eq.lhs.len583 = load i64, ptr %eq.lhs.len582, align 8
  %eq.lhs.len584 = and i64 %eq.lhs.len583, 281474976710655
  %eq.rhs.len585 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len586 = and i64 %eq.rhs.len585, 281474976710655
  %eq.len587 = icmp eq i64 %eq.lhs.len584, %eq.rhs.len586
  br i1 %eq.len587, label %str.eq.then588, label %str.eq.else589

or.79.exit:                                       ; preds = %str.eq.merge590, %or.79.then
  %or.79.phi = phi i1 [ %call.res574, %or.79.then ], [ %str.eq.result596, %str.eq.merge590 ]
  br i1 %or.79.phi, label %choice.then597, label %choice.exit598

str.eq.then588:                                   ; preds = %or.79.else
  %eq.lhs.data591 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc581, i32 0, i32 1
  %eq.lhs.data592 = load ptr, ptr %eq.lhs.data591, align 8
  %eq.rhs.data593 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp594 = call i32 @memcmp(ptr %eq.lhs.data592, ptr %eq.rhs.data593, i64 %eq.lhs.len584)
  %eq.cmp.zero595 = icmp eq i32 %eq.memcmp594, 0
  br label %str.eq.merge590

str.eq.else589:                                   ; preds = %or.79.else
  br label %str.eq.merge590

str.eq.merge590:                                  ; preds = %str.eq.else589, %str.eq.then588
  %str.eq.result596 = phi i1 [ %eq.cmp.zero595, %str.eq.then588 ], [ false, %str.eq.else589 ]
  br label %or.79.exit

choice.then597:                                   ; preds = %or.79.exit
  %var.load599 = load ptr, ptr %var.ca, align 8
  %fld.gep600 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load599, i32 0, i32 0
  %fld.load601 = load ptr, ptr %fld.gep600, align 8
  %a.load602 = load ptr, ptr %var.blk_locals, align 8
  %a.null603 = icmp eq ptr %a.load602, null
  br i1 %a.null603, label %a.create604, label %a.after605

choice.exit598:                                   ; preds = %a.store616, %or.79.exit
  br label %choice.exit552

a.create604:                                      ; preds = %choice.then597
  %arena.cur606 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 24)
  %arena.cur608 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 128)
  %a.len.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 0
  store i64 0, ptr %a.len.gep610, align 8
  %a.data.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 1
  store ptr %a.buf609, ptr %a.data.gep611, align 8
  %a.cap.gep612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 2
  store i64 16, ptr %a.cap.gep612, align 8
  store ptr %a.create607, ptr %var.blk_locals, align 8
  br label %a.after605

a.after605:                                       ; preds = %a.create604, %choice.then597
  %a.load2613 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check614

a.check614:                                       ; preds = %a.after605
  %a.len617 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2613, i32 0, i32 0
  %a.len618 = load i64, ptr %a.len617, align 8
  %a.cap619 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2613, i32 0, i32 2
  %a.cap620 = load i64, ptr %a.cap619, align 8
  %a.needs.grow621 = icmp eq i64 %a.len618, %a.cap620
  br i1 %a.needs.grow621, label %a.grow615, label %a.store616

a.grow615:                                        ; preds = %a.check614
  call void @dva_array_grow(ptr %a.load2613)
  br label %a.store616

a.store616:                                       ; preds = %a.grow615, %a.check614
  %a.cur.data622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2613, i32 0, i32 1
  %a.cur.data623 = load ptr, ptr %a.cur.data622, align 8
  %a.cur.len624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2613, i32 0, i32 0
  %a.cur.len625 = load i64, ptr %a.cur.len624, align 8
  %a.elem.gep626 = getelementptr i64, ptr %a.cur.data623, i64 %a.cur.len625
  %slot.p2i627 = ptrtoint ptr %fld.load601 to i64
  store i64 %slot.p2i627, ptr %a.elem.gep626, align 8
  %a.next.len628 = add i64 %a.cur.len625, 1
  %b.len.gep629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2613, i32 0, i32 0
  store i64 %a.next.len628, ptr %b.len.gep629, align 8
  br label %choice.exit598

a.create639:                                      ; preds = %loop.exit.78
  %arena.cur641 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create642 = call ptr @dva_arena_alloc(ptr %arena.cur641, i64 24)
  %arena.cur643 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf644 = call ptr @dva_arena_alloc(ptr %arena.cur643, i64 128)
  %a.len.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create642, i32 0, i32 0
  store i64 0, ptr %a.len.gep645, align 8
  %a.data.gep646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create642, i32 0, i32 1
  store ptr %a.buf644, ptr %a.data.gep646, align 8
  %a.cap.gep647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create642, i32 0, i32 2
  store i64 16, ptr %a.cap.gep647, align 8
  store ptr %a.create642, ptr %var.new_exprs, align 8
  br label %a.after640

a.after640:                                       ; preds = %a.create639, %loop.exit.78
  %a.load2648 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2648, ptr %pay.gep635, align 8
  br label %choice.exit

choice.case649:                                   ; preds = %choice.next439
  %pay.gep654 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr655 = load ptr, ptr %pay.gep654, align 8
  store ptr %payload.ptr655, ptr %var._656, align 8
  store ptr %payload.ptr655, ptr %var.ch, align 8
  %var.load657 = load ptr, ptr %var.ch, align 8
  %fld.gep658 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load657, i32 0, i32 0
  %fld.load659 = load ptr, ptr %fld.gep658, align 8
  %var.load660 = load ptr, ptr %var.table, align 8
  %var.load661 = load ptr, ptr %var.locals, align 8
  %a.load662 = load ptr, ptr %var.locals, align 8
  %a.null663 = icmp eq ptr %a.load662, null
  br i1 %a.null663, label %a.create664, label %a.after665

choice.next650:                                   ; preds = %choice.next439
  %tag.gep943 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id944 = load i64, ptr %tag.gep943, align 8
  %tag.match945 = icmp eq i64 %tag.id944, 6
  br i1 %tag.match945, label %choice.case941, label %choice.next942

a.create664:                                      ; preds = %choice.case649
  %arena.cur666 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create667 = call ptr @dva_arena_alloc(ptr %arena.cur666, i64 24)
  %arena.cur668 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 128)
  %a.len.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 0
  store i64 0, ptr %a.len.gep670, align 8
  %a.data.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 1
  store ptr %a.buf669, ptr %a.data.gep671, align 8
  %a.cap.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 2
  store i64 16, ptr %a.cap.gep672, align 8
  store ptr %a.create667, ptr %var.locals, align 8
  br label %a.after665

a.after665:                                       ; preds = %a.create664, %choice.case649
  %a.load2673 = load ptr, ptr %var.locals, align 8
  %var.load674 = load ptr, ptr %var.cur_mod, align 8
  %call.res675 = call ptr @"overloads::walk"(ptr %fld.load659, ptr %var.load660, ptr %a.load2673, ptr %var.load674)
  store ptr %call.res675, ptr %var.new_cond, align 8
  %arena.cur676 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new677 = call ptr @dva_arena_alloc(ptr %arena.cur676, i64 24)
  %arena.cur678 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 128)
  %a.len.gep680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new677, i32 0, i32 0
  store i64 0, ptr %a.len.gep680, align 8
  %a.data.gep681 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new677, i32 0, i32 1
  store ptr %a.buf679, ptr %a.data.gep681, align 8
  %a.cap.gep682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new677, i32 0, i32 2
  store i64 16, ptr %a.cap.gep682, align 8
  store ptr %a.new677, ptr %var.new_branches, align 8
  %var.load683 = load ptr, ptr %var.ch, align 8
  %fld.gep684 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load683, i32 0, i32 2
  %fld.load685 = load ptr, ptr %fld.gep684, align 8
  %arr.cycle.len686 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load685, i32 0, i32 0
  %arr.cycle.len687 = load i64, ptr %arr.cycle.len686, align 8
  %arr.cycle.data688 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load685, i32 0, i32 1
  %arr.cycle.data689 = load ptr, ptr %arr.cycle.data688, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after665
  %counter.load690 = load i64, ptr %loop.idx.80, align 8
  %loop.cond691 = icmp slt i64 %counter.load690, %arr.cycle.len687
  br i1 %loop.cond691, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i692 = sub i64 %counter.load690, 0
  store i64 1, ptr %loop.step.80, align 8
  %arr.elem.gep693 = getelementptr i64, ptr %arr.cycle.data689, i64 %counter.load690
  %arr.elem.raw694 = load i64, ptr %arr.elem.gep693, align 8
  %slot.i2p695 = inttoptr i64 %arr.elem.raw694 to ptr
  store ptr %slot.i2p695, ptr %var._696, align 8
  store ptr %slot.i2p695, ptr %var.br, align 8
  store i64 %loop.rel.i692, ptr %var._i697, align 8
  %var.load698 = load ptr, ptr %var.locals, align 8
  %a.load699 = load ptr, ptr %var.locals, align 8
  %a.null700 = icmp eq ptr %a.load699, null
  br i1 %a.null700, label %a.create701, label %a.after702

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %a.store899
  %step.val913 = load i64, ptr %loop.step.80, align 8
  %loop.next914 = add i64 %counter.load690, %step.val913
  store i64 %loop.next914, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  %arena.cur915 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc916 = call ptr @dva_arena_alloc(ptr %arena.cur915, i64 16)
  %tag.gep917 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc916, i32 0, i32 0
  store i64 7, ptr %tag.gep917, align 8
  %pay.gep918 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc916, i32 0, i32 1
  %var.load919 = load ptr, ptr %var.new_cond, align 8
  %var.load920 = load ptr, ptr %var.ch, align 8
  %fld.gep921 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load920, i32 0, i32 1
  %fld.load922 = load i1, ptr %fld.gep921, align 1
  %var.load923 = load ptr, ptr %var.new_branches, align 8
  %a.load924 = load ptr, ptr %var.new_branches, align 8
  %a.null925 = icmp eq ptr %a.load924, null
  br i1 %a.null925, label %a.create926, label %a.after927

a.create701:                                      ; preds = %loop.body.80
  %arena.cur703 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create704 = call ptr @dva_arena_alloc(ptr %arena.cur703, i64 24)
  %arena.cur705 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf706 = call ptr @dva_arena_alloc(ptr %arena.cur705, i64 128)
  %a.len.gep707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create704, i32 0, i32 0
  store i64 0, ptr %a.len.gep707, align 8
  %a.data.gep708 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create704, i32 0, i32 1
  store ptr %a.buf706, ptr %a.data.gep708, align 8
  %a.cap.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create704, i32 0, i32 2
  store i64 16, ptr %a.cap.gep709, align 8
  store ptr %a.create704, ptr %var.locals, align 8
  br label %a.after702

a.after702:                                       ; preds = %a.create701, %loop.body.80
  %a.load2710 = load ptr, ptr %var.locals, align 8
  %a.copy.len711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2710, i32 0, i32 0
  %a.copy.len712 = load i64, ptr %a.copy.len711, align 8
  %a.copy.cap713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2710, i32 0, i32 2
  %a.copy.cap714 = load i64, ptr %a.copy.cap713, align 8
  %a.copy.data715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2710, i32 0, i32 1
  %a.copy.data716 = load ptr, ptr %a.copy.data715, align 8
  %arena.cur717 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy718 = call ptr @dva_arena_alloc(ptr %arena.cur717, i64 24)
  %a.copy.buflen719 = add i64 %a.copy.cap714, 1
  %a.copy.bufsize720 = mul i64 %a.copy.buflen719, 8
  %arena.cur721 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf722 = call ptr @dva_arena_alloc(ptr %arena.cur721, i64 %a.copy.bufsize720)
  %a.copy.copylen723 = mul i64 %a.copy.len712, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf722, ptr align 1 %a.copy.data716, i64 %a.copy.copylen723, i1 false)
  %a.copy.len.gep724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy718, i32 0, i32 0
  store i64 %a.copy.len712, ptr %a.copy.len.gep724, align 8
  %a.copy.data.gep725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy718, i32 0, i32 1
  store ptr %a.copy.buf722, ptr %a.copy.data.gep725, align 8
  %a.copy.cap.gep726 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy718, i32 0, i32 2
  store i64 %a.copy.cap714, ptr %a.copy.cap.gep726, align 8
  store ptr %a.copy718, ptr %var.br_locals, align 8
  %var.load727 = load ptr, ptr %var.br, align 8
  %fld.gep728 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load727, i32 0, i32 4
  %fld.load729 = load ptr, ptr %fld.gep728, align 8
  %arr.cycle.len730 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load729, i32 0, i32 0
  %arr.cycle.len731 = load i64, ptr %arr.cycle.len730, align 8
  %arr.cycle.data732 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load729, i32 0, i32 1
  %arr.cycle.data733 = load ptr, ptr %arr.cycle.data732, align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after702
  %counter.load734 = load i64, ptr %loop.idx.81, align 8
  %loop.cond735 = icmp slt i64 %counter.load734, %arr.cycle.len731
  br i1 %loop.cond735, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i736 = sub i64 %counter.load734, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep737 = getelementptr i64, ptr %arr.cycle.data733, i64 %counter.load734
  %arr.elem.raw738 = load i64, ptr %arr.elem.gep737, align 8
  %slot.i2p739 = inttoptr i64 %arr.elem.raw738 to ptr
  store ptr %slot.i2p739, ptr %var._740, align 8
  store ptr %slot.i2p739, ptr %var.bv, align 8
  store i64 %loop.rel.i736, ptr %var._i741, align 8
  %var.load742 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len743 = getelementptr inbounds { i64, ptr }, ptr %var.load742, i32 0, i32 0
  %eq.lhs.len744 = load i64, ptr %eq.lhs.len743, align 8
  %eq.lhs.len745 = and i64 %eq.lhs.len744, 281474976710655
  %eq.rhs.len746 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len747 = and i64 %eq.rhs.len746, 281474976710655
  %eq.len748 = icmp eq i64 %eq.lhs.len745, %eq.rhs.len747
  br i1 %eq.len748, label %str.eq.then749, label %str.eq.else750

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit760
  %step.val790 = load i64, ptr %loop.step.81, align 8
  %loop.next791 = add i64 %counter.load734, %step.val790
  store i64 %loop.next791, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load792 = load ptr, ptr %var.br, align 8
  %fld.gep793 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load792, i32 0, i32 1
  %fld.load794 = load ptr, ptr %fld.gep793, align 8
  %var.load795 = load ptr, ptr %var.table, align 8
  %var.load796 = load ptr, ptr %var.br_locals, align 8
  %a.load797 = load ptr, ptr %var.br_locals, align 8
  %a.null798 = icmp eq ptr %a.load797, null
  br i1 %a.null798, label %a.create799, label %a.after800

str.eq.then749:                                   ; preds = %loop.body.81
  %eq.lhs.data752 = getelementptr inbounds { i64, ptr }, ptr %var.load742, i32 0, i32 1
  %eq.lhs.data753 = load ptr, ptr %eq.lhs.data752, align 8
  %eq.rhs.data754 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp755 = call i32 @memcmp(ptr %eq.lhs.data753, ptr %eq.rhs.data754, i64 %eq.lhs.len745)
  %eq.cmp.zero756 = icmp eq i32 %eq.memcmp755, 0
  br label %str.eq.merge751

str.eq.else750:                                   ; preds = %loop.body.81
  br label %str.eq.merge751

str.eq.merge751:                                  ; preds = %str.eq.else750, %str.eq.then749
  %str.eq.result757 = phi i1 [ %eq.cmp.zero756, %str.eq.then749 ], [ false, %str.eq.else750 ]
  %str.neq758 = xor i1 %str.eq.result757, true
  br i1 %str.neq758, label %choice.then759, label %choice.exit760

choice.then759:                                   ; preds = %str.eq.merge751
  %var.load761 = load ptr, ptr %var.bv, align 8
  %a.load762 = load ptr, ptr %var.br_locals, align 8
  %a.null763 = icmp eq ptr %a.load762, null
  br i1 %a.null763, label %a.create764, label %a.after765

choice.exit760:                                   ; preds = %a.store776, %str.eq.merge751
  br label %loop.latch.81

a.create764:                                      ; preds = %choice.then759
  %arena.cur766 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create767 = call ptr @dva_arena_alloc(ptr %arena.cur766, i64 24)
  %arena.cur768 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf769 = call ptr @dva_arena_alloc(ptr %arena.cur768, i64 128)
  %a.len.gep770 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 0
  store i64 0, ptr %a.len.gep770, align 8
  %a.data.gep771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 1
  store ptr %a.buf769, ptr %a.data.gep771, align 8
  %a.cap.gep772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 2
  store i64 16, ptr %a.cap.gep772, align 8
  store ptr %a.create767, ptr %var.br_locals, align 8
  br label %a.after765

a.after765:                                       ; preds = %a.create764, %choice.then759
  %a.load2773 = load ptr, ptr %var.br_locals, align 8
  br label %a.check774

a.check774:                                       ; preds = %a.after765
  %a.len777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 0
  %a.len778 = load i64, ptr %a.len777, align 8
  %a.cap779 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 2
  %a.cap780 = load i64, ptr %a.cap779, align 8
  %a.needs.grow781 = icmp eq i64 %a.len778, %a.cap780
  br i1 %a.needs.grow781, label %a.grow775, label %a.store776

a.grow775:                                        ; preds = %a.check774
  call void @dva_array_grow(ptr %a.load2773)
  br label %a.store776

a.store776:                                       ; preds = %a.grow775, %a.check774
  %a.cur.data782 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 1
  %a.cur.data783 = load ptr, ptr %a.cur.data782, align 8
  %a.cur.len784 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 0
  %a.cur.len785 = load i64, ptr %a.cur.len784, align 8
  %a.elem.gep786 = getelementptr i64, ptr %a.cur.data783, i64 %a.cur.len785
  %slot.p2i787 = ptrtoint ptr %var.load761 to i64
  store i64 %slot.p2i787, ptr %a.elem.gep786, align 8
  %a.next.len788 = add i64 %a.cur.len785, 1
  %b.len.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 0
  store i64 %a.next.len788, ptr %b.len.gep789, align 8
  br label %choice.exit760

a.create799:                                      ; preds = %loop.exit.81
  %arena.cur801 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create802 = call ptr @dva_arena_alloc(ptr %arena.cur801, i64 24)
  %arena.cur803 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf804 = call ptr @dva_arena_alloc(ptr %arena.cur803, i64 128)
  %a.len.gep805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 0
  store i64 0, ptr %a.len.gep805, align 8
  %a.data.gep806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 1
  store ptr %a.buf804, ptr %a.data.gep806, align 8
  %a.cap.gep807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 2
  store i64 16, ptr %a.cap.gep807, align 8
  store ptr %a.create802, ptr %var.br_locals, align 8
  br label %a.after800

a.after800:                                       ; preds = %a.create799, %loop.exit.81
  %a.load2808 = load ptr, ptr %var.br_locals, align 8
  %var.load809 = load ptr, ptr %var.cur_mod, align 8
  %call.res810 = call ptr @"overloads::walk_many"(ptr %fld.load794, ptr %var.load795, ptr %a.load2808, ptr %var.load809)
  store ptr %call.res810, ptr %var.new_cases, align 8
  %var.load811 = load ptr, ptr %var.br, align 8
  %fld.gep812 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load811, i32 0, i32 2
  %fld.load813 = load ptr, ptr %fld.gep812, align 8
  %var.load814 = load ptr, ptr %var.table, align 8
  %var.load815 = load ptr, ptr %var.br_locals, align 8
  %a.load816 = load ptr, ptr %var.br_locals, align 8
  %a.null817 = icmp eq ptr %a.load816, null
  br i1 %a.null817, label %a.create818, label %a.after819

a.create818:                                      ; preds = %a.after800
  %arena.cur820 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create821 = call ptr @dva_arena_alloc(ptr %arena.cur820, i64 24)
  %arena.cur822 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf823 = call ptr @dva_arena_alloc(ptr %arena.cur822, i64 128)
  %a.len.gep824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 0
  store i64 0, ptr %a.len.gep824, align 8
  %a.data.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 1
  store ptr %a.buf823, ptr %a.data.gep825, align 8
  %a.cap.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 2
  store i64 16, ptr %a.cap.gep826, align 8
  store ptr %a.create821, ptr %var.br_locals, align 8
  br label %a.after819

a.after819:                                       ; preds = %a.create818, %a.after800
  %a.load2827 = load ptr, ptr %var.br_locals, align 8
  %var.load828 = load ptr, ptr %var.cur_mod, align 8
  %call.res829 = call ptr @"overloads::walk"(ptr %fld.load813, ptr %var.load814, ptr %a.load2827, ptr %var.load828)
  store ptr %call.res829, ptr %var.new_pred, align 8
  %var.load830 = load ptr, ptr %var.br, align 8
  %fld.gep831 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load830, i32 0, i32 6
  %fld.load832 = load ptr, ptr %fld.gep831, align 8
  %var.load833 = load ptr, ptr %var.table, align 8
  %var.load834 = load ptr, ptr %var.br_locals, align 8
  %a.load835 = load ptr, ptr %var.br_locals, align 8
  %a.null836 = icmp eq ptr %a.load835, null
  br i1 %a.null836, label %a.create837, label %a.after838

a.create837:                                      ; preds = %a.after819
  %arena.cur839 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 24)
  %arena.cur841 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 128)
  %a.len.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 0
  store i64 0, ptr %a.len.gep843, align 8
  %a.data.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 1
  store ptr %a.buf842, ptr %a.data.gep844, align 8
  %a.cap.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 2
  store i64 16, ptr %a.cap.gep845, align 8
  store ptr %a.create840, ptr %var.br_locals, align 8
  br label %a.after838

a.after838:                                       ; preds = %a.create837, %a.after819
  %a.load2846 = load ptr, ptr %var.br_locals, align 8
  %var.load847 = load ptr, ptr %var.cur_mod, align 8
  %call.res848 = call ptr @"overloads::walk"(ptr %fld.load832, ptr %var.load833, ptr %a.load2846, ptr %var.load847)
  store ptr %call.res848, ptr %var.new_blk, align 8
  %var.load849 = load ptr, ptr %var.br, align 8
  %fld.gep850 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load849, i32 0, i32 0
  %fld.load851 = load ptr, ptr %fld.gep850, align 8
  %var.load852 = load ptr, ptr %var.new_cases, align 8
  %a.load853 = load ptr, ptr %var.new_cases, align 8
  %a.null854 = icmp eq ptr %a.load853, null
  br i1 %a.null854, label %a.create855, label %a.after856

a.create855:                                      ; preds = %a.after838
  %arena.cur857 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 24)
  %arena.cur859 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf860 = call ptr @dva_arena_alloc(ptr %arena.cur859, i64 128)
  %a.len.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 0
  store i64 0, ptr %a.len.gep861, align 8
  %a.data.gep862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 1
  store ptr %a.buf860, ptr %a.data.gep862, align 8
  %a.cap.gep863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 2
  store i64 16, ptr %a.cap.gep863, align 8
  store ptr %a.create858, ptr %var.new_cases, align 8
  br label %a.after856

a.after856:                                       ; preds = %a.create855, %a.after838
  %a.load2864 = load ptr, ptr %var.new_cases, align 8
  %var.load865 = load ptr, ptr %var.new_pred, align 8
  %var.load866 = load ptr, ptr %var.br, align 8
  %fld.gep867 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load866, i32 0, i32 3
  %fld.load868 = load ptr, ptr %fld.gep867, align 8
  %var.load869 = load ptr, ptr %var.br, align 8
  %fld.gep870 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load869, i32 0, i32 4
  %fld.load871 = load ptr, ptr %fld.gep870, align 8
  %var.load872 = load ptr, ptr %var.br, align 8
  %fld.gep873 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load872, i32 0, i32 5
  %fld.load874 = load i1, ptr %fld.gep873, align 1
  %var.load875 = load ptr, ptr %var.new_blk, align 8
  %arena.cur876 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc877 = call ptr @dva_arena_alloc(ptr %arena.cur876, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld878 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 0
  store ptr %fld.load851, ptr %rec.fld878, align 8
  %rec.fld879 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 1
  store ptr %a.load2864, ptr %rec.fld879, align 8
  %rec.fld880 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 2
  store ptr %var.load865, ptr %rec.fld880, align 8
  %rec.fld881 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 3
  store ptr %fld.load868, ptr %rec.fld881, align 8
  %rec.fld882 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 4
  store ptr %fld.load871, ptr %rec.fld882, align 8
  %rec.fld883 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 5
  store i1 %fld.load874, ptr %rec.fld883, align 1
  %rec.fld884 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc877, i32 0, i32 6
  store ptr %var.load875, ptr %rec.fld884, align 8
  %a.load885 = load ptr, ptr %var.new_branches, align 8
  %a.null886 = icmp eq ptr %a.load885, null
  br i1 %a.null886, label %a.create887, label %a.after888

a.create887:                                      ; preds = %a.after856
  %arena.cur889 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create890 = call ptr @dva_arena_alloc(ptr %arena.cur889, i64 24)
  %arena.cur891 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf892 = call ptr @dva_arena_alloc(ptr %arena.cur891, i64 128)
  %a.len.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create890, i32 0, i32 0
  store i64 0, ptr %a.len.gep893, align 8
  %a.data.gep894 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create890, i32 0, i32 1
  store ptr %a.buf892, ptr %a.data.gep894, align 8
  %a.cap.gep895 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create890, i32 0, i32 2
  store i64 16, ptr %a.cap.gep895, align 8
  store ptr %a.create890, ptr %var.new_branches, align 8
  br label %a.after888

a.after888:                                       ; preds = %a.create887, %a.after856
  %a.load2896 = load ptr, ptr %var.new_branches, align 8
  br label %a.check897

a.check897:                                       ; preds = %a.after888
  %a.len900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2896, i32 0, i32 0
  %a.len901 = load i64, ptr %a.len900, align 8
  %a.cap902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2896, i32 0, i32 2
  %a.cap903 = load i64, ptr %a.cap902, align 8
  %a.needs.grow904 = icmp eq i64 %a.len901, %a.cap903
  br i1 %a.needs.grow904, label %a.grow898, label %a.store899

a.grow898:                                        ; preds = %a.check897
  call void @dva_array_grow(ptr %a.load2896)
  br label %a.store899

a.store899:                                       ; preds = %a.grow898, %a.check897
  %a.cur.data905 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2896, i32 0, i32 1
  %a.cur.data906 = load ptr, ptr %a.cur.data905, align 8
  %a.cur.len907 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2896, i32 0, i32 0
  %a.cur.len908 = load i64, ptr %a.cur.len907, align 8
  %a.elem.gep909 = getelementptr i64, ptr %a.cur.data906, i64 %a.cur.len908
  %slot.p2i910 = ptrtoint ptr %rec.alloc877 to i64
  store i64 %slot.p2i910, ptr %a.elem.gep909, align 8
  %a.next.len911 = add i64 %a.cur.len908, 1
  %b.len.gep912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2896, i32 0, i32 0
  store i64 %a.next.len911, ptr %b.len.gep912, align 8
  br label %loop.latch.80

a.create926:                                      ; preds = %loop.exit.80
  %arena.cur928 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create929 = call ptr @dva_arena_alloc(ptr %arena.cur928, i64 24)
  %arena.cur930 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf931 = call ptr @dva_arena_alloc(ptr %arena.cur930, i64 128)
  %a.len.gep932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create929, i32 0, i32 0
  store i64 0, ptr %a.len.gep932, align 8
  %a.data.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create929, i32 0, i32 1
  store ptr %a.buf931, ptr %a.data.gep933, align 8
  %a.cap.gep934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create929, i32 0, i32 2
  store i64 16, ptr %a.cap.gep934, align 8
  store ptr %a.create929, ptr %var.new_branches, align 8
  br label %a.after927

a.after927:                                       ; preds = %a.create926, %loop.exit.80
  %a.load2935 = load ptr, ptr %var.new_branches, align 8
  %arena.cur936 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc937 = call ptr @dva_arena_alloc(ptr %arena.cur936, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld938 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc937, i32 0, i32 0
  store ptr %var.load919, ptr %rec.fld938, align 8
  %rec.fld939 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc937, i32 0, i32 1
  store i1 %fld.load922, ptr %rec.fld939, align 1
  %rec.fld940 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc937, i32 0, i32 2
  store ptr %a.load2935, ptr %rec.fld940, align 8
  store ptr %rec.alloc937, ptr %pay.gep918, align 8
  br label %choice.exit

choice.case941:                                   ; preds = %choice.next650
  %pay.gep946 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr947 = load ptr, ptr %pay.gep946, align 8
  store ptr %payload.ptr947, ptr %var._948, align 8
  store ptr %payload.ptr947, ptr %var.a, align 8
  %var.load949 = load ptr, ptr %var.locals, align 8
  %a.load950 = load ptr, ptr %var.locals, align 8
  %a.null951 = icmp eq ptr %a.load950, null
  br i1 %a.null951, label %a.create952, label %a.after953

choice.next942:                                   ; preds = %choice.next650
  %tag.gep1165 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1166 = load i64, ptr %tag.gep1165, align 8
  %tag.match1167 = icmp eq i64 %tag.id1166, 23
  br i1 %tag.match1167, label %choice.case1163, label %choice.next1164

a.create952:                                      ; preds = %choice.case941
  %arena.cur954 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 24)
  %arena.cur956 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf957 = call ptr @dva_arena_alloc(ptr %arena.cur956, i64 128)
  %a.len.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create955, i32 0, i32 0
  store i64 0, ptr %a.len.gep958, align 8
  %a.data.gep959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create955, i32 0, i32 1
  store ptr %a.buf957, ptr %a.data.gep959, align 8
  %a.cap.gep960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create955, i32 0, i32 2
  store i64 16, ptr %a.cap.gep960, align 8
  store ptr %a.create955, ptr %var.locals, align 8
  br label %a.after953

a.after953:                                       ; preds = %a.create952, %choice.case941
  %a.load2961 = load ptr, ptr %var.locals, align 8
  %call.res962 = call i1 @"overloads::contains"(ptr %a.load2961, ptr @str.7.struct)
  %nottmp963 = xor i1 %call.res962, true
  store i1 %nottmp963, ptr %var.is_top, align 1
  %var.load964 = load i1, ptr %var.is_top, align 1
  br i1 %var.load964, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %a.after953
  %var.load965 = load ptr, ptr %var.a, align 8
  %fld.gep966 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load965, i32 0, i32 0
  %fld.load967 = load ptr, ptr %fld.gep966, align 8
  %eq.lhs.len968 = getelementptr inbounds { i64, ptr }, ptr %fld.load967, i32 0, i32 0
  %eq.lhs.len969 = load i64, ptr %eq.lhs.len968, align 8
  %eq.lhs.len970 = and i64 %eq.lhs.len969, 281474976710655
  %eq.rhs.len971 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len972 = and i64 %eq.rhs.len971, 281474976710655
  %eq.len973 = icmp eq i64 %eq.lhs.len970, %eq.rhs.len972
  br i1 %eq.len973, label %str.eq.then974, label %str.eq.else975

and.82.else:                                      ; preds = %a.after953
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge976
  %and.82.phi = phi i1 [ %str.neq983, %str.eq.merge976 ], [ %var.load964, %and.82.else ]
  br i1 %and.82.phi, label %choice.then984, label %choice.else985

str.eq.then974:                                   ; preds = %and.82.then
  %eq.lhs.data977 = getelementptr inbounds { i64, ptr }, ptr %fld.load967, i32 0, i32 1
  %eq.lhs.data978 = load ptr, ptr %eq.lhs.data977, align 8
  %eq.rhs.data979 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp980 = call i32 @memcmp(ptr %eq.lhs.data978, ptr %eq.rhs.data979, i64 %eq.lhs.len970)
  %eq.cmp.zero981 = icmp eq i32 %eq.memcmp980, 0
  br label %str.eq.merge976

str.eq.else975:                                   ; preds = %and.82.then
  br label %str.eq.merge976

str.eq.merge976:                                  ; preds = %str.eq.else975, %str.eq.then974
  %str.eq.result982 = phi i1 [ %eq.cmp.zero981, %str.eq.then974 ], [ false, %str.eq.else975 ]
  %str.neq983 = xor i1 %str.eq.result982, true
  br label %and.82.exit

choice.then984:                                   ; preds = %and.82.exit
  %var.load987 = load ptr, ptr %var.a, align 8
  %fld.gep988 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load987, i32 0, i32 0
  %fld.load989 = load ptr, ptr %fld.gep988, align 8
  %call.res990 = call { i64, ptr } @"overloads::decl_module"(ptr %fld.load989, i64 0)
  %arena.cur991 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 16)
  store { i64, ptr } %call.res990, ptr %ret.ub.alloc, align 8
  br label %choice.exit986

choice.else985:                                   ; preds = %and.82.exit
  %var.load992 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit986

choice.exit986:                                   ; preds = %choice.else985, %choice.then984
  %choice.res993 = phi ptr [ %ret.ub.alloc, %choice.then984 ], [ %var.load992, %choice.else985 ]
  store ptr %choice.res993, ptr %var.eff_mod, align 8
  %var.load994 = load ptr, ptr %var.a, align 8
  %fld.gep995 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load994, i32 0, i32 5
  %fld.load996 = load ptr, ptr %fld.gep995, align 8
  %tag.gep1000 = getelementptr inbounds { i64, ptr }, ptr %fld.load996, i32 0, i32 0
  %tag.id1001 = load i64, ptr %tag.gep1000, align 8
  %tag.match1002 = icmp eq i64 %tag.id1001, 14
  br i1 %tag.match1002, label %choice.case998, label %choice.next999

choice.exit997:                                   ; preds = %choice.exit1013, %choice.case998
  %choice.res1028 = phi i64 [ %a.len.query1009, %choice.case998 ], [ %choice.res1027, %choice.exit1013 ]
  store i64 %choice.res1028, ptr %var.arity, align 8
  %var.load1029 = load ptr, ptr %var.table, align 8
  %var.load1030 = load ptr, ptr %var.a, align 8
  %fld.gep1031 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1030, i32 0, i32 0
  %fld.load1032 = load ptr, ptr %fld.gep1031, align 8
  %call.res1033 = call i1 @"overloads::is_family"(ptr %var.load1029, ptr %fld.load1032)
  br i1 %call.res1033, label %and.83.then, label %and.83.else

choice.case998:                                   ; preds = %choice.exit986
  %pay.gep1003 = getelementptr inbounds { i64, ptr }, ptr %fld.load996, i32 0, i32 1
  %payload.ptr1004 = load ptr, ptr %pay.gep1003, align 8
  store ptr %payload.ptr1004, ptr %var._1005, align 8
  store ptr %payload.ptr1004, ptr %var.fn, align 8
  %var.load1006 = load ptr, ptr %var.fn, align 8
  %fld.gep1007 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1006, i32 0, i32 0
  %fld.load1008 = load ptr, ptr %fld.gep1007, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1008, i32 0, i32 0
  %a.len.query1009 = load i64, ptr %a.len.query, align 8
  br label %choice.exit997

choice.next999:                                   ; preds = %choice.exit986
  %var.load1010 = load ptr, ptr %var.a, align 8
  %fld.gep1011 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1010, i32 0, i32 8
  %fld.load1012 = load ptr, ptr %fld.gep1011, align 8
  %tag.gep1016 = getelementptr inbounds { i64, ptr }, ptr %fld.load1012, i32 0, i32 0
  %tag.id1017 = load i64, ptr %tag.gep1016, align 8
  %tag.match1018 = icmp eq i64 %tag.id1017, 8
  br i1 %tag.match1018, label %choice.case1014, label %choice.next1015

choice.exit1013:                                  ; preds = %choice.next1015, %choice.case1014
  %choice.res1027 = phi i64 [ %a.len.query1026, %choice.case1014 ], [ -1, %choice.next1015 ]
  br label %choice.exit997

choice.case1014:                                  ; preds = %choice.next999
  %pay.gep1019 = getelementptr inbounds { i64, ptr }, ptr %fld.load1012, i32 0, i32 1
  %payload.ptr1020 = load ptr, ptr %pay.gep1019, align 8
  store ptr %payload.ptr1020, ptr %var._1021, align 8
  store ptr %payload.ptr1020, ptr %var.ft, align 8
  %var.load1022 = load ptr, ptr %var.ft, align 8
  %fld.gep1023 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1022, i32 0, i32 0
  %fld.load1024 = load ptr, ptr %fld.gep1023, align 8
  %a.len.query1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1024, i32 0, i32 0
  %a.len.query1026 = load i64, ptr %a.len.query1025, align 8
  br label %choice.exit1013

choice.next1015:                                  ; preds = %choice.next999
  br label %choice.exit1013

and.83.then:                                      ; preds = %choice.exit997
  %var.load1034 = load i1, ptr %var.is_top, align 1
  br label %and.83.exit

and.83.else:                                      ; preds = %choice.exit997
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %var.load1034, %and.83.then ], [ %call.res1033, %and.83.else ]
  store i1 %and.83.phi, ptr %var.family, align 1
  %var.load1035 = load i1, ptr %var.family, align 1
  br i1 %var.load1035, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load1036 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1036, 0
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp, %and.84.then ], [ %var.load1035, %and.84.else ]
  br i1 %and.84.phi, label %choice.then1037, label %choice.else1038

choice.then1037:                                  ; preds = %and.84.exit
  %var.load1040 = load ptr, ptr %var.a, align 8
  %fld.gep1041 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1040, i32 0, i32 0
  %fld.load1042 = load ptr, ptr %fld.gep1041, align 8
  %var.load1043 = load i64, ptr %var.arity, align 8
  %call.res1044 = call { i64, ptr } @"overloads::symbol"(ptr %fld.load1042, i64 %var.load1043)
  %arena.cur1045 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1046 = call ptr @dva_arena_alloc(ptr %arena.cur1045, i64 16)
  store { i64, ptr } %call.res1044, ptr %ret.ub.alloc1046, align 8
  br label %choice.exit1039

choice.else1038:                                  ; preds = %and.84.exit
  %var.load1047 = load ptr, ptr %var.a, align 8
  %fld.gep1048 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1047, i32 0, i32 0
  %fld.load1049 = load ptr, ptr %fld.gep1048, align 8
  br label %choice.exit1039

choice.exit1039:                                  ; preds = %choice.else1038, %choice.then1037
  %choice.res1050 = phi ptr [ %ret.ub.alloc1046, %choice.then1037 ], [ %fld.load1049, %choice.else1038 ]
  store ptr %choice.res1050, ptr %var.new_name, align 8
  %var.load1051 = load ptr, ptr %var.a, align 8
  %fld.gep1052 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1051, i32 0, i32 8
  %fld.load1053 = load ptr, ptr %fld.gep1052, align 8
  %tag.gep1057 = getelementptr inbounds { i64, ptr }, ptr %fld.load1053, i32 0, i32 0
  %tag.id1058 = load i64, ptr %tag.gep1057, align 8
  %tag.match1059 = icmp eq i64 %tag.id1058, 8
  br i1 %tag.match1059, label %choice.case1055, label %choice.next1056

choice.exit1054:                                  ; preds = %choice.next1056, %choice.case1055
  %choice.res1071 = phi ptr [ %fld.load1065, %choice.case1055 ], [ %call.res1070, %choice.next1056 ]
  store ptr %choice.res1071, ptr %var.expected, align 8
  %var.load1072 = load ptr, ptr %var.a, align 8
  %fld.gep1073 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1072, i32 0, i32 5
  %fld.load1074 = load ptr, ptr %fld.gep1073, align 8
  %var.load1075 = load ptr, ptr %var.table, align 8
  %var.load1076 = load ptr, ptr %var.locals, align 8
  %a.load1077 = load ptr, ptr %var.locals, align 8
  %a.null1078 = icmp eq ptr %a.load1077, null
  br i1 %a.null1078, label %a.create1079, label %a.after1080

choice.case1055:                                  ; preds = %choice.exit1039
  %pay.gep1060 = getelementptr inbounds { i64, ptr }, ptr %fld.load1053, i32 0, i32 1
  %payload.ptr1061 = load ptr, ptr %pay.gep1060, align 8
  store ptr %payload.ptr1061, ptr %var._1062, align 8
  %var.load1063 = load ptr, ptr %var.a, align 8
  %fld.gep1064 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1063, i32 0, i32 8
  %fld.load1065 = load ptr, ptr %fld.gep1064, align 8
  br label %choice.exit1054

choice.next1056:                                  ; preds = %choice.exit1039
  %var.load1066 = load ptr, ptr %var.table, align 8
  %var.load1067 = load ptr, ptr %var.a, align 8
  %fld.gep1068 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1067, i32 0, i32 0
  %fld.load1069 = load ptr, ptr %fld.gep1068, align 8
  %call.res1070 = call ptr @"overloads::signature"(ptr %var.load1066, ptr %fld.load1069, i64 -1)
  br label %choice.exit1054

a.create1079:                                     ; preds = %choice.exit1054
  %arena.cur1081 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1082 = call ptr @dva_arena_alloc(ptr %arena.cur1081, i64 24)
  %arena.cur1083 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1084 = call ptr @dva_arena_alloc(ptr %arena.cur1083, i64 128)
  %a.len.gep1085 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1082, i32 0, i32 0
  store i64 0, ptr %a.len.gep1085, align 8
  %a.data.gep1086 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1082, i32 0, i32 1
  store ptr %a.buf1084, ptr %a.data.gep1086, align 8
  %a.cap.gep1087 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1082, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1087, align 8
  store ptr %a.create1082, ptr %var.locals, align 8
  br label %a.after1080

a.after1080:                                      ; preds = %a.create1079, %choice.exit1054
  %a.load21088 = load ptr, ptr %var.locals, align 8
  %var.load1089 = load ptr, ptr %var.eff_mod, align 8
  %call.res1090 = call ptr @"overloads::walk"(ptr %fld.load1074, ptr %var.load1075, ptr %a.load21088, ptr %var.load1089)
  %var.load1091 = load ptr, ptr %var.expected, align 8
  %var.load1092 = load ptr, ptr %var.table, align 8
  %var.load1093 = load ptr, ptr %var.locals, align 8
  %a.load1094 = load ptr, ptr %var.locals, align 8
  %a.null1095 = icmp eq ptr %a.load1094, null
  br i1 %a.null1095, label %a.create1096, label %a.after1097

a.create1096:                                     ; preds = %a.after1080
  %arena.cur1098 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 24)
  %arena.cur1100 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1101 = call ptr @dva_arena_alloc(ptr %arena.cur1100, i64 128)
  %a.len.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 0
  store i64 0, ptr %a.len.gep1102, align 8
  %a.data.gep1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 1
  store ptr %a.buf1101, ptr %a.data.gep1103, align 8
  %a.cap.gep1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1104, align 8
  store ptr %a.create1099, ptr %var.locals, align 8
  br label %a.after1097

a.after1097:                                      ; preds = %a.create1096, %a.after1080
  %a.load21105 = load ptr, ptr %var.locals, align 8
  %var.load1106 = load ptr, ptr %var.eff_mod, align 8
  %call.res1107 = call ptr @"overloads::select_value"(ptr %call.res1090, ptr %var.load1091, ptr %var.load1092, ptr %a.load21105, ptr %var.load1106)
  store ptr %call.res1107, ptr %var.new_rhs, align 8
  %var.load1108 = load ptr, ptr %var.a, align 8
  %fld.gep1109 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1108, i32 0, i32 6
  %fld.load1110 = load ptr, ptr %fld.gep1109, align 8
  %var.load1111 = load ptr, ptr %var.table, align 8
  %var.load1112 = load ptr, ptr %var.locals, align 8
  %a.load1113 = load ptr, ptr %var.locals, align 8
  %a.null1114 = icmp eq ptr %a.load1113, null
  br i1 %a.null1114, label %a.create1115, label %a.after1116

a.create1115:                                     ; preds = %a.after1097
  %arena.cur1117 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1118 = call ptr @dva_arena_alloc(ptr %arena.cur1117, i64 24)
  %arena.cur1119 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1120 = call ptr @dva_arena_alloc(ptr %arena.cur1119, i64 128)
  %a.len.gep1121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 0
  store i64 0, ptr %a.len.gep1121, align 8
  %a.data.gep1122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 1
  store ptr %a.buf1120, ptr %a.data.gep1122, align 8
  %a.cap.gep1123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1123, align 8
  store ptr %a.create1118, ptr %var.locals, align 8
  br label %a.after1116

a.after1116:                                      ; preds = %a.create1115, %a.after1097
  %a.load21124 = load ptr, ptr %var.locals, align 8
  %var.load1125 = load ptr, ptr %var.eff_mod, align 8
  %call.res1126 = call ptr @"overloads::walk"(ptr %fld.load1110, ptr %var.load1111, ptr %a.load21124, ptr %var.load1125)
  store ptr %call.res1126, ptr %var.new_lhs, align 8
  %arena.cur1127 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1128 = call ptr @dva_arena_alloc(ptr %arena.cur1127, i64 16)
  %tag.gep1129 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1128, i32 0, i32 0
  store i64 6, ptr %tag.gep1129, align 8
  %pay.gep1130 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1128, i32 0, i32 1
  %var.load1131 = load ptr, ptr %var.new_name, align 8
  %var.load1132 = load ptr, ptr %var.a, align 8
  %fld.gep1133 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1132, i32 0, i32 1
  %fld.load1134 = load i1, ptr %fld.gep1133, align 1
  %var.load1135 = load ptr, ptr %var.a, align 8
  %fld.gep1136 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1135, i32 0, i32 2
  %fld.load1137 = load i1, ptr %fld.gep1136, align 1
  %var.load1138 = load ptr, ptr %var.a, align 8
  %fld.gep1139 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1138, i32 0, i32 3
  %fld.load1140 = load i1, ptr %fld.gep1139, align 1
  %var.load1141 = load ptr, ptr %var.a, align 8
  %fld.gep1142 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1141, i32 0, i32 4
  %fld.load1143 = load i1, ptr %fld.gep1142, align 1
  %var.load1144 = load ptr, ptr %var.new_rhs, align 8
  %var.load1145 = load ptr, ptr %var.new_lhs, align 8
  %var.load1146 = load ptr, ptr %var.a, align 8
  %fld.gep1147 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1146, i32 0, i32 7
  %fld.load1148 = load ptr, ptr %fld.gep1147, align 8
  %var.load1149 = load ptr, ptr %var.a, align 8
  %fld.gep1150 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1149, i32 0, i32 8
  %fld.load1151 = load ptr, ptr %fld.gep1150, align 8
  %arena.cur1152 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1153 = call ptr @dva_arena_alloc(ptr %arena.cur1152, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1154 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 0
  store ptr %var.load1131, ptr %rec.fld1154, align 8
  %rec.fld1155 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 1
  store i1 %fld.load1134, ptr %rec.fld1155, align 1
  %rec.fld1156 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 2
  store i1 %fld.load1137, ptr %rec.fld1156, align 1
  %rec.fld1157 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 3
  store i1 %fld.load1140, ptr %rec.fld1157, align 1
  %rec.fld1158 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 4
  store i1 %fld.load1143, ptr %rec.fld1158, align 1
  %rec.fld1159 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 5
  store ptr %var.load1144, ptr %rec.fld1159, align 8
  %rec.fld1160 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 6
  store ptr %var.load1145, ptr %rec.fld1160, align 8
  %rec.fld1161 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 7
  store ptr %fld.load1148, ptr %rec.fld1161, align 8
  %rec.fld1162 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1153, i32 0, i32 8
  store ptr %fld.load1151, ptr %rec.fld1162, align 8
  store ptr %rec.alloc1153, ptr %pay.gep1130, align 8
  br label %choice.exit

choice.case1163:                                  ; preds = %choice.next942
  %pay.gep1168 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1169 = load ptr, ptr %pay.gep1168, align 8
  store ptr %payload.ptr1169, ptr %var._1170, align 8
  store ptr %payload.ptr1169, ptr %var.td, align 8
  %var.load1171 = load ptr, ptr %var.td, align 8
  %fld.gep1172 = getelementptr inbounds { ptr, ptr }, ptr %var.load1171, i32 0, i32 1
  %fld.load1173 = load ptr, ptr %fld.gep1172, align 8
  %var.load1174 = load ptr, ptr %var.table, align 8
  %call.res1175 = call ptr @"overloads::keep_type"(ptr %fld.load1173, ptr %var.load1174)
  store ptr %call.res1175, ptr %var.new_ti, align 8
  %arena.cur1176 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1177 = call ptr @dva_arena_alloc(ptr %arena.cur1176, i64 16)
  %tag.gep1178 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1177, i32 0, i32 0
  store i64 23, ptr %tag.gep1178, align 8
  %pay.gep1179 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1177, i32 0, i32 1
  %var.load1180 = load ptr, ptr %var.td, align 8
  %fld.gep1181 = getelementptr inbounds { ptr, ptr }, ptr %var.load1180, i32 0, i32 0
  %fld.load1182 = load ptr, ptr %fld.gep1181, align 8
  %var.load1183 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1184 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1185 = call ptr @dva_arena_alloc(ptr %arena.cur1184, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1186 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1185, i32 0, i32 0
  store ptr %fld.load1182, ptr %rec.fld1186, align 8
  %rec.fld1187 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1185, i32 0, i32 1
  store ptr %var.load1183, ptr %rec.fld1187, align 8
  store ptr %rec.alloc1185, ptr %pay.gep1179, align 8
  br label %choice.exit

choice.next1164:                                  ; preds = %choice.next942
  %tag.gep1190 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1191 = load i64, ptr %tag.gep1190, align 8
  %tag.match1192 = icmp eq i64 %tag.id1191, 21
  br i1 %tag.match1192, label %choice.case1188, label %choice.next1189

choice.case1188:                                  ; preds = %choice.next1164
  %pay.gep1193 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1194 = load ptr, ptr %pay.gep1193, align 8
  store ptr %payload.ptr1194, ptr %var._1195, align 8
  store ptr %payload.ptr1194, ptr %var.f, align 8
  %var.load1196 = load ptr, ptr %var.f, align 8
  %fld.gep1197 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1196, i32 0, i32 3
  %fld.load1198 = load ptr, ptr %fld.gep1197, align 8
  %var.load1199 = load ptr, ptr %var.table, align 8
  %call.res1200 = call ptr @"overloads::keep_fparams"(ptr %fld.load1198, ptr %var.load1199)
  store ptr %call.res1200, ptr %var.new_params, align 8
  %var.load1201 = load ptr, ptr %var.f, align 8
  %fld.gep1202 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1201, i32 0, i32 5
  %fld.load1203 = load ptr, ptr %fld.gep1202, align 8
  %var.load1204 = load ptr, ptr %var.table, align 8
  %call.res1205 = call ptr @"overloads::keep_type"(ptr %fld.load1203, ptr %var.load1204)
  store ptr %call.res1205, ptr %var.new_ret_ti, align 8
  %arena.cur1206 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1207 = call ptr @dva_arena_alloc(ptr %arena.cur1206, i64 16)
  %tag.gep1208 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1207, i32 0, i32 0
  store i64 21, ptr %tag.gep1208, align 8
  %pay.gep1209 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1207, i32 0, i32 1
  %var.load1210 = load ptr, ptr %var.f, align 8
  %fld.gep1211 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1210, i32 0, i32 0
  %fld.load1212 = load ptr, ptr %fld.gep1211, align 8
  %var.load1213 = load ptr, ptr %var.f, align 8
  %fld.gep1214 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1213, i32 0, i32 1
  %fld.load1215 = load ptr, ptr %fld.gep1214, align 8
  %var.load1216 = load ptr, ptr %var.f, align 8
  %fld.gep1217 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1216, i32 0, i32 2
  %fld.load1218 = load ptr, ptr %fld.gep1217, align 8
  %var.load1219 = load ptr, ptr %var.new_params, align 8
  %a.load1220 = load ptr, ptr %var.new_params, align 8
  %a.null1221 = icmp eq ptr %a.load1220, null
  br i1 %a.null1221, label %a.create1222, label %a.after1223

choice.next1189:                                  ; preds = %choice.next1164
  %tag.gep1250 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1251 = load i64, ptr %tag.gep1250, align 8
  %tag.match1252 = icmp eq i64 %tag.id1251, 16
  br i1 %tag.match1252, label %choice.case1248, label %choice.next1249

a.create1222:                                     ; preds = %choice.case1188
  %arena.cur1224 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1225 = call ptr @dva_arena_alloc(ptr %arena.cur1224, i64 24)
  %arena.cur1226 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1227 = call ptr @dva_arena_alloc(ptr %arena.cur1226, i64 128)
  %a.len.gep1228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1225, i32 0, i32 0
  store i64 0, ptr %a.len.gep1228, align 8
  %a.data.gep1229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1225, i32 0, i32 1
  store ptr %a.buf1227, ptr %a.data.gep1229, align 8
  %a.cap.gep1230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1225, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1230, align 8
  store ptr %a.create1225, ptr %var.new_params, align 8
  br label %a.after1223

a.after1223:                                      ; preds = %a.create1222, %choice.case1188
  %a.load21231 = load ptr, ptr %var.new_params, align 8
  %var.load1232 = load ptr, ptr %var.f, align 8
  %fld.gep1233 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1232, i32 0, i32 4
  %fld.load1234 = load ptr, ptr %fld.gep1233, align 8
  %var.load1235 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1236 = load ptr, ptr %var.f, align 8
  %fld.gep1237 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1236, i32 0, i32 6
  %fld.load1238 = load i1, ptr %fld.gep1237, align 1
  %arena.cur1239 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1240 = call ptr @dva_arena_alloc(ptr %arena.cur1239, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1241 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 0
  store ptr %fld.load1212, ptr %rec.fld1241, align 8
  %rec.fld1242 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 1
  store ptr %fld.load1215, ptr %rec.fld1242, align 8
  %rec.fld1243 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 2
  store ptr %fld.load1218, ptr %rec.fld1243, align 8
  %rec.fld1244 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 3
  store ptr %a.load21231, ptr %rec.fld1244, align 8
  %rec.fld1245 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 4
  store ptr %fld.load1234, ptr %rec.fld1245, align 8
  %rec.fld1246 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 5
  store ptr %var.load1235, ptr %rec.fld1246, align 8
  %rec.fld1247 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1240, i32 0, i32 6
  store i1 %fld.load1238, ptr %rec.fld1247, align 1
  store ptr %rec.alloc1240, ptr %pay.gep1209, align 8
  br label %choice.exit

choice.case1248:                                  ; preds = %choice.next1189
  %pay.gep1253 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1254 = load ptr, ptr %pay.gep1253, align 8
  store ptr %payload.ptr1254, ptr %var._1255, align 8
  store ptr %payload.ptr1254, ptr %var.m, align 8
  %var.load1256 = load ptr, ptr %var.m, align 8
  %fld.gep1257 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1256, i32 0, i32 2
  %fld.load1258 = load i1, ptr %fld.gep1257, align 1
  br i1 %fld.load1258, label %choice.then1259, label %choice.else1260

choice.next1249:                                  ; preds = %choice.next1189
  %tag.gep1332 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1333 = load i64, ptr %tag.gep1332, align 8
  %tag.match1334 = icmp eq i64 %tag.id1333, 15
  br i1 %tag.match1334, label %choice.case1330, label %choice.next1331

choice.then1259:                                  ; preds = %choice.case1248
  %arena.cur1262 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 16)
  %tag.gep1264 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1263, i32 0, i32 0
  store i64 3, ptr %tag.gep1264, align 8
  %pay.gep1265 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1263, i32 0, i32 1
  %var.load1266 = load ptr, ptr %var.e, align 8
  %call.res1267 = call { i64, ptr } @"overloads::name_of"(ptr %var.load1266)
  %arena.cur1268 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1269 = call ptr @dva_arena_alloc(ptr %arena.cur1268, i64 16)
  store { i64, ptr } %call.res1267, ptr %ret.ub.alloc1269, align 8
  store ptr %ret.ub.alloc1269, ptr %pay.gep1265, align 8
  br label %choice.exit1261

choice.else1260:                                  ; preds = %choice.case1248
  %arena.cur1270 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1271 = call ptr @dva_arena_alloc(ptr %arena.cur1270, i64 16)
  %tag.gep1272 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1271, i32 0, i32 0
  store i64 16, ptr %tag.gep1272, align 8
  %pay.gep1273 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1271, i32 0, i32 1
  %var.load1274 = load ptr, ptr %var.m, align 8
  %fld.gep1275 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1274, i32 0, i32 0
  %fld.load1276 = load ptr, ptr %fld.gep1275, align 8
  %var.load1277 = load ptr, ptr %var.table, align 8
  %var.load1278 = load ptr, ptr %var.locals, align 8
  %a.load1279 = load ptr, ptr %var.locals, align 8
  %a.null1280 = icmp eq ptr %a.load1279, null
  br i1 %a.null1280, label %a.create1281, label %a.after1282

choice.exit1261:                                  ; preds = %a.after1304, %choice.then1259
  %choice.res1329 = phi ptr [ %enum.alloc1263, %choice.then1259 ], [ %enum.alloc1271, %a.after1304 ]
  br label %choice.exit

a.create1281:                                     ; preds = %choice.else1260
  %arena.cur1283 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1284 = call ptr @dva_arena_alloc(ptr %arena.cur1283, i64 24)
  %arena.cur1285 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1286 = call ptr @dva_arena_alloc(ptr %arena.cur1285, i64 128)
  %a.len.gep1287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1284, i32 0, i32 0
  store i64 0, ptr %a.len.gep1287, align 8
  %a.data.gep1288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1284, i32 0, i32 1
  store ptr %a.buf1286, ptr %a.data.gep1288, align 8
  %a.cap.gep1289 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1284, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1289, align 8
  store ptr %a.create1284, ptr %var.locals, align 8
  br label %a.after1282

a.after1282:                                      ; preds = %a.create1281, %choice.else1260
  %a.load21290 = load ptr, ptr %var.locals, align 8
  %var.load1291 = load ptr, ptr %var.cur_mod, align 8
  %call.res1292 = call ptr @"overloads::walk"(ptr %fld.load1276, ptr %var.load1277, ptr %a.load21290, ptr %var.load1291)
  %var.load1293 = load ptr, ptr %var.m, align 8
  %fld.gep1294 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1293, i32 0, i32 1
  %fld.load1295 = load ptr, ptr %fld.gep1294, align 8
  %var.load1296 = load ptr, ptr %var.m, align 8
  %fld.gep1297 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1296, i32 0, i32 3
  %fld.load1298 = load ptr, ptr %fld.gep1297, align 8
  %var.load1299 = load ptr, ptr %var.table, align 8
  %var.load1300 = load ptr, ptr %var.locals, align 8
  %a.load1301 = load ptr, ptr %var.locals, align 8
  %a.null1302 = icmp eq ptr %a.load1301, null
  br i1 %a.null1302, label %a.create1303, label %a.after1304

a.create1303:                                     ; preds = %a.after1282
  %arena.cur1305 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1306 = call ptr @dva_arena_alloc(ptr %arena.cur1305, i64 24)
  %arena.cur1307 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 128)
  %a.len.gep1309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 0
  store i64 0, ptr %a.len.gep1309, align 8
  %a.data.gep1310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 1
  store ptr %a.buf1308, ptr %a.data.gep1310, align 8
  %a.cap.gep1311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1311, align 8
  store ptr %a.create1306, ptr %var.locals, align 8
  br label %a.after1304

a.after1304:                                      ; preds = %a.create1303, %a.after1282
  %a.load21312 = load ptr, ptr %var.locals, align 8
  %var.load1313 = load ptr, ptr %var.cur_mod, align 8
  %call.res1314 = call ptr @"overloads::walk"(ptr %fld.load1298, ptr %var.load1299, ptr %a.load21312, ptr %var.load1313)
  %var.load1315 = load ptr, ptr %var.m, align 8
  %fld.gep1316 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1315, i32 0, i32 4
  %fld.load1317 = load i64, ptr %fld.gep1316, align 8
  %var.load1318 = load ptr, ptr %var.m, align 8
  %fld.gep1319 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1318, i32 0, i32 5
  %fld.load1320 = load i64, ptr %fld.gep1319, align 8
  %arena.cur1321 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1322 = call ptr @dva_arena_alloc(ptr %arena.cur1321, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1323 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 0
  store ptr %call.res1292, ptr %rec.fld1323, align 8
  %rec.fld1324 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 1
  store ptr %fld.load1295, ptr %rec.fld1324, align 8
  %rec.fld1325 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 2
  store i1 false, ptr %rec.fld1325, align 1
  %rec.fld1326 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 3
  store ptr %call.res1314, ptr %rec.fld1326, align 8
  %rec.fld1327 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 4
  store i64 %fld.load1317, ptr %rec.fld1327, align 8
  %rec.fld1328 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1322, i32 0, i32 5
  store i64 %fld.load1320, ptr %rec.fld1328, align 8
  store ptr %rec.alloc1322, ptr %pay.gep1273, align 8
  br label %choice.exit1261

choice.case1330:                                  ; preds = %choice.next1249
  %pay.gep1335 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1336 = load ptr, ptr %pay.gep1335, align 8
  store ptr %payload.ptr1336, ptr %var._1337, align 8
  store ptr %payload.ptr1336, ptr %var.re, align 8
  %arena.cur1338 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1339 = call ptr @dva_arena_alloc(ptr %arena.cur1338, i64 24)
  %arena.cur1340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1341 = call ptr @dva_arena_alloc(ptr %arena.cur1340, i64 128)
  %a.len.gep1342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1339, i32 0, i32 0
  store i64 0, ptr %a.len.gep1342, align 8
  %a.data.gep1343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1339, i32 0, i32 1
  store ptr %a.buf1341, ptr %a.data.gep1343, align 8
  %a.cap.gep1344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1339, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1344, align 8
  store ptr %a.new1339, ptr %var.new_fields, align 8
  %var.load1345 = load ptr, ptr %var.re, align 8
  %fld.gep1346 = getelementptr inbounds { ptr, i1 }, ptr %var.load1345, i32 0, i32 0
  %fld.load1347 = load ptr, ptr %fld.gep1346, align 8
  %arr.cycle.len1348 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1347, i32 0, i32 0
  %arr.cycle.len1349 = load i64, ptr %arr.cycle.len1348, align 8
  %arr.cycle.data1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1347, i32 0, i32 1
  %arr.cycle.data1351 = load ptr, ptr %arr.cycle.data1350, align 8
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

choice.next1331:                                  ; preds = %choice.next1249
  %tag.gep1447 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1448 = load i64, ptr %tag.gep1447, align 8
  %tag.match1449 = icmp eq i64 %tag.id1448, 17
  br i1 %tag.match1449, label %choice.case1445, label %choice.next1446

loop.header.85:                                   ; preds = %loop.latch.85, %choice.case1330
  %counter.load1352 = load i64, ptr %loop.idx.85, align 8
  %loop.cond1353 = icmp slt i64 %counter.load1352, %arr.cycle.len1349
  br i1 %loop.cond1353, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i1354 = sub i64 %counter.load1352, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep1355 = getelementptr i64, ptr %arr.cycle.data1351, i64 %counter.load1352
  %arr.elem.raw1356 = load i64, ptr %arr.elem.gep1355, align 8
  %slot.i2p1357 = inttoptr i64 %arr.elem.raw1356 to ptr
  store ptr %slot.i2p1357, ptr %var._1358, align 8
  store ptr %slot.i2p1357, ptr %var.fld, align 8
  store i64 %loop.rel.i1354, ptr %var._i1359, align 8
  %var.load1360 = load ptr, ptr %var.fld, align 8
  %fld.gep1361 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1360, i32 0, i32 2
  %fld.load1362 = load ptr, ptr %fld.gep1361, align 8
  %var.load1363 = load ptr, ptr %var.table, align 8
  %var.load1364 = load ptr, ptr %var.locals, align 8
  %a.load1365 = load ptr, ptr %var.locals, align 8
  %a.null1366 = icmp eq ptr %a.load1365, null
  br i1 %a.null1366, label %a.create1367, label %a.after1368

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store1405
  %step.val1419 = load i64, ptr %loop.step.85, align 8
  %loop.next1420 = add i64 %counter.load1352, %step.val1419
  store i64 %loop.next1420, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  %arena.cur1421 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1422 = call ptr @dva_arena_alloc(ptr %arena.cur1421, i64 16)
  %tag.gep1423 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1422, i32 0, i32 0
  store i64 15, ptr %tag.gep1423, align 8
  %pay.gep1424 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1422, i32 0, i32 1
  %var.load1425 = load ptr, ptr %var.new_fields, align 8
  %a.load1426 = load ptr, ptr %var.new_fields, align 8
  %a.null1427 = icmp eq ptr %a.load1426, null
  br i1 %a.null1427, label %a.create1428, label %a.after1429

a.create1367:                                     ; preds = %loop.body.85
  %arena.cur1369 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1370 = call ptr @dva_arena_alloc(ptr %arena.cur1369, i64 24)
  %arena.cur1371 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1372 = call ptr @dva_arena_alloc(ptr %arena.cur1371, i64 128)
  %a.len.gep1373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 0
  store i64 0, ptr %a.len.gep1373, align 8
  %a.data.gep1374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 1
  store ptr %a.buf1372, ptr %a.data.gep1374, align 8
  %a.cap.gep1375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1370, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1375, align 8
  store ptr %a.create1370, ptr %var.locals, align 8
  br label %a.after1368

a.after1368:                                      ; preds = %a.create1367, %loop.body.85
  %a.load21376 = load ptr, ptr %var.locals, align 8
  %var.load1377 = load ptr, ptr %var.cur_mod, align 8
  %call.res1378 = call ptr @"overloads::walk"(ptr %fld.load1362, ptr %var.load1363, ptr %a.load21376, ptr %var.load1377)
  store ptr %call.res1378, ptr %var.new_val, align 8
  %var.load1379 = load ptr, ptr %var.fld, align 8
  %fld.gep1380 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1379, i32 0, i32 0
  %fld.load1381 = load i1, ptr %fld.gep1380, align 1
  %var.load1382 = load ptr, ptr %var.fld, align 8
  %fld.gep1383 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1382, i32 0, i32 1
  %fld.load1384 = load ptr, ptr %fld.gep1383, align 8
  %var.load1385 = load ptr, ptr %var.new_val, align 8
  %arena.cur1386 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1387 = call ptr @dva_arena_alloc(ptr %arena.cur1386, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1388 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1387, i32 0, i32 0
  store i1 %fld.load1381, ptr %rec.fld1388, align 1
  %rec.fld1389 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1387, i32 0, i32 1
  store ptr %fld.load1384, ptr %rec.fld1389, align 8
  %rec.fld1390 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1387, i32 0, i32 2
  store ptr %var.load1385, ptr %rec.fld1390, align 8
  %a.load1391 = load ptr, ptr %var.new_fields, align 8
  %a.null1392 = icmp eq ptr %a.load1391, null
  br i1 %a.null1392, label %a.create1393, label %a.after1394

a.create1393:                                     ; preds = %a.after1368
  %arena.cur1395 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1396 = call ptr @dva_arena_alloc(ptr %arena.cur1395, i64 24)
  %arena.cur1397 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1398 = call ptr @dva_arena_alloc(ptr %arena.cur1397, i64 128)
  %a.len.gep1399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 0
  store i64 0, ptr %a.len.gep1399, align 8
  %a.data.gep1400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 1
  store ptr %a.buf1398, ptr %a.data.gep1400, align 8
  %a.cap.gep1401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1401, align 8
  store ptr %a.create1396, ptr %var.new_fields, align 8
  br label %a.after1394

a.after1394:                                      ; preds = %a.create1393, %a.after1368
  %a.load21402 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1403

a.check1403:                                      ; preds = %a.after1394
  %a.len1406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21402, i32 0, i32 0
  %a.len1407 = load i64, ptr %a.len1406, align 8
  %a.cap1408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21402, i32 0, i32 2
  %a.cap1409 = load i64, ptr %a.cap1408, align 8
  %a.needs.grow1410 = icmp eq i64 %a.len1407, %a.cap1409
  br i1 %a.needs.grow1410, label %a.grow1404, label %a.store1405

a.grow1404:                                       ; preds = %a.check1403
  call void @dva_array_grow(ptr %a.load21402)
  br label %a.store1405

a.store1405:                                      ; preds = %a.grow1404, %a.check1403
  %a.cur.data1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21402, i32 0, i32 1
  %a.cur.data1412 = load ptr, ptr %a.cur.data1411, align 8
  %a.cur.len1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21402, i32 0, i32 0
  %a.cur.len1414 = load i64, ptr %a.cur.len1413, align 8
  %a.elem.gep1415 = getelementptr i64, ptr %a.cur.data1412, i64 %a.cur.len1414
  %slot.p2i1416 = ptrtoint ptr %rec.alloc1387 to i64
  store i64 %slot.p2i1416, ptr %a.elem.gep1415, align 8
  %a.next.len1417 = add i64 %a.cur.len1414, 1
  %b.len.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21402, i32 0, i32 0
  store i64 %a.next.len1417, ptr %b.len.gep1418, align 8
  br label %loop.latch.85

a.create1428:                                     ; preds = %loop.exit.85
  %arena.cur1430 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1431 = call ptr @dva_arena_alloc(ptr %arena.cur1430, i64 24)
  %arena.cur1432 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1433 = call ptr @dva_arena_alloc(ptr %arena.cur1432, i64 128)
  %a.len.gep1434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 0
  store i64 0, ptr %a.len.gep1434, align 8
  %a.data.gep1435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 1
  store ptr %a.buf1433, ptr %a.data.gep1435, align 8
  %a.cap.gep1436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1431, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1436, align 8
  store ptr %a.create1431, ptr %var.new_fields, align 8
  br label %a.after1429

a.after1429:                                      ; preds = %a.create1428, %loop.exit.85
  %a.load21437 = load ptr, ptr %var.new_fields, align 8
  %var.load1438 = load ptr, ptr %var.re, align 8
  %fld.gep1439 = getelementptr inbounds { ptr, i1 }, ptr %var.load1438, i32 0, i32 1
  %fld.load1440 = load i1, ptr %fld.gep1439, align 1
  %arena.cur1441 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1442 = call ptr @dva_arena_alloc(ptr %arena.cur1441, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1443 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1442, i32 0, i32 0
  store ptr %a.load21437, ptr %rec.fld1443, align 8
  %rec.fld1444 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1442, i32 0, i32 1
  store i1 %fld.load1440, ptr %rec.fld1444, align 1
  store ptr %rec.alloc1442, ptr %pay.gep1424, align 8
  br label %choice.exit

choice.case1445:                                  ; preds = %choice.next1331
  %pay.gep1450 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1451 = load ptr, ptr %pay.gep1450, align 8
  store ptr %payload.ptr1451, ptr %var._1452, align 8
  store ptr %payload.ptr1451, ptr %var.ka, align 8
  %var.load1453 = load ptr, ptr %var.ka, align 8
  %fld.gep1454 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1453, i32 0, i32 0
  %fld.load1455 = load ptr, ptr %fld.gep1454, align 8
  %var.load1456 = load ptr, ptr %var.table, align 8
  %var.load1457 = load ptr, ptr %var.locals, align 8
  %a.load1458 = load ptr, ptr %var.locals, align 8
  %a.null1459 = icmp eq ptr %a.load1458, null
  br i1 %a.null1459, label %a.create1460, label %a.after1461

choice.next1446:                                  ; preds = %choice.next1331
  %tag.gep1519 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1520 = load i64, ptr %tag.gep1519, align 8
  %tag.match1521 = icmp eq i64 %tag.id1520, 12
  br i1 %tag.match1521, label %choice.case1517, label %choice.next1518

a.create1460:                                     ; preds = %choice.case1445
  %arena.cur1462 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1463 = call ptr @dva_arena_alloc(ptr %arena.cur1462, i64 24)
  %arena.cur1464 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1465 = call ptr @dva_arena_alloc(ptr %arena.cur1464, i64 128)
  %a.len.gep1466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 0
  store i64 0, ptr %a.len.gep1466, align 8
  %a.data.gep1467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 1
  store ptr %a.buf1465, ptr %a.data.gep1467, align 8
  %a.cap.gep1468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1468, align 8
  store ptr %a.create1463, ptr %var.locals, align 8
  br label %a.after1461

a.after1461:                                      ; preds = %a.create1460, %choice.case1445
  %a.load21469 = load ptr, ptr %var.locals, align 8
  %var.load1470 = load ptr, ptr %var.cur_mod, align 8
  %call.res1471 = call ptr @"overloads::walk"(ptr %fld.load1455, ptr %var.load1456, ptr %a.load21469, ptr %var.load1470)
  store ptr %call.res1471, ptr %var.new_target, align 8
  %var.load1472 = load ptr, ptr %var.ka, align 8
  %fld.gep1473 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1472, i32 0, i32 1
  %fld.load1474 = load ptr, ptr %fld.gep1473, align 8
  %var.load1475 = load ptr, ptr %var.table, align 8
  %var.load1476 = load ptr, ptr %var.locals, align 8
  %a.load1477 = load ptr, ptr %var.locals, align 8
  %a.null1478 = icmp eq ptr %a.load1477, null
  br i1 %a.null1478, label %a.create1479, label %a.after1480

a.create1479:                                     ; preds = %a.after1461
  %arena.cur1481 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1482 = call ptr @dva_arena_alloc(ptr %arena.cur1481, i64 24)
  %arena.cur1483 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1484 = call ptr @dva_arena_alloc(ptr %arena.cur1483, i64 128)
  %a.len.gep1485 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 0
  store i64 0, ptr %a.len.gep1485, align 8
  %a.data.gep1486 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 1
  store ptr %a.buf1484, ptr %a.data.gep1486, align 8
  %a.cap.gep1487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1487, align 8
  store ptr %a.create1482, ptr %var.locals, align 8
  br label %a.after1480

a.after1480:                                      ; preds = %a.create1479, %a.after1461
  %a.load21488 = load ptr, ptr %var.locals, align 8
  %var.load1489 = load ptr, ptr %var.cur_mod, align 8
  %call.res1490 = call ptr @"overloads::walk"(ptr %fld.load1474, ptr %var.load1475, ptr %a.load21488, ptr %var.load1489)
  store ptr %call.res1490, ptr %var.new_key, align 8
  %arena.cur1491 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1492 = call ptr @dva_arena_alloc(ptr %arena.cur1491, i64 16)
  %tag.gep1493 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1492, i32 0, i32 0
  store i64 17, ptr %tag.gep1493, align 8
  %pay.gep1494 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1492, i32 0, i32 1
  %var.load1495 = load ptr, ptr %var.new_target, align 8
  %var.load1496 = load ptr, ptr %var.new_key, align 8
  %var.load1497 = load ptr, ptr %var.ka, align 8
  %fld.gep1498 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1497, i32 0, i32 2
  %fld.load1499 = load i1, ptr %fld.gep1498, align 1
  %var.load1500 = load ptr, ptr %var.ka, align 8
  %fld.gep1501 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1500, i32 0, i32 3
  %fld.load1502 = load i1, ptr %fld.gep1501, align 1
  %var.load1503 = load ptr, ptr %var.ka, align 8
  %fld.gep1504 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1503, i32 0, i32 4
  %fld.load1505 = load i64, ptr %fld.gep1504, align 8
  %var.load1506 = load ptr, ptr %var.ka, align 8
  %fld.gep1507 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1506, i32 0, i32 5
  %fld.load1508 = load i64, ptr %fld.gep1507, align 8
  %arena.cur1509 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1510 = call ptr @dva_arena_alloc(ptr %arena.cur1509, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1511 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 0
  store ptr %var.load1495, ptr %rec.fld1511, align 8
  %rec.fld1512 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 1
  store ptr %var.load1496, ptr %rec.fld1512, align 8
  %rec.fld1513 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 2
  store i1 %fld.load1499, ptr %rec.fld1513, align 1
  %rec.fld1514 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 3
  store i1 %fld.load1502, ptr %rec.fld1514, align 1
  %rec.fld1515 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 4
  store i64 %fld.load1505, ptr %rec.fld1515, align 8
  %rec.fld1516 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1510, i32 0, i32 5
  store i64 %fld.load1508, ptr %rec.fld1516, align 8
  store ptr %rec.alloc1510, ptr %pay.gep1494, align 8
  br label %choice.exit

choice.case1517:                                  ; preds = %choice.next1446
  %pay.gep1522 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1523 = load ptr, ptr %pay.gep1522, align 8
  store ptr %payload.ptr1523, ptr %var._1524, align 8
  store ptr %payload.ptr1523, ptr %var.cy, align 8
  %var.load1525 = load ptr, ptr %var.cy, align 8
  %fld.gep1526 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1525, i32 0, i32 0
  %fld.load1527 = load ptr, ptr %fld.gep1526, align 8
  %var.load1528 = load ptr, ptr %var.table, align 8
  %var.load1529 = load ptr, ptr %var.locals, align 8
  %a.load1530 = load ptr, ptr %var.locals, align 8
  %a.null1531 = icmp eq ptr %a.load1530, null
  br i1 %a.null1531, label %a.create1532, label %a.after1533

choice.next1518:                                  ; preds = %choice.next1446
  %tag.gep1583 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1584 = load i64, ptr %tag.gep1583, align 8
  %tag.match1585 = icmp eq i64 %tag.id1584, 11
  br i1 %tag.match1585, label %choice.case1581, label %choice.next1582

a.create1532:                                     ; preds = %choice.case1517
  %arena.cur1534 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1535 = call ptr @dva_arena_alloc(ptr %arena.cur1534, i64 24)
  %arena.cur1536 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1537 = call ptr @dva_arena_alloc(ptr %arena.cur1536, i64 128)
  %a.len.gep1538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 0
  store i64 0, ptr %a.len.gep1538, align 8
  %a.data.gep1539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 1
  store ptr %a.buf1537, ptr %a.data.gep1539, align 8
  %a.cap.gep1540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1535, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1540, align 8
  store ptr %a.create1535, ptr %var.locals, align 8
  br label %a.after1533

a.after1533:                                      ; preds = %a.create1532, %choice.case1517
  %a.load21541 = load ptr, ptr %var.locals, align 8
  %var.load1542 = load ptr, ptr %var.cur_mod, align 8
  %call.res1543 = call ptr @"overloads::walk"(ptr %fld.load1527, ptr %var.load1528, ptr %a.load21541, ptr %var.load1542)
  store ptr %call.res1543, ptr %var.new_iter, align 8
  %var.load1544 = load ptr, ptr %var.cy, align 8
  %fld.gep1545 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1544, i32 0, i32 1
  %fld.load1546 = load ptr, ptr %fld.gep1545, align 8
  %var.load1547 = load ptr, ptr %var.table, align 8
  %var.load1548 = load ptr, ptr %var.locals, align 8
  %a.load1549 = load ptr, ptr %var.locals, align 8
  %a.null1550 = icmp eq ptr %a.load1549, null
  br i1 %a.null1550, label %a.create1551, label %a.after1552

a.create1551:                                     ; preds = %a.after1533
  %arena.cur1553 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1554 = call ptr @dva_arena_alloc(ptr %arena.cur1553, i64 24)
  %arena.cur1555 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1556 = call ptr @dva_arena_alloc(ptr %arena.cur1555, i64 128)
  %a.len.gep1557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 0
  store i64 0, ptr %a.len.gep1557, align 8
  %a.data.gep1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 1
  store ptr %a.buf1556, ptr %a.data.gep1558, align 8
  %a.cap.gep1559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1559, align 8
  store ptr %a.create1554, ptr %var.locals, align 8
  br label %a.after1552

a.after1552:                                      ; preds = %a.create1551, %a.after1533
  %a.load21560 = load ptr, ptr %var.locals, align 8
  %var.load1561 = load ptr, ptr %var.cur_mod, align 8
  %call.res1562 = call ptr @"overloads::walk"(ptr %fld.load1546, ptr %var.load1547, ptr %a.load21560, ptr %var.load1561)
  store ptr %call.res1562, ptr %var.new_fn, align 8
  %arena.cur1563 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1564 = call ptr @dva_arena_alloc(ptr %arena.cur1563, i64 16)
  %tag.gep1565 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1564, i32 0, i32 0
  store i64 12, ptr %tag.gep1565, align 8
  %pay.gep1566 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1564, i32 0, i32 1
  %var.load1567 = load ptr, ptr %var.new_iter, align 8
  %var.load1568 = load ptr, ptr %var.new_fn, align 8
  %var.load1569 = load ptr, ptr %var.cy, align 8
  %fld.gep1570 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1569, i32 0, i32 2
  %fld.load1571 = load i1, ptr %fld.gep1570, align 1
  %var.load1572 = load ptr, ptr %var.cy, align 8
  %fld.gep1573 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1572, i32 0, i32 3
  %fld.load1574 = load i1, ptr %fld.gep1573, align 1
  %arena.cur1575 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1576 = call ptr @dva_arena_alloc(ptr %arena.cur1575, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1577 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1576, i32 0, i32 0
  store ptr %var.load1567, ptr %rec.fld1577, align 8
  %rec.fld1578 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1576, i32 0, i32 1
  store ptr %var.load1568, ptr %rec.fld1578, align 8
  %rec.fld1579 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1576, i32 0, i32 2
  store i1 %fld.load1571, ptr %rec.fld1579, align 1
  %rec.fld1580 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1576, i32 0, i32 3
  store i1 %fld.load1574, ptr %rec.fld1580, align 1
  store ptr %rec.alloc1576, ptr %pay.gep1566, align 8
  br label %choice.exit

choice.case1581:                                  ; preds = %choice.next1518
  %pay.gep1586 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1587 = load ptr, ptr %pay.gep1586, align 8
  store ptr %payload.ptr1587, ptr %var._1588, align 8
  store ptr %payload.ptr1587, ptr %var.ce, align 8
  %var.load1589 = load ptr, ptr %var.ce, align 8
  %fld.gep1590 = getelementptr inbounds { ptr, ptr }, ptr %var.load1589, i32 0, i32 0
  %fld.load1591 = load ptr, ptr %fld.gep1590, align 8
  %var.load1592 = load ptr, ptr %var.table, align 8
  %var.load1593 = load ptr, ptr %var.locals, align 8
  %a.load1594 = load ptr, ptr %var.locals, align 8
  %a.null1595 = icmp eq ptr %a.load1594, null
  br i1 %a.null1595, label %a.create1596, label %a.after1597

choice.next1582:                                  ; preds = %choice.next1518
  %tag.gep1639 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1640 = load i64, ptr %tag.gep1639, align 8
  %tag.match1641 = icmp eq i64 %tag.id1640, 13
  br i1 %tag.match1641, label %choice.case1637, label %choice.next1638

a.create1596:                                     ; preds = %choice.case1581
  %arena.cur1598 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1599 = call ptr @dva_arena_alloc(ptr %arena.cur1598, i64 24)
  %arena.cur1600 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1601 = call ptr @dva_arena_alloc(ptr %arena.cur1600, i64 128)
  %a.len.gep1602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 0
  store i64 0, ptr %a.len.gep1602, align 8
  %a.data.gep1603 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 1
  store ptr %a.buf1601, ptr %a.data.gep1603, align 8
  %a.cap.gep1604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1599, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1604, align 8
  store ptr %a.create1599, ptr %var.locals, align 8
  br label %a.after1597

a.after1597:                                      ; preds = %a.create1596, %choice.case1581
  %a.load21605 = load ptr, ptr %var.locals, align 8
  %var.load1606 = load ptr, ptr %var.cur_mod, align 8
  %call.res1607 = call ptr @"overloads::walk"(ptr %fld.load1591, ptr %var.load1592, ptr %a.load21605, ptr %var.load1606)
  store ptr %call.res1607, ptr %var.new_cy, align 8
  %var.load1608 = load ptr, ptr %var.ce, align 8
  %fld.gep1609 = getelementptr inbounds { ptr, ptr }, ptr %var.load1608, i32 0, i32 1
  %fld.load1610 = load ptr, ptr %fld.gep1609, align 8
  %var.load1611 = load ptr, ptr %var.table, align 8
  %var.load1612 = load ptr, ptr %var.locals, align 8
  %a.load1613 = load ptr, ptr %var.locals, align 8
  %a.null1614 = icmp eq ptr %a.load1613, null
  br i1 %a.null1614, label %a.create1615, label %a.after1616

a.create1615:                                     ; preds = %a.after1597
  %arena.cur1617 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1618 = call ptr @dva_arena_alloc(ptr %arena.cur1617, i64 24)
  %arena.cur1619 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1620 = call ptr @dva_arena_alloc(ptr %arena.cur1619, i64 128)
  %a.len.gep1621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 0
  store i64 0, ptr %a.len.gep1621, align 8
  %a.data.gep1622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 1
  store ptr %a.buf1620, ptr %a.data.gep1622, align 8
  %a.cap.gep1623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1623, align 8
  store ptr %a.create1618, ptr %var.locals, align 8
  br label %a.after1616

a.after1616:                                      ; preds = %a.create1615, %a.after1597
  %a.load21624 = load ptr, ptr %var.locals, align 8
  %var.load1625 = load ptr, ptr %var.cur_mod, align 8
  %call.res1626 = call ptr @"overloads::walk"(ptr %fld.load1610, ptr %var.load1611, ptr %a.load21624, ptr %var.load1625)
  store ptr %call.res1626, ptr %var.new_br, align 8
  %arena.cur1627 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1628 = call ptr @dva_arena_alloc(ptr %arena.cur1627, i64 16)
  %tag.gep1629 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1628, i32 0, i32 0
  store i64 11, ptr %tag.gep1629, align 8
  %pay.gep1630 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1628, i32 0, i32 1
  %var.load1631 = load ptr, ptr %var.new_cy, align 8
  %var.load1632 = load ptr, ptr %var.new_br, align 8
  %arena.cur1633 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1634 = call ptr @dva_arena_alloc(ptr %arena.cur1633, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1635 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1634, i32 0, i32 0
  store ptr %var.load1631, ptr %rec.fld1635, align 8
  %rec.fld1636 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1634, i32 0, i32 1
  store ptr %var.load1632, ptr %rec.fld1636, align 8
  store ptr %rec.alloc1634, ptr %pay.gep1630, align 8
  br label %choice.exit

choice.case1637:                                  ; preds = %choice.next1582
  %pay.gep1642 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1643 = load ptr, ptr %pay.gep1642, align 8
  store ptr %payload.ptr1643, ptr %var._1644, align 8
  store ptr %payload.ptr1643, ptr %var.r, align 8
  %var.load1645 = load ptr, ptr %var.r, align 8
  %fld.gep1646 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1645, i32 0, i32 0
  %fld.load1647 = load i1, ptr %fld.gep1646, align 1
  br i1 %fld.load1647, label %choice.then1648, label %choice.else1649

choice.next1638:                                  ; preds = %choice.next1582
  %tag.gep1729 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1730 = load i64, ptr %tag.gep1729, align 8
  %tag.match1731 = icmp eq i64 %tag.id1730, 36
  br i1 %tag.match1731, label %choice.case1727, label %choice.next1728

choice.then1648:                                  ; preds = %choice.case1637
  %var.load1651 = load ptr, ptr %var.r, align 8
  %fld.gep1652 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1651, i32 0, i32 2
  %fld.load1653 = load ptr, ptr %fld.gep1652, align 8
  %var.load1654 = load ptr, ptr %var.table, align 8
  %var.load1655 = load ptr, ptr %var.locals, align 8
  %a.load1656 = load ptr, ptr %var.locals, align 8
  %a.null1657 = icmp eq ptr %a.load1656, null
  br i1 %a.null1657, label %a.create1658, label %a.after1659

choice.else1649:                                  ; preds = %choice.case1637
  %var.load1670 = load ptr, ptr %var.r, align 8
  %fld.gep1671 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1670, i32 0, i32 2
  %fld.load1672 = load ptr, ptr %fld.gep1671, align 8
  br label %choice.exit1650

choice.exit1650:                                  ; preds = %choice.else1649, %a.after1659
  %choice.res1673 = phi ptr [ %call.res1669, %a.after1659 ], [ %fld.load1672, %choice.else1649 ]
  store ptr %choice.res1673, ptr %var.new_lhs1674, align 8
  %var.load1675 = load ptr, ptr %var.r, align 8
  %fld.gep1676 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1675, i32 0, i32 1
  %fld.load1677 = load i1, ptr %fld.gep1676, align 1
  br i1 %fld.load1677, label %choice.then1678, label %choice.else1679

a.create1658:                                     ; preds = %choice.then1648
  %arena.cur1660 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1661 = call ptr @dva_arena_alloc(ptr %arena.cur1660, i64 24)
  %arena.cur1662 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1663 = call ptr @dva_arena_alloc(ptr %arena.cur1662, i64 128)
  %a.len.gep1664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1661, i32 0, i32 0
  store i64 0, ptr %a.len.gep1664, align 8
  %a.data.gep1665 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1661, i32 0, i32 1
  store ptr %a.buf1663, ptr %a.data.gep1665, align 8
  %a.cap.gep1666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1661, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1666, align 8
  store ptr %a.create1661, ptr %var.locals, align 8
  br label %a.after1659

a.after1659:                                      ; preds = %a.create1658, %choice.then1648
  %a.load21667 = load ptr, ptr %var.locals, align 8
  %var.load1668 = load ptr, ptr %var.cur_mod, align 8
  %call.res1669 = call ptr @"overloads::walk"(ptr %fld.load1653, ptr %var.load1654, ptr %a.load21667, ptr %var.load1668)
  br label %choice.exit1650

choice.then1678:                                  ; preds = %choice.exit1650
  %var.load1681 = load ptr, ptr %var.r, align 8
  %fld.gep1682 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1681, i32 0, i32 3
  %fld.load1683 = load ptr, ptr %fld.gep1682, align 8
  %var.load1684 = load ptr, ptr %var.table, align 8
  %var.load1685 = load ptr, ptr %var.locals, align 8
  %a.load1686 = load ptr, ptr %var.locals, align 8
  %a.null1687 = icmp eq ptr %a.load1686, null
  br i1 %a.null1687, label %a.create1688, label %a.after1689

choice.else1679:                                  ; preds = %choice.exit1650
  %var.load1700 = load ptr, ptr %var.r, align 8
  %fld.gep1701 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1700, i32 0, i32 3
  %fld.load1702 = load ptr, ptr %fld.gep1701, align 8
  br label %choice.exit1680

choice.exit1680:                                  ; preds = %choice.else1679, %a.after1689
  %choice.res1703 = phi ptr [ %call.res1699, %a.after1689 ], [ %fld.load1702, %choice.else1679 ]
  store ptr %choice.res1703, ptr %var.new_rhs1704, align 8
  %arena.cur1705 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1706 = call ptr @dva_arena_alloc(ptr %arena.cur1705, i64 16)
  %tag.gep1707 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1706, i32 0, i32 0
  store i64 13, ptr %tag.gep1707, align 8
  %pay.gep1708 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1706, i32 0, i32 1
  %var.load1709 = load ptr, ptr %var.r, align 8
  %fld.gep1710 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1709, i32 0, i32 0
  %fld.load1711 = load i1, ptr %fld.gep1710, align 1
  %var.load1712 = load ptr, ptr %var.r, align 8
  %fld.gep1713 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1712, i32 0, i32 1
  %fld.load1714 = load i1, ptr %fld.gep1713, align 1
  %var.load1715 = load ptr, ptr %var.new_lhs1674, align 8
  %var.load1716 = load ptr, ptr %var.new_rhs1704, align 8
  %var.load1717 = load ptr, ptr %var.r, align 8
  %fld.gep1718 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1717, i32 0, i32 4
  %fld.load1719 = load i1, ptr %fld.gep1718, align 1
  %arena.cur1720 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1721 = call ptr @dva_arena_alloc(ptr %arena.cur1720, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1722 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1721, i32 0, i32 0
  store i1 %fld.load1711, ptr %rec.fld1722, align 1
  %rec.fld1723 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1721, i32 0, i32 1
  store i1 %fld.load1714, ptr %rec.fld1723, align 1
  %rec.fld1724 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1721, i32 0, i32 2
  store ptr %var.load1715, ptr %rec.fld1724, align 8
  %rec.fld1725 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1721, i32 0, i32 3
  store ptr %var.load1716, ptr %rec.fld1725, align 8
  %rec.fld1726 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1721, i32 0, i32 4
  store i1 %fld.load1719, ptr %rec.fld1726, align 1
  store ptr %rec.alloc1721, ptr %pay.gep1708, align 8
  br label %choice.exit

a.create1688:                                     ; preds = %choice.then1678
  %arena.cur1690 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1691 = call ptr @dva_arena_alloc(ptr %arena.cur1690, i64 24)
  %arena.cur1692 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1693 = call ptr @dva_arena_alloc(ptr %arena.cur1692, i64 128)
  %a.len.gep1694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1691, i32 0, i32 0
  store i64 0, ptr %a.len.gep1694, align 8
  %a.data.gep1695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1691, i32 0, i32 1
  store ptr %a.buf1693, ptr %a.data.gep1695, align 8
  %a.cap.gep1696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1691, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1696, align 8
  store ptr %a.create1691, ptr %var.locals, align 8
  br label %a.after1689

a.after1689:                                      ; preds = %a.create1688, %choice.then1678
  %a.load21697 = load ptr, ptr %var.locals, align 8
  %var.load1698 = load ptr, ptr %var.cur_mod, align 8
  %call.res1699 = call ptr @"overloads::walk"(ptr %fld.load1683, ptr %var.load1684, ptr %a.load21697, ptr %var.load1698)
  br label %choice.exit1680

choice.case1727:                                  ; preds = %choice.next1638
  %pay.gep1732 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1733 = load ptr, ptr %pay.gep1732, align 8
  store ptr %payload.ptr1733, ptr %var._1734, align 8
  store ptr %payload.ptr1733, ptr %var.na, align 8
  %var.load1735 = load ptr, ptr %var.na, align 8
  %fld.gep1736 = getelementptr inbounds { ptr, ptr }, ptr %var.load1735, i32 0, i32 1
  %fld.load1737 = load ptr, ptr %fld.gep1736, align 8
  %var.load1738 = load ptr, ptr %var.table, align 8
  %var.load1739 = load ptr, ptr %var.locals, align 8
  %a.load1740 = load ptr, ptr %var.locals, align 8
  %a.null1741 = icmp eq ptr %a.load1740, null
  br i1 %a.null1741, label %a.create1742, label %a.after1743

choice.next1728:                                  ; preds = %choice.next1638
  %tag.gep1769 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1770 = load i64, ptr %tag.gep1769, align 8
  %tag.match1771 = icmp eq i64 %tag.id1770, 18
  br i1 %tag.match1771, label %choice.case1767, label %choice.next1768

a.create1742:                                     ; preds = %choice.case1727
  %arena.cur1744 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1745 = call ptr @dva_arena_alloc(ptr %arena.cur1744, i64 24)
  %arena.cur1746 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1747 = call ptr @dva_arena_alloc(ptr %arena.cur1746, i64 128)
  %a.len.gep1748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 0
  store i64 0, ptr %a.len.gep1748, align 8
  %a.data.gep1749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 1
  store ptr %a.buf1747, ptr %a.data.gep1749, align 8
  %a.cap.gep1750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1750, align 8
  store ptr %a.create1745, ptr %var.locals, align 8
  br label %a.after1743

a.after1743:                                      ; preds = %a.create1742, %choice.case1727
  %a.load21751 = load ptr, ptr %var.locals, align 8
  %var.load1752 = load ptr, ptr %var.cur_mod, align 8
  %call.res1753 = call ptr @"overloads::walk"(ptr %fld.load1737, ptr %var.load1738, ptr %a.load21751, ptr %var.load1752)
  store ptr %call.res1753, ptr %var.new_val1754, align 8
  %arena.cur1755 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1756 = call ptr @dva_arena_alloc(ptr %arena.cur1755, i64 16)
  %tag.gep1757 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1756, i32 0, i32 0
  store i64 36, ptr %tag.gep1757, align 8
  %pay.gep1758 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1756, i32 0, i32 1
  %var.load1759 = load ptr, ptr %var.na, align 8
  %fld.gep1760 = getelementptr inbounds { ptr, ptr }, ptr %var.load1759, i32 0, i32 0
  %fld.load1761 = load ptr, ptr %fld.gep1760, align 8
  %var.load1762 = load ptr, ptr %var.new_val1754, align 8
  %arena.cur1763 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1765 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1764, i32 0, i32 0
  store ptr %fld.load1761, ptr %rec.fld1765, align 8
  %rec.fld1766 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1764, i32 0, i32 1
  store ptr %var.load1762, ptr %rec.fld1766, align 8
  store ptr %rec.alloc1764, ptr %pay.gep1758, align 8
  br label %choice.exit

choice.case1767:                                  ; preds = %choice.next1728
  %pay.gep1772 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1773 = load ptr, ptr %pay.gep1772, align 8
  store ptr %payload.ptr1773, ptr %var._1774, align 8
  store ptr %payload.ptr1773, ptr %var.v1775, align 8
  %var.load1776 = load ptr, ptr %var.v1775, align 8
  %fld.gep1777 = getelementptr inbounds { ptr, ptr }, ptr %var.load1776, i32 0, i32 1
  %fld.load1778 = load ptr, ptr %fld.gep1777, align 8
  %var.load1779 = load ptr, ptr %var.table, align 8
  %var.load1780 = load ptr, ptr %var.locals, align 8
  %a.load1781 = load ptr, ptr %var.locals, align 8
  %a.null1782 = icmp eq ptr %a.load1781, null
  br i1 %a.null1782, label %a.create1783, label %a.after1784

choice.next1768:                                  ; preds = %choice.next1728
  %tag.gep1821 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1822 = load i64, ptr %tag.gep1821, align 8
  %tag.match1823 = icmp eq i64 %tag.id1822, 22
  br i1 %tag.match1823, label %choice.case1819, label %choice.next1820

a.create1783:                                     ; preds = %choice.case1767
  %arena.cur1785 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1786 = call ptr @dva_arena_alloc(ptr %arena.cur1785, i64 24)
  %arena.cur1787 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1788 = call ptr @dva_arena_alloc(ptr %arena.cur1787, i64 128)
  %a.len.gep1789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1786, i32 0, i32 0
  store i64 0, ptr %a.len.gep1789, align 8
  %a.data.gep1790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1786, i32 0, i32 1
  store ptr %a.buf1788, ptr %a.data.gep1790, align 8
  %a.cap.gep1791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1786, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1791, align 8
  store ptr %a.create1786, ptr %var.locals, align 8
  br label %a.after1784

a.after1784:                                      ; preds = %a.create1783, %choice.case1767
  %a.load21792 = load ptr, ptr %var.locals, align 8
  %var.load1793 = load ptr, ptr %var.cur_mod, align 8
  %call.res1794 = call ptr @"overloads::walk_many"(ptr %fld.load1778, ptr %var.load1779, ptr %a.load21792, ptr %var.load1793)
  store ptr %call.res1794, ptr %var.new_args, align 8
  %arena.cur1795 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1796 = call ptr @dva_arena_alloc(ptr %arena.cur1795, i64 16)
  %tag.gep1797 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1796, i32 0, i32 0
  store i64 18, ptr %tag.gep1797, align 8
  %pay.gep1798 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1796, i32 0, i32 1
  %var.load1799 = load ptr, ptr %var.v1775, align 8
  %fld.gep1800 = getelementptr inbounds { ptr, ptr }, ptr %var.load1799, i32 0, i32 0
  %fld.load1801 = load ptr, ptr %fld.gep1800, align 8
  %var.load1802 = load ptr, ptr %var.new_args, align 8
  %a.load1803 = load ptr, ptr %var.new_args, align 8
  %a.null1804 = icmp eq ptr %a.load1803, null
  br i1 %a.null1804, label %a.create1805, label %a.after1806

a.create1805:                                     ; preds = %a.after1784
  %arena.cur1807 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1808 = call ptr @dva_arena_alloc(ptr %arena.cur1807, i64 24)
  %arena.cur1809 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1810 = call ptr @dva_arena_alloc(ptr %arena.cur1809, i64 128)
  %a.len.gep1811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1808, i32 0, i32 0
  store i64 0, ptr %a.len.gep1811, align 8
  %a.data.gep1812 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1808, i32 0, i32 1
  store ptr %a.buf1810, ptr %a.data.gep1812, align 8
  %a.cap.gep1813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1808, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1813, align 8
  store ptr %a.create1808, ptr %var.new_args, align 8
  br label %a.after1806

a.after1806:                                      ; preds = %a.create1805, %a.after1784
  %a.load21814 = load ptr, ptr %var.new_args, align 8
  %arena.cur1815 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1816 = call ptr @dva_arena_alloc(ptr %arena.cur1815, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1817 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1816, i32 0, i32 0
  store ptr %fld.load1801, ptr %rec.fld1817, align 8
  %rec.fld1818 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1816, i32 0, i32 1
  store ptr %a.load21814, ptr %rec.fld1818, align 8
  store ptr %rec.alloc1816, ptr %pay.gep1798, align 8
  br label %choice.exit

choice.case1819:                                  ; preds = %choice.next1768
  %pay.gep1824 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1825 = load ptr, ptr %pay.gep1824, align 8
  store ptr %payload.ptr1825, ptr %var._1826, align 8
  store ptr %payload.ptr1825, ptr %var.tc, align 8
  %var.load1827 = load ptr, ptr %var.tc, align 8
  %fld.gep1828 = getelementptr inbounds { ptr, ptr }, ptr %var.load1827, i32 0, i32 1
  %fld.load1829 = load ptr, ptr %fld.gep1828, align 8
  %var.load1830 = load ptr, ptr %var.table, align 8
  %var.load1831 = load ptr, ptr %var.locals, align 8
  %a.load1832 = load ptr, ptr %var.locals, align 8
  %a.null1833 = icmp eq ptr %a.load1832, null
  br i1 %a.null1833, label %a.create1834, label %a.after1835

choice.next1820:                                  ; preds = %choice.next1768
  %tag.gep1860 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1861 = load i64, ptr %tag.gep1860, align 8
  %tag.match1862 = icmp eq i64 %tag.id1861, 31
  br i1 %tag.match1862, label %choice.case1858, label %choice.next1859

a.create1834:                                     ; preds = %choice.case1819
  %arena.cur1836 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1837 = call ptr @dva_arena_alloc(ptr %arena.cur1836, i64 24)
  %arena.cur1838 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1839 = call ptr @dva_arena_alloc(ptr %arena.cur1838, i64 128)
  %a.len.gep1840 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1837, i32 0, i32 0
  store i64 0, ptr %a.len.gep1840, align 8
  %a.data.gep1841 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1837, i32 0, i32 1
  store ptr %a.buf1839, ptr %a.data.gep1841, align 8
  %a.cap.gep1842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1837, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1842, align 8
  store ptr %a.create1837, ptr %var.locals, align 8
  br label %a.after1835

a.after1835:                                      ; preds = %a.create1834, %choice.case1819
  %a.load21843 = load ptr, ptr %var.locals, align 8
  %var.load1844 = load ptr, ptr %var.cur_mod, align 8
  %call.res1845 = call ptr @"overloads::walk"(ptr %fld.load1829, ptr %var.load1830, ptr %a.load21843, ptr %var.load1844)
  store ptr %call.res1845, ptr %var.new_expr, align 8
  %arena.cur1846 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1847 = call ptr @dva_arena_alloc(ptr %arena.cur1846, i64 16)
  %tag.gep1848 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1847, i32 0, i32 0
  store i64 22, ptr %tag.gep1848, align 8
  %pay.gep1849 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1847, i32 0, i32 1
  %var.load1850 = load ptr, ptr %var.tc, align 8
  %fld.gep1851 = getelementptr inbounds { ptr, ptr }, ptr %var.load1850, i32 0, i32 0
  %fld.load1852 = load ptr, ptr %fld.gep1851, align 8
  %var.load1853 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1854 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1855 = call ptr @dva_arena_alloc(ptr %arena.cur1854, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1856 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1855, i32 0, i32 0
  store ptr %fld.load1852, ptr %rec.fld1856, align 8
  %rec.fld1857 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1855, i32 0, i32 1
  store ptr %var.load1853, ptr %rec.fld1857, align 8
  store ptr %rec.alloc1855, ptr %pay.gep1849, align 8
  br label %choice.exit

choice.case1858:                                  ; preds = %choice.next1820
  %pay.gep1863 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1864 = load ptr, ptr %pay.gep1863, align 8
  store ptr %payload.ptr1864, ptr %var._1865, align 8
  store ptr %payload.ptr1864, ptr %var.sp, align 8
  %arena.cur1866 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1867 = call ptr @dva_arena_alloc(ptr %arena.cur1866, i64 16)
  %tag.gep1868 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1867, i32 0, i32 0
  store i64 31, ptr %tag.gep1868, align 8
  %pay.gep1869 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1867, i32 0, i32 1
  %var.load1870 = load ptr, ptr %var.sp, align 8
  %var.load1871 = load ptr, ptr %var.table, align 8
  %var.load1872 = load ptr, ptr %var.locals, align 8
  %a.load1873 = load ptr, ptr %var.locals, align 8
  %a.null1874 = icmp eq ptr %a.load1873, null
  br i1 %a.null1874, label %a.create1875, label %a.after1876

choice.next1859:                                  ; preds = %choice.next1820
  %tag.gep1889 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1890 = load i64, ptr %tag.gep1889, align 8
  %tag.match1891 = icmp eq i64 %tag.id1890, 32
  br i1 %tag.match1891, label %choice.case1887, label %choice.next1888

a.create1875:                                     ; preds = %choice.case1858
  %arena.cur1877 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1878 = call ptr @dva_arena_alloc(ptr %arena.cur1877, i64 24)
  %arena.cur1879 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1880 = call ptr @dva_arena_alloc(ptr %arena.cur1879, i64 128)
  %a.len.gep1881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 0
  store i64 0, ptr %a.len.gep1881, align 8
  %a.data.gep1882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 1
  store ptr %a.buf1880, ptr %a.data.gep1882, align 8
  %a.cap.gep1883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1883, align 8
  store ptr %a.create1878, ptr %var.locals, align 8
  br label %a.after1876

a.after1876:                                      ; preds = %a.create1875, %choice.case1858
  %a.load21884 = load ptr, ptr %var.locals, align 8
  %var.load1885 = load ptr, ptr %var.cur_mod, align 8
  %call.res1886 = call ptr @"overloads::walk_call"(ptr %var.load1870, ptr %var.load1871, ptr %a.load21884, ptr %var.load1885)
  store ptr %call.res1886, ptr %pay.gep1869, align 8
  br label %choice.exit

choice.case1887:                                  ; preds = %choice.next1859
  %pay.gep1892 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1893 = load ptr, ptr %pay.gep1892, align 8
  store ptr %payload.ptr1893, ptr %var._1894, align 8
  store ptr %payload.ptr1893, ptr %var.jn, align 8
  %arena.cur1895 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1896 = call ptr @dva_arena_alloc(ptr %arena.cur1895, i64 16)
  %tag.gep1897 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1896, i32 0, i32 0
  store i64 32, ptr %tag.gep1897, align 8
  %pay.gep1898 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1896, i32 0, i32 1
  %var.load1899 = load ptr, ptr %var.jn, align 8
  %var.load1900 = load ptr, ptr %var.table, align 8
  %var.load1901 = load ptr, ptr %var.locals, align 8
  %a.load1902 = load ptr, ptr %var.locals, align 8
  %a.null1903 = icmp eq ptr %a.load1902, null
  br i1 %a.null1903, label %a.create1904, label %a.after1905

choice.next1888:                                  ; preds = %choice.next1859
  %tag.gep1918 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1919 = load i64, ptr %tag.gep1918, align 8
  %tag.match1920 = icmp eq i64 %tag.id1919, 33
  br i1 %tag.match1920, label %choice.case1916, label %choice.next1917

a.create1904:                                     ; preds = %choice.case1887
  %arena.cur1906 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1907 = call ptr @dva_arena_alloc(ptr %arena.cur1906, i64 24)
  %arena.cur1908 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1909 = call ptr @dva_arena_alloc(ptr %arena.cur1908, i64 128)
  %a.len.gep1910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1907, i32 0, i32 0
  store i64 0, ptr %a.len.gep1910, align 8
  %a.data.gep1911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1907, i32 0, i32 1
  store ptr %a.buf1909, ptr %a.data.gep1911, align 8
  %a.cap.gep1912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1907, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1912, align 8
  store ptr %a.create1907, ptr %var.locals, align 8
  br label %a.after1905

a.after1905:                                      ; preds = %a.create1904, %choice.case1887
  %a.load21913 = load ptr, ptr %var.locals, align 8
  %var.load1914 = load ptr, ptr %var.cur_mod, align 8
  %call.res1915 = call ptr @"overloads::walk"(ptr %var.load1899, ptr %var.load1900, ptr %a.load21913, ptr %var.load1914)
  store ptr %call.res1915, ptr %pay.gep1898, align 8
  br label %choice.exit

choice.case1916:                                  ; preds = %choice.next1888
  %pay.gep1921 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1922 = load ptr, ptr %pay.gep1921, align 8
  store ptr %payload.ptr1922, ptr %var._1923, align 8
  store ptr %payload.ptr1922, ptr %var.ex, align 8
  %var.load1924 = load ptr, ptr %var.ex, align 8
  %var.load1925 = load ptr, ptr %var.table, align 8
  %var.load1926 = load ptr, ptr %var.locals, align 8
  %a.load1927 = load ptr, ptr %var.locals, align 8
  %a.null1928 = icmp eq ptr %a.load1927, null
  br i1 %a.null1928, label %a.create1929, label %a.after1930

choice.next1917:                                  ; preds = %choice.next1888
  %tag.gep1948 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1949 = load i64, ptr %tag.gep1948, align 8
  %tag.match1950 = icmp eq i64 %tag.id1949, 37
  br i1 %tag.match1950, label %choice.case1946, label %choice.next1947

a.create1929:                                     ; preds = %choice.case1916
  %arena.cur1931 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1932 = call ptr @dva_arena_alloc(ptr %arena.cur1931, i64 24)
  %arena.cur1933 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1934 = call ptr @dva_arena_alloc(ptr %arena.cur1933, i64 128)
  %a.len.gep1935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 0
  store i64 0, ptr %a.len.gep1935, align 8
  %a.data.gep1936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 1
  store ptr %a.buf1934, ptr %a.data.gep1936, align 8
  %a.cap.gep1937 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1932, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1937, align 8
  store ptr %a.create1932, ptr %var.locals, align 8
  br label %a.after1930

a.after1930:                                      ; preds = %a.create1929, %choice.case1916
  %a.load21938 = load ptr, ptr %var.locals, align 8
  %var.load1939 = load ptr, ptr %var.cur_mod, align 8
  %call.res1940 = call ptr @"overloads::walk"(ptr %var.load1924, ptr %var.load1925, ptr %a.load21938, ptr %var.load1939)
  store ptr %call.res1940, ptr %var.new_ex, align 8
  %arena.cur1941 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1942 = call ptr @dva_arena_alloc(ptr %arena.cur1941, i64 16)
  %tag.gep1943 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1942, i32 0, i32 0
  store i64 33, ptr %tag.gep1943, align 8
  %pay.gep1944 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1942, i32 0, i32 1
  %var.load1945 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1945, ptr %pay.gep1944, align 8
  br label %choice.exit

choice.case1946:                                  ; preds = %choice.next1917
  %pay.gep1951 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1952 = load ptr, ptr %pay.gep1951, align 8
  store ptr %payload.ptr1952, ptr %var._1953, align 8
  store ptr %payload.ptr1952, ptr %var.r1954, align 8
  %var.load1955 = load ptr, ptr %var.r1954, align 8
  %fld.gep1956 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1955, i32 0, i32 0
  %fld.load1957 = load i1, ptr %fld.gep1956, align 1
  br i1 %fld.load1957, label %choice.then1958, label %choice.else1959

choice.next1947:                                  ; preds = %choice.next1917
  %tag.gep2007 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2008 = load i64, ptr %tag.gep2007, align 8
  %tag.match2009 = icmp eq i64 %tag.id2008, 28
  br i1 %tag.match2009, label %choice.case2005, label %choice.next2006

choice.then1958:                                  ; preds = %choice.case1946
  %var.load1961 = load ptr, ptr %var.r1954, align 8
  %fld.gep1962 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1961, i32 0, i32 1
  %fld.load1963 = load ptr, ptr %fld.gep1962, align 8
  %var.load1964 = load ptr, ptr %var.table, align 8
  %var.load1965 = load ptr, ptr %var.locals, align 8
  %a.load1966 = load ptr, ptr %var.locals, align 8
  %a.null1967 = icmp eq ptr %a.load1966, null
  br i1 %a.null1967, label %a.create1968, label %a.after1969

choice.else1959:                                  ; preds = %choice.case1946
  %var.load1980 = load ptr, ptr %var.r1954, align 8
  %fld.gep1981 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1980, i32 0, i32 1
  %fld.load1982 = load ptr, ptr %fld.gep1981, align 8
  br label %choice.exit1960

choice.exit1960:                                  ; preds = %choice.else1959, %a.after1969
  %choice.res1983 = phi ptr [ %call.res1979, %a.after1969 ], [ %fld.load1982, %choice.else1959 ]
  store ptr %choice.res1983, ptr %var.new_val1984, align 8
  %arena.cur1985 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1986 = call ptr @dva_arena_alloc(ptr %arena.cur1985, i64 16)
  %tag.gep1987 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1986, i32 0, i32 0
  store i64 37, ptr %tag.gep1987, align 8
  %pay.gep1988 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1986, i32 0, i32 1
  %var.load1989 = load ptr, ptr %var.r1954, align 8
  %fld.gep1990 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1989, i32 0, i32 0
  %fld.load1991 = load i1, ptr %fld.gep1990, align 1
  %var.load1992 = load ptr, ptr %var.new_val1984, align 8
  %var.load1993 = load ptr, ptr %var.r1954, align 8
  %fld.gep1994 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1993, i32 0, i32 2
  %fld.load1995 = load i64, ptr %fld.gep1994, align 8
  %var.load1996 = load ptr, ptr %var.r1954, align 8
  %fld.gep1997 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1996, i32 0, i32 3
  %fld.load1998 = load i64, ptr %fld.gep1997, align 8
  %arena.cur1999 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2000 = call ptr @dva_arena_alloc(ptr %arena.cur1999, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2001 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2000, i32 0, i32 0
  store i1 %fld.load1991, ptr %rec.fld2001, align 1
  %rec.fld2002 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2000, i32 0, i32 1
  store ptr %var.load1992, ptr %rec.fld2002, align 8
  %rec.fld2003 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2000, i32 0, i32 2
  store i64 %fld.load1995, ptr %rec.fld2003, align 8
  %rec.fld2004 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2000, i32 0, i32 3
  store i64 %fld.load1998, ptr %rec.fld2004, align 8
  store ptr %rec.alloc2000, ptr %pay.gep1988, align 8
  br label %choice.exit

a.create1968:                                     ; preds = %choice.then1958
  %arena.cur1970 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1971 = call ptr @dva_arena_alloc(ptr %arena.cur1970, i64 24)
  %arena.cur1972 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1973 = call ptr @dva_arena_alloc(ptr %arena.cur1972, i64 128)
  %a.len.gep1974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 0
  store i64 0, ptr %a.len.gep1974, align 8
  %a.data.gep1975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 1
  store ptr %a.buf1973, ptr %a.data.gep1975, align 8
  %a.cap.gep1976 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1976, align 8
  store ptr %a.create1971, ptr %var.locals, align 8
  br label %a.after1969

a.after1969:                                      ; preds = %a.create1968, %choice.then1958
  %a.load21977 = load ptr, ptr %var.locals, align 8
  %var.load1978 = load ptr, ptr %var.cur_mod, align 8
  %call.res1979 = call ptr @"overloads::walk"(ptr %fld.load1963, ptr %var.load1964, ptr %a.load21977, ptr %var.load1978)
  br label %choice.exit1960

choice.case2005:                                  ; preds = %choice.next1947
  %pay.gep2010 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2011 = load ptr, ptr %pay.gep2010, align 8
  store ptr %payload.ptr2011, ptr %var._2012, align 8
  store ptr %payload.ptr2011, ptr %var.ac, align 8
  %var.load2013 = load ptr, ptr %var.ac, align 8
  %fld.gep2014 = getelementptr inbounds { ptr, i64 }, ptr %var.load2013, i32 0, i32 0
  %fld.load2015 = load ptr, ptr %fld.gep2014, align 8
  %var.load2016 = load ptr, ptr %var.table, align 8
  %call.res2017 = call ptr @"overloads::keep_type"(ptr %fld.load2015, ptr %var.load2016)
  store ptr %call.res2017, ptr %var.new_elem, align 8
  %arena.cur2018 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2019 = call ptr @dva_arena_alloc(ptr %arena.cur2018, i64 16)
  %tag.gep2020 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2019, i32 0, i32 0
  store i64 28, ptr %tag.gep2020, align 8
  %pay.gep2021 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2019, i32 0, i32 1
  %var.load2022 = load ptr, ptr %var.new_elem, align 8
  %var.load2023 = load ptr, ptr %var.ac, align 8
  %fld.gep2024 = getelementptr inbounds { ptr, i64 }, ptr %var.load2023, i32 0, i32 1
  %fld.load2025 = load i64, ptr %fld.gep2024, align 8
  %arena.cur2026 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2027 = call ptr @dva_arena_alloc(ptr %arena.cur2026, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2028 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2027, i32 0, i32 0
  store ptr %var.load2022, ptr %rec.fld2028, align 8
  %rec.fld2029 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2027, i32 0, i32 1
  store i64 %fld.load2025, ptr %rec.fld2029, align 8
  store ptr %rec.alloc2027, ptr %pay.gep2021, align 8
  br label %choice.exit

choice.next2006:                                  ; preds = %choice.next1947
  %tag.gep2032 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2033 = load i64, ptr %tag.gep2032, align 8
  %tag.match2034 = icmp eq i64 %tag.id2033, 38
  br i1 %tag.match2034, label %choice.case2030, label %choice.next2031

choice.case2030:                                  ; preds = %choice.next2006
  %pay.gep2035 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2036 = load ptr, ptr %pay.gep2035, align 8
  store ptr %payload.ptr2036, ptr %var._2037, align 8
  store ptr %payload.ptr2036, ptr %var.ud, align 8
  %var.load2038 = load ptr, ptr %var.ud, align 8
  %fld.gep2039 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2038, i32 0, i32 1
  %fld.load2040 = load ptr, ptr %fld.gep2039, align 8
  %var.load2041 = load ptr, ptr %var.table, align 8
  %var.load2042 = load ptr, ptr %var.locals, align 8
  %a.load2043 = load ptr, ptr %var.locals, align 8
  %a.null2044 = icmp eq ptr %a.load2043, null
  br i1 %a.null2044, label %a.create2045, label %a.after2046

choice.next2031:                                  ; preds = %choice.next2006
  %tag.gep2079 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2080 = load i64, ptr %tag.gep2079, align 8
  %tag.match2081 = icmp eq i64 %tag.id2080, 19
  br i1 %tag.match2081, label %choice.case2077, label %choice.next2078

a.create2045:                                     ; preds = %choice.case2030
  %arena.cur2047 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2048 = call ptr @dva_arena_alloc(ptr %arena.cur2047, i64 24)
  %arena.cur2049 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2050 = call ptr @dva_arena_alloc(ptr %arena.cur2049, i64 128)
  %a.len.gep2051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 0
  store i64 0, ptr %a.len.gep2051, align 8
  %a.data.gep2052 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 1
  store ptr %a.buf2050, ptr %a.data.gep2052, align 8
  %a.cap.gep2053 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2053, align 8
  store ptr %a.create2048, ptr %var.locals, align 8
  br label %a.after2046

a.after2046:                                      ; preds = %a.create2045, %choice.case2030
  %a.load22054 = load ptr, ptr %var.locals, align 8
  %var.load2055 = load ptr, ptr %var.cur_mod, align 8
  %call.res2056 = call ptr @"overloads::walk"(ptr %fld.load2040, ptr %var.load2041, ptr %a.load22054, ptr %var.load2055)
  store ptr %call.res2056, ptr %var.new_msg, align 8
  %arena.cur2057 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2058 = call ptr @dva_arena_alloc(ptr %arena.cur2057, i64 16)
  %tag.gep2059 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2058, i32 0, i32 0
  store i64 38, ptr %tag.gep2059, align 8
  %pay.gep2060 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2058, i32 0, i32 1
  %var.load2061 = load ptr, ptr %var.ud, align 8
  %fld.gep2062 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2061, i32 0, i32 0
  %fld.load2063 = load i1, ptr %fld.gep2062, align 1
  %var.load2064 = load ptr, ptr %var.new_msg, align 8
  %var.load2065 = load ptr, ptr %var.ud, align 8
  %fld.gep2066 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2065, i32 0, i32 2
  %fld.load2067 = load i64, ptr %fld.gep2066, align 8
  %var.load2068 = load ptr, ptr %var.ud, align 8
  %fld.gep2069 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2068, i32 0, i32 3
  %fld.load2070 = load i64, ptr %fld.gep2069, align 8
  %arena.cur2071 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2072 = call ptr @dva_arena_alloc(ptr %arena.cur2071, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2073 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2072, i32 0, i32 0
  store i1 %fld.load2063, ptr %rec.fld2073, align 1
  %rec.fld2074 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2072, i32 0, i32 1
  store ptr %var.load2064, ptr %rec.fld2074, align 8
  %rec.fld2075 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2072, i32 0, i32 2
  store i64 %fld.load2067, ptr %rec.fld2075, align 8
  %rec.fld2076 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2072, i32 0, i32 3
  store i64 %fld.load2070, ptr %rec.fld2076, align 8
  store ptr %rec.alloc2072, ptr %pay.gep2060, align 8
  br label %choice.exit

choice.case2077:                                  ; preds = %choice.next2031
  %pay.gep2082 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2083 = load ptr, ptr %pay.gep2082, align 8
  store ptr %payload.ptr2083, ptr %var._2084, align 8
  store ptr %payload.ptr2083, ptr %var.rm, align 8
  %var.load2085 = load ptr, ptr %var.rm, align 8
  %fld.gep2086 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2085, i32 0, i32 0
  %fld.load2087 = load ptr, ptr %fld.gep2086, align 8
  %var.load2088 = load ptr, ptr %var.table, align 8
  %var.load2089 = load ptr, ptr %var.locals, align 8
  %a.load2090 = load ptr, ptr %var.locals, align 8
  %a.null2091 = icmp eq ptr %a.load2090, null
  br i1 %a.null2091, label %a.create2092, label %a.after2093

choice.next2078:                                  ; preds = %choice.next2031
  %tag.gep2122 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2123 = load i64, ptr %tag.gep2122, align 8
  %tag.match2124 = icmp eq i64 %tag.id2123, 26
  br i1 %tag.match2124, label %choice.case2120, label %choice.next2121

a.create2092:                                     ; preds = %choice.case2077
  %arena.cur2094 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2095 = call ptr @dva_arena_alloc(ptr %arena.cur2094, i64 24)
  %arena.cur2096 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2097 = call ptr @dva_arena_alloc(ptr %arena.cur2096, i64 128)
  %a.len.gep2098 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2095, i32 0, i32 0
  store i64 0, ptr %a.len.gep2098, align 8
  %a.data.gep2099 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2095, i32 0, i32 1
  store ptr %a.buf2097, ptr %a.data.gep2099, align 8
  %a.cap.gep2100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2095, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2100, align 8
  store ptr %a.create2095, ptr %var.locals, align 8
  br label %a.after2093

a.after2093:                                      ; preds = %a.create2092, %choice.case2077
  %a.load22101 = load ptr, ptr %var.locals, align 8
  %var.load2102 = load ptr, ptr %var.cur_mod, align 8
  %call.res2103 = call ptr @"overloads::walk"(ptr %fld.load2087, ptr %var.load2088, ptr %a.load22101, ptr %var.load2102)
  store ptr %call.res2103, ptr %var.new_addr, align 8
  %arena.cur2104 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2105 = call ptr @dva_arena_alloc(ptr %arena.cur2104, i64 16)
  %tag.gep2106 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2105, i32 0, i32 0
  store i64 19, ptr %tag.gep2106, align 8
  %pay.gep2107 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2105, i32 0, i32 1
  %var.load2108 = load ptr, ptr %var.new_addr, align 8
  %var.load2109 = load ptr, ptr %var.rm, align 8
  %fld.gep2110 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2109, i32 0, i32 1
  %fld.load2111 = load ptr, ptr %fld.gep2110, align 8
  %var.load2112 = load ptr, ptr %var.rm, align 8
  %fld.gep2113 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2112, i32 0, i32 2
  %fld.load2114 = load ptr, ptr %fld.gep2113, align 8
  %arena.cur2115 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2116 = call ptr @dva_arena_alloc(ptr %arena.cur2115, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2117 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2116, i32 0, i32 0
  store ptr %var.load2108, ptr %rec.fld2117, align 8
  %rec.fld2118 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2116, i32 0, i32 1
  store ptr %fld.load2111, ptr %rec.fld2118, align 8
  %rec.fld2119 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2116, i32 0, i32 2
  store ptr %fld.load2114, ptr %rec.fld2119, align 8
  store ptr %rec.alloc2116, ptr %pay.gep2107, align 8
  br label %choice.exit

choice.case2120:                                  ; preds = %choice.next2078
  %pay.gep2125 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2126 = load ptr, ptr %pay.gep2125, align 8
  store ptr %payload.ptr2126, ptr %var._2127, align 8
  store ptr %payload.ptr2126, ptr %var.so, align 8
  %var.load2128 = load ptr, ptr %var.so, align 8
  %fld.gep2129 = getelementptr inbounds { ptr, ptr }, ptr %var.load2128, i32 0, i32 1
  %fld.load2130 = load ptr, ptr %fld.gep2129, align 8
  %var.load2131 = load ptr, ptr %var.table, align 8
  %call.res2132 = call ptr @"overloads::keep_type"(ptr %fld.load2130, ptr %var.load2131)
  store ptr %call.res2132, ptr %var.new_sti, align 8
  %arena.cur2133 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2134 = call ptr @dva_arena_alloc(ptr %arena.cur2133, i64 16)
  %tag.gep2135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2134, i32 0, i32 0
  store i64 26, ptr %tag.gep2135, align 8
  %pay.gep2136 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2134, i32 0, i32 1
  %var.load2137 = load ptr, ptr %var.so, align 8
  %fld.gep2138 = getelementptr inbounds { ptr, ptr }, ptr %var.load2137, i32 0, i32 0
  %fld.load2139 = load ptr, ptr %fld.gep2138, align 8
  %var.load2140 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2141 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2142 = call ptr @dva_arena_alloc(ptr %arena.cur2141, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2143 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2142, i32 0, i32 0
  store ptr %fld.load2139, ptr %rec.fld2143, align 8
  %rec.fld2144 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2142, i32 0, i32 1
  store ptr %var.load2140, ptr %rec.fld2144, align 8
  store ptr %rec.alloc2142, ptr %pay.gep2136, align 8
  br label %choice.exit

choice.next2121:                                  ; preds = %choice.next2078
  %tag.gep2147 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2148 = load i64, ptr %tag.gep2147, align 8
  %tag.match2149 = icmp eq i64 %tag.id2148, 29
  br i1 %tag.match2149, label %choice.case2145, label %choice.next2146

choice.case2145:                                  ; preds = %choice.next2121
  %pay.gep2150 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2151 = load ptr, ptr %pay.gep2150, align 8
  store ptr %payload.ptr2151, ptr %var._2152, align 8
  store ptr %payload.ptr2151, ptr %var.ml, align 8
  %arena.cur2153 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new2154 = call ptr @dva_arena_alloc(ptr %arena.cur2153, i64 24)
  %arena.cur2155 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2156 = call ptr @dva_arena_alloc(ptr %arena.cur2155, i64 128)
  %a.len.gep2157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2154, i32 0, i32 0
  store i64 0, ptr %a.len.gep2157, align 8
  %a.data.gep2158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2154, i32 0, i32 1
  store ptr %a.buf2156, ptr %a.data.gep2158, align 8
  %a.cap.gep2159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2154, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2159, align 8
  store ptr %a.new2154, ptr %var.new_pairs, align 8
  %var.load2160 = load ptr, ptr %var.ml, align 8
  %a.load2161 = load ptr, ptr %var.ml, align 8
  %a.null2162 = icmp eq ptr %a.load2161, null
  br i1 %a.null2162, label %a.create2163, label %a.after2164

choice.next2146:                                  ; preds = %choice.next2121
  %tag.gep2278 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2279 = load i64, ptr %tag.gep2278, align 8
  %tag.match2280 = icmp eq i64 %tag.id2279, 30
  br i1 %tag.match2280, label %choice.case2276, label %choice.next2277

a.create2163:                                     ; preds = %choice.case2145
  %arena.cur2165 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2166 = call ptr @dva_arena_alloc(ptr %arena.cur2165, i64 24)
  %arena.cur2167 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2168 = call ptr @dva_arena_alloc(ptr %arena.cur2167, i64 128)
  %a.len.gep2169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2166, i32 0, i32 0
  store i64 0, ptr %a.len.gep2169, align 8
  %a.data.gep2170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2166, i32 0, i32 1
  store ptr %a.buf2168, ptr %a.data.gep2170, align 8
  %a.cap.gep2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2166, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2171, align 8
  store ptr %a.create2166, ptr %var.ml, align 8
  br label %a.after2164

a.after2164:                                      ; preds = %a.create2163, %choice.case2145
  %a.load22172 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22172, i32 0, i32 0
  %arr.cycle.len2174 = load i64, ptr %arr.cycle.len2173, align 8
  %arr.cycle.data2175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22172, i32 0, i32 1
  %arr.cycle.data2176 = load ptr, ptr %arr.cycle.data2175, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after2164
  %counter.load2177 = load i64, ptr %loop.idx.86, align 8
  %loop.cond2178 = icmp slt i64 %counter.load2177, %arr.cycle.len2174
  br i1 %loop.cond2178, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i2179 = sub i64 %counter.load2177, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep2180 = getelementptr i64, ptr %arr.cycle.data2176, i64 %counter.load2177
  %arr.elem.raw2181 = load i64, ptr %arr.elem.gep2180, align 8
  %slot.i2p2182 = inttoptr i64 %arr.elem.raw2181 to ptr
  store ptr %slot.i2p2182, ptr %var._2183, align 8
  store ptr %slot.i2p2182, ptr %var.p2184, align 8
  store i64 %loop.rel.i2179, ptr %var._i2185, align 8
  %var.load2186 = load ptr, ptr %var.p2184, align 8
  %fld.gep2187 = getelementptr inbounds { ptr, ptr }, ptr %var.load2186, i32 0, i32 0
  %fld.load2188 = load ptr, ptr %fld.gep2187, align 8
  %var.load2189 = load ptr, ptr %var.table, align 8
  %var.load2190 = load ptr, ptr %var.locals, align 8
  %a.load2191 = load ptr, ptr %var.locals, align 8
  %a.null2192 = icmp eq ptr %a.load2191, null
  br i1 %a.null2192, label %a.create2193, label %a.after2194

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store2243
  %step.val2257 = load i64, ptr %loop.step.86, align 8
  %loop.next2258 = add i64 %counter.load2177, %step.val2257
  store i64 %loop.next2258, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %arena.cur2259 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2260 = call ptr @dva_arena_alloc(ptr %arena.cur2259, i64 16)
  %tag.gep2261 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2260, i32 0, i32 0
  store i64 29, ptr %tag.gep2261, align 8
  %pay.gep2262 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2260, i32 0, i32 1
  %var.load2263 = load ptr, ptr %var.new_pairs, align 8
  %a.load2264 = load ptr, ptr %var.new_pairs, align 8
  %a.null2265 = icmp eq ptr %a.load2264, null
  br i1 %a.null2265, label %a.create2266, label %a.after2267

a.create2193:                                     ; preds = %loop.body.86
  %arena.cur2195 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2196 = call ptr @dva_arena_alloc(ptr %arena.cur2195, i64 24)
  %arena.cur2197 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2198 = call ptr @dva_arena_alloc(ptr %arena.cur2197, i64 128)
  %a.len.gep2199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2196, i32 0, i32 0
  store i64 0, ptr %a.len.gep2199, align 8
  %a.data.gep2200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2196, i32 0, i32 1
  store ptr %a.buf2198, ptr %a.data.gep2200, align 8
  %a.cap.gep2201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2196, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2201, align 8
  store ptr %a.create2196, ptr %var.locals, align 8
  br label %a.after2194

a.after2194:                                      ; preds = %a.create2193, %loop.body.86
  %a.load22202 = load ptr, ptr %var.locals, align 8
  %var.load2203 = load ptr, ptr %var.cur_mod, align 8
  %call.res2204 = call ptr @"overloads::walk"(ptr %fld.load2188, ptr %var.load2189, ptr %a.load22202, ptr %var.load2203)
  %var.load2205 = load ptr, ptr %var.p2184, align 8
  %fld.gep2206 = getelementptr inbounds { ptr, ptr }, ptr %var.load2205, i32 0, i32 1
  %fld.load2207 = load ptr, ptr %fld.gep2206, align 8
  %var.load2208 = load ptr, ptr %var.table, align 8
  %var.load2209 = load ptr, ptr %var.locals, align 8
  %a.load2210 = load ptr, ptr %var.locals, align 8
  %a.null2211 = icmp eq ptr %a.load2210, null
  br i1 %a.null2211, label %a.create2212, label %a.after2213

a.create2212:                                     ; preds = %a.after2194
  %arena.cur2214 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2215 = call ptr @dva_arena_alloc(ptr %arena.cur2214, i64 24)
  %arena.cur2216 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2217 = call ptr @dva_arena_alloc(ptr %arena.cur2216, i64 128)
  %a.len.gep2218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2215, i32 0, i32 0
  store i64 0, ptr %a.len.gep2218, align 8
  %a.data.gep2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2215, i32 0, i32 1
  store ptr %a.buf2217, ptr %a.data.gep2219, align 8
  %a.cap.gep2220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2215, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2220, align 8
  store ptr %a.create2215, ptr %var.locals, align 8
  br label %a.after2213

a.after2213:                                      ; preds = %a.create2212, %a.after2194
  %a.load22221 = load ptr, ptr %var.locals, align 8
  %var.load2222 = load ptr, ptr %var.cur_mod, align 8
  %call.res2223 = call ptr @"overloads::walk"(ptr %fld.load2207, ptr %var.load2208, ptr %a.load22221, ptr %var.load2222)
  %arena.cur2224 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2225 = call ptr @dva_arena_alloc(ptr %arena.cur2224, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2226 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2225, i32 0, i32 0
  store ptr %call.res2204, ptr %rec.fld2226, align 8
  %rec.fld2227 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2225, i32 0, i32 1
  store ptr %call.res2223, ptr %rec.fld2227, align 8
  %a.load2229 = load ptr, ptr %var.new_pairs, align 8
  %a.null2230 = icmp eq ptr %a.load2229, null
  br i1 %a.null2230, label %a.create2231, label %a.after2232

a.create2231:                                     ; preds = %a.after2213
  %arena.cur2233 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2234 = call ptr @dva_arena_alloc(ptr %arena.cur2233, i64 24)
  %arena.cur2235 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2236 = call ptr @dva_arena_alloc(ptr %arena.cur2235, i64 128)
  %a.len.gep2237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2234, i32 0, i32 0
  store i64 0, ptr %a.len.gep2237, align 8
  %a.data.gep2238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2234, i32 0, i32 1
  store ptr %a.buf2236, ptr %a.data.gep2238, align 8
  %a.cap.gep2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2239, align 8
  store ptr %a.create2234, ptr %var.new_pairs, align 8
  br label %a.after2232

a.after2232:                                      ; preds = %a.create2231, %a.after2213
  %a.load22240 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2241

a.check2241:                                      ; preds = %a.after2232
  %a.len2244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22240, i32 0, i32 0
  %a.len2245 = load i64, ptr %a.len2244, align 8
  %a.cap2246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22240, i32 0, i32 2
  %a.cap2247 = load i64, ptr %a.cap2246, align 8
  %a.needs.grow2248 = icmp eq i64 %a.len2245, %a.cap2247
  br i1 %a.needs.grow2248, label %a.grow2242, label %a.store2243

a.grow2242:                                       ; preds = %a.check2241
  call void @dva_array_grow(ptr %a.load22240)
  br label %a.store2243

a.store2243:                                      ; preds = %a.grow2242, %a.check2241
  %a.cur.data2249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22240, i32 0, i32 1
  %a.cur.data2250 = load ptr, ptr %a.cur.data2249, align 8
  %a.cur.len2251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22240, i32 0, i32 0
  %a.cur.len2252 = load i64, ptr %a.cur.len2251, align 8
  %a.elem.gep2253 = getelementptr i64, ptr %a.cur.data2250, i64 %a.cur.len2252
  %slot.p2i2254 = ptrtoint ptr %rec.alloc2225 to i64
  store i64 %slot.p2i2254, ptr %a.elem.gep2253, align 8
  %a.next.len2255 = add i64 %a.cur.len2252, 1
  %b.len.gep2256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22240, i32 0, i32 0
  store i64 %a.next.len2255, ptr %b.len.gep2256, align 8
  br label %loop.latch.86

a.create2266:                                     ; preds = %loop.exit.86
  %arena.cur2268 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2269 = call ptr @dva_arena_alloc(ptr %arena.cur2268, i64 24)
  %arena.cur2270 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2271 = call ptr @dva_arena_alloc(ptr %arena.cur2270, i64 128)
  %a.len.gep2272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2269, i32 0, i32 0
  store i64 0, ptr %a.len.gep2272, align 8
  %a.data.gep2273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2269, i32 0, i32 1
  store ptr %a.buf2271, ptr %a.data.gep2273, align 8
  %a.cap.gep2274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2269, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2274, align 8
  store ptr %a.create2269, ptr %var.new_pairs, align 8
  br label %a.after2267

a.after2267:                                      ; preds = %a.create2266, %loop.exit.86
  %a.load22275 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22275, ptr %pay.gep2262, align 8
  br label %choice.exit

choice.case2276:                                  ; preds = %choice.next2146
  %pay.gep2281 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2282 = load ptr, ptr %pay.gep2281, align 8
  store ptr %payload.ptr2282, ptr %var._2283, align 8
  store ptr %payload.ptr2282, ptr %var.ct, align 8
  %var.load2284 = load ptr, ptr %var.ct, align 8
  %var.load2285 = load ptr, ptr %var.table, align 8
  %var.load2286 = load ptr, ptr %var.locals, align 8
  %a.load2287 = load ptr, ptr %var.locals, align 8
  %a.null2288 = icmp eq ptr %a.load2287, null
  br i1 %a.null2288, label %a.create2289, label %a.after2290

choice.next2277:                                  ; preds = %choice.next2146
  %tag.gep2308 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2309 = load i64, ptr %tag.gep2308, align 8
  %tag.match2310 = icmp eq i64 %tag.id2309, 25
  br i1 %tag.match2310, label %choice.case2306, label %choice.next2307

a.create2289:                                     ; preds = %choice.case2276
  %arena.cur2291 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2292 = call ptr @dva_arena_alloc(ptr %arena.cur2291, i64 24)
  %arena.cur2293 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2294 = call ptr @dva_arena_alloc(ptr %arena.cur2293, i64 128)
  %a.len.gep2295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2292, i32 0, i32 0
  store i64 0, ptr %a.len.gep2295, align 8
  %a.data.gep2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2292, i32 0, i32 1
  store ptr %a.buf2294, ptr %a.data.gep2296, align 8
  %a.cap.gep2297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2292, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2297, align 8
  store ptr %a.create2292, ptr %var.locals, align 8
  br label %a.after2290

a.after2290:                                      ; preds = %a.create2289, %choice.case2276
  %a.load22298 = load ptr, ptr %var.locals, align 8
  %var.load2299 = load ptr, ptr %var.cur_mod, align 8
  %call.res2300 = call ptr @"overloads::walk"(ptr %var.load2284, ptr %var.load2285, ptr %a.load22298, ptr %var.load2299)
  store ptr %call.res2300, ptr %var.new_ce, align 8
  %arena.cur2301 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2302 = call ptr @dva_arena_alloc(ptr %arena.cur2301, i64 16)
  %tag.gep2303 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2302, i32 0, i32 0
  store i64 30, ptr %tag.gep2303, align 8
  %pay.gep2304 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2302, i32 0, i32 1
  %var.load2305 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2305, ptr %pay.gep2304, align 8
  br label %choice.exit

choice.case2306:                                  ; preds = %choice.next2277
  %pay.gep2311 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2312 = load ptr, ptr %pay.gep2311, align 8
  store ptr %payload.ptr2312, ptr %var._2313, align 8
  store ptr %payload.ptr2312, ptr %var.cp2314, align 8
  %arena.cur2315 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2316 = call ptr @dva_arena_alloc(ptr %arena.cur2315, i64 16)
  %tag.gep2317 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2316, i32 0, i32 0
  store i64 25, ptr %tag.gep2317, align 8
  %pay.gep2318 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2316, i32 0, i32 1
  %var.load2319 = load ptr, ptr %var.cp2314, align 8
  %var.load2320 = load ptr, ptr %var.table, align 8
  %var.load2321 = load ptr, ptr %var.locals, align 8
  %a.load2322 = load ptr, ptr %var.locals, align 8
  %a.null2323 = icmp eq ptr %a.load2322, null
  br i1 %a.null2323, label %a.create2324, label %a.after2325

choice.next2307:                                  ; preds = %choice.next2277
  %tag.gep2338 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2339 = load i64, ptr %tag.gep2338, align 8
  %tag.match2340 = icmp eq i64 %tag.id2339, 27
  br i1 %tag.match2340, label %choice.case2336, label %choice.next2337

a.create2324:                                     ; preds = %choice.case2306
  %arena.cur2326 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2327 = call ptr @dva_arena_alloc(ptr %arena.cur2326, i64 24)
  %arena.cur2328 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2329 = call ptr @dva_arena_alloc(ptr %arena.cur2328, i64 128)
  %a.len.gep2330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2327, i32 0, i32 0
  store i64 0, ptr %a.len.gep2330, align 8
  %a.data.gep2331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2327, i32 0, i32 1
  store ptr %a.buf2329, ptr %a.data.gep2331, align 8
  %a.cap.gep2332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2327, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2332, align 8
  store ptr %a.create2327, ptr %var.locals, align 8
  br label %a.after2325

a.after2325:                                      ; preds = %a.create2324, %choice.case2306
  %a.load22333 = load ptr, ptr %var.locals, align 8
  %var.load2334 = load ptr, ptr %var.cur_mod, align 8
  %call.res2335 = call ptr @"overloads::walk"(ptr %var.load2319, ptr %var.load2320, ptr %a.load22333, ptr %var.load2334)
  store ptr %call.res2335, ptr %pay.gep2318, align 8
  br label %choice.exit

choice.case2336:                                  ; preds = %choice.next2307
  %pay.gep2341 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2342 = load ptr, ptr %pay.gep2341, align 8
  store ptr %payload.ptr2342, ptr %var._2343, align 8
  store ptr %payload.ptr2342, ptr %var.bc, align 8
  %arena.cur2344 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2345 = call ptr @dva_arena_alloc(ptr %arena.cur2344, i64 16)
  %tag.gep2346 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2345, i32 0, i32 0
  store i64 27, ptr %tag.gep2346, align 8
  %pay.gep2347 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2345, i32 0, i32 1
  %var.load2348 = load ptr, ptr %var.bc, align 8
  %var.load2349 = load ptr, ptr %var.table, align 8
  %var.load2350 = load ptr, ptr %var.locals, align 8
  %a.load2351 = load ptr, ptr %var.locals, align 8
  %a.null2352 = icmp eq ptr %a.load2351, null
  br i1 %a.null2352, label %a.create2353, label %a.after2354

choice.next2337:                                  ; preds = %choice.next2307
  %var.load2365 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2353:                                     ; preds = %choice.case2336
  %arena.cur2355 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2356 = call ptr @dva_arena_alloc(ptr %arena.cur2355, i64 24)
  %arena.cur2357 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2358 = call ptr @dva_arena_alloc(ptr %arena.cur2357, i64 128)
  %a.len.gep2359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2356, i32 0, i32 0
  store i64 0, ptr %a.len.gep2359, align 8
  %a.data.gep2360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2356, i32 0, i32 1
  store ptr %a.buf2358, ptr %a.data.gep2360, align 8
  %a.cap.gep2361 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2356, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2361, align 8
  store ptr %a.create2356, ptr %var.locals, align 8
  br label %a.after2354

a.after2354:                                      ; preds = %a.create2353, %choice.case2336
  %a.load22362 = load ptr, ptr %var.locals, align 8
  %var.load2363 = load ptr, ptr %var.cur_mod, align 8
  %call.res2364 = call ptr @"overloads::walk"(ptr %var.load2348, ptr %var.load2349, ptr %a.load22362, ptr %var.load2363)
  store ptr %call.res2364, ptr %pay.gep2347, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._85 = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load83 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

loop.exit.nat.74:                                 ; preds = %loop.header.74
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
  %var._i152 = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %var._151 = alloca ptr, align 8
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
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._32 = alloca ptr, align 8
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
  store ptr %slot.i2p, ptr %var._32, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  store ptr %slot.i2p150, ptr %var._151, align 8
  store ptr %slot.i2p150, ptr %var.d, align 8
  store i64 %loop.rel.i147, ptr %var._i152, align 8
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
