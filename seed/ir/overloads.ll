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
@expect.reason.76 = internal unnamed_addr constant [26 x i8] c"expect: required payload\0A\00"
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
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
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
  %fld.gep15 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %tag.gep20 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %tag.id21 = load i64, ptr %tag.gep20, align 8
  %tag.match22 = icmp eq i64 %tag.id21, 13
  br i1 %tag.match22, label %choice.case18, label %choice.next19

choice.case3:                                     ; preds = %choice.case
  %var.load8 = load ptr, ptr %var.b, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 2
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  br label %choice.exit2

choice.next4:                                     ; preds = %choice.case
  %var.load11 = load ptr, ptr %var.b, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 1
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
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  br label %choice.exit17

choice.next19:                                    ; preds = %choice.exit2
  %var.load26 = load ptr, ptr %var.b, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 2
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
  %fld.gep41 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load40, i32 0, i32 0
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
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load66, i32 0, i32 0
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
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load122, i32 0, i32 0
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
  %var._2366 = alloca ptr, align 8
  %var.cp2337 = alloca ptr, align 8
  %var._2336 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2306 = alloca ptr, align 8
  %var._i2209 = alloca i64, align 8
  %var.p2208 = alloca ptr, align 8
  %var._2207 = alloca ptr, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2176 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2151 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2108 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2061 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2036 = alloca ptr, align 8
  %var.new_val2008 = alloca ptr, align 8
  %var.r1978 = alloca ptr, align 8
  %var._1977 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1947 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1918 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1889 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1850 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1799 = alloca ptr, align 8
  %var._1798 = alloca ptr, align 8
  %var.new_val1778 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1758 = alloca ptr, align 8
  %var.new_rhs1728 = alloca ptr, align 8
  %var.new_lhs1698 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1668 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1612 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1548 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1476 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._i1383 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %var._1382 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1361 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1279 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1219 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1194 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1086 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1045 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1029 = alloca ptr, align 8
  %var.eff_mod = alloca ptr, align 8
  %var.is_top = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._972 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._i765 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %var._764 = alloca ptr, align 8
  %loop.step.82 = alloca i64, align 8
  %loop.idx.82 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._i721 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %var._720 = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._680 = alloca ptr, align 8
  %ret.ub.salloc605 = alloca { i64, ptr }, align 8
  %var.ca = alloca ptr, align 8
  %var._584 = alloca ptr, align 8
  %var._i529 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %var._528 = alloca ptr, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._469 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._i368 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %var._367 = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %var._306 = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._266 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._220 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2360, %a.after2377, %a.after2348, %a.after2313, %a.after2290, %choice.case2144, %a.after2117, %a.after2070, %choice.case2029, %choice.exit1984, %a.after1954, %a.after1929, %a.after1900, %a.after1859, %a.after1830, %a.after1767, %choice.exit1704, %a.after1640, %a.after1576, %a.after1504, %a.after1453, %choice.exit1285, %a.after1247, %choice.case1187, %a.after1140, %a.after951, %a.after664, %a.after427, %a.after236, %choice.exit28, %a.after, %choice.case
  %choice.res2389 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res212, %choice.exit28 ], [ %enum.alloc222, %a.after236 ], [ %enum.alloc439, %a.after427 ], [ %enum.alloc657, %a.after664 ], [ %enum.alloc940, %a.after951 ], [ %enum.alloc1152, %a.after1140 ], [ %enum.alloc1201, %choice.case1187 ], [ %enum.alloc1231, %a.after1247 ], [ %choice.res1353, %choice.exit1285 ], [ %enum.alloc1446, %a.after1453 ], [ %enum.alloc1516, %a.after1504 ], [ %enum.alloc1588, %a.after1576 ], [ %enum.alloc1652, %a.after1640 ], [ %enum.alloc1730, %choice.exit1704 ], [ %enum.alloc1780, %a.after1767 ], [ %enum.alloc1820, %a.after1830 ], [ %enum.alloc1871, %a.after1859 ], [ %enum.alloc1891, %a.after1900 ], [ %enum.alloc1920, %a.after1929 ], [ %enum.alloc1966, %a.after1954 ], [ %enum.alloc2010, %choice.exit1984 ], [ %enum.alloc2043, %choice.case2029 ], [ %enum.alloc2082, %a.after2070 ], [ %enum.alloc2129, %a.after2117 ], [ %enum.alloc2158, %choice.case2144 ], [ %enum.alloc2283, %a.after2290 ], [ %enum.alloc2325, %a.after2313 ], [ %enum.alloc2339, %a.after2348 ], [ %enum.alloc2368, %a.after2377 ], [ %var.load2388, %choice.next2360 ]
  ret ptr %choice.res2389

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
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load27, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep31 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id32 = load i64, ptr %tag.gep31, align 8
  %tag.match33 = icmp eq i64 %tag.id32, 13
  %tag.match34 = icmp eq i64 %tag.id32, 14
  %tag.or = or i1 %tag.match33, %tag.match34
  br i1 %tag.or, label %choice.case29, label %choice.next30

choice.next20:                                    ; preds = %choice.next3
  %tag.gep215 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id216 = load i64, ptr %tag.gep215, align 8
  %tag.match217 = icmp eq i64 %tag.id216, 24
  br i1 %tag.match217, label %choice.case213, label %choice.next214

choice.exit28:                                    ; preds = %a.after188, %choice.exit79
  %choice.res212 = phi ptr [ %choice.res153, %choice.exit79 ], [ %enum.alloc155, %a.after188 ]
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
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 16)
  %tag.gep156 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc155, i32 0, i32 0
  store i64 5, ptr %tag.gep156, align 8
  %pay.gep157 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc155, i32 0, i32 1
  %var.load158 = load ptr, ptr %var.b, align 8
  %fld.gep159 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load158, i32 0, i32 0
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.b, align 8
  %fld.gep162 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load161, i32 0, i32 1
  %fld.load163 = load ptr, ptr %fld.gep162, align 8
  %var.load164 = load ptr, ptr %var.table, align 8
  %var.load165 = load ptr, ptr %var.locals, align 8
  %a.load166 = load ptr, ptr %var.locals, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

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
  %fld.gep102 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load101, i32 0, i32 0
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %var.load104 = load ptr, ptr %var.b, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load104, i32 0, i32 1
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %var.load107 = load ptr, ptr %var.table, align 8
  %var.load108 = load ptr, ptr %var.locals, align 8
  %a.load109 = load ptr, ptr %var.locals, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

choice.exit79:                                    ; preds = %a.after131, %a.after86
  %choice.res153 = phi ptr [ %call.res96, %a.after86 ], [ %enum.alloc98, %a.after131 ]
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
  %fld.gep124 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load123, i32 0, i32 2
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
  %var.load142 = load ptr, ptr %var.b, align 8
  %fld.gep143 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load142, i32 0, i32 3
  %fld.load144 = load i64, ptr %fld.gep143, align 8
  %var.load145 = load ptr, ptr %var.b, align 8
  %fld.gep146 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load145, i32 0, i32 4
  %fld.load147 = load i64, ptr %fld.gep146, align 8
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load103, ptr %rec.fld, align 8
  %rec.fld149 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res122, ptr %rec.fld149, align 8
  %rec.fld150 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res141, ptr %rec.fld150, align 8
  %rec.fld151 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load144, ptr %rec.fld151, align 8
  %rec.fld152 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load147, ptr %rec.fld152, align 8
  store ptr %rec.alloc, ptr %pay.gep100, align 8
  br label %choice.exit79

a.create168:                                      ; preds = %choice.next30
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 128)
  %a.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 0
  store i64 0, ptr %a.len.gep174, align 8
  %a.data.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 1
  store ptr %a.buf173, ptr %a.data.gep175, align 8
  %a.cap.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep176, align 8
  store ptr %a.create171, ptr %var.locals, align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %choice.next30
  %a.load2177 = load ptr, ptr %var.locals, align 8
  %var.load178 = load ptr, ptr %var.cur_mod, align 8
  %call.res179 = call ptr @"overloads::walk"(ptr %fld.load163, ptr %var.load164, ptr %a.load2177, ptr %var.load178)
  %var.load180 = load ptr, ptr %var.b, align 8
  %fld.gep181 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load180, i32 0, i32 2
  %fld.load182 = load ptr, ptr %fld.gep181, align 8
  %var.load183 = load ptr, ptr %var.table, align 8
  %var.load184 = load ptr, ptr %var.locals, align 8
  %a.load185 = load ptr, ptr %var.locals, align 8
  %a.null186 = icmp eq ptr %a.load185, null
  br i1 %a.null186, label %a.create187, label %a.after188

a.create187:                                      ; preds = %a.after169
  %arena.cur189 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 24)
  %arena.cur191 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 128)
  %a.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 0
  store i64 0, ptr %a.len.gep193, align 8
  %a.data.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 1
  store ptr %a.buf192, ptr %a.data.gep194, align 8
  %a.cap.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 2
  store i64 16, ptr %a.cap.gep195, align 8
  store ptr %a.create190, ptr %var.locals, align 8
  br label %a.after188

a.after188:                                       ; preds = %a.create187, %a.after169
  %a.load2196 = load ptr, ptr %var.locals, align 8
  %var.load197 = load ptr, ptr %var.cur_mod, align 8
  %call.res198 = call ptr @"overloads::walk"(ptr %fld.load182, ptr %var.load183, ptr %a.load2196, ptr %var.load197)
  %var.load199 = load ptr, ptr %var.b, align 8
  %fld.gep200 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load199, i32 0, i32 3
  %fld.load201 = load i64, ptr %fld.gep200, align 8
  %var.load202 = load ptr, ptr %var.b, align 8
  %fld.gep203 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load202, i32 0, i32 4
  %fld.load204 = load i64, ptr %fld.gep203, align 8
  %arena.cur205 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld207 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc206, i32 0, i32 0
  store ptr %fld.load160, ptr %rec.fld207, align 8
  %rec.fld208 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc206, i32 0, i32 1
  store ptr %call.res179, ptr %rec.fld208, align 8
  %rec.fld209 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc206, i32 0, i32 2
  store ptr %call.res198, ptr %rec.fld209, align 8
  %rec.fld210 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc206, i32 0, i32 3
  store i64 %fld.load201, ptr %rec.fld210, align 8
  %rec.fld211 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc206, i32 0, i32 4
  store i64 %fld.load204, ptr %rec.fld211, align 8
  store ptr %rec.alloc206, ptr %pay.gep157, align 8
  br label %choice.exit28

choice.case213:                                   ; preds = %choice.next20
  %pay.gep218 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr219 = load ptr, ptr %pay.gep218, align 8
  store ptr %payload.ptr219, ptr %var._220, align 8
  store ptr %payload.ptr219, ptr %var.u, align 8
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 16)
  %tag.gep223 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc222, i32 0, i32 0
  store i64 24, ptr %tag.gep223, align 8
  %pay.gep224 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc222, i32 0, i32 1
  %var.load225 = load ptr, ptr %var.u, align 8
  %fld.gep226 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load225, i32 0, i32 0
  %fld.load227 = load ptr, ptr %fld.gep226, align 8
  %var.load228 = load ptr, ptr %var.u, align 8
  %fld.gep229 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load228, i32 0, i32 1
  %fld.load230 = load ptr, ptr %fld.gep229, align 8
  %var.load231 = load ptr, ptr %var.table, align 8
  %var.load232 = load ptr, ptr %var.locals, align 8
  %a.load233 = load ptr, ptr %var.locals, align 8
  %a.null234 = icmp eq ptr %a.load233, null
  br i1 %a.null234, label %a.create235, label %a.after236

choice.next214:                                   ; preds = %choice.next20
  %tag.gep261 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id262 = load i64, ptr %tag.gep261, align 8
  %tag.match263 = icmp eq i64 %tag.id262, 14
  br i1 %tag.match263, label %choice.case259, label %choice.next260

a.create235:                                      ; preds = %choice.case213
  %arena.cur237 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 24)
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 128)
  %a.len.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 0
  store i64 0, ptr %a.len.gep241, align 8
  %a.data.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 1
  store ptr %a.buf240, ptr %a.data.gep242, align 8
  %a.cap.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 2
  store i64 16, ptr %a.cap.gep243, align 8
  store ptr %a.create238, ptr %var.locals, align 8
  br label %a.after236

a.after236:                                       ; preds = %a.create235, %choice.case213
  %a.load2244 = load ptr, ptr %var.locals, align 8
  %var.load245 = load ptr, ptr %var.cur_mod, align 8
  %call.res246 = call ptr @"overloads::walk"(ptr %fld.load230, ptr %var.load231, ptr %a.load2244, ptr %var.load245)
  %var.load247 = load ptr, ptr %var.u, align 8
  %fld.gep248 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load247, i32 0, i32 2
  %fld.load249 = load i64, ptr %fld.gep248, align 8
  %var.load250 = load ptr, ptr %var.u, align 8
  %fld.gep251 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load250, i32 0, i32 3
  %fld.load252 = load i64, ptr %fld.gep251, align 8
  %arena.cur253 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld255 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc254, i32 0, i32 0
  store ptr %fld.load227, ptr %rec.fld255, align 8
  %rec.fld256 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc254, i32 0, i32 1
  store ptr %call.res246, ptr %rec.fld256, align 8
  %rec.fld257 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc254, i32 0, i32 2
  store i64 %fld.load249, ptr %rec.fld257, align 8
  %rec.fld258 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc254, i32 0, i32 3
  store i64 %fld.load252, ptr %rec.fld258, align 8
  store ptr %rec.alloc254, ptr %pay.gep224, align 8
  br label %choice.exit

choice.case259:                                   ; preds = %choice.next214
  %pay.gep264 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr265 = load ptr, ptr %pay.gep264, align 8
  store ptr %payload.ptr265, ptr %var._266, align 8
  store ptr %payload.ptr265, ptr %var.fe, align 8
  %var.load267 = load ptr, ptr %var.locals, align 8
  %a.load268 = load ptr, ptr %var.locals, align 8
  %a.null269 = icmp eq ptr %a.load268, null
  br i1 %a.null269, label %a.create270, label %a.after271

choice.next260:                                   ; preds = %choice.next214
  %tag.gep464 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id465 = load i64, ptr %tag.gep464, align 8
  %tag.match466 = icmp eq i64 %tag.id465, 8
  br i1 %tag.match466, label %choice.case462, label %choice.next463

a.create270:                                      ; preds = %choice.case259
  %arena.cur272 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 24)
  %arena.cur274 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 128)
  %a.len.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 0
  store i64 0, ptr %a.len.gep276, align 8
  %a.data.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 1
  store ptr %a.buf275, ptr %a.data.gep277, align 8
  %a.cap.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 2
  store i64 16, ptr %a.cap.gep278, align 8
  store ptr %a.create273, ptr %var.locals, align 8
  br label %a.after271

a.after271:                                       ; preds = %a.create270, %choice.case259
  %a.load2279 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 0
  %a.copy.len280 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 2
  %a.copy.cap281 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 1
  %a.copy.data282 = load ptr, ptr %a.copy.data, align 8
  %arena.cur283 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap281, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len280, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data282, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len280, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap281, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load285 = load ptr, ptr %var.fn_locals, align 8
  %a.null286 = icmp eq ptr %a.load285, null
  br i1 %a.null286, label %a.create287, label %a.after288

a.create287:                                      ; preds = %a.after271
  %arena.cur289 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 24)
  %arena.cur291 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 128)
  %a.len.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 0
  store i64 0, ptr %a.len.gep293, align 8
  %a.data.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 1
  store ptr %a.buf292, ptr %a.data.gep294, align 8
  %a.cap.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 2
  store i64 16, ptr %a.cap.gep295, align 8
  store ptr %a.create290, ptr %var.fn_locals, align 8
  br label %a.after288

a.after288:                                       ; preds = %a.create287, %a.after271
  %a.load2296 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after288
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 0
  %a.len297 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 2
  %a.cap298 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len297, %a.cap298
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2296)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 1
  %a.cur.data299 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 0
  %a.cur.len300 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data299, i64 %a.cur.len300
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len300, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load301 = load ptr, ptr %var.fe, align 8
  %fld.gep302 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load301, i32 0, i32 0
  %fld.load303 = load ptr, ptr %fld.gep302, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load303, i32 0, i32 0
  %arr.cycle.len304 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load303, i32 0, i32 1
  %arr.cycle.data305 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.header.77:                                   ; preds = %loop.latch.77, %a.store
  %counter.load = load i64, ptr %loop.idx.77, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len304
  br i1 %loop.cond, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data305, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._306, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load307 = load ptr, ptr %var.p, align 8
  %eq.lhs.len308 = getelementptr inbounds { i64, ptr }, ptr %var.load307, i32 0, i32 0
  %eq.lhs.len309 = load i64, ptr %eq.lhs.len308, align 8
  %eq.lhs.len310 = and i64 %eq.lhs.len309, 281474976710655
  %eq.rhs.len311 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len312 = and i64 %eq.rhs.len311, 281474976710655
  %eq.len313 = icmp eq i64 %eq.lhs.len310, %eq.rhs.len312
  br i1 %eq.len313, label %str.eq.then314, label %str.eq.else315

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit325
  %step.val = load i64, ptr %loop.step.77, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  %var.load354 = load ptr, ptr %var.fe, align 8
  %fld.gep355 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load354, i32 0, i32 1
  %fld.load356 = load ptr, ptr %fld.gep355, align 8
  %arr.cycle.len357 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load356, i32 0, i32 0
  %arr.cycle.len358 = load i64, ptr %arr.cycle.len357, align 8
  %arr.cycle.data359 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load356, i32 0, i32 1
  %arr.cycle.data360 = load ptr, ptr %arr.cycle.data359, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

str.eq.then314:                                   ; preds = %loop.body.77
  %eq.lhs.data317 = getelementptr inbounds { i64, ptr }, ptr %var.load307, i32 0, i32 1
  %eq.lhs.data318 = load ptr, ptr %eq.lhs.data317, align 8
  %eq.rhs.data319 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp320 = call i32 @memcmp(ptr %eq.lhs.data318, ptr %eq.rhs.data319, i64 %eq.lhs.len310)
  %eq.cmp.zero321 = icmp eq i32 %eq.memcmp320, 0
  br label %str.eq.merge316

str.eq.else315:                                   ; preds = %loop.body.77
  br label %str.eq.merge316

str.eq.merge316:                                  ; preds = %str.eq.else315, %str.eq.then314
  %str.eq.result322 = phi i1 [ %eq.cmp.zero321, %str.eq.then314 ], [ false, %str.eq.else315 ]
  %str.neq323 = xor i1 %str.eq.result322, true
  br i1 %str.neq323, label %choice.then324, label %choice.exit325

choice.then324:                                   ; preds = %str.eq.merge316
  %var.load326 = load ptr, ptr %var.p, align 8
  %a.load327 = load ptr, ptr %var.fn_locals, align 8
  %a.null328 = icmp eq ptr %a.load327, null
  br i1 %a.null328, label %a.create329, label %a.after330

choice.exit325:                                   ; preds = %a.store341, %str.eq.merge316
  br label %loop.latch.77

a.create329:                                      ; preds = %choice.then324
  %arena.cur331 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 24)
  %arena.cur333 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 128)
  %a.len.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create332, i32 0, i32 0
  store i64 0, ptr %a.len.gep335, align 8
  %a.data.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create332, i32 0, i32 1
  store ptr %a.buf334, ptr %a.data.gep336, align 8
  %a.cap.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create332, i32 0, i32 2
  store i64 16, ptr %a.cap.gep337, align 8
  store ptr %a.create332, ptr %var.fn_locals, align 8
  br label %a.after330

a.after330:                                       ; preds = %a.create329, %choice.then324
  %a.load2338 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check339

a.check339:                                       ; preds = %a.after330
  %a.len342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2338, i32 0, i32 0
  %a.len343 = load i64, ptr %a.len342, align 8
  %a.cap344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2338, i32 0, i32 2
  %a.cap345 = load i64, ptr %a.cap344, align 8
  %a.needs.grow346 = icmp eq i64 %a.len343, %a.cap345
  br i1 %a.needs.grow346, label %a.grow340, label %a.store341

a.grow340:                                        ; preds = %a.check339
  call void @dva_array_grow(ptr %a.load2338)
  br label %a.store341

a.store341:                                       ; preds = %a.grow340, %a.check339
  %a.cur.data347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2338, i32 0, i32 1
  %a.cur.data348 = load ptr, ptr %a.cur.data347, align 8
  %a.cur.len349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2338, i32 0, i32 0
  %a.cur.len350 = load i64, ptr %a.cur.len349, align 8
  %a.elem.gep351 = getelementptr i64, ptr %a.cur.data348, i64 %a.cur.len350
  %slot.p2i = ptrtoint ptr %var.load326 to i64
  store i64 %slot.p2i, ptr %a.elem.gep351, align 8
  %a.next.len352 = add i64 %a.cur.len350, 1
  %b.len.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2338, i32 0, i32 0
  store i64 %a.next.len352, ptr %b.len.gep353, align 8
  br label %choice.exit325

loop.header.78:                                   ; preds = %loop.latch.78, %loop.exit.77
  %counter.load361 = load i64, ptr %loop.idx.78, align 8
  %loop.cond362 = icmp slt i64 %counter.load361, %arr.cycle.len358
  br i1 %loop.cond362, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i363 = sub i64 %counter.load361, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep364 = getelementptr i64, ptr %arr.cycle.data360, i64 %counter.load361
  %arr.elem.raw365 = load i64, ptr %arr.elem.gep364, align 8
  %slot.i2p366 = inttoptr i64 %arr.elem.raw365 to ptr
  store ptr %slot.i2p366, ptr %var._367, align 8
  store ptr %slot.i2p366, ptr %var.cp, align 8
  store i64 %loop.rel.i363, ptr %var._i368, align 8
  %var.load369 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len370 = getelementptr inbounds { i64, ptr }, ptr %var.load369, i32 0, i32 0
  %eq.lhs.len371 = load i64, ptr %eq.lhs.len370, align 8
  %eq.lhs.len372 = and i64 %eq.lhs.len371, 281474976710655
  %eq.rhs.len373 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len374 = and i64 %eq.rhs.len373, 281474976710655
  %eq.len375 = icmp eq i64 %eq.lhs.len372, %eq.rhs.len374
  br i1 %eq.len375, label %str.eq.then376, label %str.eq.else377

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit387
  %step.val417 = load i64, ptr %loop.step.78, align 8
  %loop.next418 = add i64 %counter.load361, %step.val417
  store i64 %loop.next418, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  %var.load419 = load ptr, ptr %var.fe, align 8
  %fld.gep420 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load419, i32 0, i32 2
  %fld.load421 = load ptr, ptr %fld.gep420, align 8
  %var.load422 = load ptr, ptr %var.table, align 8
  %var.load423 = load ptr, ptr %var.fn_locals, align 8
  %a.load424 = load ptr, ptr %var.fn_locals, align 8
  %a.null425 = icmp eq ptr %a.load424, null
  br i1 %a.null425, label %a.create426, label %a.after427

str.eq.then376:                                   ; preds = %loop.body.78
  %eq.lhs.data379 = getelementptr inbounds { i64, ptr }, ptr %var.load369, i32 0, i32 1
  %eq.lhs.data380 = load ptr, ptr %eq.lhs.data379, align 8
  %eq.rhs.data381 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp382 = call i32 @memcmp(ptr %eq.lhs.data380, ptr %eq.rhs.data381, i64 %eq.lhs.len372)
  %eq.cmp.zero383 = icmp eq i32 %eq.memcmp382, 0
  br label %str.eq.merge378

str.eq.else377:                                   ; preds = %loop.body.78
  br label %str.eq.merge378

