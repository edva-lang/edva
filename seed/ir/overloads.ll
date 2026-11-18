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
  %choice.res49 = phi ptr [ %var.load1, %choice.case ], [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.next3 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res49, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %choice.case2
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %concat.tot.len43
  %choice.res = phi ptr [ %concat.str, %concat.tot.len43 ], [ @str.1.struct, %choice.else ]
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.then
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
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg16, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len34

tag.slow_check31:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len34:                                    ; preds = %abort.dead, %str_ok26
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg24)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len34

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len34
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len34
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum41)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg18, i64 %cat.seg16, i1 false)
  %cat.off = add i64 0, %cat.seg16
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off47 = add i64 %cat.off, 2
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit11

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #4 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %var.load5 = load i64, ptr %var.arity, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load5, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 6)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len6:                                     ; preds = %abort.dead, %str_ok
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %str_ok
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.61.then, label %and.61.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.61.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.61.else:                                      ; preds = %str_ok
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
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.63.then, label %and.63.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.63.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.63.else:                                      ; preds = %str_ok
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %str.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %str_ok17, label %tag.slow_check22

choice.exit:                                      ; preds = %choice.exit121, %choice.exit11
  %choice.res125 = phi ptr [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.exit121 ]
  %ret.pack126 = load { i64, ptr }, ptr %choice.res125, align 8
  ret { i64, ptr } %ret.pack126

choice.then9:                                     ; preds = %choice.then
  %var.load12 = load ptr, ptr %var.name, align 8
  br label %choice.exit11

choice.else10:                                    ; preds = %choice.then
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %var.load12, %choice.then9 ], [ @str.1.struct, %choice.else10 ]
  br label %choice.exit

str_ok17:                                         ; preds = %tag.slow_check22, %choice.else
  %cat.seg23 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cat.seg24 = load ptr, ptr %cat.seg23, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %var.load25 = load ptr, ptr %var.name, align 8
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %cat.seg27 = load i64, ptr %cat.seg26, align 8
  %cat.seg28 = and i64 %cat.seg27, 281474976710655
  %str.tag29 = lshr i64 %cat.seg27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  %active.gen32 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current33 = icmp eq i64 %str.tag29, %active.gen32
  %tag.fast.ok34 = or i1 %tag.immortal31, %tag.current33
  br i1 %tag.fast.ok34, label %str_ok30, label %tag.slow_check35

tag.slow_check22:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag16)
  br label %str_ok17

str_ok30:                                         ; preds = %tag.slow_check35, %str_ok17
  %cat.seg36 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %cat.seg37 = load ptr, ptr %cat.seg36, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg15, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len38

tag.slow_check35:                                 ; preds = %str_ok17
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag29)
  br label %str_ok30

cat.sum.len38:                                    ; preds = %abort.dead, %str_ok30
  %cat.sum.len39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg28)
  %sum40 = extractvalue { i64, i1 } %cat.sum.len39, 0
  %ovf41 = extractvalue { i64, i1 } %cat.sum.len39, 1
  br i1 %ovf41, label %str_overflow_abort43, label %cat.sum.len42

str_overflow_abort:                               ; preds = %str_ok30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len38

cat.sum.len42:                                    ; preds = %abort.dead44, %cat.sum.len38
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum40, i64 1)
  %sum45 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf46 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %concat.tot.len47

str_overflow_abort43:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %cat.sum.len42

concat.tot.len47:                                 ; preds = %abort.dead49, %cat.sum.len42
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum45)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg24, i64 %cat.seg15, i1 false)
  %cat.off = add i64 0, %cat.seg15
  %cat.dst50 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst50, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off51 = add i64 %cat.off, 2
  %cat.dst52 = getelementptr i8, ptr %concat.buf, i64 %cat.off51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst52, ptr align 1 %cat.seg37, i64 %cat.seg28, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum40
  store i8 0, ptr %concat.nul, align 1
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum40, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.pub, align 8
  %var.load54 = load ptr, ptr %var.ctx, align 8
  %var.load55 = load ptr, ptr %var.pub, align 8
  %call.res56 = call i1 @"overloads::is_family"(ptr %var.load54, ptr %var.load55)
  br i1 %call.res56, label %choice.then57, label %choice.exit58

str_overflow_abort48:                             ; preds = %cat.sum.len42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %concat.tot.len47

choice.then57:                                    ; preds = %concat.tot.len47
  %var.load59 = load ptr, ptr %var.pub, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load59, align 8
  ret { i64, ptr } %ret.pack

choice.exit58:                                    ; preds = %ret.dead, %concat.tot.len47
  %var.load60 = load ptr, ptr %var.cur_mod, align 8
  %cat.seg61 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %cat.seg62 = load i64, ptr %cat.seg61, align 8
  %cat.seg63 = and i64 %cat.seg62, 281474976710655
  %str.tag64 = lshr i64 %cat.seg62, 48
  %tag.immortal66 = icmp eq i64 %str.tag64, 0
  %active.gen67 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current68 = icmp eq i64 %str.tag64, %active.gen67
  %tag.fast.ok69 = or i1 %tag.immortal66, %tag.current68
  br i1 %tag.fast.ok69, label %str_ok65, label %tag.slow_check70

ret.dead:                                         ; No predecessors!
  br label %choice.exit58

str_ok65:                                         ; preds = %tag.slow_check70, %choice.exit58
  %cat.seg71 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %cat.seg72 = load ptr, ptr %cat.seg71, align 8
  %cat.lit.data73 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %var.load74 = load ptr, ptr %var.name, align 8
  %cat.seg75 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %cat.seg76 = load i64, ptr %cat.seg75, align 8
  %cat.seg77 = and i64 %cat.seg76, 281474976710655
  %str.tag78 = lshr i64 %cat.seg76, 48
  %tag.immortal80 = icmp eq i64 %str.tag78, 0
  %active.gen81 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current82 = icmp eq i64 %str.tag78, %active.gen81
  %tag.fast.ok83 = or i1 %tag.immortal80, %tag.current82
  br i1 %tag.fast.ok83, label %str_ok79, label %tag.slow_check84

tag.slow_check70:                                 ; preds = %choice.exit58
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag64)
  br label %str_ok65

str_ok79:                                         ; preds = %tag.slow_check84, %str_ok65
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %cat.seg86 = load ptr, ptr %cat.seg85, align 8
  %cat.sum.len87 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg63, i64 3)
  %sum88 = extractvalue { i64, i1 } %cat.sum.len87, 0
  %ovf89 = extractvalue { i64, i1 } %cat.sum.len87, 1
  br i1 %ovf89, label %str_overflow_abort91, label %cat.sum.len90

tag.slow_check84:                                 ; preds = %str_ok65
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag78)
  br label %str_ok79

cat.sum.len90:                                    ; preds = %abort.dead92, %str_ok79
  %cat.sum.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum88, i64 %cat.seg77)
  %sum94 = extractvalue { i64, i1 } %cat.sum.len93, 0
  %ovf95 = extractvalue { i64, i1 } %cat.sum.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %cat.sum.len96

str_overflow_abort91:                             ; preds = %str_ok79
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %cat.sum.len90

cat.sum.len96:                                    ; preds = %abort.dead98, %cat.sum.len90
  %concat.tot.len99 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum94, i64 1)
  %sum100 = extractvalue { i64, i1 } %concat.tot.len99, 0
  %ovf101 = extractvalue { i64, i1 } %concat.tot.len99, 1
  br i1 %ovf101, label %str_overflow_abort103, label %concat.tot.len102

str_overflow_abort97:                             ; preds = %cat.sum.len90
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %cat.sum.len96

concat.tot.len102:                                ; preds = %abort.dead104, %cat.sum.len96
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %sum100)
  %cat.dst107 = getelementptr i8, ptr %concat.buf106, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst107, ptr align 1 %cat.seg72, i64 %cat.seg63, i1 false)
  %cat.off108 = add i64 0, %cat.seg63
  %cat.dst109 = getelementptr i8, ptr %concat.buf106, i64 %cat.off108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst109, ptr align 1 %cat.lit.data73, i64 3, i1 false)
  %cat.off110 = add i64 %cat.off108, 3
  %cat.dst111 = getelementptr i8, ptr %concat.buf106, i64 %cat.off110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst111, ptr align 1 %cat.seg86, i64 %cat.seg77, i1 false)
  %concat.nul112 = getelementptr i8, ptr %concat.buf106, i64 %sum94
  store i8 0, ptr %concat.nul112, align 1
  %arena.cur113 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 16)
  %str.build.len.gep115 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 0
  store i64 %sum94, ptr %str.build.len.gep115, align 8
  %str.build.data.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 1
  store ptr %concat.buf106, ptr %str.build.data.gep116, align 8
  store ptr %concat.str114, ptr %var.priv, align 8
  %var.load117 = load ptr, ptr %var.ctx, align 8
  %var.load118 = load ptr, ptr %var.priv, align 8
  %call.res119 = call i1 @"overloads::is_family"(ptr %var.load117, ptr %var.load118)
  br i1 %call.res119, label %choice.then120, label %choice.exit121

str_overflow_abort103:                            ; preds = %cat.sum.len96
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %concat.tot.len102

choice.then120:                                   ; preds = %concat.tot.len102
  %var.load122 = load ptr, ptr %var.priv, align 8
  %ret.pack123 = load { i64, ptr }, ptr %var.load122, align 8
  ret { i64, ptr } %ret.pack123

choice.exit121:                                   ; preds = %ret.dead124, %concat.tot.len102
  br label %choice.exit

ret.dead124:                                      ; No predecessors!
  br label %choice.exit121
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
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len16 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len15, %eq.rhs.len16
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len15)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %str.eq.merge
  %var.load21 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else19:                                    ; preds = %str.eq.merge
  %var.load34 = load ptr, ptr %var.e, align 8
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.exit22
  %choice.res35 = phi ptr [ %choice.res33, %choice.exit22 ], [ %var.load34, %choice.else19 ]
  ret ptr %choice.res35

choice.exit22:                                    ; preds = %choice.next, %choice.case
  %choice.res33 = phi ptr [ %enum.alloc, %choice.case ], [ %var.load32, %choice.next ]
  br label %choice.exit20

choice.case:                                      ; preds = %choice.then18
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %tag.gep24 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep24, align 8
  %pay.gep25 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load26 = load ptr, ptr %var.fam, align 8
  %var.load27 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load27, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query28 = load i64, ptr %a.len.query, align 8
  %call.res29 = call { i64, ptr } @"overloads::symbol"(ptr %var.load26, i64 %a.len.query28)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res29, ptr %ret.ub.alloc31, align 8
  store ptr %ret.ub.alloc31, ptr %pay.gep25, align 8
  br label %choice.exit22

choice.next:                                      ; preds = %choice.then18
  %var.load32 = load ptr, ptr %var.e, align 8
  br label %choice.exit22
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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

define ptr @"overloads::walk"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.bc = alloca ptr, align 8
  %var._2356 = alloca ptr, align 8
  %var.cp2327 = alloca ptr, align 8
  %var._2326 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2296 = alloca ptr, align 8
  %var._2199 = alloca ptr, align 8
  %var._i2198 = alloca i64, align 8
  %var.p2190 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2165 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2140 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2097 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2050 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2025 = alloca ptr, align 8
  %var.new_val1997 = alloca ptr, align 8
  %var.r1967 = alloca ptr, align 8
  %var._1966 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1936 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1907 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1878 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1839 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1788 = alloca ptr, align 8
  %var._1787 = alloca ptr, align 8
  %var.new_val1767 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1747 = alloca ptr, align 8
  %var.new_rhs1717 = alloca ptr, align 8
  %var.new_lhs1687 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1657 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1601 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1537 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1465 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._1372 = alloca ptr, align 8
  %var._i1371 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1349 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1267 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1207 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1182 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1074 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1033 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1017 = alloca ptr, align 8
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
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.ca = alloca ptr, align 8
  %var._563 = alloca ptr, align 8
  %var._508 = alloca ptr, align 8
  %var._i507 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._447 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._346 = alloca ptr, align 8
  %var._i345 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var._283 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._243 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._205 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2350, %a.after2367, %a.after2338, %a.after2303, %a.after2280, %choice.case2133, %a.after2106, %a.after2059, %choice.case2018, %choice.exit1973, %a.after1943, %a.after1918, %a.after1889, %a.after1848, %a.after1819, %a.after1756, %choice.exit1693, %a.after1629, %a.after1565, %a.after1493, %a.after1442, %choice.exit1273, %a.after1235, %choice.case1175, %a.after1128, %a.after931, %a.after642, %a.after405, %a.after221, %choice.exit28, %a.after, %choice.case
  %choice.res2379 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res197, %choice.exit28 ], [ %enum.alloc207, %a.after221 ], [ %enum.alloc417, %a.after405 ], [ %enum.alloc635, %a.after642 ], [ %enum.alloc920, %a.after931 ], [ %enum.alloc1140, %a.after1128 ], [ %enum.alloc1189, %choice.case1175 ], [ %enum.alloc1219, %a.after1235 ], [ %choice.res1341, %choice.exit1273 ], [ %enum.alloc1435, %a.after1442 ], [ %enum.alloc1505, %a.after1493 ], [ %enum.alloc1577, %a.after1565 ], [ %enum.alloc1641, %a.after1629 ], [ %enum.alloc1719, %choice.exit1693 ], [ %enum.alloc1769, %a.after1756 ], [ %enum.alloc1809, %a.after1819 ], [ %enum.alloc1860, %a.after1848 ], [ %enum.alloc1880, %a.after1889 ], [ %enum.alloc1909, %a.after1918 ], [ %enum.alloc1955, %a.after1943 ], [ %enum.alloc1999, %choice.exit1973 ], [ %enum.alloc2032, %choice.case2018 ], [ %enum.alloc2071, %a.after2059 ], [ %enum.alloc2118, %a.after2106 ], [ %enum.alloc2147, %choice.case2133 ], [ %enum.alloc2273, %a.after2280 ], [ %enum.alloc2315, %a.after2303 ], [ %enum.alloc2329, %a.after2338 ], [ %enum.alloc2358, %a.after2367 ], [ %var.load2378, %choice.next2350 ]
  ret ptr %choice.res2379

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
  %tag.gep200 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id201 = load i64, ptr %tag.gep200, align 8
  %tag.match202 = icmp eq i64 %tag.id201, 24
  br i1 %tag.match202, label %choice.case198, label %choice.next199

choice.exit28:                                    ; preds = %a.after181, %choice.exit80
  %choice.res197 = phi ptr [ %choice.res146, %choice.exit80 ], [ %enum.alloc148, %a.after181 ]
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
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 16)
  %tag.gep149 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc148, i32 0, i32 0
  store i64 5, ptr %tag.gep149, align 8
  %pay.gep150 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc148, i32 0, i32 1
  %var.load151 = load ptr, ptr %var.b, align 8
  %fld.gep152 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load151, i32 0, i32 0
  %fld.load153 = load ptr, ptr %fld.gep152, align 8
  %var.load154 = load ptr, ptr %var.b, align 8
  %fld.gep155 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load154, i32 0, i32 1
  %fld.load156 = load ptr, ptr %fld.gep155, align 8
  %var.load157 = load ptr, ptr %var.table, align 8
  %var.load158 = load ptr, ptr %var.locals, align 8
  %a.load159 = load ptr, ptr %var.locals, align 8
  %a.null160 = icmp eq ptr %a.load159, null
  br i1 %a.null160, label %a.create161, label %a.after162

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
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit66
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len75, %eq.rhs.len76
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.exit66
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %eq.lhs.data77 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data77, ptr %eq.rhs.data, i64 %eq.lhs.len75)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then78, label %choice.else79

choice.then78:                                    ; preds = %str.eq.merge
  %var.load81 = load ptr, ptr %var.expanded, align 8
  %var.load82 = load ptr, ptr %var.table, align 8
  %var.load83 = load ptr, ptr %var.locals, align 8
  %a.load84 = load ptr, ptr %var.locals, align 8
  %a.null85 = icmp eq ptr %a.load84, null
  br i1 %a.null85, label %a.create86, label %a.after87

choice.else79:                                    ; preds = %str.eq.merge
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 16)
  %tag.gep100 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc99, i32 0, i32 0
  store i64 5, ptr %tag.gep100, align 8
  %pay.gep101 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc99, i32 0, i32 1
  %var.load102 = load ptr, ptr %var.b, align 8
  %fld.gep103 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load102, i32 0, i32 0
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %var.load105 = load ptr, ptr %var.b, align 8
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load105, i32 0, i32 1
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.table, align 8
  %var.load109 = load ptr, ptr %var.locals, align 8
  %a.load110 = load ptr, ptr %var.locals, align 8
  %a.null111 = icmp eq ptr %a.load110, null
  br i1 %a.null111, label %a.create112, label %a.after113

choice.exit80:                                    ; preds = %a.after132, %a.after87
  %choice.res146 = phi ptr [ %call.res97, %a.after87 ], [ %enum.alloc99, %a.after132 ]
  br label %choice.exit28

a.create86:                                       ; preds = %choice.then78
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 24)
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 128)
  %a.len.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 0
  store i64 0, ptr %a.len.gep92, align 8
  %a.data.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 1
  store ptr %a.buf91, ptr %a.data.gep93, align 8
  %a.cap.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 2
  store i64 16, ptr %a.cap.gep94, align 8
  store ptr %a.create89, ptr %var.locals, align 8
  br label %a.after87

a.after87:                                        ; preds = %a.create86, %choice.then78
  %a.load295 = load ptr, ptr %var.locals, align 8
  %var.load96 = load ptr, ptr %var.cur_mod, align 8
  %call.res97 = call ptr @"overloads::walk"(ptr %var.load81, ptr %var.load82, ptr %a.load295, ptr %var.load96)
  br label %choice.exit80

a.create112:                                      ; preds = %choice.else79
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 128)
  %a.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 0
  store i64 0, ptr %a.len.gep118, align 8
  %a.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 1
  store ptr %a.buf117, ptr %a.data.gep119, align 8
  %a.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 2
  store i64 16, ptr %a.cap.gep120, align 8
  store ptr %a.create115, ptr %var.locals, align 8
  br label %a.after113

a.after113:                                       ; preds = %a.create112, %choice.else79
  %a.load2121 = load ptr, ptr %var.locals, align 8
  %var.load122 = load ptr, ptr %var.cur_mod, align 8
  %call.res123 = call ptr @"overloads::walk"(ptr %fld.load107, ptr %var.load108, ptr %a.load2121, ptr %var.load122)
  %var.load124 = load ptr, ptr %var.b, align 8
  %fld.gep125 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load124, i32 0, i32 2
  %fld.load126 = load ptr, ptr %fld.gep125, align 8
  %var.load127 = load ptr, ptr %var.table, align 8
  %var.load128 = load ptr, ptr %var.locals, align 8
  %a.load129 = load ptr, ptr %var.locals, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

a.create131:                                      ; preds = %a.after113
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
  store ptr %a.create134, ptr %var.locals, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.after113
  %a.load2140 = load ptr, ptr %var.locals, align 8
  %var.load141 = load ptr, ptr %var.cur_mod, align 8
  %call.res142 = call ptr @"overloads::walk"(ptr %fld.load126, ptr %var.load127, ptr %a.load2140, ptr %var.load141)
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load104, ptr %rec.fld, align 8
  %rec.fld144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res123, ptr %rec.fld144, align 8
  %rec.fld145 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res142, ptr %rec.fld145, align 8
  store ptr %rec.alloc, ptr %pay.gep101, align 8
  br label %choice.exit80

a.create161:                                      ; preds = %choice.next30
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 24)
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 128)
  %a.len.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 0
  store i64 0, ptr %a.len.gep167, align 8
  %a.data.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 1
  store ptr %a.buf166, ptr %a.data.gep168, align 8
  %a.cap.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 2
  store i64 16, ptr %a.cap.gep169, align 8
  store ptr %a.create164, ptr %var.locals, align 8
  br label %a.after162

a.after162:                                       ; preds = %a.create161, %choice.next30
  %a.load2170 = load ptr, ptr %var.locals, align 8
  %var.load171 = load ptr, ptr %var.cur_mod, align 8
  %call.res172 = call ptr @"overloads::walk"(ptr %fld.load156, ptr %var.load157, ptr %a.load2170, ptr %var.load171)
  %var.load173 = load ptr, ptr %var.b, align 8
  %fld.gep174 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load173, i32 0, i32 2
  %fld.load175 = load ptr, ptr %fld.gep174, align 8
  %var.load176 = load ptr, ptr %var.table, align 8
  %var.load177 = load ptr, ptr %var.locals, align 8
  %a.load178 = load ptr, ptr %var.locals, align 8
  %a.null179 = icmp eq ptr %a.load178, null
  br i1 %a.null179, label %a.create180, label %a.after181

a.create180:                                      ; preds = %a.after162
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 0
  store i64 0, ptr %a.len.gep186, align 8
  %a.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf185, ptr %a.data.gep187, align 8
  %a.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep188, align 8
  store ptr %a.create183, ptr %var.locals, align 8
  br label %a.after181

a.after181:                                       ; preds = %a.create180, %a.after162
  %a.load2189 = load ptr, ptr %var.locals, align 8
  %var.load190 = load ptr, ptr %var.cur_mod, align 8
  %call.res191 = call ptr @"overloads::walk"(ptr %fld.load175, ptr %var.load176, ptr %a.load2189, ptr %var.load190)
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld194 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc193, i32 0, i32 0
  store ptr %fld.load153, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc193, i32 0, i32 1
  store ptr %call.res172, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc193, i32 0, i32 2
  store ptr %call.res191, ptr %rec.fld196, align 8
  store ptr %rec.alloc193, ptr %pay.gep150, align 8
  br label %choice.exit28

choice.case198:                                   ; preds = %choice.next20
  %pay.gep203 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr204 = load ptr, ptr %pay.gep203, align 8
  store ptr %payload.ptr204, ptr %var._205, align 8
  store ptr %payload.ptr204, ptr %var.u, align 8
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 16)
  %tag.gep208 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc207, i32 0, i32 0
  store i64 24, ptr %tag.gep208, align 8
  %pay.gep209 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc207, i32 0, i32 1
  %var.load210 = load ptr, ptr %var.u, align 8
  %fld.gep211 = getelementptr inbounds { ptr, ptr }, ptr %var.load210, i32 0, i32 0
  %fld.load212 = load ptr, ptr %fld.gep211, align 8
  %var.load213 = load ptr, ptr %var.u, align 8
  %fld.gep214 = getelementptr inbounds { ptr, ptr }, ptr %var.load213, i32 0, i32 1
  %fld.load215 = load ptr, ptr %fld.gep214, align 8
  %var.load216 = load ptr, ptr %var.table, align 8
  %var.load217 = load ptr, ptr %var.locals, align 8
  %a.load218 = load ptr, ptr %var.locals, align 8
  %a.null219 = icmp eq ptr %a.load218, null
  br i1 %a.null219, label %a.create220, label %a.after221

