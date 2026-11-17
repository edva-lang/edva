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
@"var.ast::cell_var_names" = external global ptr
@"var.const::pi" = external global double
@"var.const::tau" = external global double
@"var.const::e" = external global double
@"var.const::phi" = external global double
@"var.const::inv_phi" = external global double
@"var.const::sqrt2" = external global double
@"var.const::sqrt3" = external global double
@"var.const::ln2" = external global double
@"var.const::ln10" = external global double
@"var.const::max_i64" = external global i64
@"var.const::min_i64" = external global i64
@"var.const::max_safe_int" = external global i64
@"var.const::max_i32" = external global i32
@"var.const::min_i32" = external global i32
@"var.const::max_i16" = external global i16
@"var.const::min_i16" = external global i16
@"var.const::max_i8" = external global i8
@"var.const::min_i8" = external global i8
@"var.const::max_u64" = external global i64
@"var.const::max_u32" = external global i32
@"var.const::max_u16" = external global i16
@"var.const::max_u8" = external global i8
@"var.const::inf_f64" = external global double
@"var.const::nan_f64" = external global double
@"var.const::max_f64" = external global double
@"var.const::min_f64" = external global double
@"var.const::sub_f64" = external global double
@"var.const::eps_f64" = external global double
@"var.const::inf_f32" = external global float
@"var.const::nan_f32" = external global float
@"var.const::max_f32" = external global float
@"var.const::min_f32" = external global float
@"var.const::sub_f32" = external global float
@"var.const::eps_f32" = external global float
@clo.const = internal constant { ptr, ptr } { ptr @"overloads::unknown", ptr null }
@"var.overloads::unknown" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"overloads::contains", ptr null }
@"var.overloads::contains" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
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

define internal void @__dva_global_init_overloads() #0 {
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

define ptr @"overloads::unknown"() #0 {
entry:
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = call ptr @dva_arena_current()
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 0, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  ret ptr %enum.alloc
}

define i1 @"overloads::contains"(ptr %0, ptr %1) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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

declare i32 @memcmp(ptr, ptr, i64) #0

define { i64, ptr } @"overloads::name_of"(ptr %0) #0 {
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
  %choice.res55 = phi ptr [ %var.load1, %choice.case ], [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.next3 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res55, align 8
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
  %str.tag = lshr i64 %cat.seg15, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %choice.case2
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %concat.tot.len48
  %choice.res = phi ptr [ %concat.str, %concat.tot.len48 ], [ @str.1.struct, %choice.else ]
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load19 = load ptr, ptr %var.m, align 8
  %fld.gep20 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load19, i32 0, i32 1
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %cat.seg22 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %cat.seg23 = load i64, ptr %cat.seg22, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  br i1 %tag.immortal27, label %str_ok26, label %tag.gen_check28

tag.gen_check:                                    ; preds = %choice.then
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok26:                                         ; preds = %abort.dead35, %tag.slow_check29, %tag.gen_check28, %str_ok
  %cat.seg36 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %cat.seg37 = load ptr, ptr %cat.seg36, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg16, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len38

tag.gen_check28:                                  ; preds = %str_ok
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok32 = icmp eq i64 %str.tag25, %active.gen31
  br i1 %tag.fast.ok32, label %str_ok26, label %tag.slow_check29

tag.slow_check29:                                 ; preds = %tag.gen_check28
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag25)
  br i1 %tag.valid34, label %str_ok26, label %tag.stale30

tag.stale30:                                      ; preds = %tag.slow_check29
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %str_ok26

cat.sum.len38:                                    ; preds = %abort.dead39, %str_ok26
  %cat.sum.len40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum41 = extractvalue { i64, i1 } %cat.sum.len40, 0
  %ovf42 = extractvalue { i64, i1 } %cat.sum.len40, 1
  br i1 %ovf42, label %str_overflow_abort44, label %cat.sum.len43

str_overflow_abort:                               ; preds = %str_ok26
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %cat.sum.len38

cat.sum.len43:                                    ; preds = %abort.dead45, %cat.sum.len38
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum41, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort44:                             ; preds = %cat.sum.len38
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %cat.sum.len43

concat.tot.len48:                                 ; preds = %abort.dead50, %cat.sum.len43
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum46)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg18, i64 %cat.seg16, i1 false)
  %cat.off = add i64 0, %cat.seg16
  %cat.dst52 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst52, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off53 = add i64 %cat.off, 2
  %cat.dst54 = getelementptr i8, ptr %concat.buf, i64 %cat.off53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst54, ptr align 1 %cat.seg37, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum41
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum41, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit11

str_overflow_abort49:                             ; preds = %cat.sum.len43
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %concat.tot.len48
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define { i64, ptr } @"overloads::symbol"(ptr %0, i64 %1) #0 {
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
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %var.load5 = load i64, ptr %var.arity, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load5, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 6)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

cat.sum.len6:                                     ; preds = %abort.dead7, %str_ok
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %cat.sum.len6

cat.sum.len11:                                    ; preds = %abort.dead13, %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum9, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort12:                             ; preds = %cat.sum.len6
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %cat.sum.len11

concat.tot.len16:                                 ; preds = %abort.dead18, %cat.sum.len11
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum14)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.off21 = add i64 %cat.off, 6
  %cat.dst22 = getelementptr i8, ptr %concat.buf, i64 %cat.off21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst22, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum9
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort17:                             ; preds = %cat.sum.len11
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #0 {
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

define i1 @"overloads::is_family"(ptr %0, ptr %1) #0 {
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

define i1 @"overloads::name_is_qualified"(ptr %0, i64 %1) #0 {
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.61.then, label %and.61.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.61.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.61.else:                                      ; preds = %str_ok
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %idx_ok
  %and.61.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.61.else ]
  br i1 %and.61.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.61.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.61.exit

idx_oob:                                          ; preds = %idx_big_check, %and.61.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.61.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.61.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit48
  %choice.res52 = phi i1 [ %choice.res, %choice.exit48 ], [ false, %choice.else ]
  ret i1 %choice.res52

idx_big_check19:                                  ; preds = %choice.then
  %idx.big22 = icmp sge i64 %var.load17, %s.read.len14
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 58
  br i1 %cmptmp27, label %and.62.then, label %and.62.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.62.then:                                      ; preds = %idx_ok20
  %var.load28 = load ptr, ptr %var.name, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %var.load34 = load i64, ptr %var.i, align 8
  %addtmp35 = add i64 %var.load34, 1
  %idx.neg36 = icmp slt i64 %addtmp35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

and.62.else:                                      ; preds = %idx_ok20
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok38
  %and.62.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.62.else ]
  br i1 %and.62.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.62.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.62.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.62.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.62.exit
  br label %choice.exit48

choice.else47:                                    ; preds = %and.62.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 1
  %call.res = call i1 @"overloads::name_is_qualified"(ptr %var.load49, i64 %addtmp51)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i1 [ true, %choice.then46 ], [ %call.res, %choice.else47 ]
  br label %choice.exit
}

define i64 @"overloads::decl_module_find"(ptr %0, i64 %1, i64 %2) #0 {
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.63.then, label %and.63.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.63.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.63.else:                                      ; preds = %str_ok
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %idx_ok
  %and.63.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.63.else ]
  br i1 %and.63.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.63.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.63.exit

idx_oob:                                          ; preds = %idx_big_check, %and.63.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.63.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.63.exit
  %var.load58 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit48
  %choice.res59 = phi i64 [ %choice.res, %choice.exit48 ], [ %var.load58, %choice.else ]
  ret i64 %choice.res59

idx_big_check19:                                  ; preds = %choice.then
  %idx.big22 = icmp sge i64 %var.load17, %s.read.len14
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 58
  br i1 %cmptmp27, label %and.64.then, label %and.64.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.64.then:                                      ; preds = %idx_ok20
  %var.load28 = load ptr, ptr %var.name, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %var.load34 = load i64, ptr %var.i, align 8
  %addtmp35 = add i64 %var.load34, 1
  %idx.neg36 = icmp slt i64 %addtmp35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

and.64.else:                                      ; preds = %idx_ok20
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %idx_ok38
  %and.64.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.64.else ]
  br i1 %and.64.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.64.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.64.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.64.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.64.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 2
  %var.load52 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"overloads::decl_module_find"(ptr %var.load49, i64 %addtmp51, i64 %var.load52)
  br label %choice.exit48

choice.else47:                                    ; preds = %and.64.exit
  %var.load53 = load ptr, ptr %var.name, align 8
  %var.load54 = load i64, ptr %var.i, align 8
  %addtmp55 = add i64 %var.load54, 1
  %var.load56 = load i64, ptr %var.last, align 8
  %call.res57 = call i64 @"overloads::decl_module_find"(ptr %var.load53, i64 %addtmp55, i64 %var.load56)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i64 [ %call.res, %choice.then46 ], [ %call.res57, %choice.else47 ]
  br label %choice.exit
}

define { i64, ptr } @"overloads::decl_module"(ptr %0, i64 %1) #0 {
entry:
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
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
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

define { i64, ptr } @"overloads::resolve_family_name"(ptr %0, ptr %1, ptr %2) #0 {
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
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
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
  %str.tag16 = lshr i64 %cat.seg14, 48
  %tag.immortal18 = icmp eq i64 %str.tag16, 0
  br i1 %tag.immortal18, label %str_ok17, label %tag.gen_check19

choice.exit:                                      ; preds = %choice.exit139, %choice.exit11
  %choice.res143 = phi ptr [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.exit139 ]
  %ret.pack144 = load { i64, ptr }, ptr %choice.res143, align 8
  ret { i64, ptr } %ret.pack144

choice.then9:                                     ; preds = %choice.then
  %var.load12 = load ptr, ptr %var.name, align 8
  br label %choice.exit11

choice.else10:                                    ; preds = %choice.then
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %var.load12, %choice.then9 ], [ @str.1.struct, %choice.else10 ]
  br label %choice.exit

str_ok17:                                         ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %choice.else
  %cat.seg27 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cat.seg28 = load ptr, ptr %cat.seg27, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load29 = load ptr, ptr %var.name, align 8
  %cat.seg30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %cat.seg31 = load i64, ptr %cat.seg30, align 8
  %cat.seg32 = and i64 %cat.seg31, 281474976710655
  %str.tag33 = lshr i64 %cat.seg31, 48
  %tag.immortal35 = icmp eq i64 %str.tag33, 0
  br i1 %tag.immortal35, label %str_ok34, label %tag.gen_check36

tag.gen_check19:                                  ; preds = %choice.else
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %str.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %str_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag16)
  br i1 %tag.valid25, label %str_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %str_ok17

str_ok34:                                         ; preds = %abort.dead43, %tag.slow_check37, %tag.gen_check36, %str_ok17
  %cat.seg44 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %cat.seg45 = load ptr, ptr %cat.seg44, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg15, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len46

tag.gen_check36:                                  ; preds = %str_ok17
  %active.gen39 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok40 = icmp eq i64 %str.tag33, %active.gen39
  br i1 %tag.fast.ok40, label %str_ok34, label %tag.slow_check37

tag.slow_check37:                                 ; preds = %tag.gen_check36
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag33)
  br i1 %tag.valid42, label %str_ok34, label %tag.stale38

tag.stale38:                                      ; preds = %tag.slow_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %str_ok34

cat.sum.len46:                                    ; preds = %abort.dead47, %str_ok34
  %cat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg32)
  %sum49 = extractvalue { i64, i1 } %cat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %cat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %cat.sum.len51

str_overflow_abort:                               ; preds = %str_ok34
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %cat.sum.len46

cat.sum.len51:                                    ; preds = %abort.dead53, %cat.sum.len46
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %cat.sum.len46
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %cat.sum.len51

concat.tot.len56:                                 ; preds = %abort.dead58, %cat.sum.len51
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum54)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg28, i64 %cat.seg15, i1 false)
  %cat.off = add i64 0, %cat.seg15
  %cat.dst60 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst60, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off61 = add i64 %cat.off, 2
  %cat.dst62 = getelementptr i8, ptr %concat.buf, i64 %cat.off61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst62, ptr align 1 %cat.seg45, i64 %cat.seg32, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum49
  store i8 0, ptr %concat.nul, align 1
  %arena.cur63 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum49, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub, align 8
  %var.load64 = load ptr, ptr %var.ctx, align 8
  %var.load65 = load ptr, ptr %var.pub, align 8
  %call.res66 = call i1 @"overloads::is_family"(ptr %var.load64, ptr %var.load65)
  br i1 %call.res66, label %choice.then67, label %choice.exit68

str_overflow_abort57:                             ; preds = %cat.sum.len51
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %concat.tot.len56

choice.then67:                                    ; preds = %concat.tot.len56
  %var.load69 = load ptr, ptr %var.pub, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load69, align 8
  ret { i64, ptr } %ret.pack

choice.exit68:                                    ; preds = %ret.dead, %concat.tot.len56
  %var.load70 = load ptr, ptr %var.cur_mod, align 8
  %cat.seg71 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %cat.seg72 = load i64, ptr %cat.seg71, align 8
  %cat.seg73 = and i64 %cat.seg72, 281474976710655
  %str.tag74 = lshr i64 %cat.seg72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  br i1 %tag.immortal76, label %str_ok75, label %tag.gen_check77

ret.dead:                                         ; No predecessors!
  br label %choice.exit68

str_ok75:                                         ; preds = %abort.dead84, %tag.slow_check78, %tag.gen_check77, %choice.exit68
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 1
  %cat.seg86 = load ptr, ptr %cat.seg85, align 8
  %cat.lit.data87 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %var.load88 = load ptr, ptr %var.name, align 8
  %cat.seg89 = getelementptr inbounds { i64, ptr }, ptr %var.load88, i32 0, i32 0
  %cat.seg90 = load i64, ptr %cat.seg89, align 8
  %cat.seg91 = and i64 %cat.seg90, 281474976710655
  %str.tag92 = lshr i64 %cat.seg90, 48
  %tag.immortal94 = icmp eq i64 %str.tag92, 0
  br i1 %tag.immortal94, label %str_ok93, label %tag.gen_check95

tag.gen_check77:                                  ; preds = %choice.exit68
  %active.gen80 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok81 = icmp eq i64 %str.tag74, %active.gen80
  br i1 %tag.fast.ok81, label %str_ok75, label %tag.slow_check78

tag.slow_check78:                                 ; preds = %tag.gen_check77
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag74)
  br i1 %tag.valid83, label %str_ok75, label %tag.stale79

tag.stale79:                                      ; preds = %tag.slow_check78
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %str_ok75

str_ok93:                                         ; preds = %abort.dead102, %tag.slow_check96, %tag.gen_check95, %str_ok75
  %cat.seg103 = getelementptr inbounds { i64, ptr }, ptr %var.load88, i32 0, i32 1
  %cat.seg104 = load ptr, ptr %cat.seg103, align 8
  %cat.sum.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg73, i64 3)
  %sum106 = extractvalue { i64, i1 } %cat.sum.len105, 0
  %ovf107 = extractvalue { i64, i1 } %cat.sum.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %cat.sum.len108

tag.gen_check95:                                  ; preds = %str_ok75
  %active.gen98 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok99 = icmp eq i64 %str.tag92, %active.gen98
  br i1 %tag.fast.ok99, label %str_ok93, label %tag.slow_check96

tag.slow_check96:                                 ; preds = %tag.gen_check95
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag92)
  br i1 %tag.valid101, label %str_ok93, label %tag.stale97

tag.stale97:                                      ; preds = %tag.slow_check96
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %str_ok93

cat.sum.len108:                                   ; preds = %abort.dead110, %str_ok93
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum106, i64 %cat.seg91)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

str_overflow_abort109:                            ; preds = %str_ok93
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %cat.sum.len108

cat.sum.len114:                                   ; preds = %abort.dead116, %cat.sum.len108
  %concat.tot.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 1)
  %sum118 = extractvalue { i64, i1 } %concat.tot.len117, 0
  %ovf119 = extractvalue { i64, i1 } %concat.tot.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %concat.tot.len120

str_overflow_abort115:                            ; preds = %cat.sum.len108
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %cat.sum.len114

concat.tot.len120:                                ; preds = %abort.dead122, %cat.sum.len114
  %arena.cur123 = call ptr @dva_arena_current()
  %concat.buf124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 %sum118)
  %cat.dst125 = getelementptr i8, ptr %concat.buf124, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst125, ptr align 1 %cat.seg86, i64 %cat.seg73, i1 false)
  %cat.off126 = add i64 0, %cat.seg73
  %cat.dst127 = getelementptr i8, ptr %concat.buf124, i64 %cat.off126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst127, ptr align 1 %cat.lit.data87, i64 3, i1 false)
  %cat.off128 = add i64 %cat.off126, 3
  %cat.dst129 = getelementptr i8, ptr %concat.buf124, i64 %cat.off128
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst129, ptr align 1 %cat.seg104, i64 %cat.seg91, i1 false)
  %concat.nul130 = getelementptr i8, ptr %concat.buf124, i64 %sum112
  store i8 0, ptr %concat.nul130, align 1
  %arena.cur131 = call ptr @dva_arena_current()
  %concat.str132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 16)
  %str.build.len.gep133 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 0
  store i64 %sum112, ptr %str.build.len.gep133, align 8
  %str.build.data.gep134 = getelementptr inbounds { i64, ptr }, ptr %concat.str132, i32 0, i32 1
  store ptr %concat.buf124, ptr %str.build.data.gep134, align 8
  store ptr %concat.str132, ptr %var.priv, align 8
  %var.load135 = load ptr, ptr %var.ctx, align 8
  %var.load136 = load ptr, ptr %var.priv, align 8
  %call.res137 = call i1 @"overloads::is_family"(ptr %var.load135, ptr %var.load136)
  br i1 %call.res137, label %choice.then138, label %choice.exit139

str_overflow_abort121:                            ; preds = %cat.sum.len114
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %concat.tot.len120

choice.then138:                                   ; preds = %concat.tot.len120
  %var.load140 = load ptr, ptr %var.priv, align 8
  %ret.pack141 = load { i64, ptr }, ptr %var.load140, align 8
  ret { i64, ptr } %ret.pack141

choice.exit139:                                   ; preds = %ret.dead142, %concat.tot.len120
  br label %choice.exit

ret.dead142:                                      ; No predecessors!
  br label %choice.exit139
}

define i1 @"overloads::has_variants"(ptr %0, ptr %1) #0 {
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

define ptr @"overloads::signature"(ptr %0, ptr %1, i64 %2) #0 {
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

define ptr @"overloads::select_value"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #0 {
entry:
  %var.f = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.fam = alloca ptr, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.n, align 8
  %var.load1 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur11 = call ptr @dva_arena_current()
  %ret.ub.alloc12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  store { i64, ptr } %call.res10, ptr %ret.ub.alloc12, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.after
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc12, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res, ptr %var.fam, align 8
  %var.load13 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %eq.lhs.len14 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len15 = and i64 %eq.lhs.len14, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len14, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len17 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len15, %eq.rhs.len17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.exit
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data, i64 %eq.lhs.len15)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then19, label %choice.else20

choice.then19:                                    ; preds = %str.eq.merge
  %var.load22 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else20:                                    ; preds = %str.eq.merge
  %var.load35 = load ptr, ptr %var.e, align 8
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.else20, %choice.exit23
  %choice.res36 = phi ptr [ %choice.res34, %choice.exit23 ], [ %var.load35, %choice.else20 ]
  ret ptr %choice.res36

choice.exit23:                                    ; preds = %choice.next, %choice.case
  %choice.res34 = phi ptr [ %enum.alloc, %choice.case ], [ %var.load33, %choice.next ]
  br label %choice.exit21

choice.case:                                      ; preds = %choice.then19
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %arena.cur24 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %tag.gep25 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep25, align 8
  %pay.gep26 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load27 = load ptr, ptr %var.fam, align 8
  %var.load28 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load28, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query29 = load i64, ptr %a.len.query, align 8
  %call.res30 = call { i64, ptr } @"overloads::symbol"(ptr %var.load27, i64 %a.len.query29)
  %arena.cur31 = call ptr @dva_arena_current()
  %ret.ub.alloc32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  store { i64, ptr } %call.res30, ptr %ret.ub.alloc32, align 8
  store ptr %ret.ub.alloc32, ptr %pay.gep26, align 8
  br label %choice.exit23

choice.next:                                      ; preds = %choice.then19
  %var.load33 = load ptr, ptr %var.e, align 8
  br label %choice.exit23
}

define ptr @"overloads::application"(ptr %0) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur55 = call ptr @dva_arena_current()
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
  %arena.cur76 = call ptr @dva_arena_current()
  %a.create77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
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
  %arena.cur98 = call ptr @dva_arena_current()
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = call ptr @dva_arena_current()
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
  %arena.cur160 = call ptr @dva_arena_current()
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
  %arena.cur136 = call ptr @dva_arena_current()
  %a.create137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = call ptr @dva_arena_current()
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
  %arena.cur174 = call ptr @dva_arena_current()
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = call ptr @dva_arena_current()
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
  %arena.cur188 = call ptr @dva_arena_current()
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
  %arena.cur198 = call ptr @dva_arena_current()
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = call ptr @dva_arena_current()
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
  %arena.cur222 = call ptr @dva_arena_current()
  %enum.alloc223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 16)
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc223, i32 0, i32 0
  store i64 9, ptr %tag.gep224, align 8
  %pay.gep225 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc223, i32 0, i32 1
  %var.load226 = load ptr, ptr %var.base, align 8
  %call.res227 = call { i64, ptr } @"overloads::name_of"(ptr %var.load226)
  %arena.cur228 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 16)
  store { i64, ptr } %call.res227, ptr %ret.ub.alloc, align 8
  %var.load229 = load ptr, ptr %var.base, align 8
  %var.load230 = load ptr, ptr %var.args, align 8
  %a.load231 = load ptr, ptr %var.args, align 8
  %a.null232 = icmp eq ptr %a.load231, null
  br i1 %a.null232, label %a.create233, label %a.after234

a.create233:                                      ; preds = %a.store208
  %arena.cur235 = call ptr @dva_arena_current()
  %a.create236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 24)
  %arena.cur237 = call ptr @dva_arena_current()
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
  %arena.cur243 = call ptr @dva_arena_current()
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

define internal void @dva_array_grow(ptr %0) #0 {
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
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  %2 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

define ptr @"overloads::keep_type"(ptr %0, ptr %1) #0 {
entry:
  %var.ctx = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  store ptr %0, ptr %var.ti, align 8
  store ptr %1, ptr %var.ctx, align 8
  %var.load = load ptr, ptr %var.ti, align 8
  ret ptr %var.load
}

define ptr @"overloads::keep_fparams"(ptr %0, ptr %1) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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

define ptr @"overloads::walk_many"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur18 = call ptr @dva_arena_current()
  %a.create19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 24)
  %arena.cur20 = call ptr @dva_arena_current()
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
  %arena.cur31 = call ptr @dva_arena_current()
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = call ptr @dva_arena_current()
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
  %arena.cur48 = call ptr @dva_arena_current()
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = call ptr @dva_arena_current()
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

define ptr @"overloads::walk"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.bc = alloca ptr, align 8
  %var._2363 = alloca ptr, align 8
  %var.cp2334 = alloca ptr, align 8
  %var._2333 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2303 = alloca ptr, align 8
  %var._2205 = alloca ptr, align 8
  %var._i2204 = alloca i64, align 8
  %var.p2196 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2171 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2146 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2103 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2056 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2031 = alloca ptr, align 8
  %var.new_val2003 = alloca ptr, align 8
  %var.r1973 = alloca ptr, align 8
  %var._1972 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1942 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1913 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1884 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1845 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1794 = alloca ptr, align 8
  %var._1793 = alloca ptr, align 8
  %var.new_val1773 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1753 = alloca ptr, align 8
  %var.new_rhs1723 = alloca ptr, align 8
  %var.new_lhs1693 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1663 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1607 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1543 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1471 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._1378 = alloca ptr, align 8
  %var._i1377 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1355 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1273 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1213 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1188 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1080 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1039 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1023 = alloca ptr, align 8
  %var.eff_mod = alloca ptr, align 8
  %var.is_top = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._954 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._747 = alloca ptr, align 8
  %var._i746 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._702 = alloca ptr, align 8
  %var._i701 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._660 = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.ca = alloca ptr, align 8
  %var._565 = alloca ptr, align 8
  %var._510 = alloca ptr, align 8
  %var._i509 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._449 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._348 = alloca ptr, align 8
  %var._i347 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var._285 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._244 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._206 = alloca ptr, align 8
  %var.fam = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2357, %a.after2374, %a.after2345, %a.after2310, %a.after2287, %choice.case2139, %a.after2112, %a.after2065, %choice.case2024, %choice.exit1979, %a.after1949, %a.after1924, %a.after1895, %a.after1854, %a.after1825, %a.after1762, %choice.exit1699, %a.after1635, %a.after1571, %a.after1499, %a.after1448, %choice.exit1279, %a.after1241, %choice.case1181, %a.after1134, %a.after933, %a.after644, %a.after407, %a.after222, %choice.exit28, %a.after, %choice.case
  %choice.res2386 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res198, %choice.exit28 ], [ %enum.alloc208, %a.after222 ], [ %enum.alloc419, %a.after407 ], [ %enum.alloc637, %a.after644 ], [ %enum.alloc922, %a.after933 ], [ %enum.alloc1146, %a.after1134 ], [ %enum.alloc1195, %choice.case1181 ], [ %enum.alloc1225, %a.after1241 ], [ %choice.res1347, %choice.exit1279 ], [ %enum.alloc1441, %a.after1448 ], [ %enum.alloc1511, %a.after1499 ], [ %enum.alloc1583, %a.after1571 ], [ %enum.alloc1647, %a.after1635 ], [ %enum.alloc1725, %choice.exit1699 ], [ %enum.alloc1775, %a.after1762 ], [ %enum.alloc1815, %a.after1825 ], [ %enum.alloc1866, %a.after1854 ], [ %enum.alloc1886, %a.after1895 ], [ %enum.alloc1915, %a.after1924 ], [ %enum.alloc1961, %a.after1949 ], [ %enum.alloc2005, %choice.exit1979 ], [ %enum.alloc2038, %choice.case2024 ], [ %enum.alloc2077, %a.after2065 ], [ %enum.alloc2124, %a.after2112 ], [ %enum.alloc2153, %choice.case2139 ], [ %enum.alloc2280, %a.after2287 ], [ %enum.alloc2322, %a.after2310 ], [ %enum.alloc2336, %a.after2345 ], [ %enum.alloc2365, %a.after2374 ], [ %var.load2385, %choice.next2357 ]
  ret ptr %choice.res2386

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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
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
  %tag.gep201 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id202 = load i64, ptr %tag.gep201, align 8
  %tag.match203 = icmp eq i64 %tag.id202, 24
  br i1 %tag.match203, label %choice.case199, label %choice.next200

choice.exit28:                                    ; preds = %a.after182, %choice.exit81
  %choice.res198 = phi ptr [ %choice.res147, %choice.exit81 ], [ %enum.alloc149, %a.after182 ]
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
  %arena.cur148 = call ptr @dva_arena_current()
  %enum.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 16)
  %tag.gep150 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc149, i32 0, i32 0
  store i64 5, ptr %tag.gep150, align 8
  %pay.gep151 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc149, i32 0, i32 1
  %var.load152 = load ptr, ptr %var.b, align 8
  %fld.gep153 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load152, i32 0, i32 0
  %fld.load154 = load ptr, ptr %fld.gep153, align 8
  %var.load155 = load ptr, ptr %var.b, align 8
  %fld.gep156 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load155, i32 0, i32 1
  %fld.load157 = load ptr, ptr %fld.gep156, align 8
  %var.load158 = load ptr, ptr %var.table, align 8
  %var.load159 = load ptr, ptr %var.locals, align 8
  %a.load160 = load ptr, ptr %var.locals, align 8
  %a.null161 = icmp eq ptr %a.load160, null
  br i1 %a.null161, label %a.create162, label %a.after163

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
  %arena.cur56 = call ptr @dva_arena_current()
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = call ptr @dva_arena_current()
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
  %arena.cur71 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  store { i64, ptr } %call.res70, ptr %ret.ub.alloc, align 8
  br label %choice.exit66

choice.else:                                      ; preds = %a.after55
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else, %choice.then
  %choice.res72 = phi ptr [ %ret.ub.alloc, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res72, ptr %var.fam, align 8
  %var.load73 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %eq.lhs.len74 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len75 = and i64 %eq.lhs.len74, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len74, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit66
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len77 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len75, %eq.rhs.len77
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.exit66
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data, i64 %eq.lhs.len75)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then79, label %choice.else80

choice.then79:                                    ; preds = %str.eq.merge
  %var.load82 = load ptr, ptr %var.expanded, align 8
  %var.load83 = load ptr, ptr %var.table, align 8
  %var.load84 = load ptr, ptr %var.locals, align 8
  %a.load85 = load ptr, ptr %var.locals, align 8
  %a.null86 = icmp eq ptr %a.load85, null
  br i1 %a.null86, label %a.create87, label %a.after88

choice.else80:                                    ; preds = %str.eq.merge
  %arena.cur99 = call ptr @dva_arena_current()
  %enum.alloc100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %tag.gep101 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc100, i32 0, i32 0
  store i64 5, ptr %tag.gep101, align 8
  %pay.gep102 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc100, i32 0, i32 1
  %var.load103 = load ptr, ptr %var.b, align 8
  %fld.gep104 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load103, i32 0, i32 0
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %var.load106 = load ptr, ptr %var.b, align 8
  %fld.gep107 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load106, i32 0, i32 1
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %var.load109 = load ptr, ptr %var.table, align 8
  %var.load110 = load ptr, ptr %var.locals, align 8
  %a.load111 = load ptr, ptr %var.locals, align 8
  %a.null112 = icmp eq ptr %a.load111, null
  br i1 %a.null112, label %a.create113, label %a.after114

choice.exit81:                                    ; preds = %a.after133, %a.after88
  %choice.res147 = phi ptr [ %call.res98, %a.after88 ], [ %enum.alloc100, %a.after133 ]
  br label %choice.exit28