str.eq.merge378:                                  ; preds = %str.eq.else377, %str.eq.then376
  %str.eq.result384 = phi i1 [ %eq.cmp.zero383, %str.eq.then376 ], [ false, %str.eq.else377 ]
  %str.neq385 = xor i1 %str.eq.result384, true
  br i1 %str.neq385, label %choice.then386, label %choice.exit387

choice.then386:                                   ; preds = %str.eq.merge378
  %var.load388 = load ptr, ptr %var.cp, align 8
  %a.load389 = load ptr, ptr %var.fn_locals, align 8
  %a.null390 = icmp eq ptr %a.load389, null
  br i1 %a.null390, label %a.create391, label %a.after392

choice.exit387:                                   ; preds = %a.store403, %str.eq.merge378
  br label %loop.latch.78

a.create391:                                      ; preds = %choice.then386
  %arena.cur393 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create394 = call ptr @dva_arena_alloc(ptr %arena.cur393, i64 24)
  %arena.cur395 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf396 = call ptr @dva_arena_alloc(ptr %arena.cur395, i64 128)
  %a.len.gep397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create394, i32 0, i32 0
  store i64 0, ptr %a.len.gep397, align 8
  %a.data.gep398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create394, i32 0, i32 1
  store ptr %a.buf396, ptr %a.data.gep398, align 8
  %a.cap.gep399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create394, i32 0, i32 2
  store i64 16, ptr %a.cap.gep399, align 8
  store ptr %a.create394, ptr %var.fn_locals, align 8
  br label %a.after392

a.after392:                                       ; preds = %a.create391, %choice.then386
  %a.load2400 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check401

a.check401:                                       ; preds = %a.after392
  %a.len404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2400, i32 0, i32 0
  %a.len405 = load i64, ptr %a.len404, align 8
  %a.cap406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2400, i32 0, i32 2
  %a.cap407 = load i64, ptr %a.cap406, align 8
  %a.needs.grow408 = icmp eq i64 %a.len405, %a.cap407
  br i1 %a.needs.grow408, label %a.grow402, label %a.store403

a.grow402:                                        ; preds = %a.check401
  call void @dva_array_grow(ptr %a.load2400)
  br label %a.store403

a.store403:                                       ; preds = %a.grow402, %a.check401
  %a.cur.data409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2400, i32 0, i32 1
  %a.cur.data410 = load ptr, ptr %a.cur.data409, align 8
  %a.cur.len411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2400, i32 0, i32 0
  %a.cur.len412 = load i64, ptr %a.cur.len411, align 8
  %a.elem.gep413 = getelementptr i64, ptr %a.cur.data410, i64 %a.cur.len412
  %slot.p2i414 = ptrtoint ptr %var.load388 to i64
  store i64 %slot.p2i414, ptr %a.elem.gep413, align 8
  %a.next.len415 = add i64 %a.cur.len412, 1
  %b.len.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2400, i32 0, i32 0
  store i64 %a.next.len415, ptr %b.len.gep416, align 8
  br label %choice.exit387

a.create426:                                      ; preds = %loop.exit.78
  %arena.cur428 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create429 = call ptr @dva_arena_alloc(ptr %arena.cur428, i64 24)
  %arena.cur430 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf431 = call ptr @dva_arena_alloc(ptr %arena.cur430, i64 128)
  %a.len.gep432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create429, i32 0, i32 0
  store i64 0, ptr %a.len.gep432, align 8
  %a.data.gep433 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create429, i32 0, i32 1
  store ptr %a.buf431, ptr %a.data.gep433, align 8
  %a.cap.gep434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create429, i32 0, i32 2
  store i64 16, ptr %a.cap.gep434, align 8
  store ptr %a.create429, ptr %var.fn_locals, align 8
  br label %a.after427

a.after427:                                       ; preds = %a.create426, %loop.exit.78
  %a.load2435 = load ptr, ptr %var.fn_locals, align 8
  %var.load436 = load ptr, ptr %var.cur_mod, align 8
  %call.res437 = call ptr @"overloads::walk"(ptr %fld.load421, ptr %var.load422, ptr %a.load2435, ptr %var.load436)
  store ptr %call.res437, ptr %var.new_body, align 8
  %arena.cur438 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 16)
  %tag.gep440 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc439, i32 0, i32 0
  store i64 14, ptr %tag.gep440, align 8
  %pay.gep441 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc439, i32 0, i32 1
  %var.load442 = load ptr, ptr %var.fe, align 8
  %fld.gep443 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load442, i32 0, i32 0
  %fld.load444 = load ptr, ptr %fld.gep443, align 8
  %var.load445 = load ptr, ptr %var.fe, align 8
  %fld.gep446 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load445, i32 0, i32 1
  %fld.load447 = load ptr, ptr %fld.gep446, align 8
  %var.load448 = load ptr, ptr %var.new_body, align 8
  %var.load449 = load ptr, ptr %var.fe, align 8
  %fld.gep450 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load449, i32 0, i32 3
  %fld.load451 = load i64, ptr %fld.gep450, align 8
  %var.load452 = load ptr, ptr %var.fe, align 8
  %fld.gep453 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load452, i32 0, i32 4
  %fld.load454 = load i64, ptr %fld.gep453, align 8
  %arena.cur455 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld457 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc456, i32 0, i32 0
  store ptr %fld.load444, ptr %rec.fld457, align 8
  %rec.fld458 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc456, i32 0, i32 1
  store ptr %fld.load447, ptr %rec.fld458, align 8
  %rec.fld459 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc456, i32 0, i32 2
  store ptr %var.load448, ptr %rec.fld459, align 8
  %rec.fld460 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc456, i32 0, i32 3
  store i64 %fld.load451, ptr %rec.fld460, align 8
  %rec.fld461 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc456, i32 0, i32 4
  store i64 %fld.load454, ptr %rec.fld461, align 8
  store ptr %rec.alloc456, ptr %pay.gep441, align 8
  br label %choice.exit

choice.case462:                                   ; preds = %choice.next260
  %pay.gep467 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr468 = load ptr, ptr %pay.gep467, align 8
  store ptr %payload.ptr468, ptr %var._469, align 8
  store ptr %payload.ptr468, ptr %var.be, align 8
  %var.load470 = load ptr, ptr %var.locals, align 8
  %a.load471 = load ptr, ptr %var.locals, align 8
  %a.null472 = icmp eq ptr %a.load471, null
  br i1 %a.null472, label %a.create473, label %a.after474

choice.next463:                                   ; preds = %choice.next260
  %tag.gep675 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id676 = load i64, ptr %tag.gep675, align 8
  %tag.match677 = icmp eq i64 %tag.id676, 7
  br i1 %tag.match677, label %choice.case673, label %choice.next674

a.create473:                                      ; preds = %choice.case462
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 24)
  %arena.cur477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 128)
  %a.len.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 0
  store i64 0, ptr %a.len.gep479, align 8
  %a.data.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 1
  store ptr %a.buf478, ptr %a.data.gep480, align 8
  %a.cap.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 2
  store i64 16, ptr %a.cap.gep481, align 8
  store ptr %a.create476, ptr %var.locals, align 8
  br label %a.after474

a.after474:                                       ; preds = %a.create473, %choice.case462
  %a.load2482 = load ptr, ptr %var.locals, align 8
  %a.copy.len483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2482, i32 0, i32 0
  %a.copy.len484 = load i64, ptr %a.copy.len483, align 8
  %a.copy.cap485 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2482, i32 0, i32 2
  %a.copy.cap486 = load i64, ptr %a.copy.cap485, align 8
  %a.copy.data487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2482, i32 0, i32 1
  %a.copy.data488 = load ptr, ptr %a.copy.data487, align 8
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 24)
  %a.copy.buflen491 = add i64 %a.copy.cap486, 1
  %a.copy.bufsize492 = mul i64 %a.copy.buflen491, 8
  %arena.cur493 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 %a.copy.bufsize492)
  %a.copy.copylen495 = mul i64 %a.copy.len484, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf494, ptr align 1 %a.copy.data488, i64 %a.copy.copylen495, i1 false)
  %a.copy.len.gep496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy490, i32 0, i32 0
  store i64 %a.copy.len484, ptr %a.copy.len.gep496, align 8
  %a.copy.data.gep497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy490, i32 0, i32 1
  store ptr %a.copy.buf494, ptr %a.copy.data.gep497, align 8
  %a.copy.cap.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy490, i32 0, i32 2
  store i64 %a.copy.cap486, ptr %a.copy.cap.gep498, align 8
  store ptr %a.copy490, ptr %var.blk_locals, align 8
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 24)
  %arena.cur500 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf501 = call ptr @dva_arena_alloc(ptr %arena.cur500, i64 128)
  %a.len.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep502, align 8
  %a.data.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf501, ptr %a.data.gep503, align 8
  %a.cap.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep504, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load505 = load ptr, ptr %var.be, align 8
  %a.load506 = load ptr, ptr %var.be, align 8
  %a.null507 = icmp eq ptr %a.load506, null
  br i1 %a.null507, label %a.create508, label %a.after509

a.create508:                                      ; preds = %a.after474
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 24)
  %arena.cur512 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf513 = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 128)
  %a.len.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create511, i32 0, i32 0
  store i64 0, ptr %a.len.gep514, align 8
  %a.data.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create511, i32 0, i32 1
  store ptr %a.buf513, ptr %a.data.gep515, align 8
  %a.cap.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create511, i32 0, i32 2
  store i64 16, ptr %a.cap.gep516, align 8
  store ptr %a.create511, ptr %var.be, align 8
  br label %a.after509

a.after509:                                       ; preds = %a.create508, %a.after474
  %a.load2517 = load ptr, ptr %var.be, align 8
  %arr.cycle.len518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2517, i32 0, i32 0
  %arr.cycle.len519 = load i64, ptr %arr.cycle.len518, align 8
  %arr.cycle.data520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2517, i32 0, i32 1
  %arr.cycle.data521 = load ptr, ptr %arr.cycle.data520, align 8
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after509
  %counter.load522 = load i64, ptr %loop.idx.79, align 8
  %loop.cond523 = icmp slt i64 %counter.load522, %arr.cycle.len519
  br i1 %loop.cond523, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i524 = sub i64 %counter.load522, 0
  store i64 1, ptr %loop.step.79, align 8
  %arr.elem.gep525 = getelementptr i64, ptr %arr.cycle.data521, i64 %counter.load522
  %arr.elem.raw526 = load i64, ptr %arr.elem.gep525, align 8
  %slot.i2p527 = inttoptr i64 %arr.elem.raw526 to ptr
  store ptr %slot.i2p527, ptr %var._528, align 8
  store ptr %slot.i2p527, ptr %var.child, align 8
  store i64 %loop.rel.i524, ptr %var._i529, align 8
  %var.load530 = load ptr, ptr %var.child, align 8
  %var.load531 = load ptr, ptr %var.table, align 8
  %var.load532 = load ptr, ptr %var.blk_locals, align 8
  %a.load533 = load ptr, ptr %var.blk_locals, align 8
  %a.null534 = icmp eq ptr %a.load533, null
  br i1 %a.null534, label %a.create535, label %a.after536

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %choice.exit576
  %step.val654 = load i64, ptr %loop.step.79, align 8
  %loop.next655 = add i64 %counter.load522, %step.val654
  store i64 %loop.next655, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %arena.cur656 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc657 = call ptr @dva_arena_alloc(ptr %arena.cur656, i64 16)
  %tag.gep658 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc657, i32 0, i32 0
  store i64 8, ptr %tag.gep658, align 8
  %pay.gep659 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc657, i32 0, i32 1
  %var.load660 = load ptr, ptr %var.new_exprs, align 8
  %a.load661 = load ptr, ptr %var.new_exprs, align 8
  %a.null662 = icmp eq ptr %a.load661, null
  br i1 %a.null662, label %a.create663, label %a.after664

a.create535:                                      ; preds = %loop.body.79
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 24)
  %arena.cur539 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 128)
  %a.len.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 0
  store i64 0, ptr %a.len.gep541, align 8
  %a.data.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 1
  store ptr %a.buf540, ptr %a.data.gep542, align 8
  %a.cap.gep543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create538, i32 0, i32 2
  store i64 16, ptr %a.cap.gep543, align 8
  store ptr %a.create538, ptr %var.blk_locals, align 8
  br label %a.after536

a.after536:                                       ; preds = %a.create535, %loop.body.79
  %a.load2544 = load ptr, ptr %var.blk_locals, align 8
  %var.load545 = load ptr, ptr %var.cur_mod, align 8
  %call.res546 = call ptr @"overloads::walk"(ptr %var.load530, ptr %var.load531, ptr %a.load2544, ptr %var.load545)
  %a.load547 = load ptr, ptr %var.new_exprs, align 8
  %a.null548 = icmp eq ptr %a.load547, null
  br i1 %a.null548, label %a.create549, label %a.after550

a.create549:                                      ; preds = %a.after536
  %arena.cur551 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 24)
  %arena.cur553 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf554 = call ptr @dva_arena_alloc(ptr %arena.cur553, i64 128)
  %a.len.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 0
  store i64 0, ptr %a.len.gep555, align 8
  %a.data.gep556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 1
  store ptr %a.buf554, ptr %a.data.gep556, align 8
  %a.cap.gep557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 2
  store i64 16, ptr %a.cap.gep557, align 8
  store ptr %a.create552, ptr %var.new_exprs, align 8
  br label %a.after550

a.after550:                                       ; preds = %a.create549, %a.after536
  %a.load2558 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check559

a.check559:                                       ; preds = %a.after550
  %a.len562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 0
  %a.len563 = load i64, ptr %a.len562, align 8
  %a.cap564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 2
  %a.cap565 = load i64, ptr %a.cap564, align 8
  %a.needs.grow566 = icmp eq i64 %a.len563, %a.cap565
  br i1 %a.needs.grow566, label %a.grow560, label %a.store561

a.grow560:                                        ; preds = %a.check559
  call void @dva_array_grow(ptr %a.load2558)
  br label %a.store561

a.store561:                                       ; preds = %a.grow560, %a.check559
  %a.cur.data567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 1
  %a.cur.data568 = load ptr, ptr %a.cur.data567, align 8
  %a.cur.len569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 0
  %a.cur.len570 = load i64, ptr %a.cur.len569, align 8
  %a.elem.gep571 = getelementptr i64, ptr %a.cur.data568, i64 %a.cur.len570
  %slot.p2i572 = ptrtoint ptr %call.res546 to i64
  store i64 %slot.p2i572, ptr %a.elem.gep571, align 8
  %a.next.len573 = add i64 %a.cur.len570, 1
  %b.len.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 0
  store i64 %a.next.len573, ptr %b.len.gep574, align 8
  %var.load575 = load ptr, ptr %var.child, align 8
  %tag.gep579 = getelementptr inbounds { i64, ptr }, ptr %var.load575, i32 0, i32 0
  %tag.id580 = load i64, ptr %tag.gep579, align 8
  %tag.match581 = icmp eq i64 %tag.id580, 6
  br i1 %tag.match581, label %choice.case577, label %choice.next578

choice.exit576:                                   ; preds = %choice.next578, %choice.exit622
  br label %loop.latch.79

choice.case577:                                   ; preds = %a.store561
  %pay.gep582 = getelementptr inbounds { i64, ptr }, ptr %var.load575, i32 0, i32 1
  %payload.ptr583 = load ptr, ptr %pay.gep582, align 8
  store ptr %payload.ptr583, ptr %var._584, align 8
  store ptr %payload.ptr583, ptr %var.ca, align 8
  %var.load585 = load ptr, ptr %var.locals, align 8
  %a.load586 = load ptr, ptr %var.locals, align 8
  %a.null587 = icmp eq ptr %a.load586, null
  br i1 %a.null587, label %a.create588, label %a.after589

choice.next578:                                   ; preds = %a.store561
  br label %choice.exit576

a.create588:                                      ; preds = %choice.case577
  %arena.cur590 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create591 = call ptr @dva_arena_alloc(ptr %arena.cur590, i64 24)
  %arena.cur592 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf593 = call ptr @dva_arena_alloc(ptr %arena.cur592, i64 128)
  %a.len.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 0
  store i64 0, ptr %a.len.gep594, align 8
  %a.data.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 1
  store ptr %a.buf593, ptr %a.data.gep595, align 8
  %a.cap.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 2
  store i64 16, ptr %a.cap.gep596, align 8
  store ptr %a.create591, ptr %var.locals, align 8
  br label %a.after589

a.after589:                                       ; preds = %a.create588, %choice.case577
  %a.load2597 = load ptr, ptr %var.locals, align 8
  %call.res598 = call i1 @"overloads::contains"(ptr %a.load2597, ptr @str.7.struct)
  br i1 %call.res598, label %or.80.then, label %or.80.else

or.80.then:                                       ; preds = %a.after589
  br label %or.80.exit

or.80.else:                                       ; preds = %a.after589
  %var.load599 = load ptr, ptr %var.table, align 8
  %var.load600 = load ptr, ptr %var.ca, align 8
  %fld.gep601 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load600, i32 0, i32 0
  %fld.load602 = load ptr, ptr %fld.gep601, align 8
  %var.load603 = load ptr, ptr %var.cur_mod, align 8
  %call.res604 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load599, ptr %fld.load602, ptr %var.load603)
  store { i64, ptr } %call.res604, ptr %ret.ub.salloc605, align 8
  %eq.lhs.len606 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc605, i32 0, i32 0
  %eq.lhs.len607 = load i64, ptr %eq.lhs.len606, align 8
  %eq.lhs.len608 = and i64 %eq.lhs.len607, 281474976710655
  %eq.rhs.len609 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len610 = and i64 %eq.rhs.len609, 281474976710655
  %eq.len611 = icmp eq i64 %eq.lhs.len608, %eq.rhs.len610
  br i1 %eq.len611, label %str.eq.then612, label %str.eq.else613

or.80.exit:                                       ; preds = %str.eq.merge614, %or.80.then
  %or.80.phi = phi i1 [ %call.res598, %or.80.then ], [ %str.eq.result620, %str.eq.merge614 ]
  br i1 %or.80.phi, label %choice.then621, label %choice.exit622

str.eq.then612:                                   ; preds = %or.80.else
  %eq.lhs.data615 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc605, i32 0, i32 1
  %eq.lhs.data616 = load ptr, ptr %eq.lhs.data615, align 8
  %eq.rhs.data617 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp618 = call i32 @memcmp(ptr %eq.lhs.data616, ptr %eq.rhs.data617, i64 %eq.lhs.len608)
  %eq.cmp.zero619 = icmp eq i32 %eq.memcmp618, 0
  br label %str.eq.merge614

str.eq.else613:                                   ; preds = %or.80.else
  br label %str.eq.merge614

str.eq.merge614:                                  ; preds = %str.eq.else613, %str.eq.then612
  %str.eq.result620 = phi i1 [ %eq.cmp.zero619, %str.eq.then612 ], [ false, %str.eq.else613 ]
  br label %or.80.exit

choice.then621:                                   ; preds = %or.80.exit
  %var.load623 = load ptr, ptr %var.ca, align 8
  %fld.gep624 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load623, i32 0, i32 0
  %fld.load625 = load ptr, ptr %fld.gep624, align 8
  %a.load626 = load ptr, ptr %var.blk_locals, align 8
  %a.null627 = icmp eq ptr %a.load626, null
  br i1 %a.null627, label %a.create628, label %a.after629

choice.exit622:                                   ; preds = %a.store640, %or.80.exit
  br label %choice.exit576

a.create628:                                      ; preds = %choice.then621
  %arena.cur630 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create631 = call ptr @dva_arena_alloc(ptr %arena.cur630, i64 24)
  %arena.cur632 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf633 = call ptr @dva_arena_alloc(ptr %arena.cur632, i64 128)
  %a.len.gep634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create631, i32 0, i32 0
  store i64 0, ptr %a.len.gep634, align 8
  %a.data.gep635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create631, i32 0, i32 1
  store ptr %a.buf633, ptr %a.data.gep635, align 8
  %a.cap.gep636 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create631, i32 0, i32 2
  store i64 16, ptr %a.cap.gep636, align 8
  store ptr %a.create631, ptr %var.blk_locals, align 8
  br label %a.after629

a.after629:                                       ; preds = %a.create628, %choice.then621
  %a.load2637 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check638

a.check638:                                       ; preds = %a.after629
  %a.len641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2637, i32 0, i32 0
  %a.len642 = load i64, ptr %a.len641, align 8
  %a.cap643 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2637, i32 0, i32 2
  %a.cap644 = load i64, ptr %a.cap643, align 8
  %a.needs.grow645 = icmp eq i64 %a.len642, %a.cap644
  br i1 %a.needs.grow645, label %a.grow639, label %a.store640

a.grow639:                                        ; preds = %a.check638
  call void @dva_array_grow(ptr %a.load2637)
  br label %a.store640

a.store640:                                       ; preds = %a.grow639, %a.check638
  %a.cur.data646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2637, i32 0, i32 1
  %a.cur.data647 = load ptr, ptr %a.cur.data646, align 8
  %a.cur.len648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2637, i32 0, i32 0
  %a.cur.len649 = load i64, ptr %a.cur.len648, align 8
  %a.elem.gep650 = getelementptr i64, ptr %a.cur.data647, i64 %a.cur.len649
  %slot.p2i651 = ptrtoint ptr %fld.load625 to i64
  store i64 %slot.p2i651, ptr %a.elem.gep650, align 8
  %a.next.len652 = add i64 %a.cur.len649, 1
  %b.len.gep653 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2637, i32 0, i32 0
  store i64 %a.next.len652, ptr %b.len.gep653, align 8
  br label %choice.exit622

a.create663:                                      ; preds = %loop.exit.79
  %arena.cur665 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create666 = call ptr @dva_arena_alloc(ptr %arena.cur665, i64 24)
  %arena.cur667 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf668 = call ptr @dva_arena_alloc(ptr %arena.cur667, i64 128)
  %a.len.gep669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create666, i32 0, i32 0
  store i64 0, ptr %a.len.gep669, align 8
  %a.data.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create666, i32 0, i32 1
  store ptr %a.buf668, ptr %a.data.gep670, align 8
  %a.cap.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create666, i32 0, i32 2
  store i64 16, ptr %a.cap.gep671, align 8
  store ptr %a.create666, ptr %var.new_exprs, align 8
  br label %a.after664

a.after664:                                       ; preds = %a.create663, %loop.exit.79
  %a.load2672 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2672, ptr %pay.gep659, align 8
  br label %choice.exit

choice.case673:                                   ; preds = %choice.next463
  %pay.gep678 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr679 = load ptr, ptr %pay.gep678, align 8
  store ptr %payload.ptr679, ptr %var._680, align 8
  store ptr %payload.ptr679, ptr %var.ch, align 8
  %var.load681 = load ptr, ptr %var.ch, align 8
  %fld.gep682 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load681, i32 0, i32 0
  %fld.load683 = load ptr, ptr %fld.gep682, align 8
  %var.load684 = load ptr, ptr %var.table, align 8
  %var.load685 = load ptr, ptr %var.locals, align 8
  %a.load686 = load ptr, ptr %var.locals, align 8
  %a.null687 = icmp eq ptr %a.load686, null
  br i1 %a.null687, label %a.create688, label %a.after689

choice.next674:                                   ; preds = %choice.next463
  %tag.gep967 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id968 = load i64, ptr %tag.gep967, align 8
  %tag.match969 = icmp eq i64 %tag.id968, 6
  br i1 %tag.match969, label %choice.case965, label %choice.next966