choice.next199:                                   ; preds = %choice.next20
  %tag.gep238 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id239 = load i64, ptr %tag.gep238, align 8
  %tag.match240 = icmp eq i64 %tag.id239, 14
  br i1 %tag.match240, label %choice.case236, label %choice.next237

a.create220:                                      ; preds = %choice.case198
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 24)
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 128)
  %a.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 0
  store i64 0, ptr %a.len.gep226, align 8
  %a.data.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 1
  store ptr %a.buf225, ptr %a.data.gep227, align 8
  %a.cap.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 2
  store i64 16, ptr %a.cap.gep228, align 8
  store ptr %a.create223, ptr %var.locals, align 8
  br label %a.after221

a.after221:                                       ; preds = %a.create220, %choice.case198
  %a.load2229 = load ptr, ptr %var.locals, align 8
  %var.load230 = load ptr, ptr %var.cur_mod, align 8
  %call.res231 = call ptr @"overloads::walk"(ptr %fld.load215, ptr %var.load216, ptr %a.load2229, ptr %var.load230)
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld234 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc233, i32 0, i32 0
  store ptr %fld.load212, ptr %rec.fld234, align 8
  %rec.fld235 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc233, i32 0, i32 1
  store ptr %call.res231, ptr %rec.fld235, align 8
  store ptr %rec.alloc233, ptr %pay.gep209, align 8
  br label %choice.exit

choice.case236:                                   ; preds = %choice.next199
  %pay.gep241 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr242 = load ptr, ptr %pay.gep241, align 8
  store ptr %payload.ptr242, ptr %var._243, align 8
  store ptr %payload.ptr242, ptr %var.fe, align 8
  %var.load244 = load ptr, ptr %var.locals, align 8
  %a.load245 = load ptr, ptr %var.locals, align 8
  %a.null246 = icmp eq ptr %a.load245, null
  br i1 %a.null246, label %a.create247, label %a.after248

choice.next237:                                   ; preds = %choice.next199
  %tag.gep442 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id443 = load i64, ptr %tag.gep442, align 8
  %tag.match444 = icmp eq i64 %tag.id443, 8
  br i1 %tag.match444, label %choice.case440, label %choice.next441

a.create247:                                      ; preds = %choice.case236
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 24)
  %arena.cur251 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 128)
  %a.len.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 0
  store i64 0, ptr %a.len.gep253, align 8
  %a.data.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 1
  store ptr %a.buf252, ptr %a.data.gep254, align 8
  %a.cap.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 2
  store i64 16, ptr %a.cap.gep255, align 8
  store ptr %a.create250, ptr %var.locals, align 8
  br label %a.after248

a.after248:                                       ; preds = %a.create247, %choice.case236
  %a.load2256 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2256, i32 0, i32 0
  %a.copy.len257 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2256, i32 0, i32 2
  %a.copy.cap258 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2256, i32 0, i32 1
  %a.copy.data259 = load ptr, ptr %a.copy.data, align 8
  %arena.cur260 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap258, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len257, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data259, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len257, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap258, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load262 = load ptr, ptr %var.fn_locals, align 8
  %a.null263 = icmp eq ptr %a.load262, null
  br i1 %a.null263, label %a.create264, label %a.after265

a.create264:                                      ; preds = %a.after248
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 24)
  %arena.cur268 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 128)
  %a.len.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 0
  store i64 0, ptr %a.len.gep270, align 8
  %a.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 1
  store ptr %a.buf269, ptr %a.data.gep271, align 8
  %a.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep272, align 8
  store ptr %a.create267, ptr %var.fn_locals, align 8
  br label %a.after265

a.after265:                                       ; preds = %a.create264, %a.after248
  %a.load2273 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after265
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 0
  %a.len274 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 2
  %a.cap275 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len274, %a.cap275
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2273)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 1
  %a.cur.data276 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 0
  %a.cur.len277 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data276, i64 %a.cur.len277
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len277, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load278 = load ptr, ptr %var.fe, align 8
  %fld.gep279 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load278, i32 0, i32 0
  %fld.load280 = load ptr, ptr %fld.gep279, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load280, i32 0, i32 0
  %arr.cycle.len281 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load280, i32 0, i32 1
  %arr.cycle.data282 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load ptr, ptr %var._243, align 8
  br label %loop.header.76

loop.header.76:                                   ; preds = %loop.latch.76, %a.store
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len281
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data282, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._283, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load284 = load ptr, ptr %var.p, align 8
  %eq.lhs.len285 = getelementptr inbounds { i64, ptr }, ptr %var.load284, i32 0, i32 0
  %eq.lhs.len286 = load i64, ptr %eq.lhs.len285, align 8
  %eq.lhs.len287 = and i64 %eq.lhs.len286, 281474976710655
  %eq.rhs.len288 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len289 = and i64 %eq.rhs.len288, 281474976710655
  %eq.len290 = icmp eq i64 %eq.lhs.len287, %eq.rhs.len289
  br i1 %eq.len290, label %str.eq.then291, label %str.eq.else292

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit302
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store ptr %cycle.prev.u, ptr %var._243, align 8
  %var.load331 = load ptr, ptr %var.fe, align 8
  %fld.gep332 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load331, i32 0, i32 1
  %fld.load333 = load ptr, ptr %fld.gep332, align 8
  %arr.cycle.len334 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load333, i32 0, i32 0
  %arr.cycle.len335 = load i64, ptr %arr.cycle.len334, align 8
  %arr.cycle.data336 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load333, i32 0, i32 1
  %arr.cycle.data337 = load ptr, ptr %arr.cycle.data336, align 8
  store i64 0, ptr %loop.idx.77, align 8
  %cycle.prev.u338 = load ptr, ptr %var._243, align 8
  br label %loop.header.77

str.eq.then291:                                   ; preds = %loop.body.76
  %eq.lhs.data294 = getelementptr inbounds { i64, ptr }, ptr %var.load284, i32 0, i32 1
  %eq.lhs.data295 = load ptr, ptr %eq.lhs.data294, align 8
  %eq.rhs.data296 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp297 = call i32 @memcmp(ptr %eq.lhs.data295, ptr %eq.rhs.data296, i64 %eq.lhs.len287)
  %eq.cmp.zero298 = icmp eq i32 %eq.memcmp297, 0
  br label %str.eq.merge293

str.eq.else292:                                   ; preds = %loop.body.76
  br label %str.eq.merge293

str.eq.merge293:                                  ; preds = %str.eq.else292, %str.eq.then291
  %str.eq.result299 = phi i1 [ %eq.cmp.zero298, %str.eq.then291 ], [ false, %str.eq.else292 ]
  %str.neq300 = xor i1 %str.eq.result299, true
  br i1 %str.neq300, label %choice.then301, label %choice.exit302

choice.then301:                                   ; preds = %str.eq.merge293
  %var.load303 = load ptr, ptr %var.p, align 8
  %a.load304 = load ptr, ptr %var.fn_locals, align 8
  %a.null305 = icmp eq ptr %a.load304, null
  br i1 %a.null305, label %a.create306, label %a.after307

choice.exit302:                                   ; preds = %a.store318, %str.eq.merge293
  br label %loop.latch.76

a.create306:                                      ; preds = %choice.then301
  %arena.cur308 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 24)
  %arena.cur310 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 128)
  %a.len.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 0
  store i64 0, ptr %a.len.gep312, align 8
  %a.data.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 1
  store ptr %a.buf311, ptr %a.data.gep313, align 8
  %a.cap.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 2
  store i64 16, ptr %a.cap.gep314, align 8
  store ptr %a.create309, ptr %var.fn_locals, align 8
  br label %a.after307

a.after307:                                       ; preds = %a.create306, %choice.then301
  %a.load2315 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check316

a.check316:                                       ; preds = %a.after307
  %a.len319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2315, i32 0, i32 0
  %a.len320 = load i64, ptr %a.len319, align 8
  %a.cap321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2315, i32 0, i32 2
  %a.cap322 = load i64, ptr %a.cap321, align 8
  %a.needs.grow323 = icmp eq i64 %a.len320, %a.cap322
  br i1 %a.needs.grow323, label %a.grow317, label %a.store318

a.grow317:                                        ; preds = %a.check316
  call void @dva_array_grow(ptr %a.load2315)
  br label %a.store318

a.store318:                                       ; preds = %a.grow317, %a.check316
  %a.cur.data324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2315, i32 0, i32 1
  %a.cur.data325 = load ptr, ptr %a.cur.data324, align 8
  %a.cur.len326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2315, i32 0, i32 0
  %a.cur.len327 = load i64, ptr %a.cur.len326, align 8
  %a.elem.gep328 = getelementptr i64, ptr %a.cur.data325, i64 %a.cur.len327
  %slot.p2i = ptrtoint ptr %var.load303 to i64
  store i64 %slot.p2i, ptr %a.elem.gep328, align 8
  %a.next.len329 = add i64 %a.cur.len327, 1
  %b.len.gep330 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2315, i32 0, i32 0
  store i64 %a.next.len329, ptr %b.len.gep330, align 8
  br label %choice.exit302

loop.header.77:                                   ; preds = %loop.latch.77, %loop.exit.76
  %counter.load339 = load i64, ptr %loop.idx.77, align 8
  %loop.cond340 = icmp slt i64 %counter.load339, %arr.cycle.len335
  br i1 %loop.cond340, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i341 = sub i64 %counter.load339, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep342 = getelementptr i64, ptr %arr.cycle.data337, i64 %counter.load339
  %arr.elem.raw343 = load i64, ptr %arr.elem.gep342, align 8
  %slot.i2p344 = inttoptr i64 %arr.elem.raw343 to ptr
  store i64 %loop.rel.i341, ptr %var._i345, align 8
  store ptr %slot.i2p344, ptr %var._346, align 8
  store ptr %slot.i2p344, ptr %var.cp, align 8
  %var.load347 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len348 = getelementptr inbounds { i64, ptr }, ptr %var.load347, i32 0, i32 0
  %eq.lhs.len349 = load i64, ptr %eq.lhs.len348, align 8
  %eq.lhs.len350 = and i64 %eq.lhs.len349, 281474976710655
  %eq.rhs.len351 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len352 = and i64 %eq.rhs.len351, 281474976710655
  %eq.len353 = icmp eq i64 %eq.lhs.len350, %eq.rhs.len352
  br i1 %eq.len353, label %str.eq.then354, label %str.eq.else355

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit365
  %step.val395 = load i64, ptr %loop.step.77, align 8
  %loop.next396 = add i64 %counter.load339, %step.val395
  store i64 %loop.next396, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  store ptr %cycle.prev.u338, ptr %var._243, align 8
  %var.load397 = load ptr, ptr %var.fe, align 8
  %fld.gep398 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load397, i32 0, i32 2
  %fld.load399 = load ptr, ptr %fld.gep398, align 8
  %var.load400 = load ptr, ptr %var.table, align 8
  %var.load401 = load ptr, ptr %var.fn_locals, align 8
  %a.load402 = load ptr, ptr %var.fn_locals, align 8
  %a.null403 = icmp eq ptr %a.load402, null
  br i1 %a.null403, label %a.create404, label %a.after405

str.eq.then354:                                   ; preds = %loop.body.77
  %eq.lhs.data357 = getelementptr inbounds { i64, ptr }, ptr %var.load347, i32 0, i32 1
  %eq.lhs.data358 = load ptr, ptr %eq.lhs.data357, align 8
  %eq.rhs.data359 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp360 = call i32 @memcmp(ptr %eq.lhs.data358, ptr %eq.rhs.data359, i64 %eq.lhs.len350)
  %eq.cmp.zero361 = icmp eq i32 %eq.memcmp360, 0
  br label %str.eq.merge356

str.eq.else355:                                   ; preds = %loop.body.77
  br label %str.eq.merge356

str.eq.merge356:                                  ; preds = %str.eq.else355, %str.eq.then354
  %str.eq.result362 = phi i1 [ %eq.cmp.zero361, %str.eq.then354 ], [ false, %str.eq.else355 ]
  %str.neq363 = xor i1 %str.eq.result362, true
  br i1 %str.neq363, label %choice.then364, label %choice.exit365

choice.then364:                                   ; preds = %str.eq.merge356
  %var.load366 = load ptr, ptr %var.cp, align 8
  %a.load367 = load ptr, ptr %var.fn_locals, align 8
  %a.null368 = icmp eq ptr %a.load367, null
  br i1 %a.null368, label %a.create369, label %a.after370

choice.exit365:                                   ; preds = %a.store381, %str.eq.merge356
  br label %loop.latch.77

a.create369:                                      ; preds = %choice.then364
  %arena.cur371 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 24)
  %arena.cur373 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 128)
  %a.len.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create372, i32 0, i32 0
  store i64 0, ptr %a.len.gep375, align 8
  %a.data.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create372, i32 0, i32 1
  store ptr %a.buf374, ptr %a.data.gep376, align 8
  %a.cap.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create372, i32 0, i32 2
  store i64 16, ptr %a.cap.gep377, align 8
  store ptr %a.create372, ptr %var.fn_locals, align 8
  br label %a.after370

a.after370:                                       ; preds = %a.create369, %choice.then364
  %a.load2378 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check379

a.check379:                                       ; preds = %a.after370
  %a.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2378, i32 0, i32 0
  %a.len383 = load i64, ptr %a.len382, align 8
  %a.cap384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2378, i32 0, i32 2
  %a.cap385 = load i64, ptr %a.cap384, align 8
  %a.needs.grow386 = icmp eq i64 %a.len383, %a.cap385
  br i1 %a.needs.grow386, label %a.grow380, label %a.store381

a.grow380:                                        ; preds = %a.check379
  call void @dva_array_grow(ptr %a.load2378)
  br label %a.store381

a.store381:                                       ; preds = %a.grow380, %a.check379
  %a.cur.data387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2378, i32 0, i32 1
  %a.cur.data388 = load ptr, ptr %a.cur.data387, align 8
  %a.cur.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2378, i32 0, i32 0
  %a.cur.len390 = load i64, ptr %a.cur.len389, align 8
  %a.elem.gep391 = getelementptr i64, ptr %a.cur.data388, i64 %a.cur.len390
  %slot.p2i392 = ptrtoint ptr %var.load366 to i64
  store i64 %slot.p2i392, ptr %a.elem.gep391, align 8
  %a.next.len393 = add i64 %a.cur.len390, 1
  %b.len.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2378, i32 0, i32 0
  store i64 %a.next.len393, ptr %b.len.gep394, align 8
  br label %choice.exit365

a.create404:                                      ; preds = %loop.exit.77
  %arena.cur406 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create407 = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 24)
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 128)
  %a.len.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 0
  store i64 0, ptr %a.len.gep410, align 8
  %a.data.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 1
  store ptr %a.buf409, ptr %a.data.gep411, align 8
  %a.cap.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 2
  store i64 16, ptr %a.cap.gep412, align 8
  store ptr %a.create407, ptr %var.fn_locals, align 8
  br label %a.after405

a.after405:                                       ; preds = %a.create404, %loop.exit.77
  %a.load2413 = load ptr, ptr %var.fn_locals, align 8
  %var.load414 = load ptr, ptr %var.cur_mod, align 8
  %call.res415 = call ptr @"overloads::walk"(ptr %fld.load399, ptr %var.load400, ptr %a.load2413, ptr %var.load414)
  store ptr %call.res415, ptr %var.new_body, align 8
  %arena.cur416 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc417 = call ptr @dva_arena_alloc(ptr %arena.cur416, i64 16)
  %tag.gep418 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc417, i32 0, i32 0
  store i64 14, ptr %tag.gep418, align 8
  %pay.gep419 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc417, i32 0, i32 1
  %var.load420 = load ptr, ptr %var.fe, align 8
  %fld.gep421 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load420, i32 0, i32 0
  %fld.load422 = load ptr, ptr %fld.gep421, align 8
  %var.load423 = load ptr, ptr %var.fe, align 8
  %fld.gep424 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load423, i32 0, i32 1
  %fld.load425 = load ptr, ptr %fld.gep424, align 8
  %var.load426 = load ptr, ptr %var.new_body, align 8
  %var.load427 = load ptr, ptr %var.fe, align 8
  %fld.gep428 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load427, i32 0, i32 3
  %fld.load429 = load i64, ptr %fld.gep428, align 8
  %var.load430 = load ptr, ptr %var.fe, align 8
  %fld.gep431 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load430, i32 0, i32 4
  %fld.load432 = load i64, ptr %fld.gep431, align 8
  %arena.cur433 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc434 = call ptr @dva_arena_alloc(ptr %arena.cur433, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld435 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc434, i32 0, i32 0
  store ptr %fld.load422, ptr %rec.fld435, align 8
  %rec.fld436 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc434, i32 0, i32 1
  store ptr %fld.load425, ptr %rec.fld436, align 8
  %rec.fld437 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc434, i32 0, i32 2
  store ptr %var.load426, ptr %rec.fld437, align 8
  %rec.fld438 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc434, i32 0, i32 3
  store i64 %fld.load429, ptr %rec.fld438, align 8
  %rec.fld439 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc434, i32 0, i32 4
  store i64 %fld.load432, ptr %rec.fld439, align 8
  store ptr %rec.alloc434, ptr %pay.gep419, align 8
  br label %choice.exit

choice.case440:                                   ; preds = %choice.next237
  %pay.gep445 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr446 = load ptr, ptr %pay.gep445, align 8
  store ptr %payload.ptr446, ptr %var._447, align 8
  store ptr %payload.ptr446, ptr %var.be, align 8
  %var.load448 = load ptr, ptr %var.locals, align 8
  %a.load449 = load ptr, ptr %var.locals, align 8
  %a.null450 = icmp eq ptr %a.load449, null
  br i1 %a.null450, label %a.create451, label %a.after452

choice.next441:                                   ; preds = %choice.next237
  %tag.gep653 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id654 = load i64, ptr %tag.gep653, align 8
  %tag.match655 = icmp eq i64 %tag.id654, 7
  br i1 %tag.match655, label %choice.case651, label %choice.next652

a.create451:                                      ; preds = %choice.case440
  %arena.cur453 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 24)
  %arena.cur455 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 128)
  %a.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 0
  store i64 0, ptr %a.len.gep457, align 8
  %a.data.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 1
  store ptr %a.buf456, ptr %a.data.gep458, align 8
  %a.cap.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 2
  store i64 16, ptr %a.cap.gep459, align 8
  store ptr %a.create454, ptr %var.locals, align 8
  br label %a.after452

a.after452:                                       ; preds = %a.create451, %choice.case440
  %a.load2460 = load ptr, ptr %var.locals, align 8
  %a.copy.len461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 0
  %a.copy.len462 = load i64, ptr %a.copy.len461, align 8
  %a.copy.cap463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 2
  %a.copy.cap464 = load i64, ptr %a.copy.cap463, align 8
  %a.copy.data465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 1
  %a.copy.data466 = load ptr, ptr %a.copy.data465, align 8
  %arena.cur467 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy468 = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 24)
  %a.copy.buflen469 = add i64 %a.copy.cap464, 1
  %a.copy.bufsize470 = mul i64 %a.copy.buflen469, 8
  %arena.cur471 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.copy.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 %a.copy.bufsize470)
  %a.copy.copylen473 = mul i64 %a.copy.len462, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf472, ptr align 1 %a.copy.data466, i64 %a.copy.copylen473, i1 false)
  %a.copy.len.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy468, i32 0, i32 0
  store i64 %a.copy.len462, ptr %a.copy.len.gep474, align 8
  %a.copy.data.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy468, i32 0, i32 1
  store ptr %a.copy.buf472, ptr %a.copy.data.gep475, align 8
  %a.copy.cap.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy468, i32 0, i32 2
  store i64 %a.copy.cap464, ptr %a.copy.cap.gep476, align 8
  store ptr %a.copy468, ptr %var.blk_locals, align 8
  %arena.cur477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 24)
  %arena.cur478 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf479 = call ptr @dva_arena_alloc(ptr %arena.cur478, i64 128)
  %a.len.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep480, align 8
  %a.data.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf479, ptr %a.data.gep481, align 8
  %a.cap.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep482, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load483 = load ptr, ptr %var.be, align 8
  %a.load484 = load ptr, ptr %var.be, align 8
  %a.null485 = icmp eq ptr %a.load484, null
  br i1 %a.null485, label %a.create486, label %a.after487

a.create486:                                      ; preds = %a.after452
  %arena.cur488 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 24)
  %arena.cur490 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 128)
  %a.len.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 0
  store i64 0, ptr %a.len.gep492, align 8
  %a.data.gep493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 1
  store ptr %a.buf491, ptr %a.data.gep493, align 8
  %a.cap.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 2
  store i64 16, ptr %a.cap.gep494, align 8
  store ptr %a.create489, ptr %var.be, align 8
  br label %a.after487

a.after487:                                       ; preds = %a.create486, %a.after452
  %a.load2495 = load ptr, ptr %var.be, align 8
  %arr.cycle.len496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2495, i32 0, i32 0
  %arr.cycle.len497 = load i64, ptr %arr.cycle.len496, align 8
  %arr.cycle.data498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2495, i32 0, i32 1
  %arr.cycle.data499 = load ptr, ptr %arr.cycle.data498, align 8
  store i64 0, ptr %loop.idx.78, align 8
  %cycle.prev.u500 = load ptr, ptr %var._447, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after487
  %counter.load501 = load i64, ptr %loop.idx.78, align 8
  %loop.cond502 = icmp slt i64 %counter.load501, %arr.cycle.len497
  br i1 %loop.cond502, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i503 = sub i64 %counter.load501, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep504 = getelementptr i64, ptr %arr.cycle.data499, i64 %counter.load501
  %arr.elem.raw505 = load i64, ptr %arr.elem.gep504, align 8
  %slot.i2p506 = inttoptr i64 %arr.elem.raw505 to ptr
  store i64 %loop.rel.i503, ptr %var._i507, align 8
  store ptr %slot.i2p506, ptr %var._508, align 8
  store ptr %slot.i2p506, ptr %var.child, align 8
  %var.load509 = load ptr, ptr %var.child, align 8
  %var.load510 = load ptr, ptr %var.table, align 8
  %var.load511 = load ptr, ptr %var.blk_locals, align 8
  %a.load512 = load ptr, ptr %var.blk_locals, align 8
  %a.null513 = icmp eq ptr %a.load512, null
  br i1 %a.null513, label %a.create514, label %a.after515

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit555
  %step.val632 = load i64, ptr %loop.step.78, align 8
  %loop.next633 = add i64 %counter.load501, %step.val632
  store i64 %loop.next633, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  store ptr %cycle.prev.u500, ptr %var._447, align 8
  %arena.cur634 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc635 = call ptr @dva_arena_alloc(ptr %arena.cur634, i64 16)
  %tag.gep636 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc635, i32 0, i32 0
  store i64 8, ptr %tag.gep636, align 8
  %pay.gep637 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc635, i32 0, i32 1
  %var.load638 = load ptr, ptr %var.new_exprs, align 8
  %a.load639 = load ptr, ptr %var.new_exprs, align 8
  %a.null640 = icmp eq ptr %a.load639, null
  br i1 %a.null640, label %a.create641, label %a.after642