a.create87:                                       ; preds = %choice.then79
  %arena.cur89 = call ptr @dva_arena_current()
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = call ptr @dva_arena_current()
  %a.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep93, align 8
  %a.data.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf92, ptr %a.data.gep94, align 8
  %a.cap.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep95, align 8
  store ptr %a.create90, ptr %var.locals, align 8
  br label %a.after88

a.after88:                                        ; preds = %a.create87, %choice.then79
  %a.load296 = load ptr, ptr %var.locals, align 8
  %var.load97 = load ptr, ptr %var.cur_mod, align 8
  %call.res98 = call ptr @"overloads::walk"(ptr %var.load82, ptr %var.load83, ptr %a.load296, ptr %var.load97)
  br label %choice.exit81

a.create113:                                      ; preds = %choice.else80
  %arena.cur115 = call ptr @dva_arena_current()
  %a.create116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 24)
  %arena.cur117 = call ptr @dva_arena_current()
  %a.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 128)
  %a.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 0
  store i64 0, ptr %a.len.gep119, align 8
  %a.data.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 1
  store ptr %a.buf118, ptr %a.data.gep120, align 8
  %a.cap.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 2
  store i64 16, ptr %a.cap.gep121, align 8
  store ptr %a.create116, ptr %var.locals, align 8
  br label %a.after114

a.after114:                                       ; preds = %a.create113, %choice.else80
  %a.load2122 = load ptr, ptr %var.locals, align 8
  %var.load123 = load ptr, ptr %var.cur_mod, align 8
  %call.res124 = call ptr @"overloads::walk"(ptr %fld.load108, ptr %var.load109, ptr %a.load2122, ptr %var.load123)
  %var.load125 = load ptr, ptr %var.b, align 8
  %fld.gep126 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load125, i32 0, i32 2
  %fld.load127 = load ptr, ptr %fld.gep126, align 8
  %var.load128 = load ptr, ptr %var.table, align 8
  %var.load129 = load ptr, ptr %var.locals, align 8
  %a.load130 = load ptr, ptr %var.locals, align 8
  %a.null131 = icmp eq ptr %a.load130, null
  br i1 %a.null131, label %a.create132, label %a.after133

a.create132:                                      ; preds = %a.after114
  %arena.cur134 = call ptr @dva_arena_current()
  %a.create135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 24)
  %arena.cur136 = call ptr @dva_arena_current()
  %a.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 128)
  %a.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 0
  store i64 0, ptr %a.len.gep138, align 8
  %a.data.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 1
  store ptr %a.buf137, ptr %a.data.gep139, align 8
  %a.cap.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 2
  store i64 16, ptr %a.cap.gep140, align 8
  store ptr %a.create135, ptr %var.locals, align 8
  br label %a.after133

a.after133:                                       ; preds = %a.create132, %a.after114
  %a.load2141 = load ptr, ptr %var.locals, align 8
  %var.load142 = load ptr, ptr %var.cur_mod, align 8
  %call.res143 = call ptr @"overloads::walk"(ptr %fld.load127, ptr %var.load128, ptr %a.load2141, ptr %var.load142)
  %arena.cur144 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load105, ptr %rec.fld, align 8
  %rec.fld145 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res124, ptr %rec.fld145, align 8
  %rec.fld146 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res143, ptr %rec.fld146, align 8
  store ptr %rec.alloc, ptr %pay.gep102, align 8
  br label %choice.exit81

a.create162:                                      ; preds = %choice.next30
  %arena.cur164 = call ptr @dva_arena_current()
  %a.create165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 24)
  %arena.cur166 = call ptr @dva_arena_current()
  %a.buf167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 128)
  %a.len.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 0
  store i64 0, ptr %a.len.gep168, align 8
  %a.data.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 1
  store ptr %a.buf167, ptr %a.data.gep169, align 8
  %a.cap.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create165, i32 0, i32 2
  store i64 16, ptr %a.cap.gep170, align 8
  store ptr %a.create165, ptr %var.locals, align 8
  br label %a.after163

a.after163:                                       ; preds = %a.create162, %choice.next30
  %a.load2171 = load ptr, ptr %var.locals, align 8
  %var.load172 = load ptr, ptr %var.cur_mod, align 8
  %call.res173 = call ptr @"overloads::walk"(ptr %fld.load157, ptr %var.load158, ptr %a.load2171, ptr %var.load172)
  %var.load174 = load ptr, ptr %var.b, align 8
  %fld.gep175 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load174, i32 0, i32 2
  %fld.load176 = load ptr, ptr %fld.gep175, align 8
  %var.load177 = load ptr, ptr %var.table, align 8
  %var.load178 = load ptr, ptr %var.locals, align 8
  %a.load179 = load ptr, ptr %var.locals, align 8
  %a.null180 = icmp eq ptr %a.load179, null
  br i1 %a.null180, label %a.create181, label %a.after182

a.create181:                                      ; preds = %a.after163
  %arena.cur183 = call ptr @dva_arena_current()
  %a.create184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur185 = call ptr @dva_arena_current()
  %a.buf186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 128)
  %a.len.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 0
  store i64 0, ptr %a.len.gep187, align 8
  %a.data.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 1
  store ptr %a.buf186, ptr %a.data.gep188, align 8
  %a.cap.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 2
  store i64 16, ptr %a.cap.gep189, align 8
  store ptr %a.create184, ptr %var.locals, align 8
  br label %a.after182

a.after182:                                       ; preds = %a.create181, %a.after163
  %a.load2190 = load ptr, ptr %var.locals, align 8
  %var.load191 = load ptr, ptr %var.cur_mod, align 8
  %call.res192 = call ptr @"overloads::walk"(ptr %fld.load176, ptr %var.load177, ptr %a.load2190, ptr %var.load191)
  %arena.cur193 = call ptr @dva_arena_current()
  %rec.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld195 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc194, i32 0, i32 0
  store ptr %fld.load154, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc194, i32 0, i32 1
  store ptr %call.res173, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc194, i32 0, i32 2
  store ptr %call.res192, ptr %rec.fld197, align 8
  store ptr %rec.alloc194, ptr %pay.gep151, align 8
  br label %choice.exit28

choice.case199:                                   ; preds = %choice.next20
  %pay.gep204 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr205 = load ptr, ptr %pay.gep204, align 8
  store ptr %payload.ptr205, ptr %var._206, align 8
  store ptr %payload.ptr205, ptr %var.u, align 8
  %arena.cur207 = call ptr @dva_arena_current()
  %enum.alloc208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 16)
  %tag.gep209 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc208, i32 0, i32 0
  store i64 24, ptr %tag.gep209, align 8
  %pay.gep210 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc208, i32 0, i32 1
  %var.load211 = load ptr, ptr %var.u, align 8
  %fld.gep212 = getelementptr inbounds { ptr, ptr }, ptr %var.load211, i32 0, i32 0
  %fld.load213 = load ptr, ptr %fld.gep212, align 8
  %var.load214 = load ptr, ptr %var.u, align 8
  %fld.gep215 = getelementptr inbounds { ptr, ptr }, ptr %var.load214, i32 0, i32 1
  %fld.load216 = load ptr, ptr %fld.gep215, align 8
  %var.load217 = load ptr, ptr %var.table, align 8
  %var.load218 = load ptr, ptr %var.locals, align 8
  %a.load219 = load ptr, ptr %var.locals, align 8
  %a.null220 = icmp eq ptr %a.load219, null
  br i1 %a.null220, label %a.create221, label %a.after222

choice.next200:                                   ; preds = %choice.next20
  %tag.gep239 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id240 = load i64, ptr %tag.gep239, align 8
  %tag.match241 = icmp eq i64 %tag.id240, 14
  br i1 %tag.match241, label %choice.case237, label %choice.next238

a.create221:                                      ; preds = %choice.case199
  %arena.cur223 = call ptr @dva_arena_current()
  %a.create224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 24)
  %arena.cur225 = call ptr @dva_arena_current()
  %a.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 128)
  %a.len.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 0
  store i64 0, ptr %a.len.gep227, align 8
  %a.data.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 1
  store ptr %a.buf226, ptr %a.data.gep228, align 8
  %a.cap.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create224, i32 0, i32 2
  store i64 16, ptr %a.cap.gep229, align 8
  store ptr %a.create224, ptr %var.locals, align 8
  br label %a.after222

a.after222:                                       ; preds = %a.create221, %choice.case199
  %a.load2230 = load ptr, ptr %var.locals, align 8
  %var.load231 = load ptr, ptr %var.cur_mod, align 8
  %call.res232 = call ptr @"overloads::walk"(ptr %fld.load216, ptr %var.load217, ptr %a.load2230, ptr %var.load231)
  %arena.cur233 = call ptr @dva_arena_current()
  %rec.alloc234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld235 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc234, i32 0, i32 0
  store ptr %fld.load213, ptr %rec.fld235, align 8
  %rec.fld236 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc234, i32 0, i32 1
  store ptr %call.res232, ptr %rec.fld236, align 8
  store ptr %rec.alloc234, ptr %pay.gep210, align 8
  br label %choice.exit

choice.case237:                                   ; preds = %choice.next200
  %pay.gep242 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr243 = load ptr, ptr %pay.gep242, align 8
  store ptr %payload.ptr243, ptr %var._244, align 8
  store ptr %payload.ptr243, ptr %var.fe, align 8
  %var.load245 = load ptr, ptr %var.locals, align 8
  %a.load246 = load ptr, ptr %var.locals, align 8
  %a.null247 = icmp eq ptr %a.load246, null
  br i1 %a.null247, label %a.create248, label %a.after249

choice.next238:                                   ; preds = %choice.next200
  %tag.gep444 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id445 = load i64, ptr %tag.gep444, align 8
  %tag.match446 = icmp eq i64 %tag.id445, 8
  br i1 %tag.match446, label %choice.case442, label %choice.next443

a.create248:                                      ; preds = %choice.case237
  %arena.cur250 = call ptr @dva_arena_current()
  %a.create251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 24)
  %arena.cur252 = call ptr @dva_arena_current()
  %a.buf253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 128)
  %a.len.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create251, i32 0, i32 0
  store i64 0, ptr %a.len.gep254, align 8
  %a.data.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create251, i32 0, i32 1
  store ptr %a.buf253, ptr %a.data.gep255, align 8
  %a.cap.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create251, i32 0, i32 2
  store i64 16, ptr %a.cap.gep256, align 8
  store ptr %a.create251, ptr %var.locals, align 8
  br label %a.after249

a.after249:                                       ; preds = %a.create248, %choice.case237
  %a.load2257 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2257, i32 0, i32 0
  %a.copy.len258 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2257, i32 0, i32 2
  %a.copy.cap259 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2257, i32 0, i32 1
  %a.copy.data260 = load ptr, ptr %a.copy.data, align 8
  %arena.cur261 = call ptr @dva_arena_current()
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap259, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur262 = call ptr @dva_arena_current()
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len258, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data260, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len258, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap259, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load264 = load ptr, ptr %var.fn_locals, align 8
  %a.null265 = icmp eq ptr %a.load264, null
  br i1 %a.null265, label %a.create266, label %a.after267

a.create266:                                      ; preds = %a.after249
  %arena.cur268 = call ptr @dva_arena_current()
  %a.create269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 24)
  %arena.cur270 = call ptr @dva_arena_current()
  %a.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 128)
  %a.len.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 0
  store i64 0, ptr %a.len.gep272, align 8
  %a.data.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 1
  store ptr %a.buf271, ptr %a.data.gep273, align 8
  %a.cap.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 2
  store i64 16, ptr %a.cap.gep274, align 8
  store ptr %a.create269, ptr %var.fn_locals, align 8
  br label %a.after267

a.after267:                                       ; preds = %a.create266, %a.after249
  %a.load2275 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after267
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2275, i32 0, i32 0
  %a.len276 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2275, i32 0, i32 2
  %a.cap277 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len276, %a.cap277
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2275)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2275, i32 0, i32 1
  %a.cur.data278 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2275, i32 0, i32 0
  %a.cur.len279 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data278, i64 %a.cur.len279
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len279, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2275, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load280 = load ptr, ptr %var.fe, align 8
  %fld.gep281 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load280, i32 0, i32 0
  %fld.load282 = load ptr, ptr %fld.gep281, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load282, i32 0, i32 0
  %arr.cycle.len283 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load282, i32 0, i32 1
  %arr.cycle.data284 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load ptr, ptr %var._244, align 8
  br label %loop.header.76

loop.header.76:                                   ; preds = %loop.latch.76, %a.store
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len283
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data284, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._285, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load286 = load ptr, ptr %var.p, align 8
  %eq.lhs.len287 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 0
  %eq.lhs.len288 = load i64, ptr %eq.lhs.len287, align 8
  %eq.lhs.len289 = and i64 %eq.lhs.len288, 281474976710655
  %eq.rhs.len290 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len291 = and i64 %eq.rhs.len290, 281474976710655
  %eq.len292 = icmp eq i64 %eq.lhs.len289, %eq.rhs.len291
  br i1 %eq.len292, label %str.eq.then293, label %str.eq.else294

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit304
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store ptr %cycle.prev.u, ptr %var._244, align 8
  %var.load333 = load ptr, ptr %var.fe, align 8
  %fld.gep334 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load333, i32 0, i32 1
  %fld.load335 = load ptr, ptr %fld.gep334, align 8
  %arr.cycle.len336 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load335, i32 0, i32 0
  %arr.cycle.len337 = load i64, ptr %arr.cycle.len336, align 8
  %arr.cycle.data338 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load335, i32 0, i32 1
  %arr.cycle.data339 = load ptr, ptr %arr.cycle.data338, align 8
  store i64 0, ptr %loop.idx.77, align 8
  %cycle.prev.u340 = load ptr, ptr %var._244, align 8
  br label %loop.header.77

str.eq.then293:                                   ; preds = %loop.body.76
  %eq.lhs.data296 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 1
  %eq.lhs.data297 = load ptr, ptr %eq.lhs.data296, align 8
  %eq.rhs.data298 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp299 = call i32 @memcmp(ptr %eq.lhs.data297, ptr %eq.rhs.data298, i64 %eq.lhs.len289)
  %eq.cmp.zero300 = icmp eq i32 %eq.memcmp299, 0
  br label %str.eq.merge295

str.eq.else294:                                   ; preds = %loop.body.76
  br label %str.eq.merge295

str.eq.merge295:                                  ; preds = %str.eq.else294, %str.eq.then293
  %str.eq.result301 = phi i1 [ %eq.cmp.zero300, %str.eq.then293 ], [ false, %str.eq.else294 ]
  %str.neq302 = xor i1 %str.eq.result301, true
  br i1 %str.neq302, label %choice.then303, label %choice.exit304

choice.then303:                                   ; preds = %str.eq.merge295
  %var.load305 = load ptr, ptr %var.p, align 8
  %a.load306 = load ptr, ptr %var.fn_locals, align 8
  %a.null307 = icmp eq ptr %a.load306, null
  br i1 %a.null307, label %a.create308, label %a.after309

choice.exit304:                                   ; preds = %a.store320, %str.eq.merge295
  br label %loop.latch.76

a.create308:                                      ; preds = %choice.then303
  %arena.cur310 = call ptr @dva_arena_current()
  %a.create311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 24)
  %arena.cur312 = call ptr @dva_arena_current()
  %a.buf313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 128)
  %a.len.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create311, i32 0, i32 0
  store i64 0, ptr %a.len.gep314, align 8
  %a.data.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create311, i32 0, i32 1
  store ptr %a.buf313, ptr %a.data.gep315, align 8
  %a.cap.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create311, i32 0, i32 2
  store i64 16, ptr %a.cap.gep316, align 8
  store ptr %a.create311, ptr %var.fn_locals, align 8
  br label %a.after309

a.after309:                                       ; preds = %a.create308, %choice.then303
  %a.load2317 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check318

a.check318:                                       ; preds = %a.after309
  %a.len321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2317, i32 0, i32 0
  %a.len322 = load i64, ptr %a.len321, align 8
  %a.cap323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2317, i32 0, i32 2
  %a.cap324 = load i64, ptr %a.cap323, align 8
  %a.needs.grow325 = icmp eq i64 %a.len322, %a.cap324
  br i1 %a.needs.grow325, label %a.grow319, label %a.store320

a.grow319:                                        ; preds = %a.check318
  call void @dva_array_grow(ptr %a.load2317)
  br label %a.store320

a.store320:                                       ; preds = %a.grow319, %a.check318
  %a.cur.data326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2317, i32 0, i32 1
  %a.cur.data327 = load ptr, ptr %a.cur.data326, align 8
  %a.cur.len328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2317, i32 0, i32 0
  %a.cur.len329 = load i64, ptr %a.cur.len328, align 8
  %a.elem.gep330 = getelementptr i64, ptr %a.cur.data327, i64 %a.cur.len329
  %slot.p2i = ptrtoint ptr %var.load305 to i64
  store i64 %slot.p2i, ptr %a.elem.gep330, align 8
  %a.next.len331 = add i64 %a.cur.len329, 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2317, i32 0, i32 0
  store i64 %a.next.len331, ptr %b.len.gep332, align 8
  br label %choice.exit304

loop.header.77:                                   ; preds = %loop.latch.77, %loop.exit.76
  %counter.load341 = load i64, ptr %loop.idx.77, align 8
  %loop.cond342 = icmp slt i64 %counter.load341, %arr.cycle.len337
  br i1 %loop.cond342, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i343 = sub i64 %counter.load341, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep344 = getelementptr i64, ptr %arr.cycle.data339, i64 %counter.load341
  %arr.elem.raw345 = load i64, ptr %arr.elem.gep344, align 8
  %slot.i2p346 = inttoptr i64 %arr.elem.raw345 to ptr
  store i64 %loop.rel.i343, ptr %var._i347, align 8
  store ptr %slot.i2p346, ptr %var._348, align 8
  store ptr %slot.i2p346, ptr %var.cp, align 8
  %var.load349 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len350 = getelementptr inbounds { i64, ptr }, ptr %var.load349, i32 0, i32 0
  %eq.lhs.len351 = load i64, ptr %eq.lhs.len350, align 8
  %eq.lhs.len352 = and i64 %eq.lhs.len351, 281474976710655
  %eq.rhs.len353 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len354 = and i64 %eq.rhs.len353, 281474976710655
  %eq.len355 = icmp eq i64 %eq.lhs.len352, %eq.rhs.len354
  br i1 %eq.len355, label %str.eq.then356, label %str.eq.else357

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit367
  %step.val397 = load i64, ptr %loop.step.77, align 8
  %loop.next398 = add i64 %counter.load341, %step.val397
  store i64 %loop.next398, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  store ptr %cycle.prev.u340, ptr %var._244, align 8
  %var.load399 = load ptr, ptr %var.fe, align 8
  %fld.gep400 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load399, i32 0, i32 2
  %fld.load401 = load ptr, ptr %fld.gep400, align 8
  %var.load402 = load ptr, ptr %var.table, align 8
  %var.load403 = load ptr, ptr %var.fn_locals, align 8
  %a.load404 = load ptr, ptr %var.fn_locals, align 8
  %a.null405 = icmp eq ptr %a.load404, null
  br i1 %a.null405, label %a.create406, label %a.after407

str.eq.then356:                                   ; preds = %loop.body.77
  %eq.lhs.data359 = getelementptr inbounds { i64, ptr }, ptr %var.load349, i32 0, i32 1
  %eq.lhs.data360 = load ptr, ptr %eq.lhs.data359, align 8
  %eq.rhs.data361 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp362 = call i32 @memcmp(ptr %eq.lhs.data360, ptr %eq.rhs.data361, i64 %eq.lhs.len352)
  %eq.cmp.zero363 = icmp eq i32 %eq.memcmp362, 0
  br label %str.eq.merge358

str.eq.else357:                                   ; preds = %loop.body.77
  br label %str.eq.merge358

str.eq.merge358:                                  ; preds = %str.eq.else357, %str.eq.then356
  %str.eq.result364 = phi i1 [ %eq.cmp.zero363, %str.eq.then356 ], [ false, %str.eq.else357 ]
  %str.neq365 = xor i1 %str.eq.result364, true
  br i1 %str.neq365, label %choice.then366, label %choice.exit367

choice.then366:                                   ; preds = %str.eq.merge358
  %var.load368 = load ptr, ptr %var.cp, align 8
  %a.load369 = load ptr, ptr %var.fn_locals, align 8
  %a.null370 = icmp eq ptr %a.load369, null
  br i1 %a.null370, label %a.create371, label %a.after372

choice.exit367:                                   ; preds = %a.store383, %str.eq.merge358
  br label %loop.latch.77

a.create371:                                      ; preds = %choice.then366
  %arena.cur373 = call ptr @dva_arena_current()
  %a.create374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 24)
  %arena.cur375 = call ptr @dva_arena_current()
  %a.buf376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 128)
  %a.len.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create374, i32 0, i32 0
  store i64 0, ptr %a.len.gep377, align 8
  %a.data.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create374, i32 0, i32 1
  store ptr %a.buf376, ptr %a.data.gep378, align 8
  %a.cap.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create374, i32 0, i32 2
  store i64 16, ptr %a.cap.gep379, align 8
  store ptr %a.create374, ptr %var.fn_locals, align 8
  br label %a.after372

a.after372:                                       ; preds = %a.create371, %choice.then366
  %a.load2380 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check381

a.check381:                                       ; preds = %a.after372
  %a.len384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2380, i32 0, i32 0
  %a.len385 = load i64, ptr %a.len384, align 8
  %a.cap386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2380, i32 0, i32 2
  %a.cap387 = load i64, ptr %a.cap386, align 8
  %a.needs.grow388 = icmp eq i64 %a.len385, %a.cap387
  br i1 %a.needs.grow388, label %a.grow382, label %a.store383

a.grow382:                                        ; preds = %a.check381
  call void @dva_array_grow(ptr %a.load2380)
  br label %a.store383

a.store383:                                       ; preds = %a.grow382, %a.check381
  %a.cur.data389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2380, i32 0, i32 1
  %a.cur.data390 = load ptr, ptr %a.cur.data389, align 8
  %a.cur.len391 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2380, i32 0, i32 0
  %a.cur.len392 = load i64, ptr %a.cur.len391, align 8
  %a.elem.gep393 = getelementptr i64, ptr %a.cur.data390, i64 %a.cur.len392
  %slot.p2i394 = ptrtoint ptr %var.load368 to i64
  store i64 %slot.p2i394, ptr %a.elem.gep393, align 8
  %a.next.len395 = add i64 %a.cur.len392, 1
  %b.len.gep396 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2380, i32 0, i32 0
  store i64 %a.next.len395, ptr %b.len.gep396, align 8
  br label %choice.exit367

a.create406:                                      ; preds = %loop.exit.77
  %arena.cur408 = call ptr @dva_arena_current()
  %a.create409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 24)
  %arena.cur410 = call ptr @dva_arena_current()
  %a.buf411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 128)
  %a.len.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 0
  store i64 0, ptr %a.len.gep412, align 8
  %a.data.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 1
  store ptr %a.buf411, ptr %a.data.gep413, align 8
  %a.cap.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 2
  store i64 16, ptr %a.cap.gep414, align 8
  store ptr %a.create409, ptr %var.fn_locals, align 8
  br label %a.after407

a.after407:                                       ; preds = %a.create406, %loop.exit.77
  %a.load2415 = load ptr, ptr %var.fn_locals, align 8
  %var.load416 = load ptr, ptr %var.cur_mod, align 8
  %call.res417 = call ptr @"overloads::walk"(ptr %fld.load401, ptr %var.load402, ptr %a.load2415, ptr %var.load416)
  store ptr %call.res417, ptr %var.new_body, align 8
  %arena.cur418 = call ptr @dva_arena_current()
  %enum.alloc419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %tag.gep420 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc419, i32 0, i32 0
  store i64 14, ptr %tag.gep420, align 8
  %pay.gep421 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc419, i32 0, i32 1
  %var.load422 = load ptr, ptr %var.fe, align 8
  %fld.gep423 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load422, i32 0, i32 0
  %fld.load424 = load ptr, ptr %fld.gep423, align 8
  %var.load425 = load ptr, ptr %var.fe, align 8
  %fld.gep426 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load425, i32 0, i32 1
  %fld.load427 = load ptr, ptr %fld.gep426, align 8
  %var.load428 = load ptr, ptr %var.new_body, align 8
  %var.load429 = load ptr, ptr %var.fe, align 8
  %fld.gep430 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load429, i32 0, i32 3
  %fld.load431 = load i64, ptr %fld.gep430, align 8
  %var.load432 = load ptr, ptr %var.fe, align 8
  %fld.gep433 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load432, i32 0, i32 4
  %fld.load434 = load i64, ptr %fld.gep433, align 8
  %arena.cur435 = call ptr @dva_arena_current()
  %rec.alloc436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld437 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc436, i32 0, i32 0
  store ptr %fld.load424, ptr %rec.fld437, align 8
  %rec.fld438 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc436, i32 0, i32 1
  store ptr %fld.load427, ptr %rec.fld438, align 8
  %rec.fld439 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc436, i32 0, i32 2
  store ptr %var.load428, ptr %rec.fld439, align 8
  %rec.fld440 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc436, i32 0, i32 3
  store i64 %fld.load431, ptr %rec.fld440, align 8
  %rec.fld441 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc436, i32 0, i32 4
  store i64 %fld.load434, ptr %rec.fld441, align 8
  store ptr %rec.alloc436, ptr %pay.gep421, align 8
  br label %choice.exit

choice.case442:                                   ; preds = %choice.next238
  %pay.gep447 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr448 = load ptr, ptr %pay.gep447, align 8
  store ptr %payload.ptr448, ptr %var._449, align 8
  store ptr %payload.ptr448, ptr %var.be, align 8
  %var.load450 = load ptr, ptr %var.locals, align 8
  %a.load451 = load ptr, ptr %var.locals, align 8
  %a.null452 = icmp eq ptr %a.load451, null
  br i1 %a.null452, label %a.create453, label %a.after454

choice.next443:                                   ; preds = %choice.next238
  %tag.gep655 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id656 = load i64, ptr %tag.gep655, align 8
  %tag.match657 = icmp eq i64 %tag.id656, 7
  br i1 %tag.match657, label %choice.case653, label %choice.next654

a.create453:                                      ; preds = %choice.case442
  %arena.cur455 = call ptr @dva_arena_current()
  %a.create456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 24)
  %arena.cur457 = call ptr @dva_arena_current()
  %a.buf458 = call ptr @dva_arena_alloc(ptr %arena.cur457, i64 128)
  %a.len.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 0
  store i64 0, ptr %a.len.gep459, align 8
  %a.data.gep460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 1
  store ptr %a.buf458, ptr %a.data.gep460, align 8
  %a.cap.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 2
  store i64 16, ptr %a.cap.gep461, align 8
  store ptr %a.create456, ptr %var.locals, align 8
  br label %a.after454

a.after454:                                       ; preds = %a.create453, %choice.case442
  %a.load2462 = load ptr, ptr %var.locals, align 8
  %a.copy.len463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2462, i32 0, i32 0
  %a.copy.len464 = load i64, ptr %a.copy.len463, align 8
  %a.copy.cap465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2462, i32 0, i32 2
  %a.copy.cap466 = load i64, ptr %a.copy.cap465, align 8
  %a.copy.data467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2462, i32 0, i32 1
  %a.copy.data468 = load ptr, ptr %a.copy.data467, align 8
  %arena.cur469 = call ptr @dva_arena_current()
  %a.copy470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %a.copy.buflen471 = add i64 %a.copy.cap466, 1
  %a.copy.bufsize472 = mul i64 %a.copy.buflen471, 8
  %arena.cur473 = call ptr @dva_arena_current()
  %a.copy.buf474 = call ptr @dva_arena_alloc(ptr %arena.cur473, i64 %a.copy.bufsize472)
  %a.copy.copylen475 = mul i64 %a.copy.len464, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf474, ptr align 1 %a.copy.data468, i64 %a.copy.copylen475, i1 false)
  %a.copy.len.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy470, i32 0, i32 0
  store i64 %a.copy.len464, ptr %a.copy.len.gep476, align 8
  %a.copy.data.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy470, i32 0, i32 1
  store ptr %a.copy.buf474, ptr %a.copy.data.gep477, align 8
  %a.copy.cap.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy470, i32 0, i32 2
  store i64 %a.copy.cap466, ptr %a.copy.cap.gep478, align 8
  store ptr %a.copy470, ptr %var.blk_locals, align 8
  %arena.cur479 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 24)
  %arena.cur480 = call ptr @dva_arena_current()
  %a.buf481 = call ptr @dva_arena_alloc(ptr %arena.cur480, i64 128)
  %a.len.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep482, align 8
  %a.data.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf481, ptr %a.data.gep483, align 8
  %a.cap.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep484, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load485 = load ptr, ptr %var.be, align 8
  %a.load486 = load ptr, ptr %var.be, align 8
  %a.null487 = icmp eq ptr %a.load486, null
  br i1 %a.null487, label %a.create488, label %a.after489

a.create488:                                      ; preds = %a.after454
  %arena.cur490 = call ptr @dva_arena_current()
  %a.create491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 24)
  %arena.cur492 = call ptr @dva_arena_current()
  %a.buf493 = call ptr @dva_arena_alloc(ptr %arena.cur492, i64 128)
  %a.len.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 0
  store i64 0, ptr %a.len.gep494, align 8
  %a.data.gep495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 1
  store ptr %a.buf493, ptr %a.data.gep495, align 8
  %a.cap.gep496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 2
  store i64 16, ptr %a.cap.gep496, align 8
  store ptr %a.create491, ptr %var.be, align 8
  br label %a.after489