a.create688:                                      ; preds = %choice.case673
  %arena.cur690 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create691 = call ptr @dva_arena_alloc(ptr %arena.cur690, i64 24)
  %arena.cur692 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf693 = call ptr @dva_arena_alloc(ptr %arena.cur692, i64 128)
  %a.len.gep694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create691, i32 0, i32 0
  store i64 0, ptr %a.len.gep694, align 8
  %a.data.gep695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create691, i32 0, i32 1
  store ptr %a.buf693, ptr %a.data.gep695, align 8
  %a.cap.gep696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create691, i32 0, i32 2
  store i64 16, ptr %a.cap.gep696, align 8
  store ptr %a.create691, ptr %var.locals, align 8
  br label %a.after689

a.after689:                                       ; preds = %a.create688, %choice.case673
  %a.load2697 = load ptr, ptr %var.locals, align 8
  %var.load698 = load ptr, ptr %var.cur_mod, align 8
  %call.res699 = call ptr @"overloads::walk"(ptr %fld.load683, ptr %var.load684, ptr %a.load2697, ptr %var.load698)
  store ptr %call.res699, ptr %var.new_cond, align 8
  %arena.cur700 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 24)
  %arena.cur702 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf703 = call ptr @dva_arena_alloc(ptr %arena.cur702, i64 128)
  %a.len.gep704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new701, i32 0, i32 0
  store i64 0, ptr %a.len.gep704, align 8
  %a.data.gep705 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new701, i32 0, i32 1
  store ptr %a.buf703, ptr %a.data.gep705, align 8
  %a.cap.gep706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new701, i32 0, i32 2
  store i64 16, ptr %a.cap.gep706, align 8
  store ptr %a.new701, ptr %var.new_branches, align 8
  %var.load707 = load ptr, ptr %var.ch, align 8
  %fld.gep708 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load707, i32 0, i32 2
  %fld.load709 = load ptr, ptr %fld.gep708, align 8
  %arr.cycle.len710 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load709, i32 0, i32 0
  %arr.cycle.len711 = load i64, ptr %arr.cycle.len710, align 8
  %arr.cycle.data712 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load709, i32 0, i32 1
  %arr.cycle.data713 = load ptr, ptr %arr.cycle.data712, align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after689
  %counter.load714 = load i64, ptr %loop.idx.81, align 8
  %loop.cond715 = icmp slt i64 %counter.load714, %arr.cycle.len711
  br i1 %loop.cond715, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i716 = sub i64 %counter.load714, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep717 = getelementptr i64, ptr %arr.cycle.data713, i64 %counter.load714
  %arr.elem.raw718 = load i64, ptr %arr.elem.gep717, align 8
  %slot.i2p719 = inttoptr i64 %arr.elem.raw718 to ptr
  store ptr %slot.i2p719, ptr %var._720, align 8
  store ptr %slot.i2p719, ptr %var.br, align 8
  store i64 %loop.rel.i716, ptr %var._i721, align 8
  %var.load722 = load ptr, ptr %var.locals, align 8
  %a.load723 = load ptr, ptr %var.locals, align 8
  %a.null724 = icmp eq ptr %a.load723, null
  br i1 %a.null724, label %a.create725, label %a.after726

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %a.store923
  %step.val937 = load i64, ptr %loop.step.81, align 8
  %loop.next938 = add i64 %counter.load714, %step.val937
  store i64 %loop.next938, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %arena.cur939 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc940 = call ptr @dva_arena_alloc(ptr %arena.cur939, i64 16)
  %tag.gep941 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc940, i32 0, i32 0
  store i64 7, ptr %tag.gep941, align 8
  %pay.gep942 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc940, i32 0, i32 1
  %var.load943 = load ptr, ptr %var.new_cond, align 8
  %var.load944 = load ptr, ptr %var.ch, align 8
  %fld.gep945 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load944, i32 0, i32 1
  %fld.load946 = load i1, ptr %fld.gep945, align 1
  %var.load947 = load ptr, ptr %var.new_branches, align 8
  %a.load948 = load ptr, ptr %var.new_branches, align 8
  %a.null949 = icmp eq ptr %a.load948, null
  br i1 %a.null949, label %a.create950, label %a.after951

a.create725:                                      ; preds = %loop.body.81
  %arena.cur727 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create728 = call ptr @dva_arena_alloc(ptr %arena.cur727, i64 24)
  %arena.cur729 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 128)
  %a.len.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create728, i32 0, i32 0
  store i64 0, ptr %a.len.gep731, align 8
  %a.data.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create728, i32 0, i32 1
  store ptr %a.buf730, ptr %a.data.gep732, align 8
  %a.cap.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create728, i32 0, i32 2
  store i64 16, ptr %a.cap.gep733, align 8
  store ptr %a.create728, ptr %var.locals, align 8
  br label %a.after726

a.after726:                                       ; preds = %a.create725, %loop.body.81
  %a.load2734 = load ptr, ptr %var.locals, align 8
  %a.copy.len735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2734, i32 0, i32 0
  %a.copy.len736 = load i64, ptr %a.copy.len735, align 8
  %a.copy.cap737 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2734, i32 0, i32 2
  %a.copy.cap738 = load i64, ptr %a.copy.cap737, align 8
  %a.copy.data739 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2734, i32 0, i32 1
  %a.copy.data740 = load ptr, ptr %a.copy.data739, align 8
  %arena.cur741 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy742 = call ptr @dva_arena_alloc(ptr %arena.cur741, i64 24)
  %a.copy.buflen743 = add i64 %a.copy.cap738, 1
  %a.copy.bufsize744 = mul i64 %a.copy.buflen743, 8
  %arena.cur745 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf746 = call ptr @dva_arena_alloc(ptr %arena.cur745, i64 %a.copy.bufsize744)
  %a.copy.copylen747 = mul i64 %a.copy.len736, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf746, ptr align 1 %a.copy.data740, i64 %a.copy.copylen747, i1 false)
  %a.copy.len.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy742, i32 0, i32 0
  store i64 %a.copy.len736, ptr %a.copy.len.gep748, align 8
  %a.copy.data.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy742, i32 0, i32 1
  store ptr %a.copy.buf746, ptr %a.copy.data.gep749, align 8
  %a.copy.cap.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy742, i32 0, i32 2
  store i64 %a.copy.cap738, ptr %a.copy.cap.gep750, align 8
  store ptr %a.copy742, ptr %var.br_locals, align 8
  %var.load751 = load ptr, ptr %var.br, align 8
  %fld.gep752 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load751, i32 0, i32 4
  %fld.load753 = load ptr, ptr %fld.gep752, align 8
  %arr.cycle.len754 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load753, i32 0, i32 0
  %arr.cycle.len755 = load i64, ptr %arr.cycle.len754, align 8
  %arr.cycle.data756 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load753, i32 0, i32 1
  %arr.cycle.data757 = load ptr, ptr %arr.cycle.data756, align 8
  store i64 0, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.header.82:                                   ; preds = %loop.latch.82, %a.after726
  %counter.load758 = load i64, ptr %loop.idx.82, align 8
  %loop.cond759 = icmp slt i64 %counter.load758, %arr.cycle.len755
  br i1 %loop.cond759, label %loop.body.82, label %loop.exit.nat.82

loop.body.82:                                     ; preds = %loop.header.82
  %loop.rel.i760 = sub i64 %counter.load758, 0
  store i64 1, ptr %loop.step.82, align 8
  %arr.elem.gep761 = getelementptr i64, ptr %arr.cycle.data757, i64 %counter.load758
  %arr.elem.raw762 = load i64, ptr %arr.elem.gep761, align 8
  %slot.i2p763 = inttoptr i64 %arr.elem.raw762 to ptr
  store ptr %slot.i2p763, ptr %var._764, align 8
  store ptr %slot.i2p763, ptr %var.bv, align 8
  store i64 %loop.rel.i760, ptr %var._i765, align 8
  %var.load766 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len767 = getelementptr inbounds { i64, ptr }, ptr %var.load766, i32 0, i32 0
  %eq.lhs.len768 = load i64, ptr %eq.lhs.len767, align 8
  %eq.lhs.len769 = and i64 %eq.lhs.len768, 281474976710655
  %eq.rhs.len770 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len771 = and i64 %eq.rhs.len770, 281474976710655
  %eq.len772 = icmp eq i64 %eq.lhs.len769, %eq.rhs.len771
  br i1 %eq.len772, label %str.eq.then773, label %str.eq.else774

loop.exit.nat.82:                                 ; preds = %loop.header.82
  br label %loop.exit.82

loop.latch.82:                                    ; preds = %choice.exit784
  %step.val814 = load i64, ptr %loop.step.82, align 8
  %loop.next815 = add i64 %counter.load758, %step.val814
  store i64 %loop.next815, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.exit.82:                                     ; preds = %loop.exit.nat.82
  %var.load816 = load ptr, ptr %var.br, align 8
  %fld.gep817 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load816, i32 0, i32 1
  %fld.load818 = load ptr, ptr %fld.gep817, align 8
  %var.load819 = load ptr, ptr %var.table, align 8
  %var.load820 = load ptr, ptr %var.br_locals, align 8
  %a.load821 = load ptr, ptr %var.br_locals, align 8
  %a.null822 = icmp eq ptr %a.load821, null
  br i1 %a.null822, label %a.create823, label %a.after824

str.eq.then773:                                   ; preds = %loop.body.82
  %eq.lhs.data776 = getelementptr inbounds { i64, ptr }, ptr %var.load766, i32 0, i32 1
  %eq.lhs.data777 = load ptr, ptr %eq.lhs.data776, align 8
  %eq.rhs.data778 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp779 = call i32 @memcmp(ptr %eq.lhs.data777, ptr %eq.rhs.data778, i64 %eq.lhs.len769)
  %eq.cmp.zero780 = icmp eq i32 %eq.memcmp779, 0
  br label %str.eq.merge775

str.eq.else774:                                   ; preds = %loop.body.82
  br label %str.eq.merge775

str.eq.merge775:                                  ; preds = %str.eq.else774, %str.eq.then773
  %str.eq.result781 = phi i1 [ %eq.cmp.zero780, %str.eq.then773 ], [ false, %str.eq.else774 ]
  %str.neq782 = xor i1 %str.eq.result781, true
  br i1 %str.neq782, label %choice.then783, label %choice.exit784

choice.then783:                                   ; preds = %str.eq.merge775
  %var.load785 = load ptr, ptr %var.bv, align 8
  %a.load786 = load ptr, ptr %var.br_locals, align 8
  %a.null787 = icmp eq ptr %a.load786, null
  br i1 %a.null787, label %a.create788, label %a.after789

choice.exit784:                                   ; preds = %a.store800, %str.eq.merge775
  br label %loop.latch.82

a.create788:                                      ; preds = %choice.then783
  %arena.cur790 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create791 = call ptr @dva_arena_alloc(ptr %arena.cur790, i64 24)
  %arena.cur792 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf793 = call ptr @dva_arena_alloc(ptr %arena.cur792, i64 128)
  %a.len.gep794 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create791, i32 0, i32 0
  store i64 0, ptr %a.len.gep794, align 8
  %a.data.gep795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create791, i32 0, i32 1
  store ptr %a.buf793, ptr %a.data.gep795, align 8
  %a.cap.gep796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create791, i32 0, i32 2
  store i64 16, ptr %a.cap.gep796, align 8
  store ptr %a.create791, ptr %var.br_locals, align 8
  br label %a.after789

a.after789:                                       ; preds = %a.create788, %choice.then783
  %a.load2797 = load ptr, ptr %var.br_locals, align 8
  br label %a.check798

a.check798:                                       ; preds = %a.after789
  %a.len801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2797, i32 0, i32 0
  %a.len802 = load i64, ptr %a.len801, align 8
  %a.cap803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2797, i32 0, i32 2
  %a.cap804 = load i64, ptr %a.cap803, align 8
  %a.needs.grow805 = icmp eq i64 %a.len802, %a.cap804
  br i1 %a.needs.grow805, label %a.grow799, label %a.store800

a.grow799:                                        ; preds = %a.check798
  call void @dva_array_grow(ptr %a.load2797)
  br label %a.store800

a.store800:                                       ; preds = %a.grow799, %a.check798
  %a.cur.data806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2797, i32 0, i32 1
  %a.cur.data807 = load ptr, ptr %a.cur.data806, align 8
  %a.cur.len808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2797, i32 0, i32 0
  %a.cur.len809 = load i64, ptr %a.cur.len808, align 8
  %a.elem.gep810 = getelementptr i64, ptr %a.cur.data807, i64 %a.cur.len809
  %slot.p2i811 = ptrtoint ptr %var.load785 to i64
  store i64 %slot.p2i811, ptr %a.elem.gep810, align 8
  %a.next.len812 = add i64 %a.cur.len809, 1
  %b.len.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2797, i32 0, i32 0
  store i64 %a.next.len812, ptr %b.len.gep813, align 8
  br label %choice.exit784

a.create823:                                      ; preds = %loop.exit.82
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 24)
  %arena.cur827 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf828 = call ptr @dva_arena_alloc(ptr %arena.cur827, i64 128)
  %a.len.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create826, i32 0, i32 0
  store i64 0, ptr %a.len.gep829, align 8
  %a.data.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create826, i32 0, i32 1
  store ptr %a.buf828, ptr %a.data.gep830, align 8
  %a.cap.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create826, i32 0, i32 2
  store i64 16, ptr %a.cap.gep831, align 8
  store ptr %a.create826, ptr %var.br_locals, align 8
  br label %a.after824

a.after824:                                       ; preds = %a.create823, %loop.exit.82
  %a.load2832 = load ptr, ptr %var.br_locals, align 8
  %var.load833 = load ptr, ptr %var.cur_mod, align 8
  %call.res834 = call ptr @"overloads::walk_many"(ptr %fld.load818, ptr %var.load819, ptr %a.load2832, ptr %var.load833)
  store ptr %call.res834, ptr %var.new_cases, align 8
  %var.load835 = load ptr, ptr %var.br, align 8
  %fld.gep836 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load835, i32 0, i32 2
  %fld.load837 = load ptr, ptr %fld.gep836, align 8
  %var.load838 = load ptr, ptr %var.table, align 8
  %var.load839 = load ptr, ptr %var.br_locals, align 8
  %a.load840 = load ptr, ptr %var.br_locals, align 8
  %a.null841 = icmp eq ptr %a.load840, null
  br i1 %a.null841, label %a.create842, label %a.after843

a.create842:                                      ; preds = %a.after824
  %arena.cur844 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create845 = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 24)
  %arena.cur846 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf847 = call ptr @dva_arena_alloc(ptr %arena.cur846, i64 128)
  %a.len.gep848 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create845, i32 0, i32 0
  store i64 0, ptr %a.len.gep848, align 8
  %a.data.gep849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create845, i32 0, i32 1
  store ptr %a.buf847, ptr %a.data.gep849, align 8
  %a.cap.gep850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create845, i32 0, i32 2
  store i64 16, ptr %a.cap.gep850, align 8
  store ptr %a.create845, ptr %var.br_locals, align 8
  br label %a.after843

a.after843:                                       ; preds = %a.create842, %a.after824
  %a.load2851 = load ptr, ptr %var.br_locals, align 8
  %var.load852 = load ptr, ptr %var.cur_mod, align 8
  %call.res853 = call ptr @"overloads::walk"(ptr %fld.load837, ptr %var.load838, ptr %a.load2851, ptr %var.load852)
  store ptr %call.res853, ptr %var.new_pred, align 8
  %var.load854 = load ptr, ptr %var.br, align 8
  %fld.gep855 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load854, i32 0, i32 6
  %fld.load856 = load ptr, ptr %fld.gep855, align 8
  %var.load857 = load ptr, ptr %var.table, align 8
  %var.load858 = load ptr, ptr %var.br_locals, align 8
  %a.load859 = load ptr, ptr %var.br_locals, align 8
  %a.null860 = icmp eq ptr %a.load859, null
  br i1 %a.null860, label %a.create861, label %a.after862

a.create861:                                      ; preds = %a.after843
  %arena.cur863 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create864 = call ptr @dva_arena_alloc(ptr %arena.cur863, i64 24)
  %arena.cur865 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf866 = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 128)
  %a.len.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 0
  store i64 0, ptr %a.len.gep867, align 8
  %a.data.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 1
  store ptr %a.buf866, ptr %a.data.gep868, align 8
  %a.cap.gep869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 2
  store i64 16, ptr %a.cap.gep869, align 8
  store ptr %a.create864, ptr %var.br_locals, align 8
  br label %a.after862

a.after862:                                       ; preds = %a.create861, %a.after843
  %a.load2870 = load ptr, ptr %var.br_locals, align 8
  %var.load871 = load ptr, ptr %var.cur_mod, align 8
  %call.res872 = call ptr @"overloads::walk"(ptr %fld.load856, ptr %var.load857, ptr %a.load2870, ptr %var.load871)
  store ptr %call.res872, ptr %var.new_blk, align 8
  %var.load873 = load ptr, ptr %var.br, align 8
  %fld.gep874 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load873, i32 0, i32 0
  %fld.load875 = load ptr, ptr %fld.gep874, align 8
  %var.load876 = load ptr, ptr %var.new_cases, align 8
  %a.load877 = load ptr, ptr %var.new_cases, align 8
  %a.null878 = icmp eq ptr %a.load877, null
  br i1 %a.null878, label %a.create879, label %a.after880

a.create879:                                      ; preds = %a.after862
  %arena.cur881 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 24)
  %arena.cur883 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf884 = call ptr @dva_arena_alloc(ptr %arena.cur883, i64 128)
  %a.len.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create882, i32 0, i32 0
  store i64 0, ptr %a.len.gep885, align 8
  %a.data.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create882, i32 0, i32 1
  store ptr %a.buf884, ptr %a.data.gep886, align 8
  %a.cap.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create882, i32 0, i32 2
  store i64 16, ptr %a.cap.gep887, align 8
  store ptr %a.create882, ptr %var.new_cases, align 8
  br label %a.after880

a.after880:                                       ; preds = %a.create879, %a.after862
  %a.load2888 = load ptr, ptr %var.new_cases, align 8
  %var.load889 = load ptr, ptr %var.new_pred, align 8
  %var.load890 = load ptr, ptr %var.br, align 8
  %fld.gep891 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load890, i32 0, i32 3
  %fld.load892 = load ptr, ptr %fld.gep891, align 8
  %var.load893 = load ptr, ptr %var.br, align 8
  %fld.gep894 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load893, i32 0, i32 4
  %fld.load895 = load ptr, ptr %fld.gep894, align 8
  %var.load896 = load ptr, ptr %var.br, align 8
  %fld.gep897 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load896, i32 0, i32 5
  %fld.load898 = load i1, ptr %fld.gep897, align 1
  %var.load899 = load ptr, ptr %var.new_blk, align 8
  %arena.cur900 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc901 = call ptr @dva_arena_alloc(ptr %arena.cur900, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld902 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 0
  store ptr %fld.load875, ptr %rec.fld902, align 8
  %rec.fld903 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 1
  store ptr %a.load2888, ptr %rec.fld903, align 8
  %rec.fld904 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 2
  store ptr %var.load889, ptr %rec.fld904, align 8
  %rec.fld905 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 3
  store ptr %fld.load892, ptr %rec.fld905, align 8
  %rec.fld906 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 4
  store ptr %fld.load895, ptr %rec.fld906, align 8
  %rec.fld907 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 5
  store i1 %fld.load898, ptr %rec.fld907, align 1
  %rec.fld908 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc901, i32 0, i32 6
  store ptr %var.load899, ptr %rec.fld908, align 8
  %a.load909 = load ptr, ptr %var.new_branches, align 8
  %a.null910 = icmp eq ptr %a.load909, null
  br i1 %a.null910, label %a.create911, label %a.after912

a.create911:                                      ; preds = %a.after880
  %arena.cur913 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 24)
  %arena.cur915 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf916 = call ptr @dva_arena_alloc(ptr %arena.cur915, i64 128)
  %a.len.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 0
  store i64 0, ptr %a.len.gep917, align 8
  %a.data.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 1
  store ptr %a.buf916, ptr %a.data.gep918, align 8
  %a.cap.gep919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 2
  store i64 16, ptr %a.cap.gep919, align 8
  store ptr %a.create914, ptr %var.new_branches, align 8
  br label %a.after912

a.after912:                                       ; preds = %a.create911, %a.after880
  %a.load2920 = load ptr, ptr %var.new_branches, align 8
  br label %a.check921

a.check921:                                       ; preds = %a.after912
  %a.len924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2920, i32 0, i32 0
  %a.len925 = load i64, ptr %a.len924, align 8
  %a.cap926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2920, i32 0, i32 2
  %a.cap927 = load i64, ptr %a.cap926, align 8
  %a.needs.grow928 = icmp eq i64 %a.len925, %a.cap927
  br i1 %a.needs.grow928, label %a.grow922, label %a.store923

a.grow922:                                        ; preds = %a.check921
  call void @dva_array_grow(ptr %a.load2920)
  br label %a.store923

a.store923:                                       ; preds = %a.grow922, %a.check921
  %a.cur.data929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2920, i32 0, i32 1
  %a.cur.data930 = load ptr, ptr %a.cur.data929, align 8
  %a.cur.len931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2920, i32 0, i32 0
  %a.cur.len932 = load i64, ptr %a.cur.len931, align 8
  %a.elem.gep933 = getelementptr i64, ptr %a.cur.data930, i64 %a.cur.len932
  %slot.p2i934 = ptrtoint ptr %rec.alloc901 to i64
  store i64 %slot.p2i934, ptr %a.elem.gep933, align 8
  %a.next.len935 = add i64 %a.cur.len932, 1
  %b.len.gep936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2920, i32 0, i32 0
  store i64 %a.next.len935, ptr %b.len.gep936, align 8
  br label %loop.latch.81

a.create950:                                      ; preds = %loop.exit.81
  %arena.cur952 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 24)
  %arena.cur954 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 128)
  %a.len.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 0
  store i64 0, ptr %a.len.gep956, align 8
  %a.data.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 1
  store ptr %a.buf955, ptr %a.data.gep957, align 8
  %a.cap.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 2
  store i64 16, ptr %a.cap.gep958, align 8
  store ptr %a.create953, ptr %var.new_branches, align 8
  br label %a.after951

a.after951:                                       ; preds = %a.create950, %loop.exit.81
  %a.load2959 = load ptr, ptr %var.new_branches, align 8
  %arena.cur960 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld962 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc961, i32 0, i32 0
  store ptr %var.load943, ptr %rec.fld962, align 8
  %rec.fld963 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc961, i32 0, i32 1
  store i1 %fld.load946, ptr %rec.fld963, align 1
  %rec.fld964 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc961, i32 0, i32 2
  store ptr %a.load2959, ptr %rec.fld964, align 8
  store ptr %rec.alloc961, ptr %pay.gep942, align 8
  br label %choice.exit

choice.case965:                                   ; preds = %choice.next674
  %pay.gep970 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr971 = load ptr, ptr %pay.gep970, align 8
  store ptr %payload.ptr971, ptr %var._972, align 8
  store ptr %payload.ptr971, ptr %var.a, align 8
  %var.load973 = load ptr, ptr %var.locals, align 8
  %a.load974 = load ptr, ptr %var.locals, align 8
  %a.null975 = icmp eq ptr %a.load974, null
  br i1 %a.null975, label %a.create976, label %a.after977

choice.next966:                                   ; preds = %choice.next674
  %tag.gep1189 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1190 = load i64, ptr %tag.gep1189, align 8
  %tag.match1191 = icmp eq i64 %tag.id1190, 23
  br i1 %tag.match1191, label %choice.case1187, label %choice.next1188