a.create514:                                      ; preds = %loop.body.78
  %arena.cur516 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create517 = call ptr @dva_arena_alloc(ptr %arena.cur516, i64 24)
  %arena.cur518 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf519 = call ptr @dva_arena_alloc(ptr %arena.cur518, i64 128)
  %a.len.gep520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create517, i32 0, i32 0
  store i64 0, ptr %a.len.gep520, align 8
  %a.data.gep521 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create517, i32 0, i32 1
  store ptr %a.buf519, ptr %a.data.gep521, align 8
  %a.cap.gep522 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create517, i32 0, i32 2
  store i64 16, ptr %a.cap.gep522, align 8
  store ptr %a.create517, ptr %var.blk_locals, align 8
  br label %a.after515

a.after515:                                       ; preds = %a.create514, %loop.body.78
  %a.load2523 = load ptr, ptr %var.blk_locals, align 8
  %var.load524 = load ptr, ptr %var.cur_mod, align 8
  %call.res525 = call ptr @"overloads::walk"(ptr %var.load509, ptr %var.load510, ptr %a.load2523, ptr %var.load524)
  %a.load526 = load ptr, ptr %var.new_exprs, align 8
  %a.null527 = icmp eq ptr %a.load526, null
  br i1 %a.null527, label %a.create528, label %a.after529

a.create528:                                      ; preds = %a.after515
  %arena.cur530 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create531 = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 24)
  %arena.cur532 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 128)
  %a.len.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 0
  store i64 0, ptr %a.len.gep534, align 8
  %a.data.gep535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 1
  store ptr %a.buf533, ptr %a.data.gep535, align 8
  %a.cap.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 2
  store i64 16, ptr %a.cap.gep536, align 8
  store ptr %a.create531, ptr %var.new_exprs, align 8
  br label %a.after529

a.after529:                                       ; preds = %a.create528, %a.after515
  %a.load2537 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check538

a.check538:                                       ; preds = %a.after529
  %a.len541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 0
  %a.len542 = load i64, ptr %a.len541, align 8
  %a.cap543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 2
  %a.cap544 = load i64, ptr %a.cap543, align 8
  %a.needs.grow545 = icmp eq i64 %a.len542, %a.cap544
  br i1 %a.needs.grow545, label %a.grow539, label %a.store540

a.grow539:                                        ; preds = %a.check538
  call void @dva_array_grow(ptr %a.load2537)
  br label %a.store540

a.store540:                                       ; preds = %a.grow539, %a.check538
  %a.cur.data546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 1
  %a.cur.data547 = load ptr, ptr %a.cur.data546, align 8
  %a.cur.len548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 0
  %a.cur.len549 = load i64, ptr %a.cur.len548, align 8
  %a.elem.gep550 = getelementptr i64, ptr %a.cur.data547, i64 %a.cur.len549
  %slot.p2i551 = ptrtoint ptr %call.res525 to i64
  store i64 %slot.p2i551, ptr %a.elem.gep550, align 8
  %a.next.len552 = add i64 %a.cur.len549, 1
  %b.len.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 0
  store i64 %a.next.len552, ptr %b.len.gep553, align 8
  %var.load554 = load ptr, ptr %var.child, align 8
  %tag.gep558 = getelementptr inbounds { i64, ptr }, ptr %var.load554, i32 0, i32 0
  %tag.id559 = load i64, ptr %tag.gep558, align 8
  %tag.match560 = icmp eq i64 %tag.id559, 6
  br i1 %tag.match560, label %choice.case556, label %choice.next557

choice.exit555:                                   ; preds = %choice.next557, %choice.exit600
  br label %loop.latch.78

choice.case556:                                   ; preds = %a.store540
  %pay.gep561 = getelementptr inbounds { i64, ptr }, ptr %var.load554, i32 0, i32 1
  %payload.ptr562 = load ptr, ptr %pay.gep561, align 8
  store ptr %payload.ptr562, ptr %var._563, align 8
  store ptr %payload.ptr562, ptr %var.ca, align 8
  %var.load564 = load ptr, ptr %var.locals, align 8
  %a.load565 = load ptr, ptr %var.locals, align 8
  %a.null566 = icmp eq ptr %a.load565, null
  br i1 %a.null566, label %a.create567, label %a.after568

choice.next557:                                   ; preds = %a.store540
  br label %choice.exit555

a.create567:                                      ; preds = %choice.case556
  %arena.cur569 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create570 = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 24)
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 128)
  %a.len.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create570, i32 0, i32 0
  store i64 0, ptr %a.len.gep573, align 8
  %a.data.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create570, i32 0, i32 1
  store ptr %a.buf572, ptr %a.data.gep574, align 8
  %a.cap.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create570, i32 0, i32 2
  store i64 16, ptr %a.cap.gep575, align 8
  store ptr %a.create570, ptr %var.locals, align 8
  br label %a.after568

a.after568:                                       ; preds = %a.create567, %choice.case556
  %a.load2576 = load ptr, ptr %var.locals, align 8
  %call.res577 = call i1 @"overloads::contains"(ptr %a.load2576, ptr @str.7.struct)
  br i1 %call.res577, label %or.79.then, label %or.79.else

or.79.then:                                       ; preds = %a.after568
  br label %or.79.exit

or.79.else:                                       ; preds = %a.after568
  %var.load578 = load ptr, ptr %var.table, align 8
  %var.load579 = load ptr, ptr %var.ca, align 8
  %fld.gep580 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load579, i32 0, i32 0
  %fld.load581 = load ptr, ptr %fld.gep580, align 8
  %var.load582 = load ptr, ptr %var.cur_mod, align 8
  %call.res583 = call { i64, ptr } @"overloads::resolve_family_name"(ptr %var.load578, ptr %fld.load581, ptr %var.load582)
  store { i64, ptr } %call.res583, ptr %ret.ub.salloc, align 8
  %eq.lhs.len584 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %eq.lhs.len585 = load i64, ptr %eq.lhs.len584, align 8
  %eq.lhs.len586 = and i64 %eq.lhs.len585, 281474976710655
  %eq.rhs.len587 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len588 = and i64 %eq.rhs.len587, 281474976710655
  %eq.len589 = icmp eq i64 %eq.lhs.len586, %eq.rhs.len588
  br i1 %eq.len589, label %str.eq.then590, label %str.eq.else591

or.79.exit:                                       ; preds = %str.eq.merge592, %or.79.then
  %or.79.phi = phi i1 [ %call.res577, %or.79.then ], [ %str.eq.result598, %str.eq.merge592 ]
  br i1 %or.79.phi, label %choice.then599, label %choice.exit600

str.eq.then590:                                   ; preds = %or.79.else
  %eq.lhs.data593 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
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
  br label %choice.exit555

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

choice.case651:                                   ; preds = %choice.next441
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

choice.next652:                                   ; preds = %choice.next441
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
  %tag.gep1177 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1178 = load i64, ptr %tag.gep1177, align 8
  %tag.match1179 = icmp eq i64 %tag.id1178, 23
  br i1 %tag.match1179, label %choice.case1175, label %choice.next1176

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
  %str.tag975 = lshr i64 %eq.lhs.len973, 48
  %tag.immortal977 = icmp eq i64 %str.tag975, 0
  %active.gen978 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current979 = icmp eq i64 %str.tag975, %active.gen978
  %tag.fast.ok980 = or i1 %tag.immortal977, %tag.current979
  br i1 %tag.fast.ok980, label %str_ok976, label %tag.slow_check981

and.82.else:                                      ; preds = %a.after957
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge987
  %and.82.phi = phi i1 [ %str.neq994, %str.eq.merge987 ], [ %var.load968, %and.82.else ]
  br i1 %and.82.phi, label %choice.then995, label %choice.else996

str_ok976:                                        ; preds = %tag.slow_check981, %and.82.then
  %eq.rhs.len982 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len983 = and i64 %eq.rhs.len982, 281474976710655
  %eq.len984 = icmp eq i64 %eq.lhs.len974, %eq.rhs.len983
  br i1 %eq.len984, label %str.eq.then985, label %str.eq.else986

tag.slow_check981:                                ; preds = %and.82.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag975)
  br label %str_ok976

str.eq.then985:                                   ; preds = %str_ok976
  %eq.lhs.data988 = getelementptr inbounds { i64, ptr }, ptr %fld.load971, i32 0, i32 1
  %eq.lhs.data989 = load ptr, ptr %eq.lhs.data988, align 8
  %eq.rhs.data990 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp991 = call i32 @memcmp(ptr %eq.lhs.data989, ptr %eq.rhs.data990, i64 %eq.lhs.len974)
  %eq.cmp.zero992 = icmp eq i32 %eq.memcmp991, 0
  br label %str.eq.merge987

str.eq.else986:                                   ; preds = %str_ok976
  br label %str.eq.merge987

str.eq.merge987:                                  ; preds = %str.eq.else986, %str.eq.then985
  %str.eq.result993 = phi i1 [ %eq.cmp.zero992, %str.eq.then985 ], [ false, %str.eq.else986 ]
  %str.neq994 = xor i1 %str.eq.result993, true
  br label %and.82.exit

choice.then995:                                   ; preds = %and.82.exit
  %var.load998 = load ptr, ptr %var.a, align 8
  %fld.gep999 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load998, i32 0, i32 0
  %fld.load1000 = load ptr, ptr %fld.gep999, align 8
  %call.res1001 = call { i64, ptr } @"overloads::decl_module"(ptr %fld.load1000, i64 0)
  %arena.cur1002 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1003 = call ptr @dva_arena_alloc(ptr %arena.cur1002, i64 16)
  store { i64, ptr } %call.res1001, ptr %ret.ub.alloc1003, align 8
  br label %choice.exit997

choice.else996:                                   ; preds = %and.82.exit
  %var.load1004 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit997

choice.exit997:                                   ; preds = %choice.else996, %choice.then995
  %choice.res1005 = phi ptr [ %ret.ub.alloc1003, %choice.then995 ], [ %var.load1004, %choice.else996 ]
  store ptr %choice.res1005, ptr %var.eff_mod, align 8
  %var.load1006 = load ptr, ptr %var.a, align 8
  %fld.gep1007 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1006, i32 0, i32 5
  %fld.load1008 = load ptr, ptr %fld.gep1007, align 8
  %tag.gep1012 = getelementptr inbounds { i64, ptr }, ptr %fld.load1008, i32 0, i32 0
  %tag.id1013 = load i64, ptr %tag.gep1012, align 8
  %tag.match1014 = icmp eq i64 %tag.id1013, 14
  br i1 %tag.match1014, label %choice.case1010, label %choice.next1011

choice.exit1009:                                  ; preds = %choice.exit1025, %choice.case1010
  %choice.res1040 = phi i64 [ %a.len.query1021, %choice.case1010 ], [ %choice.res1039, %choice.exit1025 ]
  store i64 %choice.res1040, ptr %var.arity, align 8
  %var.load1041 = load ptr, ptr %var.table, align 8
  %var.load1042 = load ptr, ptr %var.a, align 8
  %fld.gep1043 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1042, i32 0, i32 0
  %fld.load1044 = load ptr, ptr %fld.gep1043, align 8
  %call.res1045 = call i1 @"overloads::is_family"(ptr %var.load1041, ptr %fld.load1044)
  br i1 %call.res1045, label %and.83.then, label %and.83.else

choice.case1010:                                  ; preds = %choice.exit997
  %pay.gep1015 = getelementptr inbounds { i64, ptr }, ptr %fld.load1008, i32 0, i32 1
  %payload.ptr1016 = load ptr, ptr %pay.gep1015, align 8
  store ptr %payload.ptr1016, ptr %var._1017, align 8
  store ptr %payload.ptr1016, ptr %var.fn, align 8
  %var.load1018 = load ptr, ptr %var.fn, align 8
  %fld.gep1019 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1018, i32 0, i32 0
  %fld.load1020 = load ptr, ptr %fld.gep1019, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1020, i32 0, i32 0
  %a.len.query1021 = load i64, ptr %a.len.query, align 8
  br label %choice.exit1009

choice.next1011:                                  ; preds = %choice.exit997
  %var.load1022 = load ptr, ptr %var.a, align 8
  %fld.gep1023 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1022, i32 0, i32 8
  %fld.load1024 = load ptr, ptr %fld.gep1023, align 8
  %tag.gep1028 = getelementptr inbounds { i64, ptr }, ptr %fld.load1024, i32 0, i32 0
  %tag.id1029 = load i64, ptr %tag.gep1028, align 8
  %tag.match1030 = icmp eq i64 %tag.id1029, 8
  br i1 %tag.match1030, label %choice.case1026, label %choice.next1027

choice.exit1025:                                  ; preds = %choice.next1027, %choice.case1026
  %choice.res1039 = phi i64 [ %a.len.query1038, %choice.case1026 ], [ -1, %choice.next1027 ]
  br label %choice.exit1009

choice.case1026:                                  ; preds = %choice.next1011
  %pay.gep1031 = getelementptr inbounds { i64, ptr }, ptr %fld.load1024, i32 0, i32 1
  %payload.ptr1032 = load ptr, ptr %pay.gep1031, align 8
  store ptr %payload.ptr1032, ptr %var._1033, align 8
  store ptr %payload.ptr1032, ptr %var.ft, align 8
  %var.load1034 = load ptr, ptr %var.ft, align 8
  %fld.gep1035 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1034, i32 0, i32 0
  %fld.load1036 = load ptr, ptr %fld.gep1035, align 8
  %a.len.query1037 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1036, i32 0, i32 0
  %a.len.query1038 = load i64, ptr %a.len.query1037, align 8
  br label %choice.exit1025

choice.next1027:                                  ; preds = %choice.next1011
  br label %choice.exit1025

and.83.then:                                      ; preds = %choice.exit1009
  %var.load1046 = load i1, ptr %var.is_top, align 1
  br label %and.83.exit

and.83.else:                                      ; preds = %choice.exit1009
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %var.load1046, %and.83.then ], [ %call.res1045, %and.83.else ]
  store i1 %and.83.phi, ptr %var.family, align 1
  %var.load1047 = load i1, ptr %var.family, align 1
  br i1 %var.load1047, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load1048 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1048, 0
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp, %and.84.then ], [ %var.load1047, %and.84.else ]
  br i1 %and.84.phi, label %choice.then1049, label %choice.else1050

choice.then1049:                                  ; preds = %and.84.exit
  %var.load1052 = load ptr, ptr %var.a, align 8
  %fld.gep1053 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1052, i32 0, i32 0
  %fld.load1054 = load ptr, ptr %fld.gep1053, align 8
  %var.load1055 = load i64, ptr %var.arity, align 8
  %call.res1056 = call { i64, ptr } @"overloads::symbol"(ptr %fld.load1054, i64 %var.load1055)
  %arena.cur1057 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1058 = call ptr @dva_arena_alloc(ptr %arena.cur1057, i64 16)
  store { i64, ptr } %call.res1056, ptr %ret.ub.alloc1058, align 8
  br label %choice.exit1051

choice.else1050:                                  ; preds = %and.84.exit
  %var.load1059 = load ptr, ptr %var.a, align 8
  %fld.gep1060 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1059, i32 0, i32 0
  %fld.load1061 = load ptr, ptr %fld.gep1060, align 8
  br label %choice.exit1051

choice.exit1051:                                  ; preds = %choice.else1050, %choice.then1049
  %choice.res1062 = phi ptr [ %ret.ub.alloc1058, %choice.then1049 ], [ %fld.load1061, %choice.else1050 ]
  store ptr %choice.res1062, ptr %var.new_name, align 8
  %var.load1063 = load ptr, ptr %var.a, align 8
  %fld.gep1064 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1063, i32 0, i32 8
  %fld.load1065 = load ptr, ptr %fld.gep1064, align 8
  %tag.gep1069 = getelementptr inbounds { i64, ptr }, ptr %fld.load1065, i32 0, i32 0
  %tag.id1070 = load i64, ptr %tag.gep1069, align 8
  %tag.match1071 = icmp eq i64 %tag.id1070, 8
  br i1 %tag.match1071, label %choice.case1067, label %choice.next1068

choice.exit1066:                                  ; preds = %choice.next1068, %choice.case1067
  %choice.res1083 = phi ptr [ %fld.load1077, %choice.case1067 ], [ %call.res1082, %choice.next1068 ]
  store ptr %choice.res1083, ptr %var.expected, align 8
  %var.load1084 = load ptr, ptr %var.a, align 8
  %fld.gep1085 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1084, i32 0, i32 5
  %fld.load1086 = load ptr, ptr %fld.gep1085, align 8
  %var.load1087 = load ptr, ptr %var.table, align 8
  %var.load1088 = load ptr, ptr %var.locals, align 8
  %a.load1089 = load ptr, ptr %var.locals, align 8
  %a.null1090 = icmp eq ptr %a.load1089, null
  br i1 %a.null1090, label %a.create1091, label %a.after1092

choice.case1067:                                  ; preds = %choice.exit1051
  %pay.gep1072 = getelementptr inbounds { i64, ptr }, ptr %fld.load1065, i32 0, i32 1
  %payload.ptr1073 = load ptr, ptr %pay.gep1072, align 8
  store ptr %payload.ptr1073, ptr %var._1074, align 8
  %var.load1075 = load ptr, ptr %var.a, align 8
  %fld.gep1076 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1075, i32 0, i32 8
  %fld.load1077 = load ptr, ptr %fld.gep1076, align 8
  br label %choice.exit1066

choice.next1068:                                  ; preds = %choice.exit1051
  %var.load1078 = load ptr, ptr %var.table, align 8
  %var.load1079 = load ptr, ptr %var.a, align 8
  %fld.gep1080 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1079, i32 0, i32 0
  %fld.load1081 = load ptr, ptr %fld.gep1080, align 8
  %call.res1082 = call ptr @"overloads::signature"(ptr %var.load1078, ptr %fld.load1081, i64 -1)
  br label %choice.exit1066

a.create1091:                                     ; preds = %choice.exit1066
  %arena.cur1093 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1094 = call ptr @dva_arena_alloc(ptr %arena.cur1093, i64 24)
  %arena.cur1095 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1096 = call ptr @dva_arena_alloc(ptr %arena.cur1095, i64 128)
  %a.len.gep1097 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1094, i32 0, i32 0
  store i64 0, ptr %a.len.gep1097, align 8
  %a.data.gep1098 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1094, i32 0, i32 1
  store ptr %a.buf1096, ptr %a.data.gep1098, align 8
  %a.cap.gep1099 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1094, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1099, align 8
  store ptr %a.create1094, ptr %var.locals, align 8
  br label %a.after1092

a.after1092:                                      ; preds = %a.create1091, %choice.exit1066
  %a.load21100 = load ptr, ptr %var.locals, align 8
  %var.load1101 = load ptr, ptr %var.eff_mod, align 8
  %call.res1102 = call ptr @"overloads::walk"(ptr %fld.load1086, ptr %var.load1087, ptr %a.load21100, ptr %var.load1101)
  %var.load1103 = load ptr, ptr %var.expected, align 8
  %var.load1104 = load ptr, ptr %var.table, align 8
  %var.load1105 = load ptr, ptr %var.locals, align 8
  %a.load1106 = load ptr, ptr %var.locals, align 8
  %a.null1107 = icmp eq ptr %a.load1106, null
  br i1 %a.null1107, label %a.create1108, label %a.after1109

a.create1108:                                     ; preds = %a.after1092
  %arena.cur1110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1111 = call ptr @dva_arena_alloc(ptr %arena.cur1110, i64 24)
  %arena.cur1112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1113 = call ptr @dva_arena_alloc(ptr %arena.cur1112, i64 128)
  %a.len.gep1114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1111, i32 0, i32 0
  store i64 0, ptr %a.len.gep1114, align 8
  %a.data.gep1115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1111, i32 0, i32 1
  store ptr %a.buf1113, ptr %a.data.gep1115, align 8
  %a.cap.gep1116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1116, align 8
  store ptr %a.create1111, ptr %var.locals, align 8
  br label %a.after1109

a.after1109:                                      ; preds = %a.create1108, %a.after1092
  %a.load21117 = load ptr, ptr %var.locals, align 8
  %var.load1118 = load ptr, ptr %var.eff_mod, align 8
  %call.res1119 = call ptr @"overloads::select_value"(ptr %call.res1102, ptr %var.load1103, ptr %var.load1104, ptr %a.load21117, ptr %var.load1118)
  store ptr %call.res1119, ptr %var.new_rhs, align 8
  %var.load1120 = load ptr, ptr %var.a, align 8
  %fld.gep1121 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1120, i32 0, i32 6
  %fld.load1122 = load ptr, ptr %fld.gep1121, align 8
  %var.load1123 = load ptr, ptr %var.table, align 8
  %var.load1124 = load ptr, ptr %var.locals, align 8
  %a.load1125 = load ptr, ptr %var.locals, align 8
  %a.null1126 = icmp eq ptr %a.load1125, null
  br i1 %a.null1126, label %a.create1127, label %a.after1128

a.create1127:                                     ; preds = %a.after1109
  %arena.cur1129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1130 = call ptr @dva_arena_alloc(ptr %arena.cur1129, i64 24)
  %arena.cur1131 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1132 = call ptr @dva_arena_alloc(ptr %arena.cur1131, i64 128)
  %a.len.gep1133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1130, i32 0, i32 0
  store i64 0, ptr %a.len.gep1133, align 8
  %a.data.gep1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1130, i32 0, i32 1
  store ptr %a.buf1132, ptr %a.data.gep1134, align 8
  %a.cap.gep1135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1130, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1135, align 8
  store ptr %a.create1130, ptr %var.locals, align 8
  br label %a.after1128