a.after489:                                       ; preds = %a.create488, %a.after454
  %a.load2497 = load ptr, ptr %var.be, align 8
  %arr.cycle.len498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2497, i32 0, i32 0
  %arr.cycle.len499 = load i64, ptr %arr.cycle.len498, align 8
  %arr.cycle.data500 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2497, i32 0, i32 1
  %arr.cycle.data501 = load ptr, ptr %arr.cycle.data500, align 8
  store i64 0, ptr %loop.idx.78, align 8
  %cycle.prev.u502 = load ptr, ptr %var._449, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after489
  %counter.load503 = load i64, ptr %loop.idx.78, align 8
  %loop.cond504 = icmp slt i64 %counter.load503, %arr.cycle.len499
  br i1 %loop.cond504, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i505 = sub i64 %counter.load503, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep506 = getelementptr i64, ptr %arr.cycle.data501, i64 %counter.load503
  %arr.elem.raw507 = load i64, ptr %arr.elem.gep506, align 8
  %slot.i2p508 = inttoptr i64 %arr.elem.raw507 to ptr
  store i64 %loop.rel.i505, ptr %var._i509, align 8
  store ptr %slot.i2p508, ptr %var._510, align 8
  store ptr %slot.i2p508, ptr %var.child, align 8
  %var.load511 = load ptr, ptr %var.child, align 8
  %var.load512 = load ptr, ptr %var.table, align 8
  %var.load513 = load ptr, ptr %var.blk_locals, align 8
  %a.load514 = load ptr, ptr %var.blk_locals, align 8
  %a.null515 = icmp eq ptr %a.load514, null
  br i1 %a.null515, label %a.create516, label %a.after517

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit557
  %step.val634 = load i64, ptr %loop.step.78, align 8
  %loop.next635 = add i64 %counter.load503, %step.val634
  store i64 %loop.next635, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  store ptr %cycle.prev.u502, ptr %var._449, align 8
  %arena.cur636 = call ptr @dva_arena_current()
  %enum.alloc637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 16)
  %tag.gep638 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc637, i32 0, i32 0
  store i64 8, ptr %tag.gep638, align 8
  %pay.gep639 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc637, i32 0, i32 1
  %var.load640 = load ptr, ptr %var.new_exprs, align 8
  %a.load641 = load ptr, ptr %var.new_exprs, align 8
  %a.null642 = icmp eq ptr %a.load641, null
  br i1 %a.null642, label %a.create643, label %a.after644

a.create516:                                      ; preds = %loop.body.78
  %arena.cur518 = call ptr @dva_arena_current()
  %a.create519 = call ptr @dva_arena_alloc(ptr %arena.cur518, i64 24)
  %arena.cur520 = call ptr @dva_arena_current()
  %a.buf521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 128)
  %a.len.gep522 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create519, i32 0, i32 0
  store i64 0, ptr %a.len.gep522, align 8
  %a.data.gep523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create519, i32 0, i32 1
  store ptr %a.buf521, ptr %a.data.gep523, align 8
  %a.cap.gep524 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create519, i32 0, i32 2
  store i64 16, ptr %a.cap.gep524, align 8
  store ptr %a.create519, ptr %var.blk_locals, align 8
  br label %a.after517

a.after517:                                       ; preds = %a.create516, %loop.body.78
  %a.load2525 = load ptr, ptr %var.blk_locals, align 8
  %var.load526 = load ptr, ptr %var.cur_mod, align 8
  %call.res527 = call ptr @"overloads::walk"(ptr %var.load511, ptr %var.load512, ptr %a.load2525, ptr %var.load526)
  %a.load528 = load ptr, ptr %var.new_exprs, align 8
  %a.null529 = icmp eq ptr %a.load528, null
  br i1 %a.null529, label %a.create530, label %a.after531

a.create530:                                      ; preds = %a.after517
  %arena.cur532 = call ptr @dva_arena_current()
  %a.create533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 24)
  %arena.cur534 = call ptr @dva_arena_current()
  %a.buf535 = call ptr @dva_arena_alloc(ptr %arena.cur534, i64 128)
  %a.len.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 0
  store i64 0, ptr %a.len.gep536, align 8
  %a.data.gep537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 1
  store ptr %a.buf535, ptr %a.data.gep537, align 8
  %a.cap.gep538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create533, i32 0, i32 2
  store i64 16, ptr %a.cap.gep538, align 8
  store ptr %a.create533, ptr %var.new_exprs, align 8
  br label %a.after531

a.after531:                                       ; preds = %a.create530, %a.after517
  %a.load2539 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check540

a.check540:                                       ; preds = %a.after531
  %a.len543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 0
  %a.len544 = load i64, ptr %a.len543, align 8
  %a.cap545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 2
  %a.cap546 = load i64, ptr %a.cap545, align 8
  %a.needs.grow547 = icmp eq i64 %a.len544, %a.cap546
  br i1 %a.needs.grow547, label %a.grow541, label %a.store542

a.grow541:                                        ; preds = %a.check540
  call void @dva_array_grow(ptr %a.load2539)
  br label %a.store542

a.store542:                                       ; preds = %a.grow541, %a.check540
  %a.cur.data548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 1
  %a.cur.data549 = load ptr, ptr %a.cur.data548, align 8
  %a.cur.len550 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 0
  %a.cur.len551 = load i64, ptr %a.cur.len550, align 8
  %a.elem.gep552 = getelementptr i64, ptr %a.cur.data549, i64 %a.cur.len551
  %slot.p2i553 = ptrtoint ptr %call.res527 to i64
  store i64 %slot.p2i553, ptr %a.elem.gep552, align 8
  %a.next.len554 = add i64 %a.cur.len551, 1
  %b.len.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2539, i32 0, i32 0
  store i64 %a.next.len554, ptr %b.len.gep555, align 8
  %var.load556 = load ptr, ptr %var.child, align 8
  %tag.gep560 = getelementptr inbounds { i64, ptr }, ptr %var.load556, i32 0, i32 0
  %tag.id561 = load i64, ptr %tag.gep560, align 8
  %tag.match562 = icmp eq i64 %tag.id561, 6
  br i1 %tag.match562, label %choice.case558, label %choice.next559

choice.exit557:                                   ; preds = %choice.next559, %choice.exit602
  br label %loop.latch.78

choice.case558:                                   ; preds = %a.store542
  %pay.gep563 = getelementptr inbounds { i64, ptr }, ptr %var.load556, i32 0, i32 1
  %payload.ptr564 = load ptr, ptr %pay.gep563, align 8
  store ptr %payload.ptr564, ptr %var._565, align 8
  store ptr %payload.ptr564, ptr %var.ca, align 8
  %var.load566 = load ptr, ptr %var.locals, align 8
  %a.load567 = load ptr, ptr %var.locals, align 8
  %a.null568 = icmp eq ptr %a.load567, null
  br i1 %a.null568, label %a.create569, label %a.after570

choice.next559:                                   ; preds = %a.store542
  br label %choice.exit557

a.create569:                                      ; preds = %choice.case558
  %arena.cur571 = call ptr @dva_arena_current()
  %a.create572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 24)
  %arena.cur573 = call ptr @dva_arena_current()
  %a.buf574 = call ptr @dva_arena_alloc(ptr %arena.cur573, i64 128)
  %a.len.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create572, i32 0, i32 0
  store i64 0, ptr %a.len.gep575, align 8
  %a.data.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create572, i32 0, i32 1
  store ptr %a.buf574, ptr %a.data.gep576, align 8
  %a.cap.gep577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create572, i32 0, i32 2
  store i64 16, ptr %a.cap.gep577, align 8
  store ptr %a.create572, ptr %var.locals, align 8
  br label %a.after570

a.after570:                                       ; preds = %a.create569, %choice.case558
  %a.load2578 = load ptr, ptr %var.locals, align 8
  %call.res579 = call i1 @"overloads::contains"(ptr %a.load2578, ptr @str.7.struct)
  br i1 %call.res579, label %or.79.then, label %or.79.else

or.79.then:                                       ; preds = %a.after570
  br label %or.79.exit

or.79.else:                                       ; preds = %a.after570
  %var.load580 = load ptr, ptr %var.table, align 8
  %var.load581 = load ptr, ptr %var.ca, align 8
  %fld.gep582 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load581, i32 0, i32 0
  %fld.load583 = load ptr, ptr %fld.gep582, align 8
  %var.load584 = load ptr, ptr %var.cur_mod, align 8
  %call.res585 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load580, ptr %fld.load583, ptr %var.load584)
  store { i64, ptr } %call.res585, ptr %ret.ub.salloc, align 8
  %eq.lhs.len586 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %eq.lhs.len587 = load i64, ptr %eq.lhs.len586, align 8
  %eq.lhs.len588 = and i64 %eq.lhs.len587, 281474976710655
  %eq.rhs.len589 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len590 = and i64 %eq.rhs.len589, 281474976710655
  %eq.len591 = icmp eq i64 %eq.lhs.len588, %eq.rhs.len590
  br i1 %eq.len591, label %str.eq.then592, label %str.eq.else593

or.79.exit:                                       ; preds = %str.eq.merge594, %or.79.then
  %or.79.phi = phi i1 [ %call.res579, %or.79.then ], [ %str.eq.result600, %str.eq.merge594 ]
  br i1 %or.79.phi, label %choice.then601, label %choice.exit602

str.eq.then592:                                   ; preds = %or.79.else
  %eq.lhs.data595 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %eq.lhs.data596 = load ptr, ptr %eq.lhs.data595, align 8
  %eq.rhs.data597 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp598 = call i32 @memcmp(ptr %eq.lhs.data596, ptr %eq.rhs.data597, i64 %eq.lhs.len588)
  %eq.cmp.zero599 = icmp eq i32 %eq.memcmp598, 0
  br label %str.eq.merge594

str.eq.else593:                                   ; preds = %or.79.else
  br label %str.eq.merge594

str.eq.merge594:                                  ; preds = %str.eq.else593, %str.eq.then592
  %str.eq.result600 = phi i1 [ %eq.cmp.zero599, %str.eq.then592 ], [ false, %str.eq.else593 ]
  br label %or.79.exit

choice.then601:                                   ; preds = %or.79.exit
  %var.load603 = load ptr, ptr %var.ca, align 8
  %fld.gep604 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load603, i32 0, i32 0
  %fld.load605 = load ptr, ptr %fld.gep604, align 8
  %a.load606 = load ptr, ptr %var.blk_locals, align 8
  %a.null607 = icmp eq ptr %a.load606, null
  br i1 %a.null607, label %a.create608, label %a.after609

choice.exit602:                                   ; preds = %a.store620, %or.79.exit
  br label %choice.exit557

a.create608:                                      ; preds = %choice.then601
  %arena.cur610 = call ptr @dva_arena_current()
  %a.create611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 24)
  %arena.cur612 = call ptr @dva_arena_current()
  %a.buf613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 128)
  %a.len.gep614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 0
  store i64 0, ptr %a.len.gep614, align 8
  %a.data.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 1
  store ptr %a.buf613, ptr %a.data.gep615, align 8
  %a.cap.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 2
  store i64 16, ptr %a.cap.gep616, align 8
  store ptr %a.create611, ptr %var.blk_locals, align 8
  br label %a.after609

a.after609:                                       ; preds = %a.create608, %choice.then601
  %a.load2617 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check618

a.check618:                                       ; preds = %a.after609
  %a.len621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 0
  %a.len622 = load i64, ptr %a.len621, align 8
  %a.cap623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 2
  %a.cap624 = load i64, ptr %a.cap623, align 8
  %a.needs.grow625 = icmp eq i64 %a.len622, %a.cap624
  br i1 %a.needs.grow625, label %a.grow619, label %a.store620

a.grow619:                                        ; preds = %a.check618
  call void @dva_array_grow(ptr %a.load2617)
  br label %a.store620

a.store620:                                       ; preds = %a.grow619, %a.check618
  %a.cur.data626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 1
  %a.cur.data627 = load ptr, ptr %a.cur.data626, align 8
  %a.cur.len628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 0
  %a.cur.len629 = load i64, ptr %a.cur.len628, align 8
  %a.elem.gep630 = getelementptr i64, ptr %a.cur.data627, i64 %a.cur.len629
  %slot.p2i631 = ptrtoint ptr %fld.load605 to i64
  store i64 %slot.p2i631, ptr %a.elem.gep630, align 8
  %a.next.len632 = add i64 %a.cur.len629, 1
  %b.len.gep633 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 0
  store i64 %a.next.len632, ptr %b.len.gep633, align 8
  br label %choice.exit602

a.create643:                                      ; preds = %loop.exit.78
  %arena.cur645 = call ptr @dva_arena_current()
  %a.create646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 24)
  %arena.cur647 = call ptr @dva_arena_current()
  %a.buf648 = call ptr @dva_arena_alloc(ptr %arena.cur647, i64 128)
  %a.len.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 0
  store i64 0, ptr %a.len.gep649, align 8
  %a.data.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 1
  store ptr %a.buf648, ptr %a.data.gep650, align 8
  %a.cap.gep651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 2
  store i64 16, ptr %a.cap.gep651, align 8
  store ptr %a.create646, ptr %var.new_exprs, align 8
  br label %a.after644

a.after644:                                       ; preds = %a.create643, %loop.exit.78
  %a.load2652 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2652, ptr %pay.gep639, align 8
  br label %choice.exit

choice.case653:                                   ; preds = %choice.next443
  %pay.gep658 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr659 = load ptr, ptr %pay.gep658, align 8
  store ptr %payload.ptr659, ptr %var._660, align 8
  store ptr %payload.ptr659, ptr %var.ch, align 8
  %var.load661 = load ptr, ptr %var.ch, align 8
  %fld.gep662 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load661, i32 0, i32 0
  %fld.load663 = load ptr, ptr %fld.gep662, align 8
  %var.load664 = load ptr, ptr %var.table, align 8
  %var.load665 = load ptr, ptr %var.locals, align 8
  %a.load666 = load ptr, ptr %var.locals, align 8
  %a.null667 = icmp eq ptr %a.load666, null
  br i1 %a.null667, label %a.create668, label %a.after669

choice.next654:                                   ; preds = %choice.next443
  %tag.gep949 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id950 = load i64, ptr %tag.gep949, align 8
  %tag.match951 = icmp eq i64 %tag.id950, 6
  br i1 %tag.match951, label %choice.case947, label %choice.next948

a.create668:                                      ; preds = %choice.case653
  %arena.cur670 = call ptr @dva_arena_current()
  %a.create671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 24)
  %arena.cur672 = call ptr @dva_arena_current()
  %a.buf673 = call ptr @dva_arena_alloc(ptr %arena.cur672, i64 128)
  %a.len.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 0
  store i64 0, ptr %a.len.gep674, align 8
  %a.data.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 1
  store ptr %a.buf673, ptr %a.data.gep675, align 8
  %a.cap.gep676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 2
  store i64 16, ptr %a.cap.gep676, align 8
  store ptr %a.create671, ptr %var.locals, align 8
  br label %a.after669

a.after669:                                       ; preds = %a.create668, %choice.case653
  %a.load2677 = load ptr, ptr %var.locals, align 8
  %var.load678 = load ptr, ptr %var.cur_mod, align 8
  %call.res679 = call ptr @"overloads::walk"(ptr %fld.load663, ptr %var.load664, ptr %a.load2677, ptr %var.load678)
  store ptr %call.res679, ptr %var.new_cond, align 8
  %arena.cur680 = call ptr @dva_arena_current()
  %a.new681 = call ptr @dva_arena_alloc(ptr %arena.cur680, i64 24)
  %arena.cur682 = call ptr @dva_arena_current()
  %a.buf683 = call ptr @dva_arena_alloc(ptr %arena.cur682, i64 128)
  %a.len.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new681, i32 0, i32 0
  store i64 0, ptr %a.len.gep684, align 8
  %a.data.gep685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new681, i32 0, i32 1
  store ptr %a.buf683, ptr %a.data.gep685, align 8
  %a.cap.gep686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new681, i32 0, i32 2
  store i64 16, ptr %a.cap.gep686, align 8
  store ptr %a.new681, ptr %var.new_branches, align 8
  %var.load687 = load ptr, ptr %var.ch, align 8
  %fld.gep688 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load687, i32 0, i32 2
  %fld.load689 = load ptr, ptr %fld.gep688, align 8
  %arr.cycle.len690 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load689, i32 0, i32 0
  %arr.cycle.len691 = load i64, ptr %arr.cycle.len690, align 8
  %arr.cycle.data692 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load689, i32 0, i32 1
  %arr.cycle.data693 = load ptr, ptr %arr.cycle.data692, align 8
  store i64 0, ptr %loop.idx.80, align 8
  %cycle.prev.u694 = load ptr, ptr %var._660, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after669
  %counter.load695 = load i64, ptr %loop.idx.80, align 8
  %loop.cond696 = icmp slt i64 %counter.load695, %arr.cycle.len691
  br i1 %loop.cond696, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i697 = sub i64 %counter.load695, 0
  store i64 1, ptr %loop.step.80, align 8
  %arr.elem.gep698 = getelementptr i64, ptr %arr.cycle.data693, i64 %counter.load695
  %arr.elem.raw699 = load i64, ptr %arr.elem.gep698, align 8
  %slot.i2p700 = inttoptr i64 %arr.elem.raw699 to ptr
  store i64 %loop.rel.i697, ptr %var._i701, align 8
  store ptr %slot.i2p700, ptr %var._702, align 8
  store ptr %slot.i2p700, ptr %var.br, align 8
  %var.load703 = load ptr, ptr %var.locals, align 8
  %a.load704 = load ptr, ptr %var.locals, align 8
  %a.null705 = icmp eq ptr %a.load704, null
  br i1 %a.null705, label %a.create706, label %a.after707

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %a.store905
  %step.val919 = load i64, ptr %loop.step.80, align 8
  %loop.next920 = add i64 %counter.load695, %step.val919
  store i64 %loop.next920, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  store ptr %cycle.prev.u694, ptr %var._660, align 8
  %arena.cur921 = call ptr @dva_arena_current()
  %enum.alloc922 = call ptr @dva_arena_alloc(ptr %arena.cur921, i64 16)
  %tag.gep923 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc922, i32 0, i32 0
  store i64 7, ptr %tag.gep923, align 8
  %pay.gep924 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc922, i32 0, i32 1
  %var.load925 = load ptr, ptr %var.new_cond, align 8
  %var.load926 = load ptr, ptr %var.ch, align 8
  %fld.gep927 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load926, i32 0, i32 1
  %fld.load928 = load i1, ptr %fld.gep927, align 1
  %var.load929 = load ptr, ptr %var.new_branches, align 8
  %a.load930 = load ptr, ptr %var.new_branches, align 8
  %a.null931 = icmp eq ptr %a.load930, null
  br i1 %a.null931, label %a.create932, label %a.after933

a.create706:                                      ; preds = %loop.body.80
  %arena.cur708 = call ptr @dva_arena_current()
  %a.create709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 24)
  %arena.cur710 = call ptr @dva_arena_current()
  %a.buf711 = call ptr @dva_arena_alloc(ptr %arena.cur710, i64 128)
  %a.len.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create709, i32 0, i32 0
  store i64 0, ptr %a.len.gep712, align 8
  %a.data.gep713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create709, i32 0, i32 1
  store ptr %a.buf711, ptr %a.data.gep713, align 8
  %a.cap.gep714 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create709, i32 0, i32 2
  store i64 16, ptr %a.cap.gep714, align 8
  store ptr %a.create709, ptr %var.locals, align 8
  br label %a.after707

a.after707:                                       ; preds = %a.create706, %loop.body.80
  %a.load2715 = load ptr, ptr %var.locals, align 8
  %a.copy.len716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2715, i32 0, i32 0
  %a.copy.len717 = load i64, ptr %a.copy.len716, align 8
  %a.copy.cap718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2715, i32 0, i32 2
  %a.copy.cap719 = load i64, ptr %a.copy.cap718, align 8
  %a.copy.data720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2715, i32 0, i32 1
  %a.copy.data721 = load ptr, ptr %a.copy.data720, align 8
  %arena.cur722 = call ptr @dva_arena_current()
  %a.copy723 = call ptr @dva_arena_alloc(ptr %arena.cur722, i64 24)
  %a.copy.buflen724 = add i64 %a.copy.cap719, 1
  %a.copy.bufsize725 = mul i64 %a.copy.buflen724, 8
  %arena.cur726 = call ptr @dva_arena_current()
  %a.copy.buf727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 %a.copy.bufsize725)
  %a.copy.copylen728 = mul i64 %a.copy.len717, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf727, ptr align 1 %a.copy.data721, i64 %a.copy.copylen728, i1 false)
  %a.copy.len.gep729 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy723, i32 0, i32 0
  store i64 %a.copy.len717, ptr %a.copy.len.gep729, align 8
  %a.copy.data.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy723, i32 0, i32 1
  store ptr %a.copy.buf727, ptr %a.copy.data.gep730, align 8
  %a.copy.cap.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy723, i32 0, i32 2
  store i64 %a.copy.cap719, ptr %a.copy.cap.gep731, align 8
  store ptr %a.copy723, ptr %var.br_locals, align 8
  %var.load732 = load ptr, ptr %var.br, align 8
  %fld.gep733 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load732, i32 0, i32 4
  %fld.load734 = load ptr, ptr %fld.gep733, align 8
  %arr.cycle.len735 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load734, i32 0, i32 0
  %arr.cycle.len736 = load i64, ptr %arr.cycle.len735, align 8
  %arr.cycle.data737 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load734, i32 0, i32 1
  %arr.cycle.data738 = load ptr, ptr %arr.cycle.data737, align 8
  store i64 0, ptr %loop.idx.81, align 8
  %cycle.prev.u739 = load ptr, ptr %var._702, align 8
  %cycle.prev.i = load i64, ptr %var._i701, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after707
  %counter.load740 = load i64, ptr %loop.idx.81, align 8
  %loop.cond741 = icmp slt i64 %counter.load740, %arr.cycle.len736
  br i1 %loop.cond741, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i742 = sub i64 %counter.load740, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep743 = getelementptr i64, ptr %arr.cycle.data738, i64 %counter.load740
  %arr.elem.raw744 = load i64, ptr %arr.elem.gep743, align 8
  %slot.i2p745 = inttoptr i64 %arr.elem.raw744 to ptr
  store i64 %loop.rel.i742, ptr %var._i746, align 8
  store ptr %slot.i2p745, ptr %var._747, align 8
  store ptr %slot.i2p745, ptr %var.bv, align 8
  %var.load748 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len749 = getelementptr inbounds { i64, ptr }, ptr %var.load748, i32 0, i32 0
  %eq.lhs.len750 = load i64, ptr %eq.lhs.len749, align 8
  %eq.lhs.len751 = and i64 %eq.lhs.len750, 281474976710655
  %eq.rhs.len752 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len753 = and i64 %eq.rhs.len752, 281474976710655
  %eq.len754 = icmp eq i64 %eq.lhs.len751, %eq.rhs.len753
  br i1 %eq.len754, label %str.eq.then755, label %str.eq.else756

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit766
  %step.val796 = load i64, ptr %loop.step.81, align 8
  %loop.next797 = add i64 %counter.load740, %step.val796
  store i64 %loop.next797, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  store ptr %cycle.prev.u739, ptr %var._702, align 8
  store i64 %cycle.prev.i, ptr %var._i701, align 8
  %var.load798 = load ptr, ptr %var.br, align 8
  %fld.gep799 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load798, i32 0, i32 1
  %fld.load800 = load ptr, ptr %fld.gep799, align 8
  %var.load801 = load ptr, ptr %var.table, align 8
  %var.load802 = load ptr, ptr %var.br_locals, align 8
  %a.load803 = load ptr, ptr %var.br_locals, align 8
  %a.null804 = icmp eq ptr %a.load803, null
  br i1 %a.null804, label %a.create805, label %a.after806

str.eq.then755:                                   ; preds = %loop.body.81
  %eq.lhs.data758 = getelementptr inbounds { i64, ptr }, ptr %var.load748, i32 0, i32 1
  %eq.lhs.data759 = load ptr, ptr %eq.lhs.data758, align 8
  %eq.rhs.data760 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp761 = call i32 @memcmp(ptr %eq.lhs.data759, ptr %eq.rhs.data760, i64 %eq.lhs.len751)
  %eq.cmp.zero762 = icmp eq i32 %eq.memcmp761, 0
  br label %str.eq.merge757

str.eq.else756:                                   ; preds = %loop.body.81
  br label %str.eq.merge757

str.eq.merge757:                                  ; preds = %str.eq.else756, %str.eq.then755
  %str.eq.result763 = phi i1 [ %eq.cmp.zero762, %str.eq.then755 ], [ false, %str.eq.else756 ]
  %str.neq764 = xor i1 %str.eq.result763, true
  br i1 %str.neq764, label %choice.then765, label %choice.exit766

choice.then765:                                   ; preds = %str.eq.merge757
  %var.load767 = load ptr, ptr %var.bv, align 8
  %a.load768 = load ptr, ptr %var.br_locals, align 8
  %a.null769 = icmp eq ptr %a.load768, null
  br i1 %a.null769, label %a.create770, label %a.after771

choice.exit766:                                   ; preds = %a.store782, %str.eq.merge757
  br label %loop.latch.81

a.create770:                                      ; preds = %choice.then765
  %arena.cur772 = call ptr @dva_arena_current()
  %a.create773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 24)
  %arena.cur774 = call ptr @dva_arena_current()
  %a.buf775 = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 128)
  %a.len.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 0
  store i64 0, ptr %a.len.gep776, align 8
  %a.data.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 1
  store ptr %a.buf775, ptr %a.data.gep777, align 8
  %a.cap.gep778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create773, i32 0, i32 2
  store i64 16, ptr %a.cap.gep778, align 8
  store ptr %a.create773, ptr %var.br_locals, align 8
  br label %a.after771

a.after771:                                       ; preds = %a.create770, %choice.then765
  %a.load2779 = load ptr, ptr %var.br_locals, align 8
  br label %a.check780

a.check780:                                       ; preds = %a.after771
  %a.len783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 0
  %a.len784 = load i64, ptr %a.len783, align 8
  %a.cap785 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 2
  %a.cap786 = load i64, ptr %a.cap785, align 8
  %a.needs.grow787 = icmp eq i64 %a.len784, %a.cap786
  br i1 %a.needs.grow787, label %a.grow781, label %a.store782

a.grow781:                                        ; preds = %a.check780
  call void @dva_array_grow(ptr %a.load2779)
  br label %a.store782

a.store782:                                       ; preds = %a.grow781, %a.check780
  %a.cur.data788 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 1
  %a.cur.data789 = load ptr, ptr %a.cur.data788, align 8
  %a.cur.len790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 0
  %a.cur.len791 = load i64, ptr %a.cur.len790, align 8
  %a.elem.gep792 = getelementptr i64, ptr %a.cur.data789, i64 %a.cur.len791
  %slot.p2i793 = ptrtoint ptr %var.load767 to i64
  store i64 %slot.p2i793, ptr %a.elem.gep792, align 8
  %a.next.len794 = add i64 %a.cur.len791, 1
  %b.len.gep795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2779, i32 0, i32 0
  store i64 %a.next.len794, ptr %b.len.gep795, align 8
  br label %choice.exit766

a.create805:                                      ; preds = %loop.exit.81
  %arena.cur807 = call ptr @dva_arena_current()
  %a.create808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 24)
  %arena.cur809 = call ptr @dva_arena_current()
  %a.buf810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 128)
  %a.len.gep811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 0
  store i64 0, ptr %a.len.gep811, align 8
  %a.data.gep812 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 1
  store ptr %a.buf810, ptr %a.data.gep812, align 8
  %a.cap.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 2
  store i64 16, ptr %a.cap.gep813, align 8
  store ptr %a.create808, ptr %var.br_locals, align 8
  br label %a.after806

a.after806:                                       ; preds = %a.create805, %loop.exit.81
  %a.load2814 = load ptr, ptr %var.br_locals, align 8
  %var.load815 = load ptr, ptr %var.cur_mod, align 8
  %call.res816 = call ptr @"overloads::walk_many"(ptr %fld.load800, ptr %var.load801, ptr %a.load2814, ptr %var.load815)
  store ptr %call.res816, ptr %var.new_cases, align 8
  %var.load817 = load ptr, ptr %var.br, align 8
  %fld.gep818 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load817, i32 0, i32 2
  %fld.load819 = load ptr, ptr %fld.gep818, align 8
  %var.load820 = load ptr, ptr %var.table, align 8
  %var.load821 = load ptr, ptr %var.br_locals, align 8
  %a.load822 = load ptr, ptr %var.br_locals, align 8
  %a.null823 = icmp eq ptr %a.load822, null
  br i1 %a.null823, label %a.create824, label %a.after825

a.create824:                                      ; preds = %a.after806
  %arena.cur826 = call ptr @dva_arena_current()
  %a.create827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 24)
  %arena.cur828 = call ptr @dva_arena_current()
  %a.buf829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 128)
  %a.len.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 0
  store i64 0, ptr %a.len.gep830, align 8
  %a.data.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 1
  store ptr %a.buf829, ptr %a.data.gep831, align 8
  %a.cap.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 2
  store i64 16, ptr %a.cap.gep832, align 8
  store ptr %a.create827, ptr %var.br_locals, align 8
  br label %a.after825

a.after825:                                       ; preds = %a.create824, %a.after806
  %a.load2833 = load ptr, ptr %var.br_locals, align 8
  %var.load834 = load ptr, ptr %var.cur_mod, align 8
  %call.res835 = call ptr @"overloads::walk"(ptr %fld.load819, ptr %var.load820, ptr %a.load2833, ptr %var.load834)
  store ptr %call.res835, ptr %var.new_pred, align 8
  %var.load836 = load ptr, ptr %var.br, align 8
  %fld.gep837 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load836, i32 0, i32 6
  %fld.load838 = load ptr, ptr %fld.gep837, align 8
  %var.load839 = load ptr, ptr %var.table, align 8
  %var.load840 = load ptr, ptr %var.br_locals, align 8
  %a.load841 = load ptr, ptr %var.br_locals, align 8
  %a.null842 = icmp eq ptr %a.load841, null
  br i1 %a.null842, label %a.create843, label %a.after844