a.create976:                                      ; preds = %choice.case965
  %arena.cur978 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 24)
  %arena.cur980 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf981 = call ptr @dva_arena_alloc(ptr %arena.cur980, i64 128)
  %a.len.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 0
  store i64 0, ptr %a.len.gep982, align 8
  %a.data.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 1
  store ptr %a.buf981, ptr %a.data.gep983, align 8
  %a.cap.gep984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 2
  store i64 16, ptr %a.cap.gep984, align 8
  store ptr %a.create979, ptr %var.locals, align 8
  br label %a.after977

a.after977:                                       ; preds = %a.create976, %choice.case965
  %a.load2985 = load ptr, ptr %var.locals, align 8
  %call.res986 = call i1 @"overloads::contains"(ptr %a.load2985, ptr @str.7.struct)
  %nottmp987 = xor i1 %call.res986, true
  store i1 %nottmp987, ptr %var.is_top, align 1
  %var.load988 = load i1, ptr %var.is_top, align 1
  br i1 %var.load988, label %and.83.then, label %and.83.else

and.83.then:                                      ; preds = %a.after977
  %var.load989 = load ptr, ptr %var.a, align 8
  %fld.gep990 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load989, i32 0, i32 0
  %fld.load991 = load ptr, ptr %fld.gep990, align 8
  %eq.lhs.len992 = getelementptr inbounds { i64, ptr }, ptr %fld.load991, i32 0, i32 0
  %eq.lhs.len993 = load i64, ptr %eq.lhs.len992, align 8
  %eq.lhs.len994 = and i64 %eq.lhs.len993, 281474976710655
  %eq.rhs.len995 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len996 = and i64 %eq.rhs.len995, 281474976710655
  %eq.len997 = icmp eq i64 %eq.lhs.len994, %eq.rhs.len996
  br i1 %eq.len997, label %str.eq.then998, label %str.eq.else999

and.83.else:                                      ; preds = %a.after977
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %str.eq.merge1000
  %and.83.phi = phi i1 [ %str.neq1007, %str.eq.merge1000 ], [ %var.load988, %and.83.else ]
  br i1 %and.83.phi, label %choice.then1008, label %choice.else1009

str.eq.then998:                                   ; preds = %and.83.then
  %eq.lhs.data1001 = getelementptr inbounds { i64, ptr }, ptr %fld.load991, i32 0, i32 1
  %eq.lhs.data1002 = load ptr, ptr %eq.lhs.data1001, align 8
  %eq.rhs.data1003 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp1004 = call i32 @memcmp(ptr %eq.lhs.data1002, ptr %eq.rhs.data1003, i64 %eq.lhs.len994)
  %eq.cmp.zero1005 = icmp eq i32 %eq.memcmp1004, 0
  br label %str.eq.merge1000

str.eq.else999:                                   ; preds = %and.83.then
  br label %str.eq.merge1000

str.eq.merge1000:                                 ; preds = %str.eq.else999, %str.eq.then998
  %str.eq.result1006 = phi i1 [ %eq.cmp.zero1005, %str.eq.then998 ], [ false, %str.eq.else999 ]
  %str.neq1007 = xor i1 %str.eq.result1006, true
  br label %and.83.exit

choice.then1008:                                  ; preds = %and.83.exit
  %var.load1011 = load ptr, ptr %var.a, align 8
  %fld.gep1012 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1011, i32 0, i32 0
  %fld.load1013 = load ptr, ptr %fld.gep1012, align 8
  %call.res1014 = call { i64, ptr } @"overloads::decl_module"(ptr %fld.load1013, i64 0)
  %arena.cur1015 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1015, i64 16)
  store { i64, ptr } %call.res1014, ptr %ret.ub.alloc, align 8
  br label %choice.exit1010

choice.else1009:                                  ; preds = %and.83.exit
  %var.load1016 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit1010

choice.exit1010:                                  ; preds = %choice.else1009, %choice.then1008
  %choice.res1017 = phi ptr [ %ret.ub.alloc, %choice.then1008 ], [ %var.load1016, %choice.else1009 ]
  store ptr %choice.res1017, ptr %var.eff_mod, align 8
  %var.load1018 = load ptr, ptr %var.a, align 8
  %fld.gep1019 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1018, i32 0, i32 5
  %fld.load1020 = load ptr, ptr %fld.gep1019, align 8
  %tag.gep1024 = getelementptr inbounds { i64, ptr }, ptr %fld.load1020, i32 0, i32 0
  %tag.id1025 = load i64, ptr %tag.gep1024, align 8
  %tag.match1026 = icmp eq i64 %tag.id1025, 14
  br i1 %tag.match1026, label %choice.case1022, label %choice.next1023

choice.exit1021:                                  ; preds = %choice.exit1037, %choice.case1022
  %choice.res1052 = phi i64 [ %a.len.query1033, %choice.case1022 ], [ %choice.res1051, %choice.exit1037 ]
  store i64 %choice.res1052, ptr %var.arity, align 8
  %var.load1053 = load ptr, ptr %var.table, align 8
  %var.load1054 = load ptr, ptr %var.a, align 8
  %fld.gep1055 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1054, i32 0, i32 0
  %fld.load1056 = load ptr, ptr %fld.gep1055, align 8
  %call.res1057 = call i1 @"overloads::is_family"(ptr %var.load1053, ptr %fld.load1056)
  br i1 %call.res1057, label %and.84.then, label %and.84.else

choice.case1022:                                  ; preds = %choice.exit1010
  %pay.gep1027 = getelementptr inbounds { i64, ptr }, ptr %fld.load1020, i32 0, i32 1
  %payload.ptr1028 = load ptr, ptr %pay.gep1027, align 8
  store ptr %payload.ptr1028, ptr %var._1029, align 8
  store ptr %payload.ptr1028, ptr %var.fn, align 8
  %var.load1030 = load ptr, ptr %var.fn, align 8
  %fld.gep1031 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1030, i32 0, i32 0
  %fld.load1032 = load ptr, ptr %fld.gep1031, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1032, i32 0, i32 0
  %a.len.query1033 = load i64, ptr %a.len.query, align 8
  br label %choice.exit1021

choice.next1023:                                  ; preds = %choice.exit1010
  %var.load1034 = load ptr, ptr %var.a, align 8
  %fld.gep1035 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1034, i32 0, i32 8
  %fld.load1036 = load ptr, ptr %fld.gep1035, align 8
  %tag.gep1040 = getelementptr inbounds { i64, ptr }, ptr %fld.load1036, i32 0, i32 0
  %tag.id1041 = load i64, ptr %tag.gep1040, align 8
  %tag.match1042 = icmp eq i64 %tag.id1041, 8
  br i1 %tag.match1042, label %choice.case1038, label %choice.next1039

choice.exit1037:                                  ; preds = %choice.next1039, %choice.case1038
  %choice.res1051 = phi i64 [ %a.len.query1050, %choice.case1038 ], [ -1, %choice.next1039 ]
  br label %choice.exit1021

choice.case1038:                                  ; preds = %choice.next1023
  %pay.gep1043 = getelementptr inbounds { i64, ptr }, ptr %fld.load1036, i32 0, i32 1
  %payload.ptr1044 = load ptr, ptr %pay.gep1043, align 8
  store ptr %payload.ptr1044, ptr %var._1045, align 8
  store ptr %payload.ptr1044, ptr %var.ft, align 8
  %var.load1046 = load ptr, ptr %var.ft, align 8
  %fld.gep1047 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1046, i32 0, i32 0
  %fld.load1048 = load ptr, ptr %fld.gep1047, align 8
  %a.len.query1049 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1048, i32 0, i32 0
  %a.len.query1050 = load i64, ptr %a.len.query1049, align 8
  br label %choice.exit1037

choice.next1039:                                  ; preds = %choice.next1023
  br label %choice.exit1037

and.84.then:                                      ; preds = %choice.exit1021
  %var.load1058 = load i1, ptr %var.is_top, align 1
  br label %and.84.exit

and.84.else:                                      ; preds = %choice.exit1021
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %var.load1058, %and.84.then ], [ %call.res1057, %and.84.else ]
  store i1 %and.84.phi, ptr %var.family, align 1
  %var.load1059 = load i1, ptr %var.family, align 1
  br i1 %var.load1059, label %and.85.then, label %and.85.else

and.85.then:                                      ; preds = %and.84.exit
  %var.load1060 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1060, 0
  br label %and.85.exit

and.85.else:                                      ; preds = %and.84.exit
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %and.85.then
  %and.85.phi = phi i1 [ %cmptmp, %and.85.then ], [ %var.load1059, %and.85.else ]
  br i1 %and.85.phi, label %choice.then1061, label %choice.else1062

choice.then1061:                                  ; preds = %and.85.exit
  %var.load1064 = load ptr, ptr %var.a, align 8
  %fld.gep1065 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1064, i32 0, i32 0
  %fld.load1066 = load ptr, ptr %fld.gep1065, align 8
  %var.load1067 = load i64, ptr %var.arity, align 8
  %call.res1068 = call { i64, ptr } @"overloads::symbol"(ptr %fld.load1066, i64 %var.load1067)
  %arena.cur1069 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1070 = call ptr @dva_arena_alloc(ptr %arena.cur1069, i64 16)
  store { i64, ptr } %call.res1068, ptr %ret.ub.alloc1070, align 8
  br label %choice.exit1063

choice.else1062:                                  ; preds = %and.85.exit
  %var.load1071 = load ptr, ptr %var.a, align 8
  %fld.gep1072 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1071, i32 0, i32 0
  %fld.load1073 = load ptr, ptr %fld.gep1072, align 8
  br label %choice.exit1063

choice.exit1063:                                  ; preds = %choice.else1062, %choice.then1061
  %choice.res1074 = phi ptr [ %ret.ub.alloc1070, %choice.then1061 ], [ %fld.load1073, %choice.else1062 ]
  store ptr %choice.res1074, ptr %var.new_name, align 8
  %var.load1075 = load ptr, ptr %var.a, align 8
  %fld.gep1076 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1075, i32 0, i32 8
  %fld.load1077 = load ptr, ptr %fld.gep1076, align 8
  %tag.gep1081 = getelementptr inbounds { i64, ptr }, ptr %fld.load1077, i32 0, i32 0
  %tag.id1082 = load i64, ptr %tag.gep1081, align 8
  %tag.match1083 = icmp eq i64 %tag.id1082, 8
  br i1 %tag.match1083, label %choice.case1079, label %choice.next1080

choice.exit1078:                                  ; preds = %choice.next1080, %choice.case1079
  %choice.res1095 = phi ptr [ %fld.load1089, %choice.case1079 ], [ %call.res1094, %choice.next1080 ]
  store ptr %choice.res1095, ptr %var.expected, align 8
  %var.load1096 = load ptr, ptr %var.a, align 8
  %fld.gep1097 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1096, i32 0, i32 5
  %fld.load1098 = load ptr, ptr %fld.gep1097, align 8
  %var.load1099 = load ptr, ptr %var.table, align 8
  %var.load1100 = load ptr, ptr %var.locals, align 8
  %a.load1101 = load ptr, ptr %var.locals, align 8
  %a.null1102 = icmp eq ptr %a.load1101, null
  br i1 %a.null1102, label %a.create1103, label %a.after1104

choice.case1079:                                  ; preds = %choice.exit1063
  %pay.gep1084 = getelementptr inbounds { i64, ptr }, ptr %fld.load1077, i32 0, i32 1
  %payload.ptr1085 = load ptr, ptr %pay.gep1084, align 8
  store ptr %payload.ptr1085, ptr %var._1086, align 8
  %var.load1087 = load ptr, ptr %var.a, align 8
  %fld.gep1088 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1087, i32 0, i32 8
  %fld.load1089 = load ptr, ptr %fld.gep1088, align 8
  br label %choice.exit1078

choice.next1080:                                  ; preds = %choice.exit1063
  %var.load1090 = load ptr, ptr %var.table, align 8
  %var.load1091 = load ptr, ptr %var.a, align 8
  %fld.gep1092 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1091, i32 0, i32 0
  %fld.load1093 = load ptr, ptr %fld.gep1092, align 8
  %call.res1094 = call ptr @"overloads::signature"(ptr %var.load1090, ptr %fld.load1093, i64 -1)
  br label %choice.exit1078

a.create1103:                                     ; preds = %choice.exit1078
  %arena.cur1105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1106 = call ptr @dva_arena_alloc(ptr %arena.cur1105, i64 24)
  %arena.cur1107 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1108 = call ptr @dva_arena_alloc(ptr %arena.cur1107, i64 128)
  %a.len.gep1109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 0
  store i64 0, ptr %a.len.gep1109, align 8
  %a.data.gep1110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 1
  store ptr %a.buf1108, ptr %a.data.gep1110, align 8
  %a.cap.gep1111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1111, align 8
  store ptr %a.create1106, ptr %var.locals, align 8
  br label %a.after1104

a.after1104:                                      ; preds = %a.create1103, %choice.exit1078
  %a.load21112 = load ptr, ptr %var.locals, align 8
  %var.load1113 = load ptr, ptr %var.eff_mod, align 8
  %call.res1114 = call ptr @"overloads::walk"(ptr %fld.load1098, ptr %var.load1099, ptr %a.load21112, ptr %var.load1113)
  %var.load1115 = load ptr, ptr %var.expected, align 8
  %var.load1116 = load ptr, ptr %var.table, align 8
  %var.load1117 = load ptr, ptr %var.locals, align 8
  %a.load1118 = load ptr, ptr %var.locals, align 8
  %a.null1119 = icmp eq ptr %a.load1118, null
  br i1 %a.null1119, label %a.create1120, label %a.after1121

a.create1120:                                     ; preds = %a.after1104
  %arena.cur1122 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1123 = call ptr @dva_arena_alloc(ptr %arena.cur1122, i64 24)
  %arena.cur1124 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1125 = call ptr @dva_arena_alloc(ptr %arena.cur1124, i64 128)
  %a.len.gep1126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1123, i32 0, i32 0
  store i64 0, ptr %a.len.gep1126, align 8
  %a.data.gep1127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1123, i32 0, i32 1
  store ptr %a.buf1125, ptr %a.data.gep1127, align 8
  %a.cap.gep1128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1123, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1128, align 8
  store ptr %a.create1123, ptr %var.locals, align 8
  br label %a.after1121

a.after1121:                                      ; preds = %a.create1120, %a.after1104
  %a.load21129 = load ptr, ptr %var.locals, align 8
  %var.load1130 = load ptr, ptr %var.eff_mod, align 8
  %call.res1131 = call ptr @"overloads::select_value"(ptr %call.res1114, ptr %var.load1115, ptr %var.load1116, ptr %a.load21129, ptr %var.load1130)
  store ptr %call.res1131, ptr %var.new_rhs, align 8
  %var.load1132 = load ptr, ptr %var.a, align 8
  %fld.gep1133 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1132, i32 0, i32 6
  %fld.load1134 = load ptr, ptr %fld.gep1133, align 8
  %var.load1135 = load ptr, ptr %var.table, align 8
  %var.load1136 = load ptr, ptr %var.locals, align 8
  %a.load1137 = load ptr, ptr %var.locals, align 8
  %a.null1138 = icmp eq ptr %a.load1137, null
  br i1 %a.null1138, label %a.create1139, label %a.after1140

a.create1139:                                     ; preds = %a.after1121
  %arena.cur1141 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1142 = call ptr @dva_arena_alloc(ptr %arena.cur1141, i64 24)
  %arena.cur1143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1144 = call ptr @dva_arena_alloc(ptr %arena.cur1143, i64 128)
  %a.len.gep1145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1142, i32 0, i32 0
  store i64 0, ptr %a.len.gep1145, align 8
  %a.data.gep1146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1142, i32 0, i32 1
  store ptr %a.buf1144, ptr %a.data.gep1146, align 8
  %a.cap.gep1147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1142, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1147, align 8
  store ptr %a.create1142, ptr %var.locals, align 8
  br label %a.after1140