a.after1128:                                      ; preds = %a.create1127, %a.after1109
  %a.load21136 = load ptr, ptr %var.locals, align 8
  %var.load1137 = load ptr, ptr %var.eff_mod, align 8
  %call.res1138 = call ptr @"overloads::walk"(ptr %fld.load1122, ptr %var.load1123, ptr %a.load21136, ptr %var.load1137)
  store ptr %call.res1138, ptr %var.new_lhs, align 8
  %arena.cur1139 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1140 = call ptr @dva_arena_alloc(ptr %arena.cur1139, i64 16)
  %tag.gep1141 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1140, i32 0, i32 0
  store i64 6, ptr %tag.gep1141, align 8
  %pay.gep1142 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1140, i32 0, i32 1
  %var.load1143 = load ptr, ptr %var.new_name, align 8
  %var.load1144 = load ptr, ptr %var.a, align 8
  %fld.gep1145 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1144, i32 0, i32 1
  %fld.load1146 = load i1, ptr %fld.gep1145, align 1
  %var.load1147 = load ptr, ptr %var.a, align 8
  %fld.gep1148 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1147, i32 0, i32 2
  %fld.load1149 = load i1, ptr %fld.gep1148, align 1
  %var.load1150 = load ptr, ptr %var.a, align 8
  %fld.gep1151 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1150, i32 0, i32 3
  %fld.load1152 = load i1, ptr %fld.gep1151, align 1
  %var.load1153 = load ptr, ptr %var.a, align 8
  %fld.gep1154 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1153, i32 0, i32 4
  %fld.load1155 = load i1, ptr %fld.gep1154, align 1
  %var.load1156 = load ptr, ptr %var.new_rhs, align 8
  %var.load1157 = load ptr, ptr %var.new_lhs, align 8
  %var.load1158 = load ptr, ptr %var.a, align 8
  %fld.gep1159 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1158, i32 0, i32 7
  %fld.load1160 = load ptr, ptr %fld.gep1159, align 8
  %var.load1161 = load ptr, ptr %var.a, align 8
  %fld.gep1162 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1161, i32 0, i32 8
  %fld.load1163 = load ptr, ptr %fld.gep1162, align 8
  %arena.cur1164 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1165 = call ptr @dva_arena_alloc(ptr %arena.cur1164, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1166 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 0
  store ptr %var.load1143, ptr %rec.fld1166, align 8
  %rec.fld1167 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 1
  store i1 %fld.load1146, ptr %rec.fld1167, align 1
  %rec.fld1168 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 2
  store i1 %fld.load1149, ptr %rec.fld1168, align 1
  %rec.fld1169 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 3
  store i1 %fld.load1152, ptr %rec.fld1169, align 1
  %rec.fld1170 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 4
  store i1 %fld.load1155, ptr %rec.fld1170, align 1
  %rec.fld1171 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 5
  store ptr %var.load1156, ptr %rec.fld1171, align 8
  %rec.fld1172 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 6
  store ptr %var.load1157, ptr %rec.fld1172, align 8
  %rec.fld1173 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 7
  store ptr %fld.load1160, ptr %rec.fld1173, align 8
  %rec.fld1174 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1165, i32 0, i32 8
  store ptr %fld.load1163, ptr %rec.fld1174, align 8
  store ptr %rec.alloc1165, ptr %pay.gep1142, align 8
  br label %choice.exit

choice.case1175:                                  ; preds = %choice.next946
  %pay.gep1180 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1181 = load ptr, ptr %pay.gep1180, align 8
  store ptr %payload.ptr1181, ptr %var._1182, align 8
  store ptr %payload.ptr1181, ptr %var.td, align 8
  %var.load1183 = load ptr, ptr %var.td, align 8
  %fld.gep1184 = getelementptr inbounds { ptr, ptr }, ptr %var.load1183, i32 0, i32 1
  %fld.load1185 = load ptr, ptr %fld.gep1184, align 8
  %var.load1186 = load ptr, ptr %var.table, align 8
  %call.res1187 = call ptr @"overloads::keep_type"(ptr %fld.load1185, ptr %var.load1186)
  store ptr %call.res1187, ptr %var.new_ti, align 8
  %arena.cur1188 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1189 = call ptr @dva_arena_alloc(ptr %arena.cur1188, i64 16)
  %tag.gep1190 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1189, i32 0, i32 0
  store i64 23, ptr %tag.gep1190, align 8
  %pay.gep1191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1189, i32 0, i32 1
  %var.load1192 = load ptr, ptr %var.td, align 8
  %fld.gep1193 = getelementptr inbounds { ptr, ptr }, ptr %var.load1192, i32 0, i32 0
  %fld.load1194 = load ptr, ptr %fld.gep1193, align 8
  %var.load1195 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1196 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1197 = call ptr @dva_arena_alloc(ptr %arena.cur1196, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1198 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1197, i32 0, i32 0
  store ptr %fld.load1194, ptr %rec.fld1198, align 8
  %rec.fld1199 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1197, i32 0, i32 1
  store ptr %var.load1195, ptr %rec.fld1199, align 8
  store ptr %rec.alloc1197, ptr %pay.gep1191, align 8
  br label %choice.exit

choice.next1176:                                  ; preds = %choice.next946
  %tag.gep1202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1203 = load i64, ptr %tag.gep1202, align 8
  %tag.match1204 = icmp eq i64 %tag.id1203, 21
  br i1 %tag.match1204, label %choice.case1200, label %choice.next1201

choice.case1200:                                  ; preds = %choice.next1176
  %pay.gep1205 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1206 = load ptr, ptr %pay.gep1205, align 8
  store ptr %payload.ptr1206, ptr %var._1207, align 8
  store ptr %payload.ptr1206, ptr %var.f, align 8
  %var.load1208 = load ptr, ptr %var.f, align 8
  %fld.gep1209 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1208, i32 0, i32 3
  %fld.load1210 = load ptr, ptr %fld.gep1209, align 8
  %var.load1211 = load ptr, ptr %var.table, align 8
  %call.res1212 = call ptr @"overloads::keep_fparams"(ptr %fld.load1210, ptr %var.load1211)
  store ptr %call.res1212, ptr %var.new_params, align 8
  %var.load1213 = load ptr, ptr %var.f, align 8
  %fld.gep1214 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1213, i32 0, i32 5
  %fld.load1215 = load ptr, ptr %fld.gep1214, align 8
  %var.load1216 = load ptr, ptr %var.table, align 8
  %call.res1217 = call ptr @"overloads::keep_type"(ptr %fld.load1215, ptr %var.load1216)
  store ptr %call.res1217, ptr %var.new_ret_ti, align 8
  %arena.cur1218 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1219 = call ptr @dva_arena_alloc(ptr %arena.cur1218, i64 16)
  %tag.gep1220 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1219, i32 0, i32 0
  store i64 21, ptr %tag.gep1220, align 8
  %pay.gep1221 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1219, i32 0, i32 1
  %var.load1222 = load ptr, ptr %var.f, align 8
  %fld.gep1223 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1222, i32 0, i32 0
  %fld.load1224 = load ptr, ptr %fld.gep1223, align 8
  %var.load1225 = load ptr, ptr %var.f, align 8
  %fld.gep1226 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1225, i32 0, i32 1
  %fld.load1227 = load ptr, ptr %fld.gep1226, align 8
  %var.load1228 = load ptr, ptr %var.f, align 8
  %fld.gep1229 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1228, i32 0, i32 2
  %fld.load1230 = load ptr, ptr %fld.gep1229, align 8
  %var.load1231 = load ptr, ptr %var.new_params, align 8
  %a.load1232 = load ptr, ptr %var.new_params, align 8
  %a.null1233 = icmp eq ptr %a.load1232, null
  br i1 %a.null1233, label %a.create1234, label %a.after1235

choice.next1201:                                  ; preds = %choice.next1176
  %tag.gep1262 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1263 = load i64, ptr %tag.gep1262, align 8
  %tag.match1264 = icmp eq i64 %tag.id1263, 16
  br i1 %tag.match1264, label %choice.case1260, label %choice.next1261

a.create1234:                                     ; preds = %choice.case1200
  %arena.cur1236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1237 = call ptr @dva_arena_alloc(ptr %arena.cur1236, i64 24)
  %arena.cur1238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1239 = call ptr @dva_arena_alloc(ptr %arena.cur1238, i64 128)
  %a.len.gep1240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1237, i32 0, i32 0
  store i64 0, ptr %a.len.gep1240, align 8
  %a.data.gep1241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1237, i32 0, i32 1
  store ptr %a.buf1239, ptr %a.data.gep1241, align 8
  %a.cap.gep1242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1242, align 8
  store ptr %a.create1237, ptr %var.new_params, align 8
  br label %a.after1235

a.after1235:                                      ; preds = %a.create1234, %choice.case1200
  %a.load21243 = load ptr, ptr %var.new_params, align 8
  %var.load1244 = load ptr, ptr %var.f, align 8
  %fld.gep1245 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1244, i32 0, i32 4
  %fld.load1246 = load ptr, ptr %fld.gep1245, align 8
  %var.load1247 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1248 = load ptr, ptr %var.f, align 8
  %fld.gep1249 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1248, i32 0, i32 6
  %fld.load1250 = load i1, ptr %fld.gep1249, align 1
  %arena.cur1251 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1252 = call ptr @dva_arena_alloc(ptr %arena.cur1251, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1253 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 0
  store ptr %fld.load1224, ptr %rec.fld1253, align 8
  %rec.fld1254 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 1
  store ptr %fld.load1227, ptr %rec.fld1254, align 8
  %rec.fld1255 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 2
  store ptr %fld.load1230, ptr %rec.fld1255, align 8
  %rec.fld1256 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 3
  store ptr %a.load21243, ptr %rec.fld1256, align 8
  %rec.fld1257 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 4
  store ptr %fld.load1246, ptr %rec.fld1257, align 8
  %rec.fld1258 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 5
  store ptr %var.load1247, ptr %rec.fld1258, align 8
  %rec.fld1259 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1252, i32 0, i32 6
  store i1 %fld.load1250, ptr %rec.fld1259, align 1
  store ptr %rec.alloc1252, ptr %pay.gep1221, align 8
  br label %choice.exit

choice.case1260:                                  ; preds = %choice.next1201
  %pay.gep1265 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1266 = load ptr, ptr %pay.gep1265, align 8
  store ptr %payload.ptr1266, ptr %var._1267, align 8
  store ptr %payload.ptr1266, ptr %var.m, align 8
  %var.load1268 = load ptr, ptr %var.m, align 8
  %fld.gep1269 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1268, i32 0, i32 2
  %fld.load1270 = load i1, ptr %fld.gep1269, align 1
  br i1 %fld.load1270, label %choice.then1271, label %choice.else1272

choice.next1261:                                  ; preds = %choice.next1201
  %tag.gep1344 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1345 = load i64, ptr %tag.gep1344, align 8
  %tag.match1346 = icmp eq i64 %tag.id1345, 15
  br i1 %tag.match1346, label %choice.case1342, label %choice.next1343

choice.then1271:                                  ; preds = %choice.case1260
  %arena.cur1274 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1275 = call ptr @dva_arena_alloc(ptr %arena.cur1274, i64 16)
  %tag.gep1276 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1275, i32 0, i32 0
  store i64 3, ptr %tag.gep1276, align 8
  %pay.gep1277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1275, i32 0, i32 1
  %var.load1278 = load ptr, ptr %var.e, align 8
  %call.res1279 = call { i64, ptr } @"overloads::name_of"(ptr %var.load1278)
  %arena.cur1280 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1281 = call ptr @dva_arena_alloc(ptr %arena.cur1280, i64 16)
  store { i64, ptr } %call.res1279, ptr %ret.ub.alloc1281, align 8
  store ptr %ret.ub.alloc1281, ptr %pay.gep1277, align 8
  br label %choice.exit1273

choice.else1272:                                  ; preds = %choice.case1260
  %arena.cur1282 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1283 = call ptr @dva_arena_alloc(ptr %arena.cur1282, i64 16)
  %tag.gep1284 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1283, i32 0, i32 0
  store i64 16, ptr %tag.gep1284, align 8
  %pay.gep1285 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1283, i32 0, i32 1
  %var.load1286 = load ptr, ptr %var.m, align 8
  %fld.gep1287 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1286, i32 0, i32 0
  %fld.load1288 = load ptr, ptr %fld.gep1287, align 8
  %var.load1289 = load ptr, ptr %var.table, align 8
  %var.load1290 = load ptr, ptr %var.locals, align 8
  %a.load1291 = load ptr, ptr %var.locals, align 8
  %a.null1292 = icmp eq ptr %a.load1291, null
  br i1 %a.null1292, label %a.create1293, label %a.after1294

choice.exit1273:                                  ; preds = %a.after1316, %choice.then1271
  %choice.res1341 = phi ptr [ %enum.alloc1275, %choice.then1271 ], [ %enum.alloc1283, %a.after1316 ]
  br label %choice.exit

a.create1293:                                     ; preds = %choice.else1272
  %arena.cur1295 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1296 = call ptr @dva_arena_alloc(ptr %arena.cur1295, i64 24)
  %arena.cur1297 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1298 = call ptr @dva_arena_alloc(ptr %arena.cur1297, i64 128)
  %a.len.gep1299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 0
  store i64 0, ptr %a.len.gep1299, align 8
  %a.data.gep1300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 1
  store ptr %a.buf1298, ptr %a.data.gep1300, align 8
  %a.cap.gep1301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1296, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1301, align 8
  store ptr %a.create1296, ptr %var.locals, align 8
  br label %a.after1294

a.after1294:                                      ; preds = %a.create1293, %choice.else1272
  %a.load21302 = load ptr, ptr %var.locals, align 8
  %var.load1303 = load ptr, ptr %var.cur_mod, align 8
  %call.res1304 = call ptr @"overloads::walk"(ptr %fld.load1288, ptr %var.load1289, ptr %a.load21302, ptr %var.load1303)
  %var.load1305 = load ptr, ptr %var.m, align 8
  %fld.gep1306 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1305, i32 0, i32 1
  %fld.load1307 = load ptr, ptr %fld.gep1306, align 8
  %var.load1308 = load ptr, ptr %var.m, align 8
  %fld.gep1309 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1308, i32 0, i32 3
  %fld.load1310 = load ptr, ptr %fld.gep1309, align 8
  %var.load1311 = load ptr, ptr %var.table, align 8
  %var.load1312 = load ptr, ptr %var.locals, align 8
  %a.load1313 = load ptr, ptr %var.locals, align 8
  %a.null1314 = icmp eq ptr %a.load1313, null
  br i1 %a.null1314, label %a.create1315, label %a.after1316

a.create1315:                                     ; preds = %a.after1294
  %arena.cur1317 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1318 = call ptr @dva_arena_alloc(ptr %arena.cur1317, i64 24)
  %arena.cur1319 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1320 = call ptr @dva_arena_alloc(ptr %arena.cur1319, i64 128)
  %a.len.gep1321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1318, i32 0, i32 0
  store i64 0, ptr %a.len.gep1321, align 8
  %a.data.gep1322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1318, i32 0, i32 1
  store ptr %a.buf1320, ptr %a.data.gep1322, align 8
  %a.cap.gep1323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1318, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1323, align 8
  store ptr %a.create1318, ptr %var.locals, align 8
  br label %a.after1316

a.after1316:                                      ; preds = %a.create1315, %a.after1294
  %a.load21324 = load ptr, ptr %var.locals, align 8
  %var.load1325 = load ptr, ptr %var.cur_mod, align 8
  %call.res1326 = call ptr @"overloads::walk"(ptr %fld.load1310, ptr %var.load1311, ptr %a.load21324, ptr %var.load1325)
  %var.load1327 = load ptr, ptr %var.m, align 8
  %fld.gep1328 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1327, i32 0, i32 4
  %fld.load1329 = load i64, ptr %fld.gep1328, align 8
  %var.load1330 = load ptr, ptr %var.m, align 8
  %fld.gep1331 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1330, i32 0, i32 5
  %fld.load1332 = load i64, ptr %fld.gep1331, align 8
  %arena.cur1333 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1334 = call ptr @dva_arena_alloc(ptr %arena.cur1333, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1335 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 0
  store ptr %call.res1304, ptr %rec.fld1335, align 8
  %rec.fld1336 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 1
  store ptr %fld.load1307, ptr %rec.fld1336, align 8
  %rec.fld1337 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 2
  store i1 false, ptr %rec.fld1337, align 1
  %rec.fld1338 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 3
  store ptr %call.res1326, ptr %rec.fld1338, align 8
  %rec.fld1339 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 4
  store i64 %fld.load1329, ptr %rec.fld1339, align 8
  %rec.fld1340 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1334, i32 0, i32 5
  store i64 %fld.load1332, ptr %rec.fld1340, align 8
  store ptr %rec.alloc1334, ptr %pay.gep1285, align 8
  br label %choice.exit1273

choice.case1342:                                  ; preds = %choice.next1261
  %pay.gep1347 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1348 = load ptr, ptr %pay.gep1347, align 8
  store ptr %payload.ptr1348, ptr %var._1349, align 8
  store ptr %payload.ptr1348, ptr %var.re, align 8
  %arena.cur1350 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1351 = call ptr @dva_arena_alloc(ptr %arena.cur1350, i64 24)
  %arena.cur1352 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1353 = call ptr @dva_arena_alloc(ptr %arena.cur1352, i64 128)
  %a.len.gep1354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1351, i32 0, i32 0
  store i64 0, ptr %a.len.gep1354, align 8
  %a.data.gep1355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1351, i32 0, i32 1
  store ptr %a.buf1353, ptr %a.data.gep1355, align 8
  %a.cap.gep1356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1351, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1356, align 8
  store ptr %a.new1351, ptr %var.new_fields, align 8
  %var.load1357 = load ptr, ptr %var.re, align 8
  %fld.gep1358 = getelementptr inbounds { ptr, i1 }, ptr %var.load1357, i32 0, i32 0
  %fld.load1359 = load ptr, ptr %fld.gep1358, align 8
  %arr.cycle.len1360 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1359, i32 0, i32 0
  %arr.cycle.len1361 = load i64, ptr %arr.cycle.len1360, align 8
  %arr.cycle.data1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1359, i32 0, i32 1
  %arr.cycle.data1363 = load ptr, ptr %arr.cycle.data1362, align 8
  store i64 0, ptr %loop.idx.85, align 8
  %cycle.prev.u1364 = load ptr, ptr %var._1349, align 8
  br label %loop.header.85

choice.next1343:                                  ; preds = %choice.next1261
  %tag.gep1460 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1461 = load i64, ptr %tag.gep1460, align 8
  %tag.match1462 = icmp eq i64 %tag.id1461, 17
  br i1 %tag.match1462, label %choice.case1458, label %choice.next1459

loop.header.85:                                   ; preds = %loop.latch.85, %choice.case1342
  %counter.load1365 = load i64, ptr %loop.idx.85, align 8
  %loop.cond1366 = icmp slt i64 %counter.load1365, %arr.cycle.len1361
  br i1 %loop.cond1366, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i1367 = sub i64 %counter.load1365, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep1368 = getelementptr i64, ptr %arr.cycle.data1363, i64 %counter.load1365
  %arr.elem.raw1369 = load i64, ptr %arr.elem.gep1368, align 8
  %slot.i2p1370 = inttoptr i64 %arr.elem.raw1369 to ptr
  store i64 %loop.rel.i1367, ptr %var._i1371, align 8
  store ptr %slot.i2p1370, ptr %var._1372, align 8
  store ptr %slot.i2p1370, ptr %var.fld, align 8
  %var.load1373 = load ptr, ptr %var.fld, align 8
  %fld.gep1374 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1373, i32 0, i32 2
  %fld.load1375 = load ptr, ptr %fld.gep1374, align 8
  %var.load1376 = load ptr, ptr %var.table, align 8
  %var.load1377 = load ptr, ptr %var.locals, align 8
  %a.load1378 = load ptr, ptr %var.locals, align 8
  %a.null1379 = icmp eq ptr %a.load1378, null
  br i1 %a.null1379, label %a.create1380, label %a.after1381

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store1418
  %step.val1432 = load i64, ptr %loop.step.85, align 8
  %loop.next1433 = add i64 %counter.load1365, %step.val1432
  store i64 %loop.next1433, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  store ptr %cycle.prev.u1364, ptr %var._1349, align 8
  %arena.cur1434 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1435 = call ptr @dva_arena_alloc(ptr %arena.cur1434, i64 16)
  %tag.gep1436 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1435, i32 0, i32 0
  store i64 15, ptr %tag.gep1436, align 8
  %pay.gep1437 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1435, i32 0, i32 1
  %var.load1438 = load ptr, ptr %var.new_fields, align 8
  %a.load1439 = load ptr, ptr %var.new_fields, align 8
  %a.null1440 = icmp eq ptr %a.load1439, null
  br i1 %a.null1440, label %a.create1441, label %a.after1442

a.create1380:                                     ; preds = %loop.body.85
  %arena.cur1382 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 24)
  %arena.cur1384 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1385 = call ptr @dva_arena_alloc(ptr %arena.cur1384, i64 128)
  %a.len.gep1386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 0
  store i64 0, ptr %a.len.gep1386, align 8
  %a.data.gep1387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 1
  store ptr %a.buf1385, ptr %a.data.gep1387, align 8
  %a.cap.gep1388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1383, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1388, align 8
  store ptr %a.create1383, ptr %var.locals, align 8
  br label %a.after1381

a.after1381:                                      ; preds = %a.create1380, %loop.body.85
  %a.load21389 = load ptr, ptr %var.locals, align 8
  %var.load1390 = load ptr, ptr %var.cur_mod, align 8
  %call.res1391 = call ptr @"overloads::walk"(ptr %fld.load1375, ptr %var.load1376, ptr %a.load21389, ptr %var.load1390)
  store ptr %call.res1391, ptr %var.new_val, align 8
  %var.load1392 = load ptr, ptr %var.fld, align 8
  %fld.gep1393 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1392, i32 0, i32 0
  %fld.load1394 = load i1, ptr %fld.gep1393, align 1
  %var.load1395 = load ptr, ptr %var.fld, align 8
  %fld.gep1396 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1395, i32 0, i32 1
  %fld.load1397 = load ptr, ptr %fld.gep1396, align 8
  %var.load1398 = load ptr, ptr %var.new_val, align 8
  %arena.cur1399 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1400 = call ptr @dva_arena_alloc(ptr %arena.cur1399, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1401 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1400, i32 0, i32 0
  store i1 %fld.load1394, ptr %rec.fld1401, align 1
  %rec.fld1402 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1400, i32 0, i32 1
  store ptr %fld.load1397, ptr %rec.fld1402, align 8
  %rec.fld1403 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1400, i32 0, i32 2
  store ptr %var.load1398, ptr %rec.fld1403, align 8
  %a.load1404 = load ptr, ptr %var.new_fields, align 8
  %a.null1405 = icmp eq ptr %a.load1404, null
  br i1 %a.null1405, label %a.create1406, label %a.after1407

a.create1406:                                     ; preds = %a.after1381
  %arena.cur1408 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1409 = call ptr @dva_arena_alloc(ptr %arena.cur1408, i64 24)
  %arena.cur1410 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1411 = call ptr @dva_arena_alloc(ptr %arena.cur1410, i64 128)
  %a.len.gep1412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 0
  store i64 0, ptr %a.len.gep1412, align 8
  %a.data.gep1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 1
  store ptr %a.buf1411, ptr %a.data.gep1413, align 8
  %a.cap.gep1414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1414, align 8
  store ptr %a.create1409, ptr %var.new_fields, align 8
  br label %a.after1407

a.after1407:                                      ; preds = %a.create1406, %a.after1381
  %a.load21415 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1416

a.check1416:                                      ; preds = %a.after1407
  %a.len1419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21415, i32 0, i32 0
  %a.len1420 = load i64, ptr %a.len1419, align 8
  %a.cap1421 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21415, i32 0, i32 2
  %a.cap1422 = load i64, ptr %a.cap1421, align 8
  %a.needs.grow1423 = icmp eq i64 %a.len1420, %a.cap1422
  br i1 %a.needs.grow1423, label %a.grow1417, label %a.store1418

a.grow1417:                                       ; preds = %a.check1416
  call void @dva_array_grow(ptr %a.load21415)
  br label %a.store1418

a.store1418:                                      ; preds = %a.grow1417, %a.check1416
  %a.cur.data1424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21415, i32 0, i32 1
  %a.cur.data1425 = load ptr, ptr %a.cur.data1424, align 8
  %a.cur.len1426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21415, i32 0, i32 0
  %a.cur.len1427 = load i64, ptr %a.cur.len1426, align 8
  %a.elem.gep1428 = getelementptr i64, ptr %a.cur.data1425, i64 %a.cur.len1427
  %slot.p2i1429 = ptrtoint ptr %rec.alloc1400 to i64
  store i64 %slot.p2i1429, ptr %a.elem.gep1428, align 8
  %a.next.len1430 = add i64 %a.cur.len1427, 1
  %b.len.gep1431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21415, i32 0, i32 0
  store i64 %a.next.len1430, ptr %b.len.gep1431, align 8
  br label %loop.latch.85

a.create1441:                                     ; preds = %loop.exit.85
  %arena.cur1443 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1444 = call ptr @dva_arena_alloc(ptr %arena.cur1443, i64 24)
  %arena.cur1445 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 128)
  %a.len.gep1447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 0
  store i64 0, ptr %a.len.gep1447, align 8
  %a.data.gep1448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 1
  store ptr %a.buf1446, ptr %a.data.gep1448, align 8
  %a.cap.gep1449 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1444, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1449, align 8
  store ptr %a.create1444, ptr %var.new_fields, align 8
  br label %a.after1442

a.after1442:                                      ; preds = %a.create1441, %loop.exit.85
  %a.load21450 = load ptr, ptr %var.new_fields, align 8
  %var.load1451 = load ptr, ptr %var.re, align 8
  %fld.gep1452 = getelementptr inbounds { ptr, i1 }, ptr %var.load1451, i32 0, i32 1
  %fld.load1453 = load i1, ptr %fld.gep1452, align 1
  %arena.cur1454 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1455 = call ptr @dva_arena_alloc(ptr %arena.cur1454, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1456 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1455, i32 0, i32 0
  store ptr %a.load21450, ptr %rec.fld1456, align 8
  %rec.fld1457 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1455, i32 0, i32 1
  store i1 %fld.load1453, ptr %rec.fld1457, align 1
  store ptr %rec.alloc1455, ptr %pay.gep1437, align 8
  br label %choice.exit

choice.case1458:                                  ; preds = %choice.next1343
  %pay.gep1463 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1464 = load ptr, ptr %pay.gep1463, align 8
  store ptr %payload.ptr1464, ptr %var._1465, align 8
  store ptr %payload.ptr1464, ptr %var.ka, align 8
  %var.load1466 = load ptr, ptr %var.ka, align 8
  %fld.gep1467 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1466, i32 0, i32 0
  %fld.load1468 = load ptr, ptr %fld.gep1467, align 8
  %var.load1469 = load ptr, ptr %var.table, align 8
  %var.load1470 = load ptr, ptr %var.locals, align 8
  %a.load1471 = load ptr, ptr %var.locals, align 8
  %a.null1472 = icmp eq ptr %a.load1471, null
  br i1 %a.null1472, label %a.create1473, label %a.after1474

choice.next1459:                                  ; preds = %choice.next1343
  %tag.gep1532 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1533 = load i64, ptr %tag.gep1532, align 8
  %tag.match1534 = icmp eq i64 %tag.id1533, 12
  br i1 %tag.match1534, label %choice.case1530, label %choice.next1531

a.create1473:                                     ; preds = %choice.case1458
  %arena.cur1475 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1476 = call ptr @dva_arena_alloc(ptr %arena.cur1475, i64 24)
  %arena.cur1477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1478 = call ptr @dva_arena_alloc(ptr %arena.cur1477, i64 128)
  %a.len.gep1479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 0
  store i64 0, ptr %a.len.gep1479, align 8
  %a.data.gep1480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 1
  store ptr %a.buf1478, ptr %a.data.gep1480, align 8
  %a.cap.gep1481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1476, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1481, align 8
  store ptr %a.create1476, ptr %var.locals, align 8
  br label %a.after1474

a.after1474:                                      ; preds = %a.create1473, %choice.case1458
  %a.load21482 = load ptr, ptr %var.locals, align 8
  %var.load1483 = load ptr, ptr %var.cur_mod, align 8
  %call.res1484 = call ptr @"overloads::walk"(ptr %fld.load1468, ptr %var.load1469, ptr %a.load21482, ptr %var.load1483)
  store ptr %call.res1484, ptr %var.new_target, align 8
  %var.load1485 = load ptr, ptr %var.ka, align 8
  %fld.gep1486 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1485, i32 0, i32 1
  %fld.load1487 = load ptr, ptr %fld.gep1486, align 8
  %var.load1488 = load ptr, ptr %var.table, align 8
  %var.load1489 = load ptr, ptr %var.locals, align 8
  %a.load1490 = load ptr, ptr %var.locals, align 8
  %a.null1491 = icmp eq ptr %a.load1490, null
  br i1 %a.null1491, label %a.create1492, label %a.after1493

a.create1492:                                     ; preds = %a.after1474
  %arena.cur1494 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1495 = call ptr @dva_arena_alloc(ptr %arena.cur1494, i64 24)
  %arena.cur1496 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1497 = call ptr @dva_arena_alloc(ptr %arena.cur1496, i64 128)
  %a.len.gep1498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1495, i32 0, i32 0
  store i64 0, ptr %a.len.gep1498, align 8
  %a.data.gep1499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1495, i32 0, i32 1
  store ptr %a.buf1497, ptr %a.data.gep1499, align 8
  %a.cap.gep1500 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1495, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1500, align 8
  store ptr %a.create1495, ptr %var.locals, align 8
  br label %a.after1493

a.after1493:                                      ; preds = %a.create1492, %a.after1474
  %a.load21501 = load ptr, ptr %var.locals, align 8
  %var.load1502 = load ptr, ptr %var.cur_mod, align 8
  %call.res1503 = call ptr @"overloads::walk"(ptr %fld.load1487, ptr %var.load1488, ptr %a.load21501, ptr %var.load1502)
  store ptr %call.res1503, ptr %var.new_key, align 8
  %arena.cur1504 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1505 = call ptr @dva_arena_alloc(ptr %arena.cur1504, i64 16)
  %tag.gep1506 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1505, i32 0, i32 0
  store i64 17, ptr %tag.gep1506, align 8
  %pay.gep1507 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1505, i32 0, i32 1
  %var.load1508 = load ptr, ptr %var.new_target, align 8
  %var.load1509 = load ptr, ptr %var.new_key, align 8
  %var.load1510 = load ptr, ptr %var.ka, align 8
  %fld.gep1511 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1510, i32 0, i32 2
  %fld.load1512 = load i1, ptr %fld.gep1511, align 1
  %var.load1513 = load ptr, ptr %var.ka, align 8
  %fld.gep1514 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1513, i32 0, i32 3
  %fld.load1515 = load i1, ptr %fld.gep1514, align 1
  %var.load1516 = load ptr, ptr %var.ka, align 8
  %fld.gep1517 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1516, i32 0, i32 4
  %fld.load1518 = load i64, ptr %fld.gep1517, align 8
  %var.load1519 = load ptr, ptr %var.ka, align 8
  %fld.gep1520 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1519, i32 0, i32 5
  %fld.load1521 = load i64, ptr %fld.gep1520, align 8
  %arena.cur1522 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1523 = call ptr @dva_arena_alloc(ptr %arena.cur1522, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1524 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 0
  store ptr %var.load1508, ptr %rec.fld1524, align 8
  %rec.fld1525 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 1
  store ptr %var.load1509, ptr %rec.fld1525, align 8
  %rec.fld1526 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 2
  store i1 %fld.load1512, ptr %rec.fld1526, align 1
  %rec.fld1527 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 3
  store i1 %fld.load1515, ptr %rec.fld1527, align 1
  %rec.fld1528 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 4
  store i64 %fld.load1518, ptr %rec.fld1528, align 8
  %rec.fld1529 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1523, i32 0, i32 5
  store i64 %fld.load1521, ptr %rec.fld1529, align 8
  store ptr %rec.alloc1523, ptr %pay.gep1507, align 8
  br label %choice.exit

choice.case1530:                                  ; preds = %choice.next1459
  %pay.gep1535 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1536 = load ptr, ptr %pay.gep1535, align 8
  store ptr %payload.ptr1536, ptr %var._1537, align 8
  store ptr %payload.ptr1536, ptr %var.cy, align 8
  %var.load1538 = load ptr, ptr %var.cy, align 8
  %fld.gep1539 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1538, i32 0, i32 0
  %fld.load1540 = load ptr, ptr %fld.gep1539, align 8
  %var.load1541 = load ptr, ptr %var.table, align 8
  %var.load1542 = load ptr, ptr %var.locals, align 8
  %a.load1543 = load ptr, ptr %var.locals, align 8
  %a.null1544 = icmp eq ptr %a.load1543, null
  br i1 %a.null1544, label %a.create1545, label %a.after1546

choice.next1531:                                  ; preds = %choice.next1459
  %tag.gep1596 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1597 = load i64, ptr %tag.gep1596, align 8
  %tag.match1598 = icmp eq i64 %tag.id1597, 11
  br i1 %tag.match1598, label %choice.case1594, label %choice.next1595

a.create1545:                                     ; preds = %choice.case1530
  %arena.cur1547 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1548 = call ptr @dva_arena_alloc(ptr %arena.cur1547, i64 24)
  %arena.cur1549 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1550 = call ptr @dva_arena_alloc(ptr %arena.cur1549, i64 128)
  %a.len.gep1551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1548, i32 0, i32 0
  store i64 0, ptr %a.len.gep1551, align 8
  %a.data.gep1552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1548, i32 0, i32 1
  store ptr %a.buf1550, ptr %a.data.gep1552, align 8
  %a.cap.gep1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1553, align 8
  store ptr %a.create1548, ptr %var.locals, align 8
  br label %a.after1546

a.after1546:                                      ; preds = %a.create1545, %choice.case1530
  %a.load21554 = load ptr, ptr %var.locals, align 8
  %var.load1555 = load ptr, ptr %var.cur_mod, align 8
  %call.res1556 = call ptr @"overloads::walk"(ptr %fld.load1540, ptr %var.load1541, ptr %a.load21554, ptr %var.load1555)
  store ptr %call.res1556, ptr %var.new_iter, align 8
  %var.load1557 = load ptr, ptr %var.cy, align 8
  %fld.gep1558 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1557, i32 0, i32 1
  %fld.load1559 = load ptr, ptr %fld.gep1558, align 8
  %var.load1560 = load ptr, ptr %var.table, align 8
  %var.load1561 = load ptr, ptr %var.locals, align 8
  %a.load1562 = load ptr, ptr %var.locals, align 8
  %a.null1563 = icmp eq ptr %a.load1562, null
  br i1 %a.null1563, label %a.create1564, label %a.after1565

a.create1564:                                     ; preds = %a.after1546
  %arena.cur1566 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1567 = call ptr @dva_arena_alloc(ptr %arena.cur1566, i64 24)
  %arena.cur1568 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1569 = call ptr @dva_arena_alloc(ptr %arena.cur1568, i64 128)
  %a.len.gep1570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1567, i32 0, i32 0
  store i64 0, ptr %a.len.gep1570, align 8
  %a.data.gep1571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1567, i32 0, i32 1
  store ptr %a.buf1569, ptr %a.data.gep1571, align 8
  %a.cap.gep1572 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1567, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1572, align 8
  store ptr %a.create1567, ptr %var.locals, align 8
  br label %a.after1565

a.after1565:                                      ; preds = %a.create1564, %a.after1546
  %a.load21573 = load ptr, ptr %var.locals, align 8
  %var.load1574 = load ptr, ptr %var.cur_mod, align 8
  %call.res1575 = call ptr @"overloads::walk"(ptr %fld.load1559, ptr %var.load1560, ptr %a.load21573, ptr %var.load1574)
  store ptr %call.res1575, ptr %var.new_fn, align 8
  %arena.cur1576 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1577 = call ptr @dva_arena_alloc(ptr %arena.cur1576, i64 16)
  %tag.gep1578 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1577, i32 0, i32 0
  store i64 12, ptr %tag.gep1578, align 8
  %pay.gep1579 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1577, i32 0, i32 1
  %var.load1580 = load ptr, ptr %var.new_iter, align 8
  %var.load1581 = load ptr, ptr %var.new_fn, align 8
  %var.load1582 = load ptr, ptr %var.cy, align 8
  %fld.gep1583 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1582, i32 0, i32 2
  %fld.load1584 = load i1, ptr %fld.gep1583, align 1
  %var.load1585 = load ptr, ptr %var.cy, align 8
  %fld.gep1586 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1585, i32 0, i32 3
  %fld.load1587 = load i1, ptr %fld.gep1586, align 1
  %arena.cur1588 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1589 = call ptr @dva_arena_alloc(ptr %arena.cur1588, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1590 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1589, i32 0, i32 0
  store ptr %var.load1580, ptr %rec.fld1590, align 8
  %rec.fld1591 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1589, i32 0, i32 1
  store ptr %var.load1581, ptr %rec.fld1591, align 8
  %rec.fld1592 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1589, i32 0, i32 2
  store i1 %fld.load1584, ptr %rec.fld1592, align 1
  %rec.fld1593 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1589, i32 0, i32 3
  store i1 %fld.load1587, ptr %rec.fld1593, align 1
  store ptr %rec.alloc1589, ptr %pay.gep1579, align 8
  br label %choice.exit

choice.case1594:                                  ; preds = %choice.next1531
  %pay.gep1599 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1600 = load ptr, ptr %pay.gep1599, align 8
  store ptr %payload.ptr1600, ptr %var._1601, align 8
  store ptr %payload.ptr1600, ptr %var.ce, align 8
  %var.load1602 = load ptr, ptr %var.ce, align 8
  %fld.gep1603 = getelementptr inbounds { ptr, ptr }, ptr %var.load1602, i32 0, i32 0
  %fld.load1604 = load ptr, ptr %fld.gep1603, align 8
  %var.load1605 = load ptr, ptr %var.table, align 8
  %var.load1606 = load ptr, ptr %var.locals, align 8
  %a.load1607 = load ptr, ptr %var.locals, align 8
  %a.null1608 = icmp eq ptr %a.load1607, null
  br i1 %a.null1608, label %a.create1609, label %a.after1610

choice.next1595:                                  ; preds = %choice.next1531
  %tag.gep1652 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1653 = load i64, ptr %tag.gep1652, align 8
  %tag.match1654 = icmp eq i64 %tag.id1653, 13
  br i1 %tag.match1654, label %choice.case1650, label %choice.next1651

a.create1609:                                     ; preds = %choice.case1594
  %arena.cur1611 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1612 = call ptr @dva_arena_alloc(ptr %arena.cur1611, i64 24)
  %arena.cur1613 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1614 = call ptr @dva_arena_alloc(ptr %arena.cur1613, i64 128)
  %a.len.gep1615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1612, i32 0, i32 0
  store i64 0, ptr %a.len.gep1615, align 8
  %a.data.gep1616 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1612, i32 0, i32 1
  store ptr %a.buf1614, ptr %a.data.gep1616, align 8
  %a.cap.gep1617 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1612, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1617, align 8
  store ptr %a.create1612, ptr %var.locals, align 8
  br label %a.after1610

a.after1610:                                      ; preds = %a.create1609, %choice.case1594
  %a.load21618 = load ptr, ptr %var.locals, align 8
  %var.load1619 = load ptr, ptr %var.cur_mod, align 8
  %call.res1620 = call ptr @"overloads::walk"(ptr %fld.load1604, ptr %var.load1605, ptr %a.load21618, ptr %var.load1619)
  store ptr %call.res1620, ptr %var.new_cy, align 8
  %var.load1621 = load ptr, ptr %var.ce, align 8
  %fld.gep1622 = getelementptr inbounds { ptr, ptr }, ptr %var.load1621, i32 0, i32 1
  %fld.load1623 = load ptr, ptr %fld.gep1622, align 8
  %var.load1624 = load ptr, ptr %var.table, align 8
  %var.load1625 = load ptr, ptr %var.locals, align 8
  %a.load1626 = load ptr, ptr %var.locals, align 8
  %a.null1627 = icmp eq ptr %a.load1626, null
  br i1 %a.null1627, label %a.create1628, label %a.after1629

a.create1628:                                     ; preds = %a.after1610
  %arena.cur1630 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1631 = call ptr @dva_arena_alloc(ptr %arena.cur1630, i64 24)
  %arena.cur1632 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1633 = call ptr @dva_arena_alloc(ptr %arena.cur1632, i64 128)
  %a.len.gep1634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 0
  store i64 0, ptr %a.len.gep1634, align 8
  %a.data.gep1635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 1
  store ptr %a.buf1633, ptr %a.data.gep1635, align 8
  %a.cap.gep1636 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1631, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1636, align 8
  store ptr %a.create1631, ptr %var.locals, align 8
  br label %a.after1629

a.after1629:                                      ; preds = %a.create1628, %a.after1610
  %a.load21637 = load ptr, ptr %var.locals, align 8
  %var.load1638 = load ptr, ptr %var.cur_mod, align 8
  %call.res1639 = call ptr @"overloads::walk"(ptr %fld.load1623, ptr %var.load1624, ptr %a.load21637, ptr %var.load1638)
  store ptr %call.res1639, ptr %var.new_br, align 8
  %arena.cur1640 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1641 = call ptr @dva_arena_alloc(ptr %arena.cur1640, i64 16)
  %tag.gep1642 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1641, i32 0, i32 0
  store i64 11, ptr %tag.gep1642, align 8
  %pay.gep1643 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1641, i32 0, i32 1
  %var.load1644 = load ptr, ptr %var.new_cy, align 8
  %var.load1645 = load ptr, ptr %var.new_br, align 8
  %arena.cur1646 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1647 = call ptr @dva_arena_alloc(ptr %arena.cur1646, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1648 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1647, i32 0, i32 0
  store ptr %var.load1644, ptr %rec.fld1648, align 8
  %rec.fld1649 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1647, i32 0, i32 1
  store ptr %var.load1645, ptr %rec.fld1649, align 8
  store ptr %rec.alloc1647, ptr %pay.gep1643, align 8
  br label %choice.exit

choice.case1650:                                  ; preds = %choice.next1595
  %pay.gep1655 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1656 = load ptr, ptr %pay.gep1655, align 8
  store ptr %payload.ptr1656, ptr %var._1657, align 8
  store ptr %payload.ptr1656, ptr %var.r, align 8
  %var.load1658 = load ptr, ptr %var.r, align 8
  %fld.gep1659 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1658, i32 0, i32 0
  %fld.load1660 = load i1, ptr %fld.gep1659, align 1
  br i1 %fld.load1660, label %choice.then1661, label %choice.else1662

choice.next1651:                                  ; preds = %choice.next1595
  %tag.gep1742 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1743 = load i64, ptr %tag.gep1742, align 8
  %tag.match1744 = icmp eq i64 %tag.id1743, 36
  br i1 %tag.match1744, label %choice.case1740, label %choice.next1741

choice.then1661:                                  ; preds = %choice.case1650
  %var.load1664 = load ptr, ptr %var.r, align 8
  %fld.gep1665 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1664, i32 0, i32 2
  %fld.load1666 = load ptr, ptr %fld.gep1665, align 8
  %var.load1667 = load ptr, ptr %var.table, align 8
  %var.load1668 = load ptr, ptr %var.locals, align 8
  %a.load1669 = load ptr, ptr %var.locals, align 8
  %a.null1670 = icmp eq ptr %a.load1669, null
  br i1 %a.null1670, label %a.create1671, label %a.after1672

choice.else1662:                                  ; preds = %choice.case1650
  %var.load1683 = load ptr, ptr %var.r, align 8
  %fld.gep1684 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1683, i32 0, i32 2
  %fld.load1685 = load ptr, ptr %fld.gep1684, align 8
  br label %choice.exit1663

choice.exit1663:                                  ; preds = %choice.else1662, %a.after1672
  %choice.res1686 = phi ptr [ %call.res1682, %a.after1672 ], [ %fld.load1685, %choice.else1662 ]
  store ptr %choice.res1686, ptr %var.new_lhs1687, align 8
  %var.load1688 = load ptr, ptr %var.r, align 8
  %fld.gep1689 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1688, i32 0, i32 1
  %fld.load1690 = load i1, ptr %fld.gep1689, align 1
  br i1 %fld.load1690, label %choice.then1691, label %choice.else1692

a.create1671:                                     ; preds = %choice.then1661
  %arena.cur1673 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1674 = call ptr @dva_arena_alloc(ptr %arena.cur1673, i64 24)
  %arena.cur1675 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1676 = call ptr @dva_arena_alloc(ptr %arena.cur1675, i64 128)
  %a.len.gep1677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 0
  store i64 0, ptr %a.len.gep1677, align 8
  %a.data.gep1678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 1
  store ptr %a.buf1676, ptr %a.data.gep1678, align 8
  %a.cap.gep1679 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1679, align 8
  store ptr %a.create1674, ptr %var.locals, align 8
  br label %a.after1672

a.after1672:                                      ; preds = %a.create1671, %choice.then1661
  %a.load21680 = load ptr, ptr %var.locals, align 8
  %var.load1681 = load ptr, ptr %var.cur_mod, align 8
  %call.res1682 = call ptr @"overloads::walk"(ptr %fld.load1666, ptr %var.load1667, ptr %a.load21680, ptr %var.load1681)
  br label %choice.exit1663

choice.then1691:                                  ; preds = %choice.exit1663
  %var.load1694 = load ptr, ptr %var.r, align 8
  %fld.gep1695 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1694, i32 0, i32 3
  %fld.load1696 = load ptr, ptr %fld.gep1695, align 8
  %var.load1697 = load ptr, ptr %var.table, align 8
  %var.load1698 = load ptr, ptr %var.locals, align 8
  %a.load1699 = load ptr, ptr %var.locals, align 8
  %a.null1700 = icmp eq ptr %a.load1699, null
  br i1 %a.null1700, label %a.create1701, label %a.after1702

choice.else1692:                                  ; preds = %choice.exit1663
  %var.load1713 = load ptr, ptr %var.r, align 8
  %fld.gep1714 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1713, i32 0, i32 3
  %fld.load1715 = load ptr, ptr %fld.gep1714, align 8
  br label %choice.exit1693

choice.exit1693:                                  ; preds = %choice.else1692, %a.after1702
  %choice.res1716 = phi ptr [ %call.res1712, %a.after1702 ], [ %fld.load1715, %choice.else1692 ]
  store ptr %choice.res1716, ptr %var.new_rhs1717, align 8
  %arena.cur1718 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1719 = call ptr @dva_arena_alloc(ptr %arena.cur1718, i64 16)
  %tag.gep1720 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1719, i32 0, i32 0
  store i64 13, ptr %tag.gep1720, align 8
  %pay.gep1721 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1719, i32 0, i32 1
  %var.load1722 = load ptr, ptr %var.r, align 8
  %fld.gep1723 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1722, i32 0, i32 0
  %fld.load1724 = load i1, ptr %fld.gep1723, align 1
  %var.load1725 = load ptr, ptr %var.r, align 8
  %fld.gep1726 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1725, i32 0, i32 1
  %fld.load1727 = load i1, ptr %fld.gep1726, align 1
  %var.load1728 = load ptr, ptr %var.new_lhs1687, align 8
  %var.load1729 = load ptr, ptr %var.new_rhs1717, align 8
  %var.load1730 = load ptr, ptr %var.r, align 8
  %fld.gep1731 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1730, i32 0, i32 4
  %fld.load1732 = load i1, ptr %fld.gep1731, align 1
  %arena.cur1733 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1734 = call ptr @dva_arena_alloc(ptr %arena.cur1733, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1735 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1734, i32 0, i32 0
  store i1 %fld.load1724, ptr %rec.fld1735, align 1
  %rec.fld1736 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1734, i32 0, i32 1
  store i1 %fld.load1727, ptr %rec.fld1736, align 1
  %rec.fld1737 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1734, i32 0, i32 2
  store ptr %var.load1728, ptr %rec.fld1737, align 8
  %rec.fld1738 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1734, i32 0, i32 3
  store ptr %var.load1729, ptr %rec.fld1738, align 8
  %rec.fld1739 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1734, i32 0, i32 4
  store i1 %fld.load1732, ptr %rec.fld1739, align 1
  store ptr %rec.alloc1734, ptr %pay.gep1721, align 8
  br label %choice.exit

a.create1701:                                     ; preds = %choice.then1691
  %arena.cur1703 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1704 = call ptr @dva_arena_alloc(ptr %arena.cur1703, i64 24)
  %arena.cur1705 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1706 = call ptr @dva_arena_alloc(ptr %arena.cur1705, i64 128)
  %a.len.gep1707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 0
  store i64 0, ptr %a.len.gep1707, align 8
  %a.data.gep1708 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 1
  store ptr %a.buf1706, ptr %a.data.gep1708, align 8
  %a.cap.gep1709 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1704, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1709, align 8
  store ptr %a.create1704, ptr %var.locals, align 8
  br label %a.after1702

a.after1702:                                      ; preds = %a.create1701, %choice.then1691
  %a.load21710 = load ptr, ptr %var.locals, align 8
  %var.load1711 = load ptr, ptr %var.cur_mod, align 8
  %call.res1712 = call ptr @"overloads::walk"(ptr %fld.load1696, ptr %var.load1697, ptr %a.load21710, ptr %var.load1711)
  br label %choice.exit1693

choice.case1740:                                  ; preds = %choice.next1651
  %pay.gep1745 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1746 = load ptr, ptr %pay.gep1745, align 8
  store ptr %payload.ptr1746, ptr %var._1747, align 8
  store ptr %payload.ptr1746, ptr %var.na, align 8
  %var.load1748 = load ptr, ptr %var.na, align 8
  %fld.gep1749 = getelementptr inbounds { ptr, ptr }, ptr %var.load1748, i32 0, i32 1
  %fld.load1750 = load ptr, ptr %fld.gep1749, align 8
  %var.load1751 = load ptr, ptr %var.table, align 8
  %var.load1752 = load ptr, ptr %var.locals, align 8
  %a.load1753 = load ptr, ptr %var.locals, align 8
  %a.null1754 = icmp eq ptr %a.load1753, null
  br i1 %a.null1754, label %a.create1755, label %a.after1756

choice.next1741:                                  ; preds = %choice.next1651
  %tag.gep1782 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1783 = load i64, ptr %tag.gep1782, align 8
  %tag.match1784 = icmp eq i64 %tag.id1783, 18
  br i1 %tag.match1784, label %choice.case1780, label %choice.next1781

a.create1755:                                     ; preds = %choice.case1740
  %arena.cur1757 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1758 = call ptr @dva_arena_alloc(ptr %arena.cur1757, i64 24)
  %arena.cur1759 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1760 = call ptr @dva_arena_alloc(ptr %arena.cur1759, i64 128)
  %a.len.gep1761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1758, i32 0, i32 0
  store i64 0, ptr %a.len.gep1761, align 8
  %a.data.gep1762 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1758, i32 0, i32 1
  store ptr %a.buf1760, ptr %a.data.gep1762, align 8
  %a.cap.gep1763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1758, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1763, align 8
  store ptr %a.create1758, ptr %var.locals, align 8
  br label %a.after1756

a.after1756:                                      ; preds = %a.create1755, %choice.case1740
  %a.load21764 = load ptr, ptr %var.locals, align 8
  %var.load1765 = load ptr, ptr %var.cur_mod, align 8
  %call.res1766 = call ptr @"overloads::walk"(ptr %fld.load1750, ptr %var.load1751, ptr %a.load21764, ptr %var.load1765)
  store ptr %call.res1766, ptr %var.new_val1767, align 8
  %arena.cur1768 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1769 = call ptr @dva_arena_alloc(ptr %arena.cur1768, i64 16)
  %tag.gep1770 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1769, i32 0, i32 0
  store i64 36, ptr %tag.gep1770, align 8
  %pay.gep1771 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1769, i32 0, i32 1
  %var.load1772 = load ptr, ptr %var.na, align 8
  %fld.gep1773 = getelementptr inbounds { ptr, ptr }, ptr %var.load1772, i32 0, i32 0
  %fld.load1774 = load ptr, ptr %fld.gep1773, align 8
  %var.load1775 = load ptr, ptr %var.new_val1767, align 8
  %arena.cur1776 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1777 = call ptr @dva_arena_alloc(ptr %arena.cur1776, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1778 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1777, i32 0, i32 0
  store ptr %fld.load1774, ptr %rec.fld1778, align 8
  %rec.fld1779 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1777, i32 0, i32 1
  store ptr %var.load1775, ptr %rec.fld1779, align 8
  store ptr %rec.alloc1777, ptr %pay.gep1771, align 8
  br label %choice.exit

choice.case1780:                                  ; preds = %choice.next1741
  %pay.gep1785 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1786 = load ptr, ptr %pay.gep1785, align 8
  store ptr %payload.ptr1786, ptr %var._1787, align 8
  store ptr %payload.ptr1786, ptr %var.v1788, align 8
  %var.load1789 = load ptr, ptr %var.v1788, align 8
  %fld.gep1790 = getelementptr inbounds { ptr, ptr }, ptr %var.load1789, i32 0, i32 1
  %fld.load1791 = load ptr, ptr %fld.gep1790, align 8
  %var.load1792 = load ptr, ptr %var.table, align 8
  %var.load1793 = load ptr, ptr %var.locals, align 8
  %a.load1794 = load ptr, ptr %var.locals, align 8
  %a.null1795 = icmp eq ptr %a.load1794, null
  br i1 %a.null1795, label %a.create1796, label %a.after1797

choice.next1781:                                  ; preds = %choice.next1741
  %tag.gep1834 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1835 = load i64, ptr %tag.gep1834, align 8
  %tag.match1836 = icmp eq i64 %tag.id1835, 22
  br i1 %tag.match1836, label %choice.case1832, label %choice.next1833

a.create1796:                                     ; preds = %choice.case1780
  %arena.cur1798 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1799 = call ptr @dva_arena_alloc(ptr %arena.cur1798, i64 24)
  %arena.cur1800 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1801 = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 128)
  %a.len.gep1802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1799, i32 0, i32 0
  store i64 0, ptr %a.len.gep1802, align 8
  %a.data.gep1803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1799, i32 0, i32 1
  store ptr %a.buf1801, ptr %a.data.gep1803, align 8
  %a.cap.gep1804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1799, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1804, align 8
  store ptr %a.create1799, ptr %var.locals, align 8
  br label %a.after1797

a.after1797:                                      ; preds = %a.create1796, %choice.case1780
  %a.load21805 = load ptr, ptr %var.locals, align 8
  %var.load1806 = load ptr, ptr %var.cur_mod, align 8
  %call.res1807 = call ptr @"overloads::walk_many"(ptr %fld.load1791, ptr %var.load1792, ptr %a.load21805, ptr %var.load1806)
  store ptr %call.res1807, ptr %var.new_args, align 8
  %arena.cur1808 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1809 = call ptr @dva_arena_alloc(ptr %arena.cur1808, i64 16)
  %tag.gep1810 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1809, i32 0, i32 0
  store i64 18, ptr %tag.gep1810, align 8
  %pay.gep1811 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1809, i32 0, i32 1
  %var.load1812 = load ptr, ptr %var.v1788, align 8
  %fld.gep1813 = getelementptr inbounds { ptr, ptr }, ptr %var.load1812, i32 0, i32 0
  %fld.load1814 = load ptr, ptr %fld.gep1813, align 8
  %var.load1815 = load ptr, ptr %var.new_args, align 8
  %a.load1816 = load ptr, ptr %var.new_args, align 8
  %a.null1817 = icmp eq ptr %a.load1816, null
  br i1 %a.null1817, label %a.create1818, label %a.after1819

a.create1818:                                     ; preds = %a.after1797
  %arena.cur1820 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1821 = call ptr @dva_arena_alloc(ptr %arena.cur1820, i64 24)
  %arena.cur1822 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1823 = call ptr @dva_arena_alloc(ptr %arena.cur1822, i64 128)
  %a.len.gep1824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1821, i32 0, i32 0
  store i64 0, ptr %a.len.gep1824, align 8
  %a.data.gep1825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1821, i32 0, i32 1
  store ptr %a.buf1823, ptr %a.data.gep1825, align 8
  %a.cap.gep1826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1821, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1826, align 8
  store ptr %a.create1821, ptr %var.new_args, align 8
  br label %a.after1819

a.after1819:                                      ; preds = %a.create1818, %a.after1797
  %a.load21827 = load ptr, ptr %var.new_args, align 8
  %arena.cur1828 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1829 = call ptr @dva_arena_alloc(ptr %arena.cur1828, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1830 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1829, i32 0, i32 0
  store ptr %fld.load1814, ptr %rec.fld1830, align 8
  %rec.fld1831 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1829, i32 0, i32 1
  store ptr %a.load21827, ptr %rec.fld1831, align 8
  store ptr %rec.alloc1829, ptr %pay.gep1811, align 8
  br label %choice.exit

choice.case1832:                                  ; preds = %choice.next1781
  %pay.gep1837 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1838 = load ptr, ptr %pay.gep1837, align 8
  store ptr %payload.ptr1838, ptr %var._1839, align 8
  store ptr %payload.ptr1838, ptr %var.tc, align 8
  %var.load1840 = load ptr, ptr %var.tc, align 8
  %fld.gep1841 = getelementptr inbounds { ptr, ptr }, ptr %var.load1840, i32 0, i32 1
  %fld.load1842 = load ptr, ptr %fld.gep1841, align 8
  %var.load1843 = load ptr, ptr %var.table, align 8
  %var.load1844 = load ptr, ptr %var.locals, align 8
  %a.load1845 = load ptr, ptr %var.locals, align 8
  %a.null1846 = icmp eq ptr %a.load1845, null
  br i1 %a.null1846, label %a.create1847, label %a.after1848

choice.next1833:                                  ; preds = %choice.next1781
  %tag.gep1873 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1874 = load i64, ptr %tag.gep1873, align 8
  %tag.match1875 = icmp eq i64 %tag.id1874, 31
  br i1 %tag.match1875, label %choice.case1871, label %choice.next1872

a.create1847:                                     ; preds = %choice.case1832
  %arena.cur1849 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1850 = call ptr @dva_arena_alloc(ptr %arena.cur1849, i64 24)
  %arena.cur1851 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1852 = call ptr @dva_arena_alloc(ptr %arena.cur1851, i64 128)
  %a.len.gep1853 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1850, i32 0, i32 0
  store i64 0, ptr %a.len.gep1853, align 8
  %a.data.gep1854 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1850, i32 0, i32 1
  store ptr %a.buf1852, ptr %a.data.gep1854, align 8
  %a.cap.gep1855 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1850, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1855, align 8
  store ptr %a.create1850, ptr %var.locals, align 8
  br label %a.after1848

a.after1848:                                      ; preds = %a.create1847, %choice.case1832
  %a.load21856 = load ptr, ptr %var.locals, align 8
  %var.load1857 = load ptr, ptr %var.cur_mod, align 8
  %call.res1858 = call ptr @"overloads::walk"(ptr %fld.load1842, ptr %var.load1843, ptr %a.load21856, ptr %var.load1857)
  store ptr %call.res1858, ptr %var.new_expr, align 8
  %arena.cur1859 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1860 = call ptr @dva_arena_alloc(ptr %arena.cur1859, i64 16)
  %tag.gep1861 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1860, i32 0, i32 0
  store i64 22, ptr %tag.gep1861, align 8
  %pay.gep1862 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1860, i32 0, i32 1
  %var.load1863 = load ptr, ptr %var.tc, align 8
  %fld.gep1864 = getelementptr inbounds { ptr, ptr }, ptr %var.load1863, i32 0, i32 0
  %fld.load1865 = load ptr, ptr %fld.gep1864, align 8
  %var.load1866 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1867 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1868 = call ptr @dva_arena_alloc(ptr %arena.cur1867, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1869 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1868, i32 0, i32 0
  store ptr %fld.load1865, ptr %rec.fld1869, align 8
  %rec.fld1870 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1868, i32 0, i32 1
  store ptr %var.load1866, ptr %rec.fld1870, align 8
  store ptr %rec.alloc1868, ptr %pay.gep1862, align 8
  br label %choice.exit

choice.case1871:                                  ; preds = %choice.next1833
  %pay.gep1876 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1877 = load ptr, ptr %pay.gep1876, align 8
  store ptr %payload.ptr1877, ptr %var._1878, align 8
  store ptr %payload.ptr1877, ptr %var.sp, align 8
  %arena.cur1879 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1880 = call ptr @dva_arena_alloc(ptr %arena.cur1879, i64 16)
  %tag.gep1881 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1880, i32 0, i32 0
  store i64 31, ptr %tag.gep1881, align 8
  %pay.gep1882 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1880, i32 0, i32 1
  %var.load1883 = load ptr, ptr %var.sp, align 8
  %var.load1884 = load ptr, ptr %var.table, align 8
  %var.load1885 = load ptr, ptr %var.locals, align 8
  %a.load1886 = load ptr, ptr %var.locals, align 8
  %a.null1887 = icmp eq ptr %a.load1886, null
  br i1 %a.null1887, label %a.create1888, label %a.after1889

choice.next1872:                                  ; preds = %choice.next1833
  %tag.gep1902 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1903 = load i64, ptr %tag.gep1902, align 8
  %tag.match1904 = icmp eq i64 %tag.id1903, 32
  br i1 %tag.match1904, label %choice.case1900, label %choice.next1901

a.create1888:                                     ; preds = %choice.case1871
  %arena.cur1890 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1891 = call ptr @dva_arena_alloc(ptr %arena.cur1890, i64 24)
  %arena.cur1892 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1893 = call ptr @dva_arena_alloc(ptr %arena.cur1892, i64 128)
  %a.len.gep1894 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1891, i32 0, i32 0
  store i64 0, ptr %a.len.gep1894, align 8
  %a.data.gep1895 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1891, i32 0, i32 1
  store ptr %a.buf1893, ptr %a.data.gep1895, align 8
  %a.cap.gep1896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1891, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1896, align 8
  store ptr %a.create1891, ptr %var.locals, align 8
  br label %a.after1889

a.after1889:                                      ; preds = %a.create1888, %choice.case1871
  %a.load21897 = load ptr, ptr %var.locals, align 8
  %var.load1898 = load ptr, ptr %var.cur_mod, align 8
  %call.res1899 = call ptr @"overloads::walk_call"(ptr %var.load1883, ptr %var.load1884, ptr %a.load21897, ptr %var.load1898)
  store ptr %call.res1899, ptr %pay.gep1882, align 8
  br label %choice.exit

choice.case1900:                                  ; preds = %choice.next1872
  %pay.gep1905 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1906 = load ptr, ptr %pay.gep1905, align 8
  store ptr %payload.ptr1906, ptr %var._1907, align 8
  store ptr %payload.ptr1906, ptr %var.jn, align 8
  %arena.cur1908 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1909 = call ptr @dva_arena_alloc(ptr %arena.cur1908, i64 16)
  %tag.gep1910 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1909, i32 0, i32 0
  store i64 32, ptr %tag.gep1910, align 8
  %pay.gep1911 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1909, i32 0, i32 1
  %var.load1912 = load ptr, ptr %var.jn, align 8
  %var.load1913 = load ptr, ptr %var.table, align 8
  %var.load1914 = load ptr, ptr %var.locals, align 8
  %a.load1915 = load ptr, ptr %var.locals, align 8
  %a.null1916 = icmp eq ptr %a.load1915, null
  br i1 %a.null1916, label %a.create1917, label %a.after1918

choice.next1901:                                  ; preds = %choice.next1872
  %tag.gep1931 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1932 = load i64, ptr %tag.gep1931, align 8
  %tag.match1933 = icmp eq i64 %tag.id1932, 33
  br i1 %tag.match1933, label %choice.case1929, label %choice.next1930

a.create1917:                                     ; preds = %choice.case1900
  %arena.cur1919 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1920 = call ptr @dva_arena_alloc(ptr %arena.cur1919, i64 24)
  %arena.cur1921 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1922 = call ptr @dva_arena_alloc(ptr %arena.cur1921, i64 128)
  %a.len.gep1923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1920, i32 0, i32 0
  store i64 0, ptr %a.len.gep1923, align 8
  %a.data.gep1924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1920, i32 0, i32 1
  store ptr %a.buf1922, ptr %a.data.gep1924, align 8
  %a.cap.gep1925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1920, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1925, align 8
  store ptr %a.create1920, ptr %var.locals, align 8
  br label %a.after1918

a.after1918:                                      ; preds = %a.create1917, %choice.case1900
  %a.load21926 = load ptr, ptr %var.locals, align 8
  %var.load1927 = load ptr, ptr %var.cur_mod, align 8
  %call.res1928 = call ptr @"overloads::walk"(ptr %var.load1912, ptr %var.load1913, ptr %a.load21926, ptr %var.load1927)
  store ptr %call.res1928, ptr %pay.gep1911, align 8
  br label %choice.exit

choice.case1929:                                  ; preds = %choice.next1901
  %pay.gep1934 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1935 = load ptr, ptr %pay.gep1934, align 8
  store ptr %payload.ptr1935, ptr %var._1936, align 8
  store ptr %payload.ptr1935, ptr %var.ex, align 8
  %var.load1937 = load ptr, ptr %var.ex, align 8
  %var.load1938 = load ptr, ptr %var.table, align 8
  %var.load1939 = load ptr, ptr %var.locals, align 8
  %a.load1940 = load ptr, ptr %var.locals, align 8
  %a.null1941 = icmp eq ptr %a.load1940, null
  br i1 %a.null1941, label %a.create1942, label %a.after1943

choice.next1930:                                  ; preds = %choice.next1901
  %tag.gep1961 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1962 = load i64, ptr %tag.gep1961, align 8
  %tag.match1963 = icmp eq i64 %tag.id1962, 37
  br i1 %tag.match1963, label %choice.case1959, label %choice.next1960

a.create1942:                                     ; preds = %choice.case1929
  %arena.cur1944 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1945 = call ptr @dva_arena_alloc(ptr %arena.cur1944, i64 24)
  %arena.cur1946 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1947 = call ptr @dva_arena_alloc(ptr %arena.cur1946, i64 128)
  %a.len.gep1948 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 0
  store i64 0, ptr %a.len.gep1948, align 8
  %a.data.gep1949 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 1
  store ptr %a.buf1947, ptr %a.data.gep1949, align 8
  %a.cap.gep1950 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1945, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1950, align 8
  store ptr %a.create1945, ptr %var.locals, align 8
  br label %a.after1943

a.after1943:                                      ; preds = %a.create1942, %choice.case1929
  %a.load21951 = load ptr, ptr %var.locals, align 8
  %var.load1952 = load ptr, ptr %var.cur_mod, align 8
  %call.res1953 = call ptr @"overloads::walk"(ptr %var.load1937, ptr %var.load1938, ptr %a.load21951, ptr %var.load1952)
  store ptr %call.res1953, ptr %var.new_ex, align 8
  %arena.cur1954 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1955 = call ptr @dva_arena_alloc(ptr %arena.cur1954, i64 16)
  %tag.gep1956 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1955, i32 0, i32 0
  store i64 33, ptr %tag.gep1956, align 8
  %pay.gep1957 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1955, i32 0, i32 1
  %var.load1958 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1958, ptr %pay.gep1957, align 8
  br label %choice.exit

choice.case1959:                                  ; preds = %choice.next1930
  %pay.gep1964 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1965 = load ptr, ptr %pay.gep1964, align 8
  store ptr %payload.ptr1965, ptr %var._1966, align 8
  store ptr %payload.ptr1965, ptr %var.r1967, align 8
  %var.load1968 = load ptr, ptr %var.r1967, align 8
  %fld.gep1969 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1968, i32 0, i32 0
  %fld.load1970 = load i1, ptr %fld.gep1969, align 1
  br i1 %fld.load1970, label %choice.then1971, label %choice.else1972

choice.next1960:                                  ; preds = %choice.next1930
  %tag.gep2020 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2021 = load i64, ptr %tag.gep2020, align 8
  %tag.match2022 = icmp eq i64 %tag.id2021, 28
  br i1 %tag.match2022, label %choice.case2018, label %choice.next2019

choice.then1971:                                  ; preds = %choice.case1959
  %var.load1974 = load ptr, ptr %var.r1967, align 8
  %fld.gep1975 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1974, i32 0, i32 1
  %fld.load1976 = load ptr, ptr %fld.gep1975, align 8
  %var.load1977 = load ptr, ptr %var.table, align 8
  %var.load1978 = load ptr, ptr %var.locals, align 8
  %a.load1979 = load ptr, ptr %var.locals, align 8
  %a.null1980 = icmp eq ptr %a.load1979, null
  br i1 %a.null1980, label %a.create1981, label %a.after1982

choice.else1972:                                  ; preds = %choice.case1959
  %var.load1993 = load ptr, ptr %var.r1967, align 8
  %fld.gep1994 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1993, i32 0, i32 1
  %fld.load1995 = load ptr, ptr %fld.gep1994, align 8
  br label %choice.exit1973

choice.exit1973:                                  ; preds = %choice.else1972, %a.after1982
  %choice.res1996 = phi ptr [ %call.res1992, %a.after1982 ], [ %fld.load1995, %choice.else1972 ]
  store ptr %choice.res1996, ptr %var.new_val1997, align 8
  %arena.cur1998 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1999 = call ptr @dva_arena_alloc(ptr %arena.cur1998, i64 16)
  %tag.gep2000 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1999, i32 0, i32 0
  store i64 37, ptr %tag.gep2000, align 8
  %pay.gep2001 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1999, i32 0, i32 1
  %var.load2002 = load ptr, ptr %var.r1967, align 8
  %fld.gep2003 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2002, i32 0, i32 0
  %fld.load2004 = load i1, ptr %fld.gep2003, align 1
  %var.load2005 = load ptr, ptr %var.new_val1997, align 8
  %var.load2006 = load ptr, ptr %var.r1967, align 8
  %fld.gep2007 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2006, i32 0, i32 2
  %fld.load2008 = load i64, ptr %fld.gep2007, align 8
  %var.load2009 = load ptr, ptr %var.r1967, align 8
  %fld.gep2010 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2009, i32 0, i32 3
  %fld.load2011 = load i64, ptr %fld.gep2010, align 8
  %arena.cur2012 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2013 = call ptr @dva_arena_alloc(ptr %arena.cur2012, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2014 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2013, i32 0, i32 0
  store i1 %fld.load2004, ptr %rec.fld2014, align 1
  %rec.fld2015 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2013, i32 0, i32 1
  store ptr %var.load2005, ptr %rec.fld2015, align 8
  %rec.fld2016 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2013, i32 0, i32 2
  store i64 %fld.load2008, ptr %rec.fld2016, align 8
  %rec.fld2017 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2013, i32 0, i32 3
  store i64 %fld.load2011, ptr %rec.fld2017, align 8
  store ptr %rec.alloc2013, ptr %pay.gep2001, align 8
  br label %choice.exit

a.create1981:                                     ; preds = %choice.then1971
  %arena.cur1983 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1984 = call ptr @dva_arena_alloc(ptr %arena.cur1983, i64 24)
  %arena.cur1985 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1986 = call ptr @dva_arena_alloc(ptr %arena.cur1985, i64 128)
  %a.len.gep1987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 0
  store i64 0, ptr %a.len.gep1987, align 8
  %a.data.gep1988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 1
  store ptr %a.buf1986, ptr %a.data.gep1988, align 8
  %a.cap.gep1989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1989, align 8
  store ptr %a.create1984, ptr %var.locals, align 8
  br label %a.after1982

a.after1982:                                      ; preds = %a.create1981, %choice.then1971
  %a.load21990 = load ptr, ptr %var.locals, align 8
  %var.load1991 = load ptr, ptr %var.cur_mod, align 8
  %call.res1992 = call ptr @"overloads::walk"(ptr %fld.load1976, ptr %var.load1977, ptr %a.load21990, ptr %var.load1991)
  br label %choice.exit1973

choice.case2018:                                  ; preds = %choice.next1960
  %pay.gep2023 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2024 = load ptr, ptr %pay.gep2023, align 8
  store ptr %payload.ptr2024, ptr %var._2025, align 8
  store ptr %payload.ptr2024, ptr %var.ac, align 8
  %var.load2026 = load ptr, ptr %var.ac, align 8
  %fld.gep2027 = getelementptr inbounds { ptr, i64 }, ptr %var.load2026, i32 0, i32 0
  %fld.load2028 = load ptr, ptr %fld.gep2027, align 8
  %var.load2029 = load ptr, ptr %var.table, align 8
  %call.res2030 = call ptr @"overloads::keep_type"(ptr %fld.load2028, ptr %var.load2029)
  store ptr %call.res2030, ptr %var.new_elem, align 8
  %arena.cur2031 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2032 = call ptr @dva_arena_alloc(ptr %arena.cur2031, i64 16)
  %tag.gep2033 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2032, i32 0, i32 0
  store i64 28, ptr %tag.gep2033, align 8
  %pay.gep2034 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2032, i32 0, i32 1
  %var.load2035 = load ptr, ptr %var.new_elem, align 8
  %var.load2036 = load ptr, ptr %var.ac, align 8
  %fld.gep2037 = getelementptr inbounds { ptr, i64 }, ptr %var.load2036, i32 0, i32 1
  %fld.load2038 = load i64, ptr %fld.gep2037, align 8
  %arena.cur2039 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2040 = call ptr @dva_arena_alloc(ptr %arena.cur2039, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2041 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2040, i32 0, i32 0
  store ptr %var.load2035, ptr %rec.fld2041, align 8
  %rec.fld2042 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2040, i32 0, i32 1
  store i64 %fld.load2038, ptr %rec.fld2042, align 8
  store ptr %rec.alloc2040, ptr %pay.gep2034, align 8
  br label %choice.exit

choice.next2019:                                  ; preds = %choice.next1960
  %tag.gep2045 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2046 = load i64, ptr %tag.gep2045, align 8
  %tag.match2047 = icmp eq i64 %tag.id2046, 38
  br i1 %tag.match2047, label %choice.case2043, label %choice.next2044

choice.case2043:                                  ; preds = %choice.next2019
  %pay.gep2048 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2049 = load ptr, ptr %pay.gep2048, align 8
  store ptr %payload.ptr2049, ptr %var._2050, align 8
  store ptr %payload.ptr2049, ptr %var.ud, align 8
  %var.load2051 = load ptr, ptr %var.ud, align 8
  %fld.gep2052 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2051, i32 0, i32 1
  %fld.load2053 = load ptr, ptr %fld.gep2052, align 8
  %var.load2054 = load ptr, ptr %var.table, align 8
  %var.load2055 = load ptr, ptr %var.locals, align 8
  %a.load2056 = load ptr, ptr %var.locals, align 8
  %a.null2057 = icmp eq ptr %a.load2056, null
  br i1 %a.null2057, label %a.create2058, label %a.after2059

choice.next2044:                                  ; preds = %choice.next2019
  %tag.gep2092 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2093 = load i64, ptr %tag.gep2092, align 8
  %tag.match2094 = icmp eq i64 %tag.id2093, 19
  br i1 %tag.match2094, label %choice.case2090, label %choice.next2091

a.create2058:                                     ; preds = %choice.case2043
  %arena.cur2060 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2061 = call ptr @dva_arena_alloc(ptr %arena.cur2060, i64 24)
  %arena.cur2062 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2063 = call ptr @dva_arena_alloc(ptr %arena.cur2062, i64 128)
  %a.len.gep2064 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2061, i32 0, i32 0
  store i64 0, ptr %a.len.gep2064, align 8
  %a.data.gep2065 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2061, i32 0, i32 1
  store ptr %a.buf2063, ptr %a.data.gep2065, align 8
  %a.cap.gep2066 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2061, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2066, align 8
  store ptr %a.create2061, ptr %var.locals, align 8
  br label %a.after2059

a.after2059:                                      ; preds = %a.create2058, %choice.case2043
  %a.load22067 = load ptr, ptr %var.locals, align 8
  %var.load2068 = load ptr, ptr %var.cur_mod, align 8
  %call.res2069 = call ptr @"overloads::walk"(ptr %fld.load2053, ptr %var.load2054, ptr %a.load22067, ptr %var.load2068)
  store ptr %call.res2069, ptr %var.new_msg, align 8
  %arena.cur2070 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2071 = call ptr @dva_arena_alloc(ptr %arena.cur2070, i64 16)
  %tag.gep2072 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2071, i32 0, i32 0
  store i64 38, ptr %tag.gep2072, align 8
  %pay.gep2073 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2071, i32 0, i32 1
  %var.load2074 = load ptr, ptr %var.ud, align 8
  %fld.gep2075 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2074, i32 0, i32 0
  %fld.load2076 = load i1, ptr %fld.gep2075, align 1
  %var.load2077 = load ptr, ptr %var.new_msg, align 8
  %var.load2078 = load ptr, ptr %var.ud, align 8
  %fld.gep2079 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2078, i32 0, i32 2
  %fld.load2080 = load i64, ptr %fld.gep2079, align 8
  %var.load2081 = load ptr, ptr %var.ud, align 8
  %fld.gep2082 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2081, i32 0, i32 3
  %fld.load2083 = load i64, ptr %fld.gep2082, align 8
  %arena.cur2084 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2085 = call ptr @dva_arena_alloc(ptr %arena.cur2084, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2086 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2085, i32 0, i32 0
  store i1 %fld.load2076, ptr %rec.fld2086, align 1
  %rec.fld2087 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2085, i32 0, i32 1
  store ptr %var.load2077, ptr %rec.fld2087, align 8
  %rec.fld2088 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2085, i32 0, i32 2
  store i64 %fld.load2080, ptr %rec.fld2088, align 8
  %rec.fld2089 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2085, i32 0, i32 3
  store i64 %fld.load2083, ptr %rec.fld2089, align 8
  store ptr %rec.alloc2085, ptr %pay.gep2073, align 8
  br label %choice.exit

choice.case2090:                                  ; preds = %choice.next2044
  %pay.gep2095 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2096 = load ptr, ptr %pay.gep2095, align 8
  store ptr %payload.ptr2096, ptr %var._2097, align 8
  store ptr %payload.ptr2096, ptr %var.rm, align 8
  %var.load2098 = load ptr, ptr %var.rm, align 8
  %fld.gep2099 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2098, i32 0, i32 0
  %fld.load2100 = load ptr, ptr %fld.gep2099, align 8
  %var.load2101 = load ptr, ptr %var.table, align 8
  %var.load2102 = load ptr, ptr %var.locals, align 8
  %a.load2103 = load ptr, ptr %var.locals, align 8
  %a.null2104 = icmp eq ptr %a.load2103, null
  br i1 %a.null2104, label %a.create2105, label %a.after2106

choice.next2091:                                  ; preds = %choice.next2044
  %tag.gep2135 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2136 = load i64, ptr %tag.gep2135, align 8
  %tag.match2137 = icmp eq i64 %tag.id2136, 26
  br i1 %tag.match2137, label %choice.case2133, label %choice.next2134

a.create2105:                                     ; preds = %choice.case2090
  %arena.cur2107 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2108 = call ptr @dva_arena_alloc(ptr %arena.cur2107, i64 24)
  %arena.cur2109 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2110 = call ptr @dva_arena_alloc(ptr %arena.cur2109, i64 128)
  %a.len.gep2111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2108, i32 0, i32 0
  store i64 0, ptr %a.len.gep2111, align 8
  %a.data.gep2112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2108, i32 0, i32 1
  store ptr %a.buf2110, ptr %a.data.gep2112, align 8
  %a.cap.gep2113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2108, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2113, align 8
  store ptr %a.create2108, ptr %var.locals, align 8
  br label %a.after2106

a.after2106:                                      ; preds = %a.create2105, %choice.case2090
  %a.load22114 = load ptr, ptr %var.locals, align 8
  %var.load2115 = load ptr, ptr %var.cur_mod, align 8
  %call.res2116 = call ptr @"overloads::walk"(ptr %fld.load2100, ptr %var.load2101, ptr %a.load22114, ptr %var.load2115)
  store ptr %call.res2116, ptr %var.new_addr, align 8
  %arena.cur2117 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2118 = call ptr @dva_arena_alloc(ptr %arena.cur2117, i64 16)
  %tag.gep2119 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2118, i32 0, i32 0
  store i64 19, ptr %tag.gep2119, align 8
  %pay.gep2120 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2118, i32 0, i32 1
  %var.load2121 = load ptr, ptr %var.new_addr, align 8
  %var.load2122 = load ptr, ptr %var.rm, align 8
  %fld.gep2123 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2122, i32 0, i32 1
  %fld.load2124 = load ptr, ptr %fld.gep2123, align 8
  %var.load2125 = load ptr, ptr %var.rm, align 8
  %fld.gep2126 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2125, i32 0, i32 2
  %fld.load2127 = load ptr, ptr %fld.gep2126, align 8
  %arena.cur2128 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2129 = call ptr @dva_arena_alloc(ptr %arena.cur2128, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2130 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2129, i32 0, i32 0
  store ptr %var.load2121, ptr %rec.fld2130, align 8
  %rec.fld2131 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2129, i32 0, i32 1
  store ptr %fld.load2124, ptr %rec.fld2131, align 8
  %rec.fld2132 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2129, i32 0, i32 2
  store ptr %fld.load2127, ptr %rec.fld2132, align 8
  store ptr %rec.alloc2129, ptr %pay.gep2120, align 8
  br label %choice.exit

choice.case2133:                                  ; preds = %choice.next2091
  %pay.gep2138 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2139 = load ptr, ptr %pay.gep2138, align 8
  store ptr %payload.ptr2139, ptr %var._2140, align 8
  store ptr %payload.ptr2139, ptr %var.so, align 8
  %var.load2141 = load ptr, ptr %var.so, align 8
  %fld.gep2142 = getelementptr inbounds { ptr, ptr }, ptr %var.load2141, i32 0, i32 1
  %fld.load2143 = load ptr, ptr %fld.gep2142, align 8
  %var.load2144 = load ptr, ptr %var.table, align 8
  %call.res2145 = call ptr @"overloads::keep_type"(ptr %fld.load2143, ptr %var.load2144)
  store ptr %call.res2145, ptr %var.new_sti, align 8
  %arena.cur2146 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2147 = call ptr @dva_arena_alloc(ptr %arena.cur2146, i64 16)
  %tag.gep2148 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2147, i32 0, i32 0
  store i64 26, ptr %tag.gep2148, align 8
  %pay.gep2149 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2147, i32 0, i32 1
  %var.load2150 = load ptr, ptr %var.so, align 8
  %fld.gep2151 = getelementptr inbounds { ptr, ptr }, ptr %var.load2150, i32 0, i32 0
  %fld.load2152 = load ptr, ptr %fld.gep2151, align 8
  %var.load2153 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2154 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2155 = call ptr @dva_arena_alloc(ptr %arena.cur2154, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2156 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2155, i32 0, i32 0
  store ptr %fld.load2152, ptr %rec.fld2156, align 8
  %rec.fld2157 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2155, i32 0, i32 1
  store ptr %var.load2153, ptr %rec.fld2157, align 8
  store ptr %rec.alloc2155, ptr %pay.gep2149, align 8
  br label %choice.exit

choice.next2134:                                  ; preds = %choice.next2091
  %tag.gep2160 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2161 = load i64, ptr %tag.gep2160, align 8
  %tag.match2162 = icmp eq i64 %tag.id2161, 29
  br i1 %tag.match2162, label %choice.case2158, label %choice.next2159

choice.case2158:                                  ; preds = %choice.next2134
  %pay.gep2163 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2164 = load ptr, ptr %pay.gep2163, align 8
  store ptr %payload.ptr2164, ptr %var._2165, align 8
  store ptr %payload.ptr2164, ptr %var.ml, align 8
  %arena.cur2166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new2167 = call ptr @dva_arena_alloc(ptr %arena.cur2166, i64 24)
  %arena.cur2168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2169 = call ptr @dva_arena_alloc(ptr %arena.cur2168, i64 128)
  %a.len.gep2170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2167, i32 0, i32 0
  store i64 0, ptr %a.len.gep2170, align 8
  %a.data.gep2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2167, i32 0, i32 1
  store ptr %a.buf2169, ptr %a.data.gep2171, align 8
  %a.cap.gep2172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2172, align 8
  store ptr %a.new2167, ptr %var.new_pairs, align 8
  %var.load2173 = load ptr, ptr %var.ml, align 8
  %a.load2174 = load ptr, ptr %var.ml, align 8
  %a.null2175 = icmp eq ptr %a.load2174, null
  br i1 %a.null2175, label %a.create2176, label %a.after2177

choice.next2159:                                  ; preds = %choice.next2134
  %tag.gep2291 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2292 = load i64, ptr %tag.gep2291, align 8
  %tag.match2293 = icmp eq i64 %tag.id2292, 30
  br i1 %tag.match2293, label %choice.case2289, label %choice.next2290

a.create2176:                                     ; preds = %choice.case2158
  %arena.cur2178 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2179 = call ptr @dva_arena_alloc(ptr %arena.cur2178, i64 24)
  %arena.cur2180 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2181 = call ptr @dva_arena_alloc(ptr %arena.cur2180, i64 128)
  %a.len.gep2182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2179, i32 0, i32 0
  store i64 0, ptr %a.len.gep2182, align 8
  %a.data.gep2183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2179, i32 0, i32 1
  store ptr %a.buf2181, ptr %a.data.gep2183, align 8
  %a.cap.gep2184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2179, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2184, align 8
  store ptr %a.create2179, ptr %var.ml, align 8
  br label %a.after2177

a.after2177:                                      ; preds = %a.create2176, %choice.case2158
  %a.load22185 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22185, i32 0, i32 0
  %arr.cycle.len2187 = load i64, ptr %arr.cycle.len2186, align 8
  %arr.cycle.data2188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22185, i32 0, i32 1
  %arr.cycle.data2189 = load ptr, ptr %arr.cycle.data2188, align 8
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u2191 = load ptr, ptr %var._2165, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after2177
  %counter.load2192 = load i64, ptr %loop.idx.86, align 8
  %loop.cond2193 = icmp slt i64 %counter.load2192, %arr.cycle.len2187
  br i1 %loop.cond2193, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i2194 = sub i64 %counter.load2192, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep2195 = getelementptr i64, ptr %arr.cycle.data2189, i64 %counter.load2192
  %arr.elem.raw2196 = load i64, ptr %arr.elem.gep2195, align 8
  %slot.i2p2197 = inttoptr i64 %arr.elem.raw2196 to ptr
  store i64 %loop.rel.i2194, ptr %var._i2198, align 8
  store ptr %slot.i2p2197, ptr %var._2199, align 8
  store ptr %slot.i2p2197, ptr %var.p2190, align 8
  %var.load2200 = load ptr, ptr %var.p2190, align 8
  %fld.gep2201 = getelementptr inbounds { ptr, ptr }, ptr %var.load2200, i32 0, i32 0
  %fld.load2202 = load ptr, ptr %fld.gep2201, align 8
  %var.load2203 = load ptr, ptr %var.table, align 8
  %var.load2204 = load ptr, ptr %var.locals, align 8
  %a.load2205 = load ptr, ptr %var.locals, align 8
  %a.null2206 = icmp eq ptr %a.load2205, null
  br i1 %a.null2206, label %a.create2207, label %a.after2208

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store2256
  %step.val2270 = load i64, ptr %loop.step.86, align 8
  %loop.next2271 = add i64 %counter.load2192, %step.val2270
  store i64 %loop.next2271, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  store ptr %cycle.prev.u2191, ptr %var._2165, align 8
  %arena.cur2272 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2273 = call ptr @dva_arena_alloc(ptr %arena.cur2272, i64 16)
  %tag.gep2274 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2273, i32 0, i32 0
  store i64 29, ptr %tag.gep2274, align 8
  %pay.gep2275 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2273, i32 0, i32 1
  %var.load2276 = load ptr, ptr %var.new_pairs, align 8
  %a.load2277 = load ptr, ptr %var.new_pairs, align 8
  %a.null2278 = icmp eq ptr %a.load2277, null
  br i1 %a.null2278, label %a.create2279, label %a.after2280

a.create2207:                                     ; preds = %loop.body.86
  %arena.cur2209 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2210 = call ptr @dva_arena_alloc(ptr %arena.cur2209, i64 24)
  %arena.cur2211 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2212 = call ptr @dva_arena_alloc(ptr %arena.cur2211, i64 128)
  %a.len.gep2213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 0
  store i64 0, ptr %a.len.gep2213, align 8
  %a.data.gep2214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 1
  store ptr %a.buf2212, ptr %a.data.gep2214, align 8
  %a.cap.gep2215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2215, align 8
  store ptr %a.create2210, ptr %var.locals, align 8
  br label %a.after2208

a.after2208:                                      ; preds = %a.create2207, %loop.body.86
  %a.load22216 = load ptr, ptr %var.locals, align 8
  %var.load2217 = load ptr, ptr %var.cur_mod, align 8
  %call.res2218 = call ptr @"overloads::walk"(ptr %fld.load2202, ptr %var.load2203, ptr %a.load22216, ptr %var.load2217)
  %var.load2219 = load ptr, ptr %var.p2190, align 8
  %fld.gep2220 = getelementptr inbounds { ptr, ptr }, ptr %var.load2219, i32 0, i32 1
  %fld.load2221 = load ptr, ptr %fld.gep2220, align 8
  %var.load2222 = load ptr, ptr %var.table, align 8
  %var.load2223 = load ptr, ptr %var.locals, align 8
  %a.load2224 = load ptr, ptr %var.locals, align 8
  %a.null2225 = icmp eq ptr %a.load2224, null
  br i1 %a.null2225, label %a.create2226, label %a.after2227

a.create2226:                                     ; preds = %a.after2208
  %arena.cur2228 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2229 = call ptr @dva_arena_alloc(ptr %arena.cur2228, i64 24)
  %arena.cur2230 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2231 = call ptr @dva_arena_alloc(ptr %arena.cur2230, i64 128)
  %a.len.gep2232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2229, i32 0, i32 0
  store i64 0, ptr %a.len.gep2232, align 8
  %a.data.gep2233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2229, i32 0, i32 1
  store ptr %a.buf2231, ptr %a.data.gep2233, align 8
  %a.cap.gep2234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2234, align 8
  store ptr %a.create2229, ptr %var.locals, align 8
  br label %a.after2227

a.after2227:                                      ; preds = %a.create2226, %a.after2208
  %a.load22235 = load ptr, ptr %var.locals, align 8
  %var.load2236 = load ptr, ptr %var.cur_mod, align 8
  %call.res2237 = call ptr @"overloads::walk"(ptr %fld.load2221, ptr %var.load2222, ptr %a.load22235, ptr %var.load2236)
  %arena.cur2238 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc2239 = call ptr @dva_arena_alloc(ptr %arena.cur2238, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2240 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2239, i32 0, i32 0
  store ptr %call.res2218, ptr %rec.fld2240, align 8
  %rec.fld2241 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2239, i32 0, i32 1
  store ptr %call.res2237, ptr %rec.fld2241, align 8
  %a.load2242 = load ptr, ptr %var.new_pairs, align 8
  %a.null2243 = icmp eq ptr %a.load2242, null
  br i1 %a.null2243, label %a.create2244, label %a.after2245

a.create2244:                                     ; preds = %a.after2227
  %arena.cur2246 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2247 = call ptr @dva_arena_alloc(ptr %arena.cur2246, i64 24)
  %arena.cur2248 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2249 = call ptr @dva_arena_alloc(ptr %arena.cur2248, i64 128)
  %a.len.gep2250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2247, i32 0, i32 0
  store i64 0, ptr %a.len.gep2250, align 8
  %a.data.gep2251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2247, i32 0, i32 1
  store ptr %a.buf2249, ptr %a.data.gep2251, align 8
  %a.cap.gep2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2247, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2252, align 8
  store ptr %a.create2247, ptr %var.new_pairs, align 8
  br label %a.after2245

a.after2245:                                      ; preds = %a.create2244, %a.after2227
  %a.load22253 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2254

a.check2254:                                      ; preds = %a.after2245
  %a.len2257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22253, i32 0, i32 0
  %a.len2258 = load i64, ptr %a.len2257, align 8
  %a.cap2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22253, i32 0, i32 2
  %a.cap2260 = load i64, ptr %a.cap2259, align 8
  %a.needs.grow2261 = icmp eq i64 %a.len2258, %a.cap2260
  br i1 %a.needs.grow2261, label %a.grow2255, label %a.store2256

a.grow2255:                                       ; preds = %a.check2254
  call void @dva_array_grow(ptr %a.load22253)
  br label %a.store2256

a.store2256:                                      ; preds = %a.grow2255, %a.check2254
  %a.cur.data2262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22253, i32 0, i32 1
  %a.cur.data2263 = load ptr, ptr %a.cur.data2262, align 8
  %a.cur.len2264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22253, i32 0, i32 0
  %a.cur.len2265 = load i64, ptr %a.cur.len2264, align 8
  %a.elem.gep2266 = getelementptr i64, ptr %a.cur.data2263, i64 %a.cur.len2265
  %slot.p2i2267 = ptrtoint ptr %rec.alloc2239 to i64
  store i64 %slot.p2i2267, ptr %a.elem.gep2266, align 8
  %a.next.len2268 = add i64 %a.cur.len2265, 1
  %b.len.gep2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22253, i32 0, i32 0
  store i64 %a.next.len2268, ptr %b.len.gep2269, align 8
  br label %loop.latch.86

a.create2279:                                     ; preds = %loop.exit.86
  %arena.cur2281 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2282 = call ptr @dva_arena_alloc(ptr %arena.cur2281, i64 24)
  %arena.cur2283 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2284 = call ptr @dva_arena_alloc(ptr %arena.cur2283, i64 128)
  %a.len.gep2285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2282, i32 0, i32 0
  store i64 0, ptr %a.len.gep2285, align 8
  %a.data.gep2286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2282, i32 0, i32 1
  store ptr %a.buf2284, ptr %a.data.gep2286, align 8
  %a.cap.gep2287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2282, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2287, align 8
  store ptr %a.create2282, ptr %var.new_pairs, align 8
  br label %a.after2280

a.after2280:                                      ; preds = %a.create2279, %loop.exit.86
  %a.load22288 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22288, ptr %pay.gep2275, align 8
  br label %choice.exit

choice.case2289:                                  ; preds = %choice.next2159
  %pay.gep2294 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2295 = load ptr, ptr %pay.gep2294, align 8
  store ptr %payload.ptr2295, ptr %var._2296, align 8
  store ptr %payload.ptr2295, ptr %var.ct, align 8
  %var.load2297 = load ptr, ptr %var.ct, align 8
  %var.load2298 = load ptr, ptr %var.table, align 8
  %var.load2299 = load ptr, ptr %var.locals, align 8
  %a.load2300 = load ptr, ptr %var.locals, align 8
  %a.null2301 = icmp eq ptr %a.load2300, null
  br i1 %a.null2301, label %a.create2302, label %a.after2303

choice.next2290:                                  ; preds = %choice.next2159
  %tag.gep2321 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2322 = load i64, ptr %tag.gep2321, align 8
  %tag.match2323 = icmp eq i64 %tag.id2322, 25
  br i1 %tag.match2323, label %choice.case2319, label %choice.next2320

a.create2302:                                     ; preds = %choice.case2289
  %arena.cur2304 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2305 = call ptr @dva_arena_alloc(ptr %arena.cur2304, i64 24)
  %arena.cur2306 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2307 = call ptr @dva_arena_alloc(ptr %arena.cur2306, i64 128)
  %a.len.gep2308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2305, i32 0, i32 0
  store i64 0, ptr %a.len.gep2308, align 8
  %a.data.gep2309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2305, i32 0, i32 1
  store ptr %a.buf2307, ptr %a.data.gep2309, align 8
  %a.cap.gep2310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2305, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2310, align 8
  store ptr %a.create2305, ptr %var.locals, align 8
  br label %a.after2303

a.after2303:                                      ; preds = %a.create2302, %choice.case2289
  %a.load22311 = load ptr, ptr %var.locals, align 8
  %var.load2312 = load ptr, ptr %var.cur_mod, align 8
  %call.res2313 = call ptr @"overloads::walk"(ptr %var.load2297, ptr %var.load2298, ptr %a.load22311, ptr %var.load2312)
  store ptr %call.res2313, ptr %var.new_ce, align 8
  %arena.cur2314 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2315 = call ptr @dva_arena_alloc(ptr %arena.cur2314, i64 16)
  %tag.gep2316 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2315, i32 0, i32 0
  store i64 30, ptr %tag.gep2316, align 8
  %pay.gep2317 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2315, i32 0, i32 1
  %var.load2318 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2318, ptr %pay.gep2317, align 8
  br label %choice.exit

choice.case2319:                                  ; preds = %choice.next2290
  %pay.gep2324 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2325 = load ptr, ptr %pay.gep2324, align 8
  store ptr %payload.ptr2325, ptr %var._2326, align 8
  store ptr %payload.ptr2325, ptr %var.cp2327, align 8
  %arena.cur2328 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2329 = call ptr @dva_arena_alloc(ptr %arena.cur2328, i64 16)
  %tag.gep2330 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2329, i32 0, i32 0
  store i64 25, ptr %tag.gep2330, align 8
  %pay.gep2331 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2329, i32 0, i32 1
  %var.load2332 = load ptr, ptr %var.cp2327, align 8
  %var.load2333 = load ptr, ptr %var.table, align 8
  %var.load2334 = load ptr, ptr %var.locals, align 8
  %a.load2335 = load ptr, ptr %var.locals, align 8
  %a.null2336 = icmp eq ptr %a.load2335, null
  br i1 %a.null2336, label %a.create2337, label %a.after2338

choice.next2320:                                  ; preds = %choice.next2290
  %tag.gep2351 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2352 = load i64, ptr %tag.gep2351, align 8
  %tag.match2353 = icmp eq i64 %tag.id2352, 27
  br i1 %tag.match2353, label %choice.case2349, label %choice.next2350

a.create2337:                                     ; preds = %choice.case2319
  %arena.cur2339 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2340 = call ptr @dva_arena_alloc(ptr %arena.cur2339, i64 24)
  %arena.cur2341 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2342 = call ptr @dva_arena_alloc(ptr %arena.cur2341, i64 128)
  %a.len.gep2343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2340, i32 0, i32 0
  store i64 0, ptr %a.len.gep2343, align 8
  %a.data.gep2344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2340, i32 0, i32 1
  store ptr %a.buf2342, ptr %a.data.gep2344, align 8
  %a.cap.gep2345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2340, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2345, align 8
  store ptr %a.create2340, ptr %var.locals, align 8
  br label %a.after2338

a.after2338:                                      ; preds = %a.create2337, %choice.case2319
  %a.load22346 = load ptr, ptr %var.locals, align 8
  %var.load2347 = load ptr, ptr %var.cur_mod, align 8
  %call.res2348 = call ptr @"overloads::walk"(ptr %var.load2332, ptr %var.load2333, ptr %a.load22346, ptr %var.load2347)
  store ptr %call.res2348, ptr %pay.gep2331, align 8
  br label %choice.exit

choice.case2349:                                  ; preds = %choice.next2320
  %pay.gep2354 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2355 = load ptr, ptr %pay.gep2354, align 8
  store ptr %payload.ptr2355, ptr %var._2356, align 8
  store ptr %payload.ptr2355, ptr %var.bc, align 8
  %arena.cur2357 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2358 = call ptr @dva_arena_alloc(ptr %arena.cur2357, i64 16)
  %tag.gep2359 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2358, i32 0, i32 0
  store i64 27, ptr %tag.gep2359, align 8
  %pay.gep2360 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2358, i32 0, i32 1
  %var.load2361 = load ptr, ptr %var.bc, align 8
  %var.load2362 = load ptr, ptr %var.table, align 8
  %var.load2363 = load ptr, ptr %var.locals, align 8
  %a.load2364 = load ptr, ptr %var.locals, align 8
  %a.null2365 = icmp eq ptr %a.load2364, null
  br i1 %a.null2365, label %a.create2366, label %a.after2367

choice.next2350:                                  ; preds = %choice.next2320
  %var.load2378 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2366:                                     ; preds = %choice.case2349
  %arena.cur2368 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2369 = call ptr @dva_arena_alloc(ptr %arena.cur2368, i64 24)
  %arena.cur2370 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2371 = call ptr @dva_arena_alloc(ptr %arena.cur2370, i64 128)
  %a.len.gep2372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 0
  store i64 0, ptr %a.len.gep2372, align 8
  %a.data.gep2373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 1
  store ptr %a.buf2371, ptr %a.data.gep2373, align 8
  %a.cap.gep2374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2374, align 8
  store ptr %a.create2369, ptr %var.locals, align 8
  br label %a.after2367

a.after2367:                                      ; preds = %a.create2366, %choice.case2349
  %a.load22375 = load ptr, ptr %var.locals, align 8
  %var.load2376 = load ptr, ptr %var.cur_mod, align 8
  %call.res2377 = call ptr @"overloads::walk"(ptr %var.load2361, ptr %var.load2362, ptr %a.load22375, ptr %var.load2376)
  store ptr %call.res2377, ptr %pay.gep2360, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  store { i64, ptr } %call.res23, ptr %ret.ub.alloc25, align 8
  br label %choice.exit19

choice.else18:                                    ; preds = %a.after
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res26 = phi ptr [ %ret.ub.alloc25, %choice.then17 ], [ @str.1.struct, %choice.else18 ]
  store ptr %choice.res26, ptr %var.fam, align 8
  %var.load27 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len28, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag31 = lshr i64 %eq.lhs.len29, 48
  %tag.immortal33 = icmp eq i64 %str.tag31, 0
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current35 = icmp eq i64 %str.tag31, %active.gen34
  %tag.fast.ok36 = or i1 %tag.immortal33, %tag.current35
  br i1 %tag.fast.ok36, label %str_ok32, label %tag.slow_check37

str_ok32:                                         ; preds = %tag.slow_check37, %choice.exit19
  %eq.rhs.len38 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len39 = and i64 %eq.rhs.len38, 281474976710655
  %eq.len40 = icmp eq i64 %eq.lhs.len30, %eq.rhs.len39
  br i1 %eq.len40, label %str.eq.then41, label %str.eq.else42

tag.slow_check37:                                 ; preds = %choice.exit19
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag31)
  br label %str_ok32

str.eq.then41:                                    ; preds = %str_ok32
  %eq.lhs.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.lhs.data45 = load ptr, ptr %eq.lhs.data44, align 8
  %eq.rhs.data46 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp47 = call i32 @memcmp(ptr %eq.lhs.data45, ptr %eq.rhs.data46, i64 %eq.lhs.len30)
  %eq.cmp.zero48 = icmp eq i32 %eq.memcmp47, 0
  br label %str.eq.merge43

str.eq.else42:                                    ; preds = %str_ok32
  br label %str.eq.merge43

str.eq.merge43:                                   ; preds = %str.eq.else42, %str.eq.then41
  %str.eq.result49 = phi i1 [ %eq.cmp.zero48, %str.eq.then41 ], [ false, %str.eq.else42 ]
  %str.neq50 = xor i1 %str.eq.result49, true
  store i1 %str.neq50, ptr %var.family, align 1
  %var.load51 = load i1, ptr %var.family, align 1
  br i1 %var.load51, label %choice.then52, label %choice.else53

choice.then52:                                    ; preds = %str.eq.merge43
  %var.load55 = load ptr, ptr %var.fam, align 8
  %var.load56 = load ptr, ptr %var.c, align 8
  %fld.gep57 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load56, i32 0, i32 2
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load58, i32 0, i32 0
  %a.len.query59 = load i64, ptr %a.len.query, align 8
  %call.res60 = call { i64, ptr } @"overloads::symbol"(ptr %var.load55, i64 %a.len.query59)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  store { i64, ptr } %call.res60, ptr %ret.ub.alloc62, align 8
  br label %choice.exit54

choice.else53:                                    ; preds = %str.eq.merge43
  %var.load63 = load ptr, ptr %var.c, align 8
  %fld.gep64 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load ptr, ptr %fld.gep64, align 8
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.else53, %choice.then52
  %choice.res66 = phi ptr [ %ret.ub.alloc62, %choice.then52 ], [ %fld.load65, %choice.else53 ]
  store ptr %choice.res66, ptr %var.target_name, align 8
  %var.load67 = load i1, ptr %var.family, align 1
  br i1 %var.load67, label %choice.then68, label %choice.else69

choice.then68:                                    ; preds = %choice.exit54
  %var.load71 = load ptr, ptr %var.ctx, align 8
  %var.load72 = load ptr, ptr %var.fam, align 8
  %var.load73 = load ptr, ptr %var.c, align 8
  %fld.gep74 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 2
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %a.len.query76 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load75, i32 0, i32 0
  %a.len.query77 = load i64, ptr %a.len.query76, align 8
  %call.res78 = call ptr @"overloads::signature"(ptr %var.load71, ptr %var.load72, i64 %a.len.query77)
  br label %choice.exit70

choice.else69:                                    ; preds = %choice.exit54
  %call.res79 = call ptr @"overloads::unknown"()
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else69, %choice.then68
  %choice.res80 = phi ptr [ %call.res78, %choice.then68 ], [ %call.res79, %choice.else69 ]
  store ptr %choice.res80, ptr %var.expected, align 8
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 128)
  %a.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep84, align 8
  %a.data.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf83, ptr %a.data.gep85, align 8
  %a.cap.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep86, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load87 = load ptr, ptr %var.c, align 8
  %fld.gep88 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load87, i32 0, i32 2
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load89, i32 0, i32 0
  %arr.cycle.len90 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load89, i32 0, i32 1
  %arr.cycle.data91 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.74, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %choice.exit70
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len90
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data91, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load92 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
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
  %var.load187 = load i1, ptr %var.family, align 1
  br i1 %var.load187, label %choice.then188, label %choice.else189

choice.exit93:                                    ; preds = %choice.next, %choice.exit103
  %choice.res136 = phi ptr [ %choice.res134, %choice.exit103 ], [ %call.res135, %choice.next ]
  store ptr %choice.res136, ptr %var.arg_ti, align 8
  %var.load137 = load ptr, ptr %var.a, align 8
  %var.load138 = load ptr, ptr %var.ctx, align 8
  %var.load139 = load ptr, ptr %var.locals, align 8
  %a.load140 = load ptr, ptr %var.locals, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

choice.case:                                      ; preds = %loop.body.74
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._94, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load95 = load i64, ptr %var.i, align 8
  %var.load96 = load ptr, ptr %var.f, align 8
  %fld.gep97 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load96, i32 0, i32 1
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %a.len.query99 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load98, i32 0, i32 0
  %a.len.query100 = load i64, ptr %a.len.query99, align 8
  %cmptmp = icmp slt i64 %var.load95, %a.len.query100
  br i1 %cmptmp, label %choice.then101, label %choice.else102

choice.next:                                      ; preds = %loop.body.74
  %call.res135 = call ptr @"overloads::unknown"()
  br label %choice.exit93

choice.then101:                                   ; preds = %choice.case
  %var.load104 = load ptr, ptr %var.f, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load104, i32 0, i32 1
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %var.load107 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load106, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.else102:                                   ; preds = %choice.case
  %call.res133 = call ptr @"overloads::unknown"()
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %unwrap.pos.75
  %choice.res134 = phi ptr [ %pay.ptr, %unwrap.pos.75 ], [ %call.res133, %choice.else102 ]
  br label %choice.exit93

a.rd.check:                                       ; preds = %choice.then101
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load106, i32 0, i32 0
  %a.rd.len108 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load107, 0
  %a.rd.lt = icmp slt i64 %var.load107, %a.rd.len108
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load106, i32 0, i32 1
  %a.rd.data109 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data109, i64 %var.load107
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then101
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 56)
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
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 56)
  %err.code.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 0
  store i64 4011, ptr %err.code.gep113, align 8
  %err.msg.gep114 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep114, align 8
  %err.file.gep115 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep115, align 8
  %err.line.gep116 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 3
  store i64 0, ptr %err.line.gep116, align 8
  %err.col.gep117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 4
  store i64 0, ptr %err.col.gep117, align 8
  %err.ctx.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc112, i32 0, i32 5
  %err.ctx0.gep119 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep118, i32 0, i32 0
  store i64 %var.load107, ptr %err.ctx0.gep119, align 8
  %err.ctx1.gep120 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep118, i32 0, i32 1
  store i64 %a.rd.len108, ptr %err.ctx1.gep120, align 8
  %err.p2i121 = ptrtoint ptr %err.alloc112 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i121, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  br label %choice.exit103

unwrap.abort.75:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep122, align 8
  %err.msg.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep123, align 8
  %err.file.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep124, align 8
  %err.line.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep125, align 8
  %err.col.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep126, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len127 = load i64, ptr %err.msg.len, align 8
  %err.msg.len128 = and i64 %err.msg.len127, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len128 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data129 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len130 = load i64, ptr %err.file.len, align 8
  %err.file.len131 = and i64 %err.file.len130, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len131 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data132 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data129, i32 %err.file.len32, ptr %err.file.data132, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create142:                                      ; preds = %choice.exit93
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 128)
  %a.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 0
  store i64 0, ptr %a.len.gep148, align 8
  %a.data.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 1
  store ptr %a.buf147, ptr %a.data.gep149, align 8
  %a.cap.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 2
  store i64 16, ptr %a.cap.gep150, align 8
  store ptr %a.create145, ptr %var.locals, align 8
  br label %a.after143

a.after143:                                       ; preds = %a.create142, %choice.exit93
  %a.load2151 = load ptr, ptr %var.locals, align 8
  %var.load152 = load ptr, ptr %var.cur_mod, align 8
  %call.res153 = call ptr @"overloads::walk"(ptr %var.load137, ptr %var.load138, ptr %a.load2151, ptr %var.load152)
  %var.load154 = load ptr, ptr %var.arg_ti, align 8
  %var.load155 = load ptr, ptr %var.ctx, align 8
  %var.load156 = load ptr, ptr %var.locals, align 8
  %a.load157 = load ptr, ptr %var.locals, align 8
  %a.null158 = icmp eq ptr %a.load157, null
  br i1 %a.null158, label %a.create159, label %a.after160

a.create159:                                      ; preds = %a.after143
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 24)
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 128)
  %a.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 0
  store i64 0, ptr %a.len.gep165, align 8
  %a.data.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 1
  store ptr %a.buf164, ptr %a.data.gep166, align 8
  %a.cap.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create162, i32 0, i32 2
  store i64 16, ptr %a.cap.gep167, align 8
  store ptr %a.create162, ptr %var.locals, align 8
  br label %a.after160

a.after160:                                       ; preds = %a.create159, %a.after143
  %a.load2168 = load ptr, ptr %var.locals, align 8
  %var.load169 = load ptr, ptr %var.cur_mod, align 8
  %call.res170 = call ptr @"overloads::select_value"(ptr %call.res153, ptr %var.load154, ptr %var.load155, ptr %a.load2168, ptr %var.load169)
  %a.load171 = load ptr, ptr %var.args, align 8
  %a.null172 = icmp eq ptr %a.load171, null
  br i1 %a.null172, label %a.create173, label %a.after174

a.create173:                                      ; preds = %a.after160
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 24)
  %arena.cur177 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 128)
  %a.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 0
  store i64 0, ptr %a.len.gep179, align 8
  %a.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 1
  store ptr %a.buf178, ptr %a.data.gep180, align 8
  %a.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 2
  store i64 16, ptr %a.cap.gep181, align 8
  store ptr %a.create176, ptr %var.args, align 8
  br label %a.after174

a.after174:                                       ; preds = %a.create173, %a.after160
  %a.load2182 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after174
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  %a.len183 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 2
  %a.cap184 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len183, %a.cap184
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2182)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 1
  %a.cur.data185 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  %a.cur.len186 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data185, i64 %a.cur.len186
  %slot.p2i = ptrtoint ptr %call.res170 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len186, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.74

choice.then188:                                   ; preds = %loop.exit.74
  %arena.cur191 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 16)
  %tag.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep192, align 8
  %pay.gep193 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load194 = load ptr, ptr %var.target_name, align 8
  store ptr %var.load194, ptr %pay.gep193, align 8
  br label %choice.exit190

choice.else189:                                   ; preds = %loop.exit.74
  %var.load195 = load ptr, ptr %var.c, align 8
  %fld.gep196 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load195, i32 0, i32 1
  %fld.load197 = load ptr, ptr %fld.gep196, align 8
  %var.load198 = load ptr, ptr %var.ctx, align 8
  %var.load199 = load ptr, ptr %var.locals, align 8
  %a.load200 = load ptr, ptr %var.locals, align 8
  %a.null201 = icmp eq ptr %a.load200, null
  br i1 %a.null201, label %a.create202, label %a.after203

choice.exit190:                                   ; preds = %a.after203, %choice.then188
  %choice.res214 = phi ptr [ %enum.alloc, %choice.then188 ], [ %call.res213, %a.after203 ]
  store ptr %choice.res214, ptr %var.target, align 8
  %var.load215 = load ptr, ptr %var.target_name, align 8
  %var.load216 = load ptr, ptr %var.target, align 8
  %var.load217 = load ptr, ptr %var.args, align 8
  %a.load218 = load ptr, ptr %var.args, align 8
  %a.null219 = icmp eq ptr %a.load218, null
  br i1 %a.null219, label %a.create220, label %a.after221

a.create202:                                      ; preds = %choice.else189
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 24)
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 128)
  %a.len.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 0
  store i64 0, ptr %a.len.gep208, align 8
  %a.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 1
  store ptr %a.buf207, ptr %a.data.gep209, align 8
  %a.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep210, align 8
  store ptr %a.create205, ptr %var.locals, align 8
  br label %a.after203

a.after203:                                       ; preds = %a.create202, %choice.else189
  %a.load2211 = load ptr, ptr %var.locals, align 8
  %var.load212 = load ptr, ptr %var.cur_mod, align 8
  %call.res213 = call ptr @"overloads::walk"(ptr %fld.load197, ptr %var.load198, ptr %a.load2211, ptr %var.load212)
  br label %choice.exit190

a.create220:                                      ; preds = %choice.exit190
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 24)
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 128)
  %a.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 0
  store i64 0, ptr %a.len.gep226, align 8
  %a.data.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 1
  store ptr %a.buf225, ptr %a.data.gep227, align 8
  %a.cap.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 2
  store i64 16, ptr %a.cap.gep228, align 8
  store ptr %a.create223, ptr %var.args, align 8
  br label %a.after221

a.after221:                                       ; preds = %a.create220, %choice.exit190
  %a.load2229 = load ptr, ptr %var.args, align 8
  %var.load230 = load ptr, ptr %var.c, align 8
  %fld.gep231 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load230, i32 0, i32 3
  %fld.load232 = load i64, ptr %fld.gep231, align 8
  %var.load233 = load ptr, ptr %var.c, align 8
  %fld.gep234 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load233, i32 0, i32 4
  %fld.load235 = load i64, ptr %fld.gep234, align 8
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load215, ptr %rec.fld, align 8
  %rec.fld237 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load216, ptr %rec.fld237, align 8
  %rec.fld238 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2229, ptr %rec.fld238, align 8
  %rec.fld239 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load232, ptr %rec.fld239, align 8
  %rec.fld240 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load235, ptr %rec.fld240, align 8
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

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