a.create843:                                      ; preds = %a.after825
  %arena.cur845 = call ptr @dva_arena_current()
  %a.create846 = call ptr @dva_arena_alloc(ptr %arena.cur845, i64 24)
  %arena.cur847 = call ptr @dva_arena_current()
  %a.buf848 = call ptr @dva_arena_alloc(ptr %arena.cur847, i64 128)
  %a.len.gep849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create846, i32 0, i32 0
  store i64 0, ptr %a.len.gep849, align 8
  %a.data.gep850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create846, i32 0, i32 1
  store ptr %a.buf848, ptr %a.data.gep850, align 8
  %a.cap.gep851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create846, i32 0, i32 2
  store i64 16, ptr %a.cap.gep851, align 8
  store ptr %a.create846, ptr %var.br_locals, align 8
  br label %a.after844

a.after844:                                       ; preds = %a.create843, %a.after825
  %a.load2852 = load ptr, ptr %var.br_locals, align 8
  %var.load853 = load ptr, ptr %var.cur_mod, align 8
  %call.res854 = call ptr @"overloads::walk"(ptr %fld.load838, ptr %var.load839, ptr %a.load2852, ptr %var.load853)
  store ptr %call.res854, ptr %var.new_blk, align 8
  %var.load855 = load ptr, ptr %var.br, align 8
  %fld.gep856 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load855, i32 0, i32 0
  %fld.load857 = load ptr, ptr %fld.gep856, align 8
  %var.load858 = load ptr, ptr %var.new_cases, align 8
  %a.load859 = load ptr, ptr %var.new_cases, align 8
  %a.null860 = icmp eq ptr %a.load859, null
  br i1 %a.null860, label %a.create861, label %a.after862

a.create861:                                      ; preds = %a.after844
  %arena.cur863 = call ptr @dva_arena_current()
  %a.create864 = call ptr @dva_arena_alloc(ptr %arena.cur863, i64 24)
  %arena.cur865 = call ptr @dva_arena_current()
  %a.buf866 = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 128)
  %a.len.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 0
  store i64 0, ptr %a.len.gep867, align 8
  %a.data.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 1
  store ptr %a.buf866, ptr %a.data.gep868, align 8
  %a.cap.gep869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create864, i32 0, i32 2
  store i64 16, ptr %a.cap.gep869, align 8
  store ptr %a.create864, ptr %var.new_cases, align 8
  br label %a.after862

a.after862:                                       ; preds = %a.create861, %a.after844
  %a.load2870 = load ptr, ptr %var.new_cases, align 8
  %var.load871 = load ptr, ptr %var.new_pred, align 8
  %var.load872 = load ptr, ptr %var.br, align 8
  %fld.gep873 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load872, i32 0, i32 3
  %fld.load874 = load ptr, ptr %fld.gep873, align 8
  %var.load875 = load ptr, ptr %var.br, align 8
  %fld.gep876 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load875, i32 0, i32 4
  %fld.load877 = load ptr, ptr %fld.gep876, align 8
  %var.load878 = load ptr, ptr %var.br, align 8
  %fld.gep879 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load878, i32 0, i32 5
  %fld.load880 = load i1, ptr %fld.gep879, align 1
  %var.load881 = load ptr, ptr %var.new_blk, align 8
  %arena.cur882 = call ptr @dva_arena_current()
  %rec.alloc883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld884 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 0
  store ptr %fld.load857, ptr %rec.fld884, align 8
  %rec.fld885 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 1
  store ptr %a.load2870, ptr %rec.fld885, align 8
  %rec.fld886 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 2
  store ptr %var.load871, ptr %rec.fld886, align 8
  %rec.fld887 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 3
  store ptr %fld.load874, ptr %rec.fld887, align 8
  %rec.fld888 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 4
  store ptr %fld.load877, ptr %rec.fld888, align 8
  %rec.fld889 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 5
  store i1 %fld.load880, ptr %rec.fld889, align 1
  %rec.fld890 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc883, i32 0, i32 6
  store ptr %var.load881, ptr %rec.fld890, align 8
  %a.load891 = load ptr, ptr %var.new_branches, align 8
  %a.null892 = icmp eq ptr %a.load891, null
  br i1 %a.null892, label %a.create893, label %a.after894

a.create893:                                      ; preds = %a.after862
  %arena.cur895 = call ptr @dva_arena_current()
  %a.create896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 24)
  %arena.cur897 = call ptr @dva_arena_current()
  %a.buf898 = call ptr @dva_arena_alloc(ptr %arena.cur897, i64 128)
  %a.len.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 0
  store i64 0, ptr %a.len.gep899, align 8
  %a.data.gep900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 1
  store ptr %a.buf898, ptr %a.data.gep900, align 8
  %a.cap.gep901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 2
  store i64 16, ptr %a.cap.gep901, align 8
  store ptr %a.create896, ptr %var.new_branches, align 8
  br label %a.after894

a.after894:                                       ; preds = %a.create893, %a.after862
  %a.load2902 = load ptr, ptr %var.new_branches, align 8
  br label %a.check903

a.check903:                                       ; preds = %a.after894
  %a.len906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  %a.len907 = load i64, ptr %a.len906, align 8
  %a.cap908 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 2
  %a.cap909 = load i64, ptr %a.cap908, align 8
  %a.needs.grow910 = icmp eq i64 %a.len907, %a.cap909
  br i1 %a.needs.grow910, label %a.grow904, label %a.store905

a.grow904:                                        ; preds = %a.check903
  call void @dva_array_grow(ptr %a.load2902)
  br label %a.store905

a.store905:                                       ; preds = %a.grow904, %a.check903
  %a.cur.data911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 1
  %a.cur.data912 = load ptr, ptr %a.cur.data911, align 8
  %a.cur.len913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  %a.cur.len914 = load i64, ptr %a.cur.len913, align 8
  %a.elem.gep915 = getelementptr i64, ptr %a.cur.data912, i64 %a.cur.len914
  %slot.p2i916 = ptrtoint ptr %rec.alloc883 to i64
  store i64 %slot.p2i916, ptr %a.elem.gep915, align 8
  %a.next.len917 = add i64 %a.cur.len914, 1
  %b.len.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  store i64 %a.next.len917, ptr %b.len.gep918, align 8
  br label %loop.latch.80

a.create932:                                      ; preds = %loop.exit.80
  %arena.cur934 = call ptr @dva_arena_current()
  %a.create935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 24)
  %arena.cur936 = call ptr @dva_arena_current()
  %a.buf937 = call ptr @dva_arena_alloc(ptr %arena.cur936, i64 128)
  %a.len.gep938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create935, i32 0, i32 0
  store i64 0, ptr %a.len.gep938, align 8
  %a.data.gep939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create935, i32 0, i32 1
  store ptr %a.buf937, ptr %a.data.gep939, align 8
  %a.cap.gep940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create935, i32 0, i32 2
  store i64 16, ptr %a.cap.gep940, align 8
  store ptr %a.create935, ptr %var.new_branches, align 8
  br label %a.after933

a.after933:                                       ; preds = %a.create932, %loop.exit.80
  %a.load2941 = load ptr, ptr %var.new_branches, align 8
  %arena.cur942 = call ptr @dva_arena_current()
  %rec.alloc943 = call ptr @dva_arena_alloc(ptr %arena.cur942, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld944 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc943, i32 0, i32 0
  store ptr %var.load925, ptr %rec.fld944, align 8
  %rec.fld945 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc943, i32 0, i32 1
  store i1 %fld.load928, ptr %rec.fld945, align 1
  %rec.fld946 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc943, i32 0, i32 2
  store ptr %a.load2941, ptr %rec.fld946, align 8
  store ptr %rec.alloc943, ptr %pay.gep924, align 8
  br label %choice.exit

choice.case947:                                   ; preds = %choice.next654
  %pay.gep952 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr953 = load ptr, ptr %pay.gep952, align 8
  store ptr %payload.ptr953, ptr %var._954, align 8
  store ptr %payload.ptr953, ptr %var.a, align 8
  %var.load955 = load ptr, ptr %var.locals, align 8
  %a.load956 = load ptr, ptr %var.locals, align 8
  %a.null957 = icmp eq ptr %a.load956, null
  br i1 %a.null957, label %a.create958, label %a.after959

choice.next948:                                   ; preds = %choice.next654
  %tag.gep1183 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1184 = load i64, ptr %tag.gep1183, align 8
  %tag.match1185 = icmp eq i64 %tag.id1184, 23
  br i1 %tag.match1185, label %choice.case1181, label %choice.next1182

a.create958:                                      ; preds = %choice.case947
  %arena.cur960 = call ptr @dva_arena_current()
  %a.create961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 24)
  %arena.cur962 = call ptr @dva_arena_current()
  %a.buf963 = call ptr @dva_arena_alloc(ptr %arena.cur962, i64 128)
  %a.len.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 0
  store i64 0, ptr %a.len.gep964, align 8
  %a.data.gep965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 1
  store ptr %a.buf963, ptr %a.data.gep965, align 8
  %a.cap.gep966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create961, i32 0, i32 2
  store i64 16, ptr %a.cap.gep966, align 8
  store ptr %a.create961, ptr %var.locals, align 8
  br label %a.after959

a.after959:                                       ; preds = %a.create958, %choice.case947
  %a.load2967 = load ptr, ptr %var.locals, align 8
  %call.res968 = call i1 @"overloads::contains"(ptr %a.load2967, ptr @str.7.struct)
  %nottmp969 = xor i1 %call.res968, true
  store i1 %nottmp969, ptr %var.is_top, align 1
  %var.load970 = load i1, ptr %var.is_top, align 1
  br i1 %var.load970, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %a.after959
  %var.load971 = load ptr, ptr %var.a, align 8
  %fld.gep972 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load971, i32 0, i32 0
  %fld.load973 = load ptr, ptr %fld.gep972, align 8
  %eq.lhs.len974 = getelementptr inbounds { i64, ptr }, ptr %fld.load973, i32 0, i32 0
  %eq.lhs.len975 = load i64, ptr %eq.lhs.len974, align 8
  %eq.lhs.len976 = and i64 %eq.lhs.len975, 281474976710655
  %str.tag977 = lshr i64 %eq.lhs.len975, 48
  %tag.immortal979 = icmp eq i64 %str.tag977, 0
  br i1 %tag.immortal979, label %str_ok978, label %tag.gen_check980

and.82.else:                                      ; preds = %a.after959
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge993
  %and.82.phi = phi i1 [ %str.neq1000, %str.eq.merge993 ], [ %var.load970, %and.82.else ]
  br i1 %and.82.phi, label %choice.then1001, label %choice.else1002

str_ok978:                                        ; preds = %abort.dead987, %tag.slow_check981, %tag.gen_check980, %and.82.then
  %eq.rhs.len988 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len989 = and i64 %eq.rhs.len988, 281474976710655
  %eq.len990 = icmp eq i64 %eq.lhs.len976, %eq.rhs.len989
  br i1 %eq.len990, label %str.eq.then991, label %str.eq.else992

tag.gen_check980:                                 ; preds = %and.82.then
  %active.gen983 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok984 = icmp eq i64 %str.tag977, %active.gen983
  br i1 %tag.fast.ok984, label %str_ok978, label %tag.slow_check981

tag.slow_check981:                                ; preds = %tag.gen_check980
  %arena.cur985 = call ptr @dva_arena_current()
  %tag.valid986 = call i1 @dva_arena_validate_tag(ptr %arena.cur985, i64 %str.tag977)
  br i1 %tag.valid986, label %str_ok978, label %tag.stale982

tag.stale982:                                     ; preds = %tag.slow_check981
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead987:                                    ; No predecessors!
  br label %str_ok978

str.eq.then991:                                   ; preds = %str_ok978
  %eq.lhs.data994 = getelementptr inbounds { i64, ptr }, ptr %fld.load973, i32 0, i32 1
  %eq.lhs.data995 = load ptr, ptr %eq.lhs.data994, align 8
  %eq.rhs.data996 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp997 = call i32 @memcmp(ptr %eq.lhs.data995, ptr %eq.rhs.data996, i64 %eq.lhs.len976)
  %eq.cmp.zero998 = icmp eq i32 %eq.memcmp997, 0
  br label %str.eq.merge993

str.eq.else992:                                   ; preds = %str_ok978
  br label %str.eq.merge993

str.eq.merge993:                                  ; preds = %str.eq.else992, %str.eq.then991
  %str.eq.result999 = phi i1 [ %eq.cmp.zero998, %str.eq.then991 ], [ false, %str.eq.else992 ]
  %str.neq1000 = xor i1 %str.eq.result999, true
  br label %and.82.exit

choice.then1001:                                  ; preds = %and.82.exit
  %var.load1004 = load ptr, ptr %var.a, align 8
  %fld.gep1005 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1004, i32 0, i32 0
  %fld.load1006 = load ptr, ptr %fld.gep1005, align 8
  %call.res1007 = call { i64, ptr } @"overloads::decl_module"(ptr %fld.load1006, i64 0)
  %arena.cur1008 = call ptr @dva_arena_current()
  %ret.ub.alloc1009 = call ptr @dva_arena_alloc(ptr %arena.cur1008, i64 16)
  store { i64, ptr } %call.res1007, ptr %ret.ub.alloc1009, align 8
  br label %choice.exit1003

choice.else1002:                                  ; preds = %and.82.exit
  %var.load1010 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit1003

choice.exit1003:                                  ; preds = %choice.else1002, %choice.then1001
  %choice.res1011 = phi ptr [ %ret.ub.alloc1009, %choice.then1001 ], [ %var.load1010, %choice.else1002 ]
  store ptr %choice.res1011, ptr %var.eff_mod, align 8
  %var.load1012 = load ptr, ptr %var.a, align 8
  %fld.gep1013 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1012, i32 0, i32 5
  %fld.load1014 = load ptr, ptr %fld.gep1013, align 8
  %tag.gep1018 = getelementptr inbounds { i64, ptr }, ptr %fld.load1014, i32 0, i32 0
  %tag.id1019 = load i64, ptr %tag.gep1018, align 8
  %tag.match1020 = icmp eq i64 %tag.id1019, 14
  br i1 %tag.match1020, label %choice.case1016, label %choice.next1017

choice.exit1015:                                  ; preds = %choice.exit1031, %choice.case1016
  %choice.res1046 = phi i64 [ %a.len.query1027, %choice.case1016 ], [ %choice.res1045, %choice.exit1031 ]
  store i64 %choice.res1046, ptr %var.arity, align 8
  %var.load1047 = load ptr, ptr %var.table, align 8
  %var.load1048 = load ptr, ptr %var.a, align 8
  %fld.gep1049 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1048, i32 0, i32 0
  %fld.load1050 = load ptr, ptr %fld.gep1049, align 8
  %call.res1051 = call i1 @"overloads::is_family"(ptr %var.load1047, ptr %fld.load1050)
  br i1 %call.res1051, label %and.83.then, label %and.83.else

choice.case1016:                                  ; preds = %choice.exit1003
  %pay.gep1021 = getelementptr inbounds { i64, ptr }, ptr %fld.load1014, i32 0, i32 1
  %payload.ptr1022 = load ptr, ptr %pay.gep1021, align 8
  store ptr %payload.ptr1022, ptr %var._1023, align 8
  store ptr %payload.ptr1022, ptr %var.fn, align 8
  %var.load1024 = load ptr, ptr %var.fn, align 8
  %fld.gep1025 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1024, i32 0, i32 0
  %fld.load1026 = load ptr, ptr %fld.gep1025, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1026, i32 0, i32 0
  %a.len.query1027 = load i64, ptr %a.len.query, align 8
  br label %choice.exit1015

choice.next1017:                                  ; preds = %choice.exit1003
  %var.load1028 = load ptr, ptr %var.a, align 8
  %fld.gep1029 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1028, i32 0, i32 8
  %fld.load1030 = load ptr, ptr %fld.gep1029, align 8
  %tag.gep1034 = getelementptr inbounds { i64, ptr }, ptr %fld.load1030, i32 0, i32 0
  %tag.id1035 = load i64, ptr %tag.gep1034, align 8
  %tag.match1036 = icmp eq i64 %tag.id1035, 8
  br i1 %tag.match1036, label %choice.case1032, label %choice.next1033

choice.exit1031:                                  ; preds = %choice.next1033, %choice.case1032
  %choice.res1045 = phi i64 [ %a.len.query1044, %choice.case1032 ], [ -1, %choice.next1033 ]
  br label %choice.exit1015

choice.case1032:                                  ; preds = %choice.next1017
  %pay.gep1037 = getelementptr inbounds { i64, ptr }, ptr %fld.load1030, i32 0, i32 1
  %payload.ptr1038 = load ptr, ptr %pay.gep1037, align 8
  store ptr %payload.ptr1038, ptr %var._1039, align 8
  store ptr %payload.ptr1038, ptr %var.ft, align 8
  %var.load1040 = load ptr, ptr %var.ft, align 8
  %fld.gep1041 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1040, i32 0, i32 0
  %fld.load1042 = load ptr, ptr %fld.gep1041, align 8
  %a.len.query1043 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1042, i32 0, i32 0
  %a.len.query1044 = load i64, ptr %a.len.query1043, align 8
  br label %choice.exit1031

choice.next1033:                                  ; preds = %choice.next1017
  br label %choice.exit1031

and.83.then:                                      ; preds = %choice.exit1015
  %var.load1052 = load i1, ptr %var.is_top, align 1
  br label %and.83.exit

and.83.else:                                      ; preds = %choice.exit1015
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %var.load1052, %and.83.then ], [ %call.res1051, %and.83.else ]
  store i1 %and.83.phi, ptr %var.family, align 1
  %var.load1053 = load i1, ptr %var.family, align 1
  br i1 %var.load1053, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load1054 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1054, 0
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp, %and.84.then ], [ %var.load1053, %and.84.else ]
  br i1 %and.84.phi, label %choice.then1055, label %choice.else1056

choice.then1055:                                  ; preds = %and.84.exit
  %var.load1058 = load ptr, ptr %var.a, align 8
  %fld.gep1059 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1058, i32 0, i32 0
  %fld.load1060 = load ptr, ptr %fld.gep1059, align 8
  %var.load1061 = load i64, ptr %var.arity, align 8
  %call.res1062 = call { i64, ptr } @"overloads::symbol"(ptr %fld.load1060, i64 %var.load1061)
  %arena.cur1063 = call ptr @dva_arena_current()
  %ret.ub.alloc1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 16)
  store { i64, ptr } %call.res1062, ptr %ret.ub.alloc1064, align 8
  br label %choice.exit1057

choice.else1056:                                  ; preds = %and.84.exit
  %var.load1065 = load ptr, ptr %var.a, align 8
  %fld.gep1066 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1065, i32 0, i32 0
  %fld.load1067 = load ptr, ptr %fld.gep1066, align 8
  br label %choice.exit1057

choice.exit1057:                                  ; preds = %choice.else1056, %choice.then1055
  %choice.res1068 = phi ptr [ %ret.ub.alloc1064, %choice.then1055 ], [ %fld.load1067, %choice.else1056 ]
  store ptr %choice.res1068, ptr %var.new_name, align 8
  %var.load1069 = load ptr, ptr %var.a, align 8
  %fld.gep1070 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1069, i32 0, i32 8
  %fld.load1071 = load ptr, ptr %fld.gep1070, align 8
  %tag.gep1075 = getelementptr inbounds { i64, ptr }, ptr %fld.load1071, i32 0, i32 0
  %tag.id1076 = load i64, ptr %tag.gep1075, align 8
  %tag.match1077 = icmp eq i64 %tag.id1076, 8
  br i1 %tag.match1077, label %choice.case1073, label %choice.next1074

choice.exit1072:                                  ; preds = %choice.next1074, %choice.case1073
  %choice.res1089 = phi ptr [ %fld.load1083, %choice.case1073 ], [ %call.res1088, %choice.next1074 ]
  store ptr %choice.res1089, ptr %var.expected, align 8
  %var.load1090 = load ptr, ptr %var.a, align 8
  %fld.gep1091 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1090, i32 0, i32 5
  %fld.load1092 = load ptr, ptr %fld.gep1091, align 8
  %var.load1093 = load ptr, ptr %var.table, align 8
  %var.load1094 = load ptr, ptr %var.locals, align 8
  %a.load1095 = load ptr, ptr %var.locals, align 8
  %a.null1096 = icmp eq ptr %a.load1095, null
  br i1 %a.null1096, label %a.create1097, label %a.after1098

choice.case1073:                                  ; preds = %choice.exit1057
  %pay.gep1078 = getelementptr inbounds { i64, ptr }, ptr %fld.load1071, i32 0, i32 1
  %payload.ptr1079 = load ptr, ptr %pay.gep1078, align 8
  store ptr %payload.ptr1079, ptr %var._1080, align 8
  %var.load1081 = load ptr, ptr %var.a, align 8
  %fld.gep1082 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1081, i32 0, i32 8
  %fld.load1083 = load ptr, ptr %fld.gep1082, align 8
  br label %choice.exit1072

choice.next1074:                                  ; preds = %choice.exit1057
  %var.load1084 = load ptr, ptr %var.table, align 8
  %var.load1085 = load ptr, ptr %var.a, align 8
  %fld.gep1086 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1085, i32 0, i32 0
  %fld.load1087 = load ptr, ptr %fld.gep1086, align 8
  %call.res1088 = call ptr @"overloads::signature"(ptr %var.load1084, ptr %fld.load1087, i64 -1)
  br label %choice.exit1072

a.create1097:                                     ; preds = %choice.exit1072
  %arena.cur1099 = call ptr @dva_arena_current()
  %a.create1100 = call ptr @dva_arena_alloc(ptr %arena.cur1099, i64 24)
  %arena.cur1101 = call ptr @dva_arena_current()
  %a.buf1102 = call ptr @dva_arena_alloc(ptr %arena.cur1101, i64 128)
  %a.len.gep1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 0
  store i64 0, ptr %a.len.gep1103, align 8
  %a.data.gep1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 1
  store ptr %a.buf1102, ptr %a.data.gep1104, align 8
  %a.cap.gep1105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1105, align 8
  store ptr %a.create1100, ptr %var.locals, align 8
  br label %a.after1098

a.after1098:                                      ; preds = %a.create1097, %choice.exit1072
  %a.load21106 = load ptr, ptr %var.locals, align 8
  %var.load1107 = load ptr, ptr %var.eff_mod, align 8
  %call.res1108 = call ptr @"overloads::walk"(ptr %fld.load1092, ptr %var.load1093, ptr %a.load21106, ptr %var.load1107)
  %var.load1109 = load ptr, ptr %var.expected, align 8
  %var.load1110 = load ptr, ptr %var.table, align 8
  %var.load1111 = load ptr, ptr %var.locals, align 8
  %a.load1112 = load ptr, ptr %var.locals, align 8
  %a.null1113 = icmp eq ptr %a.load1112, null
  br i1 %a.null1113, label %a.create1114, label %a.after1115

a.create1114:                                     ; preds = %a.after1098
  %arena.cur1116 = call ptr @dva_arena_current()
  %a.create1117 = call ptr @dva_arena_alloc(ptr %arena.cur1116, i64 24)
  %arena.cur1118 = call ptr @dva_arena_current()
  %a.buf1119 = call ptr @dva_arena_alloc(ptr %arena.cur1118, i64 128)
  %a.len.gep1120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1117, i32 0, i32 0
  store i64 0, ptr %a.len.gep1120, align 8
  %a.data.gep1121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1117, i32 0, i32 1
  store ptr %a.buf1119, ptr %a.data.gep1121, align 8
  %a.cap.gep1122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1122, align 8
  store ptr %a.create1117, ptr %var.locals, align 8
  br label %a.after1115

a.after1115:                                      ; preds = %a.create1114, %a.after1098
  %a.load21123 = load ptr, ptr %var.locals, align 8
  %var.load1124 = load ptr, ptr %var.eff_mod, align 8
  %call.res1125 = call ptr @"overloads::select_value"(ptr %call.res1108, ptr %var.load1109, ptr %var.load1110, ptr %a.load21123, ptr %var.load1124)
  store ptr %call.res1125, ptr %var.new_rhs, align 8
  %var.load1126 = load ptr, ptr %var.a, align 8
  %fld.gep1127 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1126, i32 0, i32 6
  %fld.load1128 = load ptr, ptr %fld.gep1127, align 8
  %var.load1129 = load ptr, ptr %var.table, align 8
  %var.load1130 = load ptr, ptr %var.locals, align 8
  %a.load1131 = load ptr, ptr %var.locals, align 8
  %a.null1132 = icmp eq ptr %a.load1131, null
  br i1 %a.null1132, label %a.create1133, label %a.after1134

a.create1133:                                     ; preds = %a.after1115
  %arena.cur1135 = call ptr @dva_arena_current()
  %a.create1136 = call ptr @dva_arena_alloc(ptr %arena.cur1135, i64 24)
  %arena.cur1137 = call ptr @dva_arena_current()
  %a.buf1138 = call ptr @dva_arena_alloc(ptr %arena.cur1137, i64 128)
  %a.len.gep1139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1136, i32 0, i32 0
  store i64 0, ptr %a.len.gep1139, align 8
  %a.data.gep1140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1136, i32 0, i32 1
  store ptr %a.buf1138, ptr %a.data.gep1140, align 8
  %a.cap.gep1141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1136, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1141, align 8
  store ptr %a.create1136, ptr %var.locals, align 8
  br label %a.after1134