a.after1140:                                      ; preds = %a.create1139, %a.after1121
  %a.load21148 = load ptr, ptr %var.locals, align 8
  %var.load1149 = load ptr, ptr %var.eff_mod, align 8
  %call.res1150 = call ptr @"overloads::walk"(ptr %fld.load1134, ptr %var.load1135, ptr %a.load21148, ptr %var.load1149)
  store ptr %call.res1150, ptr %var.new_lhs, align 8
  %arena.cur1151 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1152 = call ptr @dva_arena_alloc(ptr %arena.cur1151, i64 16)
  %tag.gep1153 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1152, i32 0, i32 0
  store i64 6, ptr %tag.gep1153, align 8
  %pay.gep1154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1152, i32 0, i32 1
  %var.load1155 = load ptr, ptr %var.new_name, align 8
  %var.load1156 = load ptr, ptr %var.a, align 8
  %fld.gep1157 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1156, i32 0, i32 1
  %fld.load1158 = load i1, ptr %fld.gep1157, align 1
  %var.load1159 = load ptr, ptr %var.a, align 8
  %fld.gep1160 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1159, i32 0, i32 2
  %fld.load1161 = load i1, ptr %fld.gep1160, align 1
  %var.load1162 = load ptr, ptr %var.a, align 8
  %fld.gep1163 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1162, i32 0, i32 3
  %fld.load1164 = load i1, ptr %fld.gep1163, align 1
  %var.load1165 = load ptr, ptr %var.a, align 8
  %fld.gep1166 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1165, i32 0, i32 4
  %fld.load1167 = load i1, ptr %fld.gep1166, align 1
  %var.load1168 = load ptr, ptr %var.new_rhs, align 8
  %var.load1169 = load ptr, ptr %var.new_lhs, align 8
  %var.load1170 = load ptr, ptr %var.a, align 8
  %fld.gep1171 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1170, i32 0, i32 7
  %fld.load1172 = load ptr, ptr %fld.gep1171, align 8
  %var.load1173 = load ptr, ptr %var.a, align 8
  %fld.gep1174 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1173, i32 0, i32 8
  %fld.load1175 = load ptr, ptr %fld.gep1174, align 8
  %arena.cur1176 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1177 = call ptr @dva_arena_alloc(ptr %arena.cur1176, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1178 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 0
  store ptr %var.load1155, ptr %rec.fld1178, align 8
  %rec.fld1179 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 1
  store i1 %fld.load1158, ptr %rec.fld1179, align 1
  %rec.fld1180 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 2
  store i1 %fld.load1161, ptr %rec.fld1180, align 1
  %rec.fld1181 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 3
  store i1 %fld.load1164, ptr %rec.fld1181, align 1
  %rec.fld1182 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 4
  store i1 %fld.load1167, ptr %rec.fld1182, align 1
  %rec.fld1183 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 5
  store ptr %var.load1168, ptr %rec.fld1183, align 8
  %rec.fld1184 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 6
  store ptr %var.load1169, ptr %rec.fld1184, align 8
  %rec.fld1185 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 7
  store ptr %fld.load1172, ptr %rec.fld1185, align 8
  %rec.fld1186 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 8
  store ptr %fld.load1175, ptr %rec.fld1186, align 8
  store ptr %rec.alloc1177, ptr %pay.gep1154, align 8
  br label %choice.exit

choice.case1187:                                  ; preds = %choice.next966
  %pay.gep1192 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1193 = load ptr, ptr %pay.gep1192, align 8
  store ptr %payload.ptr1193, ptr %var._1194, align 8
  store ptr %payload.ptr1193, ptr %var.td, align 8
  %var.load1195 = load ptr, ptr %var.td, align 8
  %fld.gep1196 = getelementptr inbounds { ptr, ptr }, ptr %var.load1195, i32 0, i32 1
  %fld.load1197 = load ptr, ptr %fld.gep1196, align 8
  %var.load1198 = load ptr, ptr %var.table, align 8
  %call.res1199 = call ptr @"overloads::keep_type"(ptr %fld.load1197, ptr %var.load1198)
  store ptr %call.res1199, ptr %var.new_ti, align 8
  %arena.cur1200 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1201 = call ptr @dva_arena_alloc(ptr %arena.cur1200, i64 16)
  %tag.gep1202 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1201, i32 0, i32 0
  store i64 23, ptr %tag.gep1202, align 8
  %pay.gep1203 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1201, i32 0, i32 1
  %var.load1204 = load ptr, ptr %var.td, align 8
  %fld.gep1205 = getelementptr inbounds { ptr, ptr }, ptr %var.load1204, i32 0, i32 0
  %fld.load1206 = load ptr, ptr %fld.gep1205, align 8
  %var.load1207 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1208 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1209 = call ptr @dva_arena_alloc(ptr %arena.cur1208, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1210 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1209, i32 0, i32 0
  store ptr %fld.load1206, ptr %rec.fld1210, align 8
  %rec.fld1211 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1209, i32 0, i32 1
  store ptr %var.load1207, ptr %rec.fld1211, align 8
  store ptr %rec.alloc1209, ptr %pay.gep1203, align 8
  br label %choice.exit

choice.next1188:                                  ; preds = %choice.next966
  %tag.gep1214 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1215 = load i64, ptr %tag.gep1214, align 8
  %tag.match1216 = icmp eq i64 %tag.id1215, 21
  br i1 %tag.match1216, label %choice.case1212, label %choice.next1213

choice.case1212:                                  ; preds = %choice.next1188
  %pay.gep1217 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1218 = load ptr, ptr %pay.gep1217, align 8
  store ptr %payload.ptr1218, ptr %var._1219, align 8
  store ptr %payload.ptr1218, ptr %var.f, align 8
  %var.load1220 = load ptr, ptr %var.f, align 8
  %fld.gep1221 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1220, i32 0, i32 3
  %fld.load1222 = load ptr, ptr %fld.gep1221, align 8
  %var.load1223 = load ptr, ptr %var.table, align 8
  %call.res1224 = call ptr @"overloads::keep_fparams"(ptr %fld.load1222, ptr %var.load1223)
  store ptr %call.res1224, ptr %var.new_params, align 8
  %var.load1225 = load ptr, ptr %var.f, align 8
  %fld.gep1226 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1225, i32 0, i32 5
  %fld.load1227 = load ptr, ptr %fld.gep1226, align 8
  %var.load1228 = load ptr, ptr %var.table, align 8
  %call.res1229 = call ptr @"overloads::keep_type"(ptr %fld.load1227, ptr %var.load1228)
  store ptr %call.res1229, ptr %var.new_ret_ti, align 8
  %arena.cur1230 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1231 = call ptr @dva_arena_alloc(ptr %arena.cur1230, i64 16)
  %tag.gep1232 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1231, i32 0, i32 0
  store i64 21, ptr %tag.gep1232, align 8
  %pay.gep1233 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1231, i32 0, i32 1
  %var.load1234 = load ptr, ptr %var.f, align 8
  %fld.gep1235 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1234, i32 0, i32 0
  %fld.load1236 = load ptr, ptr %fld.gep1235, align 8
  %var.load1237 = load ptr, ptr %var.f, align 8
  %fld.gep1238 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1237, i32 0, i32 1
  %fld.load1239 = load ptr, ptr %fld.gep1238, align 8
  %var.load1240 = load ptr, ptr %var.f, align 8
  %fld.gep1241 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1240, i32 0, i32 2
  %fld.load1242 = load ptr, ptr %fld.gep1241, align 8
  %var.load1243 = load ptr, ptr %var.new_params, align 8
  %a.load1244 = load ptr, ptr %var.new_params, align 8
  %a.null1245 = icmp eq ptr %a.load1244, null
  br i1 %a.null1245, label %a.create1246, label %a.after1247

choice.next1213:                                  ; preds = %choice.next1188
  %tag.gep1274 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1275 = load i64, ptr %tag.gep1274, align 8
  %tag.match1276 = icmp eq i64 %tag.id1275, 16
  br i1 %tag.match1276, label %choice.case1272, label %choice.next1273

a.create1246:                                     ; preds = %choice.case1212
  %arena.cur1248 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1249 = call ptr @dva_arena_alloc(ptr %arena.cur1248, i64 24)
  %arena.cur1250 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1251 = call ptr @dva_arena_alloc(ptr %arena.cur1250, i64 128)
  %a.len.gep1252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1249, i32 0, i32 0
  store i64 0, ptr %a.len.gep1252, align 8
  %a.data.gep1253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1249, i32 0, i32 1
  store ptr %a.buf1251, ptr %a.data.gep1253, align 8
  %a.cap.gep1254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1249, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1254, align 8
  store ptr %a.create1249, ptr %var.new_params, align 8
  br label %a.after1247

a.after1247:                                      ; preds = %a.create1246, %choice.case1212
  %a.load21255 = load ptr, ptr %var.new_params, align 8
  %var.load1256 = load ptr, ptr %var.f, align 8
  %fld.gep1257 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1256, i32 0, i32 4
  %fld.load1258 = load ptr, ptr %fld.gep1257, align 8
  %var.load1259 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1260 = load ptr, ptr %var.f, align 8
  %fld.gep1261 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1260, i32 0, i32 6
  %fld.load1262 = load i1, ptr %fld.gep1261, align 1
  %arena.cur1263 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1264 = call ptr @dva_arena_alloc(ptr %arena.cur1263, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1265 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 0
  store ptr %fld.load1236, ptr %rec.fld1265, align 8
  %rec.fld1266 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 1
  store ptr %fld.load1239, ptr %rec.fld1266, align 8
  %rec.fld1267 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 2
  store ptr %fld.load1242, ptr %rec.fld1267, align 8
  %rec.fld1268 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 3
  store ptr %a.load21255, ptr %rec.fld1268, align 8
  %rec.fld1269 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 4
  store ptr %fld.load1258, ptr %rec.fld1269, align 8
  %rec.fld1270 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 5
  store ptr %var.load1259, ptr %rec.fld1270, align 8
  %rec.fld1271 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1264, i32 0, i32 6
  store i1 %fld.load1262, ptr %rec.fld1271, align 1
  store ptr %rec.alloc1264, ptr %pay.gep1233, align 8
  br label %choice.exit

choice.case1272:                                  ; preds = %choice.next1213
  %pay.gep1277 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1278 = load ptr, ptr %pay.gep1277, align 8
  store ptr %payload.ptr1278, ptr %var._1279, align 8
  store ptr %payload.ptr1278, ptr %var.m, align 8
  %var.load1280 = load ptr, ptr %var.m, align 8
  %fld.gep1281 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1280, i32 0, i32 2
  %fld.load1282 = load i1, ptr %fld.gep1281, align 1
  br i1 %fld.load1282, label %choice.then1283, label %choice.else1284

choice.next1273:                                  ; preds = %choice.next1213
  %tag.gep1356 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1357 = load i64, ptr %tag.gep1356, align 8
  %tag.match1358 = icmp eq i64 %tag.id1357, 15
  br i1 %tag.match1358, label %choice.case1354, label %choice.next1355

choice.then1283:                                  ; preds = %choice.case1272
  %arena.cur1286 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1287 = call ptr @dva_arena_alloc(ptr %arena.cur1286, i64 16)
  %tag.gep1288 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1287, i32 0, i32 0
  store i64 3, ptr %tag.gep1288, align 8
  %pay.gep1289 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1287, i32 0, i32 1
  %var.load1290 = load ptr, ptr %var.e, align 8
  %call.res1291 = call { i64, ptr } @"overloads::name_of"(ptr %var.load1290)
  %arena.cur1292 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1293 = call ptr @dva_arena_alloc(ptr %arena.cur1292, i64 16)
  store { i64, ptr } %call.res1291, ptr %ret.ub.alloc1293, align 8
  store ptr %ret.ub.alloc1293, ptr %pay.gep1289, align 8
  br label %choice.exit1285

choice.else1284:                                  ; preds = %choice.case1272
  %arena.cur1294 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1295 = call ptr @dva_arena_alloc(ptr %arena.cur1294, i64 16)
  %tag.gep1296 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1295, i32 0, i32 0
  store i64 16, ptr %tag.gep1296, align 8
  %pay.gep1297 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1295, i32 0, i32 1
  %var.load1298 = load ptr, ptr %var.m, align 8
  %fld.gep1299 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1298, i32 0, i32 0
  %fld.load1300 = load ptr, ptr %fld.gep1299, align 8
  %var.load1301 = load ptr, ptr %var.table, align 8
  %var.load1302 = load ptr, ptr %var.locals, align 8
  %a.load1303 = load ptr, ptr %var.locals, align 8
  %a.null1304 = icmp eq ptr %a.load1303, null
  br i1 %a.null1304, label %a.create1305, label %a.after1306

choice.exit1285:                                  ; preds = %a.after1328, %choice.then1283
  %choice.res1353 = phi ptr [ %enum.alloc1287, %choice.then1283 ], [ %enum.alloc1295, %a.after1328 ]
  br label %choice.exit

a.create1305:                                     ; preds = %choice.else1284
  %arena.cur1307 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 24)
  %arena.cur1309 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1310 = call ptr @dva_arena_alloc(ptr %arena.cur1309, i64 128)
  %a.len.gep1311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1308, i32 0, i32 0
  store i64 0, ptr %a.len.gep1311, align 8
  %a.data.gep1312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1308, i32 0, i32 1
  store ptr %a.buf1310, ptr %a.data.gep1312, align 8
  %a.cap.gep1313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1308, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1313, align 8
  store ptr %a.create1308, ptr %var.locals, align 8
  br label %a.after1306

a.after1306:                                      ; preds = %a.create1305, %choice.else1284
  %a.load21314 = load ptr, ptr %var.locals, align 8
  %var.load1315 = load ptr, ptr %var.cur_mod, align 8
  %call.res1316 = call ptr @"overloads::walk"(ptr %fld.load1300, ptr %var.load1301, ptr %a.load21314, ptr %var.load1315)
  %var.load1317 = load ptr, ptr %var.m, align 8
  %fld.gep1318 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1317, i32 0, i32 1
  %fld.load1319 = load ptr, ptr %fld.gep1318, align 8
  %var.load1320 = load ptr, ptr %var.m, align 8
  %fld.gep1321 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1320, i32 0, i32 3
  %fld.load1322 = load ptr, ptr %fld.gep1321, align 8
  %var.load1323 = load ptr, ptr %var.table, align 8
  %var.load1324 = load ptr, ptr %var.locals, align 8
  %a.load1325 = load ptr, ptr %var.locals, align 8
  %a.null1326 = icmp eq ptr %a.load1325, null
  br i1 %a.null1326, label %a.create1327, label %a.after1328

a.create1327:                                     ; preds = %a.after1306
  %arena.cur1329 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1330 = call ptr @dva_arena_alloc(ptr %arena.cur1329, i64 24)
  %arena.cur1331 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1332 = call ptr @dva_arena_alloc(ptr %arena.cur1331, i64 128)
  %a.len.gep1333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1330, i32 0, i32 0
  store i64 0, ptr %a.len.gep1333, align 8
  %a.data.gep1334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1330, i32 0, i32 1
  store ptr %a.buf1332, ptr %a.data.gep1334, align 8
  %a.cap.gep1335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1330, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1335, align 8
  store ptr %a.create1330, ptr %var.locals, align 8
  br label %a.after1328

a.after1328:                                      ; preds = %a.create1327, %a.after1306
  %a.load21336 = load ptr, ptr %var.locals, align 8
  %var.load1337 = load ptr, ptr %var.cur_mod, align 8
  %call.res1338 = call ptr @"overloads::walk"(ptr %fld.load1322, ptr %var.load1323, ptr %a.load21336, ptr %var.load1337)
  %var.load1339 = load ptr, ptr %var.m, align 8
  %fld.gep1340 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1339, i32 0, i32 4
  %fld.load1341 = load i64, ptr %fld.gep1340, align 8
  %var.load1342 = load ptr, ptr %var.m, align 8
  %fld.gep1343 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1342, i32 0, i32 5
  %fld.load1344 = load i64, ptr %fld.gep1343, align 8
  %arena.cur1345 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1346 = call ptr @dva_arena_alloc(ptr %arena.cur1345, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1347 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 0
  store ptr %call.res1316, ptr %rec.fld1347, align 8
  %rec.fld1348 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 1
  store ptr %fld.load1319, ptr %rec.fld1348, align 8
  %rec.fld1349 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 2
  store i1 false, ptr %rec.fld1349, align 1
  %rec.fld1350 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 3
  store ptr %call.res1338, ptr %rec.fld1350, align 8
  %rec.fld1351 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 4
  store i64 %fld.load1341, ptr %rec.fld1351, align 8
  %rec.fld1352 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1346, i32 0, i32 5
  store i64 %fld.load1344, ptr %rec.fld1352, align 8
  store ptr %rec.alloc1346, ptr %pay.gep1297, align 8
  br label %choice.exit1285

choice.case1354:                                  ; preds = %choice.next1273
  %pay.gep1359 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1360 = load ptr, ptr %pay.gep1359, align 8
  store ptr %payload.ptr1360, ptr %var._1361, align 8
  store ptr %payload.ptr1360, ptr %var.re, align 8
  %arena.cur1362 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1363 = call ptr @dva_arena_alloc(ptr %arena.cur1362, i64 24)
  %arena.cur1364 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1365 = call ptr @dva_arena_alloc(ptr %arena.cur1364, i64 128)
  %a.len.gep1366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1363, i32 0, i32 0
  store i64 0, ptr %a.len.gep1366, align 8
  %a.data.gep1367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1363, i32 0, i32 1
  store ptr %a.buf1365, ptr %a.data.gep1367, align 8
  %a.cap.gep1368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1363, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1368, align 8
  store ptr %a.new1363, ptr %var.new_fields, align 8
  %var.load1369 = load ptr, ptr %var.re, align 8
  %fld.gep1370 = getelementptr inbounds { ptr, i1 }, ptr %var.load1369, i32 0, i32 0
  %fld.load1371 = load ptr, ptr %fld.gep1370, align 8
  %arr.cycle.len1372 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1371, i32 0, i32 0
  %arr.cycle.len1373 = load i64, ptr %arr.cycle.len1372, align 8
  %arr.cycle.data1374 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1371, i32 0, i32 1
  %arr.cycle.data1375 = load ptr, ptr %arr.cycle.data1374, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

choice.next1355:                                  ; preds = %choice.next1273
  %tag.gep1471 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1472 = load i64, ptr %tag.gep1471, align 8
  %tag.match1473 = icmp eq i64 %tag.id1472, 17
  br i1 %tag.match1473, label %choice.case1469, label %choice.next1470

loop.header.86:                                   ; preds = %loop.latch.86, %choice.case1354
  %counter.load1376 = load i64, ptr %loop.idx.86, align 8
  %loop.cond1377 = icmp slt i64 %counter.load1376, %arr.cycle.len1373
  br i1 %loop.cond1377, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i1378 = sub i64 %counter.load1376, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep1379 = getelementptr i64, ptr %arr.cycle.data1375, i64 %counter.load1376
  %arr.elem.raw1380 = load i64, ptr %arr.elem.gep1379, align 8
  %slot.i2p1381 = inttoptr i64 %arr.elem.raw1380 to ptr
  store ptr %slot.i2p1381, ptr %var._1382, align 8
  store ptr %slot.i2p1381, ptr %var.fld, align 8
  store i64 %loop.rel.i1378, ptr %var._i1383, align 8
  %var.load1384 = load ptr, ptr %var.fld, align 8
  %fld.gep1385 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1384, i32 0, i32 2
  %fld.load1386 = load ptr, ptr %fld.gep1385, align 8
  %var.load1387 = load ptr, ptr %var.table, align 8
  %var.load1388 = load ptr, ptr %var.locals, align 8
  %a.load1389 = load ptr, ptr %var.locals, align 8
  %a.null1390 = icmp eq ptr %a.load1389, null
  br i1 %a.null1390, label %a.create1391, label %a.after1392

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store1429
  %step.val1443 = load i64, ptr %loop.step.86, align 8
  %loop.next1444 = add i64 %counter.load1376, %step.val1443
  store i64 %loop.next1444, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %arena.cur1445 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 16)
  %tag.gep1447 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1446, i32 0, i32 0
  store i64 15, ptr %tag.gep1447, align 8
  %pay.gep1448 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1446, i32 0, i32 1
  %var.load1449 = load ptr, ptr %var.new_fields, align 8
  %a.load1450 = load ptr, ptr %var.new_fields, align 8
  %a.null1451 = icmp eq ptr %a.load1450, null
  br i1 %a.null1451, label %a.create1452, label %a.after1453

a.create1391:                                     ; preds = %loop.body.86
  %arena.cur1393 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1394 = call ptr @dva_arena_alloc(ptr %arena.cur1393, i64 24)
  %arena.cur1395 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1396 = call ptr @dva_arena_alloc(ptr %arena.cur1395, i64 128)
  %a.len.gep1397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1394, i32 0, i32 0
  store i64 0, ptr %a.len.gep1397, align 8
  %a.data.gep1398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1394, i32 0, i32 1
  store ptr %a.buf1396, ptr %a.data.gep1398, align 8
  %a.cap.gep1399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1394, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1399, align 8
  store ptr %a.create1394, ptr %var.locals, align 8
  br label %a.after1392

a.after1392:                                      ; preds = %a.create1391, %loop.body.86
  %a.load21400 = load ptr, ptr %var.locals, align 8
  %var.load1401 = load ptr, ptr %var.cur_mod, align 8
  %call.res1402 = call ptr @"overloads::walk"(ptr %fld.load1386, ptr %var.load1387, ptr %a.load21400, ptr %var.load1401)
  store ptr %call.res1402, ptr %var.new_val, align 8
  %var.load1403 = load ptr, ptr %var.fld, align 8
  %fld.gep1404 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1403, i32 0, i32 0
  %fld.load1405 = load i1, ptr %fld.gep1404, align 1
  %var.load1406 = load ptr, ptr %var.fld, align 8
  %fld.gep1407 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1406, i32 0, i32 1
  %fld.load1408 = load ptr, ptr %fld.gep1407, align 8
  %var.load1409 = load ptr, ptr %var.new_val, align 8
  %arena.cur1410 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1411 = call ptr @dva_arena_alloc(ptr %arena.cur1410, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1412 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1411, i32 0, i32 0
  store i1 %fld.load1405, ptr %rec.fld1412, align 1
  %rec.fld1413 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1411, i32 0, i32 1
  store ptr %fld.load1408, ptr %rec.fld1413, align 8
  %rec.fld1414 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1411, i32 0, i32 2
  store ptr %var.load1409, ptr %rec.fld1414, align 8
  %a.load1415 = load ptr, ptr %var.new_fields, align 8
  %a.null1416 = icmp eq ptr %a.load1415, null
  br i1 %a.null1416, label %a.create1417, label %a.after1418

a.create1417:                                     ; preds = %a.after1392
  %arena.cur1419 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1420 = call ptr @dva_arena_alloc(ptr %arena.cur1419, i64 24)
  %arena.cur1421 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1422 = call ptr @dva_arena_alloc(ptr %arena.cur1421, i64 128)
  %a.len.gep1423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1420, i32 0, i32 0
  store i64 0, ptr %a.len.gep1423, align 8
  %a.data.gep1424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1420, i32 0, i32 1
  store ptr %a.buf1422, ptr %a.data.gep1424, align 8
  %a.cap.gep1425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1420, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1425, align 8
  store ptr %a.create1420, ptr %var.new_fields, align 8
  br label %a.after1418

a.after1418:                                      ; preds = %a.create1417, %a.after1392
  %a.load21426 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1427

a.check1427:                                      ; preds = %a.after1418
  %a.len1430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21426, i32 0, i32 0
  %a.len1431 = load i64, ptr %a.len1430, align 8
  %a.cap1432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21426, i32 0, i32 2
  %a.cap1433 = load i64, ptr %a.cap1432, align 8
  %a.needs.grow1434 = icmp eq i64 %a.len1431, %a.cap1433
  br i1 %a.needs.grow1434, label %a.grow1428, label %a.store1429

a.grow1428:                                       ; preds = %a.check1427
  call void @dva_array_grow(ptr %a.load21426)
  br label %a.store1429

a.store1429:                                      ; preds = %a.grow1428, %a.check1427
  %a.cur.data1435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21426, i32 0, i32 1
  %a.cur.data1436 = load ptr, ptr %a.cur.data1435, align 8
  %a.cur.len1437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21426, i32 0, i32 0
  %a.cur.len1438 = load i64, ptr %a.cur.len1437, align 8
  %a.elem.gep1439 = getelementptr i64, ptr %a.cur.data1436, i64 %a.cur.len1438
  %slot.p2i1440 = ptrtoint ptr %rec.alloc1411 to i64
  store i64 %slot.p2i1440, ptr %a.elem.gep1439, align 8
  %a.next.len1441 = add i64 %a.cur.len1438, 1
  %b.len.gep1442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21426, i32 0, i32 0
  store i64 %a.next.len1441, ptr %b.len.gep1442, align 8
  br label %loop.latch.86

a.create1452:                                     ; preds = %loop.exit.86
  %arena.cur1454 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1455 = call ptr @dva_arena_alloc(ptr %arena.cur1454, i64 24)
  %arena.cur1456 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1457 = call ptr @dva_arena_alloc(ptr %arena.cur1456, i64 128)
  %a.len.gep1458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1455, i32 0, i32 0
  store i64 0, ptr %a.len.gep1458, align 8
  %a.data.gep1459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1455, i32 0, i32 1
  store ptr %a.buf1457, ptr %a.data.gep1459, align 8
  %a.cap.gep1460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1455, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1460, align 8
  store ptr %a.create1455, ptr %var.new_fields, align 8
  br label %a.after1453

a.after1453:                                      ; preds = %a.create1452, %loop.exit.86
  %a.load21461 = load ptr, ptr %var.new_fields, align 8
  %var.load1462 = load ptr, ptr %var.re, align 8
  %fld.gep1463 = getelementptr inbounds { ptr, i1 }, ptr %var.load1462, i32 0, i32 1
  %fld.load1464 = load i1, ptr %fld.gep1463, align 1
  %arena.cur1465 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1466 = call ptr @dva_arena_alloc(ptr %arena.cur1465, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1467 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1466, i32 0, i32 0
  store ptr %a.load21461, ptr %rec.fld1467, align 8
  %rec.fld1468 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1466, i32 0, i32 1
  store i1 %fld.load1464, ptr %rec.fld1468, align 1
  store ptr %rec.alloc1466, ptr %pay.gep1448, align 8
  br label %choice.exit

choice.case1469:                                  ; preds = %choice.next1355
  %pay.gep1474 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1475 = load ptr, ptr %pay.gep1474, align 8
  store ptr %payload.ptr1475, ptr %var._1476, align 8
  store ptr %payload.ptr1475, ptr %var.ka, align 8
  %var.load1477 = load ptr, ptr %var.ka, align 8
  %fld.gep1478 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1477, i32 0, i32 0
  %fld.load1479 = load ptr, ptr %fld.gep1478, align 8
  %var.load1480 = load ptr, ptr %var.table, align 8
  %var.load1481 = load ptr, ptr %var.locals, align 8
  %a.load1482 = load ptr, ptr %var.locals, align 8
  %a.null1483 = icmp eq ptr %a.load1482, null
  br i1 %a.null1483, label %a.create1484, label %a.after1485

choice.next1470:                                  ; preds = %choice.next1355
  %tag.gep1543 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1544 = load i64, ptr %tag.gep1543, align 8
  %tag.match1545 = icmp eq i64 %tag.id1544, 12
  br i1 %tag.match1545, label %choice.case1541, label %choice.next1542

a.create1484:                                     ; preds = %choice.case1469
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

a.after1485:                                      ; preds = %a.create1484, %choice.case1469
  %a.load21493 = load ptr, ptr %var.locals, align 8
  %var.load1494 = load ptr, ptr %var.cur_mod, align 8
  %call.res1495 = call ptr @"overloads::walk"(ptr %fld.load1479, ptr %var.load1480, ptr %a.load21493, ptr %var.load1494)
  store ptr %call.res1495, ptr %var.new_target, align 8
  %var.load1496 = load ptr, ptr %var.ka, align 8
  %fld.gep1497 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1496, i32 0, i32 1
  %fld.load1498 = load ptr, ptr %fld.gep1497, align 8
  %var.load1499 = load ptr, ptr %var.table, align 8
  %var.load1500 = load ptr, ptr %var.locals, align 8
  %a.load1501 = load ptr, ptr %var.locals, align 8
  %a.null1502 = icmp eq ptr %a.load1501, null
  br i1 %a.null1502, label %a.create1503, label %a.after1504

a.create1503:                                     ; preds = %a.after1485
  %arena.cur1505 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1506 = call ptr @dva_arena_alloc(ptr %arena.cur1505, i64 24)
  %arena.cur1507 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1508 = call ptr @dva_arena_alloc(ptr %arena.cur1507, i64 128)
  %a.len.gep1509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 0
  store i64 0, ptr %a.len.gep1509, align 8
  %a.data.gep1510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 1
  store ptr %a.buf1508, ptr %a.data.gep1510, align 8
  %a.cap.gep1511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1511, align 8
  store ptr %a.create1506, ptr %var.locals, align 8
  br label %a.after1504

a.after1504:                                      ; preds = %a.create1503, %a.after1485
  %a.load21512 = load ptr, ptr %var.locals, align 8
  %var.load1513 = load ptr, ptr %var.cur_mod, align 8
  %call.res1514 = call ptr @"overloads::walk"(ptr %fld.load1498, ptr %var.load1499, ptr %a.load21512, ptr %var.load1513)
  store ptr %call.res1514, ptr %var.new_key, align 8
  %arena.cur1515 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1516 = call ptr @dva_arena_alloc(ptr %arena.cur1515, i64 16)
  %tag.gep1517 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1516, i32 0, i32 0
  store i64 17, ptr %tag.gep1517, align 8
  %pay.gep1518 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1516, i32 0, i32 1
  %var.load1519 = load ptr, ptr %var.new_target, align 8
  %var.load1520 = load ptr, ptr %var.new_key, align 8
  %var.load1521 = load ptr, ptr %var.ka, align 8
  %fld.gep1522 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1521, i32 0, i32 2
  %fld.load1523 = load i1, ptr %fld.gep1522, align 1
  %var.load1524 = load ptr, ptr %var.ka, align 8
  %fld.gep1525 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1524, i32 0, i32 3
  %fld.load1526 = load i1, ptr %fld.gep1525, align 1
  %var.load1527 = load ptr, ptr %var.ka, align 8
  %fld.gep1528 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1527, i32 0, i32 4
  %fld.load1529 = load i64, ptr %fld.gep1528, align 8
  %var.load1530 = load ptr, ptr %var.ka, align 8
  %fld.gep1531 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1530, i32 0, i32 5
  %fld.load1532 = load i64, ptr %fld.gep1531, align 8
  %arena.cur1533 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1534 = call ptr @dva_arena_alloc(ptr %arena.cur1533, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1535 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 0
  store ptr %var.load1519, ptr %rec.fld1535, align 8
  %rec.fld1536 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 1
  store ptr %var.load1520, ptr %rec.fld1536, align 8
  %rec.fld1537 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 2
  store i1 %fld.load1523, ptr %rec.fld1537, align 1
  %rec.fld1538 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 3
  store i1 %fld.load1526, ptr %rec.fld1538, align 1
  %rec.fld1539 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 4
  store i64 %fld.load1529, ptr %rec.fld1539, align 8
  %rec.fld1540 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1534, i32 0, i32 5
  store i64 %fld.load1532, ptr %rec.fld1540, align 8
  store ptr %rec.alloc1534, ptr %pay.gep1518, align 8
  br label %choice.exit

choice.case1541:                                  ; preds = %choice.next1470
  %pay.gep1546 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1547 = load ptr, ptr %pay.gep1546, align 8
  store ptr %payload.ptr1547, ptr %var._1548, align 8
  store ptr %payload.ptr1547, ptr %var.cy, align 8
  %var.load1549 = load ptr, ptr %var.cy, align 8
  %fld.gep1550 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1549, i32 0, i32 0
  %fld.load1551 = load ptr, ptr %fld.gep1550, align 8
  %var.load1552 = load ptr, ptr %var.table, align 8
  %var.load1553 = load ptr, ptr %var.locals, align 8
  %a.load1554 = load ptr, ptr %var.locals, align 8
  %a.null1555 = icmp eq ptr %a.load1554, null
  br i1 %a.null1555, label %a.create1556, label %a.after1557

choice.next1542:                                  ; preds = %choice.next1470
  %tag.gep1607 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1608 = load i64, ptr %tag.gep1607, align 8
  %tag.match1609 = icmp eq i64 %tag.id1608, 11
  br i1 %tag.match1609, label %choice.case1605, label %choice.next1606

a.create1556:                                     ; preds = %choice.case1541
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

a.after1557:                                      ; preds = %a.create1556, %choice.case1541
  %a.load21565 = load ptr, ptr %var.locals, align 8
  %var.load1566 = load ptr, ptr %var.cur_mod, align 8
  %call.res1567 = call ptr @"overloads::walk"(ptr %fld.load1551, ptr %var.load1552, ptr %a.load21565, ptr %var.load1566)
  store ptr %call.res1567, ptr %var.new_iter, align 8
  %var.load1568 = load ptr, ptr %var.cy, align 8
  %fld.gep1569 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1568, i32 0, i32 1
  %fld.load1570 = load ptr, ptr %fld.gep1569, align 8
  %var.load1571 = load ptr, ptr %var.table, align 8
  %var.load1572 = load ptr, ptr %var.locals, align 8
  %a.load1573 = load ptr, ptr %var.locals, align 8
  %a.null1574 = icmp eq ptr %a.load1573, null
  br i1 %a.null1574, label %a.create1575, label %a.after1576

a.create1575:                                     ; preds = %a.after1557
  %arena.cur1577 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1578 = call ptr @dva_arena_alloc(ptr %arena.cur1577, i64 24)
  %arena.cur1579 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1580 = call ptr @dva_arena_alloc(ptr %arena.cur1579, i64 128)
  %a.len.gep1581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1578, i32 0, i32 0
  store i64 0, ptr %a.len.gep1581, align 8
  %a.data.gep1582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1578, i32 0, i32 1
  store ptr %a.buf1580, ptr %a.data.gep1582, align 8
  %a.cap.gep1583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1578, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1583, align 8
  store ptr %a.create1578, ptr %var.locals, align 8
  br label %a.after1576

a.after1576:                                      ; preds = %a.create1575, %a.after1557
  %a.load21584 = load ptr, ptr %var.locals, align 8
  %var.load1585 = load ptr, ptr %var.cur_mod, align 8
  %call.res1586 = call ptr @"overloads::walk"(ptr %fld.load1570, ptr %var.load1571, ptr %a.load21584, ptr %var.load1585)
  store ptr %call.res1586, ptr %var.new_fn, align 8
  %arena.cur1587 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1588 = call ptr @dva_arena_alloc(ptr %arena.cur1587, i64 16)
  %tag.gep1589 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1588, i32 0, i32 0
  store i64 12, ptr %tag.gep1589, align 8
  %pay.gep1590 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1588, i32 0, i32 1
  %var.load1591 = load ptr, ptr %var.new_iter, align 8
  %var.load1592 = load ptr, ptr %var.new_fn, align 8
  %var.load1593 = load ptr, ptr %var.cy, align 8
  %fld.gep1594 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1593, i32 0, i32 2
  %fld.load1595 = load i1, ptr %fld.gep1594, align 1
  %var.load1596 = load ptr, ptr %var.cy, align 8
  %fld.gep1597 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1596, i32 0, i32 3
  %fld.load1598 = load i1, ptr %fld.gep1597, align 1
  %arena.cur1599 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1600 = call ptr @dva_arena_alloc(ptr %arena.cur1599, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1601 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1600, i32 0, i32 0
  store ptr %var.load1591, ptr %rec.fld1601, align 8
  %rec.fld1602 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1600, i32 0, i32 1
  store ptr %var.load1592, ptr %rec.fld1602, align 8
  %rec.fld1603 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1600, i32 0, i32 2
  store i1 %fld.load1595, ptr %rec.fld1603, align 1
  %rec.fld1604 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1600, i32 0, i32 3
  store i1 %fld.load1598, ptr %rec.fld1604, align 1
  store ptr %rec.alloc1600, ptr %pay.gep1590, align 8
  br label %choice.exit

choice.case1605:                                  ; preds = %choice.next1542
  %pay.gep1610 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1611 = load ptr, ptr %pay.gep1610, align 8
  store ptr %payload.ptr1611, ptr %var._1612, align 8
  store ptr %payload.ptr1611, ptr %var.ce, align 8
  %var.load1613 = load ptr, ptr %var.ce, align 8
  %fld.gep1614 = getelementptr inbounds { ptr, ptr }, ptr %var.load1613, i32 0, i32 0
  %fld.load1615 = load ptr, ptr %fld.gep1614, align 8
  %var.load1616 = load ptr, ptr %var.table, align 8
  %var.load1617 = load ptr, ptr %var.locals, align 8
  %a.load1618 = load ptr, ptr %var.locals, align 8
  %a.null1619 = icmp eq ptr %a.load1618, null
  br i1 %a.null1619, label %a.create1620, label %a.after1621

choice.next1606:                                  ; preds = %choice.next1542
  %tag.gep1663 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1664 = load i64, ptr %tag.gep1663, align 8
  %tag.match1665 = icmp eq i64 %tag.id1664, 13
  br i1 %tag.match1665, label %choice.case1661, label %choice.next1662

a.create1620:                                     ; preds = %choice.case1605
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

a.after1621:                                      ; preds = %a.create1620, %choice.case1605
  %a.load21629 = load ptr, ptr %var.locals, align 8
  %var.load1630 = load ptr, ptr %var.cur_mod, align 8
  %call.res1631 = call ptr @"overloads::walk"(ptr %fld.load1615, ptr %var.load1616, ptr %a.load21629, ptr %var.load1630)
  store ptr %call.res1631, ptr %var.new_cy, align 8
  %var.load1632 = load ptr, ptr %var.ce, align 8
  %fld.gep1633 = getelementptr inbounds { ptr, ptr }, ptr %var.load1632, i32 0, i32 1
  %fld.load1634 = load ptr, ptr %fld.gep1633, align 8
  %var.load1635 = load ptr, ptr %var.table, align 8
  %var.load1636 = load ptr, ptr %var.locals, align 8
  %a.load1637 = load ptr, ptr %var.locals, align 8
  %a.null1638 = icmp eq ptr %a.load1637, null
  br i1 %a.null1638, label %a.create1639, label %a.after1640

a.create1639:                                     ; preds = %a.after1621
  %arena.cur1641 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1642 = call ptr @dva_arena_alloc(ptr %arena.cur1641, i64 24)
  %arena.cur1643 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1644 = call ptr @dva_arena_alloc(ptr %arena.cur1643, i64 128)
  %a.len.gep1645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1642, i32 0, i32 0
  store i64 0, ptr %a.len.gep1645, align 8
  %a.data.gep1646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1642, i32 0, i32 1
  store ptr %a.buf1644, ptr %a.data.gep1646, align 8
  %a.cap.gep1647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1642, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1647, align 8
  store ptr %a.create1642, ptr %var.locals, align 8
  br label %a.after1640

a.after1640:                                      ; preds = %a.create1639, %a.after1621
  %a.load21648 = load ptr, ptr %var.locals, align 8
  %var.load1649 = load ptr, ptr %var.cur_mod, align 8
  %call.res1650 = call ptr @"overloads::walk"(ptr %fld.load1634, ptr %var.load1635, ptr %a.load21648, ptr %var.load1649)
  store ptr %call.res1650, ptr %var.new_br, align 8
  %arena.cur1651 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1652 = call ptr @dva_arena_alloc(ptr %arena.cur1651, i64 16)
  %tag.gep1653 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1652, i32 0, i32 0
  store i64 11, ptr %tag.gep1653, align 8
  %pay.gep1654 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1652, i32 0, i32 1
  %var.load1655 = load ptr, ptr %var.new_cy, align 8
  %var.load1656 = load ptr, ptr %var.new_br, align 8
  %arena.cur1657 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1659 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1658, i32 0, i32 0
  store ptr %var.load1655, ptr %rec.fld1659, align 8
  %rec.fld1660 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1658, i32 0, i32 1
  store ptr %var.load1656, ptr %rec.fld1660, align 8
  store ptr %rec.alloc1658, ptr %pay.gep1654, align 8
  br label %choice.exit

choice.case1661:                                  ; preds = %choice.next1606
  %pay.gep1666 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1667 = load ptr, ptr %pay.gep1666, align 8
  store ptr %payload.ptr1667, ptr %var._1668, align 8
  store ptr %payload.ptr1667, ptr %var.r, align 8
  %var.load1669 = load ptr, ptr %var.r, align 8
  %fld.gep1670 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1669, i32 0, i32 0
  %fld.load1671 = load i1, ptr %fld.gep1670, align 1
  br i1 %fld.load1671, label %choice.then1672, label %choice.else1673

choice.next1662:                                  ; preds = %choice.next1606
  %tag.gep1753 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1754 = load i64, ptr %tag.gep1753, align 8
  %tag.match1755 = icmp eq i64 %tag.id1754, 36
  br i1 %tag.match1755, label %choice.case1751, label %choice.next1752

choice.then1672:                                  ; preds = %choice.case1661
  %var.load1675 = load ptr, ptr %var.r, align 8
  %fld.gep1676 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1675, i32 0, i32 2
  %fld.load1677 = load ptr, ptr %fld.gep1676, align 8
  %var.load1678 = load ptr, ptr %var.table, align 8
  %var.load1679 = load ptr, ptr %var.locals, align 8
  %a.load1680 = load ptr, ptr %var.locals, align 8
  %a.null1681 = icmp eq ptr %a.load1680, null
  br i1 %a.null1681, label %a.create1682, label %a.after1683

choice.else1673:                                  ; preds = %choice.case1661
  %var.load1694 = load ptr, ptr %var.r, align 8
  %fld.gep1695 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1694, i32 0, i32 2
  %fld.load1696 = load ptr, ptr %fld.gep1695, align 8
  br label %choice.exit1674

choice.exit1674:                                  ; preds = %choice.else1673, %a.after1683
  %choice.res1697 = phi ptr [ %call.res1693, %a.after1683 ], [ %fld.load1696, %choice.else1673 ]
  store ptr %choice.res1697, ptr %var.new_lhs1698, align 8
  %var.load1699 = load ptr, ptr %var.r, align 8
  %fld.gep1700 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1699, i32 0, i32 1
  %fld.load1701 = load i1, ptr %fld.gep1700, align 1
  br i1 %fld.load1701, label %choice.then1702, label %choice.else1703

a.create1682:                                     ; preds = %choice.then1672
  %arena.cur1684 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1685 = call ptr @dva_arena_alloc(ptr %arena.cur1684, i64 24)
  %arena.cur1686 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1687 = call ptr @dva_arena_alloc(ptr %arena.cur1686, i64 128)
  %a.len.gep1688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 0
  store i64 0, ptr %a.len.gep1688, align 8
  %a.data.gep1689 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 1
  store ptr %a.buf1687, ptr %a.data.gep1689, align 8
  %a.cap.gep1690 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1690, align 8
  store ptr %a.create1685, ptr %var.locals, align 8
  br label %a.after1683

a.after1683:                                      ; preds = %a.create1682, %choice.then1672
  %a.load21691 = load ptr, ptr %var.locals, align 8
  %var.load1692 = load ptr, ptr %var.cur_mod, align 8
  %call.res1693 = call ptr @"overloads::walk"(ptr %fld.load1677, ptr %var.load1678, ptr %a.load21691, ptr %var.load1692)
  br label %choice.exit1674

choice.then1702:                                  ; preds = %choice.exit1674
  %var.load1705 = load ptr, ptr %var.r, align 8
  %fld.gep1706 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1705, i32 0, i32 3
  %fld.load1707 = load ptr, ptr %fld.gep1706, align 8
  %var.load1708 = load ptr, ptr %var.table, align 8
  %var.load1709 = load ptr, ptr %var.locals, align 8
  %a.load1710 = load ptr, ptr %var.locals, align 8
  %a.null1711 = icmp eq ptr %a.load1710, null
  br i1 %a.null1711, label %a.create1712, label %a.after1713

choice.else1703:                                  ; preds = %choice.exit1674
  %var.load1724 = load ptr, ptr %var.r, align 8
  %fld.gep1725 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1724, i32 0, i32 3
  %fld.load1726 = load ptr, ptr %fld.gep1725, align 8
  br label %choice.exit1704

choice.exit1704:                                  ; preds = %choice.else1703, %a.after1713
  %choice.res1727 = phi ptr [ %call.res1723, %a.after1713 ], [ %fld.load1726, %choice.else1703 ]
  store ptr %choice.res1727, ptr %var.new_rhs1728, align 8
  %arena.cur1729 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1730 = call ptr @dva_arena_alloc(ptr %arena.cur1729, i64 16)
  %tag.gep1731 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1730, i32 0, i32 0
  store i64 13, ptr %tag.gep1731, align 8
  %pay.gep1732 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1730, i32 0, i32 1
  %var.load1733 = load ptr, ptr %var.r, align 8
  %fld.gep1734 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1733, i32 0, i32 0
  %fld.load1735 = load i1, ptr %fld.gep1734, align 1
  %var.load1736 = load ptr, ptr %var.r, align 8
  %fld.gep1737 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1736, i32 0, i32 1
  %fld.load1738 = load i1, ptr %fld.gep1737, align 1
  %var.load1739 = load ptr, ptr %var.new_lhs1698, align 8
  %var.load1740 = load ptr, ptr %var.new_rhs1728, align 8
  %var.load1741 = load ptr, ptr %var.r, align 8
  %fld.gep1742 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1741, i32 0, i32 4
  %fld.load1743 = load i1, ptr %fld.gep1742, align 1
  %arena.cur1744 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1745 = call ptr @dva_arena_alloc(ptr %arena.cur1744, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1746 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1745, i32 0, i32 0
  store i1 %fld.load1735, ptr %rec.fld1746, align 1
  %rec.fld1747 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1745, i32 0, i32 1
  store i1 %fld.load1738, ptr %rec.fld1747, align 1
  %rec.fld1748 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1745, i32 0, i32 2
  store ptr %var.load1739, ptr %rec.fld1748, align 8
  %rec.fld1749 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1745, i32 0, i32 3
  store ptr %var.load1740, ptr %rec.fld1749, align 8
  %rec.fld1750 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1745, i32 0, i32 4
  store i1 %fld.load1743, ptr %rec.fld1750, align 1
  store ptr %rec.alloc1745, ptr %pay.gep1732, align 8
  br label %choice.exit

a.create1712:                                     ; preds = %choice.then1702
  %arena.cur1714 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1715 = call ptr @dva_arena_alloc(ptr %arena.cur1714, i64 24)
  %arena.cur1716 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1717 = call ptr @dva_arena_alloc(ptr %arena.cur1716, i64 128)
  %a.len.gep1718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1715, i32 0, i32 0
  store i64 0, ptr %a.len.gep1718, align 8
  %a.data.gep1719 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1715, i32 0, i32 1
  store ptr %a.buf1717, ptr %a.data.gep1719, align 8
  %a.cap.gep1720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1715, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1720, align 8
  store ptr %a.create1715, ptr %var.locals, align 8
  br label %a.after1713

a.after1713:                                      ; preds = %a.create1712, %choice.then1702
  %a.load21721 = load ptr, ptr %var.locals, align 8
  %var.load1722 = load ptr, ptr %var.cur_mod, align 8
  %call.res1723 = call ptr @"overloads::walk"(ptr %fld.load1707, ptr %var.load1708, ptr %a.load21721, ptr %var.load1722)
  br label %choice.exit1704

choice.case1751:                                  ; preds = %choice.next1662
  %pay.gep1756 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1757 = load ptr, ptr %pay.gep1756, align 8
  store ptr %payload.ptr1757, ptr %var._1758, align 8
  store ptr %payload.ptr1757, ptr %var.na, align 8
  %var.load1759 = load ptr, ptr %var.na, align 8
  %fld.gep1760 = getelementptr inbounds { ptr, ptr }, ptr %var.load1759, i32 0, i32 1
  %fld.load1761 = load ptr, ptr %fld.gep1760, align 8
  %var.load1762 = load ptr, ptr %var.table, align 8
  %var.load1763 = load ptr, ptr %var.locals, align 8
  %a.load1764 = load ptr, ptr %var.locals, align 8
  %a.null1765 = icmp eq ptr %a.load1764, null
  br i1 %a.null1765, label %a.create1766, label %a.after1767

choice.next1752:                                  ; preds = %choice.next1662
  %tag.gep1793 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1794 = load i64, ptr %tag.gep1793, align 8
  %tag.match1795 = icmp eq i64 %tag.id1794, 18
  br i1 %tag.match1795, label %choice.case1791, label %choice.next1792

a.create1766:                                     ; preds = %choice.case1751
  %arena.cur1768 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1769 = call ptr @dva_arena_alloc(ptr %arena.cur1768, i64 24)
  %arena.cur1770 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1771 = call ptr @dva_arena_alloc(ptr %arena.cur1770, i64 128)
  %a.len.gep1772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1769, i32 0, i32 0
  store i64 0, ptr %a.len.gep1772, align 8
  %a.data.gep1773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1769, i32 0, i32 1
  store ptr %a.buf1771, ptr %a.data.gep1773, align 8
  %a.cap.gep1774 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1769, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1774, align 8
  store ptr %a.create1769, ptr %var.locals, align 8
  br label %a.after1767

a.after1767:                                      ; preds = %a.create1766, %choice.case1751
  %a.load21775 = load ptr, ptr %var.locals, align 8
  %var.load1776 = load ptr, ptr %var.cur_mod, align 8
  %call.res1777 = call ptr @"overloads::walk"(ptr %fld.load1761, ptr %var.load1762, ptr %a.load21775, ptr %var.load1776)
  store ptr %call.res1777, ptr %var.new_val1778, align 8
  %arena.cur1779 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1780 = call ptr @dva_arena_alloc(ptr %arena.cur1779, i64 16)
  %tag.gep1781 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1780, i32 0, i32 0
  store i64 36, ptr %tag.gep1781, align 8
  %pay.gep1782 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1780, i32 0, i32 1
  %var.load1783 = load ptr, ptr %var.na, align 8
  %fld.gep1784 = getelementptr inbounds { ptr, ptr }, ptr %var.load1783, i32 0, i32 0
  %fld.load1785 = load ptr, ptr %fld.gep1784, align 8
  %var.load1786 = load ptr, ptr %var.new_val1778, align 8
  %arena.cur1787 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1788 = call ptr @dva_arena_alloc(ptr %arena.cur1787, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1789 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1788, i32 0, i32 0
  store ptr %fld.load1785, ptr %rec.fld1789, align 8
  %rec.fld1790 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1788, i32 0, i32 1
  store ptr %var.load1786, ptr %rec.fld1790, align 8
  store ptr %rec.alloc1788, ptr %pay.gep1782, align 8
  br label %choice.exit

choice.case1791:                                  ; preds = %choice.next1752
  %pay.gep1796 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1797 = load ptr, ptr %pay.gep1796, align 8
  store ptr %payload.ptr1797, ptr %var._1798, align 8
  store ptr %payload.ptr1797, ptr %var.v1799, align 8
  %var.load1800 = load ptr, ptr %var.v1799, align 8
  %fld.gep1801 = getelementptr inbounds { ptr, ptr }, ptr %var.load1800, i32 0, i32 1
  %fld.load1802 = load ptr, ptr %fld.gep1801, align 8
  %var.load1803 = load ptr, ptr %var.table, align 8
  %var.load1804 = load ptr, ptr %var.locals, align 8
  %a.load1805 = load ptr, ptr %var.locals, align 8
  %a.null1806 = icmp eq ptr %a.load1805, null
  br i1 %a.null1806, label %a.create1807, label %a.after1808

choice.next1792:                                  ; preds = %choice.next1752
  %tag.gep1845 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1846 = load i64, ptr %tag.gep1845, align 8
  %tag.match1847 = icmp eq i64 %tag.id1846, 22
  br i1 %tag.match1847, label %choice.case1843, label %choice.next1844

a.create1807:                                     ; preds = %choice.case1791
  %arena.cur1809 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1810 = call ptr @dva_arena_alloc(ptr %arena.cur1809, i64 24)
  %arena.cur1811 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1812 = call ptr @dva_arena_alloc(ptr %arena.cur1811, i64 128)
  %a.len.gep1813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 0
  store i64 0, ptr %a.len.gep1813, align 8
  %a.data.gep1814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 1
  store ptr %a.buf1812, ptr %a.data.gep1814, align 8
  %a.cap.gep1815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1815, align 8
  store ptr %a.create1810, ptr %var.locals, align 8
  br label %a.after1808

a.after1808:                                      ; preds = %a.create1807, %choice.case1791
  %a.load21816 = load ptr, ptr %var.locals, align 8
  %var.load1817 = load ptr, ptr %var.cur_mod, align 8
  %call.res1818 = call ptr @"overloads::walk_many"(ptr %fld.load1802, ptr %var.load1803, ptr %a.load21816, ptr %var.load1817)
  store ptr %call.res1818, ptr %var.new_args, align 8
  %arena.cur1819 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1820 = call ptr @dva_arena_alloc(ptr %arena.cur1819, i64 16)
  %tag.gep1821 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1820, i32 0, i32 0
  store i64 18, ptr %tag.gep1821, align 8
  %pay.gep1822 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1820, i32 0, i32 1
  %var.load1823 = load ptr, ptr %var.v1799, align 8
  %fld.gep1824 = getelementptr inbounds { ptr, ptr }, ptr %var.load1823, i32 0, i32 0
  %fld.load1825 = load ptr, ptr %fld.gep1824, align 8
  %var.load1826 = load ptr, ptr %var.new_args, align 8
  %a.load1827 = load ptr, ptr %var.new_args, align 8
  %a.null1828 = icmp eq ptr %a.load1827, null
  br i1 %a.null1828, label %a.create1829, label %a.after1830

a.create1829:                                     ; preds = %a.after1808
  %arena.cur1831 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1832 = call ptr @dva_arena_alloc(ptr %arena.cur1831, i64 24)
  %arena.cur1833 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 128)
  %a.len.gep1835 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 0
  store i64 0, ptr %a.len.gep1835, align 8
  %a.data.gep1836 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 1
  store ptr %a.buf1834, ptr %a.data.gep1836, align 8
  %a.cap.gep1837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1837, align 8
  store ptr %a.create1832, ptr %var.new_args, align 8
  br label %a.after1830

a.after1830:                                      ; preds = %a.create1829, %a.after1808
  %a.load21838 = load ptr, ptr %var.new_args, align 8
  %arena.cur1839 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1840 = call ptr @dva_arena_alloc(ptr %arena.cur1839, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1841 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1840, i32 0, i32 0
  store ptr %fld.load1825, ptr %rec.fld1841, align 8
  %rec.fld1842 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1840, i32 0, i32 1
  store ptr %a.load21838, ptr %rec.fld1842, align 8
  store ptr %rec.alloc1840, ptr %pay.gep1822, align 8
  br label %choice.exit

choice.case1843:                                  ; preds = %choice.next1792
  %pay.gep1848 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1849 = load ptr, ptr %pay.gep1848, align 8
  store ptr %payload.ptr1849, ptr %var._1850, align 8
  store ptr %payload.ptr1849, ptr %var.tc, align 8
  %var.load1851 = load ptr, ptr %var.tc, align 8
  %fld.gep1852 = getelementptr inbounds { ptr, ptr }, ptr %var.load1851, i32 0, i32 1
  %fld.load1853 = load ptr, ptr %fld.gep1852, align 8
  %var.load1854 = load ptr, ptr %var.table, align 8
  %var.load1855 = load ptr, ptr %var.locals, align 8
  %a.load1856 = load ptr, ptr %var.locals, align 8
  %a.null1857 = icmp eq ptr %a.load1856, null
  br i1 %a.null1857, label %a.create1858, label %a.after1859

choice.next1844:                                  ; preds = %choice.next1792
  %tag.gep1884 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1885 = load i64, ptr %tag.gep1884, align 8
  %tag.match1886 = icmp eq i64 %tag.id1885, 31
  br i1 %tag.match1886, label %choice.case1882, label %choice.next1883

a.create1858:                                     ; preds = %choice.case1843
  %arena.cur1860 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1861 = call ptr @dva_arena_alloc(ptr %arena.cur1860, i64 24)
  %arena.cur1862 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1863 = call ptr @dva_arena_alloc(ptr %arena.cur1862, i64 128)
  %a.len.gep1864 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1861, i32 0, i32 0
  store i64 0, ptr %a.len.gep1864, align 8
  %a.data.gep1865 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1861, i32 0, i32 1
  store ptr %a.buf1863, ptr %a.data.gep1865, align 8
  %a.cap.gep1866 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1861, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1866, align 8
  store ptr %a.create1861, ptr %var.locals, align 8
  br label %a.after1859

a.after1859:                                      ; preds = %a.create1858, %choice.case1843
  %a.load21867 = load ptr, ptr %var.locals, align 8
  %var.load1868 = load ptr, ptr %var.cur_mod, align 8
  %call.res1869 = call ptr @"overloads::walk"(ptr %fld.load1853, ptr %var.load1854, ptr %a.load21867, ptr %var.load1868)
  store ptr %call.res1869, ptr %var.new_expr, align 8
  %arena.cur1870 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1871 = call ptr @dva_arena_alloc(ptr %arena.cur1870, i64 16)
  %tag.gep1872 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1871, i32 0, i32 0
  store i64 22, ptr %tag.gep1872, align 8
  %pay.gep1873 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1871, i32 0, i32 1
  %var.load1874 = load ptr, ptr %var.tc, align 8
  %fld.gep1875 = getelementptr inbounds { ptr, ptr }, ptr %var.load1874, i32 0, i32 0
  %fld.load1876 = load ptr, ptr %fld.gep1875, align 8
  %var.load1877 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1878 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1879 = call ptr @dva_arena_alloc(ptr %arena.cur1878, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1880 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1879, i32 0, i32 0
  store ptr %fld.load1876, ptr %rec.fld1880, align 8
  %rec.fld1881 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1879, i32 0, i32 1
  store ptr %var.load1877, ptr %rec.fld1881, align 8
  store ptr %rec.alloc1879, ptr %pay.gep1873, align 8
  br label %choice.exit

choice.case1882:                                  ; preds = %choice.next1844
  %pay.gep1887 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1888 = load ptr, ptr %pay.gep1887, align 8
  store ptr %payload.ptr1888, ptr %var._1889, align 8
  store ptr %payload.ptr1888, ptr %var.sp, align 8
  %arena.cur1890 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1891 = call ptr @dva_arena_alloc(ptr %arena.cur1890, i64 16)
  %tag.gep1892 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1891, i32 0, i32 0
  store i64 31, ptr %tag.gep1892, align 8
  %pay.gep1893 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1891, i32 0, i32 1
  %var.load1894 = load ptr, ptr %var.sp, align 8
  %var.load1895 = load ptr, ptr %var.table, align 8
  %var.load1896 = load ptr, ptr %var.locals, align 8
  %a.load1897 = load ptr, ptr %var.locals, align 8
  %a.null1898 = icmp eq ptr %a.load1897, null
  br i1 %a.null1898, label %a.create1899, label %a.after1900

choice.next1883:                                  ; preds = %choice.next1844
  %tag.gep1913 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1914 = load i64, ptr %tag.gep1913, align 8
  %tag.match1915 = icmp eq i64 %tag.id1914, 32
  br i1 %tag.match1915, label %choice.case1911, label %choice.next1912

a.create1899:                                     ; preds = %choice.case1882
  %arena.cur1901 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1902 = call ptr @dva_arena_alloc(ptr %arena.cur1901, i64 24)
  %arena.cur1903 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1904 = call ptr @dva_arena_alloc(ptr %arena.cur1903, i64 128)
  %a.len.gep1905 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1902, i32 0, i32 0
  store i64 0, ptr %a.len.gep1905, align 8
  %a.data.gep1906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1902, i32 0, i32 1
  store ptr %a.buf1904, ptr %a.data.gep1906, align 8
  %a.cap.gep1907 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1902, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1907, align 8
  store ptr %a.create1902, ptr %var.locals, align 8
  br label %a.after1900

a.after1900:                                      ; preds = %a.create1899, %choice.case1882
  %a.load21908 = load ptr, ptr %var.locals, align 8
  %var.load1909 = load ptr, ptr %var.cur_mod, align 8
  %call.res1910 = call ptr @"overloads::walk_call"(ptr %var.load1894, ptr %var.load1895, ptr %a.load21908, ptr %var.load1909)
  store ptr %call.res1910, ptr %pay.gep1893, align 8
  br label %choice.exit

choice.case1911:                                  ; preds = %choice.next1883
  %pay.gep1916 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1917 = load ptr, ptr %pay.gep1916, align 8
  store ptr %payload.ptr1917, ptr %var._1918, align 8
  store ptr %payload.ptr1917, ptr %var.jn, align 8
  %arena.cur1919 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1920 = call ptr @dva_arena_alloc(ptr %arena.cur1919, i64 16)
  %tag.gep1921 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1920, i32 0, i32 0
  store i64 32, ptr %tag.gep1921, align 8
  %pay.gep1922 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1920, i32 0, i32 1
  %var.load1923 = load ptr, ptr %var.jn, align 8
  %var.load1924 = load ptr, ptr %var.table, align 8
  %var.load1925 = load ptr, ptr %var.locals, align 8
  %a.load1926 = load ptr, ptr %var.locals, align 8
  %a.null1927 = icmp eq ptr %a.load1926, null
  br i1 %a.null1927, label %a.create1928, label %a.after1929

choice.next1912:                                  ; preds = %choice.next1883
  %tag.gep1942 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1943 = load i64, ptr %tag.gep1942, align 8
  %tag.match1944 = icmp eq i64 %tag.id1943, 33
  br i1 %tag.match1944, label %choice.case1940, label %choice.next1941

a.create1928:                                     ; preds = %choice.case1911
  %arena.cur1930 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1931 = call ptr @dva_arena_alloc(ptr %arena.cur1930, i64 24)
  %arena.cur1932 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1933 = call ptr @dva_arena_alloc(ptr %arena.cur1932, i64 128)
  %a.len.gep1934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 0
  store i64 0, ptr %a.len.gep1934, align 8
  %a.data.gep1935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 1
  store ptr %a.buf1933, ptr %a.data.gep1935, align 8
  %a.cap.gep1936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1931, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1936, align 8
  store ptr %a.create1931, ptr %var.locals, align 8
  br label %a.after1929

a.after1929:                                      ; preds = %a.create1928, %choice.case1911
  %a.load21937 = load ptr, ptr %var.locals, align 8
  %var.load1938 = load ptr, ptr %var.cur_mod, align 8
  %call.res1939 = call ptr @"overloads::walk"(ptr %var.load1923, ptr %var.load1924, ptr %a.load21937, ptr %var.load1938)
  store ptr %call.res1939, ptr %pay.gep1922, align 8
  br label %choice.exit

choice.case1940:                                  ; preds = %choice.next1912
  %pay.gep1945 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1946 = load ptr, ptr %pay.gep1945, align 8
  store ptr %payload.ptr1946, ptr %var._1947, align 8
  store ptr %payload.ptr1946, ptr %var.ex, align 8
  %var.load1948 = load ptr, ptr %var.ex, align 8
  %var.load1949 = load ptr, ptr %var.table, align 8
  %var.load1950 = load ptr, ptr %var.locals, align 8
  %a.load1951 = load ptr, ptr %var.locals, align 8
  %a.null1952 = icmp eq ptr %a.load1951, null
  br i1 %a.null1952, label %a.create1953, label %a.after1954

choice.next1941:                                  ; preds = %choice.next1912
  %tag.gep1972 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1973 = load i64, ptr %tag.gep1972, align 8
  %tag.match1974 = icmp eq i64 %tag.id1973, 37
  br i1 %tag.match1974, label %choice.case1970, label %choice.next1971

a.create1953:                                     ; preds = %choice.case1940
  %arena.cur1955 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1956 = call ptr @dva_arena_alloc(ptr %arena.cur1955, i64 24)
  %arena.cur1957 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1958 = call ptr @dva_arena_alloc(ptr %arena.cur1957, i64 128)
  %a.len.gep1959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1956, i32 0, i32 0
  store i64 0, ptr %a.len.gep1959, align 8
  %a.data.gep1960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1956, i32 0, i32 1
  store ptr %a.buf1958, ptr %a.data.gep1960, align 8
  %a.cap.gep1961 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1956, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1961, align 8
  store ptr %a.create1956, ptr %var.locals, align 8
  br label %a.after1954

a.after1954:                                      ; preds = %a.create1953, %choice.case1940
  %a.load21962 = load ptr, ptr %var.locals, align 8
  %var.load1963 = load ptr, ptr %var.cur_mod, align 8
  %call.res1964 = call ptr @"overloads::walk"(ptr %var.load1948, ptr %var.load1949, ptr %a.load21962, ptr %var.load1963)
  store ptr %call.res1964, ptr %var.new_ex, align 8
  %arena.cur1965 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1966 = call ptr @dva_arena_alloc(ptr %arena.cur1965, i64 16)
  %tag.gep1967 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1966, i32 0, i32 0
  store i64 33, ptr %tag.gep1967, align 8
  %pay.gep1968 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1966, i32 0, i32 1
  %var.load1969 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1969, ptr %pay.gep1968, align 8
  br label %choice.exit

choice.case1970:                                  ; preds = %choice.next1941
  %pay.gep1975 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1976 = load ptr, ptr %pay.gep1975, align 8
  store ptr %payload.ptr1976, ptr %var._1977, align 8
  store ptr %payload.ptr1976, ptr %var.r1978, align 8
  %var.load1979 = load ptr, ptr %var.r1978, align 8
  %fld.gep1980 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1979, i32 0, i32 0
  %fld.load1981 = load i1, ptr %fld.gep1980, align 1
  br i1 %fld.load1981, label %choice.then1982, label %choice.else1983

choice.next1971:                                  ; preds = %choice.next1941
  %tag.gep2031 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2032 = load i64, ptr %tag.gep2031, align 8
  %tag.match2033 = icmp eq i64 %tag.id2032, 28
  br i1 %tag.match2033, label %choice.case2029, label %choice.next2030

choice.then1982:                                  ; preds = %choice.case1970
  %var.load1985 = load ptr, ptr %var.r1978, align 8
  %fld.gep1986 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1985, i32 0, i32 1
  %fld.load1987 = load ptr, ptr %fld.gep1986, align 8
  %var.load1988 = load ptr, ptr %var.table, align 8
  %var.load1989 = load ptr, ptr %var.locals, align 8
  %a.load1990 = load ptr, ptr %var.locals, align 8
  %a.null1991 = icmp eq ptr %a.load1990, null
  br i1 %a.null1991, label %a.create1992, label %a.after1993

choice.else1983:                                  ; preds = %choice.case1970
  %var.load2004 = load ptr, ptr %var.r1978, align 8
  %fld.gep2005 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2004, i32 0, i32 1
  %fld.load2006 = load ptr, ptr %fld.gep2005, align 8
  br label %choice.exit1984

choice.exit1984:                                  ; preds = %choice.else1983, %a.after1993
  %choice.res2007 = phi ptr [ %call.res2003, %a.after1993 ], [ %fld.load2006, %choice.else1983 ]
  store ptr %choice.res2007, ptr %var.new_val2008, align 8
  %arena.cur2009 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2010 = call ptr @dva_arena_alloc(ptr %arena.cur2009, i64 16)
  %tag.gep2011 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2010, i32 0, i32 0
  store i64 37, ptr %tag.gep2011, align 8
  %pay.gep2012 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2010, i32 0, i32 1
  %var.load2013 = load ptr, ptr %var.r1978, align 8
  %fld.gep2014 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2013, i32 0, i32 0
  %fld.load2015 = load i1, ptr %fld.gep2014, align 1
  %var.load2016 = load ptr, ptr %var.new_val2008, align 8
  %var.load2017 = load ptr, ptr %var.r1978, align 8
  %fld.gep2018 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2017, i32 0, i32 2
  %fld.load2019 = load i64, ptr %fld.gep2018, align 8
  %var.load2020 = load ptr, ptr %var.r1978, align 8
  %fld.gep2021 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2020, i32 0, i32 3
  %fld.load2022 = load i64, ptr %fld.gep2021, align 8
  %arena.cur2023 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2024 = call ptr @dva_arena_alloc(ptr %arena.cur2023, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2025 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2024, i32 0, i32 0
  store i1 %fld.load2015, ptr %rec.fld2025, align 1
  %rec.fld2026 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2024, i32 0, i32 1
  store ptr %var.load2016, ptr %rec.fld2026, align 8
  %rec.fld2027 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2024, i32 0, i32 2
  store i64 %fld.load2019, ptr %rec.fld2027, align 8
  %rec.fld2028 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2024, i32 0, i32 3
  store i64 %fld.load2022, ptr %rec.fld2028, align 8
  store ptr %rec.alloc2024, ptr %pay.gep2012, align 8
  br label %choice.exit

a.create1992:                                     ; preds = %choice.then1982
  %arena.cur1994 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1995 = call ptr @dva_arena_alloc(ptr %arena.cur1994, i64 24)
  %arena.cur1996 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1997 = call ptr @dva_arena_alloc(ptr %arena.cur1996, i64 128)
  %a.len.gep1998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1995, i32 0, i32 0
  store i64 0, ptr %a.len.gep1998, align 8
  %a.data.gep1999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1995, i32 0, i32 1
  store ptr %a.buf1997, ptr %a.data.gep1999, align 8
  %a.cap.gep2000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1995, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2000, align 8
  store ptr %a.create1995, ptr %var.locals, align 8
  br label %a.after1993

a.after1993:                                      ; preds = %a.create1992, %choice.then1982
  %a.load22001 = load ptr, ptr %var.locals, align 8
  %var.load2002 = load ptr, ptr %var.cur_mod, align 8
  %call.res2003 = call ptr @"overloads::walk"(ptr %fld.load1987, ptr %var.load1988, ptr %a.load22001, ptr %var.load2002)
  br label %choice.exit1984

choice.case2029:                                  ; preds = %choice.next1971
  %pay.gep2034 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2035 = load ptr, ptr %pay.gep2034, align 8
  store ptr %payload.ptr2035, ptr %var._2036, align 8
  store ptr %payload.ptr2035, ptr %var.ac, align 8
  %var.load2037 = load ptr, ptr %var.ac, align 8
  %fld.gep2038 = getelementptr inbounds { ptr, i64 }, ptr %var.load2037, i32 0, i32 0
  %fld.load2039 = load ptr, ptr %fld.gep2038, align 8
  %var.load2040 = load ptr, ptr %var.table, align 8
  %call.res2041 = call ptr @"overloads::keep_type"(ptr %fld.load2039, ptr %var.load2040)
  store ptr %call.res2041, ptr %var.new_elem, align 8
  %arena.cur2042 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2043 = call ptr @dva_arena_alloc(ptr %arena.cur2042, i64 16)
  %tag.gep2044 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2043, i32 0, i32 0
  store i64 28, ptr %tag.gep2044, align 8
  %pay.gep2045 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2043, i32 0, i32 1
  %var.load2046 = load ptr, ptr %var.new_elem, align 8
  %var.load2047 = load ptr, ptr %var.ac, align 8
  %fld.gep2048 = getelementptr inbounds { ptr, i64 }, ptr %var.load2047, i32 0, i32 1
  %fld.load2049 = load i64, ptr %fld.gep2048, align 8
  %arena.cur2050 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2051 = call ptr @dva_arena_alloc(ptr %arena.cur2050, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2052 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2051, i32 0, i32 0
  store ptr %var.load2046, ptr %rec.fld2052, align 8
  %rec.fld2053 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2051, i32 0, i32 1
  store i64 %fld.load2049, ptr %rec.fld2053, align 8
  store ptr %rec.alloc2051, ptr %pay.gep2045, align 8
  br label %choice.exit

choice.next2030:                                  ; preds = %choice.next1971
  %tag.gep2056 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2057 = load i64, ptr %tag.gep2056, align 8
  %tag.match2058 = icmp eq i64 %tag.id2057, 38
  br i1 %tag.match2058, label %choice.case2054, label %choice.next2055

choice.case2054:                                  ; preds = %choice.next2030
  %pay.gep2059 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2060 = load ptr, ptr %pay.gep2059, align 8
  store ptr %payload.ptr2060, ptr %var._2061, align 8
  store ptr %payload.ptr2060, ptr %var.ud, align 8
  %var.load2062 = load ptr, ptr %var.ud, align 8
  %fld.gep2063 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2062, i32 0, i32 1
  %fld.load2064 = load ptr, ptr %fld.gep2063, align 8
  %var.load2065 = load ptr, ptr %var.table, align 8
  %var.load2066 = load ptr, ptr %var.locals, align 8
  %a.load2067 = load ptr, ptr %var.locals, align 8
  %a.null2068 = icmp eq ptr %a.load2067, null
  br i1 %a.null2068, label %a.create2069, label %a.after2070

choice.next2055:                                  ; preds = %choice.next2030
  %tag.gep2103 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2104 = load i64, ptr %tag.gep2103, align 8
  %tag.match2105 = icmp eq i64 %tag.id2104, 19
  br i1 %tag.match2105, label %choice.case2101, label %choice.next2102

a.create2069:                                     ; preds = %choice.case2054
  %arena.cur2071 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2072 = call ptr @dva_arena_alloc(ptr %arena.cur2071, i64 24)
  %arena.cur2073 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2074 = call ptr @dva_arena_alloc(ptr %arena.cur2073, i64 128)
  %a.len.gep2075 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2072, i32 0, i32 0
  store i64 0, ptr %a.len.gep2075, align 8
  %a.data.gep2076 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2072, i32 0, i32 1
  store ptr %a.buf2074, ptr %a.data.gep2076, align 8
  %a.cap.gep2077 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2072, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2077, align 8
  store ptr %a.create2072, ptr %var.locals, align 8
  br label %a.after2070

a.after2070:                                      ; preds = %a.create2069, %choice.case2054
  %a.load22078 = load ptr, ptr %var.locals, align 8
  %var.load2079 = load ptr, ptr %var.cur_mod, align 8
  %call.res2080 = call ptr @"overloads::walk"(ptr %fld.load2064, ptr %var.load2065, ptr %a.load22078, ptr %var.load2079)
  store ptr %call.res2080, ptr %var.new_msg, align 8
  %arena.cur2081 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2082 = call ptr @dva_arena_alloc(ptr %arena.cur2081, i64 16)
  %tag.gep2083 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2082, i32 0, i32 0
  store i64 38, ptr %tag.gep2083, align 8
  %pay.gep2084 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2082, i32 0, i32 1
  %var.load2085 = load ptr, ptr %var.ud, align 8
  %fld.gep2086 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2085, i32 0, i32 0
  %fld.load2087 = load i1, ptr %fld.gep2086, align 1
  %var.load2088 = load ptr, ptr %var.new_msg, align 8
  %var.load2089 = load ptr, ptr %var.ud, align 8
  %fld.gep2090 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2089, i32 0, i32 2
  %fld.load2091 = load i64, ptr %fld.gep2090, align 8
  %var.load2092 = load ptr, ptr %var.ud, align 8
  %fld.gep2093 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2092, i32 0, i32 3
  %fld.load2094 = load i64, ptr %fld.gep2093, align 8
  %arena.cur2095 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2096 = call ptr @dva_arena_alloc(ptr %arena.cur2095, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2097 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2096, i32 0, i32 0
  store i1 %fld.load2087, ptr %rec.fld2097, align 1
  %rec.fld2098 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2096, i32 0, i32 1
  store ptr %var.load2088, ptr %rec.fld2098, align 8
  %rec.fld2099 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2096, i32 0, i32 2
  store i64 %fld.load2091, ptr %rec.fld2099, align 8
  %rec.fld2100 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2096, i32 0, i32 3
  store i64 %fld.load2094, ptr %rec.fld2100, align 8
  store ptr %rec.alloc2096, ptr %pay.gep2084, align 8
  br label %choice.exit

choice.case2101:                                  ; preds = %choice.next2055
  %pay.gep2106 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2107 = load ptr, ptr %pay.gep2106, align 8
  store ptr %payload.ptr2107, ptr %var._2108, align 8
  store ptr %payload.ptr2107, ptr %var.rm, align 8
  %var.load2109 = load ptr, ptr %var.rm, align 8
  %fld.gep2110 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2109, i32 0, i32 0
  %fld.load2111 = load ptr, ptr %fld.gep2110, align 8
  %var.load2112 = load ptr, ptr %var.table, align 8
  %var.load2113 = load ptr, ptr %var.locals, align 8
  %a.load2114 = load ptr, ptr %var.locals, align 8
  %a.null2115 = icmp eq ptr %a.load2114, null
  br i1 %a.null2115, label %a.create2116, label %a.after2117

choice.next2102:                                  ; preds = %choice.next2055
  %tag.gep2146 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2147 = load i64, ptr %tag.gep2146, align 8
  %tag.match2148 = icmp eq i64 %tag.id2147, 26
  br i1 %tag.match2148, label %choice.case2144, label %choice.next2145

a.create2116:                                     ; preds = %choice.case2101
  %arena.cur2118 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2119 = call ptr @dva_arena_alloc(ptr %arena.cur2118, i64 24)
  %arena.cur2120 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur2120, i64 128)
  %a.len.gep2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 0
  store i64 0, ptr %a.len.gep2122, align 8
  %a.data.gep2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 1
  store ptr %a.buf2121, ptr %a.data.gep2123, align 8
  %a.cap.gep2124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2119, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2124, align 8
  store ptr %a.create2119, ptr %var.locals, align 8
  br label %a.after2117

a.after2117:                                      ; preds = %a.create2116, %choice.case2101
  %a.load22125 = load ptr, ptr %var.locals, align 8
  %var.load2126 = load ptr, ptr %var.cur_mod, align 8
  %call.res2127 = call ptr @"overloads::walk"(ptr %fld.load2111, ptr %var.load2112, ptr %a.load22125, ptr %var.load2126)
  store ptr %call.res2127, ptr %var.new_addr, align 8
  %arena.cur2128 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2129 = call ptr @dva_arena_alloc(ptr %arena.cur2128, i64 16)
  %tag.gep2130 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2129, i32 0, i32 0
  store i64 19, ptr %tag.gep2130, align 8
  %pay.gep2131 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2129, i32 0, i32 1
  %var.load2132 = load ptr, ptr %var.new_addr, align 8
  %var.load2133 = load ptr, ptr %var.rm, align 8
  %fld.gep2134 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2133, i32 0, i32 1
  %fld.load2135 = load ptr, ptr %fld.gep2134, align 8
  %var.load2136 = load ptr, ptr %var.rm, align 8
  %fld.gep2137 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2136, i32 0, i32 2
  %fld.load2138 = load ptr, ptr %fld.gep2137, align 8
  %arena.cur2139 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2140 = call ptr @dva_arena_alloc(ptr %arena.cur2139, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2141 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2140, i32 0, i32 0
  store ptr %var.load2132, ptr %rec.fld2141, align 8
  %rec.fld2142 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2140, i32 0, i32 1
  store ptr %fld.load2135, ptr %rec.fld2142, align 8
  %rec.fld2143 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2140, i32 0, i32 2
  store ptr %fld.load2138, ptr %rec.fld2143, align 8
  store ptr %rec.alloc2140, ptr %pay.gep2131, align 8
  br label %choice.exit

choice.case2144:                                  ; preds = %choice.next2102
  %pay.gep2149 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2150 = load ptr, ptr %pay.gep2149, align 8
  store ptr %payload.ptr2150, ptr %var._2151, align 8
  store ptr %payload.ptr2150, ptr %var.so, align 8
  %var.load2152 = load ptr, ptr %var.so, align 8
  %fld.gep2153 = getelementptr inbounds { ptr, ptr }, ptr %var.load2152, i32 0, i32 1
  %fld.load2154 = load ptr, ptr %fld.gep2153, align 8
  %var.load2155 = load ptr, ptr %var.table, align 8
  %call.res2156 = call ptr @"overloads::keep_type"(ptr %fld.load2154, ptr %var.load2155)
  store ptr %call.res2156, ptr %var.new_sti, align 8
  %arena.cur2157 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2158 = call ptr @dva_arena_alloc(ptr %arena.cur2157, i64 16)
  %tag.gep2159 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2158, i32 0, i32 0
  store i64 26, ptr %tag.gep2159, align 8
  %pay.gep2160 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2158, i32 0, i32 1
  %var.load2161 = load ptr, ptr %var.so, align 8
  %fld.gep2162 = getelementptr inbounds { ptr, ptr }, ptr %var.load2161, i32 0, i32 0
  %fld.load2163 = load ptr, ptr %fld.gep2162, align 8
  %var.load2164 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2165 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2166 = call ptr @dva_arena_alloc(ptr %arena.cur2165, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2167 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2166, i32 0, i32 0
  store ptr %fld.load2163, ptr %rec.fld2167, align 8
  %rec.fld2168 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2166, i32 0, i32 1
  store ptr %var.load2164, ptr %rec.fld2168, align 8
  store ptr %rec.alloc2166, ptr %pay.gep2160, align 8
  br label %choice.exit

choice.next2145:                                  ; preds = %choice.next2102
  %tag.gep2171 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2172 = load i64, ptr %tag.gep2171, align 8
  %tag.match2173 = icmp eq i64 %tag.id2172, 29
  br i1 %tag.match2173, label %choice.case2169, label %choice.next2170

choice.case2169:                                  ; preds = %choice.next2145
  %pay.gep2174 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2175 = load ptr, ptr %pay.gep2174, align 8
  store ptr %payload.ptr2175, ptr %var._2176, align 8
  store ptr %payload.ptr2175, ptr %var.ml, align 8
  %arena.cur2177 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new2178 = call ptr @dva_arena_alloc(ptr %arena.cur2177, i64 24)
  %arena.cur2179 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2180 = call ptr @dva_arena_alloc(ptr %arena.cur2179, i64 128)
  %a.len.gep2181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2178, i32 0, i32 0
  store i64 0, ptr %a.len.gep2181, align 8
  %a.data.gep2182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2178, i32 0, i32 1
  store ptr %a.buf2180, ptr %a.data.gep2182, align 8
  %a.cap.gep2183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2178, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2183, align 8
  store ptr %a.new2178, ptr %var.new_pairs, align 8
  %var.load2184 = load ptr, ptr %var.ml, align 8
  %a.load2185 = load ptr, ptr %var.ml, align 8
  %a.null2186 = icmp eq ptr %a.load2185, null
  br i1 %a.null2186, label %a.create2187, label %a.after2188

choice.next2170:                                  ; preds = %choice.next2145
  %tag.gep2301 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2302 = load i64, ptr %tag.gep2301, align 8
  %tag.match2303 = icmp eq i64 %tag.id2302, 30
  br i1 %tag.match2303, label %choice.case2299, label %choice.next2300

a.create2187:                                     ; preds = %choice.case2169
  %arena.cur2189 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2190 = call ptr @dva_arena_alloc(ptr %arena.cur2189, i64 24)
  %arena.cur2191 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2192 = call ptr @dva_arena_alloc(ptr %arena.cur2191, i64 128)
  %a.len.gep2193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2190, i32 0, i32 0
  store i64 0, ptr %a.len.gep2193, align 8
  %a.data.gep2194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2190, i32 0, i32 1
  store ptr %a.buf2192, ptr %a.data.gep2194, align 8
  %a.cap.gep2195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2190, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2195, align 8
  store ptr %a.create2190, ptr %var.ml, align 8
  br label %a.after2188

a.after2188:                                      ; preds = %a.create2187, %choice.case2169
  %a.load22196 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22196, i32 0, i32 0
  %arr.cycle.len2198 = load i64, ptr %arr.cycle.len2197, align 8
  %arr.cycle.data2199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22196, i32 0, i32 1
  %arr.cycle.data2200 = load ptr, ptr %arr.cycle.data2199, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %a.after2188
  %counter.load2201 = load i64, ptr %loop.idx.87, align 8
  %loop.cond2202 = icmp slt i64 %counter.load2201, %arr.cycle.len2198
  br i1 %loop.cond2202, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i2203 = sub i64 %counter.load2201, 0
  store i64 1, ptr %loop.step.87, align 8
  %arr.elem.gep2204 = getelementptr i64, ptr %arr.cycle.data2200, i64 %counter.load2201
  %arr.elem.raw2205 = load i64, ptr %arr.elem.gep2204, align 8
  %slot.i2p2206 = inttoptr i64 %arr.elem.raw2205 to ptr
  store ptr %slot.i2p2206, ptr %var._2207, align 8
  store ptr %slot.i2p2206, ptr %var.p2208, align 8
  store i64 %loop.rel.i2203, ptr %var._i2209, align 8
  %var.load2210 = load ptr, ptr %var.p2208, align 8
  %fld.gep2211 = getelementptr inbounds { ptr, ptr }, ptr %var.load2210, i32 0, i32 0
  %fld.load2212 = load ptr, ptr %fld.gep2211, align 8
  %var.load2213 = load ptr, ptr %var.table, align 8
  %var.load2214 = load ptr, ptr %var.locals, align 8
  %a.load2215 = load ptr, ptr %var.locals, align 8
  %a.null2216 = icmp eq ptr %a.load2215, null
  br i1 %a.null2216, label %a.create2217, label %a.after2218

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %a.store2266
  %step.val2280 = load i64, ptr %loop.step.87, align 8
  %loop.next2281 = add i64 %counter.load2201, %step.val2280
  store i64 %loop.next2281, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %arena.cur2282 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2283 = call ptr @dva_arena_alloc(ptr %arena.cur2282, i64 16)
  %tag.gep2284 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2283, i32 0, i32 0
  store i64 29, ptr %tag.gep2284, align 8
  %pay.gep2285 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2283, i32 0, i32 1
  %var.load2286 = load ptr, ptr %var.new_pairs, align 8
  %a.load2287 = load ptr, ptr %var.new_pairs, align 8
  %a.null2288 = icmp eq ptr %a.load2287, null
  br i1 %a.null2288, label %a.create2289, label %a.after2290

a.create2217:                                     ; preds = %loop.body.87
  %arena.cur2219 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2220 = call ptr @dva_arena_alloc(ptr %arena.cur2219, i64 24)
  %arena.cur2221 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2222 = call ptr @dva_arena_alloc(ptr %arena.cur2221, i64 128)
  %a.len.gep2223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2220, i32 0, i32 0
  store i64 0, ptr %a.len.gep2223, align 8
  %a.data.gep2224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2220, i32 0, i32 1
  store ptr %a.buf2222, ptr %a.data.gep2224, align 8
  %a.cap.gep2225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2220, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2225, align 8
  store ptr %a.create2220, ptr %var.locals, align 8
  br label %a.after2218

a.after2218:                                      ; preds = %a.create2217, %loop.body.87
  %a.load22226 = load ptr, ptr %var.locals, align 8
  %var.load2227 = load ptr, ptr %var.cur_mod, align 8
  %call.res2228 = call ptr @"overloads::walk"(ptr %fld.load2212, ptr %var.load2213, ptr %a.load22226, ptr %var.load2227)
  %var.load2229 = load ptr, ptr %var.p2208, align 8
  %fld.gep2230 = getelementptr inbounds { ptr, ptr }, ptr %var.load2229, i32 0, i32 1
  %fld.load2231 = load ptr, ptr %fld.gep2230, align 8
  %var.load2232 = load ptr, ptr %var.table, align 8
  %var.load2233 = load ptr, ptr %var.locals, align 8
  %a.load2234 = load ptr, ptr %var.locals, align 8
  %a.null2235 = icmp eq ptr %a.load2234, null
  br i1 %a.null2235, label %a.create2236, label %a.after2237

a.create2236:                                     ; preds = %a.after2218
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
  store ptr %a.create2239, ptr %var.locals, align 8
  br label %a.after2237

a.after2237:                                      ; preds = %a.create2236, %a.after2218
  %a.load22245 = load ptr, ptr %var.locals, align 8
  %var.load2246 = load ptr, ptr %var.cur_mod, align 8
  %call.res2247 = call ptr @"overloads::walk"(ptr %fld.load2231, ptr %var.load2232, ptr %a.load22245, ptr %var.load2246)
  %arena.cur2248 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2249 = call ptr @dva_arena_alloc(ptr %arena.cur2248, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2250 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2249, i32 0, i32 0
  store ptr %call.res2228, ptr %rec.fld2250, align 8
  %rec.fld2251 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2249, i32 0, i32 1
  store ptr %call.res2247, ptr %rec.fld2251, align 8
  %a.load2252 = load ptr, ptr %var.new_pairs, align 8
  %a.null2253 = icmp eq ptr %a.load2252, null
  br i1 %a.null2253, label %a.create2254, label %a.after2255

a.create2254:                                     ; preds = %a.after2237
  %arena.cur2256 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2257 = call ptr @dva_arena_alloc(ptr %arena.cur2256, i64 24)
  %arena.cur2258 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2259 = call ptr @dva_arena_alloc(ptr %arena.cur2258, i64 128)
  %a.len.gep2260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2257, i32 0, i32 0
  store i64 0, ptr %a.len.gep2260, align 8
  %a.data.gep2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2257, i32 0, i32 1
  store ptr %a.buf2259, ptr %a.data.gep2261, align 8
  %a.cap.gep2262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2257, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2262, align 8
  store ptr %a.create2257, ptr %var.new_pairs, align 8
  br label %a.after2255

a.after2255:                                      ; preds = %a.create2254, %a.after2237
  %a.load22263 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2264

a.check2264:                                      ; preds = %a.after2255
  %a.len2267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22263, i32 0, i32 0
  %a.len2268 = load i64, ptr %a.len2267, align 8
  %a.cap2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22263, i32 0, i32 2
  %a.cap2270 = load i64, ptr %a.cap2269, align 8
  %a.needs.grow2271 = icmp eq i64 %a.len2268, %a.cap2270
  br i1 %a.needs.grow2271, label %a.grow2265, label %a.store2266

a.grow2265:                                       ; preds = %a.check2264
  call void @dva_array_grow(ptr %a.load22263)
  br label %a.store2266

a.store2266:                                      ; preds = %a.grow2265, %a.check2264
  %a.cur.data2272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22263, i32 0, i32 1
  %a.cur.data2273 = load ptr, ptr %a.cur.data2272, align 8
  %a.cur.len2274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22263, i32 0, i32 0
  %a.cur.len2275 = load i64, ptr %a.cur.len2274, align 8
  %a.elem.gep2276 = getelementptr i64, ptr %a.cur.data2273, i64 %a.cur.len2275
  %slot.p2i2277 = ptrtoint ptr %rec.alloc2249 to i64
  store i64 %slot.p2i2277, ptr %a.elem.gep2276, align 8
  %a.next.len2278 = add i64 %a.cur.len2275, 1
  %b.len.gep2279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22263, i32 0, i32 0
  store i64 %a.next.len2278, ptr %b.len.gep2279, align 8
  br label %loop.latch.87

a.create2289:                                     ; preds = %loop.exit.87
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
  store ptr %a.create2292, ptr %var.new_pairs, align 8
  br label %a.after2290

a.after2290:                                      ; preds = %a.create2289, %loop.exit.87
  %a.load22298 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22298, ptr %pay.gep2285, align 8
  br label %choice.exit

choice.case2299:                                  ; preds = %choice.next2170
  %pay.gep2304 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2305 = load ptr, ptr %pay.gep2304, align 8
  store ptr %payload.ptr2305, ptr %var._2306, align 8
  store ptr %payload.ptr2305, ptr %var.ct, align 8
  %var.load2307 = load ptr, ptr %var.ct, align 8
  %var.load2308 = load ptr, ptr %var.table, align 8
  %var.load2309 = load ptr, ptr %var.locals, align 8
  %a.load2310 = load ptr, ptr %var.locals, align 8
  %a.null2311 = icmp eq ptr %a.load2310, null
  br i1 %a.null2311, label %a.create2312, label %a.after2313

choice.next2300:                                  ; preds = %choice.next2170
  %tag.gep2331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2332 = load i64, ptr %tag.gep2331, align 8
  %tag.match2333 = icmp eq i64 %tag.id2332, 25
  br i1 %tag.match2333, label %choice.case2329, label %choice.next2330

a.create2312:                                     ; preds = %choice.case2299
  %arena.cur2314 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2315 = call ptr @dva_arena_alloc(ptr %arena.cur2314, i64 24)
  %arena.cur2316 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2317 = call ptr @dva_arena_alloc(ptr %arena.cur2316, i64 128)
  %a.len.gep2318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2315, i32 0, i32 0
  store i64 0, ptr %a.len.gep2318, align 8
  %a.data.gep2319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2315, i32 0, i32 1
  store ptr %a.buf2317, ptr %a.data.gep2319, align 8
  %a.cap.gep2320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2315, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2320, align 8
  store ptr %a.create2315, ptr %var.locals, align 8
  br label %a.after2313

a.after2313:                                      ; preds = %a.create2312, %choice.case2299
  %a.load22321 = load ptr, ptr %var.locals, align 8
  %var.load2322 = load ptr, ptr %var.cur_mod, align 8
  %call.res2323 = call ptr @"overloads::walk"(ptr %var.load2307, ptr %var.load2308, ptr %a.load22321, ptr %var.load2322)
  store ptr %call.res2323, ptr %var.new_ce, align 8
  %arena.cur2324 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2325 = call ptr @dva_arena_alloc(ptr %arena.cur2324, i64 16)
  %tag.gep2326 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2325, i32 0, i32 0
  store i64 30, ptr %tag.gep2326, align 8
  %pay.gep2327 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2325, i32 0, i32 1
  %var.load2328 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2328, ptr %pay.gep2327, align 8
  br label %choice.exit

choice.case2329:                                  ; preds = %choice.next2300
  %pay.gep2334 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2335 = load ptr, ptr %pay.gep2334, align 8
  store ptr %payload.ptr2335, ptr %var._2336, align 8
  store ptr %payload.ptr2335, ptr %var.cp2337, align 8
  %arena.cur2338 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2339 = call ptr @dva_arena_alloc(ptr %arena.cur2338, i64 16)
  %tag.gep2340 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2339, i32 0, i32 0
  store i64 25, ptr %tag.gep2340, align 8
  %pay.gep2341 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2339, i32 0, i32 1
  %var.load2342 = load ptr, ptr %var.cp2337, align 8
  %var.load2343 = load ptr, ptr %var.table, align 8
  %var.load2344 = load ptr, ptr %var.locals, align 8
  %a.load2345 = load ptr, ptr %var.locals, align 8
  %a.null2346 = icmp eq ptr %a.load2345, null
  br i1 %a.null2346, label %a.create2347, label %a.after2348

choice.next2330:                                  ; preds = %choice.next2300
  %tag.gep2361 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2362 = load i64, ptr %tag.gep2361, align 8
  %tag.match2363 = icmp eq i64 %tag.id2362, 27
  br i1 %tag.match2363, label %choice.case2359, label %choice.next2360

a.create2347:                                     ; preds = %choice.case2329
  %arena.cur2349 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2350 = call ptr @dva_arena_alloc(ptr %arena.cur2349, i64 24)
  %arena.cur2351 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2352 = call ptr @dva_arena_alloc(ptr %arena.cur2351, i64 128)
  %a.len.gep2353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2350, i32 0, i32 0
  store i64 0, ptr %a.len.gep2353, align 8
  %a.data.gep2354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2350, i32 0, i32 1
  store ptr %a.buf2352, ptr %a.data.gep2354, align 8
  %a.cap.gep2355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2350, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2355, align 8
  store ptr %a.create2350, ptr %var.locals, align 8
  br label %a.after2348

a.after2348:                                      ; preds = %a.create2347, %choice.case2329
  %a.load22356 = load ptr, ptr %var.locals, align 8
  %var.load2357 = load ptr, ptr %var.cur_mod, align 8
  %call.res2358 = call ptr @"overloads::walk"(ptr %var.load2342, ptr %var.load2343, ptr %a.load22356, ptr %var.load2357)
  store ptr %call.res2358, ptr %pay.gep2341, align 8
  br label %choice.exit

choice.case2359:                                  ; preds = %choice.next2330
  %pay.gep2364 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2365 = load ptr, ptr %pay.gep2364, align 8
  store ptr %payload.ptr2365, ptr %var._2366, align 8
  store ptr %payload.ptr2365, ptr %var.bc, align 8
  %arena.cur2367 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2368 = call ptr @dva_arena_alloc(ptr %arena.cur2367, i64 16)
  %tag.gep2369 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2368, i32 0, i32 0
  store i64 27, ptr %tag.gep2369, align 8
  %pay.gep2370 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2368, i32 0, i32 1
  %var.load2371 = load ptr, ptr %var.bc, align 8
  %var.load2372 = load ptr, ptr %var.table, align 8
  %var.load2373 = load ptr, ptr %var.locals, align 8
  %a.load2374 = load ptr, ptr %var.locals, align 8
  %a.null2375 = icmp eq ptr %a.load2374, null
  br i1 %a.null2375, label %a.create2376, label %a.after2377

choice.next2360:                                  ; preds = %choice.next2330
  %var.load2388 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2376:                                     ; preds = %choice.case2359
  %arena.cur2378 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2379 = call ptr @dva_arena_alloc(ptr %arena.cur2378, i64 24)
  %arena.cur2380 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2381 = call ptr @dva_arena_alloc(ptr %arena.cur2380, i64 128)
  %a.len.gep2382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2379, i32 0, i32 0
  store i64 0, ptr %a.len.gep2382, align 8
  %a.data.gep2383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2379, i32 0, i32 1
  store ptr %a.buf2381, ptr %a.data.gep2383, align 8
  %a.cap.gep2384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2379, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2384, align 8
  store ptr %a.create2379, ptr %var.locals, align 8
  br label %a.after2377

a.after2377:                                      ; preds = %a.create2376, %choice.case2359
  %a.load22385 = load ptr, ptr %var.locals, align 8
  %var.load2386 = load ptr, ptr %var.cur_mod, align 8
  %call.res2387 = call ptr @"overloads::walk"(ptr %var.load2371, ptr %var.load2372, ptr %a.load22385, ptr %var.load2386)
  store ptr %call.res2387, ptr %pay.gep2370, align 8
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
  %4 = call i64 @write(i32 2, ptr @expect.reason.76, i64 25)
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
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
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
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %a.after21
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len30
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
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

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  %var.load104 = load ptr, ptr %var.defs, align 8
  %a.load105 = load ptr, ptr %var.defs, align 8
  %a.null106 = icmp eq ptr %a.load105, null
  br i1 %a.null106, label %a.create107, label %a.after108

choice.exit34:                                    ; preds = %choice.next36, %choice.exit77
  br label %loop.latch.88

choice.case35:                                    ; preds = %loop.body.88
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

choice.next36:                                    ; preds = %loop.body.88
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

a.create107:                                      ; preds = %loop.exit.88
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

a.after108:                                       ; preds = %a.create107, %loop.exit.88
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
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %a.after132
  %counter.load145 = load i64, ptr %loop.idx.89, align 8
  %loop.cond146 = icmp slt i64 %counter.load145, %arr.cycle.len142
  br i1 %loop.cond146, label %loop.body.89, label %loop.exit.nat.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i147 = sub i64 %counter.load145, 0
  store i64 1, ptr %loop.step.89, align 8
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
  br i1 %call.res, label %and.90.then, label %and.90.else

loop.exit.nat.89:                                 ; preds = %loop.header.89
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %choice.exit165
  %step.val187 = load i64, ptr %loop.step.89, align 8
  %loop.next188 = add i64 %counter.load145, %step.val187
  store i64 %loop.next188, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %loop.exit.nat.89
  %var.load189 = load ptr, ptr %var.ctx, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr }, ptr %var.load189, i32 0, i32 1
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %a.len.query192 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %a.len.query193 = load i64, ptr %a.len.query192, align 8
  %cmptmp194 = icmp sgt i64 %a.len.query193, 0
  br i1 %cmptmp194, label %choice.then195, label %choice.else

and.90.then:                                      ; preds = %loop.body.89
  %var.load157 = load ptr, ptr %var.ctx, align 8
  %fld.gep158 = getelementptr inbounds { ptr, ptr }, ptr %var.load157, i32 0, i32 1
  %fld.load159 = load ptr, ptr %fld.gep158, align 8
  %var.load160 = load ptr, ptr %var.d, align 8
  %fld.gep161 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load160, i32 0, i32 0
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %call.res163 = call i1 @"overloads::contains"(ptr %fld.load159, ptr %fld.load162)
  %nottmp = xor i1 %call.res163, true
  br label %and.90.exit

and.90.else:                                      ; preds = %loop.body.89
  br label %and.90.exit

and.90.exit:                                      ; preds = %and.90.else, %and.90.then
  %and.90.phi = phi i1 [ %nottmp, %and.90.then ], [ %call.res, %and.90.else ]
  br i1 %and.90.phi, label %choice.then164, label %choice.exit165

choice.then164:                                   ; preds = %and.90.exit
  %var.load166 = load ptr, ptr %var.ctx, align 8
  %var.load167 = load ptr, ptr %var.d, align 8
  %fld.gep168 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load167, i32 0, i32 0
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %fld.gep170 = getelementptr inbounds { ptr, ptr }, ptr %var.load166, i32 0, i32 1
  %a.fld.load = load ptr, ptr %fld.gep170, align 8
  br label %a.check171

choice.exit165:                                   ; preds = %a.store173, %and.90.exit
  br label %loop.latch.89

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

choice.then195:                                   ; preds = %loop.exit.89
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

choice.else:                                      ; preds = %loop.exit.89
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