a.after1134:                                      ; preds = %a.create1133, %a.after1115
  %a.load21142 = load ptr, ptr %var.locals, align 8
  %var.load1143 = load ptr, ptr %var.eff_mod, align 8
  %call.res1144 = call ptr @"overloads::walk"(ptr %fld.load1128, ptr %var.load1129, ptr %a.load21142, ptr %var.load1143)
  store ptr %call.res1144, ptr %var.new_lhs, align 8
  %arena.cur1145 = call ptr @dva_arena_current()
  %enum.alloc1146 = call ptr @dva_arena_alloc(ptr %arena.cur1145, i64 16)
  %tag.gep1147 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1146, i32 0, i32 0
  store i64 6, ptr %tag.gep1147, align 8
  %pay.gep1148 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1146, i32 0, i32 1
  %var.load1149 = load ptr, ptr %var.new_name, align 8
  %var.load1150 = load ptr, ptr %var.a, align 8
  %fld.gep1151 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1150, i32 0, i32 1
  %fld.load1152 = load i1, ptr %fld.gep1151, align 1
  %var.load1153 = load ptr, ptr %var.a, align 8
  %fld.gep1154 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1153, i32 0, i32 2
  %fld.load1155 = load i1, ptr %fld.gep1154, align 1
  %var.load1156 = load ptr, ptr %var.a, align 8
  %fld.gep1157 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1156, i32 0, i32 3
  %fld.load1158 = load i1, ptr %fld.gep1157, align 1
  %var.load1159 = load ptr, ptr %var.a, align 8
  %fld.gep1160 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1159, i32 0, i32 4
  %fld.load1161 = load i1, ptr %fld.gep1160, align 1
  %var.load1162 = load ptr, ptr %var.new_rhs, align 8
  %var.load1163 = load ptr, ptr %var.new_lhs, align 8
  %var.load1164 = load ptr, ptr %var.a, align 8
  %fld.gep1165 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1164, i32 0, i32 7
  %fld.load1166 = load ptr, ptr %fld.gep1165, align 8
  %var.load1167 = load ptr, ptr %var.a, align 8
  %fld.gep1168 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1167, i32 0, i32 8
  %fld.load1169 = load ptr, ptr %fld.gep1168, align 8
  %arena.cur1170 = call ptr @dva_arena_current()
  %rec.alloc1171 = call ptr @dva_arena_alloc(ptr %arena.cur1170, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1172 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 0
  store ptr %var.load1149, ptr %rec.fld1172, align 8
  %rec.fld1173 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 1
  store i1 %fld.load1152, ptr %rec.fld1173, align 1
  %rec.fld1174 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 2
  store i1 %fld.load1155, ptr %rec.fld1174, align 1
  %rec.fld1175 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 3
  store i1 %fld.load1158, ptr %rec.fld1175, align 1
  %rec.fld1176 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 4
  store i1 %fld.load1161, ptr %rec.fld1176, align 1
  %rec.fld1177 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 5
  store ptr %var.load1162, ptr %rec.fld1177, align 8
  %rec.fld1178 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 6
  store ptr %var.load1163, ptr %rec.fld1178, align 8
  %rec.fld1179 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 7
  store ptr %fld.load1166, ptr %rec.fld1179, align 8
  %rec.fld1180 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1171, i32 0, i32 8
  store ptr %fld.load1169, ptr %rec.fld1180, align 8
  store ptr %rec.alloc1171, ptr %pay.gep1148, align 8
  br label %choice.exit

choice.case1181:                                  ; preds = %choice.next948
  %pay.gep1186 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1187 = load ptr, ptr %pay.gep1186, align 8
  store ptr %payload.ptr1187, ptr %var._1188, align 8
  store ptr %payload.ptr1187, ptr %var.td, align 8
  %var.load1189 = load ptr, ptr %var.td, align 8
  %fld.gep1190 = getelementptr inbounds { ptr, ptr }, ptr %var.load1189, i32 0, i32 1
  %fld.load1191 = load ptr, ptr %fld.gep1190, align 8
  %var.load1192 = load ptr, ptr %var.table, align 8
  %call.res1193 = call ptr @"overloads::keep_type"(ptr %fld.load1191, ptr %var.load1192)
  store ptr %call.res1193, ptr %var.new_ti, align 8
  %arena.cur1194 = call ptr @dva_arena_current()
  %enum.alloc1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 16)
  %tag.gep1196 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1195, i32 0, i32 0
  store i64 23, ptr %tag.gep1196, align 8
  %pay.gep1197 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1195, i32 0, i32 1
  %var.load1198 = load ptr, ptr %var.td, align 8
  %fld.gep1199 = getelementptr inbounds { ptr, ptr }, ptr %var.load1198, i32 0, i32 0
  %fld.load1200 = load ptr, ptr %fld.gep1199, align 8
  %var.load1201 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1202 = call ptr @dva_arena_current()
  %rec.alloc1203 = call ptr @dva_arena_alloc(ptr %arena.cur1202, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1204 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1203, i32 0, i32 0
  store ptr %fld.load1200, ptr %rec.fld1204, align 8
  %rec.fld1205 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1203, i32 0, i32 1
  store ptr %var.load1201, ptr %rec.fld1205, align 8
  store ptr %rec.alloc1203, ptr %pay.gep1197, align 8
  br label %choice.exit

choice.next1182:                                  ; preds = %choice.next948
  %tag.gep1208 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1209 = load i64, ptr %tag.gep1208, align 8
  %tag.match1210 = icmp eq i64 %tag.id1209, 21
  br i1 %tag.match1210, label %choice.case1206, label %choice.next1207

choice.case1206:                                  ; preds = %choice.next1182
  %pay.gep1211 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1212 = load ptr, ptr %pay.gep1211, align 8
  store ptr %payload.ptr1212, ptr %var._1213, align 8
  store ptr %payload.ptr1212, ptr %var.f, align 8
  %var.load1214 = load ptr, ptr %var.f, align 8
  %fld.gep1215 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1214, i32 0, i32 3
  %fld.load1216 = load ptr, ptr %fld.gep1215, align 8
  %var.load1217 = load ptr, ptr %var.table, align 8
  %call.res1218 = call ptr @"overloads::keep_fparams"(ptr %fld.load1216, ptr %var.load1217)
  store ptr %call.res1218, ptr %var.new_params, align 8
  %var.load1219 = load ptr, ptr %var.f, align 8
  %fld.gep1220 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1219, i32 0, i32 5
  %fld.load1221 = load ptr, ptr %fld.gep1220, align 8
  %var.load1222 = load ptr, ptr %var.table, align 8
  %call.res1223 = call ptr @"overloads::keep_type"(ptr %fld.load1221, ptr %var.load1222)
  store ptr %call.res1223, ptr %var.new_ret_ti, align 8
  %arena.cur1224 = call ptr @dva_arena_current()
  %enum.alloc1225 = call ptr @dva_arena_alloc(ptr %arena.cur1224, i64 16)
  %tag.gep1226 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1225, i32 0, i32 0
  store i64 21, ptr %tag.gep1226, align 8
  %pay.gep1227 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1225, i32 0, i32 1
  %var.load1228 = load ptr, ptr %var.f, align 8
  %fld.gep1229 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1228, i32 0, i32 0
  %fld.load1230 = load ptr, ptr %fld.gep1229, align 8
  %var.load1231 = load ptr, ptr %var.f, align 8
  %fld.gep1232 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1231, i32 0, i32 1
  %fld.load1233 = load ptr, ptr %fld.gep1232, align 8
  %var.load1234 = load ptr, ptr %var.f, align 8
  %fld.gep1235 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1234, i32 0, i32 2
  %fld.load1236 = load ptr, ptr %fld.gep1235, align 8
  %var.load1237 = load ptr, ptr %var.new_params, align 8
  %a.load1238 = load ptr, ptr %var.new_params, align 8
  %a.null1239 = icmp eq ptr %a.load1238, null
  br i1 %a.null1239, label %a.create1240, label %a.after1241

choice.next1207:                                  ; preds = %choice.next1182
  %tag.gep1268 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1269 = load i64, ptr %tag.gep1268, align 8
  %tag.match1270 = icmp eq i64 %tag.id1269, 16
  br i1 %tag.match1270, label %choice.case1266, label %choice.next1267

a.create1240:                                     ; preds = %choice.case1206
  %arena.cur1242 = call ptr @dva_arena_current()
  %a.create1243 = call ptr @dva_arena_alloc(ptr %arena.cur1242, i64 24)
  %arena.cur1244 = call ptr @dva_arena_current()
  %a.buf1245 = call ptr @dva_arena_alloc(ptr %arena.cur1244, i64 128)
  %a.len.gep1246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1243, i32 0, i32 0
  store i64 0, ptr %a.len.gep1246, align 8
  %a.data.gep1247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1243, i32 0, i32 1
  store ptr %a.buf1245, ptr %a.data.gep1247, align 8
  %a.cap.gep1248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1248, align 8
  store ptr %a.create1243, ptr %var.new_params, align 8
  br label %a.after1241

a.after1241:                                      ; preds = %a.create1240, %choice.case1206
  %a.load21249 = load ptr, ptr %var.new_params, align 8
  %var.load1250 = load ptr, ptr %var.f, align 8
  %fld.gep1251 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1250, i32 0, i32 4
  %fld.load1252 = load ptr, ptr %fld.gep1251, align 8
  %var.load1253 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1254 = load ptr, ptr %var.f, align 8
  %fld.gep1255 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1254, i32 0, i32 6
  %fld.load1256 = load i1, ptr %fld.gep1255, align 1
  %arena.cur1257 = call ptr @dva_arena_current()
  %rec.alloc1258 = call ptr @dva_arena_alloc(ptr %arena.cur1257, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1259 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 0
  store ptr %fld.load1230, ptr %rec.fld1259, align 8
  %rec.fld1260 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 1
  store ptr %fld.load1233, ptr %rec.fld1260, align 8
  %rec.fld1261 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 2
  store ptr %fld.load1236, ptr %rec.fld1261, align 8
  %rec.fld1262 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 3
  store ptr %a.load21249, ptr %rec.fld1262, align 8
  %rec.fld1263 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 4
  store ptr %fld.load1252, ptr %rec.fld1263, align 8
  %rec.fld1264 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 5
  store ptr %var.load1253, ptr %rec.fld1264, align 8
  %rec.fld1265 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1258, i32 0, i32 6
  store i1 %fld.load1256, ptr %rec.fld1265, align 1
  store ptr %rec.alloc1258, ptr %pay.gep1227, align 8
  br label %choice.exit

choice.case1266:                                  ; preds = %choice.next1207
  %pay.gep1271 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1272 = load ptr, ptr %pay.gep1271, align 8
  store ptr %payload.ptr1272, ptr %var._1273, align 8
  store ptr %payload.ptr1272, ptr %var.m, align 8
  %var.load1274 = load ptr, ptr %var.m, align 8
  %fld.gep1275 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1274, i32 0, i32 2
  %fld.load1276 = load i1, ptr %fld.gep1275, align 1
  br i1 %fld.load1276, label %choice.then1277, label %choice.else1278

choice.next1267:                                  ; preds = %choice.next1207
  %tag.gep1350 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1351 = load i64, ptr %tag.gep1350, align 8
  %tag.match1352 = icmp eq i64 %tag.id1351, 15
  br i1 %tag.match1352, label %choice.case1348, label %choice.next1349

choice.then1277:                                  ; preds = %choice.case1266
  %arena.cur1280 = call ptr @dva_arena_current()
  %enum.alloc1281 = call ptr @dva_arena_alloc(ptr %arena.cur1280, i64 16)
  %tag.gep1282 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1281, i32 0, i32 0
  store i64 3, ptr %tag.gep1282, align 8
  %pay.gep1283 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1281, i32 0, i32 1
  %var.load1284 = load ptr, ptr %var.e, align 8
  %call.res1285 = call { i64, ptr } @"overloads::name_of"(ptr %var.load1284)
  %arena.cur1286 = call ptr @dva_arena_current()
  %ret.ub.alloc1287 = call ptr @dva_arena_alloc(ptr %arena.cur1286, i64 16)
  store { i64, ptr } %call.res1285, ptr %ret.ub.alloc1287, align 8
  store ptr %ret.ub.alloc1287, ptr %pay.gep1283, align 8
  br label %choice.exit1279

choice.else1278:                                  ; preds = %choice.case1266
  %arena.cur1288 = call ptr @dva_arena_current()
  %enum.alloc1289 = call ptr @dva_arena_alloc(ptr %arena.cur1288, i64 16)
  %tag.gep1290 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1289, i32 0, i32 0
  store i64 16, ptr %tag.gep1290, align 8
  %pay.gep1291 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1289, i32 0, i32 1
  %var.load1292 = load ptr, ptr %var.m, align 8
  %fld.gep1293 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1292, i32 0, i32 0
  %fld.load1294 = load ptr, ptr %fld.gep1293, align 8
  %var.load1295 = load ptr, ptr %var.table, align 8
  %var.load1296 = load ptr, ptr %var.locals, align 8
  %a.load1297 = load ptr, ptr %var.locals, align 8
  %a.null1298 = icmp eq ptr %a.load1297, null
  br i1 %a.null1298, label %a.create1299, label %a.after1300

choice.exit1279:                                  ; preds = %a.after1322, %choice.then1277
  %choice.res1347 = phi ptr [ %enum.alloc1281, %choice.then1277 ], [ %enum.alloc1289, %a.after1322 ]
  br label %choice.exit

a.create1299:                                     ; preds = %choice.else1278
  %arena.cur1301 = call ptr @dva_arena_current()
  %a.create1302 = call ptr @dva_arena_alloc(ptr %arena.cur1301, i64 24)
  %arena.cur1303 = call ptr @dva_arena_current()
  %a.buf1304 = call ptr @dva_arena_alloc(ptr %arena.cur1303, i64 128)
  %a.len.gep1305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1302, i32 0, i32 0
  store i64 0, ptr %a.len.gep1305, align 8
  %a.data.gep1306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1302, i32 0, i32 1
  store ptr %a.buf1304, ptr %a.data.gep1306, align 8
  %a.cap.gep1307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1302, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1307, align 8
  store ptr %a.create1302, ptr %var.locals, align 8
  br label %a.after1300

a.after1300:                                      ; preds = %a.create1299, %choice.else1278
  %a.load21308 = load ptr, ptr %var.locals, align 8
  %var.load1309 = load ptr, ptr %var.cur_mod, align 8
  %call.res1310 = call ptr @"overloads::walk"(ptr %fld.load1294, ptr %var.load1295, ptr %a.load21308, ptr %var.load1309)
  %var.load1311 = load ptr, ptr %var.m, align 8
  %fld.gep1312 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1311, i32 0, i32 1
  %fld.load1313 = load ptr, ptr %fld.gep1312, align 8
  %var.load1314 = load ptr, ptr %var.m, align 8
  %fld.gep1315 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1314, i32 0, i32 3
  %fld.load1316 = load ptr, ptr %fld.gep1315, align 8
  %var.load1317 = load ptr, ptr %var.table, align 8
  %var.load1318 = load ptr, ptr %var.locals, align 8
  %a.load1319 = load ptr, ptr %var.locals, align 8
  %a.null1320 = icmp eq ptr %a.load1319, null
  br i1 %a.null1320, label %a.create1321, label %a.after1322

a.create1321:                                     ; preds = %a.after1300
  %arena.cur1323 = call ptr @dva_arena_current()
  %a.create1324 = call ptr @dva_arena_alloc(ptr %arena.cur1323, i64 24)
  %arena.cur1325 = call ptr @dva_arena_current()
  %a.buf1326 = call ptr @dva_arena_alloc(ptr %arena.cur1325, i64 128)
  %a.len.gep1327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1324, i32 0, i32 0
  store i64 0, ptr %a.len.gep1327, align 8
  %a.data.gep1328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1324, i32 0, i32 1
  store ptr %a.buf1326, ptr %a.data.gep1328, align 8
  %a.cap.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1324, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1329, align 8
  store ptr %a.create1324, ptr %var.locals, align 8
  br label %a.after1322

a.after1322:                                      ; preds = %a.create1321, %a.after1300
  %a.load21330 = load ptr, ptr %var.locals, align 8
  %var.load1331 = load ptr, ptr %var.cur_mod, align 8
  %call.res1332 = call ptr @"overloads::walk"(ptr %fld.load1316, ptr %var.load1317, ptr %a.load21330, ptr %var.load1331)
  %var.load1333 = load ptr, ptr %var.m, align 8
  %fld.gep1334 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1333, i32 0, i32 4
  %fld.load1335 = load i64, ptr %fld.gep1334, align 8
  %var.load1336 = load ptr, ptr %var.m, align 8
  %fld.gep1337 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1336, i32 0, i32 5
  %fld.load1338 = load i64, ptr %fld.gep1337, align 8
  %arena.cur1339 = call ptr @dva_arena_current()
  %rec.alloc1340 = call ptr @dva_arena_alloc(ptr %arena.cur1339, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1341 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 0
  store ptr %call.res1310, ptr %rec.fld1341, align 8
  %rec.fld1342 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 1
  store ptr %fld.load1313, ptr %rec.fld1342, align 8
  %rec.fld1343 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 2
  store i1 false, ptr %rec.fld1343, align 1
  %rec.fld1344 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 3
  store ptr %call.res1332, ptr %rec.fld1344, align 8
  %rec.fld1345 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 4
  store i64 %fld.load1335, ptr %rec.fld1345, align 8
  %rec.fld1346 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1340, i32 0, i32 5
  store i64 %fld.load1338, ptr %rec.fld1346, align 8
  store ptr %rec.alloc1340, ptr %pay.gep1291, align 8
  br label %choice.exit1279

choice.case1348:                                  ; preds = %choice.next1267
  %pay.gep1353 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1354 = load ptr, ptr %pay.gep1353, align 8
  store ptr %payload.ptr1354, ptr %var._1355, align 8
  store ptr %payload.ptr1354, ptr %var.re, align 8
  %arena.cur1356 = call ptr @dva_arena_current()
  %a.new1357 = call ptr @dva_arena_alloc(ptr %arena.cur1356, i64 24)
  %arena.cur1358 = call ptr @dva_arena_current()
  %a.buf1359 = call ptr @dva_arena_alloc(ptr %arena.cur1358, i64 128)
  %a.len.gep1360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1357, i32 0, i32 0
  store i64 0, ptr %a.len.gep1360, align 8
  %a.data.gep1361 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1357, i32 0, i32 1
  store ptr %a.buf1359, ptr %a.data.gep1361, align 8
  %a.cap.gep1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1357, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1362, align 8
  store ptr %a.new1357, ptr %var.new_fields, align 8
  %var.load1363 = load ptr, ptr %var.re, align 8
  %fld.gep1364 = getelementptr inbounds { ptr, i1 }, ptr %var.load1363, i32 0, i32 0
  %fld.load1365 = load ptr, ptr %fld.gep1364, align 8
  %arr.cycle.len1366 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1365, i32 0, i32 0
  %arr.cycle.len1367 = load i64, ptr %arr.cycle.len1366, align 8
  %arr.cycle.data1368 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1365, i32 0, i32 1
  %arr.cycle.data1369 = load ptr, ptr %arr.cycle.data1368, align 8
  store i64 0, ptr %loop.idx.85, align 8
  %cycle.prev.u1370 = load ptr, ptr %var._1355, align 8
  br label %loop.header.85

choice.next1349:                                  ; preds = %choice.next1267
  %tag.gep1466 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1467 = load i64, ptr %tag.gep1466, align 8
  %tag.match1468 = icmp eq i64 %tag.id1467, 17
  br i1 %tag.match1468, label %choice.case1464, label %choice.next1465

loop.header.85:                                   ; preds = %loop.latch.85, %choice.case1348
  %counter.load1371 = load i64, ptr %loop.idx.85, align 8
  %loop.cond1372 = icmp slt i64 %counter.load1371, %arr.cycle.len1367
  br i1 %loop.cond1372, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i1373 = sub i64 %counter.load1371, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep1374 = getelementptr i64, ptr %arr.cycle.data1369, i64 %counter.load1371
  %arr.elem.raw1375 = load i64, ptr %arr.elem.gep1374, align 8
  %slot.i2p1376 = inttoptr i64 %arr.elem.raw1375 to ptr
  store i64 %loop.rel.i1373, ptr %var._i1377, align 8
  store ptr %slot.i2p1376, ptr %var._1378, align 8
  store ptr %slot.i2p1376, ptr %var.fld, align 8
  %var.load1379 = load ptr, ptr %var.fld, align 8
  %fld.gep1380 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1379, i32 0, i32 2
  %fld.load1381 = load ptr, ptr %fld.gep1380, align 8
  %var.load1382 = load ptr, ptr %var.table, align 8
  %var.load1383 = load ptr, ptr %var.locals, align 8
  %a.load1384 = load ptr, ptr %var.locals, align 8
  %a.null1385 = icmp eq ptr %a.load1384, null
  br i1 %a.null1385, label %a.create1386, label %a.after1387

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store1424
  %step.val1438 = load i64, ptr %loop.step.85, align 8
  %loop.next1439 = add i64 %counter.load1371, %step.val1438
  store i64 %loop.next1439, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  store ptr %cycle.prev.u1370, ptr %var._1355, align 8
  %arena.cur1440 = call ptr @dva_arena_current()
  %enum.alloc1441 = call ptr @dva_arena_alloc(ptr %arena.cur1440, i64 16)
  %tag.gep1442 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1441, i32 0, i32 0
  store i64 15, ptr %tag.gep1442, align 8
  %pay.gep1443 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1441, i32 0, i32 1
  %var.load1444 = load ptr, ptr %var.new_fields, align 8
  %a.load1445 = load ptr, ptr %var.new_fields, align 8
  %a.null1446 = icmp eq ptr %a.load1445, null
  br i1 %a.null1446, label %a.create1447, label %a.after1448

a.create1386:                                     ; preds = %loop.body.85
  %arena.cur1388 = call ptr @dva_arena_current()
  %a.create1389 = call ptr @dva_arena_alloc(ptr %arena.cur1388, i64 24)
  %arena.cur1390 = call ptr @dva_arena_current()
  %a.buf1391 = call ptr @dva_arena_alloc(ptr %arena.cur1390, i64 128)
  %a.len.gep1392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 0
  store i64 0, ptr %a.len.gep1392, align 8
  %a.data.gep1393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 1
  store ptr %a.buf1391, ptr %a.data.gep1393, align 8
  %a.cap.gep1394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1394, align 8
  store ptr %a.create1389, ptr %var.locals, align 8
  br label %a.after1387

a.after1387:                                      ; preds = %a.create1386, %loop.body.85
  %a.load21395 = load ptr, ptr %var.locals, align 8
  %var.load1396 = load ptr, ptr %var.cur_mod, align 8
  %call.res1397 = call ptr @"overloads::walk"(ptr %fld.load1381, ptr %var.load1382, ptr %a.load21395, ptr %var.load1396)
  store ptr %call.res1397, ptr %var.new_val, align 8
  %var.load1398 = load ptr, ptr %var.fld, align 8
  %fld.gep1399 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1398, i32 0, i32 0
  %fld.load1400 = load i1, ptr %fld.gep1399, align 1
  %var.load1401 = load ptr, ptr %var.fld, align 8
  %fld.gep1402 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1401, i32 0, i32 1
  %fld.load1403 = load ptr, ptr %fld.gep1402, align 8
  %var.load1404 = load ptr, ptr %var.new_val, align 8
  %arena.cur1405 = call ptr @dva_arena_current()
  %rec.alloc1406 = call ptr @dva_arena_alloc(ptr %arena.cur1405, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1407 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1406, i32 0, i32 0
  store i1 %fld.load1400, ptr %rec.fld1407, align 1
  %rec.fld1408 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1406, i32 0, i32 1
  store ptr %fld.load1403, ptr %rec.fld1408, align 8
  %rec.fld1409 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1406, i32 0, i32 2
  store ptr %var.load1404, ptr %rec.fld1409, align 8
  %a.load1410 = load ptr, ptr %var.new_fields, align 8
  %a.null1411 = icmp eq ptr %a.load1410, null
  br i1 %a.null1411, label %a.create1412, label %a.after1413

a.create1412:                                     ; preds = %a.after1387
  %arena.cur1414 = call ptr @dva_arena_current()
  %a.create1415 = call ptr @dva_arena_alloc(ptr %arena.cur1414, i64 24)
  %arena.cur1416 = call ptr @dva_arena_current()
  %a.buf1417 = call ptr @dva_arena_alloc(ptr %arena.cur1416, i64 128)
  %a.len.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1415, i32 0, i32 0
  store i64 0, ptr %a.len.gep1418, align 8
  %a.data.gep1419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1415, i32 0, i32 1
  store ptr %a.buf1417, ptr %a.data.gep1419, align 8
  %a.cap.gep1420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1415, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1420, align 8
  store ptr %a.create1415, ptr %var.new_fields, align 8
  br label %a.after1413

a.after1413:                                      ; preds = %a.create1412, %a.after1387
  %a.load21421 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1422

a.check1422:                                      ; preds = %a.after1413
  %a.len1425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21421, i32 0, i32 0
  %a.len1426 = load i64, ptr %a.len1425, align 8
  %a.cap1427 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21421, i32 0, i32 2
  %a.cap1428 = load i64, ptr %a.cap1427, align 8
  %a.needs.grow1429 = icmp eq i64 %a.len1426, %a.cap1428
  br i1 %a.needs.grow1429, label %a.grow1423, label %a.store1424

a.grow1423:                                       ; preds = %a.check1422
  call void @dva_array_grow(ptr %a.load21421)
  br label %a.store1424

a.store1424:                                      ; preds = %a.grow1423, %a.check1422
  %a.cur.data1430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21421, i32 0, i32 1
  %a.cur.data1431 = load ptr, ptr %a.cur.data1430, align 8
  %a.cur.len1432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21421, i32 0, i32 0
  %a.cur.len1433 = load i64, ptr %a.cur.len1432, align 8
  %a.elem.gep1434 = getelementptr i64, ptr %a.cur.data1431, i64 %a.cur.len1433
  %slot.p2i1435 = ptrtoint ptr %rec.alloc1406 to i64
  store i64 %slot.p2i1435, ptr %a.elem.gep1434, align 8
  %a.next.len1436 = add i64 %a.cur.len1433, 1
  %b.len.gep1437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21421, i32 0, i32 0
  store i64 %a.next.len1436, ptr %b.len.gep1437, align 8
  br label %loop.latch.85

a.create1447:                                     ; preds = %loop.exit.85
  %arena.cur1449 = call ptr @dva_arena_current()
  %a.create1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 24)
  %arena.cur1451 = call ptr @dva_arena_current()
  %a.buf1452 = call ptr @dva_arena_alloc(ptr %arena.cur1451, i64 128)
  %a.len.gep1453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 0
  store i64 0, ptr %a.len.gep1453, align 8
  %a.data.gep1454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 1
  store ptr %a.buf1452, ptr %a.data.gep1454, align 8
  %a.cap.gep1455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1455, align 8
  store ptr %a.create1450, ptr %var.new_fields, align 8
  br label %a.after1448

a.after1448:                                      ; preds = %a.create1447, %loop.exit.85
  %a.load21456 = load ptr, ptr %var.new_fields, align 8
  %var.load1457 = load ptr, ptr %var.re, align 8
  %fld.gep1458 = getelementptr inbounds { ptr, i1 }, ptr %var.load1457, i32 0, i32 1
  %fld.load1459 = load i1, ptr %fld.gep1458, align 1
  %arena.cur1460 = call ptr @dva_arena_current()
  %rec.alloc1461 = call ptr @dva_arena_alloc(ptr %arena.cur1460, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1462 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1461, i32 0, i32 0
  store ptr %a.load21456, ptr %rec.fld1462, align 8
  %rec.fld1463 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1461, i32 0, i32 1
  store i1 %fld.load1459, ptr %rec.fld1463, align 1
  store ptr %rec.alloc1461, ptr %pay.gep1443, align 8
  br label %choice.exit

choice.case1464:                                  ; preds = %choice.next1349
  %pay.gep1469 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1470 = load ptr, ptr %pay.gep1469, align 8
  store ptr %payload.ptr1470, ptr %var._1471, align 8
  store ptr %payload.ptr1470, ptr %var.ka, align 8
  %var.load1472 = load ptr, ptr %var.ka, align 8
  %fld.gep1473 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1472, i32 0, i32 0
  %fld.load1474 = load ptr, ptr %fld.gep1473, align 8
  %var.load1475 = load ptr, ptr %var.table, align 8
  %var.load1476 = load ptr, ptr %var.locals, align 8
  %a.load1477 = load ptr, ptr %var.locals, align 8
  %a.null1478 = icmp eq ptr %a.load1477, null
  br i1 %a.null1478, label %a.create1479, label %a.after1480

choice.next1465:                                  ; preds = %choice.next1349
  %tag.gep1538 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1539 = load i64, ptr %tag.gep1538, align 8
  %tag.match1540 = icmp eq i64 %tag.id1539, 12
  br i1 %tag.match1540, label %choice.case1536, label %choice.next1537

a.create1479:                                     ; preds = %choice.case1464
  %arena.cur1481 = call ptr @dva_arena_current()
  %a.create1482 = call ptr @dva_arena_alloc(ptr %arena.cur1481, i64 24)
  %arena.cur1483 = call ptr @dva_arena_current()
  %a.buf1484 = call ptr @dva_arena_alloc(ptr %arena.cur1483, i64 128)
  %a.len.gep1485 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 0
  store i64 0, ptr %a.len.gep1485, align 8
  %a.data.gep1486 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 1
  store ptr %a.buf1484, ptr %a.data.gep1486, align 8
  %a.cap.gep1487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1487, align 8
  store ptr %a.create1482, ptr %var.locals, align 8
  br label %a.after1480

a.after1480:                                      ; preds = %a.create1479, %choice.case1464
  %a.load21488 = load ptr, ptr %var.locals, align 8
  %var.load1489 = load ptr, ptr %var.cur_mod, align 8
  %call.res1490 = call ptr @"overloads::walk"(ptr %fld.load1474, ptr %var.load1475, ptr %a.load21488, ptr %var.load1489)
  store ptr %call.res1490, ptr %var.new_target, align 8
  %var.load1491 = load ptr, ptr %var.ka, align 8
  %fld.gep1492 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1491, i32 0, i32 1
  %fld.load1493 = load ptr, ptr %fld.gep1492, align 8
  %var.load1494 = load ptr, ptr %var.table, align 8
  %var.load1495 = load ptr, ptr %var.locals, align 8
  %a.load1496 = load ptr, ptr %var.locals, align 8
  %a.null1497 = icmp eq ptr %a.load1496, null
  br i1 %a.null1497, label %a.create1498, label %a.after1499

a.create1498:                                     ; preds = %a.after1480
  %arena.cur1500 = call ptr @dva_arena_current()
  %a.create1501 = call ptr @dva_arena_alloc(ptr %arena.cur1500, i64 24)
  %arena.cur1502 = call ptr @dva_arena_current()
  %a.buf1503 = call ptr @dva_arena_alloc(ptr %arena.cur1502, i64 128)
  %a.len.gep1504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1501, i32 0, i32 0
  store i64 0, ptr %a.len.gep1504, align 8
  %a.data.gep1505 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1501, i32 0, i32 1
  store ptr %a.buf1503, ptr %a.data.gep1505, align 8
  %a.cap.gep1506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1501, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1506, align 8
  store ptr %a.create1501, ptr %var.locals, align 8
  br label %a.after1499

a.after1499:                                      ; preds = %a.create1498, %a.after1480
  %a.load21507 = load ptr, ptr %var.locals, align 8
  %var.load1508 = load ptr, ptr %var.cur_mod, align 8
  %call.res1509 = call ptr @"overloads::walk"(ptr %fld.load1493, ptr %var.load1494, ptr %a.load21507, ptr %var.load1508)
  store ptr %call.res1509, ptr %var.new_key, align 8
  %arena.cur1510 = call ptr @dva_arena_current()
  %enum.alloc1511 = call ptr @dva_arena_alloc(ptr %arena.cur1510, i64 16)
  %tag.gep1512 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1511, i32 0, i32 0
  store i64 17, ptr %tag.gep1512, align 8
  %pay.gep1513 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1511, i32 0, i32 1
  %var.load1514 = load ptr, ptr %var.new_target, align 8
  %var.load1515 = load ptr, ptr %var.new_key, align 8
  %var.load1516 = load ptr, ptr %var.ka, align 8
  %fld.gep1517 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1516, i32 0, i32 2
  %fld.load1518 = load i1, ptr %fld.gep1517, align 1
  %var.load1519 = load ptr, ptr %var.ka, align 8
  %fld.gep1520 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1519, i32 0, i32 3
  %fld.load1521 = load i1, ptr %fld.gep1520, align 1
  %var.load1522 = load ptr, ptr %var.ka, align 8
  %fld.gep1523 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1522, i32 0, i32 4
  %fld.load1524 = load i64, ptr %fld.gep1523, align 8
  %var.load1525 = load ptr, ptr %var.ka, align 8
  %fld.gep1526 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1525, i32 0, i32 5
  %fld.load1527 = load i64, ptr %fld.gep1526, align 8
  %arena.cur1528 = call ptr @dva_arena_current()
  %rec.alloc1529 = call ptr @dva_arena_alloc(ptr %arena.cur1528, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1530 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 0
  store ptr %var.load1514, ptr %rec.fld1530, align 8
  %rec.fld1531 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 1
  store ptr %var.load1515, ptr %rec.fld1531, align 8
  %rec.fld1532 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 2
  store i1 %fld.load1518, ptr %rec.fld1532, align 1
  %rec.fld1533 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 3
  store i1 %fld.load1521, ptr %rec.fld1533, align 1
  %rec.fld1534 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 4
  store i64 %fld.load1524, ptr %rec.fld1534, align 8
  %rec.fld1535 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1529, i32 0, i32 5
  store i64 %fld.load1527, ptr %rec.fld1535, align 8
  store ptr %rec.alloc1529, ptr %pay.gep1513, align 8
  br label %choice.exit

choice.case1536:                                  ; preds = %choice.next1465
  %pay.gep1541 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1542 = load ptr, ptr %pay.gep1541, align 8
  store ptr %payload.ptr1542, ptr %var._1543, align 8
  store ptr %payload.ptr1542, ptr %var.cy, align 8
  %var.load1544 = load ptr, ptr %var.cy, align 8
  %fld.gep1545 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1544, i32 0, i32 0
  %fld.load1546 = load ptr, ptr %fld.gep1545, align 8
  %var.load1547 = load ptr, ptr %var.table, align 8
  %var.load1548 = load ptr, ptr %var.locals, align 8
  %a.load1549 = load ptr, ptr %var.locals, align 8
  %a.null1550 = icmp eq ptr %a.load1549, null
  br i1 %a.null1550, label %a.create1551, label %a.after1552

choice.next1537:                                  ; preds = %choice.next1465
  %tag.gep1602 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1603 = load i64, ptr %tag.gep1602, align 8
  %tag.match1604 = icmp eq i64 %tag.id1603, 11
  br i1 %tag.match1604, label %choice.case1600, label %choice.next1601

a.create1551:                                     ; preds = %choice.case1536
  %arena.cur1553 = call ptr @dva_arena_current()
  %a.create1554 = call ptr @dva_arena_alloc(ptr %arena.cur1553, i64 24)
  %arena.cur1555 = call ptr @dva_arena_current()
  %a.buf1556 = call ptr @dva_arena_alloc(ptr %arena.cur1555, i64 128)
  %a.len.gep1557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 0
  store i64 0, ptr %a.len.gep1557, align 8
  %a.data.gep1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 1
  store ptr %a.buf1556, ptr %a.data.gep1558, align 8
  %a.cap.gep1559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1559, align 8
  store ptr %a.create1554, ptr %var.locals, align 8
  br label %a.after1552

a.after1552:                                      ; preds = %a.create1551, %choice.case1536
  %a.load21560 = load ptr, ptr %var.locals, align 8
  %var.load1561 = load ptr, ptr %var.cur_mod, align 8
  %call.res1562 = call ptr @"overloads::walk"(ptr %fld.load1546, ptr %var.load1547, ptr %a.load21560, ptr %var.load1561)
  store ptr %call.res1562, ptr %var.new_iter, align 8
  %var.load1563 = load ptr, ptr %var.cy, align 8
  %fld.gep1564 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1563, i32 0, i32 1
  %fld.load1565 = load ptr, ptr %fld.gep1564, align 8
  %var.load1566 = load ptr, ptr %var.table, align 8
  %var.load1567 = load ptr, ptr %var.locals, align 8
  %a.load1568 = load ptr, ptr %var.locals, align 8
  %a.null1569 = icmp eq ptr %a.load1568, null
  br i1 %a.null1569, label %a.create1570, label %a.after1571

a.create1570:                                     ; preds = %a.after1552
  %arena.cur1572 = call ptr @dva_arena_current()
  %a.create1573 = call ptr @dva_arena_alloc(ptr %arena.cur1572, i64 24)
  %arena.cur1574 = call ptr @dva_arena_current()
  %a.buf1575 = call ptr @dva_arena_alloc(ptr %arena.cur1574, i64 128)
  %a.len.gep1576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 0
  store i64 0, ptr %a.len.gep1576, align 8
  %a.data.gep1577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 1
  store ptr %a.buf1575, ptr %a.data.gep1577, align 8
  %a.cap.gep1578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1578, align 8
  store ptr %a.create1573, ptr %var.locals, align 8
  br label %a.after1571

a.after1571:                                      ; preds = %a.create1570, %a.after1552
  %a.load21579 = load ptr, ptr %var.locals, align 8
  %var.load1580 = load ptr, ptr %var.cur_mod, align 8
  %call.res1581 = call ptr @"overloads::walk"(ptr %fld.load1565, ptr %var.load1566, ptr %a.load21579, ptr %var.load1580)
  store ptr %call.res1581, ptr %var.new_fn, align 8
  %arena.cur1582 = call ptr @dva_arena_current()
  %enum.alloc1583 = call ptr @dva_arena_alloc(ptr %arena.cur1582, i64 16)
  %tag.gep1584 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1583, i32 0, i32 0
  store i64 12, ptr %tag.gep1584, align 8
  %pay.gep1585 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1583, i32 0, i32 1
  %var.load1586 = load ptr, ptr %var.new_iter, align 8
  %var.load1587 = load ptr, ptr %var.new_fn, align 8
  %var.load1588 = load ptr, ptr %var.cy, align 8
  %fld.gep1589 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1588, i32 0, i32 2
  %fld.load1590 = load i1, ptr %fld.gep1589, align 1
  %var.load1591 = load ptr, ptr %var.cy, align 8
  %fld.gep1592 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1591, i32 0, i32 3
  %fld.load1593 = load i1, ptr %fld.gep1592, align 1
  %arena.cur1594 = call ptr @dva_arena_current()
  %rec.alloc1595 = call ptr @dva_arena_alloc(ptr %arena.cur1594, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1596 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1595, i32 0, i32 0
  store ptr %var.load1586, ptr %rec.fld1596, align 8
  %rec.fld1597 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1595, i32 0, i32 1
  store ptr %var.load1587, ptr %rec.fld1597, align 8
  %rec.fld1598 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1595, i32 0, i32 2
  store i1 %fld.load1590, ptr %rec.fld1598, align 1
  %rec.fld1599 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1595, i32 0, i32 3
  store i1 %fld.load1593, ptr %rec.fld1599, align 1
  store ptr %rec.alloc1595, ptr %pay.gep1585, align 8
  br label %choice.exit

choice.case1600:                                  ; preds = %choice.next1537
  %pay.gep1605 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1606 = load ptr, ptr %pay.gep1605, align 8
  store ptr %payload.ptr1606, ptr %var._1607, align 8
  store ptr %payload.ptr1606, ptr %var.ce, align 8
  %var.load1608 = load ptr, ptr %var.ce, align 8
  %fld.gep1609 = getelementptr inbounds { ptr, ptr }, ptr %var.load1608, i32 0, i32 0
  %fld.load1610 = load ptr, ptr %fld.gep1609, align 8
  %var.load1611 = load ptr, ptr %var.table, align 8
  %var.load1612 = load ptr, ptr %var.locals, align 8
  %a.load1613 = load ptr, ptr %var.locals, align 8
  %a.null1614 = icmp eq ptr %a.load1613, null
  br i1 %a.null1614, label %a.create1615, label %a.after1616

choice.next1601:                                  ; preds = %choice.next1537
  %tag.gep1658 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1659 = load i64, ptr %tag.gep1658, align 8
  %tag.match1660 = icmp eq i64 %tag.id1659, 13
  br i1 %tag.match1660, label %choice.case1656, label %choice.next1657

a.create1615:                                     ; preds = %choice.case1600
  %arena.cur1617 = call ptr @dva_arena_current()
  %a.create1618 = call ptr @dva_arena_alloc(ptr %arena.cur1617, i64 24)
  %arena.cur1619 = call ptr @dva_arena_current()
  %a.buf1620 = call ptr @dva_arena_alloc(ptr %arena.cur1619, i64 128)
  %a.len.gep1621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 0
  store i64 0, ptr %a.len.gep1621, align 8
  %a.data.gep1622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 1
  store ptr %a.buf1620, ptr %a.data.gep1622, align 8
  %a.cap.gep1623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1618, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1623, align 8
  store ptr %a.create1618, ptr %var.locals, align 8
  br label %a.after1616

a.after1616:                                      ; preds = %a.create1615, %choice.case1600
  %a.load21624 = load ptr, ptr %var.locals, align 8
  %var.load1625 = load ptr, ptr %var.cur_mod, align 8
  %call.res1626 = call ptr @"overloads::walk"(ptr %fld.load1610, ptr %var.load1611, ptr %a.load21624, ptr %var.load1625)
  store ptr %call.res1626, ptr %var.new_cy, align 8
  %var.load1627 = load ptr, ptr %var.ce, align 8
  %fld.gep1628 = getelementptr inbounds { ptr, ptr }, ptr %var.load1627, i32 0, i32 1
  %fld.load1629 = load ptr, ptr %fld.gep1628, align 8
  %var.load1630 = load ptr, ptr %var.table, align 8
  %var.load1631 = load ptr, ptr %var.locals, align 8
  %a.load1632 = load ptr, ptr %var.locals, align 8
  %a.null1633 = icmp eq ptr %a.load1632, null
  br i1 %a.null1633, label %a.create1634, label %a.after1635

a.create1634:                                     ; preds = %a.after1616
  %arena.cur1636 = call ptr @dva_arena_current()
  %a.create1637 = call ptr @dva_arena_alloc(ptr %arena.cur1636, i64 24)
  %arena.cur1638 = call ptr @dva_arena_current()
  %a.buf1639 = call ptr @dva_arena_alloc(ptr %arena.cur1638, i64 128)
  %a.len.gep1640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1637, i32 0, i32 0
  store i64 0, ptr %a.len.gep1640, align 8
  %a.data.gep1641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1637, i32 0, i32 1
  store ptr %a.buf1639, ptr %a.data.gep1641, align 8
  %a.cap.gep1642 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1637, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1642, align 8
  store ptr %a.create1637, ptr %var.locals, align 8
  br label %a.after1635

a.after1635:                                      ; preds = %a.create1634, %a.after1616
  %a.load21643 = load ptr, ptr %var.locals, align 8
  %var.load1644 = load ptr, ptr %var.cur_mod, align 8
  %call.res1645 = call ptr @"overloads::walk"(ptr %fld.load1629, ptr %var.load1630, ptr %a.load21643, ptr %var.load1644)
  store ptr %call.res1645, ptr %var.new_br, align 8
  %arena.cur1646 = call ptr @dva_arena_current()
  %enum.alloc1647 = call ptr @dva_arena_alloc(ptr %arena.cur1646, i64 16)
  %tag.gep1648 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1647, i32 0, i32 0
  store i64 11, ptr %tag.gep1648, align 8
  %pay.gep1649 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1647, i32 0, i32 1
  %var.load1650 = load ptr, ptr %var.new_cy, align 8
  %var.load1651 = load ptr, ptr %var.new_br, align 8
  %arena.cur1652 = call ptr @dva_arena_current()
  %rec.alloc1653 = call ptr @dva_arena_alloc(ptr %arena.cur1652, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1654 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1653, i32 0, i32 0
  store ptr %var.load1650, ptr %rec.fld1654, align 8
  %rec.fld1655 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1653, i32 0, i32 1
  store ptr %var.load1651, ptr %rec.fld1655, align 8
  store ptr %rec.alloc1653, ptr %pay.gep1649, align 8
  br label %choice.exit

choice.case1656:                                  ; preds = %choice.next1601
  %pay.gep1661 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1662 = load ptr, ptr %pay.gep1661, align 8
  store ptr %payload.ptr1662, ptr %var._1663, align 8
  store ptr %payload.ptr1662, ptr %var.r, align 8
  %var.load1664 = load ptr, ptr %var.r, align 8
  %fld.gep1665 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1664, i32 0, i32 0
  %fld.load1666 = load i1, ptr %fld.gep1665, align 1
  br i1 %fld.load1666, label %choice.then1667, label %choice.else1668

choice.next1657:                                  ; preds = %choice.next1601
  %tag.gep1748 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1749 = load i64, ptr %tag.gep1748, align 8
  %tag.match1750 = icmp eq i64 %tag.id1749, 36
  br i1 %tag.match1750, label %choice.case1746, label %choice.next1747

choice.then1667:                                  ; preds = %choice.case1656
  %var.load1670 = load ptr, ptr %var.r, align 8
  %fld.gep1671 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1670, i32 0, i32 2
  %fld.load1672 = load ptr, ptr %fld.gep1671, align 8
  %var.load1673 = load ptr, ptr %var.table, align 8
  %var.load1674 = load ptr, ptr %var.locals, align 8
  %a.load1675 = load ptr, ptr %var.locals, align 8
  %a.null1676 = icmp eq ptr %a.load1675, null
  br i1 %a.null1676, label %a.create1677, label %a.after1678

choice.else1668:                                  ; preds = %choice.case1656
  %var.load1689 = load ptr, ptr %var.r, align 8
  %fld.gep1690 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1689, i32 0, i32 2
  %fld.load1691 = load ptr, ptr %fld.gep1690, align 8
  br label %choice.exit1669

choice.exit1669:                                  ; preds = %choice.else1668, %a.after1678
  %choice.res1692 = phi ptr [ %call.res1688, %a.after1678 ], [ %fld.load1691, %choice.else1668 ]
  store ptr %choice.res1692, ptr %var.new_lhs1693, align 8
  %var.load1694 = load ptr, ptr %var.r, align 8
  %fld.gep1695 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1694, i32 0, i32 1
  %fld.load1696 = load i1, ptr %fld.gep1695, align 1
  br i1 %fld.load1696, label %choice.then1697, label %choice.else1698

a.create1677:                                     ; preds = %choice.then1667
  %arena.cur1679 = call ptr @dva_arena_current()
  %a.create1680 = call ptr @dva_arena_alloc(ptr %arena.cur1679, i64 24)
  %arena.cur1681 = call ptr @dva_arena_current()
  %a.buf1682 = call ptr @dva_arena_alloc(ptr %arena.cur1681, i64 128)
  %a.len.gep1683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 0
  store i64 0, ptr %a.len.gep1683, align 8
  %a.data.gep1684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 1
  store ptr %a.buf1682, ptr %a.data.gep1684, align 8
  %a.cap.gep1685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1680, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1685, align 8
  store ptr %a.create1680, ptr %var.locals, align 8
  br label %a.after1678

a.after1678:                                      ; preds = %a.create1677, %choice.then1667
  %a.load21686 = load ptr, ptr %var.locals, align 8
  %var.load1687 = load ptr, ptr %var.cur_mod, align 8
  %call.res1688 = call ptr @"overloads::walk"(ptr %fld.load1672, ptr %var.load1673, ptr %a.load21686, ptr %var.load1687)
  br label %choice.exit1669

choice.then1697:                                  ; preds = %choice.exit1669
  %var.load1700 = load ptr, ptr %var.r, align 8
  %fld.gep1701 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1700, i32 0, i32 3
  %fld.load1702 = load ptr, ptr %fld.gep1701, align 8
  %var.load1703 = load ptr, ptr %var.table, align 8
  %var.load1704 = load ptr, ptr %var.locals, align 8
  %a.load1705 = load ptr, ptr %var.locals, align 8
  %a.null1706 = icmp eq ptr %a.load1705, null
  br i1 %a.null1706, label %a.create1707, label %a.after1708

choice.else1698:                                  ; preds = %choice.exit1669
  %var.load1719 = load ptr, ptr %var.r, align 8
  %fld.gep1720 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1719, i32 0, i32 3
  %fld.load1721 = load ptr, ptr %fld.gep1720, align 8
  br label %choice.exit1699

choice.exit1699:                                  ; preds = %choice.else1698, %a.after1708
  %choice.res1722 = phi ptr [ %call.res1718, %a.after1708 ], [ %fld.load1721, %choice.else1698 ]
  store ptr %choice.res1722, ptr %var.new_rhs1723, align 8
  %arena.cur1724 = call ptr @dva_arena_current()
  %enum.alloc1725 = call ptr @dva_arena_alloc(ptr %arena.cur1724, i64 16)
  %tag.gep1726 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1725, i32 0, i32 0
  store i64 13, ptr %tag.gep1726, align 8
  %pay.gep1727 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1725, i32 0, i32 1
  %var.load1728 = load ptr, ptr %var.r, align 8
  %fld.gep1729 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1728, i32 0, i32 0
  %fld.load1730 = load i1, ptr %fld.gep1729, align 1
  %var.load1731 = load ptr, ptr %var.r, align 8
  %fld.gep1732 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1731, i32 0, i32 1
  %fld.load1733 = load i1, ptr %fld.gep1732, align 1
  %var.load1734 = load ptr, ptr %var.new_lhs1693, align 8
  %var.load1735 = load ptr, ptr %var.new_rhs1723, align 8
  %var.load1736 = load ptr, ptr %var.r, align 8
  %fld.gep1737 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1736, i32 0, i32 4
  %fld.load1738 = load i1, ptr %fld.gep1737, align 1
  %arena.cur1739 = call ptr @dva_arena_current()
  %rec.alloc1740 = call ptr @dva_arena_alloc(ptr %arena.cur1739, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1741 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1740, i32 0, i32 0
  store i1 %fld.load1730, ptr %rec.fld1741, align 1
  %rec.fld1742 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1740, i32 0, i32 1
  store i1 %fld.load1733, ptr %rec.fld1742, align 1
  %rec.fld1743 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1740, i32 0, i32 2
  store ptr %var.load1734, ptr %rec.fld1743, align 8
  %rec.fld1744 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1740, i32 0, i32 3
  store ptr %var.load1735, ptr %rec.fld1744, align 8
  %rec.fld1745 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1740, i32 0, i32 4
  store i1 %fld.load1738, ptr %rec.fld1745, align 1
  store ptr %rec.alloc1740, ptr %pay.gep1727, align 8
  br label %choice.exit

a.create1707:                                     ; preds = %choice.then1697
  %arena.cur1709 = call ptr @dva_arena_current()
  %a.create1710 = call ptr @dva_arena_alloc(ptr %arena.cur1709, i64 24)
  %arena.cur1711 = call ptr @dva_arena_current()
  %a.buf1712 = call ptr @dva_arena_alloc(ptr %arena.cur1711, i64 128)
  %a.len.gep1713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1710, i32 0, i32 0
  store i64 0, ptr %a.len.gep1713, align 8
  %a.data.gep1714 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1710, i32 0, i32 1
  store ptr %a.buf1712, ptr %a.data.gep1714, align 8
  %a.cap.gep1715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1710, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1715, align 8
  store ptr %a.create1710, ptr %var.locals, align 8
  br label %a.after1708

a.after1708:                                      ; preds = %a.create1707, %choice.then1697
  %a.load21716 = load ptr, ptr %var.locals, align 8
  %var.load1717 = load ptr, ptr %var.cur_mod, align 8
  %call.res1718 = call ptr @"overloads::walk"(ptr %fld.load1702, ptr %var.load1703, ptr %a.load21716, ptr %var.load1717)
  br label %choice.exit1699

choice.case1746:                                  ; preds = %choice.next1657
  %pay.gep1751 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1752 = load ptr, ptr %pay.gep1751, align 8
  store ptr %payload.ptr1752, ptr %var._1753, align 8
  store ptr %payload.ptr1752, ptr %var.na, align 8
  %var.load1754 = load ptr, ptr %var.na, align 8
  %fld.gep1755 = getelementptr inbounds { ptr, ptr }, ptr %var.load1754, i32 0, i32 1
  %fld.load1756 = load ptr, ptr %fld.gep1755, align 8
  %var.load1757 = load ptr, ptr %var.table, align 8
  %var.load1758 = load ptr, ptr %var.locals, align 8
  %a.load1759 = load ptr, ptr %var.locals, align 8
  %a.null1760 = icmp eq ptr %a.load1759, null
  br i1 %a.null1760, label %a.create1761, label %a.after1762

choice.next1747:                                  ; preds = %choice.next1657
  %tag.gep1788 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1789 = load i64, ptr %tag.gep1788, align 8
  %tag.match1790 = icmp eq i64 %tag.id1789, 18
  br i1 %tag.match1790, label %choice.case1786, label %choice.next1787

a.create1761:                                     ; preds = %choice.case1746
  %arena.cur1763 = call ptr @dva_arena_current()
  %a.create1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 24)
  %arena.cur1765 = call ptr @dva_arena_current()
  %a.buf1766 = call ptr @dva_arena_alloc(ptr %arena.cur1765, i64 128)
  %a.len.gep1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 0
  store i64 0, ptr %a.len.gep1767, align 8
  %a.data.gep1768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 1
  store ptr %a.buf1766, ptr %a.data.gep1768, align 8
  %a.cap.gep1769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1769, align 8
  store ptr %a.create1764, ptr %var.locals, align 8
  br label %a.after1762

a.after1762:                                      ; preds = %a.create1761, %choice.case1746
  %a.load21770 = load ptr, ptr %var.locals, align 8
  %var.load1771 = load ptr, ptr %var.cur_mod, align 8
  %call.res1772 = call ptr @"overloads::walk"(ptr %fld.load1756, ptr %var.load1757, ptr %a.load21770, ptr %var.load1771)
  store ptr %call.res1772, ptr %var.new_val1773, align 8
  %arena.cur1774 = call ptr @dva_arena_current()
  %enum.alloc1775 = call ptr @dva_arena_alloc(ptr %arena.cur1774, i64 16)
  %tag.gep1776 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1775, i32 0, i32 0
  store i64 36, ptr %tag.gep1776, align 8
  %pay.gep1777 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1775, i32 0, i32 1
  %var.load1778 = load ptr, ptr %var.na, align 8
  %fld.gep1779 = getelementptr inbounds { ptr, ptr }, ptr %var.load1778, i32 0, i32 0
  %fld.load1780 = load ptr, ptr %fld.gep1779, align 8
  %var.load1781 = load ptr, ptr %var.new_val1773, align 8
  %arena.cur1782 = call ptr @dva_arena_current()
  %rec.alloc1783 = call ptr @dva_arena_alloc(ptr %arena.cur1782, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1784 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1783, i32 0, i32 0
  store ptr %fld.load1780, ptr %rec.fld1784, align 8
  %rec.fld1785 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1783, i32 0, i32 1
  store ptr %var.load1781, ptr %rec.fld1785, align 8
  store ptr %rec.alloc1783, ptr %pay.gep1777, align 8
  br label %choice.exit

choice.case1786:                                  ; preds = %choice.next1747
  %pay.gep1791 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1792 = load ptr, ptr %pay.gep1791, align 8
  store ptr %payload.ptr1792, ptr %var._1793, align 8
  store ptr %payload.ptr1792, ptr %var.v1794, align 8
  %var.load1795 = load ptr, ptr %var.v1794, align 8
  %fld.gep1796 = getelementptr inbounds { ptr, ptr }, ptr %var.load1795, i32 0, i32 1
  %fld.load1797 = load ptr, ptr %fld.gep1796, align 8
  %var.load1798 = load ptr, ptr %var.table, align 8
  %var.load1799 = load ptr, ptr %var.locals, align 8
  %a.load1800 = load ptr, ptr %var.locals, align 8
  %a.null1801 = icmp eq ptr %a.load1800, null
  br i1 %a.null1801, label %a.create1802, label %a.after1803

choice.next1787:                                  ; preds = %choice.next1747
  %tag.gep1840 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1841 = load i64, ptr %tag.gep1840, align 8
  %tag.match1842 = icmp eq i64 %tag.id1841, 22
  br i1 %tag.match1842, label %choice.case1838, label %choice.next1839

a.create1802:                                     ; preds = %choice.case1786
  %arena.cur1804 = call ptr @dva_arena_current()
  %a.create1805 = call ptr @dva_arena_alloc(ptr %arena.cur1804, i64 24)
  %arena.cur1806 = call ptr @dva_arena_current()
  %a.buf1807 = call ptr @dva_arena_alloc(ptr %arena.cur1806, i64 128)
  %a.len.gep1808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1805, i32 0, i32 0
  store i64 0, ptr %a.len.gep1808, align 8
  %a.data.gep1809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1805, i32 0, i32 1
  store ptr %a.buf1807, ptr %a.data.gep1809, align 8
  %a.cap.gep1810 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1805, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1810, align 8
  store ptr %a.create1805, ptr %var.locals, align 8
  br label %a.after1803

a.after1803:                                      ; preds = %a.create1802, %choice.case1786
  %a.load21811 = load ptr, ptr %var.locals, align 8
  %var.load1812 = load ptr, ptr %var.cur_mod, align 8
  %call.res1813 = call ptr @"overloads::walk_many"(ptr %fld.load1797, ptr %var.load1798, ptr %a.load21811, ptr %var.load1812)
  store ptr %call.res1813, ptr %var.new_args, align 8
  %arena.cur1814 = call ptr @dva_arena_current()
  %enum.alloc1815 = call ptr @dva_arena_alloc(ptr %arena.cur1814, i64 16)
  %tag.gep1816 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1815, i32 0, i32 0
  store i64 18, ptr %tag.gep1816, align 8
  %pay.gep1817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1815, i32 0, i32 1
  %var.load1818 = load ptr, ptr %var.v1794, align 8
  %fld.gep1819 = getelementptr inbounds { ptr, ptr }, ptr %var.load1818, i32 0, i32 0
  %fld.load1820 = load ptr, ptr %fld.gep1819, align 8
  %var.load1821 = load ptr, ptr %var.new_args, align 8
  %a.load1822 = load ptr, ptr %var.new_args, align 8
  %a.null1823 = icmp eq ptr %a.load1822, null
  br i1 %a.null1823, label %a.create1824, label %a.after1825

a.create1824:                                     ; preds = %a.after1803
  %arena.cur1826 = call ptr @dva_arena_current()
  %a.create1827 = call ptr @dva_arena_alloc(ptr %arena.cur1826, i64 24)
  %arena.cur1828 = call ptr @dva_arena_current()
  %a.buf1829 = call ptr @dva_arena_alloc(ptr %arena.cur1828, i64 128)
  %a.len.gep1830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1827, i32 0, i32 0
  store i64 0, ptr %a.len.gep1830, align 8
  %a.data.gep1831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1827, i32 0, i32 1
  store ptr %a.buf1829, ptr %a.data.gep1831, align 8
  %a.cap.gep1832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1827, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1832, align 8
  store ptr %a.create1827, ptr %var.new_args, align 8
  br label %a.after1825

a.after1825:                                      ; preds = %a.create1824, %a.after1803
  %a.load21833 = load ptr, ptr %var.new_args, align 8
  %arena.cur1834 = call ptr @dva_arena_current()
  %rec.alloc1835 = call ptr @dva_arena_alloc(ptr %arena.cur1834, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1836 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1835, i32 0, i32 0
  store ptr %fld.load1820, ptr %rec.fld1836, align 8
  %rec.fld1837 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1835, i32 0, i32 1
  store ptr %a.load21833, ptr %rec.fld1837, align 8
  store ptr %rec.alloc1835, ptr %pay.gep1817, align 8
  br label %choice.exit

choice.case1838:                                  ; preds = %choice.next1787
  %pay.gep1843 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1844 = load ptr, ptr %pay.gep1843, align 8
  store ptr %payload.ptr1844, ptr %var._1845, align 8
  store ptr %payload.ptr1844, ptr %var.tc, align 8
  %var.load1846 = load ptr, ptr %var.tc, align 8
  %fld.gep1847 = getelementptr inbounds { ptr, ptr }, ptr %var.load1846, i32 0, i32 1
  %fld.load1848 = load ptr, ptr %fld.gep1847, align 8
  %var.load1849 = load ptr, ptr %var.table, align 8
  %var.load1850 = load ptr, ptr %var.locals, align 8
  %a.load1851 = load ptr, ptr %var.locals, align 8
  %a.null1852 = icmp eq ptr %a.load1851, null
  br i1 %a.null1852, label %a.create1853, label %a.after1854

choice.next1839:                                  ; preds = %choice.next1787
  %tag.gep1879 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1880 = load i64, ptr %tag.gep1879, align 8
  %tag.match1881 = icmp eq i64 %tag.id1880, 31
  br i1 %tag.match1881, label %choice.case1877, label %choice.next1878

a.create1853:                                     ; preds = %choice.case1838
  %arena.cur1855 = call ptr @dva_arena_current()
  %a.create1856 = call ptr @dva_arena_alloc(ptr %arena.cur1855, i64 24)
  %arena.cur1857 = call ptr @dva_arena_current()
  %a.buf1858 = call ptr @dva_arena_alloc(ptr %arena.cur1857, i64 128)
  %a.len.gep1859 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1856, i32 0, i32 0
  store i64 0, ptr %a.len.gep1859, align 8
  %a.data.gep1860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1856, i32 0, i32 1
  store ptr %a.buf1858, ptr %a.data.gep1860, align 8
  %a.cap.gep1861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1856, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1861, align 8
  store ptr %a.create1856, ptr %var.locals, align 8
  br label %a.after1854

a.after1854:                                      ; preds = %a.create1853, %choice.case1838
  %a.load21862 = load ptr, ptr %var.locals, align 8
  %var.load1863 = load ptr, ptr %var.cur_mod, align 8
  %call.res1864 = call ptr @"overloads::walk"(ptr %fld.load1848, ptr %var.load1849, ptr %a.load21862, ptr %var.load1863)
  store ptr %call.res1864, ptr %var.new_expr, align 8
  %arena.cur1865 = call ptr @dva_arena_current()
  %enum.alloc1866 = call ptr @dva_arena_alloc(ptr %arena.cur1865, i64 16)
  %tag.gep1867 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1866, i32 0, i32 0
  store i64 22, ptr %tag.gep1867, align 8
  %pay.gep1868 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1866, i32 0, i32 1
  %var.load1869 = load ptr, ptr %var.tc, align 8
  %fld.gep1870 = getelementptr inbounds { ptr, ptr }, ptr %var.load1869, i32 0, i32 0
  %fld.load1871 = load ptr, ptr %fld.gep1870, align 8
  %var.load1872 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1873 = call ptr @dva_arena_current()
  %rec.alloc1874 = call ptr @dva_arena_alloc(ptr %arena.cur1873, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1875 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1874, i32 0, i32 0
  store ptr %fld.load1871, ptr %rec.fld1875, align 8
  %rec.fld1876 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1874, i32 0, i32 1
  store ptr %var.load1872, ptr %rec.fld1876, align 8
  store ptr %rec.alloc1874, ptr %pay.gep1868, align 8
  br label %choice.exit

choice.case1877:                                  ; preds = %choice.next1839
  %pay.gep1882 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1883 = load ptr, ptr %pay.gep1882, align 8
  store ptr %payload.ptr1883, ptr %var._1884, align 8
  store ptr %payload.ptr1883, ptr %var.sp, align 8
  %arena.cur1885 = call ptr @dva_arena_current()
  %enum.alloc1886 = call ptr @dva_arena_alloc(ptr %arena.cur1885, i64 16)
  %tag.gep1887 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1886, i32 0, i32 0
  store i64 31, ptr %tag.gep1887, align 8
  %pay.gep1888 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1886, i32 0, i32 1
  %var.load1889 = load ptr, ptr %var.sp, align 8
  %var.load1890 = load ptr, ptr %var.table, align 8
  %var.load1891 = load ptr, ptr %var.locals, align 8
  %a.load1892 = load ptr, ptr %var.locals, align 8
  %a.null1893 = icmp eq ptr %a.load1892, null
  br i1 %a.null1893, label %a.create1894, label %a.after1895

choice.next1878:                                  ; preds = %choice.next1839
  %tag.gep1908 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1909 = load i64, ptr %tag.gep1908, align 8
  %tag.match1910 = icmp eq i64 %tag.id1909, 32
  br i1 %tag.match1910, label %choice.case1906, label %choice.next1907

a.create1894:                                     ; preds = %choice.case1877
  %arena.cur1896 = call ptr @dva_arena_current()
  %a.create1897 = call ptr @dva_arena_alloc(ptr %arena.cur1896, i64 24)
  %arena.cur1898 = call ptr @dva_arena_current()
  %a.buf1899 = call ptr @dva_arena_alloc(ptr %arena.cur1898, i64 128)
  %a.len.gep1900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1897, i32 0, i32 0
  store i64 0, ptr %a.len.gep1900, align 8
  %a.data.gep1901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1897, i32 0, i32 1
  store ptr %a.buf1899, ptr %a.data.gep1901, align 8
  %a.cap.gep1902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1897, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1902, align 8
  store ptr %a.create1897, ptr %var.locals, align 8
  br label %a.after1895

a.after1895:                                      ; preds = %a.create1894, %choice.case1877
  %a.load21903 = load ptr, ptr %var.locals, align 8
  %var.load1904 = load ptr, ptr %var.cur_mod, align 8
  %call.res1905 = call ptr @"overloads::walk_call"(ptr %var.load1889, ptr %var.load1890, ptr %a.load21903, ptr %var.load1904)
  store ptr %call.res1905, ptr %pay.gep1888, align 8
  br label %choice.exit

choice.case1906:                                  ; preds = %choice.next1878
  %pay.gep1911 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1912 = load ptr, ptr %pay.gep1911, align 8
  store ptr %payload.ptr1912, ptr %var._1913, align 8
  store ptr %payload.ptr1912, ptr %var.jn, align 8
  %arena.cur1914 = call ptr @dva_arena_current()
  %enum.alloc1915 = call ptr @dva_arena_alloc(ptr %arena.cur1914, i64 16)
  %tag.gep1916 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1915, i32 0, i32 0
  store i64 32, ptr %tag.gep1916, align 8
  %pay.gep1917 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1915, i32 0, i32 1
  %var.load1918 = load ptr, ptr %var.jn, align 8
  %var.load1919 = load ptr, ptr %var.table, align 8
  %var.load1920 = load ptr, ptr %var.locals, align 8
  %a.load1921 = load ptr, ptr %var.locals, align 8
  %a.null1922 = icmp eq ptr %a.load1921, null
  br i1 %a.null1922, label %a.create1923, label %a.after1924

choice.next1907:                                  ; preds = %choice.next1878
  %tag.gep1937 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1938 = load i64, ptr %tag.gep1937, align 8
  %tag.match1939 = icmp eq i64 %tag.id1938, 33
  br i1 %tag.match1939, label %choice.case1935, label %choice.next1936

a.create1923:                                     ; preds = %choice.case1906
  %arena.cur1925 = call ptr @dva_arena_current()
  %a.create1926 = call ptr @dva_arena_alloc(ptr %arena.cur1925, i64 24)
  %arena.cur1927 = call ptr @dva_arena_current()
  %a.buf1928 = call ptr @dva_arena_alloc(ptr %arena.cur1927, i64 128)
  %a.len.gep1929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1926, i32 0, i32 0
  store i64 0, ptr %a.len.gep1929, align 8
  %a.data.gep1930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1926, i32 0, i32 1
  store ptr %a.buf1928, ptr %a.data.gep1930, align 8
  %a.cap.gep1931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1926, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1931, align 8
  store ptr %a.create1926, ptr %var.locals, align 8
  br label %a.after1924

a.after1924:                                      ; preds = %a.create1923, %choice.case1906
  %a.load21932 = load ptr, ptr %var.locals, align 8
  %var.load1933 = load ptr, ptr %var.cur_mod, align 8
  %call.res1934 = call ptr @"overloads::walk"(ptr %var.load1918, ptr %var.load1919, ptr %a.load21932, ptr %var.load1933)
  store ptr %call.res1934, ptr %pay.gep1917, align 8
  br label %choice.exit

choice.case1935:                                  ; preds = %choice.next1907
  %pay.gep1940 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1941 = load ptr, ptr %pay.gep1940, align 8
  store ptr %payload.ptr1941, ptr %var._1942, align 8
  store ptr %payload.ptr1941, ptr %var.ex, align 8
  %var.load1943 = load ptr, ptr %var.ex, align 8
  %var.load1944 = load ptr, ptr %var.table, align 8
  %var.load1945 = load ptr, ptr %var.locals, align 8
  %a.load1946 = load ptr, ptr %var.locals, align 8
  %a.null1947 = icmp eq ptr %a.load1946, null
  br i1 %a.null1947, label %a.create1948, label %a.after1949

choice.next1936:                                  ; preds = %choice.next1907
  %tag.gep1967 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1968 = load i64, ptr %tag.gep1967, align 8
  %tag.match1969 = icmp eq i64 %tag.id1968, 37
  br i1 %tag.match1969, label %choice.case1965, label %choice.next1966

a.create1948:                                     ; preds = %choice.case1935
  %arena.cur1950 = call ptr @dva_arena_current()
  %a.create1951 = call ptr @dva_arena_alloc(ptr %arena.cur1950, i64 24)
  %arena.cur1952 = call ptr @dva_arena_current()
  %a.buf1953 = call ptr @dva_arena_alloc(ptr %arena.cur1952, i64 128)
  %a.len.gep1954 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1951, i32 0, i32 0
  store i64 0, ptr %a.len.gep1954, align 8
  %a.data.gep1955 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1951, i32 0, i32 1
  store ptr %a.buf1953, ptr %a.data.gep1955, align 8
  %a.cap.gep1956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1951, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1956, align 8
  store ptr %a.create1951, ptr %var.locals, align 8
  br label %a.after1949

a.after1949:                                      ; preds = %a.create1948, %choice.case1935
  %a.load21957 = load ptr, ptr %var.locals, align 8
  %var.load1958 = load ptr, ptr %var.cur_mod, align 8
  %call.res1959 = call ptr @"overloads::walk"(ptr %var.load1943, ptr %var.load1944, ptr %a.load21957, ptr %var.load1958)
  store ptr %call.res1959, ptr %var.new_ex, align 8
  %arena.cur1960 = call ptr @dva_arena_current()
  %enum.alloc1961 = call ptr @dva_arena_alloc(ptr %arena.cur1960, i64 16)
  %tag.gep1962 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1961, i32 0, i32 0
  store i64 33, ptr %tag.gep1962, align 8
  %pay.gep1963 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1961, i32 0, i32 1
  %var.load1964 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1964, ptr %pay.gep1963, align 8
  br label %choice.exit

choice.case1965:                                  ; preds = %choice.next1936
  %pay.gep1970 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1971 = load ptr, ptr %pay.gep1970, align 8
  store ptr %payload.ptr1971, ptr %var._1972, align 8
  store ptr %payload.ptr1971, ptr %var.r1973, align 8
  %var.load1974 = load ptr, ptr %var.r1973, align 8
  %fld.gep1975 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1974, i32 0, i32 0
  %fld.load1976 = load i1, ptr %fld.gep1975, align 1
  br i1 %fld.load1976, label %choice.then1977, label %choice.else1978

choice.next1966:                                  ; preds = %choice.next1936
  %tag.gep2026 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2027 = load i64, ptr %tag.gep2026, align 8
  %tag.match2028 = icmp eq i64 %tag.id2027, 28
  br i1 %tag.match2028, label %choice.case2024, label %choice.next2025

choice.then1977:                                  ; preds = %choice.case1965
  %var.load1980 = load ptr, ptr %var.r1973, align 8
  %fld.gep1981 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1980, i32 0, i32 1
  %fld.load1982 = load ptr, ptr %fld.gep1981, align 8
  %var.load1983 = load ptr, ptr %var.table, align 8
  %var.load1984 = load ptr, ptr %var.locals, align 8
  %a.load1985 = load ptr, ptr %var.locals, align 8
  %a.null1986 = icmp eq ptr %a.load1985, null
  br i1 %a.null1986, label %a.create1987, label %a.after1988

choice.else1978:                                  ; preds = %choice.case1965
  %var.load1999 = load ptr, ptr %var.r1973, align 8
  %fld.gep2000 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1999, i32 0, i32 1
  %fld.load2001 = load ptr, ptr %fld.gep2000, align 8
  br label %choice.exit1979

choice.exit1979:                                  ; preds = %choice.else1978, %a.after1988
  %choice.res2002 = phi ptr [ %call.res1998, %a.after1988 ], [ %fld.load2001, %choice.else1978 ]
  store ptr %choice.res2002, ptr %var.new_val2003, align 8
  %arena.cur2004 = call ptr @dva_arena_current()
  %enum.alloc2005 = call ptr @dva_arena_alloc(ptr %arena.cur2004, i64 16)
  %tag.gep2006 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2005, i32 0, i32 0
  store i64 37, ptr %tag.gep2006, align 8
  %pay.gep2007 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2005, i32 0, i32 1
  %var.load2008 = load ptr, ptr %var.r1973, align 8
  %fld.gep2009 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2008, i32 0, i32 0
  %fld.load2010 = load i1, ptr %fld.gep2009, align 1
  %var.load2011 = load ptr, ptr %var.new_val2003, align 8
  %var.load2012 = load ptr, ptr %var.r1973, align 8
  %fld.gep2013 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2012, i32 0, i32 2
  %fld.load2014 = load i64, ptr %fld.gep2013, align 8
  %var.load2015 = load ptr, ptr %var.r1973, align 8
  %fld.gep2016 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2015, i32 0, i32 3
  %fld.load2017 = load i64, ptr %fld.gep2016, align 8
  %arena.cur2018 = call ptr @dva_arena_current()
  %rec.alloc2019 = call ptr @dva_arena_alloc(ptr %arena.cur2018, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2020 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2019, i32 0, i32 0
  store i1 %fld.load2010, ptr %rec.fld2020, align 1
  %rec.fld2021 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2019, i32 0, i32 1
  store ptr %var.load2011, ptr %rec.fld2021, align 8
  %rec.fld2022 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2019, i32 0, i32 2
  store i64 %fld.load2014, ptr %rec.fld2022, align 8
  %rec.fld2023 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2019, i32 0, i32 3
  store i64 %fld.load2017, ptr %rec.fld2023, align 8
  store ptr %rec.alloc2019, ptr %pay.gep2007, align 8
  br label %choice.exit

a.create1987:                                     ; preds = %choice.then1977
  %arena.cur1989 = call ptr @dva_arena_current()
  %a.create1990 = call ptr @dva_arena_alloc(ptr %arena.cur1989, i64 24)
  %arena.cur1991 = call ptr @dva_arena_current()
  %a.buf1992 = call ptr @dva_arena_alloc(ptr %arena.cur1991, i64 128)
  %a.len.gep1993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1990, i32 0, i32 0
  store i64 0, ptr %a.len.gep1993, align 8
  %a.data.gep1994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1990, i32 0, i32 1
  store ptr %a.buf1992, ptr %a.data.gep1994, align 8
  %a.cap.gep1995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1990, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1995, align 8
  store ptr %a.create1990, ptr %var.locals, align 8
  br label %a.after1988

a.after1988:                                      ; preds = %a.create1987, %choice.then1977
  %a.load21996 = load ptr, ptr %var.locals, align 8
  %var.load1997 = load ptr, ptr %var.cur_mod, align 8
  %call.res1998 = call ptr @"overloads::walk"(ptr %fld.load1982, ptr %var.load1983, ptr %a.load21996, ptr %var.load1997)
  br label %choice.exit1979

choice.case2024:                                  ; preds = %choice.next1966
  %pay.gep2029 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2030 = load ptr, ptr %pay.gep2029, align 8
  store ptr %payload.ptr2030, ptr %var._2031, align 8
  store ptr %payload.ptr2030, ptr %var.ac, align 8
  %var.load2032 = load ptr, ptr %var.ac, align 8
  %fld.gep2033 = getelementptr inbounds { ptr, i64 }, ptr %var.load2032, i32 0, i32 0
  %fld.load2034 = load ptr, ptr %fld.gep2033, align 8
  %var.load2035 = load ptr, ptr %var.table, align 8
  %call.res2036 = call ptr @"overloads::keep_type"(ptr %fld.load2034, ptr %var.load2035)
  store ptr %call.res2036, ptr %var.new_elem, align 8
  %arena.cur2037 = call ptr @dva_arena_current()
  %enum.alloc2038 = call ptr @dva_arena_alloc(ptr %arena.cur2037, i64 16)
  %tag.gep2039 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2038, i32 0, i32 0
  store i64 28, ptr %tag.gep2039, align 8
  %pay.gep2040 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2038, i32 0, i32 1
  %var.load2041 = load ptr, ptr %var.new_elem, align 8
  %var.load2042 = load ptr, ptr %var.ac, align 8
  %fld.gep2043 = getelementptr inbounds { ptr, i64 }, ptr %var.load2042, i32 0, i32 1
  %fld.load2044 = load i64, ptr %fld.gep2043, align 8
  %arena.cur2045 = call ptr @dva_arena_current()
  %rec.alloc2046 = call ptr @dva_arena_alloc(ptr %arena.cur2045, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2047 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2046, i32 0, i32 0
  store ptr %var.load2041, ptr %rec.fld2047, align 8
  %rec.fld2048 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2046, i32 0, i32 1
  store i64 %fld.load2044, ptr %rec.fld2048, align 8
  store ptr %rec.alloc2046, ptr %pay.gep2040, align 8
  br label %choice.exit

choice.next2025:                                  ; preds = %choice.next1966
  %tag.gep2051 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2052 = load i64, ptr %tag.gep2051, align 8
  %tag.match2053 = icmp eq i64 %tag.id2052, 38
  br i1 %tag.match2053, label %choice.case2049, label %choice.next2050

choice.case2049:                                  ; preds = %choice.next2025
  %pay.gep2054 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2055 = load ptr, ptr %pay.gep2054, align 8
  store ptr %payload.ptr2055, ptr %var._2056, align 8
  store ptr %payload.ptr2055, ptr %var.ud, align 8
  %var.load2057 = load ptr, ptr %var.ud, align 8
  %fld.gep2058 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2057, i32 0, i32 1
  %fld.load2059 = load ptr, ptr %fld.gep2058, align 8
  %var.load2060 = load ptr, ptr %var.table, align 8
  %var.load2061 = load ptr, ptr %var.locals, align 8
  %a.load2062 = load ptr, ptr %var.locals, align 8
  %a.null2063 = icmp eq ptr %a.load2062, null
  br i1 %a.null2063, label %a.create2064, label %a.after2065

choice.next2050:                                  ; preds = %choice.next2025
  %tag.gep2098 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2099 = load i64, ptr %tag.gep2098, align 8
  %tag.match2100 = icmp eq i64 %tag.id2099, 19
  br i1 %tag.match2100, label %choice.case2096, label %choice.next2097

a.create2064:                                     ; preds = %choice.case2049
  %arena.cur2066 = call ptr @dva_arena_current()
  %a.create2067 = call ptr @dva_arena_alloc(ptr %arena.cur2066, i64 24)
  %arena.cur2068 = call ptr @dva_arena_current()
  %a.buf2069 = call ptr @dva_arena_alloc(ptr %arena.cur2068, i64 128)
  %a.len.gep2070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2067, i32 0, i32 0
  store i64 0, ptr %a.len.gep2070, align 8
  %a.data.gep2071 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2067, i32 0, i32 1
  store ptr %a.buf2069, ptr %a.data.gep2071, align 8
  %a.cap.gep2072 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2067, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2072, align 8
  store ptr %a.create2067, ptr %var.locals, align 8
  br label %a.after2065

a.after2065:                                      ; preds = %a.create2064, %choice.case2049
  %a.load22073 = load ptr, ptr %var.locals, align 8
  %var.load2074 = load ptr, ptr %var.cur_mod, align 8
  %call.res2075 = call ptr @"overloads::walk"(ptr %fld.load2059, ptr %var.load2060, ptr %a.load22073, ptr %var.load2074)
  store ptr %call.res2075, ptr %var.new_msg, align 8
  %arena.cur2076 = call ptr @dva_arena_current()
  %enum.alloc2077 = call ptr @dva_arena_alloc(ptr %arena.cur2076, i64 16)
  %tag.gep2078 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2077, i32 0, i32 0
  store i64 38, ptr %tag.gep2078, align 8
  %pay.gep2079 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2077, i32 0, i32 1
  %var.load2080 = load ptr, ptr %var.ud, align 8
  %fld.gep2081 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2080, i32 0, i32 0
  %fld.load2082 = load i1, ptr %fld.gep2081, align 1
  %var.load2083 = load ptr, ptr %var.new_msg, align 8
  %var.load2084 = load ptr, ptr %var.ud, align 8
  %fld.gep2085 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2084, i32 0, i32 2
  %fld.load2086 = load i64, ptr %fld.gep2085, align 8
  %var.load2087 = load ptr, ptr %var.ud, align 8
  %fld.gep2088 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2087, i32 0, i32 3
  %fld.load2089 = load i64, ptr %fld.gep2088, align 8
  %arena.cur2090 = call ptr @dva_arena_current()
  %rec.alloc2091 = call ptr @dva_arena_alloc(ptr %arena.cur2090, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2092 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2091, i32 0, i32 0
  store i1 %fld.load2082, ptr %rec.fld2092, align 1
  %rec.fld2093 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2091, i32 0, i32 1
  store ptr %var.load2083, ptr %rec.fld2093, align 8
  %rec.fld2094 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2091, i32 0, i32 2
  store i64 %fld.load2086, ptr %rec.fld2094, align 8
  %rec.fld2095 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2091, i32 0, i32 3
  store i64 %fld.load2089, ptr %rec.fld2095, align 8
  store ptr %rec.alloc2091, ptr %pay.gep2079, align 8
  br label %choice.exit

choice.case2096:                                  ; preds = %choice.next2050
  %pay.gep2101 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2102 = load ptr, ptr %pay.gep2101, align 8
  store ptr %payload.ptr2102, ptr %var._2103, align 8
  store ptr %payload.ptr2102, ptr %var.rm, align 8
  %var.load2104 = load ptr, ptr %var.rm, align 8
  %fld.gep2105 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2104, i32 0, i32 0
  %fld.load2106 = load ptr, ptr %fld.gep2105, align 8
  %var.load2107 = load ptr, ptr %var.table, align 8
  %var.load2108 = load ptr, ptr %var.locals, align 8
  %a.load2109 = load ptr, ptr %var.locals, align 8
  %a.null2110 = icmp eq ptr %a.load2109, null
  br i1 %a.null2110, label %a.create2111, label %a.after2112

choice.next2097:                                  ; preds = %choice.next2050
  %tag.gep2141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2142 = load i64, ptr %tag.gep2141, align 8
  %tag.match2143 = icmp eq i64 %tag.id2142, 26
  br i1 %tag.match2143, label %choice.case2139, label %choice.next2140

a.create2111:                                     ; preds = %choice.case2096
  %arena.cur2113 = call ptr @dva_arena_current()
  %a.create2114 = call ptr @dva_arena_alloc(ptr %arena.cur2113, i64 24)
  %arena.cur2115 = call ptr @dva_arena_current()
  %a.buf2116 = call ptr @dva_arena_alloc(ptr %arena.cur2115, i64 128)
  %a.len.gep2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2114, i32 0, i32 0
  store i64 0, ptr %a.len.gep2117, align 8
  %a.data.gep2118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2114, i32 0, i32 1
  store ptr %a.buf2116, ptr %a.data.gep2118, align 8
  %a.cap.gep2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2119, align 8
  store ptr %a.create2114, ptr %var.locals, align 8
  br label %a.after2112

a.after2112:                                      ; preds = %a.create2111, %choice.case2096
  %a.load22120 = load ptr, ptr %var.locals, align 8
  %var.load2121 = load ptr, ptr %var.cur_mod, align 8
  %call.res2122 = call ptr @"overloads::walk"(ptr %fld.load2106, ptr %var.load2107, ptr %a.load22120, ptr %var.load2121)
  store ptr %call.res2122, ptr %var.new_addr, align 8
  %arena.cur2123 = call ptr @dva_arena_current()
  %enum.alloc2124 = call ptr @dva_arena_alloc(ptr %arena.cur2123, i64 16)
  %tag.gep2125 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2124, i32 0, i32 0
  store i64 19, ptr %tag.gep2125, align 8
  %pay.gep2126 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2124, i32 0, i32 1
  %var.load2127 = load ptr, ptr %var.new_addr, align 8
  %var.load2128 = load ptr, ptr %var.rm, align 8
  %fld.gep2129 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2128, i32 0, i32 1
  %fld.load2130 = load ptr, ptr %fld.gep2129, align 8
  %var.load2131 = load ptr, ptr %var.rm, align 8
  %fld.gep2132 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2131, i32 0, i32 2
  %fld.load2133 = load ptr, ptr %fld.gep2132, align 8
  %arena.cur2134 = call ptr @dva_arena_current()
  %rec.alloc2135 = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2136 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2135, i32 0, i32 0
  store ptr %var.load2127, ptr %rec.fld2136, align 8
  %rec.fld2137 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2135, i32 0, i32 1
  store ptr %fld.load2130, ptr %rec.fld2137, align 8
  %rec.fld2138 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2135, i32 0, i32 2
  store ptr %fld.load2133, ptr %rec.fld2138, align 8
  store ptr %rec.alloc2135, ptr %pay.gep2126, align 8
  br label %choice.exit

choice.case2139:                                  ; preds = %choice.next2097
  %pay.gep2144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2145 = load ptr, ptr %pay.gep2144, align 8
  store ptr %payload.ptr2145, ptr %var._2146, align 8
  store ptr %payload.ptr2145, ptr %var.so, align 8
  %var.load2147 = load ptr, ptr %var.so, align 8
  %fld.gep2148 = getelementptr inbounds { ptr, ptr }, ptr %var.load2147, i32 0, i32 1
  %fld.load2149 = load ptr, ptr %fld.gep2148, align 8
  %var.load2150 = load ptr, ptr %var.table, align 8
  %call.res2151 = call ptr @"overloads::keep_type"(ptr %fld.load2149, ptr %var.load2150)
  store ptr %call.res2151, ptr %var.new_sti, align 8
  %arena.cur2152 = call ptr @dva_arena_current()
  %enum.alloc2153 = call ptr @dva_arena_alloc(ptr %arena.cur2152, i64 16)
  %tag.gep2154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2153, i32 0, i32 0
  store i64 26, ptr %tag.gep2154, align 8
  %pay.gep2155 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2153, i32 0, i32 1
  %var.load2156 = load ptr, ptr %var.so, align 8
  %fld.gep2157 = getelementptr inbounds { ptr, ptr }, ptr %var.load2156, i32 0, i32 0
  %fld.load2158 = load ptr, ptr %fld.gep2157, align 8
  %var.load2159 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2160 = call ptr @dva_arena_current()
  %rec.alloc2161 = call ptr @dva_arena_alloc(ptr %arena.cur2160, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2162 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2161, i32 0, i32 0
  store ptr %fld.load2158, ptr %rec.fld2162, align 8
  %rec.fld2163 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2161, i32 0, i32 1
  store ptr %var.load2159, ptr %rec.fld2163, align 8
  store ptr %rec.alloc2161, ptr %pay.gep2155, align 8
  br label %choice.exit

choice.next2140:                                  ; preds = %choice.next2097
  %tag.gep2166 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2167 = load i64, ptr %tag.gep2166, align 8
  %tag.match2168 = icmp eq i64 %tag.id2167, 29
  br i1 %tag.match2168, label %choice.case2164, label %choice.next2165

choice.case2164:                                  ; preds = %choice.next2140
  %pay.gep2169 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2170 = load ptr, ptr %pay.gep2169, align 8
  store ptr %payload.ptr2170, ptr %var._2171, align 8
  store ptr %payload.ptr2170, ptr %var.ml, align 8
  %arena.cur2172 = call ptr @dva_arena_current()
  %a.new2173 = call ptr @dva_arena_alloc(ptr %arena.cur2172, i64 24)
  %arena.cur2174 = call ptr @dva_arena_current()
  %a.buf2175 = call ptr @dva_arena_alloc(ptr %arena.cur2174, i64 128)
  %a.len.gep2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2173, i32 0, i32 0
  store i64 0, ptr %a.len.gep2176, align 8
  %a.data.gep2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2173, i32 0, i32 1
  store ptr %a.buf2175, ptr %a.data.gep2177, align 8
  %a.cap.gep2178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2173, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2178, align 8
  store ptr %a.new2173, ptr %var.new_pairs, align 8
  %var.load2179 = load ptr, ptr %var.ml, align 8
  %a.load2180 = load ptr, ptr %var.ml, align 8
  %a.null2181 = icmp eq ptr %a.load2180, null
  br i1 %a.null2181, label %a.create2182, label %a.after2183

choice.next2165:                                  ; preds = %choice.next2140
  %tag.gep2298 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2299 = load i64, ptr %tag.gep2298, align 8
  %tag.match2300 = icmp eq i64 %tag.id2299, 30
  br i1 %tag.match2300, label %choice.case2296, label %choice.next2297

a.create2182:                                     ; preds = %choice.case2164
  %arena.cur2184 = call ptr @dva_arena_current()
  %a.create2185 = call ptr @dva_arena_alloc(ptr %arena.cur2184, i64 24)
  %arena.cur2186 = call ptr @dva_arena_current()
  %a.buf2187 = call ptr @dva_arena_alloc(ptr %arena.cur2186, i64 128)
  %a.len.gep2188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2185, i32 0, i32 0
  store i64 0, ptr %a.len.gep2188, align 8
  %a.data.gep2189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2185, i32 0, i32 1
  store ptr %a.buf2187, ptr %a.data.gep2189, align 8
  %a.cap.gep2190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2185, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2190, align 8
  store ptr %a.create2185, ptr %var.ml, align 8
  br label %a.after2183

a.after2183:                                      ; preds = %a.create2182, %choice.case2164
  %a.load22191 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22191, i32 0, i32 0
  %arr.cycle.len2193 = load i64, ptr %arr.cycle.len2192, align 8
  %arr.cycle.data2194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22191, i32 0, i32 1
  %arr.cycle.data2195 = load ptr, ptr %arr.cycle.data2194, align 8
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u2197 = load ptr, ptr %var._2171, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after2183
  %counter.load2198 = load i64, ptr %loop.idx.86, align 8
  %loop.cond2199 = icmp slt i64 %counter.load2198, %arr.cycle.len2193
  br i1 %loop.cond2199, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i2200 = sub i64 %counter.load2198, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep2201 = getelementptr i64, ptr %arr.cycle.data2195, i64 %counter.load2198
  %arr.elem.raw2202 = load i64, ptr %arr.elem.gep2201, align 8
  %slot.i2p2203 = inttoptr i64 %arr.elem.raw2202 to ptr
  store i64 %loop.rel.i2200, ptr %var._i2204, align 8
  store ptr %slot.i2p2203, ptr %var._2205, align 8
  store ptr %slot.i2p2203, ptr %var.p2196, align 8
  %var.load2206 = load ptr, ptr %var.p2196, align 8
  %fld.gep2207 = getelementptr inbounds { ptr, ptr }, ptr %var.load2206, i32 0, i32 0
  %fld.load2208 = load ptr, ptr %fld.gep2207, align 8
  %var.load2209 = load ptr, ptr %var.table, align 8
  %var.load2210 = load ptr, ptr %var.locals, align 8
  %a.load2211 = load ptr, ptr %var.locals, align 8
  %a.null2212 = icmp eq ptr %a.load2211, null
  br i1 %a.null2212, label %a.create2213, label %a.after2214

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store2263
  %step.val2277 = load i64, ptr %loop.step.86, align 8
  %loop.next2278 = add i64 %counter.load2198, %step.val2277
  store i64 %loop.next2278, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  store ptr %cycle.prev.u2197, ptr %var._2171, align 8
  %arena.cur2279 = call ptr @dva_arena_current()
  %enum.alloc2280 = call ptr @dva_arena_alloc(ptr %arena.cur2279, i64 16)
  %tag.gep2281 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2280, i32 0, i32 0
  store i64 29, ptr %tag.gep2281, align 8
  %pay.gep2282 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2280, i32 0, i32 1
  %var.load2283 = load ptr, ptr %var.new_pairs, align 8
  %a.load2284 = load ptr, ptr %var.new_pairs, align 8
  %a.null2285 = icmp eq ptr %a.load2284, null
  br i1 %a.null2285, label %a.create2286, label %a.after2287

a.create2213:                                     ; preds = %loop.body.86
  %arena.cur2215 = call ptr @dva_arena_current()
  %a.create2216 = call ptr @dva_arena_alloc(ptr %arena.cur2215, i64 24)
  %arena.cur2217 = call ptr @dva_arena_current()
  %a.buf2218 = call ptr @dva_arena_alloc(ptr %arena.cur2217, i64 128)
  %a.len.gep2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2216, i32 0, i32 0
  store i64 0, ptr %a.len.gep2219, align 8
  %a.data.gep2220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2216, i32 0, i32 1
  store ptr %a.buf2218, ptr %a.data.gep2220, align 8
  %a.cap.gep2221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2216, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2221, align 8
  store ptr %a.create2216, ptr %var.locals, align 8
  br label %a.after2214

a.after2214:                                      ; preds = %a.create2213, %loop.body.86
  %a.load22222 = load ptr, ptr %var.locals, align 8
  %var.load2223 = load ptr, ptr %var.cur_mod, align 8
  %call.res2224 = call ptr @"overloads::walk"(ptr %fld.load2208, ptr %var.load2209, ptr %a.load22222, ptr %var.load2223)
  %var.load2225 = load ptr, ptr %var.p2196, align 8
  %fld.gep2226 = getelementptr inbounds { ptr, ptr }, ptr %var.load2225, i32 0, i32 1
  %fld.load2227 = load ptr, ptr %fld.gep2226, align 8
  %var.load2228 = load ptr, ptr %var.table, align 8
  %var.load2229 = load ptr, ptr %var.locals, align 8
  %a.load2231 = load ptr, ptr %var.locals, align 8
  %a.null2232 = icmp eq ptr %a.load2231, null
  br i1 %a.null2232, label %a.create2233, label %a.after2234

a.create2233:                                     ; preds = %a.after2214
  %arena.cur2235 = call ptr @dva_arena_current()
  %a.create2236 = call ptr @dva_arena_alloc(ptr %arena.cur2235, i64 24)
  %arena.cur2237 = call ptr @dva_arena_current()
  %a.buf2238 = call ptr @dva_arena_alloc(ptr %arena.cur2237, i64 128)
  %a.len.gep2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2236, i32 0, i32 0
  store i64 0, ptr %a.len.gep2239, align 8
  %a.data.gep2240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2236, i32 0, i32 1
  store ptr %a.buf2238, ptr %a.data.gep2240, align 8
  %a.cap.gep2241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2236, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2241, align 8
  store ptr %a.create2236, ptr %var.locals, align 8
  br label %a.after2234

a.after2234:                                      ; preds = %a.create2233, %a.after2214
  %a.load22242 = load ptr, ptr %var.locals, align 8
  %var.load2243 = load ptr, ptr %var.cur_mod, align 8
  %call.res2244 = call ptr @"overloads::walk"(ptr %fld.load2227, ptr %var.load2228, ptr %a.load22242, ptr %var.load2243)
  %arena.cur2245 = call ptr @dva_arena_current()
  %rec.alloc2246 = call ptr @dva_arena_alloc(ptr %arena.cur2245, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2247 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2246, i32 0, i32 0
  store ptr %call.res2224, ptr %rec.fld2247, align 8
  %rec.fld2248 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2246, i32 0, i32 1
  store ptr %call.res2244, ptr %rec.fld2248, align 8
  %a.load2249 = load ptr, ptr %var.new_pairs, align 8
  %a.null2250 = icmp eq ptr %a.load2249, null
  br i1 %a.null2250, label %a.create2251, label %a.after2252

a.create2251:                                     ; preds = %a.after2234
  %arena.cur2253 = call ptr @dva_arena_current()
  %a.create2254 = call ptr @dva_arena_alloc(ptr %arena.cur2253, i64 24)
  %arena.cur2255 = call ptr @dva_arena_current()
  %a.buf2256 = call ptr @dva_arena_alloc(ptr %arena.cur2255, i64 128)
  %a.len.gep2257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2254, i32 0, i32 0
  store i64 0, ptr %a.len.gep2257, align 8
  %a.data.gep2258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2254, i32 0, i32 1
  store ptr %a.buf2256, ptr %a.data.gep2258, align 8
  %a.cap.gep2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2254, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2259, align 8
  store ptr %a.create2254, ptr %var.new_pairs, align 8
  br label %a.after2252

a.after2252:                                      ; preds = %a.create2251, %a.after2234
  %a.load22260 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2261

a.check2261:                                      ; preds = %a.after2252
  %a.len2264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22260, i32 0, i32 0
  %a.len2265 = load i64, ptr %a.len2264, align 8
  %a.cap2266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22260, i32 0, i32 2
  %a.cap2267 = load i64, ptr %a.cap2266, align 8
  %a.needs.grow2268 = icmp eq i64 %a.len2265, %a.cap2267
  br i1 %a.needs.grow2268, label %a.grow2262, label %a.store2263

a.grow2262:                                       ; preds = %a.check2261
  call void @dva_array_grow(ptr %a.load22260)
  br label %a.store2263

a.store2263:                                      ; preds = %a.grow2262, %a.check2261
  %a.cur.data2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22260, i32 0, i32 1
  %a.cur.data2270 = load ptr, ptr %a.cur.data2269, align 8
  %a.cur.len2271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22260, i32 0, i32 0
  %a.cur.len2272 = load i64, ptr %a.cur.len2271, align 8
  %a.elem.gep2273 = getelementptr i64, ptr %a.cur.data2270, i64 %a.cur.len2272
  %slot.p2i2274 = ptrtoint ptr %rec.alloc2246 to i64
  store i64 %slot.p2i2274, ptr %a.elem.gep2273, align 8
  %a.next.len2275 = add i64 %a.cur.len2272, 1
  %b.len.gep2276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22260, i32 0, i32 0
  store i64 %a.next.len2275, ptr %b.len.gep2276, align 8
  br label %loop.latch.86

a.create2286:                                     ; preds = %loop.exit.86
  %arena.cur2288 = call ptr @dva_arena_current()
  %a.create2289 = call ptr @dva_arena_alloc(ptr %arena.cur2288, i64 24)
  %arena.cur2290 = call ptr @dva_arena_current()
  %a.buf2291 = call ptr @dva_arena_alloc(ptr %arena.cur2290, i64 128)
  %a.len.gep2292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2289, i32 0, i32 0
  store i64 0, ptr %a.len.gep2292, align 8
  %a.data.gep2293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2289, i32 0, i32 1
  store ptr %a.buf2291, ptr %a.data.gep2293, align 8
  %a.cap.gep2294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2289, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2294, align 8
  store ptr %a.create2289, ptr %var.new_pairs, align 8
  br label %a.after2287

a.after2287:                                      ; preds = %a.create2286, %loop.exit.86
  %a.load22295 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22295, ptr %pay.gep2282, align 8
  br label %choice.exit

choice.case2296:                                  ; preds = %choice.next2165
  %pay.gep2301 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2302 = load ptr, ptr %pay.gep2301, align 8
  store ptr %payload.ptr2302, ptr %var._2303, align 8
  store ptr %payload.ptr2302, ptr %var.ct, align 8
  %var.load2304 = load ptr, ptr %var.ct, align 8
  %var.load2305 = load ptr, ptr %var.table, align 8
  %var.load2306 = load ptr, ptr %var.locals, align 8
  %a.load2307 = load ptr, ptr %var.locals, align 8
  %a.null2308 = icmp eq ptr %a.load2307, null
  br i1 %a.null2308, label %a.create2309, label %a.after2310

choice.next2297:                                  ; preds = %choice.next2165
  %tag.gep2328 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2329 = load i64, ptr %tag.gep2328, align 8
  %tag.match2330 = icmp eq i64 %tag.id2329, 25
  br i1 %tag.match2330, label %choice.case2326, label %choice.next2327

a.create2309:                                     ; preds = %choice.case2296
  %arena.cur2311 = call ptr @dva_arena_current()
  %a.create2312 = call ptr @dva_arena_alloc(ptr %arena.cur2311, i64 24)
  %arena.cur2313 = call ptr @dva_arena_current()
  %a.buf2314 = call ptr @dva_arena_alloc(ptr %arena.cur2313, i64 128)
  %a.len.gep2315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2312, i32 0, i32 0
  store i64 0, ptr %a.len.gep2315, align 8
  %a.data.gep2316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2312, i32 0, i32 1
  store ptr %a.buf2314, ptr %a.data.gep2316, align 8
  %a.cap.gep2317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2312, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2317, align 8
  store ptr %a.create2312, ptr %var.locals, align 8
  br label %a.after2310

a.after2310:                                      ; preds = %a.create2309, %choice.case2296
  %a.load22318 = load ptr, ptr %var.locals, align 8
  %var.load2319 = load ptr, ptr %var.cur_mod, align 8
  %call.res2320 = call ptr @"overloads::walk"(ptr %var.load2304, ptr %var.load2305, ptr %a.load22318, ptr %var.load2319)
  store ptr %call.res2320, ptr %var.new_ce, align 8
  %arena.cur2321 = call ptr @dva_arena_current()
  %enum.alloc2322 = call ptr @dva_arena_alloc(ptr %arena.cur2321, i64 16)
  %tag.gep2323 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2322, i32 0, i32 0
  store i64 30, ptr %tag.gep2323, align 8
  %pay.gep2324 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2322, i32 0, i32 1
  %var.load2325 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2325, ptr %pay.gep2324, align 8
  br label %choice.exit

choice.case2326:                                  ; preds = %choice.next2297
  %pay.gep2331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2332 = load ptr, ptr %pay.gep2331, align 8
  store ptr %payload.ptr2332, ptr %var._2333, align 8
  store ptr %payload.ptr2332, ptr %var.cp2334, align 8
  %arena.cur2335 = call ptr @dva_arena_current()
  %enum.alloc2336 = call ptr @dva_arena_alloc(ptr %arena.cur2335, i64 16)
  %tag.gep2337 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2336, i32 0, i32 0
  store i64 25, ptr %tag.gep2337, align 8
  %pay.gep2338 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2336, i32 0, i32 1
  %var.load2339 = load ptr, ptr %var.cp2334, align 8
  %var.load2340 = load ptr, ptr %var.table, align 8
  %var.load2341 = load ptr, ptr %var.locals, align 8
  %a.load2342 = load ptr, ptr %var.locals, align 8
  %a.null2343 = icmp eq ptr %a.load2342, null
  br i1 %a.null2343, label %a.create2344, label %a.after2345

choice.next2327:                                  ; preds = %choice.next2297
  %tag.gep2358 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2359 = load i64, ptr %tag.gep2358, align 8
  %tag.match2360 = icmp eq i64 %tag.id2359, 27
  br i1 %tag.match2360, label %choice.case2356, label %choice.next2357

a.create2344:                                     ; preds = %choice.case2326
  %arena.cur2346 = call ptr @dva_arena_current()
  %a.create2347 = call ptr @dva_arena_alloc(ptr %arena.cur2346, i64 24)
  %arena.cur2348 = call ptr @dva_arena_current()
  %a.buf2349 = call ptr @dva_arena_alloc(ptr %arena.cur2348, i64 128)
  %a.len.gep2350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2347, i32 0, i32 0
  store i64 0, ptr %a.len.gep2350, align 8
  %a.data.gep2351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2347, i32 0, i32 1
  store ptr %a.buf2349, ptr %a.data.gep2351, align 8
  %a.cap.gep2352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2347, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2352, align 8
  store ptr %a.create2347, ptr %var.locals, align 8
  br label %a.after2345

a.after2345:                                      ; preds = %a.create2344, %choice.case2326
  %a.load22353 = load ptr, ptr %var.locals, align 8
  %var.load2354 = load ptr, ptr %var.cur_mod, align 8
  %call.res2355 = call ptr @"overloads::walk"(ptr %var.load2339, ptr %var.load2340, ptr %a.load22353, ptr %var.load2354)
  store ptr %call.res2355, ptr %pay.gep2338, align 8
  br label %choice.exit

choice.case2356:                                  ; preds = %choice.next2327
  %pay.gep2361 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2362 = load ptr, ptr %pay.gep2361, align 8
  store ptr %payload.ptr2362, ptr %var._2363, align 8
  store ptr %payload.ptr2362, ptr %var.bc, align 8
  %arena.cur2364 = call ptr @dva_arena_current()
  %enum.alloc2365 = call ptr @dva_arena_alloc(ptr %arena.cur2364, i64 16)
  %tag.gep2366 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2365, i32 0, i32 0
  store i64 27, ptr %tag.gep2366, align 8
  %pay.gep2367 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2365, i32 0, i32 1
  %var.load2368 = load ptr, ptr %var.bc, align 8
  %var.load2369 = load ptr, ptr %var.table, align 8
  %var.load2370 = load ptr, ptr %var.locals, align 8
  %a.load2371 = load ptr, ptr %var.locals, align 8
  %a.null2372 = icmp eq ptr %a.load2371, null
  br i1 %a.null2372, label %a.create2373, label %a.after2374

choice.next2357:                                  ; preds = %choice.next2327
  %var.load2385 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2373:                                     ; preds = %choice.case2356
  %arena.cur2375 = call ptr @dva_arena_current()
  %a.create2376 = call ptr @dva_arena_alloc(ptr %arena.cur2375, i64 24)
  %arena.cur2377 = call ptr @dva_arena_current()
  %a.buf2378 = call ptr @dva_arena_alloc(ptr %arena.cur2377, i64 128)
  %a.len.gep2379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2376, i32 0, i32 0
  store i64 0, ptr %a.len.gep2379, align 8
  %a.data.gep2380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2376, i32 0, i32 1
  store ptr %a.buf2378, ptr %a.data.gep2380, align 8
  %a.cap.gep2381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2376, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2381, align 8
  store ptr %a.create2376, ptr %var.locals, align 8
  br label %a.after2374

a.after2374:                                      ; preds = %a.create2373, %choice.case2356
  %a.load22382 = load ptr, ptr %var.locals, align 8
  %var.load2383 = load ptr, ptr %var.cur_mod, align 8
  %call.res2384 = call ptr @"overloads::walk"(ptr %var.load2368, ptr %var.load2369, ptr %a.load22382, ptr %var.load2383)
  store ptr %call.res2384, ptr %pay.gep2367, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._99 = alloca ptr, align 8
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
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
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
  %arena.cur11 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %fld.load7, %choice.then ], [ %ret.ub.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.original, align 8
  %var.load12 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create14, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load16 = load ptr, ptr %var.original, align 8
  %call.res17 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load16)
  %nottmp = xor i1 %call.res17, true
  br i1 %nottmp, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %a.after
  %var.load21 = load ptr, ptr %var.ctx, align 8
  %var.load22 = load ptr, ptr %var.original, align 8
  %var.load23 = load ptr, ptr %var.cur_mod, align 8
  %call.res24 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load21, ptr %var.load22, ptr %var.load23)
  %arena.cur25 = call ptr @dva_arena_current()
  %ret.ub.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  store { i64, ptr } %call.res24, ptr %ret.ub.alloc26, align 8
  br label %choice.exit20

choice.else19:                                    ; preds = %a.after
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.then18
  %choice.res27 = phi ptr [ %ret.ub.alloc26, %choice.then18 ], [ @str.1.struct, %choice.else19 ]
  store ptr %choice.res27, ptr %var.fam, align 8
  %var.load28 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len29, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag32 = lshr i64 %eq.lhs.len30, 48
  %tag.immortal34 = icmp eq i64 %str.tag32, 0
  br i1 %tag.immortal34, label %str_ok33, label %tag.gen_check35

str_ok33:                                         ; preds = %abort.dead42, %tag.slow_check36, %tag.gen_check35, %choice.exit20
  %eq.rhs.len43 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %eq.len45 = icmp eq i64 %eq.lhs.len31, %eq.rhs.len44
  br i1 %eq.len45, label %str.eq.then46, label %str.eq.else47

tag.gen_check35:                                  ; preds = %choice.exit20
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok39 = icmp eq i64 %str.tag32, %active.gen38
  br i1 %tag.fast.ok39, label %str_ok33, label %tag.slow_check36

tag.slow_check36:                                 ; preds = %tag.gen_check35
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag32)
  br i1 %tag.valid41, label %str_ok33, label %tag.stale37

tag.stale37:                                      ; preds = %tag.slow_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %str_ok33

str.eq.then46:                                    ; preds = %str_ok33
  %eq.lhs.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data49, align 8
  %eq.rhs.data51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp52 = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data51, i64 %eq.lhs.len31)
  %eq.cmp.zero53 = icmp eq i32 %eq.memcmp52, 0
  br label %str.eq.merge48

str.eq.else47:                                    ; preds = %str_ok33
  br label %str.eq.merge48

str.eq.merge48:                                   ; preds = %str.eq.else47, %str.eq.then46
  %str.eq.result54 = phi i1 [ %eq.cmp.zero53, %str.eq.then46 ], [ false, %str.eq.else47 ]
  %str.neq55 = xor i1 %str.eq.result54, true
  store i1 %str.neq55, ptr %var.family, align 1
  %var.load56 = load i1, ptr %var.family, align 1
  br i1 %var.load56, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %str.eq.merge48
  %var.load60 = load ptr, ptr %var.fam, align 8
  %var.load61 = load ptr, ptr %var.c, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 2
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load63, i32 0, i32 0
  %a.len.query64 = load i64, ptr %a.len.query, align 8
  %call.res65 = call { i64, ptr } @"overloads::symbol"(ptr %var.load60, i64 %a.len.query64)
  %arena.cur66 = call ptr @dva_arena_current()
  %ret.ub.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  store { i64, ptr } %call.res65, ptr %ret.ub.alloc67, align 8
  br label %choice.exit59

choice.else58:                                    ; preds = %str.eq.merge48
  %var.load68 = load ptr, ptr %var.c, align 8
  %fld.gep69 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 0
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  br label %choice.exit59

choice.exit59:                                    ; preds = %choice.else58, %choice.then57
  %choice.res71 = phi ptr [ %ret.ub.alloc67, %choice.then57 ], [ %fld.load70, %choice.else58 ]
  store ptr %choice.res71, ptr %var.target_name, align 8
  %var.load72 = load i1, ptr %var.family, align 1
  br i1 %var.load72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %choice.exit59
  %var.load76 = load ptr, ptr %var.ctx, align 8
  %var.load77 = load ptr, ptr %var.fam, align 8
  %var.load78 = load ptr, ptr %var.c, align 8
  %fld.gep79 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load78, i32 0, i32 2
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %a.len.query81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load80, i32 0, i32 0
  %a.len.query82 = load i64, ptr %a.len.query81, align 8
  %call.res83 = call ptr @"overloads::signature"(ptr %var.load76, ptr %var.load77, i64 %a.len.query82)
  br label %choice.exit75

choice.else74:                                    ; preds = %choice.exit59
  %call.res84 = call ptr @"overloads::unknown"()
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %choice.then73
  %choice.res85 = phi ptr [ %call.res83, %choice.then73 ], [ %call.res84, %choice.else74 ]
  store ptr %choice.res85, ptr %var.expected, align 8
  %arena.cur86 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 24)
  %arena.cur87 = call ptr @dva_arena_current()
  %a.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 128)
  %a.len.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep89, align 8
  %a.data.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf88, ptr %a.data.gep90, align 8
  %a.cap.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep91, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load92 = load ptr, ptr %var.c, align 8
  %fld.gep93 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load92, i32 0, i32 2
  %fld.load94 = load ptr, ptr %fld.gep93, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load94, i32 0, i32 0
  %arr.cycle.len95 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load94, i32 0, i32 1
  %arr.cycle.data96 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.74, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %choice.exit75
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len95
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data96, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load97 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 0
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
  %var.load192 = load i1, ptr %var.family, align 1
  br i1 %var.load192, label %choice.then193, label %choice.else194

choice.exit98:                                    ; preds = %choice.next, %choice.exit108
  %choice.res141 = phi ptr [ %choice.res139, %choice.exit108 ], [ %call.res140, %choice.next ]
  store ptr %choice.res141, ptr %var.arg_ti, align 8
  %var.load142 = load ptr, ptr %var.a, align 8
  %var.load143 = load ptr, ptr %var.ctx, align 8
  %var.load144 = load ptr, ptr %var.locals, align 8
  %a.load145 = load ptr, ptr %var.locals, align 8
  %a.null146 = icmp eq ptr %a.load145, null
  br i1 %a.null146, label %a.create147, label %a.after148

choice.case:                                      ; preds = %loop.body.74
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._99, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load100 = load i64, ptr %var.i, align 8
  %var.load101 = load ptr, ptr %var.f, align 8
  %fld.gep102 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load101, i32 0, i32 1
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %a.len.query104 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load103, i32 0, i32 0
  %a.len.query105 = load i64, ptr %a.len.query104, align 8
  %cmptmp = icmp slt i64 %var.load100, %a.len.query105
  br i1 %cmptmp, label %choice.then106, label %choice.else107

choice.next:                                      ; preds = %loop.body.74
  %call.res140 = call ptr @"overloads::unknown"()
  br label %choice.exit98

choice.then106:                                   ; preds = %choice.case
  %var.load109 = load ptr, ptr %var.f, align 8
  %fld.gep110 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load109, i32 0, i32 1
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %var.load112 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load111, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.else107:                                   ; preds = %choice.case
  %call.res138 = call ptr @"overloads::unknown"()
  br label %choice.exit108

choice.exit108:                                   ; preds = %choice.else107, %unwrap.pos.75
  %choice.res139 = phi ptr [ %pay.ptr, %unwrap.pos.75 ], [ %call.res138, %choice.else107 ]
  br label %choice.exit98

a.rd.check:                                       ; preds = %choice.then106
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load111, i32 0, i32 0
  %a.rd.len113 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load112, 0
  %a.rd.lt = icmp slt i64 %var.load112, %a.rd.len113
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load111, i32 0, i32 1
  %a.rd.data114 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data114, i64 %var.load112
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then106
  %arena.cur115 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 56)
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
  %arena.cur116 = call ptr @dva_arena_current()
  %err.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 56)
  %err.code.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 0
  store i64 4011, ptr %err.code.gep118, align 8
  %err.msg.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep119, align 8
  %err.file.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep120, align 8
  %err.line.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 3
  store i64 0, ptr %err.line.gep121, align 8
  %err.col.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 4
  store i64 0, ptr %err.col.gep122, align 8
  %err.ctx.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc117, i32 0, i32 5
  %err.ctx0.gep124 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep123, i32 0, i32 0
  store i64 %var.load112, ptr %err.ctx0.gep124, align 8
  %err.ctx1.gep125 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep123, i32 0, i32 1
  store i64 %a.rd.len113, ptr %err.ctx1.gep125, align 8
  %err.p2i126 = ptrtoint ptr %err.alloc117 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i126, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  br label %choice.exit108

unwrap.abort.75:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep127, align 8
  %err.msg.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep128, align 8
  %err.file.gep129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep129, align 8
  %err.line.gep130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep130, align 8
  %err.col.gep131 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep131, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len132 = load i64, ptr %err.msg.len, align 8
  %err.msg.len133 = and i64 %err.msg.len132, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len133 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data134 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len135 = load i64, ptr %err.file.len, align 8
  %err.file.len136 = and i64 %err.file.len135, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len136 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data137 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data134, i32 %err.file.len32, ptr %err.file.data137, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create147:                                      ; preds = %choice.exit98
  %arena.cur149 = call ptr @dva_arena_current()
  %a.create150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 24)
  %arena.cur151 = call ptr @dva_arena_current()
  %a.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 128)
  %a.len.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create150, i32 0, i32 0
  store i64 0, ptr %a.len.gep153, align 8
  %a.data.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create150, i32 0, i32 1
  store ptr %a.buf152, ptr %a.data.gep154, align 8
  %a.cap.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create150, i32 0, i32 2
  store i64 16, ptr %a.cap.gep155, align 8
  store ptr %a.create150, ptr %var.locals, align 8
  br label %a.after148

a.after148:                                       ; preds = %a.create147, %choice.exit98
  %a.load2156 = load ptr, ptr %var.locals, align 8
  %var.load157 = load ptr, ptr %var.cur_mod, align 8
  %call.res158 = call ptr @"overloads::walk"(ptr %var.load142, ptr %var.load143, ptr %a.load2156, ptr %var.load157)
  %var.load159 = load ptr, ptr %var.arg_ti, align 8
  %var.load160 = load ptr, ptr %var.ctx, align 8
  %var.load161 = load ptr, ptr %var.locals, align 8
  %a.load162 = load ptr, ptr %var.locals, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

a.create164:                                      ; preds = %a.after148
  %arena.cur166 = call ptr @dva_arena_current()
  %a.create167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 24)
  %arena.cur168 = call ptr @dva_arena_current()
  %a.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 128)
  %a.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 0
  store i64 0, ptr %a.len.gep170, align 8
  %a.data.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 1
  store ptr %a.buf169, ptr %a.data.gep171, align 8
  %a.cap.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep172, align 8
  store ptr %a.create167, ptr %var.locals, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %a.after148
  %a.load2173 = load ptr, ptr %var.locals, align 8
  %var.load174 = load ptr, ptr %var.cur_mod, align 8
  %call.res175 = call ptr @"overloads::select_value"(ptr %call.res158, ptr %var.load159, ptr %var.load160, ptr %a.load2173, ptr %var.load174)
  %a.load176 = load ptr, ptr %var.args, align 8
  %a.null177 = icmp eq ptr %a.load176, null
  br i1 %a.null177, label %a.create178, label %a.after179

a.create178:                                      ; preds = %a.after165
  %arena.cur180 = call ptr @dva_arena_current()
  %a.create181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 24)
  %arena.cur182 = call ptr @dva_arena_current()
  %a.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 128)
  %a.len.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 0
  store i64 0, ptr %a.len.gep184, align 8
  %a.data.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 1
  store ptr %a.buf183, ptr %a.data.gep185, align 8
  %a.cap.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 2
  store i64 16, ptr %a.cap.gep186, align 8
  store ptr %a.create181, ptr %var.args, align 8
  br label %a.after179

a.after179:                                       ; preds = %a.create178, %a.after165
  %a.load2187 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after179
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 0
  %a.len188 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 2
  %a.cap189 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len188, %a.cap189
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2187)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 1
  %a.cur.data190 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 0
  %a.cur.len191 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data190, i64 %a.cur.len191
  %slot.p2i = ptrtoint ptr %call.res175 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len191, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.74

choice.then193:                                   ; preds = %loop.exit.74
  %arena.cur196 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 16)
  %tag.gep197 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep197, align 8
  %pay.gep198 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load199 = load ptr, ptr %var.target_name, align 8
  store ptr %var.load199, ptr %pay.gep198, align 8
  br label %choice.exit195

choice.else194:                                   ; preds = %loop.exit.74
  %var.load200 = load ptr, ptr %var.c, align 8
  %fld.gep201 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load200, i32 0, i32 1
  %fld.load202 = load ptr, ptr %fld.gep201, align 8
  %var.load203 = load ptr, ptr %var.ctx, align 8
  %var.load204 = load ptr, ptr %var.locals, align 8
  %a.load205 = load ptr, ptr %var.locals, align 8
  %a.null206 = icmp eq ptr %a.load205, null
  br i1 %a.null206, label %a.create207, label %a.after208

choice.exit195:                                   ; preds = %a.after208, %choice.then193
  %choice.res219 = phi ptr [ %enum.alloc, %choice.then193 ], [ %call.res218, %a.after208 ]
  store ptr %choice.res219, ptr %var.target, align 8
  %var.load220 = load ptr, ptr %var.target_name, align 8
  %var.load221 = load ptr, ptr %var.target, align 8
  %var.load222 = load ptr, ptr %var.args, align 8
  %a.load223 = load ptr, ptr %var.args, align 8
  %a.null224 = icmp eq ptr %a.load223, null
  br i1 %a.null224, label %a.create225, label %a.after226

a.create207:                                      ; preds = %choice.else194
  %arena.cur209 = call ptr @dva_arena_current()
  %a.create210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 24)
  %arena.cur211 = call ptr @dva_arena_current()
  %a.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 128)
  %a.len.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 0
  store i64 0, ptr %a.len.gep213, align 8
  %a.data.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 1
  store ptr %a.buf212, ptr %a.data.gep214, align 8
  %a.cap.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep215, align 8
  store ptr %a.create210, ptr %var.locals, align 8
  br label %a.after208

a.after208:                                       ; preds = %a.create207, %choice.else194
  %a.load2216 = load ptr, ptr %var.locals, align 8
  %var.load217 = load ptr, ptr %var.cur_mod, align 8
  %call.res218 = call ptr @"overloads::walk"(ptr %fld.load202, ptr %var.load203, ptr %a.load2216, ptr %var.load217)
  br label %choice.exit195

a.create225:                                      ; preds = %choice.exit195
  %arena.cur227 = call ptr @dva_arena_current()
  %a.create228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 24)
  %arena.cur229 = call ptr @dva_arena_current()
  %a.buf230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 128)
  %a.len.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 0
  store i64 0, ptr %a.len.gep231, align 8
  %a.data.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 1
  store ptr %a.buf230, ptr %a.data.gep232, align 8
  %a.cap.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 2
  store i64 16, ptr %a.cap.gep233, align 8
  store ptr %a.create228, ptr %var.args, align 8
  br label %a.after226

a.after226:                                       ; preds = %a.create225, %choice.exit195
  %a.load2234 = load ptr, ptr %var.args, align 8
  %var.load235 = load ptr, ptr %var.c, align 8
  %fld.gep236 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load235, i32 0, i32 3
  %fld.load237 = load i64, ptr %fld.gep236, align 8
  %var.load238 = load ptr, ptr %var.c, align 8
  %fld.gep239 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load238, i32 0, i32 4
  %fld.load240 = load i64, ptr %fld.gep239, align 8
  %arena.cur241 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load220, ptr %rec.fld, align 8
  %rec.fld242 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load221, ptr %rec.fld242, align 8
  %rec.fld243 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2234, ptr %rec.fld243, align 8
  %rec.fld244 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load237, ptr %rec.fld244, align 8
  %rec.fld245 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load240, ptr %rec.fld245, align 8
  ret ptr %rec.alloc
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"overloads::resolve"(ptr %0) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
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
  %arena.cur10 = call ptr @dva_arena_current()
  %a.new11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = call ptr @dva_arena_current()
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 0
  store i64 0, ptr %a.len.gep14, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  br label %choice.exit

a.create:                                         ; preds = %choice.case
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
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
  %arena.cur22 = call ptr @dva_arena_current()
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = call ptr @dva_arena_current()
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
  %arena.cur85 = call ptr @dva_arena_current()
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
  %arena.cur92 = call ptr @dva_arena_current()
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = call ptr @dva_arena_current()
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
  %arena.cur109 = call ptr @dva_arena_current()
  %a.create110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 24)
  %arena.cur111 = call ptr @dva_arena_current()
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
  %arena.cur117 = call ptr @dva_arena_current()
  %a.new118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 24)
  %arena.cur119 = call ptr @dva_arena_current()
  %a.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 128)
  %a.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 0
  store i64 0, ptr %a.len.gep121, align 8
  %a.data.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 1
  store ptr %a.buf120, ptr %a.data.gep122, align 8
  %a.cap.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep123, align 8
  %arena.cur124 = call ptr @dva_arena_current()
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
  %arena.cur133 = call ptr @dva_arena_current()
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = call ptr @dva_arena_current()
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
  %arena.cur199 = call ptr @dva_arena_current()
  %a.new200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 24)
  %arena.cur201 = call ptr @dva_arena_current()
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

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
