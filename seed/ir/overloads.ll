; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
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

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_overloads() #1 {
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

define ptr @"overloads::unknown"() #1 {
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

define i1 @"overloads::contains"(ptr %0, ptr %1) #1 {
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
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load21 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load21

str_gen_check:                                    ; preds = %loop.body.59
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.59
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
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

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"overloads::name_of"(ptr %0) #1 {
entry:
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
  %choice.res80 = phi ptr [ %var.load1, %choice.case ], [ %choice.res, %choice.exit11 ], [ @str.1.struct, %choice.next3 ]
  ret ptr %choice.res80

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
  %call.res = call ptr @"overloads::name_of"(ptr %fld.load14)
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs15 = load i64, ptr %concat.lhs, align 8
  %concat.lhs16 = and i64 %concat.lhs15, 281474976710655
  %str.tag = lshr i64 %concat.lhs15, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %choice.case2
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %concat.tot.len70
  %choice.res = phi ptr [ %concat.str77, %concat.tot.len70 ], [ @str.1.struct, %choice.else ]
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %concat.lhs17 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs18 = load ptr, ptr %concat.lhs17, align 8
  %concat.rhs = load i64, ptr @str.0.struct, align 8
  %concat.rhs19 = and i64 %concat.rhs, 281474976710655
  %str.tag20 = lshr i64 %concat.rhs, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check22:                                  ; preds = %str_ok
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %str_ok
  %concat.rhs27 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 %concat.rhs19)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len28

str_stale24:                                      ; preds = %str_gen_check22
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

concat.sum.len28:                                 ; preds = %str_overflow_abort, %str_ok23
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum29 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf30 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %concat.tot.len31

str_overflow_abort:                               ; preds = %str_ok23
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len28

concat.tot.len31:                                 ; preds = %str_overflow_abort32, %concat.sum.len28
  %arena.cur33 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs18, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs27, i64 %concat.rhs19, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur34 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load35 = load ptr, ptr %var.m, align 8
  %fld.gep36 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs39 = load i64, ptr %concat.lhs38, align 8
  %concat.lhs40 = and i64 %concat.lhs39, 281474976710655
  %str.tag41 = lshr i64 %concat.lhs39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

str_overflow_abort32:                             ; preds = %concat.sum.len28
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len31

str_gen_check43:                                  ; preds = %concat.tot.len31
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %concat.tot.len31
  %concat.lhs48 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs49 = load ptr, ptr %concat.lhs48, align 8
  %concat.rhs50 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %concat.rhs51 = load i64, ptr %concat.rhs50, align 8
  %concat.rhs52 = and i64 %concat.rhs51, 281474976710655
  %str.tag53 = lshr i64 %concat.rhs51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_stale45:                                      ; preds = %str_gen_check43
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

str_gen_check55:                                  ; preds = %str_ok44
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %str_ok44
  %concat.rhs60 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %concat.rhs61 = load ptr, ptr %concat.rhs60, align 8
  %concat.sum.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs40, i64 %concat.rhs52)
  %sum63 = extractvalue { i64, i1 } %concat.sum.len62, 0
  %ovf64 = extractvalue { i64, i1 } %concat.sum.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %concat.sum.len65

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

concat.sum.len65:                                 ; preds = %str_overflow_abort66, %str_ok56
  %concat.tot.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum63, i64 1)
  %sum68 = extractvalue { i64, i1 } %concat.tot.len67, 0
  %ovf69 = extractvalue { i64, i1 } %concat.tot.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %concat.tot.len70

str_overflow_abort66:                             ; preds = %str_ok56
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len65

concat.tot.len70:                                 ; preds = %str_overflow_abort71, %concat.sum.len65
  %arena.cur72 = call ptr @dva_arena_current()
  %concat.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum68)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf73, ptr align 1 %concat.lhs49, i64 %concat.lhs40, i1 false)
  %concat.mid74 = getelementptr i8, ptr %concat.buf73, i64 %concat.lhs40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid74, ptr align 1 %concat.rhs61, i64 %concat.rhs52, i1 false)
  %concat.nul75 = getelementptr i8, ptr %concat.buf73, i64 %sum63
  store i8 0, ptr %concat.nul75, align 1
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.str77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep78 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 0
  store i64 %sum63, ptr %str.build.len.gep78, align 8
  %str.build.data.gep79 = getelementptr inbounds { i64, ptr }, ptr %concat.str77, i32 0, i32 1
  store ptr %concat.buf73, ptr %str.build.data.gep79, align 8
  br label %choice.exit11

str_overflow_abort71:                             ; preds = %concat.sum.len65
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len70
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"overloads::symbol"(ptr %0, i64 %1) #1 {
entry:
  %var.arity = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.arity, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.2.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok9
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load21 = load i64, ptr %var.arity, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load21)
  %concat.lhs22 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs23 = load i64, ptr %concat.lhs22, align 8
  %concat.lhs24 = and i64 %concat.lhs23, 281474976710655
  %str.tag25 = lshr i64 %concat.lhs23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check27:                                  ; preds = %concat.tot.len17
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %concat.tot.len17
  %concat.lhs32 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs33 = load ptr, ptr %concat.lhs32, align 8
  %concat.rhs34 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.rhs35 = load i64, ptr %concat.rhs34, align 8
  %concat.rhs36 = and i64 %concat.rhs35, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale29:                                      ; preds = %str_gen_check27
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check39:                                  ; preds = %str_ok28
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok28
  %concat.rhs44 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.rhs45 = load ptr, ptr %concat.rhs44, align 8
  %concat.sum.len46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs24, i64 %concat.rhs36)
  %sum47 = extractvalue { i64, i1 } %concat.sum.len46, 0
  %ovf48 = extractvalue { i64, i1 } %concat.sum.len46, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.sum.len49

str_stale41:                                      ; preds = %str_gen_check39
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len49:                                 ; preds = %str_overflow_abort50, %str_ok40
  %concat.tot.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum47, i64 1)
  %sum52 = extractvalue { i64, i1 } %concat.tot.len51, 0
  %ovf53 = extractvalue { i64, i1 } %concat.tot.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %concat.tot.len54

str_overflow_abort50:                             ; preds = %str_ok40
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len49

concat.tot.len54:                                 ; preds = %str_overflow_abort55, %concat.sum.len49
  %arena.cur56 = call ptr @dva_arena_current()
  %concat.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf57, ptr align 1 %concat.lhs33, i64 %concat.lhs24, i1 false)
  %concat.mid58 = getelementptr i8, ptr %concat.buf57, i64 %concat.lhs24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid58, ptr align 1 %concat.rhs45, i64 %concat.rhs36, i1 false)
  %concat.nul59 = getelementptr i8, ptr %concat.buf57, i64 %sum47
  store i8 0, ptr %concat.nul59, align 1
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.str61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %str.build.len.gep62 = getelementptr inbounds { i64, ptr }, ptr %concat.str61, i32 0, i32 0
  store i64 %sum47, ptr %str.build.len.gep62, align 8
  %str.build.data.gep63 = getelementptr inbounds { i64, ptr }, ptr %concat.str61, i32 0, i32 1
  store ptr %concat.buf57, ptr %str.build.data.gep63, align 8
  ret ptr %concat.str61

str_overflow_abort55:                             ; preds = %concat.sum.len49
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len54
}

declare ptr @"str::from_int"(i64) #1

define i1 @"overloads::is_family"(ptr %0, ptr %1) #1 {
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

define i1 @"overloads::name_is_qualified"(ptr %0, i64 %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.61.then, label %and.61.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.61.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.61.else:                                      ; preds = %str_ok
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %idx_ok
  %and.61.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.61.else ]
  br i1 %and.61.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.61.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.61.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.61.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.61.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.61.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res70 = phi i1 [ %choice.res, %choice.exit66 ], [ false, %choice.else ]
  ret i1 %choice.res70

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.62.then, label %and.62.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.62.then:                                      ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.62.else:                                      ; preds = %idx_ok33
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok57
  %and.62.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.62.else ]
  br i1 %and.62.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.62.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.62.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.62.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.62.exit
  br label %choice.exit66

choice.else65:                                    ; preds = %and.62.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 1
  %call.res = call i1 @"overloads::name_is_qualified"(ptr %var.load67, i64 %addtmp69)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i1 [ true, %choice.then64 ], [ %call.res, %choice.else65 ]
  br label %choice.exit
}

define i64 @"overloads::decl_module_find"(ptr %0, i64 %1, i64 %2) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.63.then, label %and.63.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.63.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.63.else:                                      ; preds = %str_ok
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %idx_ok
  %and.63.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.63.else ]
  br i1 %and.63.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.63.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.63.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.63.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.63.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.63.exit
  %var.load76 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res77 = phi i64 [ %choice.res, %choice.exit66 ], [ %var.load76, %choice.else ]
  ret i64 %choice.res77

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.64.then, label %and.64.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.64.then:                                      ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.64.else:                                      ; preds = %idx_ok33
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %idx_ok57
  %and.64.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.64.else ]
  br i1 %and.64.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.64.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.64.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.64.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.64.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 2
  %var.load70 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"overloads::decl_module_find"(ptr %var.load67, i64 %addtmp69, i64 %var.load70)
  br label %choice.exit66

choice.else65:                                    ; preds = %and.64.exit
  %var.load71 = load ptr, ptr %var.name, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %addtmp73 = add i64 %var.load72, 1
  %var.load74 = load i64, ptr %var.last, align 8
  %call.res75 = call i64 @"overloads::decl_module_find"(ptr %var.load71, i64 %addtmp73, i64 %var.load74)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i64 [ %call.res, %choice.then64 ], [ %call.res75, %choice.else65 ]
  br label %choice.exit
}

define ptr @"overloads::decl_module"(ptr %0, i64 %1) #1 {
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
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %str_ok, %choice.then
  %choice.res = phi ptr [ @str.1.struct, %choice.then ], [ %str.view, %str_ok ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
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
  %arena.cur7 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"overloads::resolve_family_name"(ptr %0, ptr %1, ptr %2) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.65.then, label %or.65.else

or.65.then:                                       ; preds = %str.eq.merge
  br label %or.65.exit

or.65.else:                                       ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"overloads::name_is_qualified"(ptr %var.load12, i64 0)
  br label %or.65.exit

or.65.exit:                                       ; preds = %or.65.else, %or.65.then
  %or.65.phi = phi i1 [ %str.eq.result, %or.65.then ], [ %call.res, %or.65.else ]
  br i1 %or.65.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.65.exit
  %var.load13 = load ptr, ptr %var.ctx, align 8
  %var.load14 = load ptr, ptr %var.name, align 8
  %call.res15 = call i1 @"overloads::is_family"(ptr %var.load13, ptr %var.load14)
  br i1 %call.res15, label %choice.then16, label %choice.else17

choice.else:                                      ; preds = %or.65.exit
  %var.load20 = load ptr, ptr %var.cur_mod, align 8
  %concat.lhs = load i64, ptr @str.1.struct, align 8
  %concat.lhs21 = and i64 %concat.lhs, 281474976710655
  %str.tag22 = lshr i64 %concat.lhs, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

choice.exit:                                      ; preds = %choice.exit265, %choice.exit18
  %choice.res268 = phi ptr [ %choice.res, %choice.exit18 ], [ @str.1.struct, %choice.exit265 ]
  ret ptr %choice.res268

choice.then16:                                    ; preds = %choice.then
  %var.load19 = load ptr, ptr %var.name, align 8
  br label %choice.exit18

choice.else17:                                    ; preds = %choice.then
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi ptr [ %var.load19, %choice.then16 ], [ @str.1.struct, %choice.else17 ]
  br label %choice.exit

str_gen_check24:                                  ; preds = %choice.else
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %choice.else
  %concat.lhs29 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %concat.rhs30 = load i64, ptr %concat.rhs, align 8
  %concat.rhs31 = and i64 %concat.rhs30, 281474976710655
  %str.tag32 = lshr i64 %concat.rhs30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale26:                                      ; preds = %str_gen_check24
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check34:                                  ; preds = %str_ok25
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok25
  %concat.rhs39 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %concat.rhs40 = load ptr, ptr %concat.rhs39, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs21, i64 %concat.rhs31)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len41

str_stale36:                                      ; preds = %str_gen_check34
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

concat.sum.len41:                                 ; preds = %str_overflow_abort, %str_ok35
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum42 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf43 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.tot.len44

str_overflow_abort:                               ; preds = %str_ok35
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len41

concat.tot.len44:                                 ; preds = %str_overflow_abort45, %concat.sum.len41
  %arena.cur46 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs29, i64 %concat.lhs21, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs40, i64 %concat.rhs31, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur47 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs48 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs49 = load i64, ptr %concat.lhs48, align 8
  %concat.lhs50 = and i64 %concat.lhs49, 281474976710655
  %str.tag51 = lshr i64 %concat.lhs49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

str_overflow_abort45:                             ; preds = %concat.sum.len41
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len44

str_gen_check53:                                  ; preds = %concat.tot.len44
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %concat.tot.len44
  %concat.lhs58 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs59 = load ptr, ptr %concat.lhs58, align 8
  %concat.rhs60 = load i64, ptr @str.0.struct, align 8
  %concat.rhs61 = and i64 %concat.rhs60, 281474976710655
  %str.tag62 = lshr i64 %concat.rhs60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale55:                                      ; preds = %str_gen_check53
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

str_gen_check64:                                  ; preds = %str_ok54
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok54
  %concat.rhs69 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len70 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs50, i64 %concat.rhs61)
  %sum71 = extractvalue { i64, i1 } %concat.sum.len70, 0
  %ovf72 = extractvalue { i64, i1 } %concat.sum.len70, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.sum.len73

str_stale66:                                      ; preds = %str_gen_check64
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

concat.sum.len73:                                 ; preds = %str_overflow_abort74, %str_ok65
  %concat.tot.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum71, i64 1)
  %sum76 = extractvalue { i64, i1 } %concat.tot.len75, 0
  %ovf77 = extractvalue { i64, i1 } %concat.tot.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %concat.tot.len78

str_overflow_abort74:                             ; preds = %str_ok65
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len73

concat.tot.len78:                                 ; preds = %str_overflow_abort79, %concat.sum.len73
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.buf81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf81, ptr align 1 %concat.lhs59, i64 %concat.lhs50, i1 false)
  %concat.mid82 = getelementptr i8, ptr %concat.buf81, i64 %concat.lhs50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid82, ptr align 1 %concat.rhs69, i64 %concat.rhs61, i1 false)
  %concat.nul83 = getelementptr i8, ptr %concat.buf81, i64 %sum71
  store i8 0, ptr %concat.nul83, align 1
  %arena.cur84 = call ptr @dva_arena_current()
  %concat.str85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %str.build.len.gep86 = getelementptr inbounds { i64, ptr }, ptr %concat.str85, i32 0, i32 0
  store i64 %sum71, ptr %str.build.len.gep86, align 8
  %str.build.data.gep87 = getelementptr inbounds { i64, ptr }, ptr %concat.str85, i32 0, i32 1
  store ptr %concat.buf81, ptr %str.build.data.gep87, align 8
  %var.load88 = load ptr, ptr %var.name, align 8
  %concat.lhs89 = getelementptr inbounds { i64, ptr }, ptr %concat.str85, i32 0, i32 0
  %concat.lhs90 = load i64, ptr %concat.lhs89, align 8
  %concat.lhs91 = and i64 %concat.lhs90, 281474976710655
  %str.tag92 = lshr i64 %concat.lhs90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

str_overflow_abort79:                             ; preds = %concat.sum.len73
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len78

str_gen_check94:                                  ; preds = %concat.tot.len78
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %concat.tot.len78
  %concat.lhs99 = getelementptr inbounds { i64, ptr }, ptr %concat.str85, i32 0, i32 1
  %concat.lhs100 = load ptr, ptr %concat.lhs99, align 8
  %concat.rhs101 = getelementptr inbounds { i64, ptr }, ptr %var.load88, i32 0, i32 0
  %concat.rhs102 = load i64, ptr %concat.rhs101, align 8
  %concat.rhs103 = and i64 %concat.rhs102, 281474976710655
  %str.tag104 = lshr i64 %concat.rhs102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

str_stale96:                                      ; preds = %str_gen_check94
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

str_gen_check106:                                 ; preds = %str_ok95
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %str_ok95
  %concat.rhs111 = getelementptr inbounds { i64, ptr }, ptr %var.load88, i32 0, i32 1
  %concat.rhs112 = load ptr, ptr %concat.rhs111, align 8
  %concat.sum.len113 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs91, i64 %concat.rhs103)
  %sum114 = extractvalue { i64, i1 } %concat.sum.len113, 0
  %ovf115 = extractvalue { i64, i1 } %concat.sum.len113, 1
  br i1 %ovf115, label %str_overflow_abort117, label %concat.sum.len116

str_stale108:                                     ; preds = %str_gen_check106
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

concat.sum.len116:                                ; preds = %str_overflow_abort117, %str_ok107
  %concat.tot.len118 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum114, i64 1)
  %sum119 = extractvalue { i64, i1 } %concat.tot.len118, 0
  %ovf120 = extractvalue { i64, i1 } %concat.tot.len118, 1
  br i1 %ovf120, label %str_overflow_abort122, label %concat.tot.len121

str_overflow_abort117:                            ; preds = %str_ok107
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len116

concat.tot.len121:                                ; preds = %str_overflow_abort122, %concat.sum.len116
  %arena.cur123 = call ptr @dva_arena_current()
  %concat.buf124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 %sum119)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf124, ptr align 1 %concat.lhs100, i64 %concat.lhs91, i1 false)
  %concat.mid125 = getelementptr i8, ptr %concat.buf124, i64 %concat.lhs91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid125, ptr align 1 %concat.rhs112, i64 %concat.rhs103, i1 false)
  %concat.nul126 = getelementptr i8, ptr %concat.buf124, i64 %sum114
  store i8 0, ptr %concat.nul126, align 1
  %arena.cur127 = call ptr @dva_arena_current()
  %concat.str128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 16)
  %str.build.len.gep129 = getelementptr inbounds { i64, ptr }, ptr %concat.str128, i32 0, i32 0
  store i64 %sum114, ptr %str.build.len.gep129, align 8
  %str.build.data.gep130 = getelementptr inbounds { i64, ptr }, ptr %concat.str128, i32 0, i32 1
  store ptr %concat.buf124, ptr %str.build.data.gep130, align 8
  store ptr %concat.str128, ptr %var.pub, align 8
  %var.load131 = load ptr, ptr %var.ctx, align 8
  %var.load132 = load ptr, ptr %var.pub, align 8
  %call.res133 = call i1 @"overloads::is_family"(ptr %var.load131, ptr %var.load132)
  br i1 %call.res133, label %choice.then134, label %choice.exit135

str_overflow_abort122:                            ; preds = %concat.sum.len116
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len121

choice.then134:                                   ; preds = %concat.tot.len121
  %var.load136 = load ptr, ptr %var.pub, align 8
  ret ptr %var.load136

choice.exit135:                                   ; preds = %ret.dead, %concat.tot.len121
  %var.load137 = load ptr, ptr %var.cur_mod, align 8
  %concat.lhs138 = load i64, ptr @str.1.struct, align 8
  %concat.lhs139 = and i64 %concat.lhs138, 281474976710655
  %str.tag140 = lshr i64 %concat.lhs138, 48
  %str.immortal141 = icmp eq i64 %str.tag140, 0
  br i1 %str.immortal141, label %str_ok143, label %str_gen_check142

ret.dead:                                         ; No predecessors!
  br label %choice.exit135

str_gen_check142:                                 ; preds = %choice.exit135
  %arena.cur145 = call ptr @dva_arena_current()
  %tag.valid146 = call i1 @dva_arena_validate_tag(ptr %arena.cur145, i64 %str.tag140)
  br i1 %tag.valid146, label %str_ok143, label %str_stale144

str_ok143:                                        ; preds = %str_stale144, %str_gen_check142, %choice.exit135
  %concat.lhs147 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %concat.rhs148 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 0
  %concat.rhs149 = load i64, ptr %concat.rhs148, align 8
  %concat.rhs150 = and i64 %concat.rhs149, 281474976710655
  %str.tag151 = lshr i64 %concat.rhs149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_stale144:                                     ; preds = %str_gen_check142
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok143

str_gen_check153:                                 ; preds = %str_ok143
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %str_ok143
  %concat.rhs158 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 1
  %concat.rhs159 = load ptr, ptr %concat.rhs158, align 8
  %concat.sum.len160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs139, i64 %concat.rhs150)
  %sum161 = extractvalue { i64, i1 } %concat.sum.len160, 0
  %ovf162 = extractvalue { i64, i1 } %concat.sum.len160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %concat.sum.len163

str_stale155:                                     ; preds = %str_gen_check153
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

concat.sum.len163:                                ; preds = %str_overflow_abort164, %str_ok154
  %concat.tot.len165 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum161, i64 1)
  %sum166 = extractvalue { i64, i1 } %concat.tot.len165, 0
  %ovf167 = extractvalue { i64, i1 } %concat.tot.len165, 1
  br i1 %ovf167, label %str_overflow_abort169, label %concat.tot.len168

str_overflow_abort164:                            ; preds = %str_ok154
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len163

concat.tot.len168:                                ; preds = %str_overflow_abort169, %concat.sum.len163
  %arena.cur170 = call ptr @dva_arena_current()
  %concat.buf171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 %sum166)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf171, ptr align 1 %concat.lhs147, i64 %concat.lhs139, i1 false)
  %concat.mid172 = getelementptr i8, ptr %concat.buf171, i64 %concat.lhs139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid172, ptr align 1 %concat.rhs159, i64 %concat.rhs150, i1 false)
  %concat.nul173 = getelementptr i8, ptr %concat.buf171, i64 %sum161
  store i8 0, ptr %concat.nul173, align 1
  %arena.cur174 = call ptr @dva_arena_current()
  %concat.str175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 16)
  %str.build.len.gep176 = getelementptr inbounds { i64, ptr }, ptr %concat.str175, i32 0, i32 0
  store i64 %sum161, ptr %str.build.len.gep176, align 8
  %str.build.data.gep177 = getelementptr inbounds { i64, ptr }, ptr %concat.str175, i32 0, i32 1
  store ptr %concat.buf171, ptr %str.build.data.gep177, align 8
  %concat.lhs178 = getelementptr inbounds { i64, ptr }, ptr %concat.str175, i32 0, i32 0
  %concat.lhs179 = load i64, ptr %concat.lhs178, align 8
  %concat.lhs180 = and i64 %concat.lhs179, 281474976710655
  %str.tag181 = lshr i64 %concat.lhs179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_overflow_abort169:                            ; preds = %concat.sum.len163
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len168

str_gen_check183:                                 ; preds = %concat.tot.len168
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %concat.tot.len168
  %concat.lhs188 = getelementptr inbounds { i64, ptr }, ptr %concat.str175, i32 0, i32 1
  %concat.lhs189 = load ptr, ptr %concat.lhs188, align 8
  %concat.rhs190 = load i64, ptr @str.3.struct, align 8
  %concat.rhs191 = and i64 %concat.rhs190, 281474976710655
  %str.tag192 = lshr i64 %concat.rhs190, 48
  %str.immortal193 = icmp eq i64 %str.tag192, 0
  br i1 %str.immortal193, label %str_ok195, label %str_gen_check194

str_stale185:                                     ; preds = %str_gen_check183
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

str_gen_check194:                                 ; preds = %str_ok184
  %arena.cur197 = call ptr @dva_arena_current()
  %tag.valid198 = call i1 @dva_arena_validate_tag(ptr %arena.cur197, i64 %str.tag192)
  br i1 %tag.valid198, label %str_ok195, label %str_stale196

str_ok195:                                        ; preds = %str_stale196, %str_gen_check194, %str_ok184
  %concat.rhs199 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs180, i64 %concat.rhs191)
  %sum201 = extractvalue { i64, i1 } %concat.sum.len200, 0
  %ovf202 = extractvalue { i64, i1 } %concat.sum.len200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %concat.sum.len203

str_stale196:                                     ; preds = %str_gen_check194
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok195

concat.sum.len203:                                ; preds = %str_overflow_abort204, %str_ok195
  %concat.tot.len205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum201, i64 1)
  %sum206 = extractvalue { i64, i1 } %concat.tot.len205, 0
  %ovf207 = extractvalue { i64, i1 } %concat.tot.len205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %concat.tot.len208

str_overflow_abort204:                            ; preds = %str_ok195
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len203

concat.tot.len208:                                ; preds = %str_overflow_abort209, %concat.sum.len203
  %arena.cur210 = call ptr @dva_arena_current()
  %concat.buf211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf211, ptr align 1 %concat.lhs189, i64 %concat.lhs180, i1 false)
  %concat.mid212 = getelementptr i8, ptr %concat.buf211, i64 %concat.lhs180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid212, ptr align 1 %concat.rhs199, i64 %concat.rhs191, i1 false)
  %concat.nul213 = getelementptr i8, ptr %concat.buf211, i64 %sum201
  store i8 0, ptr %concat.nul213, align 1
  %arena.cur214 = call ptr @dva_arena_current()
  %concat.str215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 16)
  %str.build.len.gep216 = getelementptr inbounds { i64, ptr }, ptr %concat.str215, i32 0, i32 0
  store i64 %sum201, ptr %str.build.len.gep216, align 8
  %str.build.data.gep217 = getelementptr inbounds { i64, ptr }, ptr %concat.str215, i32 0, i32 1
  store ptr %concat.buf211, ptr %str.build.data.gep217, align 8
  %var.load218 = load ptr, ptr %var.name, align 8
  %concat.lhs219 = getelementptr inbounds { i64, ptr }, ptr %concat.str215, i32 0, i32 0
  %concat.lhs220 = load i64, ptr %concat.lhs219, align 8
  %concat.lhs221 = and i64 %concat.lhs220, 281474976710655
  %str.tag222 = lshr i64 %concat.lhs220, 48
  %str.immortal223 = icmp eq i64 %str.tag222, 0
  br i1 %str.immortal223, label %str_ok225, label %str_gen_check224

str_overflow_abort209:                            ; preds = %concat.sum.len203
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len208

str_gen_check224:                                 ; preds = %concat.tot.len208
  %arena.cur227 = call ptr @dva_arena_current()
  %tag.valid228 = call i1 @dva_arena_validate_tag(ptr %arena.cur227, i64 %str.tag222)
  br i1 %tag.valid228, label %str_ok225, label %str_stale226

str_ok225:                                        ; preds = %str_stale226, %str_gen_check224, %concat.tot.len208
  %concat.lhs229 = getelementptr inbounds { i64, ptr }, ptr %concat.str215, i32 0, i32 1
  %concat.lhs230 = load ptr, ptr %concat.lhs229, align 8
  %concat.rhs231 = getelementptr inbounds { i64, ptr }, ptr %var.load218, i32 0, i32 0
  %concat.rhs232 = load i64, ptr %concat.rhs231, align 8
  %concat.rhs233 = and i64 %concat.rhs232, 281474976710655
  %str.tag234 = lshr i64 %concat.rhs232, 48
  %str.immortal235 = icmp eq i64 %str.tag234, 0
  br i1 %str.immortal235, label %str_ok237, label %str_gen_check236

str_stale226:                                     ; preds = %str_gen_check224
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok225

str_gen_check236:                                 ; preds = %str_ok225
  %arena.cur239 = call ptr @dva_arena_current()
  %tag.valid240 = call i1 @dva_arena_validate_tag(ptr %arena.cur239, i64 %str.tag234)
  br i1 %tag.valid240, label %str_ok237, label %str_stale238

str_ok237:                                        ; preds = %str_stale238, %str_gen_check236, %str_ok225
  %concat.rhs241 = getelementptr inbounds { i64, ptr }, ptr %var.load218, i32 0, i32 1
  %concat.rhs242 = load ptr, ptr %concat.rhs241, align 8
  %concat.sum.len243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs221, i64 %concat.rhs233)
  %sum244 = extractvalue { i64, i1 } %concat.sum.len243, 0
  %ovf245 = extractvalue { i64, i1 } %concat.sum.len243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %concat.sum.len246

str_stale238:                                     ; preds = %str_gen_check236
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok237

concat.sum.len246:                                ; preds = %str_overflow_abort247, %str_ok237
  %concat.tot.len248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum244, i64 1)
  %sum249 = extractvalue { i64, i1 } %concat.tot.len248, 0
  %ovf250 = extractvalue { i64, i1 } %concat.tot.len248, 1
  br i1 %ovf250, label %str_overflow_abort252, label %concat.tot.len251

str_overflow_abort247:                            ; preds = %str_ok237
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len246

concat.tot.len251:                                ; preds = %str_overflow_abort252, %concat.sum.len246
  %arena.cur253 = call ptr @dva_arena_current()
  %concat.buf254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 %sum249)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf254, ptr align 1 %concat.lhs230, i64 %concat.lhs221, i1 false)
  %concat.mid255 = getelementptr i8, ptr %concat.buf254, i64 %concat.lhs221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid255, ptr align 1 %concat.rhs242, i64 %concat.rhs233, i1 false)
  %concat.nul256 = getelementptr i8, ptr %concat.buf254, i64 %sum244
  store i8 0, ptr %concat.nul256, align 1
  %arena.cur257 = call ptr @dva_arena_current()
  %concat.str258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 16)
  %str.build.len.gep259 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 0
  store i64 %sum244, ptr %str.build.len.gep259, align 8
  %str.build.data.gep260 = getelementptr inbounds { i64, ptr }, ptr %concat.str258, i32 0, i32 1
  store ptr %concat.buf254, ptr %str.build.data.gep260, align 8
  store ptr %concat.str258, ptr %var.priv, align 8
  %var.load261 = load ptr, ptr %var.ctx, align 8
  %var.load262 = load ptr, ptr %var.priv, align 8
  %call.res263 = call i1 @"overloads::is_family"(ptr %var.load261, ptr %var.load262)
  br i1 %call.res263, label %choice.then264, label %choice.exit265

str_overflow_abort252:                            ; preds = %concat.sum.len246
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len251

choice.then264:                                   ; preds = %concat.tot.len251
  %var.load266 = load ptr, ptr %var.priv, align 8
  ret ptr %var.load266

choice.exit265:                                   ; preds = %ret.dead267, %concat.tot.len251
  br label %choice.exit

ret.dead267:                                      ; No predecessors!
  br label %choice.exit265
}

define i1 @"overloads::has_variants"(ptr %0, ptr %1) #1 {
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
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load33 = load i1, ptr %"var.result'", align 1
  ret i1 %var.load33

str_gen_check:                                    ; preds = %loop.body.66
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.66
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check13:                                  ; preds = %str_ok
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale15:                                      ; preds = %str_gen_check13
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str.eq.then:                                      ; preds = %str_ok14
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data19 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data19, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok14
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load20 = load i64, ptr %"var.first'", align 8
  %cmptmp = icmp slt i64 %var.load20, 0
  br i1 %cmptmp, label %choice.then21, label %choice.exit22

choice.exit:                                      ; preds = %choice.exit32, %str.eq.merge
  br label %loop.latch.66

choice.then21:                                    ; preds = %choice.then
  %var.load23 = load ptr, ptr %var.d, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  store i64 %fld.load25, ptr %"var.first'", align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.then21, %choice.then
  %var.load26 = load ptr, ptr %var.d, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %var.load29 = load i64, ptr %"var.first'", align 8
  %cmptmp30 = icmp ne i64 %fld.load28, %var.load29
  br i1 %cmptmp30, label %choice.then31, label %choice.exit32

choice.then31:                                    ; preds = %choice.exit22
  store i1 true, ptr %"var.result'", align 1
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.then31, %choice.exit22
  br label %choice.exit
}

define ptr @"overloads::signature"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var._30 = alloca ptr, align 8
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
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.67:                                 ; preds = %loop.header.67
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.67, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %loop.exit.nat.67
  %var.load34 = load ptr, ptr %"var.result'", align 8
  ret ptr %var.load34

str_gen_check:                                    ; preds = %loop.body.67
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.67
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check13:                                  ; preds = %str_ok
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale15:                                      ; preds = %str_gen_check13
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str.eq.then:                                      ; preds = %str_ok14
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data19 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data19, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok14
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %and.68.then, label %and.68.else

and.68.then:                                      ; preds = %str.eq.merge
  %var.load20 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp slt i64 %var.load20, 0
  br i1 %cmptmp, label %or.69.then, label %or.69.else

and.68.else:                                      ; preds = %str.eq.merge
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %or.69.exit
  %and.68.phi = phi i1 [ %or.69.phi, %or.69.exit ], [ %str.eq.result, %and.68.else ]
  br i1 %and.68.phi, label %choice.then, label %choice.exit

or.69.then:                                       ; preds = %and.68.then
  br label %or.69.exit

or.69.else:                                       ; preds = %and.68.then
  %var.load21 = load ptr, ptr %var.d, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %var.load24 = load i64, ptr %var.arity, align 8
  %cmptmp25 = icmp eq i64 %fld.load23, %var.load24
  br label %or.69.exit

or.69.exit:                                       ; preds = %or.69.else, %or.69.then
  %or.69.phi = phi i1 [ %cmptmp, %or.69.then ], [ %cmptmp25, %or.69.else ]
  br label %and.68.exit

choice.then:                                      ; preds = %and.68.exit
  %var.load26 = load ptr, ptr %var.d, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit29, %and.68.exit
  br label %loop.latch.67

choice.exit29:                                    ; preds = %choice.next, %choice.case
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._30, align 8
  %var.load31 = load ptr, ptr %var.d, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load31, i32 0, i32 2
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  store ptr %fld.load33, ptr %"var.result'", align 8
  br label %choice.exit29

choice.next:                                      ; preds = %choice.then
  br label %choice.exit29
}

define ptr @"overloads::select_value"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #1 {
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
  %call.res = call ptr @"overloads::name_of"(ptr %var.load)
  store ptr %call.res, ptr %var.n, align 8
  %var.load1 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load4 = load ptr, ptr %var.n, align 8
  %call.res5 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load4)
  %nottmp = xor i1 %call.res5, true
  br i1 %nottmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %var.load7 = load ptr, ptr %var.n, align 8
  %var.load8 = load ptr, ptr %var.cur_mod, align 8
  %call.res9 = call ptr @"overloads::resolve_family_name"(ptr %var.load6, ptr %var.load7, ptr %var.load8)
  br label %choice.exit

choice.else:                                      ; preds = %a.after
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res9, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res, ptr %var.fam, align 8
  %var.load10 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %eq.lhs.len11 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len12 = and i64 %eq.lhs.len11, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %str.tag15 = lshr i64 %eq.rhs.len, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check17:                                  ; preds = %str_ok
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len12, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale19:                                      ; preds = %str_gen_check17
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str.eq.then:                                      ; preds = %str_ok18
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len12)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then23, label %choice.else24

choice.then23:                                    ; preds = %str.eq.merge
  %var.load26 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else24:                                    ; preds = %str.eq.merge
  %var.load37 = load ptr, ptr %var.e, align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else24, %choice.exit27
  %choice.res38 = phi ptr [ %choice.res36, %choice.exit27 ], [ %var.load37, %choice.else24 ]
  ret ptr %choice.res38

choice.exit27:                                    ; preds = %choice.next, %choice.case
  %choice.res36 = phi ptr [ %enum.alloc, %choice.case ], [ %var.load35, %choice.next ]
  br label %choice.exit25

choice.case:                                      ; preds = %choice.then23
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %arena.cur28 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %tag.gep29 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep29, align 8
  %pay.gep30 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load31 = load ptr, ptr %var.fam, align 8
  %var.load32 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load32, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query33 = load i64, ptr %a.len.query, align 8
  %call.res34 = call ptr @"overloads::symbol"(ptr %var.load31, i64 %a.len.query33)
  store ptr %call.res34, ptr %pay.gep30, align 8
  br label %choice.exit27

choice.next:                                      ; preds = %choice.then23
  %var.load35 = load ptr, ptr %var.e, align 8
  br label %choice.exit27
}

define ptr @"overloads::application"(ptr %0) #1 {
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
  %choice.res251 = phi ptr [ %choice.res249, %choice.exit57 ], [ %var.load250, %choice.next ]
  ret ptr %choice.res251

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
  %var.load250 = load ptr, ptr %var.e, align 8
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

choice.exit57:                                    ; preds = %a.after233, %a.after173
  %choice.res249 = phi ptr [ %enum.alloc, %a.after173 ], [ %enum.alloc223, %a.after233 ]
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
  %call.res227 = call ptr @"overloads::name_of"(ptr %var.load226)
  %var.load228 = load ptr, ptr %var.base, align 8
  %var.load229 = load ptr, ptr %var.args, align 8
  %a.load230 = load ptr, ptr %var.args, align 8
  %a.null231 = icmp eq ptr %a.load230, null
  br i1 %a.null231, label %a.create232, label %a.after233

a.create232:                                      ; preds = %a.store208
  %arena.cur234 = call ptr @dva_arena_current()
  %a.create235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 24)
  %arena.cur236 = call ptr @dva_arena_current()
  %a.buf237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 128)
  %a.len.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 0
  store i64 0, ptr %a.len.gep238, align 8
  %a.data.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 1
  store ptr %a.buf237, ptr %a.data.gep239, align 8
  %a.cap.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create235, i32 0, i32 2
  store i64 16, ptr %a.cap.gep240, align 8
  store ptr %a.create235, ptr %var.args, align 8
  br label %a.after233

a.after233:                                       ; preds = %a.create232, %a.store208
  %a.load2241 = load ptr, ptr %var.args, align 8
  %arena.cur242 = call ptr @dva_arena_current()
  %rec.alloc243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld244 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc243, i32 0, i32 0
  store ptr %call.res227, ptr %rec.fld244, align 8
  %rec.fld245 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc243, i32 0, i32 1
  store ptr %var.load228, ptr %rec.fld245, align 8
  %rec.fld246 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc243, i32 0, i32 2
  store ptr %a.load2241, ptr %rec.fld246, align 8
  %rec.fld247 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc243, i32 0, i32 3
  store i64 0, ptr %rec.fld247, align 8
  %rec.fld248 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc243, i32 0, i32 4
  store i64 0, ptr %rec.fld248, align 8
  store ptr %rec.alloc243, ptr %pay.gep225, align 8
  br label %choice.exit57
}

define internal void @dva_array_grow(ptr %0) #1 {
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

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
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
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

define ptr @"overloads::keep_type"(ptr %0, ptr %1) #1 {
entry:
  %var.ctx = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  store ptr %0, ptr %var.ti, align 8
  store ptr %1, ptr %var.ctx, align 8
  %var.load = load ptr, ptr %var.ti, align 8
  ret ptr %var.load
}

define ptr @"overloads::keep_fparams"(ptr %0, ptr %1) #1 {
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

define ptr @"overloads::walk_many"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
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

define ptr @"overloads::walk"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.bc = alloca ptr, align 8
  %var._2420 = alloca ptr, align 8
  %var.cp2391 = alloca ptr, align 8
  %var._2390 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2360 = alloca ptr, align 8
  %var._2263 = alloca ptr, align 8
  %var._i2262 = alloca i64, align 8
  %var.p2254 = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2229 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2204 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2161 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._2114 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._2089 = alloca ptr, align 8
  %var.new_val2061 = alloca ptr, align 8
  %var.r2031 = alloca ptr, align 8
  %var._2030 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._2000 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1971 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1942 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1903 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1852 = alloca ptr, align 8
  %var._1851 = alloca ptr, align 8
  %var.new_val1831 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1811 = alloca ptr, align 8
  %var.new_rhs1781 = alloca ptr, align 8
  %var.new_lhs1751 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1721 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1665 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1601 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1529 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._1436 = alloca ptr, align 8
  %var._i1435 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1413 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1333 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1273 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1248 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1140 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._1101 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._1085 = alloca ptr, align 8
  %var.eff_mod = alloca ptr, align 8
  %var.is_top = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._1015 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._794 = alloca ptr, align 8
  %var._i793 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._749 = alloca ptr, align 8
  %var._i748 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._707 = alloca ptr, align 8
  %var.ca = alloca ptr, align 8
  %var._598 = alloca ptr, align 8
  %var._543 = alloca ptr, align 8
  %var._i542 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._482 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._367 = alloca ptr, align 8
  %var._i366 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var._290 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._250 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._212 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2414, %a.after2431, %a.after2402, %a.after2367, %a.after2344, %choice.case2197, %a.after2170, %a.after2123, %choice.case2082, %choice.exit2037, %a.after2007, %a.after1982, %a.after1953, %a.after1912, %a.after1883, %a.after1820, %choice.exit1757, %a.after1693, %a.after1629, %a.after1557, %a.after1506, %choice.exit1339, %a.after1301, %choice.case1241, %a.after1194, %a.after994, %a.after691, %a.after440, %a.after228, %choice.exit28, %a.after, %choice.case
  %choice.res2443 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res204, %choice.exit28 ], [ %enum.alloc214, %a.after228 ], [ %enum.alloc452, %a.after440 ], [ %enum.alloc684, %a.after691 ], [ %enum.alloc983, %a.after994 ], [ %enum.alloc1206, %a.after1194 ], [ %enum.alloc1255, %choice.case1241 ], [ %enum.alloc1285, %a.after1301 ], [ %choice.res1405, %choice.exit1339 ], [ %enum.alloc1499, %a.after1506 ], [ %enum.alloc1569, %a.after1557 ], [ %enum.alloc1641, %a.after1629 ], [ %enum.alloc1705, %a.after1693 ], [ %enum.alloc1783, %choice.exit1757 ], [ %enum.alloc1833, %a.after1820 ], [ %enum.alloc1873, %a.after1883 ], [ %enum.alloc1924, %a.after1912 ], [ %enum.alloc1944, %a.after1953 ], [ %enum.alloc1973, %a.after1982 ], [ %enum.alloc2019, %a.after2007 ], [ %enum.alloc2063, %choice.exit2037 ], [ %enum.alloc2096, %choice.case2082 ], [ %enum.alloc2135, %a.after2123 ], [ %enum.alloc2182, %a.after2170 ], [ %enum.alloc2211, %choice.case2197 ], [ %enum.alloc2337, %a.after2344 ], [ %enum.alloc2379, %a.after2367 ], [ %enum.alloc2393, %a.after2402 ], [ %enum.alloc2422, %a.after2431 ], [ %var.load2442, %choice.next2414 ]
  ret ptr %choice.res2443

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
  %tag.gep207 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id208 = load i64, ptr %tag.gep207, align 8
  %tag.match209 = icmp eq i64 %tag.id208, 24
  br i1 %tag.match209, label %choice.case205, label %choice.next206

choice.exit28:                                    ; preds = %a.after188, %choice.exit87
  %choice.res204 = phi ptr [ %choice.res153, %choice.exit87 ], [ %enum.alloc155, %a.after188 ]
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
  %arena.cur154 = call ptr @dva_arena_current()
  %enum.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 16)
  %tag.gep156 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc155, i32 0, i32 0
  store i64 5, ptr %tag.gep156, align 8
  %pay.gep157 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc155, i32 0, i32 1
  %var.load158 = load ptr, ptr %var.b, align 8
  %fld.gep159 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load158, i32 0, i32 0
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.b, align 8
  %fld.gep162 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load161, i32 0, i32 1
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
  %call.res70 = call ptr @"overloads::resolve_family_name"(ptr %var.load67, ptr %var.load68, ptr %var.load69)
  br label %choice.exit66

choice.else:                                      ; preds = %a.after55
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else, %choice.then
  %choice.res71 = phi ptr [ %call.res70, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res71, ptr %var.fam, align 8
  %var.load72 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %eq.lhs.len73 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len73, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit66
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit66
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len, 281474976710655
  %str.tag77 = lshr i64 %eq.rhs.len, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check79:                                  ; preds = %str_ok
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len74, %eq.rhs.len76
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale81:                                      ; preds = %str_gen_check79
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str.eq.then:                                      ; preds = %str_ok80
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data, i64 %eq.lhs.len74)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok80
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then85, label %choice.else86

choice.then85:                                    ; preds = %str.eq.merge
  %var.load88 = load ptr, ptr %var.expanded, align 8
  %var.load89 = load ptr, ptr %var.table, align 8
  %var.load90 = load ptr, ptr %var.locals, align 8
  %a.load91 = load ptr, ptr %var.locals, align 8
  %a.null92 = icmp eq ptr %a.load91, null
  br i1 %a.null92, label %a.create93, label %a.after94

choice.else86:                                    ; preds = %str.eq.merge
  %arena.cur105 = call ptr @dva_arena_current()
  %enum.alloc106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 16)
  %tag.gep107 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc106, i32 0, i32 0
  store i64 5, ptr %tag.gep107, align 8
  %pay.gep108 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc106, i32 0, i32 1
  %var.load109 = load ptr, ptr %var.b, align 8
  %fld.gep110 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load109, i32 0, i32 0
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %var.load112 = load ptr, ptr %var.b, align 8
  %fld.gep113 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load112, i32 0, i32 1
  %fld.load114 = load ptr, ptr %fld.gep113, align 8
  %var.load115 = load ptr, ptr %var.table, align 8
  %var.load116 = load ptr, ptr %var.locals, align 8
  %a.load117 = load ptr, ptr %var.locals, align 8
  %a.null118 = icmp eq ptr %a.load117, null
  br i1 %a.null118, label %a.create119, label %a.after120

choice.exit87:                                    ; preds = %a.after139, %a.after94
  %choice.res153 = phi ptr [ %call.res104, %a.after94 ], [ %enum.alloc106, %a.after139 ]
  br label %choice.exit28

a.create93:                                       ; preds = %choice.then85
  %arena.cur95 = call ptr @dva_arena_current()
  %a.create96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 24)
  %arena.cur97 = call ptr @dva_arena_current()
  %a.buf98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 128)
  %a.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 0
  store i64 0, ptr %a.len.gep99, align 8
  %a.data.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 1
  store ptr %a.buf98, ptr %a.data.gep100, align 8
  %a.cap.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 2
  store i64 16, ptr %a.cap.gep101, align 8
  store ptr %a.create96, ptr %var.locals, align 8
  br label %a.after94

a.after94:                                        ; preds = %a.create93, %choice.then85
  %a.load2102 = load ptr, ptr %var.locals, align 8
  %var.load103 = load ptr, ptr %var.cur_mod, align 8
  %call.res104 = call ptr @"overloads::walk"(ptr %var.load88, ptr %var.load89, ptr %a.load2102, ptr %var.load103)
  br label %choice.exit87

a.create119:                                      ; preds = %choice.else86
  %arena.cur121 = call ptr @dva_arena_current()
  %a.create122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 24)
  %arena.cur123 = call ptr @dva_arena_current()
  %a.buf124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 128)
  %a.len.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 0
  store i64 0, ptr %a.len.gep125, align 8
  %a.data.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 1
  store ptr %a.buf124, ptr %a.data.gep126, align 8
  %a.cap.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create122, i32 0, i32 2
  store i64 16, ptr %a.cap.gep127, align 8
  store ptr %a.create122, ptr %var.locals, align 8
  br label %a.after120

a.after120:                                       ; preds = %a.create119, %choice.else86
  %a.load2128 = load ptr, ptr %var.locals, align 8
  %var.load129 = load ptr, ptr %var.cur_mod, align 8
  %call.res130 = call ptr @"overloads::walk"(ptr %fld.load114, ptr %var.load115, ptr %a.load2128, ptr %var.load129)
  %var.load131 = load ptr, ptr %var.b, align 8
  %fld.gep132 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load131, i32 0, i32 2
  %fld.load133 = load ptr, ptr %fld.gep132, align 8
  %var.load134 = load ptr, ptr %var.table, align 8
  %var.load135 = load ptr, ptr %var.locals, align 8
  %a.load136 = load ptr, ptr %var.locals, align 8
  %a.null137 = icmp eq ptr %a.load136, null
  br i1 %a.null137, label %a.create138, label %a.after139

a.create138:                                      ; preds = %a.after120
  %arena.cur140 = call ptr @dva_arena_current()
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = call ptr @dva_arena_current()
  %a.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 128)
  %a.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 0
  store i64 0, ptr %a.len.gep144, align 8
  %a.data.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 1
  store ptr %a.buf143, ptr %a.data.gep145, align 8
  %a.cap.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep146, align 8
  store ptr %a.create141, ptr %var.locals, align 8
  br label %a.after139

a.after139:                                       ; preds = %a.create138, %a.after120
  %a.load2147 = load ptr, ptr %var.locals, align 8
  %var.load148 = load ptr, ptr %var.cur_mod, align 8
  %call.res149 = call ptr @"overloads::walk"(ptr %fld.load133, ptr %var.load134, ptr %a.load2147, ptr %var.load148)
  %arena.cur150 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load111, ptr %rec.fld, align 8
  %rec.fld151 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res130, ptr %rec.fld151, align 8
  %rec.fld152 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res149, ptr %rec.fld152, align 8
  store ptr %rec.alloc, ptr %pay.gep108, align 8
  br label %choice.exit87

a.create168:                                      ; preds = %choice.next30
  %arena.cur170 = call ptr @dva_arena_current()
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = call ptr @dva_arena_current()
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
  %fld.gep181 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load180, i32 0, i32 2
  %fld.load182 = load ptr, ptr %fld.gep181, align 8
  %var.load183 = load ptr, ptr %var.table, align 8
  %var.load184 = load ptr, ptr %var.locals, align 8
  %a.load185 = load ptr, ptr %var.locals, align 8
  %a.null186 = icmp eq ptr %a.load185, null
  br i1 %a.null186, label %a.create187, label %a.after188

a.create187:                                      ; preds = %a.after169
  %arena.cur189 = call ptr @dva_arena_current()
  %a.create190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 24)
  %arena.cur191 = call ptr @dva_arena_current()
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
  %arena.cur199 = call ptr @dva_arena_current()
  %rec.alloc200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld201 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc200, i32 0, i32 0
  store ptr %fld.load160, ptr %rec.fld201, align 8
  %rec.fld202 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc200, i32 0, i32 1
  store ptr %call.res179, ptr %rec.fld202, align 8
  %rec.fld203 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc200, i32 0, i32 2
  store ptr %call.res198, ptr %rec.fld203, align 8
  store ptr %rec.alloc200, ptr %pay.gep157, align 8
  br label %choice.exit28

choice.case205:                                   ; preds = %choice.next20
  %pay.gep210 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr211 = load ptr, ptr %pay.gep210, align 8
  store ptr %payload.ptr211, ptr %var._212, align 8
  store ptr %payload.ptr211, ptr %var.u, align 8
  %arena.cur213 = call ptr @dva_arena_current()
  %enum.alloc214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 16)
  %tag.gep215 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc214, i32 0, i32 0
  store i64 24, ptr %tag.gep215, align 8
  %pay.gep216 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc214, i32 0, i32 1
  %var.load217 = load ptr, ptr %var.u, align 8
  %fld.gep218 = getelementptr inbounds { ptr, ptr }, ptr %var.load217, i32 0, i32 0
  %fld.load219 = load ptr, ptr %fld.gep218, align 8
  %var.load220 = load ptr, ptr %var.u, align 8
  %fld.gep221 = getelementptr inbounds { ptr, ptr }, ptr %var.load220, i32 0, i32 1
  %fld.load222 = load ptr, ptr %fld.gep221, align 8
  %var.load223 = load ptr, ptr %var.table, align 8
  %var.load224 = load ptr, ptr %var.locals, align 8
  %a.load225 = load ptr, ptr %var.locals, align 8
  %a.null226 = icmp eq ptr %a.load225, null
  br i1 %a.null226, label %a.create227, label %a.after228

choice.next206:                                   ; preds = %choice.next20
  %tag.gep245 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id246 = load i64, ptr %tag.gep245, align 8
  %tag.match247 = icmp eq i64 %tag.id246, 14
  br i1 %tag.match247, label %choice.case243, label %choice.next244

a.create227:                                      ; preds = %choice.case205
  %arena.cur229 = call ptr @dva_arena_current()
  %a.create230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 24)
  %arena.cur231 = call ptr @dva_arena_current()
  %a.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 128)
  %a.len.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 0
  store i64 0, ptr %a.len.gep233, align 8
  %a.data.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 1
  store ptr %a.buf232, ptr %a.data.gep234, align 8
  %a.cap.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep235, align 8
  store ptr %a.create230, ptr %var.locals, align 8
  br label %a.after228

a.after228:                                       ; preds = %a.create227, %choice.case205
  %a.load2236 = load ptr, ptr %var.locals, align 8
  %var.load237 = load ptr, ptr %var.cur_mod, align 8
  %call.res238 = call ptr @"overloads::walk"(ptr %fld.load222, ptr %var.load223, ptr %a.load2236, ptr %var.load237)
  %arena.cur239 = call ptr @dva_arena_current()
  %rec.alloc240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld241 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc240, i32 0, i32 0
  store ptr %fld.load219, ptr %rec.fld241, align 8
  %rec.fld242 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc240, i32 0, i32 1
  store ptr %call.res238, ptr %rec.fld242, align 8
  store ptr %rec.alloc240, ptr %pay.gep216, align 8
  br label %choice.exit

choice.case243:                                   ; preds = %choice.next206
  %pay.gep248 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr249 = load ptr, ptr %pay.gep248, align 8
  store ptr %payload.ptr249, ptr %var._250, align 8
  store ptr %payload.ptr249, ptr %var.fe, align 8
  %var.load251 = load ptr, ptr %var.locals, align 8
  %a.load252 = load ptr, ptr %var.locals, align 8
  %a.null253 = icmp eq ptr %a.load252, null
  br i1 %a.null253, label %a.create254, label %a.after255

choice.next244:                                   ; preds = %choice.next206
  %tag.gep477 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id478 = load i64, ptr %tag.gep477, align 8
  %tag.match479 = icmp eq i64 %tag.id478, 8
  br i1 %tag.match479, label %choice.case475, label %choice.next476

a.create254:                                      ; preds = %choice.case243
  %arena.cur256 = call ptr @dva_arena_current()
  %a.create257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 24)
  %arena.cur258 = call ptr @dva_arena_current()
  %a.buf259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 128)
  %a.len.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 0
  store i64 0, ptr %a.len.gep260, align 8
  %a.data.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 1
  store ptr %a.buf259, ptr %a.data.gep261, align 8
  %a.cap.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 2
  store i64 16, ptr %a.cap.gep262, align 8
  store ptr %a.create257, ptr %var.locals, align 8
  br label %a.after255

a.after255:                                       ; preds = %a.create254, %choice.case243
  %a.load2263 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 0
  %a.copy.len264 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 2
  %a.copy.cap265 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 1
  %a.copy.data266 = load ptr, ptr %a.copy.data, align 8
  %arena.cur267 = call ptr @dva_arena_current()
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap265, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur268 = call ptr @dva_arena_current()
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len264, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data266, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len264, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap265, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load269 = load ptr, ptr %var.fn_locals, align 8
  %a.null270 = icmp eq ptr %a.load269, null
  br i1 %a.null270, label %a.create271, label %a.after272

a.create271:                                      ; preds = %a.after255
  %arena.cur273 = call ptr @dva_arena_current()
  %a.create274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 24)
  %arena.cur275 = call ptr @dva_arena_current()
  %a.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 128)
  %a.len.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create274, i32 0, i32 0
  store i64 0, ptr %a.len.gep277, align 8
  %a.data.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create274, i32 0, i32 1
  store ptr %a.buf276, ptr %a.data.gep278, align 8
  %a.cap.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create274, i32 0, i32 2
  store i64 16, ptr %a.cap.gep279, align 8
  store ptr %a.create274, ptr %var.fn_locals, align 8
  br label %a.after272

a.after272:                                       ; preds = %a.create271, %a.after255
  %a.load2280 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after272
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2280, i32 0, i32 0
  %a.len281 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2280, i32 0, i32 2
  %a.cap282 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len281, %a.cap282
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2280)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2280, i32 0, i32 1
  %a.cur.data283 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2280, i32 0, i32 0
  %a.cur.len284 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data283, i64 %a.cur.len284
  store i64 ptrtoint (ptr @str.7.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len284, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2280, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load285 = load ptr, ptr %var.fe, align 8
  %fld.gep286 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load285, i32 0, i32 0
  %fld.load287 = load ptr, ptr %fld.gep286, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load287, i32 0, i32 0
  %arr.cycle.len288 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load287, i32 0, i32 1
  %arr.cycle.data289 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  %cycle.prev.u = load ptr, ptr %var._250, align 8
  br label %loop.header.76

loop.header.76:                                   ; preds = %loop.latch.76, %a.store
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len288
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data289, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._290, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load291 = load ptr, ptr %var.p, align 8
  %eq.lhs.len292 = getelementptr inbounds { i64, ptr }, ptr %var.load291, i32 0, i32 0
  %eq.lhs.len293 = load i64, ptr %eq.lhs.len292, align 8
  %eq.lhs.len294 = and i64 %eq.lhs.len293, 281474976710655
  %str.tag295 = lshr i64 %eq.lhs.len293, 48
  %str.immortal296 = icmp eq i64 %str.tag295, 0
  br i1 %str.immortal296, label %str_ok298, label %str_gen_check297

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit323
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  store ptr %cycle.prev.u, ptr %var._250, align 8
  %var.load352 = load ptr, ptr %var.fe, align 8
  %fld.gep353 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load352, i32 0, i32 1
  %fld.load354 = load ptr, ptr %fld.gep353, align 8
  %arr.cycle.len355 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load354, i32 0, i32 0
  %arr.cycle.len356 = load i64, ptr %arr.cycle.len355, align 8
  %arr.cycle.data357 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load354, i32 0, i32 1
  %arr.cycle.data358 = load ptr, ptr %arr.cycle.data357, align 8
  store i64 0, ptr %loop.idx.77, align 8
  %cycle.prev.u359 = load ptr, ptr %var._250, align 8
  br label %loop.header.77

str_gen_check297:                                 ; preds = %loop.body.76
  %arena.cur300 = call ptr @dva_arena_current()
  %tag.valid301 = call i1 @dva_arena_validate_tag(ptr %arena.cur300, i64 %str.tag295)
  br i1 %tag.valid301, label %str_ok298, label %str_stale299

str_ok298:                                        ; preds = %str_stale299, %str_gen_check297, %loop.body.76
  %eq.rhs.len302 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len303 = and i64 %eq.rhs.len302, 281474976710655
  %str.tag304 = lshr i64 %eq.rhs.len302, 48
  %str.immortal305 = icmp eq i64 %str.tag304, 0
  br i1 %str.immortal305, label %str_ok307, label %str_gen_check306

str_stale299:                                     ; preds = %str_gen_check297
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok298

str_gen_check306:                                 ; preds = %str_ok298
  %arena.cur309 = call ptr @dva_arena_current()
  %tag.valid310 = call i1 @dva_arena_validate_tag(ptr %arena.cur309, i64 %str.tag304)
  br i1 %tag.valid310, label %str_ok307, label %str_stale308

str_ok307:                                        ; preds = %str_stale308, %str_gen_check306, %str_ok298
  %eq.len311 = icmp eq i64 %eq.lhs.len294, %eq.rhs.len303
  br i1 %eq.len311, label %str.eq.then312, label %str.eq.else313

str_stale308:                                     ; preds = %str_gen_check306
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok307

str.eq.then312:                                   ; preds = %str_ok307
  %eq.lhs.data315 = getelementptr inbounds { i64, ptr }, ptr %var.load291, i32 0, i32 1
  %eq.lhs.data316 = load ptr, ptr %eq.lhs.data315, align 8
  %eq.rhs.data317 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp318 = call i32 @memcmp(ptr %eq.lhs.data316, ptr %eq.rhs.data317, i64 %eq.lhs.len294)
  %eq.cmp.zero319 = icmp eq i32 %eq.memcmp318, 0
  br label %str.eq.merge314

str.eq.else313:                                   ; preds = %str_ok307
  br label %str.eq.merge314

str.eq.merge314:                                  ; preds = %str.eq.else313, %str.eq.then312
  %str.eq.result320 = phi i1 [ %eq.cmp.zero319, %str.eq.then312 ], [ false, %str.eq.else313 ]
  %str.neq321 = xor i1 %str.eq.result320, true
  br i1 %str.neq321, label %choice.then322, label %choice.exit323

choice.then322:                                   ; preds = %str.eq.merge314
  %var.load324 = load ptr, ptr %var.p, align 8
  %a.load325 = load ptr, ptr %var.fn_locals, align 8
  %a.null326 = icmp eq ptr %a.load325, null
  br i1 %a.null326, label %a.create327, label %a.after328

choice.exit323:                                   ; preds = %a.store339, %str.eq.merge314
  br label %loop.latch.76

a.create327:                                      ; preds = %choice.then322
  %arena.cur329 = call ptr @dva_arena_current()
  %a.create330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 24)
  %arena.cur331 = call ptr @dva_arena_current()
  %a.buf332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 128)
  %a.len.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 0
  store i64 0, ptr %a.len.gep333, align 8
  %a.data.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 1
  store ptr %a.buf332, ptr %a.data.gep334, align 8
  %a.cap.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 2
  store i64 16, ptr %a.cap.gep335, align 8
  store ptr %a.create330, ptr %var.fn_locals, align 8
  br label %a.after328

a.after328:                                       ; preds = %a.create327, %choice.then322
  %a.load2336 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check337

a.check337:                                       ; preds = %a.after328
  %a.len340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2336, i32 0, i32 0
  %a.len341 = load i64, ptr %a.len340, align 8
  %a.cap342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2336, i32 0, i32 2
  %a.cap343 = load i64, ptr %a.cap342, align 8
  %a.needs.grow344 = icmp eq i64 %a.len341, %a.cap343
  br i1 %a.needs.grow344, label %a.grow338, label %a.store339

a.grow338:                                        ; preds = %a.check337
  call void @dva_array_grow(ptr %a.load2336)
  br label %a.store339

a.store339:                                       ; preds = %a.grow338, %a.check337
  %a.cur.data345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2336, i32 0, i32 1
  %a.cur.data346 = load ptr, ptr %a.cur.data345, align 8
  %a.cur.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2336, i32 0, i32 0
  %a.cur.len348 = load i64, ptr %a.cur.len347, align 8
  %a.elem.gep349 = getelementptr i64, ptr %a.cur.data346, i64 %a.cur.len348
  %slot.p2i = ptrtoint ptr %var.load324 to i64
  store i64 %slot.p2i, ptr %a.elem.gep349, align 8
  %a.next.len350 = add i64 %a.cur.len348, 1
  %b.len.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2336, i32 0, i32 0
  store i64 %a.next.len350, ptr %b.len.gep351, align 8
  br label %choice.exit323

loop.header.77:                                   ; preds = %loop.latch.77, %loop.exit.76
  %counter.load360 = load i64, ptr %loop.idx.77, align 8
  %loop.cond361 = icmp slt i64 %counter.load360, %arr.cycle.len356
  br i1 %loop.cond361, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i362 = sub i64 %counter.load360, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep363 = getelementptr i64, ptr %arr.cycle.data358, i64 %counter.load360
  %arr.elem.raw364 = load i64, ptr %arr.elem.gep363, align 8
  %slot.i2p365 = inttoptr i64 %arr.elem.raw364 to ptr
  store i64 %loop.rel.i362, ptr %var._i366, align 8
  store ptr %slot.i2p365, ptr %var._367, align 8
  store ptr %slot.i2p365, ptr %var.cp, align 8
  %var.load368 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len369 = getelementptr inbounds { i64, ptr }, ptr %var.load368, i32 0, i32 0
  %eq.lhs.len370 = load i64, ptr %eq.lhs.len369, align 8
  %eq.lhs.len371 = and i64 %eq.lhs.len370, 281474976710655
  %str.tag372 = lshr i64 %eq.lhs.len370, 48
  %str.immortal373 = icmp eq i64 %str.tag372, 0
  br i1 %str.immortal373, label %str_ok375, label %str_gen_check374

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit400
  %step.val430 = load i64, ptr %loop.step.77, align 8
  %loop.next431 = add i64 %counter.load360, %step.val430
  store i64 %loop.next431, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  store ptr %cycle.prev.u359, ptr %var._250, align 8
  %var.load432 = load ptr, ptr %var.fe, align 8
  %fld.gep433 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load432, i32 0, i32 2
  %fld.load434 = load ptr, ptr %fld.gep433, align 8
  %var.load435 = load ptr, ptr %var.table, align 8
  %var.load436 = load ptr, ptr %var.fn_locals, align 8
  %a.load437 = load ptr, ptr %var.fn_locals, align 8
  %a.null438 = icmp eq ptr %a.load437, null
  br i1 %a.null438, label %a.create439, label %a.after440

str_gen_check374:                                 ; preds = %loop.body.77
  %arena.cur377 = call ptr @dva_arena_current()
  %tag.valid378 = call i1 @dva_arena_validate_tag(ptr %arena.cur377, i64 %str.tag372)
  br i1 %tag.valid378, label %str_ok375, label %str_stale376

str_ok375:                                        ; preds = %str_stale376, %str_gen_check374, %loop.body.77
  %eq.rhs.len379 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len380 = and i64 %eq.rhs.len379, 281474976710655
  %str.tag381 = lshr i64 %eq.rhs.len379, 48
  %str.immortal382 = icmp eq i64 %str.tag381, 0
  br i1 %str.immortal382, label %str_ok384, label %str_gen_check383

str_stale376:                                     ; preds = %str_gen_check374
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok375

str_gen_check383:                                 ; preds = %str_ok375
  %arena.cur386 = call ptr @dva_arena_current()
  %tag.valid387 = call i1 @dva_arena_validate_tag(ptr %arena.cur386, i64 %str.tag381)
  br i1 %tag.valid387, label %str_ok384, label %str_stale385

str_ok384:                                        ; preds = %str_stale385, %str_gen_check383, %str_ok375
  %eq.len388 = icmp eq i64 %eq.lhs.len371, %eq.rhs.len380
  br i1 %eq.len388, label %str.eq.then389, label %str.eq.else390

str_stale385:                                     ; preds = %str_gen_check383
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok384

str.eq.then389:                                   ; preds = %str_ok384
  %eq.lhs.data392 = getelementptr inbounds { i64, ptr }, ptr %var.load368, i32 0, i32 1
  %eq.lhs.data393 = load ptr, ptr %eq.lhs.data392, align 8
  %eq.rhs.data394 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp395 = call i32 @memcmp(ptr %eq.lhs.data393, ptr %eq.rhs.data394, i64 %eq.lhs.len371)
  %eq.cmp.zero396 = icmp eq i32 %eq.memcmp395, 0
  br label %str.eq.merge391

str.eq.else390:                                   ; preds = %str_ok384
  br label %str.eq.merge391

str.eq.merge391:                                  ; preds = %str.eq.else390, %str.eq.then389
  %str.eq.result397 = phi i1 [ %eq.cmp.zero396, %str.eq.then389 ], [ false, %str.eq.else390 ]
  %str.neq398 = xor i1 %str.eq.result397, true
  br i1 %str.neq398, label %choice.then399, label %choice.exit400

choice.then399:                                   ; preds = %str.eq.merge391
  %var.load401 = load ptr, ptr %var.cp, align 8
  %a.load402 = load ptr, ptr %var.fn_locals, align 8
  %a.null403 = icmp eq ptr %a.load402, null
  br i1 %a.null403, label %a.create404, label %a.after405

choice.exit400:                                   ; preds = %a.store416, %str.eq.merge391
  br label %loop.latch.77

a.create404:                                      ; preds = %choice.then399
  %arena.cur406 = call ptr @dva_arena_current()
  %a.create407 = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 24)
  %arena.cur408 = call ptr @dva_arena_current()
  %a.buf409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 128)
  %a.len.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 0
  store i64 0, ptr %a.len.gep410, align 8
  %a.data.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 1
  store ptr %a.buf409, ptr %a.data.gep411, align 8
  %a.cap.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create407, i32 0, i32 2
  store i64 16, ptr %a.cap.gep412, align 8
  store ptr %a.create407, ptr %var.fn_locals, align 8
  br label %a.after405

a.after405:                                       ; preds = %a.create404, %choice.then399
  %a.load2413 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check414

a.check414:                                       ; preds = %a.after405
  %a.len417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2413, i32 0, i32 0
  %a.len418 = load i64, ptr %a.len417, align 8
  %a.cap419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2413, i32 0, i32 2
  %a.cap420 = load i64, ptr %a.cap419, align 8
  %a.needs.grow421 = icmp eq i64 %a.len418, %a.cap420
  br i1 %a.needs.grow421, label %a.grow415, label %a.store416

a.grow415:                                        ; preds = %a.check414
  call void @dva_array_grow(ptr %a.load2413)
  br label %a.store416

a.store416:                                       ; preds = %a.grow415, %a.check414
  %a.cur.data422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2413, i32 0, i32 1
  %a.cur.data423 = load ptr, ptr %a.cur.data422, align 8
  %a.cur.len424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2413, i32 0, i32 0
  %a.cur.len425 = load i64, ptr %a.cur.len424, align 8
  %a.elem.gep426 = getelementptr i64, ptr %a.cur.data423, i64 %a.cur.len425
  %slot.p2i427 = ptrtoint ptr %var.load401 to i64
  store i64 %slot.p2i427, ptr %a.elem.gep426, align 8
  %a.next.len428 = add i64 %a.cur.len425, 1
  %b.len.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2413, i32 0, i32 0
  store i64 %a.next.len428, ptr %b.len.gep429, align 8
  br label %choice.exit400

a.create439:                                      ; preds = %loop.exit.77
  %arena.cur441 = call ptr @dva_arena_current()
  %a.create442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 24)
  %arena.cur443 = call ptr @dva_arena_current()
  %a.buf444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 128)
  %a.len.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create442, i32 0, i32 0
  store i64 0, ptr %a.len.gep445, align 8
  %a.data.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create442, i32 0, i32 1
  store ptr %a.buf444, ptr %a.data.gep446, align 8
  %a.cap.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create442, i32 0, i32 2
  store i64 16, ptr %a.cap.gep447, align 8
  store ptr %a.create442, ptr %var.fn_locals, align 8
  br label %a.after440

a.after440:                                       ; preds = %a.create439, %loop.exit.77
  %a.load2448 = load ptr, ptr %var.fn_locals, align 8
  %var.load449 = load ptr, ptr %var.cur_mod, align 8
  %call.res450 = call ptr @"overloads::walk"(ptr %fld.load434, ptr %var.load435, ptr %a.load2448, ptr %var.load449)
  store ptr %call.res450, ptr %var.new_body, align 8
  %arena.cur451 = call ptr @dva_arena_current()
  %enum.alloc452 = call ptr @dva_arena_alloc(ptr %arena.cur451, i64 16)
  %tag.gep453 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc452, i32 0, i32 0
  store i64 14, ptr %tag.gep453, align 8
  %pay.gep454 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc452, i32 0, i32 1
  %var.load455 = load ptr, ptr %var.fe, align 8
  %fld.gep456 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load455, i32 0, i32 0
  %fld.load457 = load ptr, ptr %fld.gep456, align 8
  %var.load458 = load ptr, ptr %var.fe, align 8
  %fld.gep459 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load458, i32 0, i32 1
  %fld.load460 = load ptr, ptr %fld.gep459, align 8
  %var.load461 = load ptr, ptr %var.new_body, align 8
  %var.load462 = load ptr, ptr %var.fe, align 8
  %fld.gep463 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load462, i32 0, i32 3
  %fld.load464 = load i64, ptr %fld.gep463, align 8
  %var.load465 = load ptr, ptr %var.fe, align 8
  %fld.gep466 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load465, i32 0, i32 4
  %fld.load467 = load i64, ptr %fld.gep466, align 8
  %arena.cur468 = call ptr @dva_arena_current()
  %rec.alloc469 = call ptr @dva_arena_alloc(ptr %arena.cur468, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld470 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc469, i32 0, i32 0
  store ptr %fld.load457, ptr %rec.fld470, align 8
  %rec.fld471 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc469, i32 0, i32 1
  store ptr %fld.load460, ptr %rec.fld471, align 8
  %rec.fld472 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc469, i32 0, i32 2
  store ptr %var.load461, ptr %rec.fld472, align 8
  %rec.fld473 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc469, i32 0, i32 3
  store i64 %fld.load464, ptr %rec.fld473, align 8
  %rec.fld474 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc469, i32 0, i32 4
  store i64 %fld.load467, ptr %rec.fld474, align 8
  store ptr %rec.alloc469, ptr %pay.gep454, align 8
  br label %choice.exit

choice.case475:                                   ; preds = %choice.next244
  %pay.gep480 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr481 = load ptr, ptr %pay.gep480, align 8
  store ptr %payload.ptr481, ptr %var._482, align 8
  store ptr %payload.ptr481, ptr %var.be, align 8
  %var.load483 = load ptr, ptr %var.locals, align 8
  %a.load484 = load ptr, ptr %var.locals, align 8
  %a.null485 = icmp eq ptr %a.load484, null
  br i1 %a.null485, label %a.create486, label %a.after487

choice.next476:                                   ; preds = %choice.next244
  %tag.gep702 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id703 = load i64, ptr %tag.gep702, align 8
  %tag.match704 = icmp eq i64 %tag.id703, 7
  br i1 %tag.match704, label %choice.case700, label %choice.next701

a.create486:                                      ; preds = %choice.case475
  %arena.cur488 = call ptr @dva_arena_current()
  %a.create489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 24)
  %arena.cur490 = call ptr @dva_arena_current()
  %a.buf491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 128)
  %a.len.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 0
  store i64 0, ptr %a.len.gep492, align 8
  %a.data.gep493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 1
  store ptr %a.buf491, ptr %a.data.gep493, align 8
  %a.cap.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create489, i32 0, i32 2
  store i64 16, ptr %a.cap.gep494, align 8
  store ptr %a.create489, ptr %var.locals, align 8
  br label %a.after487

a.after487:                                       ; preds = %a.create486, %choice.case475
  %a.load2495 = load ptr, ptr %var.locals, align 8
  %a.copy.len496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2495, i32 0, i32 0
  %a.copy.len497 = load i64, ptr %a.copy.len496, align 8
  %a.copy.cap498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2495, i32 0, i32 2
  %a.copy.cap499 = load i64, ptr %a.copy.cap498, align 8
  %a.copy.data500 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2495, i32 0, i32 1
  %a.copy.data501 = load ptr, ptr %a.copy.data500, align 8
  %arena.cur502 = call ptr @dva_arena_current()
  %a.copy503 = call ptr @dva_arena_alloc(ptr %arena.cur502, i64 24)
  %a.copy.buflen504 = add i64 %a.copy.cap499, 1
  %a.copy.bufsize505 = mul i64 %a.copy.buflen504, 8
  %arena.cur506 = call ptr @dva_arena_current()
  %a.copy.buf507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %a.copy.bufsize505)
  %a.copy.copylen508 = mul i64 %a.copy.len497, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf507, ptr align 1 %a.copy.data501, i64 %a.copy.copylen508, i1 false)
  %a.copy.len.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy503, i32 0, i32 0
  store i64 %a.copy.len497, ptr %a.copy.len.gep509, align 8
  %a.copy.data.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy503, i32 0, i32 1
  store ptr %a.copy.buf507, ptr %a.copy.data.gep510, align 8
  %a.copy.cap.gep511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy503, i32 0, i32 2
  store i64 %a.copy.cap499, ptr %a.copy.cap.gep511, align 8
  store ptr %a.copy503, ptr %var.blk_locals, align 8
  %arena.cur512 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 24)
  %arena.cur513 = call ptr @dva_arena_current()
  %a.buf514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 128)
  %a.len.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep515, align 8
  %a.data.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf514, ptr %a.data.gep516, align 8
  %a.cap.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep517, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load518 = load ptr, ptr %var.be, align 8
  %a.load519 = load ptr, ptr %var.be, align 8
  %a.null520 = icmp eq ptr %a.load519, null
  br i1 %a.null520, label %a.create521, label %a.after522

a.create521:                                      ; preds = %a.after487
  %arena.cur523 = call ptr @dva_arena_current()
  %a.create524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 24)
  %arena.cur525 = call ptr @dva_arena_current()
  %a.buf526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 128)
  %a.len.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 0
  store i64 0, ptr %a.len.gep527, align 8
  %a.data.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 1
  store ptr %a.buf526, ptr %a.data.gep528, align 8
  %a.cap.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 2
  store i64 16, ptr %a.cap.gep529, align 8
  store ptr %a.create524, ptr %var.be, align 8
  br label %a.after522

a.after522:                                       ; preds = %a.create521, %a.after487
  %a.load2530 = load ptr, ptr %var.be, align 8
  %arr.cycle.len531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2530, i32 0, i32 0
  %arr.cycle.len532 = load i64, ptr %arr.cycle.len531, align 8
  %arr.cycle.data533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2530, i32 0, i32 1
  %arr.cycle.data534 = load ptr, ptr %arr.cycle.data533, align 8
  store i64 0, ptr %loop.idx.78, align 8
  %cycle.prev.u535 = load ptr, ptr %var._482, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after522
  %counter.load536 = load i64, ptr %loop.idx.78, align 8
  %loop.cond537 = icmp slt i64 %counter.load536, %arr.cycle.len532
  br i1 %loop.cond537, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i538 = sub i64 %counter.load536, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep539 = getelementptr i64, ptr %arr.cycle.data534, i64 %counter.load536
  %arr.elem.raw540 = load i64, ptr %arr.elem.gep539, align 8
  %slot.i2p541 = inttoptr i64 %arr.elem.raw540 to ptr
  store i64 %loop.rel.i538, ptr %var._i542, align 8
  store ptr %slot.i2p541, ptr %var._543, align 8
  store ptr %slot.i2p541, ptr %var.child, align 8
  %var.load544 = load ptr, ptr %var.child, align 8
  %var.load545 = load ptr, ptr %var.table, align 8
  %var.load546 = load ptr, ptr %var.blk_locals, align 8
  %a.load547 = load ptr, ptr %var.blk_locals, align 8
  %a.null548 = icmp eq ptr %a.load547, null
  br i1 %a.null548, label %a.create549, label %a.after550

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit590
  %step.val681 = load i64, ptr %loop.step.78, align 8
  %loop.next682 = add i64 %counter.load536, %step.val681
  store i64 %loop.next682, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  store ptr %cycle.prev.u535, ptr %var._482, align 8
  %arena.cur683 = call ptr @dva_arena_current()
  %enum.alloc684 = call ptr @dva_arena_alloc(ptr %arena.cur683, i64 16)
  %tag.gep685 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc684, i32 0, i32 0
  store i64 8, ptr %tag.gep685, align 8
  %pay.gep686 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc684, i32 0, i32 1
  %var.load687 = load ptr, ptr %var.new_exprs, align 8
  %a.load688 = load ptr, ptr %var.new_exprs, align 8
  %a.null689 = icmp eq ptr %a.load688, null
  br i1 %a.null689, label %a.create690, label %a.after691

a.create549:                                      ; preds = %loop.body.78
  %arena.cur551 = call ptr @dva_arena_current()
  %a.create552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 24)
  %arena.cur553 = call ptr @dva_arena_current()
  %a.buf554 = call ptr @dva_arena_alloc(ptr %arena.cur553, i64 128)
  %a.len.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 0
  store i64 0, ptr %a.len.gep555, align 8
  %a.data.gep556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 1
  store ptr %a.buf554, ptr %a.data.gep556, align 8
  %a.cap.gep557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 2
  store i64 16, ptr %a.cap.gep557, align 8
  store ptr %a.create552, ptr %var.blk_locals, align 8
  br label %a.after550

a.after550:                                       ; preds = %a.create549, %loop.body.78
  %a.load2558 = load ptr, ptr %var.blk_locals, align 8
  %var.load559 = load ptr, ptr %var.cur_mod, align 8
  %call.res560 = call ptr @"overloads::walk"(ptr %var.load544, ptr %var.load545, ptr %a.load2558, ptr %var.load559)
  %a.load561 = load ptr, ptr %var.new_exprs, align 8
  %a.null562 = icmp eq ptr %a.load561, null
  br i1 %a.null562, label %a.create563, label %a.after564

a.create563:                                      ; preds = %a.after550
  %arena.cur565 = call ptr @dva_arena_current()
  %a.create566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 24)
  %arena.cur567 = call ptr @dva_arena_current()
  %a.buf568 = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 128)
  %a.len.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 0
  store i64 0, ptr %a.len.gep569, align 8
  %a.data.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 1
  store ptr %a.buf568, ptr %a.data.gep570, align 8
  %a.cap.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create566, i32 0, i32 2
  store i64 16, ptr %a.cap.gep571, align 8
  store ptr %a.create566, ptr %var.new_exprs, align 8
  br label %a.after564

a.after564:                                       ; preds = %a.create563, %a.after550
  %a.load2572 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check573

a.check573:                                       ; preds = %a.after564
  %a.len576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2572, i32 0, i32 0
  %a.len577 = load i64, ptr %a.len576, align 8
  %a.cap578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2572, i32 0, i32 2
  %a.cap579 = load i64, ptr %a.cap578, align 8
  %a.needs.grow580 = icmp eq i64 %a.len577, %a.cap579
  br i1 %a.needs.grow580, label %a.grow574, label %a.store575

a.grow574:                                        ; preds = %a.check573
  call void @dva_array_grow(ptr %a.load2572)
  br label %a.store575

a.store575:                                       ; preds = %a.grow574, %a.check573
  %a.cur.data581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2572, i32 0, i32 1
  %a.cur.data582 = load ptr, ptr %a.cur.data581, align 8
  %a.cur.len583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2572, i32 0, i32 0
  %a.cur.len584 = load i64, ptr %a.cur.len583, align 8
  %a.elem.gep585 = getelementptr i64, ptr %a.cur.data582, i64 %a.cur.len584
  %slot.p2i586 = ptrtoint ptr %call.res560 to i64
  store i64 %slot.p2i586, ptr %a.elem.gep585, align 8
  %a.next.len587 = add i64 %a.cur.len584, 1
  %b.len.gep588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2572, i32 0, i32 0
  store i64 %a.next.len587, ptr %b.len.gep588, align 8
  %var.load589 = load ptr, ptr %var.child, align 8
  %tag.gep593 = getelementptr inbounds { i64, ptr }, ptr %var.load589, i32 0, i32 0
  %tag.id594 = load i64, ptr %tag.gep593, align 8
  %tag.match595 = icmp eq i64 %tag.id594, 6
  br i1 %tag.match595, label %choice.case591, label %choice.next592

choice.exit590:                                   ; preds = %choice.next592, %choice.exit649
  br label %loop.latch.78

choice.case591:                                   ; preds = %a.store575
  %pay.gep596 = getelementptr inbounds { i64, ptr }, ptr %var.load589, i32 0, i32 1
  %payload.ptr597 = load ptr, ptr %pay.gep596, align 8
  store ptr %payload.ptr597, ptr %var._598, align 8
  store ptr %payload.ptr597, ptr %var.ca, align 8
  %var.load599 = load ptr, ptr %var.locals, align 8
  %a.load600 = load ptr, ptr %var.locals, align 8
  %a.null601 = icmp eq ptr %a.load600, null
  br i1 %a.null601, label %a.create602, label %a.after603

choice.next592:                                   ; preds = %a.store575
  br label %choice.exit590

a.create602:                                      ; preds = %choice.case591
  %arena.cur604 = call ptr @dva_arena_current()
  %a.create605 = call ptr @dva_arena_alloc(ptr %arena.cur604, i64 24)
  %arena.cur606 = call ptr @dva_arena_current()
  %a.buf607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 128)
  %a.len.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 0
  store i64 0, ptr %a.len.gep608, align 8
  %a.data.gep609 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 1
  store ptr %a.buf607, ptr %a.data.gep609, align 8
  %a.cap.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create605, i32 0, i32 2
  store i64 16, ptr %a.cap.gep610, align 8
  store ptr %a.create605, ptr %var.locals, align 8
  br label %a.after603

a.after603:                                       ; preds = %a.create602, %choice.case591
  %a.load2611 = load ptr, ptr %var.locals, align 8
  %call.res612 = call i1 @"overloads::contains"(ptr %a.load2611, ptr @str.7.struct)
  br i1 %call.res612, label %or.79.then, label %or.79.else

or.79.then:                                       ; preds = %a.after603
  br label %or.79.exit

or.79.else:                                       ; preds = %a.after603
  %var.load613 = load ptr, ptr %var.table, align 8
  %var.load614 = load ptr, ptr %var.ca, align 8
  %fld.gep615 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load614, i32 0, i32 0
  %fld.load616 = load ptr, ptr %fld.gep615, align 8
  %var.load617 = load ptr, ptr %var.cur_mod, align 8
  %call.res618 = call ptr @"overloads::resolve_family_name"(ptr %var.load613, ptr %fld.load616, ptr %var.load617)
  %eq.lhs.len619 = getelementptr inbounds { i64, ptr }, ptr %call.res618, i32 0, i32 0
  %eq.lhs.len620 = load i64, ptr %eq.lhs.len619, align 8
  %eq.lhs.len621 = and i64 %eq.lhs.len620, 281474976710655
  %str.tag622 = lshr i64 %eq.lhs.len620, 48
  %str.immortal623 = icmp eq i64 %str.tag622, 0
  br i1 %str.immortal623, label %str_ok625, label %str_gen_check624

or.79.exit:                                       ; preds = %str.eq.merge641, %or.79.then
  %or.79.phi = phi i1 [ %call.res612, %or.79.then ], [ %str.eq.result647, %str.eq.merge641 ]
  br i1 %or.79.phi, label %choice.then648, label %choice.exit649

str_gen_check624:                                 ; preds = %or.79.else
  %arena.cur627 = call ptr @dva_arena_current()
  %tag.valid628 = call i1 @dva_arena_validate_tag(ptr %arena.cur627, i64 %str.tag622)
  br i1 %tag.valid628, label %str_ok625, label %str_stale626

str_ok625:                                        ; preds = %str_stale626, %str_gen_check624, %or.79.else
  %eq.rhs.len629 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len630 = and i64 %eq.rhs.len629, 281474976710655
  %str.tag631 = lshr i64 %eq.rhs.len629, 48
  %str.immortal632 = icmp eq i64 %str.tag631, 0
  br i1 %str.immortal632, label %str_ok634, label %str_gen_check633

str_stale626:                                     ; preds = %str_gen_check624
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok625

str_gen_check633:                                 ; preds = %str_ok625
  %arena.cur636 = call ptr @dva_arena_current()
  %tag.valid637 = call i1 @dva_arena_validate_tag(ptr %arena.cur636, i64 %str.tag631)
  br i1 %tag.valid637, label %str_ok634, label %str_stale635

str_ok634:                                        ; preds = %str_stale635, %str_gen_check633, %str_ok625
  %eq.len638 = icmp eq i64 %eq.lhs.len621, %eq.rhs.len630
  br i1 %eq.len638, label %str.eq.then639, label %str.eq.else640

str_stale635:                                     ; preds = %str_gen_check633
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok634

str.eq.then639:                                   ; preds = %str_ok634
  %eq.lhs.data642 = getelementptr inbounds { i64, ptr }, ptr %call.res618, i32 0, i32 1
  %eq.lhs.data643 = load ptr, ptr %eq.lhs.data642, align 8
  %eq.rhs.data644 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp645 = call i32 @memcmp(ptr %eq.lhs.data643, ptr %eq.rhs.data644, i64 %eq.lhs.len621)
  %eq.cmp.zero646 = icmp eq i32 %eq.memcmp645, 0
  br label %str.eq.merge641

str.eq.else640:                                   ; preds = %str_ok634
  br label %str.eq.merge641

str.eq.merge641:                                  ; preds = %str.eq.else640, %str.eq.then639
  %str.eq.result647 = phi i1 [ %eq.cmp.zero646, %str.eq.then639 ], [ false, %str.eq.else640 ]
  br label %or.79.exit

choice.then648:                                   ; preds = %or.79.exit
  %var.load650 = load ptr, ptr %var.ca, align 8
  %fld.gep651 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load650, i32 0, i32 0
  %fld.load652 = load ptr, ptr %fld.gep651, align 8
  %a.load653 = load ptr, ptr %var.blk_locals, align 8
  %a.null654 = icmp eq ptr %a.load653, null
  br i1 %a.null654, label %a.create655, label %a.after656

choice.exit649:                                   ; preds = %a.store667, %or.79.exit
  br label %choice.exit590

a.create655:                                      ; preds = %choice.then648
  %arena.cur657 = call ptr @dva_arena_current()
  %a.create658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 24)
  %arena.cur659 = call ptr @dva_arena_current()
  %a.buf660 = call ptr @dva_arena_alloc(ptr %arena.cur659, i64 128)
  %a.len.gep661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 0
  store i64 0, ptr %a.len.gep661, align 8
  %a.data.gep662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 1
  store ptr %a.buf660, ptr %a.data.gep662, align 8
  %a.cap.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 2
  store i64 16, ptr %a.cap.gep663, align 8
  store ptr %a.create658, ptr %var.blk_locals, align 8
  br label %a.after656

a.after656:                                       ; preds = %a.create655, %choice.then648
  %a.load2664 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check665

a.check665:                                       ; preds = %a.after656
  %a.len668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  %a.len669 = load i64, ptr %a.len668, align 8
  %a.cap670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 2
  %a.cap671 = load i64, ptr %a.cap670, align 8
  %a.needs.grow672 = icmp eq i64 %a.len669, %a.cap671
  br i1 %a.needs.grow672, label %a.grow666, label %a.store667

a.grow666:                                        ; preds = %a.check665
  call void @dva_array_grow(ptr %a.load2664)
  br label %a.store667

a.store667:                                       ; preds = %a.grow666, %a.check665
  %a.cur.data673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 1
  %a.cur.data674 = load ptr, ptr %a.cur.data673, align 8
  %a.cur.len675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  %a.cur.len676 = load i64, ptr %a.cur.len675, align 8
  %a.elem.gep677 = getelementptr i64, ptr %a.cur.data674, i64 %a.cur.len676
  %slot.p2i678 = ptrtoint ptr %fld.load652 to i64
  store i64 %slot.p2i678, ptr %a.elem.gep677, align 8
  %a.next.len679 = add i64 %a.cur.len676, 1
  %b.len.gep680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2664, i32 0, i32 0
  store i64 %a.next.len679, ptr %b.len.gep680, align 8
  br label %choice.exit649

a.create690:                                      ; preds = %loop.exit.78
  %arena.cur692 = call ptr @dva_arena_current()
  %a.create693 = call ptr @dva_arena_alloc(ptr %arena.cur692, i64 24)
  %arena.cur694 = call ptr @dva_arena_current()
  %a.buf695 = call ptr @dva_arena_alloc(ptr %arena.cur694, i64 128)
  %a.len.gep696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create693, i32 0, i32 0
  store i64 0, ptr %a.len.gep696, align 8
  %a.data.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create693, i32 0, i32 1
  store ptr %a.buf695, ptr %a.data.gep697, align 8
  %a.cap.gep698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create693, i32 0, i32 2
  store i64 16, ptr %a.cap.gep698, align 8
  store ptr %a.create693, ptr %var.new_exprs, align 8
  br label %a.after691

a.after691:                                       ; preds = %a.create690, %loop.exit.78
  %a.load2699 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2699, ptr %pay.gep686, align 8
  br label %choice.exit

choice.case700:                                   ; preds = %choice.next476
  %pay.gep705 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr706 = load ptr, ptr %pay.gep705, align 8
  store ptr %payload.ptr706, ptr %var._707, align 8
  store ptr %payload.ptr706, ptr %var.ch, align 8
  %var.load708 = load ptr, ptr %var.ch, align 8
  %fld.gep709 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load708, i32 0, i32 0
  %fld.load710 = load ptr, ptr %fld.gep709, align 8
  %var.load711 = load ptr, ptr %var.table, align 8
  %var.load712 = load ptr, ptr %var.locals, align 8
  %a.load713 = load ptr, ptr %var.locals, align 8
  %a.null714 = icmp eq ptr %a.load713, null
  br i1 %a.null714, label %a.create715, label %a.after716

choice.next701:                                   ; preds = %choice.next476
  %tag.gep1010 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1011 = load i64, ptr %tag.gep1010, align 8
  %tag.match1012 = icmp eq i64 %tag.id1011, 6
  br i1 %tag.match1012, label %choice.case1008, label %choice.next1009

a.create715:                                      ; preds = %choice.case700
  %arena.cur717 = call ptr @dva_arena_current()
  %a.create718 = call ptr @dva_arena_alloc(ptr %arena.cur717, i64 24)
  %arena.cur719 = call ptr @dva_arena_current()
  %a.buf720 = call ptr @dva_arena_alloc(ptr %arena.cur719, i64 128)
  %a.len.gep721 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create718, i32 0, i32 0
  store i64 0, ptr %a.len.gep721, align 8
  %a.data.gep722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create718, i32 0, i32 1
  store ptr %a.buf720, ptr %a.data.gep722, align 8
  %a.cap.gep723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create718, i32 0, i32 2
  store i64 16, ptr %a.cap.gep723, align 8
  store ptr %a.create718, ptr %var.locals, align 8
  br label %a.after716

a.after716:                                       ; preds = %a.create715, %choice.case700
  %a.load2724 = load ptr, ptr %var.locals, align 8
  %var.load725 = load ptr, ptr %var.cur_mod, align 8
  %call.res726 = call ptr @"overloads::walk"(ptr %fld.load710, ptr %var.load711, ptr %a.load2724, ptr %var.load725)
  store ptr %call.res726, ptr %var.new_cond, align 8
  %arena.cur727 = call ptr @dva_arena_current()
  %a.new728 = call ptr @dva_arena_alloc(ptr %arena.cur727, i64 24)
  %arena.cur729 = call ptr @dva_arena_current()
  %a.buf730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 128)
  %a.len.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new728, i32 0, i32 0
  store i64 0, ptr %a.len.gep731, align 8
  %a.data.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new728, i32 0, i32 1
  store ptr %a.buf730, ptr %a.data.gep732, align 8
  %a.cap.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new728, i32 0, i32 2
  store i64 16, ptr %a.cap.gep733, align 8
  store ptr %a.new728, ptr %var.new_branches, align 8
  %var.load734 = load ptr, ptr %var.ch, align 8
  %fld.gep735 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load734, i32 0, i32 2
  %fld.load736 = load ptr, ptr %fld.gep735, align 8
  %arr.cycle.len737 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load736, i32 0, i32 0
  %arr.cycle.len738 = load i64, ptr %arr.cycle.len737, align 8
  %arr.cycle.data739 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load736, i32 0, i32 1
  %arr.cycle.data740 = load ptr, ptr %arr.cycle.data739, align 8
  store i64 0, ptr %loop.idx.80, align 8
  %cycle.prev.u741 = load ptr, ptr %var._707, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after716
  %counter.load742 = load i64, ptr %loop.idx.80, align 8
  %loop.cond743 = icmp slt i64 %counter.load742, %arr.cycle.len738
  br i1 %loop.cond743, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i744 = sub i64 %counter.load742, 0
  store i64 1, ptr %loop.step.80, align 8
  %arr.elem.gep745 = getelementptr i64, ptr %arr.cycle.data740, i64 %counter.load742
  %arr.elem.raw746 = load i64, ptr %arr.elem.gep745, align 8
  %slot.i2p747 = inttoptr i64 %arr.elem.raw746 to ptr
  store i64 %loop.rel.i744, ptr %var._i748, align 8
  store ptr %slot.i2p747, ptr %var._749, align 8
  store ptr %slot.i2p747, ptr %var.br, align 8
  %var.load750 = load ptr, ptr %var.locals, align 8
  %a.load751 = load ptr, ptr %var.locals, align 8
  %a.null752 = icmp eq ptr %a.load751, null
  br i1 %a.null752, label %a.create753, label %a.after754

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %a.store966
  %step.val980 = load i64, ptr %loop.step.80, align 8
  %loop.next981 = add i64 %counter.load742, %step.val980
  store i64 %loop.next981, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  store ptr %cycle.prev.u741, ptr %var._707, align 8
  %arena.cur982 = call ptr @dva_arena_current()
  %enum.alloc983 = call ptr @dva_arena_alloc(ptr %arena.cur982, i64 16)
  %tag.gep984 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc983, i32 0, i32 0
  store i64 7, ptr %tag.gep984, align 8
  %pay.gep985 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc983, i32 0, i32 1
  %var.load986 = load ptr, ptr %var.new_cond, align 8
  %var.load987 = load ptr, ptr %var.ch, align 8
  %fld.gep988 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load987, i32 0, i32 1
  %fld.load989 = load i1, ptr %fld.gep988, align 1
  %var.load990 = load ptr, ptr %var.new_branches, align 8
  %a.load991 = load ptr, ptr %var.new_branches, align 8
  %a.null992 = icmp eq ptr %a.load991, null
  br i1 %a.null992, label %a.create993, label %a.after994

a.create753:                                      ; preds = %loop.body.80
  %arena.cur755 = call ptr @dva_arena_current()
  %a.create756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 24)
  %arena.cur757 = call ptr @dva_arena_current()
  %a.buf758 = call ptr @dva_arena_alloc(ptr %arena.cur757, i64 128)
  %a.len.gep759 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create756, i32 0, i32 0
  store i64 0, ptr %a.len.gep759, align 8
  %a.data.gep760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create756, i32 0, i32 1
  store ptr %a.buf758, ptr %a.data.gep760, align 8
  %a.cap.gep761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create756, i32 0, i32 2
  store i64 16, ptr %a.cap.gep761, align 8
  store ptr %a.create756, ptr %var.locals, align 8
  br label %a.after754

a.after754:                                       ; preds = %a.create753, %loop.body.80
  %a.load2762 = load ptr, ptr %var.locals, align 8
  %a.copy.len763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2762, i32 0, i32 0
  %a.copy.len764 = load i64, ptr %a.copy.len763, align 8
  %a.copy.cap765 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2762, i32 0, i32 2
  %a.copy.cap766 = load i64, ptr %a.copy.cap765, align 8
  %a.copy.data767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2762, i32 0, i32 1
  %a.copy.data768 = load ptr, ptr %a.copy.data767, align 8
  %arena.cur769 = call ptr @dva_arena_current()
  %a.copy770 = call ptr @dva_arena_alloc(ptr %arena.cur769, i64 24)
  %a.copy.buflen771 = add i64 %a.copy.cap766, 1
  %a.copy.bufsize772 = mul i64 %a.copy.buflen771, 8
  %arena.cur773 = call ptr @dva_arena_current()
  %a.copy.buf774 = call ptr @dva_arena_alloc(ptr %arena.cur773, i64 %a.copy.bufsize772)
  %a.copy.copylen775 = mul i64 %a.copy.len764, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf774, ptr align 1 %a.copy.data768, i64 %a.copy.copylen775, i1 false)
  %a.copy.len.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy770, i32 0, i32 0
  store i64 %a.copy.len764, ptr %a.copy.len.gep776, align 8
  %a.copy.data.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy770, i32 0, i32 1
  store ptr %a.copy.buf774, ptr %a.copy.data.gep777, align 8
  %a.copy.cap.gep778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy770, i32 0, i32 2
  store i64 %a.copy.cap766, ptr %a.copy.cap.gep778, align 8
  store ptr %a.copy770, ptr %var.br_locals, align 8
  %var.load779 = load ptr, ptr %var.br, align 8
  %fld.gep780 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load779, i32 0, i32 4
  %fld.load781 = load ptr, ptr %fld.gep780, align 8
  %arr.cycle.len782 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load781, i32 0, i32 0
  %arr.cycle.len783 = load i64, ptr %arr.cycle.len782, align 8
  %arr.cycle.data784 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load781, i32 0, i32 1
  %arr.cycle.data785 = load ptr, ptr %arr.cycle.data784, align 8
  store i64 0, ptr %loop.idx.81, align 8
  %cycle.prev.u786 = load ptr, ptr %var._749, align 8
  %cycle.prev.i = load i64, ptr %var._i748, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after754
  %counter.load787 = load i64, ptr %loop.idx.81, align 8
  %loop.cond788 = icmp slt i64 %counter.load787, %arr.cycle.len783
  br i1 %loop.cond788, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i789 = sub i64 %counter.load787, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep790 = getelementptr i64, ptr %arr.cycle.data785, i64 %counter.load787
  %arr.elem.raw791 = load i64, ptr %arr.elem.gep790, align 8
  %slot.i2p792 = inttoptr i64 %arr.elem.raw791 to ptr
  store i64 %loop.rel.i789, ptr %var._i793, align 8
  store ptr %slot.i2p792, ptr %var._794, align 8
  store ptr %slot.i2p792, ptr %var.bv, align 8
  %var.load795 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len796 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 0
  %eq.lhs.len797 = load i64, ptr %eq.lhs.len796, align 8
  %eq.lhs.len798 = and i64 %eq.lhs.len797, 281474976710655
  %str.tag799 = lshr i64 %eq.lhs.len797, 48
  %str.immortal800 = icmp eq i64 %str.tag799, 0
  br i1 %str.immortal800, label %str_ok802, label %str_gen_check801

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit827
  %step.val857 = load i64, ptr %loop.step.81, align 8
  %loop.next858 = add i64 %counter.load787, %step.val857
  store i64 %loop.next858, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  store ptr %cycle.prev.u786, ptr %var._749, align 8
  store i64 %cycle.prev.i, ptr %var._i748, align 8
  %var.load859 = load ptr, ptr %var.br, align 8
  %fld.gep860 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load859, i32 0, i32 1
  %fld.load861 = load ptr, ptr %fld.gep860, align 8
  %var.load862 = load ptr, ptr %var.table, align 8
  %var.load863 = load ptr, ptr %var.br_locals, align 8
  %a.load864 = load ptr, ptr %var.br_locals, align 8
  %a.null865 = icmp eq ptr %a.load864, null
  br i1 %a.null865, label %a.create866, label %a.after867

str_gen_check801:                                 ; preds = %loop.body.81
  %arena.cur804 = call ptr @dva_arena_current()
  %tag.valid805 = call i1 @dva_arena_validate_tag(ptr %arena.cur804, i64 %str.tag799)
  br i1 %tag.valid805, label %str_ok802, label %str_stale803

str_ok802:                                        ; preds = %str_stale803, %str_gen_check801, %loop.body.81
  %eq.rhs.len806 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len807 = and i64 %eq.rhs.len806, 281474976710655
  %str.tag808 = lshr i64 %eq.rhs.len806, 48
  %str.immortal809 = icmp eq i64 %str.tag808, 0
  br i1 %str.immortal809, label %str_ok811, label %str_gen_check810

str_stale803:                                     ; preds = %str_gen_check801
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok802

str_gen_check810:                                 ; preds = %str_ok802
  %arena.cur813 = call ptr @dva_arena_current()
  %tag.valid814 = call i1 @dva_arena_validate_tag(ptr %arena.cur813, i64 %str.tag808)
  br i1 %tag.valid814, label %str_ok811, label %str_stale812

str_ok811:                                        ; preds = %str_stale812, %str_gen_check810, %str_ok802
  %eq.len815 = icmp eq i64 %eq.lhs.len798, %eq.rhs.len807
  br i1 %eq.len815, label %str.eq.then816, label %str.eq.else817

str_stale812:                                     ; preds = %str_gen_check810
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok811

str.eq.then816:                                   ; preds = %str_ok811
  %eq.lhs.data819 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 1
  %eq.lhs.data820 = load ptr, ptr %eq.lhs.data819, align 8
  %eq.rhs.data821 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp822 = call i32 @memcmp(ptr %eq.lhs.data820, ptr %eq.rhs.data821, i64 %eq.lhs.len798)
  %eq.cmp.zero823 = icmp eq i32 %eq.memcmp822, 0
  br label %str.eq.merge818

str.eq.else817:                                   ; preds = %str_ok811
  br label %str.eq.merge818

str.eq.merge818:                                  ; preds = %str.eq.else817, %str.eq.then816
  %str.eq.result824 = phi i1 [ %eq.cmp.zero823, %str.eq.then816 ], [ false, %str.eq.else817 ]
  %str.neq825 = xor i1 %str.eq.result824, true
  br i1 %str.neq825, label %choice.then826, label %choice.exit827

choice.then826:                                   ; preds = %str.eq.merge818
  %var.load828 = load ptr, ptr %var.bv, align 8
  %a.load829 = load ptr, ptr %var.br_locals, align 8
  %a.null830 = icmp eq ptr %a.load829, null
  br i1 %a.null830, label %a.create831, label %a.after832

choice.exit827:                                   ; preds = %a.store843, %str.eq.merge818
  br label %loop.latch.81

a.create831:                                      ; preds = %choice.then826
  %arena.cur833 = call ptr @dva_arena_current()
  %a.create834 = call ptr @dva_arena_alloc(ptr %arena.cur833, i64 24)
  %arena.cur835 = call ptr @dva_arena_current()
  %a.buf836 = call ptr @dva_arena_alloc(ptr %arena.cur835, i64 128)
  %a.len.gep837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create834, i32 0, i32 0
  store i64 0, ptr %a.len.gep837, align 8
  %a.data.gep838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create834, i32 0, i32 1
  store ptr %a.buf836, ptr %a.data.gep838, align 8
  %a.cap.gep839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create834, i32 0, i32 2
  store i64 16, ptr %a.cap.gep839, align 8
  store ptr %a.create834, ptr %var.br_locals, align 8
  br label %a.after832

a.after832:                                       ; preds = %a.create831, %choice.then826
  %a.load2840 = load ptr, ptr %var.br_locals, align 8
  br label %a.check841

a.check841:                                       ; preds = %a.after832
  %a.len844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2840, i32 0, i32 0
  %a.len845 = load i64, ptr %a.len844, align 8
  %a.cap846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2840, i32 0, i32 2
  %a.cap847 = load i64, ptr %a.cap846, align 8
  %a.needs.grow848 = icmp eq i64 %a.len845, %a.cap847
  br i1 %a.needs.grow848, label %a.grow842, label %a.store843

a.grow842:                                        ; preds = %a.check841
  call void @dva_array_grow(ptr %a.load2840)
  br label %a.store843

a.store843:                                       ; preds = %a.grow842, %a.check841
  %a.cur.data849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2840, i32 0, i32 1
  %a.cur.data850 = load ptr, ptr %a.cur.data849, align 8
  %a.cur.len851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2840, i32 0, i32 0
  %a.cur.len852 = load i64, ptr %a.cur.len851, align 8
  %a.elem.gep853 = getelementptr i64, ptr %a.cur.data850, i64 %a.cur.len852
  %slot.p2i854 = ptrtoint ptr %var.load828 to i64
  store i64 %slot.p2i854, ptr %a.elem.gep853, align 8
  %a.next.len855 = add i64 %a.cur.len852, 1
  %b.len.gep856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2840, i32 0, i32 0
  store i64 %a.next.len855, ptr %b.len.gep856, align 8
  br label %choice.exit827

a.create866:                                      ; preds = %loop.exit.81
  %arena.cur868 = call ptr @dva_arena_current()
  %a.create869 = call ptr @dva_arena_alloc(ptr %arena.cur868, i64 24)
  %arena.cur870 = call ptr @dva_arena_current()
  %a.buf871 = call ptr @dva_arena_alloc(ptr %arena.cur870, i64 128)
  %a.len.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create869, i32 0, i32 0
  store i64 0, ptr %a.len.gep872, align 8
  %a.data.gep873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create869, i32 0, i32 1
  store ptr %a.buf871, ptr %a.data.gep873, align 8
  %a.cap.gep874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create869, i32 0, i32 2
  store i64 16, ptr %a.cap.gep874, align 8
  store ptr %a.create869, ptr %var.br_locals, align 8
  br label %a.after867

a.after867:                                       ; preds = %a.create866, %loop.exit.81
  %a.load2875 = load ptr, ptr %var.br_locals, align 8
  %var.load876 = load ptr, ptr %var.cur_mod, align 8
  %call.res877 = call ptr @"overloads::walk_many"(ptr %fld.load861, ptr %var.load862, ptr %a.load2875, ptr %var.load876)
  store ptr %call.res877, ptr %var.new_cases, align 8
  %var.load878 = load ptr, ptr %var.br, align 8
  %fld.gep879 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load878, i32 0, i32 2
  %fld.load880 = load ptr, ptr %fld.gep879, align 8
  %var.load881 = load ptr, ptr %var.table, align 8
  %var.load882 = load ptr, ptr %var.br_locals, align 8
  %a.load883 = load ptr, ptr %var.br_locals, align 8
  %a.null884 = icmp eq ptr %a.load883, null
  br i1 %a.null884, label %a.create885, label %a.after886

a.create885:                                      ; preds = %a.after867
  %arena.cur887 = call ptr @dva_arena_current()
  %a.create888 = call ptr @dva_arena_alloc(ptr %arena.cur887, i64 24)
  %arena.cur889 = call ptr @dva_arena_current()
  %a.buf890 = call ptr @dva_arena_alloc(ptr %arena.cur889, i64 128)
  %a.len.gep891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 0
  store i64 0, ptr %a.len.gep891, align 8
  %a.data.gep892 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 1
  store ptr %a.buf890, ptr %a.data.gep892, align 8
  %a.cap.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create888, i32 0, i32 2
  store i64 16, ptr %a.cap.gep893, align 8
  store ptr %a.create888, ptr %var.br_locals, align 8
  br label %a.after886

a.after886:                                       ; preds = %a.create885, %a.after867
  %a.load2894 = load ptr, ptr %var.br_locals, align 8
  %var.load895 = load ptr, ptr %var.cur_mod, align 8
  %call.res896 = call ptr @"overloads::walk"(ptr %fld.load880, ptr %var.load881, ptr %a.load2894, ptr %var.load895)
  store ptr %call.res896, ptr %var.new_pred, align 8
  %var.load897 = load ptr, ptr %var.br, align 8
  %fld.gep898 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load897, i32 0, i32 6
  %fld.load899 = load ptr, ptr %fld.gep898, align 8
  %var.load900 = load ptr, ptr %var.table, align 8
  %var.load901 = load ptr, ptr %var.br_locals, align 8
  %a.load902 = load ptr, ptr %var.br_locals, align 8
  %a.null903 = icmp eq ptr %a.load902, null
  br i1 %a.null903, label %a.create904, label %a.after905

a.create904:                                      ; preds = %a.after886
  %arena.cur906 = call ptr @dva_arena_current()
  %a.create907 = call ptr @dva_arena_alloc(ptr %arena.cur906, i64 24)
  %arena.cur908 = call ptr @dva_arena_current()
  %a.buf909 = call ptr @dva_arena_alloc(ptr %arena.cur908, i64 128)
  %a.len.gep910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create907, i32 0, i32 0
  store i64 0, ptr %a.len.gep910, align 8
  %a.data.gep911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create907, i32 0, i32 1
  store ptr %a.buf909, ptr %a.data.gep911, align 8
  %a.cap.gep912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create907, i32 0, i32 2
  store i64 16, ptr %a.cap.gep912, align 8
  store ptr %a.create907, ptr %var.br_locals, align 8
  br label %a.after905

a.after905:                                       ; preds = %a.create904, %a.after886
  %a.load2913 = load ptr, ptr %var.br_locals, align 8
  %var.load914 = load ptr, ptr %var.cur_mod, align 8
  %call.res915 = call ptr @"overloads::walk"(ptr %fld.load899, ptr %var.load900, ptr %a.load2913, ptr %var.load914)
  store ptr %call.res915, ptr %var.new_blk, align 8
  %var.load916 = load ptr, ptr %var.br, align 8
  %fld.gep917 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load916, i32 0, i32 0
  %fld.load918 = load ptr, ptr %fld.gep917, align 8
  %var.load919 = load ptr, ptr %var.new_cases, align 8
  %a.load920 = load ptr, ptr %var.new_cases, align 8
  %a.null921 = icmp eq ptr %a.load920, null
  br i1 %a.null921, label %a.create922, label %a.after923

a.create922:                                      ; preds = %a.after905
  %arena.cur924 = call ptr @dva_arena_current()
  %a.create925 = call ptr @dva_arena_alloc(ptr %arena.cur924, i64 24)
  %arena.cur926 = call ptr @dva_arena_current()
  %a.buf927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 128)
  %a.len.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 0
  store i64 0, ptr %a.len.gep928, align 8
  %a.data.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 1
  store ptr %a.buf927, ptr %a.data.gep929, align 8
  %a.cap.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 2
  store i64 16, ptr %a.cap.gep930, align 8
  store ptr %a.create925, ptr %var.new_cases, align 8
  br label %a.after923

a.after923:                                       ; preds = %a.create922, %a.after905
  %a.load2931 = load ptr, ptr %var.new_cases, align 8
  %var.load932 = load ptr, ptr %var.new_pred, align 8
  %var.load933 = load ptr, ptr %var.br, align 8
  %fld.gep934 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load933, i32 0, i32 3
  %fld.load935 = load ptr, ptr %fld.gep934, align 8
  %var.load936 = load ptr, ptr %var.br, align 8
  %fld.gep937 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load936, i32 0, i32 4
  %fld.load938 = load ptr, ptr %fld.gep937, align 8
  %var.load939 = load ptr, ptr %var.br, align 8
  %fld.gep940 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load939, i32 0, i32 5
  %fld.load941 = load i1, ptr %fld.gep940, align 1
  %var.load942 = load ptr, ptr %var.new_blk, align 8
  %arena.cur943 = call ptr @dva_arena_current()
  %rec.alloc944 = call ptr @dva_arena_alloc(ptr %arena.cur943, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld945 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 0
  store ptr %fld.load918, ptr %rec.fld945, align 8
  %rec.fld946 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 1
  store ptr %a.load2931, ptr %rec.fld946, align 8
  %rec.fld947 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 2
  store ptr %var.load932, ptr %rec.fld947, align 8
  %rec.fld948 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 3
  store ptr %fld.load935, ptr %rec.fld948, align 8
  %rec.fld949 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 4
  store ptr %fld.load938, ptr %rec.fld949, align 8
  %rec.fld950 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 5
  store i1 %fld.load941, ptr %rec.fld950, align 1
  %rec.fld951 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc944, i32 0, i32 6
  store ptr %var.load942, ptr %rec.fld951, align 8
  %a.load952 = load ptr, ptr %var.new_branches, align 8
  %a.null953 = icmp eq ptr %a.load952, null
  br i1 %a.null953, label %a.create954, label %a.after955

a.create954:                                      ; preds = %a.after923
  %arena.cur956 = call ptr @dva_arena_current()
  %a.create957 = call ptr @dva_arena_alloc(ptr %arena.cur956, i64 24)
  %arena.cur958 = call ptr @dva_arena_current()
  %a.buf959 = call ptr @dva_arena_alloc(ptr %arena.cur958, i64 128)
  %a.len.gep960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create957, i32 0, i32 0
  store i64 0, ptr %a.len.gep960, align 8
  %a.data.gep961 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create957, i32 0, i32 1
  store ptr %a.buf959, ptr %a.data.gep961, align 8
  %a.cap.gep962 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create957, i32 0, i32 2
  store i64 16, ptr %a.cap.gep962, align 8
  store ptr %a.create957, ptr %var.new_branches, align 8
  br label %a.after955

a.after955:                                       ; preds = %a.create954, %a.after923
  %a.load2963 = load ptr, ptr %var.new_branches, align 8
  br label %a.check964

a.check964:                                       ; preds = %a.after955
  %a.len967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2963, i32 0, i32 0
  %a.len968 = load i64, ptr %a.len967, align 8
  %a.cap969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2963, i32 0, i32 2
  %a.cap970 = load i64, ptr %a.cap969, align 8
  %a.needs.grow971 = icmp eq i64 %a.len968, %a.cap970
  br i1 %a.needs.grow971, label %a.grow965, label %a.store966

a.grow965:                                        ; preds = %a.check964
  call void @dva_array_grow(ptr %a.load2963)
  br label %a.store966

a.store966:                                       ; preds = %a.grow965, %a.check964
  %a.cur.data972 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2963, i32 0, i32 1
  %a.cur.data973 = load ptr, ptr %a.cur.data972, align 8
  %a.cur.len974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2963, i32 0, i32 0
  %a.cur.len975 = load i64, ptr %a.cur.len974, align 8
  %a.elem.gep976 = getelementptr i64, ptr %a.cur.data973, i64 %a.cur.len975
  %slot.p2i977 = ptrtoint ptr %rec.alloc944 to i64
  store i64 %slot.p2i977, ptr %a.elem.gep976, align 8
  %a.next.len978 = add i64 %a.cur.len975, 1
  %b.len.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2963, i32 0, i32 0
  store i64 %a.next.len978, ptr %b.len.gep979, align 8
  br label %loop.latch.80

a.create993:                                      ; preds = %loop.exit.80
  %arena.cur995 = call ptr @dva_arena_current()
  %a.create996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 24)
  %arena.cur997 = call ptr @dva_arena_current()
  %a.buf998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 128)
  %a.len.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 0
  store i64 0, ptr %a.len.gep999, align 8
  %a.data.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 1
  store ptr %a.buf998, ptr %a.data.gep1000, align 8
  %a.cap.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1001, align 8
  store ptr %a.create996, ptr %var.new_branches, align 8
  br label %a.after994

a.after994:                                       ; preds = %a.create993, %loop.exit.80
  %a.load21002 = load ptr, ptr %var.new_branches, align 8
  %arena.cur1003 = call ptr @dva_arena_current()
  %rec.alloc1004 = call ptr @dva_arena_alloc(ptr %arena.cur1003, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld1005 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc1004, i32 0, i32 0
  store ptr %var.load986, ptr %rec.fld1005, align 8
  %rec.fld1006 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc1004, i32 0, i32 1
  store i1 %fld.load989, ptr %rec.fld1006, align 1
  %rec.fld1007 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc1004, i32 0, i32 2
  store ptr %a.load21002, ptr %rec.fld1007, align 8
  store ptr %rec.alloc1004, ptr %pay.gep985, align 8
  br label %choice.exit

choice.case1008:                                  ; preds = %choice.next701
  %pay.gep1013 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1014 = load ptr, ptr %pay.gep1013, align 8
  store ptr %payload.ptr1014, ptr %var._1015, align 8
  store ptr %payload.ptr1014, ptr %var.a, align 8
  %var.load1016 = load ptr, ptr %var.locals, align 8
  %a.load1017 = load ptr, ptr %var.locals, align 8
  %a.null1018 = icmp eq ptr %a.load1017, null
  br i1 %a.null1018, label %a.create1019, label %a.after1020

choice.next1009:                                  ; preds = %choice.next701
  %tag.gep1243 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1244 = load i64, ptr %tag.gep1243, align 8
  %tag.match1245 = icmp eq i64 %tag.id1244, 23
  br i1 %tag.match1245, label %choice.case1241, label %choice.next1242

a.create1019:                                     ; preds = %choice.case1008
  %arena.cur1021 = call ptr @dva_arena_current()
  %a.create1022 = call ptr @dva_arena_alloc(ptr %arena.cur1021, i64 24)
  %arena.cur1023 = call ptr @dva_arena_current()
  %a.buf1024 = call ptr @dva_arena_alloc(ptr %arena.cur1023, i64 128)
  %a.len.gep1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1022, i32 0, i32 0
  store i64 0, ptr %a.len.gep1025, align 8
  %a.data.gep1026 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1022, i32 0, i32 1
  store ptr %a.buf1024, ptr %a.data.gep1026, align 8
  %a.cap.gep1027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1022, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1027, align 8
  store ptr %a.create1022, ptr %var.locals, align 8
  br label %a.after1020

a.after1020:                                      ; preds = %a.create1019, %choice.case1008
  %a.load21028 = load ptr, ptr %var.locals, align 8
  %call.res1029 = call i1 @"overloads::contains"(ptr %a.load21028, ptr @str.7.struct)
  %nottmp1030 = xor i1 %call.res1029, true
  store i1 %nottmp1030, ptr %var.is_top, align 1
  %var.load1031 = load i1, ptr %var.is_top, align 1
  br i1 %var.load1031, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %a.after1020
  %var.load1032 = load ptr, ptr %var.a, align 8
  %fld.gep1033 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1032, i32 0, i32 0
  %fld.load1034 = load ptr, ptr %fld.gep1033, align 8
  %eq.lhs.len1035 = getelementptr inbounds { i64, ptr }, ptr %fld.load1034, i32 0, i32 0
  %eq.lhs.len1036 = load i64, ptr %eq.lhs.len1035, align 8
  %eq.lhs.len1037 = and i64 %eq.lhs.len1036, 281474976710655
  %str.tag1038 = lshr i64 %eq.lhs.len1036, 48
  %str.immortal1039 = icmp eq i64 %str.tag1038, 0
  br i1 %str.immortal1039, label %str_ok1041, label %str_gen_check1040

and.82.else:                                      ; preds = %a.after1020
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %str.eq.merge1057
  %and.82.phi = phi i1 [ %str.neq1064, %str.eq.merge1057 ], [ %var.load1031, %and.82.else ]
  br i1 %and.82.phi, label %choice.then1065, label %choice.else1066

str_gen_check1040:                                ; preds = %and.82.then
  %arena.cur1043 = call ptr @dva_arena_current()
  %tag.valid1044 = call i1 @dva_arena_validate_tag(ptr %arena.cur1043, i64 %str.tag1038)
  br i1 %tag.valid1044, label %str_ok1041, label %str_stale1042

str_ok1041:                                       ; preds = %str_stale1042, %str_gen_check1040, %and.82.then
  %eq.rhs.len1045 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len1046 = and i64 %eq.rhs.len1045, 281474976710655
  %str.tag1047 = lshr i64 %eq.rhs.len1045, 48
  %str.immortal1048 = icmp eq i64 %str.tag1047, 0
  br i1 %str.immortal1048, label %str_ok1050, label %str_gen_check1049

str_stale1042:                                    ; preds = %str_gen_check1040
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1041

str_gen_check1049:                                ; preds = %str_ok1041
  %arena.cur1052 = call ptr @dva_arena_current()
  %tag.valid1053 = call i1 @dva_arena_validate_tag(ptr %arena.cur1052, i64 %str.tag1047)
  br i1 %tag.valid1053, label %str_ok1050, label %str_stale1051

str_ok1050:                                       ; preds = %str_stale1051, %str_gen_check1049, %str_ok1041
  %eq.len1054 = icmp eq i64 %eq.lhs.len1037, %eq.rhs.len1046
  br i1 %eq.len1054, label %str.eq.then1055, label %str.eq.else1056

str_stale1051:                                    ; preds = %str_gen_check1049
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1050

str.eq.then1055:                                  ; preds = %str_ok1050
  %eq.lhs.data1058 = getelementptr inbounds { i64, ptr }, ptr %fld.load1034, i32 0, i32 1
  %eq.lhs.data1059 = load ptr, ptr %eq.lhs.data1058, align 8
  %eq.rhs.data1060 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp1061 = call i32 @memcmp(ptr %eq.lhs.data1059, ptr %eq.rhs.data1060, i64 %eq.lhs.len1037)
  %eq.cmp.zero1062 = icmp eq i32 %eq.memcmp1061, 0
  br label %str.eq.merge1057

str.eq.else1056:                                  ; preds = %str_ok1050
  br label %str.eq.merge1057

str.eq.merge1057:                                 ; preds = %str.eq.else1056, %str.eq.then1055
  %str.eq.result1063 = phi i1 [ %eq.cmp.zero1062, %str.eq.then1055 ], [ false, %str.eq.else1056 ]
  %str.neq1064 = xor i1 %str.eq.result1063, true
  br label %and.82.exit

choice.then1065:                                  ; preds = %and.82.exit
  %var.load1068 = load ptr, ptr %var.a, align 8
  %fld.gep1069 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1068, i32 0, i32 0
  %fld.load1070 = load ptr, ptr %fld.gep1069, align 8
  %call.res1071 = call ptr @"overloads::decl_module"(ptr %fld.load1070, i64 0)
  br label %choice.exit1067

choice.else1066:                                  ; preds = %and.82.exit
  %var.load1072 = load ptr, ptr %var.cur_mod, align 8
  br label %choice.exit1067

choice.exit1067:                                  ; preds = %choice.else1066, %choice.then1065
  %choice.res1073 = phi ptr [ %call.res1071, %choice.then1065 ], [ %var.load1072, %choice.else1066 ]
  store ptr %choice.res1073, ptr %var.eff_mod, align 8
  %var.load1074 = load ptr, ptr %var.a, align 8
  %fld.gep1075 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1074, i32 0, i32 5
  %fld.load1076 = load ptr, ptr %fld.gep1075, align 8
  %tag.gep1080 = getelementptr inbounds { i64, ptr }, ptr %fld.load1076, i32 0, i32 0
  %tag.id1081 = load i64, ptr %tag.gep1080, align 8
  %tag.match1082 = icmp eq i64 %tag.id1081, 14
  br i1 %tag.match1082, label %choice.case1078, label %choice.next1079

choice.exit1077:                                  ; preds = %choice.exit1093, %choice.case1078
  %choice.res1108 = phi i64 [ %a.len.query1089, %choice.case1078 ], [ %choice.res1107, %choice.exit1093 ]
  store i64 %choice.res1108, ptr %var.arity, align 8
  %var.load1109 = load ptr, ptr %var.table, align 8
  %var.load1110 = load ptr, ptr %var.a, align 8
  %fld.gep1111 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1110, i32 0, i32 0
  %fld.load1112 = load ptr, ptr %fld.gep1111, align 8
  %call.res1113 = call i1 @"overloads::is_family"(ptr %var.load1109, ptr %fld.load1112)
  br i1 %call.res1113, label %and.83.then, label %and.83.else

choice.case1078:                                  ; preds = %choice.exit1067
  %pay.gep1083 = getelementptr inbounds { i64, ptr }, ptr %fld.load1076, i32 0, i32 1
  %payload.ptr1084 = load ptr, ptr %pay.gep1083, align 8
  store ptr %payload.ptr1084, ptr %var._1085, align 8
  store ptr %payload.ptr1084, ptr %var.fn, align 8
  %var.load1086 = load ptr, ptr %var.fn, align 8
  %fld.gep1087 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load1086, i32 0, i32 0
  %fld.load1088 = load ptr, ptr %fld.gep1087, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1088, i32 0, i32 0
  %a.len.query1089 = load i64, ptr %a.len.query, align 8
  br label %choice.exit1077

choice.next1079:                                  ; preds = %choice.exit1067
  %var.load1090 = load ptr, ptr %var.a, align 8
  %fld.gep1091 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1090, i32 0, i32 8
  %fld.load1092 = load ptr, ptr %fld.gep1091, align 8
  %tag.gep1096 = getelementptr inbounds { i64, ptr }, ptr %fld.load1092, i32 0, i32 0
  %tag.id1097 = load i64, ptr %tag.gep1096, align 8
  %tag.match1098 = icmp eq i64 %tag.id1097, 8
  br i1 %tag.match1098, label %choice.case1094, label %choice.next1095

choice.exit1093:                                  ; preds = %choice.next1095, %choice.case1094
  %choice.res1107 = phi i64 [ %a.len.query1106, %choice.case1094 ], [ -1, %choice.next1095 ]
  br label %choice.exit1077

choice.case1094:                                  ; preds = %choice.next1079
  %pay.gep1099 = getelementptr inbounds { i64, ptr }, ptr %fld.load1092, i32 0, i32 1
  %payload.ptr1100 = load ptr, ptr %pay.gep1099, align 8
  store ptr %payload.ptr1100, ptr %var._1101, align 8
  store ptr %payload.ptr1100, ptr %var.ft, align 8
  %var.load1102 = load ptr, ptr %var.ft, align 8
  %fld.gep1103 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load1102, i32 0, i32 0
  %fld.load1104 = load ptr, ptr %fld.gep1103, align 8
  %a.len.query1105 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1104, i32 0, i32 0
  %a.len.query1106 = load i64, ptr %a.len.query1105, align 8
  br label %choice.exit1093

choice.next1095:                                  ; preds = %choice.next1079
  br label %choice.exit1093

and.83.then:                                      ; preds = %choice.exit1077
  %var.load1114 = load i1, ptr %var.is_top, align 1
  br label %and.83.exit

and.83.else:                                      ; preds = %choice.exit1077
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %var.load1114, %and.83.then ], [ %call.res1113, %and.83.else ]
  store i1 %and.83.phi, ptr %var.family, align 1
  %var.load1115 = load i1, ptr %var.family, align 1
  br i1 %var.load1115, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load1116 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load1116, 0
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp, %and.84.then ], [ %var.load1115, %and.84.else ]
  br i1 %and.84.phi, label %choice.then1117, label %choice.else1118

choice.then1117:                                  ; preds = %and.84.exit
  %var.load1120 = load ptr, ptr %var.a, align 8
  %fld.gep1121 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1120, i32 0, i32 0
  %fld.load1122 = load ptr, ptr %fld.gep1121, align 8
  %var.load1123 = load i64, ptr %var.arity, align 8
  %call.res1124 = call ptr @"overloads::symbol"(ptr %fld.load1122, i64 %var.load1123)
  br label %choice.exit1119

choice.else1118:                                  ; preds = %and.84.exit
  %var.load1125 = load ptr, ptr %var.a, align 8
  %fld.gep1126 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1125, i32 0, i32 0
  %fld.load1127 = load ptr, ptr %fld.gep1126, align 8
  br label %choice.exit1119

choice.exit1119:                                  ; preds = %choice.else1118, %choice.then1117
  %choice.res1128 = phi ptr [ %call.res1124, %choice.then1117 ], [ %fld.load1127, %choice.else1118 ]
  store ptr %choice.res1128, ptr %var.new_name, align 8
  %var.load1129 = load ptr, ptr %var.a, align 8
  %fld.gep1130 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1129, i32 0, i32 8
  %fld.load1131 = load ptr, ptr %fld.gep1130, align 8
  %tag.gep1135 = getelementptr inbounds { i64, ptr }, ptr %fld.load1131, i32 0, i32 0
  %tag.id1136 = load i64, ptr %tag.gep1135, align 8
  %tag.match1137 = icmp eq i64 %tag.id1136, 8
  br i1 %tag.match1137, label %choice.case1133, label %choice.next1134

choice.exit1132:                                  ; preds = %choice.next1134, %choice.case1133
  %choice.res1149 = phi ptr [ %fld.load1143, %choice.case1133 ], [ %call.res1148, %choice.next1134 ]
  store ptr %choice.res1149, ptr %var.expected, align 8
  %var.load1150 = load ptr, ptr %var.a, align 8
  %fld.gep1151 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1150, i32 0, i32 5
  %fld.load1152 = load ptr, ptr %fld.gep1151, align 8
  %var.load1153 = load ptr, ptr %var.table, align 8
  %var.load1154 = load ptr, ptr %var.locals, align 8
  %a.load1155 = load ptr, ptr %var.locals, align 8
  %a.null1156 = icmp eq ptr %a.load1155, null
  br i1 %a.null1156, label %a.create1157, label %a.after1158

choice.case1133:                                  ; preds = %choice.exit1119
  %pay.gep1138 = getelementptr inbounds { i64, ptr }, ptr %fld.load1131, i32 0, i32 1
  %payload.ptr1139 = load ptr, ptr %pay.gep1138, align 8
  store ptr %payload.ptr1139, ptr %var._1140, align 8
  %var.load1141 = load ptr, ptr %var.a, align 8
  %fld.gep1142 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1141, i32 0, i32 8
  %fld.load1143 = load ptr, ptr %fld.gep1142, align 8
  br label %choice.exit1132

choice.next1134:                                  ; preds = %choice.exit1119
  %var.load1144 = load ptr, ptr %var.table, align 8
  %var.load1145 = load ptr, ptr %var.a, align 8
  %fld.gep1146 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1145, i32 0, i32 0
  %fld.load1147 = load ptr, ptr %fld.gep1146, align 8
  %call.res1148 = call ptr @"overloads::signature"(ptr %var.load1144, ptr %fld.load1147, i64 -1)
  br label %choice.exit1132

a.create1157:                                     ; preds = %choice.exit1132
  %arena.cur1159 = call ptr @dva_arena_current()
  %a.create1160 = call ptr @dva_arena_alloc(ptr %arena.cur1159, i64 24)
  %arena.cur1161 = call ptr @dva_arena_current()
  %a.buf1162 = call ptr @dva_arena_alloc(ptr %arena.cur1161, i64 128)
  %a.len.gep1163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 0
  store i64 0, ptr %a.len.gep1163, align 8
  %a.data.gep1164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 1
  store ptr %a.buf1162, ptr %a.data.gep1164, align 8
  %a.cap.gep1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1165, align 8
  store ptr %a.create1160, ptr %var.locals, align 8
  br label %a.after1158

a.after1158:                                      ; preds = %a.create1157, %choice.exit1132
  %a.load21166 = load ptr, ptr %var.locals, align 8
  %var.load1167 = load ptr, ptr %var.eff_mod, align 8
  %call.res1168 = call ptr @"overloads::walk"(ptr %fld.load1152, ptr %var.load1153, ptr %a.load21166, ptr %var.load1167)
  %var.load1169 = load ptr, ptr %var.expected, align 8
  %var.load1170 = load ptr, ptr %var.table, align 8
  %var.load1171 = load ptr, ptr %var.locals, align 8
  %a.load1172 = load ptr, ptr %var.locals, align 8
  %a.null1173 = icmp eq ptr %a.load1172, null
  br i1 %a.null1173, label %a.create1174, label %a.after1175

a.create1174:                                     ; preds = %a.after1158
  %arena.cur1176 = call ptr @dva_arena_current()
  %a.create1177 = call ptr @dva_arena_alloc(ptr %arena.cur1176, i64 24)
  %arena.cur1178 = call ptr @dva_arena_current()
  %a.buf1179 = call ptr @dva_arena_alloc(ptr %arena.cur1178, i64 128)
  %a.len.gep1180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1177, i32 0, i32 0
  store i64 0, ptr %a.len.gep1180, align 8
  %a.data.gep1181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1177, i32 0, i32 1
  store ptr %a.buf1179, ptr %a.data.gep1181, align 8
  %a.cap.gep1182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1177, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1182, align 8
  store ptr %a.create1177, ptr %var.locals, align 8
  br label %a.after1175

a.after1175:                                      ; preds = %a.create1174, %a.after1158
  %a.load21183 = load ptr, ptr %var.locals, align 8
  %var.load1184 = load ptr, ptr %var.eff_mod, align 8
  %call.res1185 = call ptr @"overloads::select_value"(ptr %call.res1168, ptr %var.load1169, ptr %var.load1170, ptr %a.load21183, ptr %var.load1184)
  store ptr %call.res1185, ptr %var.new_rhs, align 8
  %var.load1186 = load ptr, ptr %var.a, align 8
  %fld.gep1187 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1186, i32 0, i32 6
  %fld.load1188 = load ptr, ptr %fld.gep1187, align 8
  %var.load1189 = load ptr, ptr %var.table, align 8
  %var.load1190 = load ptr, ptr %var.locals, align 8
  %a.load1191 = load ptr, ptr %var.locals, align 8
  %a.null1192 = icmp eq ptr %a.load1191, null
  br i1 %a.null1192, label %a.create1193, label %a.after1194

a.create1193:                                     ; preds = %a.after1175
  %arena.cur1195 = call ptr @dva_arena_current()
  %a.create1196 = call ptr @dva_arena_alloc(ptr %arena.cur1195, i64 24)
  %arena.cur1197 = call ptr @dva_arena_current()
  %a.buf1198 = call ptr @dva_arena_alloc(ptr %arena.cur1197, i64 128)
  %a.len.gep1199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1196, i32 0, i32 0
  store i64 0, ptr %a.len.gep1199, align 8
  %a.data.gep1200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1196, i32 0, i32 1
  store ptr %a.buf1198, ptr %a.data.gep1200, align 8
  %a.cap.gep1201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1196, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1201, align 8
  store ptr %a.create1196, ptr %var.locals, align 8
  br label %a.after1194

a.after1194:                                      ; preds = %a.create1193, %a.after1175
  %a.load21202 = load ptr, ptr %var.locals, align 8
  %var.load1203 = load ptr, ptr %var.eff_mod, align 8
  %call.res1204 = call ptr @"overloads::walk"(ptr %fld.load1188, ptr %var.load1189, ptr %a.load21202, ptr %var.load1203)
  store ptr %call.res1204, ptr %var.new_lhs, align 8
  %arena.cur1205 = call ptr @dva_arena_current()
  %enum.alloc1206 = call ptr @dva_arena_alloc(ptr %arena.cur1205, i64 16)
  %tag.gep1207 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1206, i32 0, i32 0
  store i64 6, ptr %tag.gep1207, align 8
  %pay.gep1208 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1206, i32 0, i32 1
  %var.load1209 = load ptr, ptr %var.new_name, align 8
  %var.load1210 = load ptr, ptr %var.a, align 8
  %fld.gep1211 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1210, i32 0, i32 1
  %fld.load1212 = load i1, ptr %fld.gep1211, align 1
  %var.load1213 = load ptr, ptr %var.a, align 8
  %fld.gep1214 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1213, i32 0, i32 2
  %fld.load1215 = load i1, ptr %fld.gep1214, align 1
  %var.load1216 = load ptr, ptr %var.a, align 8
  %fld.gep1217 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1216, i32 0, i32 3
  %fld.load1218 = load i1, ptr %fld.gep1217, align 1
  %var.load1219 = load ptr, ptr %var.a, align 8
  %fld.gep1220 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1219, i32 0, i32 4
  %fld.load1221 = load i1, ptr %fld.gep1220, align 1
  %var.load1222 = load ptr, ptr %var.new_rhs, align 8
  %var.load1223 = load ptr, ptr %var.new_lhs, align 8
  %var.load1224 = load ptr, ptr %var.a, align 8
  %fld.gep1225 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1224, i32 0, i32 7
  %fld.load1226 = load ptr, ptr %fld.gep1225, align 8
  %var.load1227 = load ptr, ptr %var.a, align 8
  %fld.gep1228 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1227, i32 0, i32 8
  %fld.load1229 = load ptr, ptr %fld.gep1228, align 8
  %arena.cur1230 = call ptr @dva_arena_current()
  %rec.alloc1231 = call ptr @dva_arena_alloc(ptr %arena.cur1230, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1232 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 0
  store ptr %var.load1209, ptr %rec.fld1232, align 8
  %rec.fld1233 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 1
  store i1 %fld.load1212, ptr %rec.fld1233, align 1
  %rec.fld1234 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 2
  store i1 %fld.load1215, ptr %rec.fld1234, align 1
  %rec.fld1235 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 3
  store i1 %fld.load1218, ptr %rec.fld1235, align 1
  %rec.fld1236 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 4
  store i1 %fld.load1221, ptr %rec.fld1236, align 1
  %rec.fld1237 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 5
  store ptr %var.load1222, ptr %rec.fld1237, align 8
  %rec.fld1238 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 6
  store ptr %var.load1223, ptr %rec.fld1238, align 8
  %rec.fld1239 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 7
  store ptr %fld.load1226, ptr %rec.fld1239, align 8
  %rec.fld1240 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1231, i32 0, i32 8
  store ptr %fld.load1229, ptr %rec.fld1240, align 8
  store ptr %rec.alloc1231, ptr %pay.gep1208, align 8
  br label %choice.exit

choice.case1241:                                  ; preds = %choice.next1009
  %pay.gep1246 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1247 = load ptr, ptr %pay.gep1246, align 8
  store ptr %payload.ptr1247, ptr %var._1248, align 8
  store ptr %payload.ptr1247, ptr %var.td, align 8
  %var.load1249 = load ptr, ptr %var.td, align 8
  %fld.gep1250 = getelementptr inbounds { ptr, ptr }, ptr %var.load1249, i32 0, i32 1
  %fld.load1251 = load ptr, ptr %fld.gep1250, align 8
  %var.load1252 = load ptr, ptr %var.table, align 8
  %call.res1253 = call ptr @"overloads::keep_type"(ptr %fld.load1251, ptr %var.load1252)
  store ptr %call.res1253, ptr %var.new_ti, align 8
  %arena.cur1254 = call ptr @dva_arena_current()
  %enum.alloc1255 = call ptr @dva_arena_alloc(ptr %arena.cur1254, i64 16)
  %tag.gep1256 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1255, i32 0, i32 0
  store i64 23, ptr %tag.gep1256, align 8
  %pay.gep1257 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1255, i32 0, i32 1
  %var.load1258 = load ptr, ptr %var.td, align 8
  %fld.gep1259 = getelementptr inbounds { ptr, ptr }, ptr %var.load1258, i32 0, i32 0
  %fld.load1260 = load ptr, ptr %fld.gep1259, align 8
  %var.load1261 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1262 = call ptr @dva_arena_current()
  %rec.alloc1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1264 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1263, i32 0, i32 0
  store ptr %fld.load1260, ptr %rec.fld1264, align 8
  %rec.fld1265 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1263, i32 0, i32 1
  store ptr %var.load1261, ptr %rec.fld1265, align 8
  store ptr %rec.alloc1263, ptr %pay.gep1257, align 8
  br label %choice.exit

choice.next1242:                                  ; preds = %choice.next1009
  %tag.gep1268 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1269 = load i64, ptr %tag.gep1268, align 8
  %tag.match1270 = icmp eq i64 %tag.id1269, 21
  br i1 %tag.match1270, label %choice.case1266, label %choice.next1267

choice.case1266:                                  ; preds = %choice.next1242
  %pay.gep1271 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1272 = load ptr, ptr %pay.gep1271, align 8
  store ptr %payload.ptr1272, ptr %var._1273, align 8
  store ptr %payload.ptr1272, ptr %var.f, align 8
  %var.load1274 = load ptr, ptr %var.f, align 8
  %fld.gep1275 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1274, i32 0, i32 3
  %fld.load1276 = load ptr, ptr %fld.gep1275, align 8
  %var.load1277 = load ptr, ptr %var.table, align 8
  %call.res1278 = call ptr @"overloads::keep_fparams"(ptr %fld.load1276, ptr %var.load1277)
  store ptr %call.res1278, ptr %var.new_params, align 8
  %var.load1279 = load ptr, ptr %var.f, align 8
  %fld.gep1280 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1279, i32 0, i32 5
  %fld.load1281 = load ptr, ptr %fld.gep1280, align 8
  %var.load1282 = load ptr, ptr %var.table, align 8
  %call.res1283 = call ptr @"overloads::keep_type"(ptr %fld.load1281, ptr %var.load1282)
  store ptr %call.res1283, ptr %var.new_ret_ti, align 8
  %arena.cur1284 = call ptr @dva_arena_current()
  %enum.alloc1285 = call ptr @dva_arena_alloc(ptr %arena.cur1284, i64 16)
  %tag.gep1286 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1285, i32 0, i32 0
  store i64 21, ptr %tag.gep1286, align 8
  %pay.gep1287 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1285, i32 0, i32 1
  %var.load1288 = load ptr, ptr %var.f, align 8
  %fld.gep1289 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1288, i32 0, i32 0
  %fld.load1290 = load ptr, ptr %fld.gep1289, align 8
  %var.load1291 = load ptr, ptr %var.f, align 8
  %fld.gep1292 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1291, i32 0, i32 1
  %fld.load1293 = load ptr, ptr %fld.gep1292, align 8
  %var.load1294 = load ptr, ptr %var.f, align 8
  %fld.gep1295 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1294, i32 0, i32 2
  %fld.load1296 = load ptr, ptr %fld.gep1295, align 8
  %var.load1297 = load ptr, ptr %var.new_params, align 8
  %a.load1298 = load ptr, ptr %var.new_params, align 8
  %a.null1299 = icmp eq ptr %a.load1298, null
  br i1 %a.null1299, label %a.create1300, label %a.after1301

choice.next1267:                                  ; preds = %choice.next1242
  %tag.gep1328 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1329 = load i64, ptr %tag.gep1328, align 8
  %tag.match1330 = icmp eq i64 %tag.id1329, 16
  br i1 %tag.match1330, label %choice.case1326, label %choice.next1327

a.create1300:                                     ; preds = %choice.case1266
  %arena.cur1302 = call ptr @dva_arena_current()
  %a.create1303 = call ptr @dva_arena_alloc(ptr %arena.cur1302, i64 24)
  %arena.cur1304 = call ptr @dva_arena_current()
  %a.buf1305 = call ptr @dva_arena_alloc(ptr %arena.cur1304, i64 128)
  %a.len.gep1306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 0
  store i64 0, ptr %a.len.gep1306, align 8
  %a.data.gep1307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 1
  store ptr %a.buf1305, ptr %a.data.gep1307, align 8
  %a.cap.gep1308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1308, align 8
  store ptr %a.create1303, ptr %var.new_params, align 8
  br label %a.after1301

a.after1301:                                      ; preds = %a.create1300, %choice.case1266
  %a.load21309 = load ptr, ptr %var.new_params, align 8
  %var.load1310 = load ptr, ptr %var.f, align 8
  %fld.gep1311 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1310, i32 0, i32 4
  %fld.load1312 = load ptr, ptr %fld.gep1311, align 8
  %var.load1313 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1314 = load ptr, ptr %var.f, align 8
  %fld.gep1315 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1314, i32 0, i32 6
  %fld.load1316 = load i1, ptr %fld.gep1315, align 1
  %arena.cur1317 = call ptr @dva_arena_current()
  %rec.alloc1318 = call ptr @dva_arena_alloc(ptr %arena.cur1317, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1319 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 0
  store ptr %fld.load1290, ptr %rec.fld1319, align 8
  %rec.fld1320 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 1
  store ptr %fld.load1293, ptr %rec.fld1320, align 8
  %rec.fld1321 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 2
  store ptr %fld.load1296, ptr %rec.fld1321, align 8
  %rec.fld1322 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 3
  store ptr %a.load21309, ptr %rec.fld1322, align 8
  %rec.fld1323 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 4
  store ptr %fld.load1312, ptr %rec.fld1323, align 8
  %rec.fld1324 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 5
  store ptr %var.load1313, ptr %rec.fld1324, align 8
  %rec.fld1325 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1318, i32 0, i32 6
  store i1 %fld.load1316, ptr %rec.fld1325, align 1
  store ptr %rec.alloc1318, ptr %pay.gep1287, align 8
  br label %choice.exit

choice.case1326:                                  ; preds = %choice.next1267
  %pay.gep1331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1332 = load ptr, ptr %pay.gep1331, align 8
  store ptr %payload.ptr1332, ptr %var._1333, align 8
  store ptr %payload.ptr1332, ptr %var.m, align 8
  %var.load1334 = load ptr, ptr %var.m, align 8
  %fld.gep1335 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1334, i32 0, i32 2
  %fld.load1336 = load i1, ptr %fld.gep1335, align 1
  br i1 %fld.load1336, label %choice.then1337, label %choice.else1338

choice.next1327:                                  ; preds = %choice.next1267
  %tag.gep1408 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1409 = load i64, ptr %tag.gep1408, align 8
  %tag.match1410 = icmp eq i64 %tag.id1409, 15
  br i1 %tag.match1410, label %choice.case1406, label %choice.next1407

choice.then1337:                                  ; preds = %choice.case1326
  %arena.cur1340 = call ptr @dva_arena_current()
  %enum.alloc1341 = call ptr @dva_arena_alloc(ptr %arena.cur1340, i64 16)
  %tag.gep1342 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1341, i32 0, i32 0
  store i64 3, ptr %tag.gep1342, align 8
  %pay.gep1343 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1341, i32 0, i32 1
  %var.load1344 = load ptr, ptr %var.e, align 8
  %call.res1345 = call ptr @"overloads::name_of"(ptr %var.load1344)
  store ptr %call.res1345, ptr %pay.gep1343, align 8
  br label %choice.exit1339

choice.else1338:                                  ; preds = %choice.case1326
  %arena.cur1346 = call ptr @dva_arena_current()
  %enum.alloc1347 = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 16)
  %tag.gep1348 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1347, i32 0, i32 0
  store i64 16, ptr %tag.gep1348, align 8
  %pay.gep1349 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1347, i32 0, i32 1
  %var.load1350 = load ptr, ptr %var.m, align 8
  %fld.gep1351 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1350, i32 0, i32 0
  %fld.load1352 = load ptr, ptr %fld.gep1351, align 8
  %var.load1353 = load ptr, ptr %var.table, align 8
  %var.load1354 = load ptr, ptr %var.locals, align 8
  %a.load1355 = load ptr, ptr %var.locals, align 8
  %a.null1356 = icmp eq ptr %a.load1355, null
  br i1 %a.null1356, label %a.create1357, label %a.after1358

choice.exit1339:                                  ; preds = %a.after1380, %choice.then1337
  %choice.res1405 = phi ptr [ %enum.alloc1341, %choice.then1337 ], [ %enum.alloc1347, %a.after1380 ]
  br label %choice.exit

a.create1357:                                     ; preds = %choice.else1338
  %arena.cur1359 = call ptr @dva_arena_current()
  %a.create1360 = call ptr @dva_arena_alloc(ptr %arena.cur1359, i64 24)
  %arena.cur1361 = call ptr @dva_arena_current()
  %a.buf1362 = call ptr @dva_arena_alloc(ptr %arena.cur1361, i64 128)
  %a.len.gep1363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 0
  store i64 0, ptr %a.len.gep1363, align 8
  %a.data.gep1364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 1
  store ptr %a.buf1362, ptr %a.data.gep1364, align 8
  %a.cap.gep1365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1365, align 8
  store ptr %a.create1360, ptr %var.locals, align 8
  br label %a.after1358

a.after1358:                                      ; preds = %a.create1357, %choice.else1338
  %a.load21366 = load ptr, ptr %var.locals, align 8
  %var.load1367 = load ptr, ptr %var.cur_mod, align 8
  %call.res1368 = call ptr @"overloads::walk"(ptr %fld.load1352, ptr %var.load1353, ptr %a.load21366, ptr %var.load1367)
  %var.load1369 = load ptr, ptr %var.m, align 8
  %fld.gep1370 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1369, i32 0, i32 1
  %fld.load1371 = load ptr, ptr %fld.gep1370, align 8
  %var.load1372 = load ptr, ptr %var.m, align 8
  %fld.gep1373 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1372, i32 0, i32 3
  %fld.load1374 = load ptr, ptr %fld.gep1373, align 8
  %var.load1375 = load ptr, ptr %var.table, align 8
  %var.load1376 = load ptr, ptr %var.locals, align 8
  %a.load1377 = load ptr, ptr %var.locals, align 8
  %a.null1378 = icmp eq ptr %a.load1377, null
  br i1 %a.null1378, label %a.create1379, label %a.after1380

a.create1379:                                     ; preds = %a.after1358
  %arena.cur1381 = call ptr @dva_arena_current()
  %a.create1382 = call ptr @dva_arena_alloc(ptr %arena.cur1381, i64 24)
  %arena.cur1383 = call ptr @dva_arena_current()
  %a.buf1384 = call ptr @dva_arena_alloc(ptr %arena.cur1383, i64 128)
  %a.len.gep1385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1382, i32 0, i32 0
  store i64 0, ptr %a.len.gep1385, align 8
  %a.data.gep1386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1382, i32 0, i32 1
  store ptr %a.buf1384, ptr %a.data.gep1386, align 8
  %a.cap.gep1387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1382, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1387, align 8
  store ptr %a.create1382, ptr %var.locals, align 8
  br label %a.after1380

a.after1380:                                      ; preds = %a.create1379, %a.after1358
  %a.load21388 = load ptr, ptr %var.locals, align 8
  %var.load1389 = load ptr, ptr %var.cur_mod, align 8
  %call.res1390 = call ptr @"overloads::walk"(ptr %fld.load1374, ptr %var.load1375, ptr %a.load21388, ptr %var.load1389)
  %var.load1391 = load ptr, ptr %var.m, align 8
  %fld.gep1392 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1391, i32 0, i32 4
  %fld.load1393 = load i64, ptr %fld.gep1392, align 8
  %var.load1394 = load ptr, ptr %var.m, align 8
  %fld.gep1395 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1394, i32 0, i32 5
  %fld.load1396 = load i64, ptr %fld.gep1395, align 8
  %arena.cur1397 = call ptr @dva_arena_current()
  %rec.alloc1398 = call ptr @dva_arena_alloc(ptr %arena.cur1397, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1399 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 0
  store ptr %call.res1368, ptr %rec.fld1399, align 8
  %rec.fld1400 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 1
  store ptr %fld.load1371, ptr %rec.fld1400, align 8
  %rec.fld1401 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 2
  store i1 false, ptr %rec.fld1401, align 1
  %rec.fld1402 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 3
  store ptr %call.res1390, ptr %rec.fld1402, align 8
  %rec.fld1403 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 4
  store i64 %fld.load1393, ptr %rec.fld1403, align 8
  %rec.fld1404 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1398, i32 0, i32 5
  store i64 %fld.load1396, ptr %rec.fld1404, align 8
  store ptr %rec.alloc1398, ptr %pay.gep1349, align 8
  br label %choice.exit1339

choice.case1406:                                  ; preds = %choice.next1327
  %pay.gep1411 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1412 = load ptr, ptr %pay.gep1411, align 8
  store ptr %payload.ptr1412, ptr %var._1413, align 8
  store ptr %payload.ptr1412, ptr %var.re, align 8
  %arena.cur1414 = call ptr @dva_arena_current()
  %a.new1415 = call ptr @dva_arena_alloc(ptr %arena.cur1414, i64 24)
  %arena.cur1416 = call ptr @dva_arena_current()
  %a.buf1417 = call ptr @dva_arena_alloc(ptr %arena.cur1416, i64 128)
  %a.len.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1415, i32 0, i32 0
  store i64 0, ptr %a.len.gep1418, align 8
  %a.data.gep1419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1415, i32 0, i32 1
  store ptr %a.buf1417, ptr %a.data.gep1419, align 8
  %a.cap.gep1420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1415, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1420, align 8
  store ptr %a.new1415, ptr %var.new_fields, align 8
  %var.load1421 = load ptr, ptr %var.re, align 8
  %fld.gep1422 = getelementptr inbounds { ptr, i1 }, ptr %var.load1421, i32 0, i32 0
  %fld.load1423 = load ptr, ptr %fld.gep1422, align 8
  %arr.cycle.len1424 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1423, i32 0, i32 0
  %arr.cycle.len1425 = load i64, ptr %arr.cycle.len1424, align 8
  %arr.cycle.data1426 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1423, i32 0, i32 1
  %arr.cycle.data1427 = load ptr, ptr %arr.cycle.data1426, align 8
  store i64 0, ptr %loop.idx.85, align 8
  %cycle.prev.u1428 = load ptr, ptr %var._1413, align 8
  br label %loop.header.85

choice.next1407:                                  ; preds = %choice.next1327
  %tag.gep1524 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1525 = load i64, ptr %tag.gep1524, align 8
  %tag.match1526 = icmp eq i64 %tag.id1525, 17
  br i1 %tag.match1526, label %choice.case1522, label %choice.next1523

loop.header.85:                                   ; preds = %loop.latch.85, %choice.case1406
  %counter.load1429 = load i64, ptr %loop.idx.85, align 8
  %loop.cond1430 = icmp slt i64 %counter.load1429, %arr.cycle.len1425
  br i1 %loop.cond1430, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i1431 = sub i64 %counter.load1429, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep1432 = getelementptr i64, ptr %arr.cycle.data1427, i64 %counter.load1429
  %arr.elem.raw1433 = load i64, ptr %arr.elem.gep1432, align 8
  %slot.i2p1434 = inttoptr i64 %arr.elem.raw1433 to ptr
  store i64 %loop.rel.i1431, ptr %var._i1435, align 8
  store ptr %slot.i2p1434, ptr %var._1436, align 8
  store ptr %slot.i2p1434, ptr %var.fld, align 8
  %var.load1437 = load ptr, ptr %var.fld, align 8
  %fld.gep1438 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1437, i32 0, i32 2
  %fld.load1439 = load ptr, ptr %fld.gep1438, align 8
  %var.load1440 = load ptr, ptr %var.table, align 8
  %var.load1441 = load ptr, ptr %var.locals, align 8
  %a.load1442 = load ptr, ptr %var.locals, align 8
  %a.null1443 = icmp eq ptr %a.load1442, null
  br i1 %a.null1443, label %a.create1444, label %a.after1445

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store1482
  %step.val1496 = load i64, ptr %loop.step.85, align 8
  %loop.next1497 = add i64 %counter.load1429, %step.val1496
  store i64 %loop.next1497, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  store ptr %cycle.prev.u1428, ptr %var._1413, align 8
  %arena.cur1498 = call ptr @dva_arena_current()
  %enum.alloc1499 = call ptr @dva_arena_alloc(ptr %arena.cur1498, i64 16)
  %tag.gep1500 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1499, i32 0, i32 0
  store i64 15, ptr %tag.gep1500, align 8
  %pay.gep1501 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1499, i32 0, i32 1
  %var.load1502 = load ptr, ptr %var.new_fields, align 8
  %a.load1503 = load ptr, ptr %var.new_fields, align 8
  %a.null1504 = icmp eq ptr %a.load1503, null
  br i1 %a.null1504, label %a.create1505, label %a.after1506

a.create1444:                                     ; preds = %loop.body.85
  %arena.cur1446 = call ptr @dva_arena_current()
  %a.create1447 = call ptr @dva_arena_alloc(ptr %arena.cur1446, i64 24)
  %arena.cur1448 = call ptr @dva_arena_current()
  %a.buf1449 = call ptr @dva_arena_alloc(ptr %arena.cur1448, i64 128)
  %a.len.gep1450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 0
  store i64 0, ptr %a.len.gep1450, align 8
  %a.data.gep1451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 1
  store ptr %a.buf1449, ptr %a.data.gep1451, align 8
  %a.cap.gep1452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1447, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1452, align 8
  store ptr %a.create1447, ptr %var.locals, align 8
  br label %a.after1445

a.after1445:                                      ; preds = %a.create1444, %loop.body.85
  %a.load21453 = load ptr, ptr %var.locals, align 8
  %var.load1454 = load ptr, ptr %var.cur_mod, align 8
  %call.res1455 = call ptr @"overloads::walk"(ptr %fld.load1439, ptr %var.load1440, ptr %a.load21453, ptr %var.load1454)
  store ptr %call.res1455, ptr %var.new_val, align 8
  %var.load1456 = load ptr, ptr %var.fld, align 8
  %fld.gep1457 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1456, i32 0, i32 0
  %fld.load1458 = load i1, ptr %fld.gep1457, align 1
  %var.load1459 = load ptr, ptr %var.fld, align 8
  %fld.gep1460 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1459, i32 0, i32 1
  %fld.load1461 = load ptr, ptr %fld.gep1460, align 8
  %var.load1462 = load ptr, ptr %var.new_val, align 8
  %arena.cur1463 = call ptr @dva_arena_current()
  %rec.alloc1464 = call ptr @dva_arena_alloc(ptr %arena.cur1463, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1465 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1464, i32 0, i32 0
  store i1 %fld.load1458, ptr %rec.fld1465, align 1
  %rec.fld1466 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1464, i32 0, i32 1
  store ptr %fld.load1461, ptr %rec.fld1466, align 8
  %rec.fld1467 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1464, i32 0, i32 2
  store ptr %var.load1462, ptr %rec.fld1467, align 8
  %a.load1468 = load ptr, ptr %var.new_fields, align 8
  %a.null1469 = icmp eq ptr %a.load1468, null
  br i1 %a.null1469, label %a.create1470, label %a.after1471

a.create1470:                                     ; preds = %a.after1445
  %arena.cur1472 = call ptr @dva_arena_current()
  %a.create1473 = call ptr @dva_arena_alloc(ptr %arena.cur1472, i64 24)
  %arena.cur1474 = call ptr @dva_arena_current()
  %a.buf1475 = call ptr @dva_arena_alloc(ptr %arena.cur1474, i64 128)
  %a.len.gep1476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 0
  store i64 0, ptr %a.len.gep1476, align 8
  %a.data.gep1477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 1
  store ptr %a.buf1475, ptr %a.data.gep1477, align 8
  %a.cap.gep1478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1473, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1478, align 8
  store ptr %a.create1473, ptr %var.new_fields, align 8
  br label %a.after1471

a.after1471:                                      ; preds = %a.create1470, %a.after1445
  %a.load21479 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1480

a.check1480:                                      ; preds = %a.after1471
  %a.len1483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21479, i32 0, i32 0
  %a.len1484 = load i64, ptr %a.len1483, align 8
  %a.cap1485 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21479, i32 0, i32 2
  %a.cap1486 = load i64, ptr %a.cap1485, align 8
  %a.needs.grow1487 = icmp eq i64 %a.len1484, %a.cap1486
  br i1 %a.needs.grow1487, label %a.grow1481, label %a.store1482

a.grow1481:                                       ; preds = %a.check1480
  call void @dva_array_grow(ptr %a.load21479)
  br label %a.store1482

a.store1482:                                      ; preds = %a.grow1481, %a.check1480
  %a.cur.data1488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21479, i32 0, i32 1
  %a.cur.data1489 = load ptr, ptr %a.cur.data1488, align 8
  %a.cur.len1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21479, i32 0, i32 0
  %a.cur.len1491 = load i64, ptr %a.cur.len1490, align 8
  %a.elem.gep1492 = getelementptr i64, ptr %a.cur.data1489, i64 %a.cur.len1491
  %slot.p2i1493 = ptrtoint ptr %rec.alloc1464 to i64
  store i64 %slot.p2i1493, ptr %a.elem.gep1492, align 8
  %a.next.len1494 = add i64 %a.cur.len1491, 1
  %b.len.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21479, i32 0, i32 0
  store i64 %a.next.len1494, ptr %b.len.gep1495, align 8
  br label %loop.latch.85

a.create1505:                                     ; preds = %loop.exit.85
  %arena.cur1507 = call ptr @dva_arena_current()
  %a.create1508 = call ptr @dva_arena_alloc(ptr %arena.cur1507, i64 24)
  %arena.cur1509 = call ptr @dva_arena_current()
  %a.buf1510 = call ptr @dva_arena_alloc(ptr %arena.cur1509, i64 128)
  %a.len.gep1511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1508, i32 0, i32 0
  store i64 0, ptr %a.len.gep1511, align 8
  %a.data.gep1512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1508, i32 0, i32 1
  store ptr %a.buf1510, ptr %a.data.gep1512, align 8
  %a.cap.gep1513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1508, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1513, align 8
  store ptr %a.create1508, ptr %var.new_fields, align 8
  br label %a.after1506

a.after1506:                                      ; preds = %a.create1505, %loop.exit.85
  %a.load21514 = load ptr, ptr %var.new_fields, align 8
  %var.load1515 = load ptr, ptr %var.re, align 8
  %fld.gep1516 = getelementptr inbounds { ptr, i1 }, ptr %var.load1515, i32 0, i32 1
  %fld.load1517 = load i1, ptr %fld.gep1516, align 1
  %arena.cur1518 = call ptr @dva_arena_current()
  %rec.alloc1519 = call ptr @dva_arena_alloc(ptr %arena.cur1518, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1520 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1519, i32 0, i32 0
  store ptr %a.load21514, ptr %rec.fld1520, align 8
  %rec.fld1521 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1519, i32 0, i32 1
  store i1 %fld.load1517, ptr %rec.fld1521, align 1
  store ptr %rec.alloc1519, ptr %pay.gep1501, align 8
  br label %choice.exit

choice.case1522:                                  ; preds = %choice.next1407
  %pay.gep1527 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1528 = load ptr, ptr %pay.gep1527, align 8
  store ptr %payload.ptr1528, ptr %var._1529, align 8
  store ptr %payload.ptr1528, ptr %var.ka, align 8
  %var.load1530 = load ptr, ptr %var.ka, align 8
  %fld.gep1531 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1530, i32 0, i32 0
  %fld.load1532 = load ptr, ptr %fld.gep1531, align 8
  %var.load1533 = load ptr, ptr %var.table, align 8
  %var.load1534 = load ptr, ptr %var.locals, align 8
  %a.load1535 = load ptr, ptr %var.locals, align 8
  %a.null1536 = icmp eq ptr %a.load1535, null
  br i1 %a.null1536, label %a.create1537, label %a.after1538

choice.next1523:                                  ; preds = %choice.next1407
  %tag.gep1596 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1597 = load i64, ptr %tag.gep1596, align 8
  %tag.match1598 = icmp eq i64 %tag.id1597, 12
  br i1 %tag.match1598, label %choice.case1594, label %choice.next1595

a.create1537:                                     ; preds = %choice.case1522
  %arena.cur1539 = call ptr @dva_arena_current()
  %a.create1540 = call ptr @dva_arena_alloc(ptr %arena.cur1539, i64 24)
  %arena.cur1541 = call ptr @dva_arena_current()
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
  store ptr %call.res1548, ptr %var.new_target, align 8
  %var.load1549 = load ptr, ptr %var.ka, align 8
  %fld.gep1550 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1549, i32 0, i32 1
  %fld.load1551 = load ptr, ptr %fld.gep1550, align 8
  %var.load1552 = load ptr, ptr %var.table, align 8
  %var.load1553 = load ptr, ptr %var.locals, align 8
  %a.load1554 = load ptr, ptr %var.locals, align 8
  %a.null1555 = icmp eq ptr %a.load1554, null
  br i1 %a.null1555, label %a.create1556, label %a.after1557

a.create1556:                                     ; preds = %a.after1538
  %arena.cur1558 = call ptr @dva_arena_current()
  %a.create1559 = call ptr @dva_arena_alloc(ptr %arena.cur1558, i64 24)
  %arena.cur1560 = call ptr @dva_arena_current()
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
  store ptr %call.res1567, ptr %var.new_key, align 8
  %arena.cur1568 = call ptr @dva_arena_current()
  %enum.alloc1569 = call ptr @dva_arena_alloc(ptr %arena.cur1568, i64 16)
  %tag.gep1570 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1569, i32 0, i32 0
  store i64 17, ptr %tag.gep1570, align 8
  %pay.gep1571 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1569, i32 0, i32 1
  %var.load1572 = load ptr, ptr %var.new_target, align 8
  %var.load1573 = load ptr, ptr %var.new_key, align 8
  %var.load1574 = load ptr, ptr %var.ka, align 8
  %fld.gep1575 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1574, i32 0, i32 2
  %fld.load1576 = load i1, ptr %fld.gep1575, align 1
  %var.load1577 = load ptr, ptr %var.ka, align 8
  %fld.gep1578 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1577, i32 0, i32 3
  %fld.load1579 = load i1, ptr %fld.gep1578, align 1
  %var.load1580 = load ptr, ptr %var.ka, align 8
  %fld.gep1581 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1580, i32 0, i32 4
  %fld.load1582 = load i64, ptr %fld.gep1581, align 8
  %var.load1583 = load ptr, ptr %var.ka, align 8
  %fld.gep1584 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1583, i32 0, i32 5
  %fld.load1585 = load i64, ptr %fld.gep1584, align 8
  %arena.cur1586 = call ptr @dva_arena_current()
  %rec.alloc1587 = call ptr @dva_arena_alloc(ptr %arena.cur1586, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1588 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 0
  store ptr %var.load1572, ptr %rec.fld1588, align 8
  %rec.fld1589 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 1
  store ptr %var.load1573, ptr %rec.fld1589, align 8
  %rec.fld1590 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 2
  store i1 %fld.load1576, ptr %rec.fld1590, align 1
  %rec.fld1591 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 3
  store i1 %fld.load1579, ptr %rec.fld1591, align 1
  %rec.fld1592 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 4
  store i64 %fld.load1582, ptr %rec.fld1592, align 8
  %rec.fld1593 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1587, i32 0, i32 5
  store i64 %fld.load1585, ptr %rec.fld1593, align 8
  store ptr %rec.alloc1587, ptr %pay.gep1571, align 8
  br label %choice.exit

choice.case1594:                                  ; preds = %choice.next1523
  %pay.gep1599 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1600 = load ptr, ptr %pay.gep1599, align 8
  store ptr %payload.ptr1600, ptr %var._1601, align 8
  store ptr %payload.ptr1600, ptr %var.cy, align 8
  %var.load1602 = load ptr, ptr %var.cy, align 8
  %fld.gep1603 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1602, i32 0, i32 0
  %fld.load1604 = load ptr, ptr %fld.gep1603, align 8
  %var.load1605 = load ptr, ptr %var.table, align 8
  %var.load1606 = load ptr, ptr %var.locals, align 8
  %a.load1607 = load ptr, ptr %var.locals, align 8
  %a.null1608 = icmp eq ptr %a.load1607, null
  br i1 %a.null1608, label %a.create1609, label %a.after1610

choice.next1595:                                  ; preds = %choice.next1523
  %tag.gep1660 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1661 = load i64, ptr %tag.gep1660, align 8
  %tag.match1662 = icmp eq i64 %tag.id1661, 11
  br i1 %tag.match1662, label %choice.case1658, label %choice.next1659

a.create1609:                                     ; preds = %choice.case1594
  %arena.cur1611 = call ptr @dva_arena_current()
  %a.create1612 = call ptr @dva_arena_alloc(ptr %arena.cur1611, i64 24)
  %arena.cur1613 = call ptr @dva_arena_current()
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
  store ptr %call.res1620, ptr %var.new_iter, align 8
  %var.load1621 = load ptr, ptr %var.cy, align 8
  %fld.gep1622 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1621, i32 0, i32 1
  %fld.load1623 = load ptr, ptr %fld.gep1622, align 8
  %var.load1624 = load ptr, ptr %var.table, align 8
  %var.load1625 = load ptr, ptr %var.locals, align 8
  %a.load1626 = load ptr, ptr %var.locals, align 8
  %a.null1627 = icmp eq ptr %a.load1626, null
  br i1 %a.null1627, label %a.create1628, label %a.after1629

a.create1628:                                     ; preds = %a.after1610
  %arena.cur1630 = call ptr @dva_arena_current()
  %a.create1631 = call ptr @dva_arena_alloc(ptr %arena.cur1630, i64 24)
  %arena.cur1632 = call ptr @dva_arena_current()
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
  store ptr %call.res1639, ptr %var.new_fn, align 8
  %arena.cur1640 = call ptr @dva_arena_current()
  %enum.alloc1641 = call ptr @dva_arena_alloc(ptr %arena.cur1640, i64 16)
  %tag.gep1642 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1641, i32 0, i32 0
  store i64 12, ptr %tag.gep1642, align 8
  %pay.gep1643 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1641, i32 0, i32 1
  %var.load1644 = load ptr, ptr %var.new_iter, align 8
  %var.load1645 = load ptr, ptr %var.new_fn, align 8
  %var.load1646 = load ptr, ptr %var.cy, align 8
  %fld.gep1647 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1646, i32 0, i32 2
  %fld.load1648 = load i1, ptr %fld.gep1647, align 1
  %var.load1649 = load ptr, ptr %var.cy, align 8
  %fld.gep1650 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1649, i32 0, i32 3
  %fld.load1651 = load i1, ptr %fld.gep1650, align 1
  %arena.cur1652 = call ptr @dva_arena_current()
  %rec.alloc1653 = call ptr @dva_arena_alloc(ptr %arena.cur1652, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld1654 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1653, i32 0, i32 0
  store ptr %var.load1644, ptr %rec.fld1654, align 8
  %rec.fld1655 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1653, i32 0, i32 1
  store ptr %var.load1645, ptr %rec.fld1655, align 8
  %rec.fld1656 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1653, i32 0, i32 2
  store i1 %fld.load1648, ptr %rec.fld1656, align 1
  %rec.fld1657 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %rec.alloc1653, i32 0, i32 3
  store i1 %fld.load1651, ptr %rec.fld1657, align 1
  store ptr %rec.alloc1653, ptr %pay.gep1643, align 8
  br label %choice.exit

choice.case1658:                                  ; preds = %choice.next1595
  %pay.gep1663 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1664 = load ptr, ptr %pay.gep1663, align 8
  store ptr %payload.ptr1664, ptr %var._1665, align 8
  store ptr %payload.ptr1664, ptr %var.ce, align 8
  %var.load1666 = load ptr, ptr %var.ce, align 8
  %fld.gep1667 = getelementptr inbounds { ptr, ptr }, ptr %var.load1666, i32 0, i32 0
  %fld.load1668 = load ptr, ptr %fld.gep1667, align 8
  %var.load1669 = load ptr, ptr %var.table, align 8
  %var.load1670 = load ptr, ptr %var.locals, align 8
  %a.load1671 = load ptr, ptr %var.locals, align 8
  %a.null1672 = icmp eq ptr %a.load1671, null
  br i1 %a.null1672, label %a.create1673, label %a.after1674

choice.next1659:                                  ; preds = %choice.next1595
  %tag.gep1716 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1717 = load i64, ptr %tag.gep1716, align 8
  %tag.match1718 = icmp eq i64 %tag.id1717, 13
  br i1 %tag.match1718, label %choice.case1714, label %choice.next1715

a.create1673:                                     ; preds = %choice.case1658
  %arena.cur1675 = call ptr @dva_arena_current()
  %a.create1676 = call ptr @dva_arena_alloc(ptr %arena.cur1675, i64 24)
  %arena.cur1677 = call ptr @dva_arena_current()
  %a.buf1678 = call ptr @dva_arena_alloc(ptr %arena.cur1677, i64 128)
  %a.len.gep1679 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1676, i32 0, i32 0
  store i64 0, ptr %a.len.gep1679, align 8
  %a.data.gep1680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1676, i32 0, i32 1
  store ptr %a.buf1678, ptr %a.data.gep1680, align 8
  %a.cap.gep1681 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1676, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1681, align 8
  store ptr %a.create1676, ptr %var.locals, align 8
  br label %a.after1674

a.after1674:                                      ; preds = %a.create1673, %choice.case1658
  %a.load21682 = load ptr, ptr %var.locals, align 8
  %var.load1683 = load ptr, ptr %var.cur_mod, align 8
  %call.res1684 = call ptr @"overloads::walk"(ptr %fld.load1668, ptr %var.load1669, ptr %a.load21682, ptr %var.load1683)
  store ptr %call.res1684, ptr %var.new_cy, align 8
  %var.load1685 = load ptr, ptr %var.ce, align 8
  %fld.gep1686 = getelementptr inbounds { ptr, ptr }, ptr %var.load1685, i32 0, i32 1
  %fld.load1687 = load ptr, ptr %fld.gep1686, align 8
  %var.load1688 = load ptr, ptr %var.table, align 8
  %var.load1689 = load ptr, ptr %var.locals, align 8
  %a.load1690 = load ptr, ptr %var.locals, align 8
  %a.null1691 = icmp eq ptr %a.load1690, null
  br i1 %a.null1691, label %a.create1692, label %a.after1693

a.create1692:                                     ; preds = %a.after1674
  %arena.cur1694 = call ptr @dva_arena_current()
  %a.create1695 = call ptr @dva_arena_alloc(ptr %arena.cur1694, i64 24)
  %arena.cur1696 = call ptr @dva_arena_current()
  %a.buf1697 = call ptr @dva_arena_alloc(ptr %arena.cur1696, i64 128)
  %a.len.gep1698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 0
  store i64 0, ptr %a.len.gep1698, align 8
  %a.data.gep1699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 1
  store ptr %a.buf1697, ptr %a.data.gep1699, align 8
  %a.cap.gep1700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1695, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1700, align 8
  store ptr %a.create1695, ptr %var.locals, align 8
  br label %a.after1693

a.after1693:                                      ; preds = %a.create1692, %a.after1674
  %a.load21701 = load ptr, ptr %var.locals, align 8
  %var.load1702 = load ptr, ptr %var.cur_mod, align 8
  %call.res1703 = call ptr @"overloads::walk"(ptr %fld.load1687, ptr %var.load1688, ptr %a.load21701, ptr %var.load1702)
  store ptr %call.res1703, ptr %var.new_br, align 8
  %arena.cur1704 = call ptr @dva_arena_current()
  %enum.alloc1705 = call ptr @dva_arena_alloc(ptr %arena.cur1704, i64 16)
  %tag.gep1706 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1705, i32 0, i32 0
  store i64 11, ptr %tag.gep1706, align 8
  %pay.gep1707 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1705, i32 0, i32 1
  %var.load1708 = load ptr, ptr %var.new_cy, align 8
  %var.load1709 = load ptr, ptr %var.new_br, align 8
  %arena.cur1710 = call ptr @dva_arena_current()
  %rec.alloc1711 = call ptr @dva_arena_alloc(ptr %arena.cur1710, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1712 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1711, i32 0, i32 0
  store ptr %var.load1708, ptr %rec.fld1712, align 8
  %rec.fld1713 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1711, i32 0, i32 1
  store ptr %var.load1709, ptr %rec.fld1713, align 8
  store ptr %rec.alloc1711, ptr %pay.gep1707, align 8
  br label %choice.exit

choice.case1714:                                  ; preds = %choice.next1659
  %pay.gep1719 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1720 = load ptr, ptr %pay.gep1719, align 8
  store ptr %payload.ptr1720, ptr %var._1721, align 8
  store ptr %payload.ptr1720, ptr %var.r, align 8
  %var.load1722 = load ptr, ptr %var.r, align 8
  %fld.gep1723 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1722, i32 0, i32 0
  %fld.load1724 = load i1, ptr %fld.gep1723, align 1
  br i1 %fld.load1724, label %choice.then1725, label %choice.else1726

choice.next1715:                                  ; preds = %choice.next1659
  %tag.gep1806 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1807 = load i64, ptr %tag.gep1806, align 8
  %tag.match1808 = icmp eq i64 %tag.id1807, 36
  br i1 %tag.match1808, label %choice.case1804, label %choice.next1805

choice.then1725:                                  ; preds = %choice.case1714
  %var.load1728 = load ptr, ptr %var.r, align 8
  %fld.gep1729 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1728, i32 0, i32 2
  %fld.load1730 = load ptr, ptr %fld.gep1729, align 8
  %var.load1731 = load ptr, ptr %var.table, align 8
  %var.load1732 = load ptr, ptr %var.locals, align 8
  %a.load1733 = load ptr, ptr %var.locals, align 8
  %a.null1734 = icmp eq ptr %a.load1733, null
  br i1 %a.null1734, label %a.create1735, label %a.after1736

choice.else1726:                                  ; preds = %choice.case1714
  %var.load1747 = load ptr, ptr %var.r, align 8
  %fld.gep1748 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1747, i32 0, i32 2
  %fld.load1749 = load ptr, ptr %fld.gep1748, align 8
  br label %choice.exit1727

choice.exit1727:                                  ; preds = %choice.else1726, %a.after1736
  %choice.res1750 = phi ptr [ %call.res1746, %a.after1736 ], [ %fld.load1749, %choice.else1726 ]
  store ptr %choice.res1750, ptr %var.new_lhs1751, align 8
  %var.load1752 = load ptr, ptr %var.r, align 8
  %fld.gep1753 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1752, i32 0, i32 1
  %fld.load1754 = load i1, ptr %fld.gep1753, align 1
  br i1 %fld.load1754, label %choice.then1755, label %choice.else1756

a.create1735:                                     ; preds = %choice.then1725
  %arena.cur1737 = call ptr @dva_arena_current()
  %a.create1738 = call ptr @dva_arena_alloc(ptr %arena.cur1737, i64 24)
  %arena.cur1739 = call ptr @dva_arena_current()
  %a.buf1740 = call ptr @dva_arena_alloc(ptr %arena.cur1739, i64 128)
  %a.len.gep1741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1738, i32 0, i32 0
  store i64 0, ptr %a.len.gep1741, align 8
  %a.data.gep1742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1738, i32 0, i32 1
  store ptr %a.buf1740, ptr %a.data.gep1742, align 8
  %a.cap.gep1743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1738, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1743, align 8
  store ptr %a.create1738, ptr %var.locals, align 8
  br label %a.after1736

a.after1736:                                      ; preds = %a.create1735, %choice.then1725
  %a.load21744 = load ptr, ptr %var.locals, align 8
  %var.load1745 = load ptr, ptr %var.cur_mod, align 8
  %call.res1746 = call ptr @"overloads::walk"(ptr %fld.load1730, ptr %var.load1731, ptr %a.load21744, ptr %var.load1745)
  br label %choice.exit1727

choice.then1755:                                  ; preds = %choice.exit1727
  %var.load1758 = load ptr, ptr %var.r, align 8
  %fld.gep1759 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1758, i32 0, i32 3
  %fld.load1760 = load ptr, ptr %fld.gep1759, align 8
  %var.load1761 = load ptr, ptr %var.table, align 8
  %var.load1762 = load ptr, ptr %var.locals, align 8
  %a.load1763 = load ptr, ptr %var.locals, align 8
  %a.null1764 = icmp eq ptr %a.load1763, null
  br i1 %a.null1764, label %a.create1765, label %a.after1766

choice.else1756:                                  ; preds = %choice.exit1727
  %var.load1777 = load ptr, ptr %var.r, align 8
  %fld.gep1778 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1777, i32 0, i32 3
  %fld.load1779 = load ptr, ptr %fld.gep1778, align 8
  br label %choice.exit1757

choice.exit1757:                                  ; preds = %choice.else1756, %a.after1766
  %choice.res1780 = phi ptr [ %call.res1776, %a.after1766 ], [ %fld.load1779, %choice.else1756 ]
  store ptr %choice.res1780, ptr %var.new_rhs1781, align 8
  %arena.cur1782 = call ptr @dva_arena_current()
  %enum.alloc1783 = call ptr @dva_arena_alloc(ptr %arena.cur1782, i64 16)
  %tag.gep1784 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1783, i32 0, i32 0
  store i64 13, ptr %tag.gep1784, align 8
  %pay.gep1785 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1783, i32 0, i32 1
  %var.load1786 = load ptr, ptr %var.r, align 8
  %fld.gep1787 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1786, i32 0, i32 0
  %fld.load1788 = load i1, ptr %fld.gep1787, align 1
  %var.load1789 = load ptr, ptr %var.r, align 8
  %fld.gep1790 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1789, i32 0, i32 1
  %fld.load1791 = load i1, ptr %fld.gep1790, align 1
  %var.load1792 = load ptr, ptr %var.new_lhs1751, align 8
  %var.load1793 = load ptr, ptr %var.new_rhs1781, align 8
  %var.load1794 = load ptr, ptr %var.r, align 8
  %fld.gep1795 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1794, i32 0, i32 4
  %fld.load1796 = load i1, ptr %fld.gep1795, align 1
  %arena.cur1797 = call ptr @dva_arena_current()
  %rec.alloc1798 = call ptr @dva_arena_alloc(ptr %arena.cur1797, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1799 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1798, i32 0, i32 0
  store i1 %fld.load1788, ptr %rec.fld1799, align 1
  %rec.fld1800 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1798, i32 0, i32 1
  store i1 %fld.load1791, ptr %rec.fld1800, align 1
  %rec.fld1801 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1798, i32 0, i32 2
  store ptr %var.load1792, ptr %rec.fld1801, align 8
  %rec.fld1802 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1798, i32 0, i32 3
  store ptr %var.load1793, ptr %rec.fld1802, align 8
  %rec.fld1803 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1798, i32 0, i32 4
  store i1 %fld.load1796, ptr %rec.fld1803, align 1
  store ptr %rec.alloc1798, ptr %pay.gep1785, align 8
  br label %choice.exit

a.create1765:                                     ; preds = %choice.then1755
  %arena.cur1767 = call ptr @dva_arena_current()
  %a.create1768 = call ptr @dva_arena_alloc(ptr %arena.cur1767, i64 24)
  %arena.cur1769 = call ptr @dva_arena_current()
  %a.buf1770 = call ptr @dva_arena_alloc(ptr %arena.cur1769, i64 128)
  %a.len.gep1771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1768, i32 0, i32 0
  store i64 0, ptr %a.len.gep1771, align 8
  %a.data.gep1772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1768, i32 0, i32 1
  store ptr %a.buf1770, ptr %a.data.gep1772, align 8
  %a.cap.gep1773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1768, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1773, align 8
  store ptr %a.create1768, ptr %var.locals, align 8
  br label %a.after1766

a.after1766:                                      ; preds = %a.create1765, %choice.then1755
  %a.load21774 = load ptr, ptr %var.locals, align 8
  %var.load1775 = load ptr, ptr %var.cur_mod, align 8
  %call.res1776 = call ptr @"overloads::walk"(ptr %fld.load1760, ptr %var.load1761, ptr %a.load21774, ptr %var.load1775)
  br label %choice.exit1757

choice.case1804:                                  ; preds = %choice.next1715
  %pay.gep1809 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1810 = load ptr, ptr %pay.gep1809, align 8
  store ptr %payload.ptr1810, ptr %var._1811, align 8
  store ptr %payload.ptr1810, ptr %var.na, align 8
  %var.load1812 = load ptr, ptr %var.na, align 8
  %fld.gep1813 = getelementptr inbounds { ptr, ptr }, ptr %var.load1812, i32 0, i32 1
  %fld.load1814 = load ptr, ptr %fld.gep1813, align 8
  %var.load1815 = load ptr, ptr %var.table, align 8
  %var.load1816 = load ptr, ptr %var.locals, align 8
  %a.load1817 = load ptr, ptr %var.locals, align 8
  %a.null1818 = icmp eq ptr %a.load1817, null
  br i1 %a.null1818, label %a.create1819, label %a.after1820

choice.next1805:                                  ; preds = %choice.next1715
  %tag.gep1846 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1847 = load i64, ptr %tag.gep1846, align 8
  %tag.match1848 = icmp eq i64 %tag.id1847, 18
  br i1 %tag.match1848, label %choice.case1844, label %choice.next1845

a.create1819:                                     ; preds = %choice.case1804
  %arena.cur1821 = call ptr @dva_arena_current()
  %a.create1822 = call ptr @dva_arena_alloc(ptr %arena.cur1821, i64 24)
  %arena.cur1823 = call ptr @dva_arena_current()
  %a.buf1824 = call ptr @dva_arena_alloc(ptr %arena.cur1823, i64 128)
  %a.len.gep1825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1822, i32 0, i32 0
  store i64 0, ptr %a.len.gep1825, align 8
  %a.data.gep1826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1822, i32 0, i32 1
  store ptr %a.buf1824, ptr %a.data.gep1826, align 8
  %a.cap.gep1827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1822, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1827, align 8
  store ptr %a.create1822, ptr %var.locals, align 8
  br label %a.after1820

a.after1820:                                      ; preds = %a.create1819, %choice.case1804
  %a.load21828 = load ptr, ptr %var.locals, align 8
  %var.load1829 = load ptr, ptr %var.cur_mod, align 8
  %call.res1830 = call ptr @"overloads::walk"(ptr %fld.load1814, ptr %var.load1815, ptr %a.load21828, ptr %var.load1829)
  store ptr %call.res1830, ptr %var.new_val1831, align 8
  %arena.cur1832 = call ptr @dva_arena_current()
  %enum.alloc1833 = call ptr @dva_arena_alloc(ptr %arena.cur1832, i64 16)
  %tag.gep1834 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1833, i32 0, i32 0
  store i64 36, ptr %tag.gep1834, align 8
  %pay.gep1835 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1833, i32 0, i32 1
  %var.load1836 = load ptr, ptr %var.na, align 8
  %fld.gep1837 = getelementptr inbounds { ptr, ptr }, ptr %var.load1836, i32 0, i32 0
  %fld.load1838 = load ptr, ptr %fld.gep1837, align 8
  %var.load1839 = load ptr, ptr %var.new_val1831, align 8
  %arena.cur1840 = call ptr @dva_arena_current()
  %rec.alloc1841 = call ptr @dva_arena_alloc(ptr %arena.cur1840, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1842 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1841, i32 0, i32 0
  store ptr %fld.load1838, ptr %rec.fld1842, align 8
  %rec.fld1843 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1841, i32 0, i32 1
  store ptr %var.load1839, ptr %rec.fld1843, align 8
  store ptr %rec.alloc1841, ptr %pay.gep1835, align 8
  br label %choice.exit

choice.case1844:                                  ; preds = %choice.next1805
  %pay.gep1849 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1850 = load ptr, ptr %pay.gep1849, align 8
  store ptr %payload.ptr1850, ptr %var._1851, align 8
  store ptr %payload.ptr1850, ptr %var.v1852, align 8
  %var.load1853 = load ptr, ptr %var.v1852, align 8
  %fld.gep1854 = getelementptr inbounds { ptr, ptr }, ptr %var.load1853, i32 0, i32 1
  %fld.load1855 = load ptr, ptr %fld.gep1854, align 8
  %var.load1856 = load ptr, ptr %var.table, align 8
  %var.load1857 = load ptr, ptr %var.locals, align 8
  %a.load1858 = load ptr, ptr %var.locals, align 8
  %a.null1859 = icmp eq ptr %a.load1858, null
  br i1 %a.null1859, label %a.create1860, label %a.after1861

choice.next1845:                                  ; preds = %choice.next1805
  %tag.gep1898 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1899 = load i64, ptr %tag.gep1898, align 8
  %tag.match1900 = icmp eq i64 %tag.id1899, 22
  br i1 %tag.match1900, label %choice.case1896, label %choice.next1897

a.create1860:                                     ; preds = %choice.case1844
  %arena.cur1862 = call ptr @dva_arena_current()
  %a.create1863 = call ptr @dva_arena_alloc(ptr %arena.cur1862, i64 24)
  %arena.cur1864 = call ptr @dva_arena_current()
  %a.buf1865 = call ptr @dva_arena_alloc(ptr %arena.cur1864, i64 128)
  %a.len.gep1866 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1863, i32 0, i32 0
  store i64 0, ptr %a.len.gep1866, align 8
  %a.data.gep1867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1863, i32 0, i32 1
  store ptr %a.buf1865, ptr %a.data.gep1867, align 8
  %a.cap.gep1868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1863, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1868, align 8
  store ptr %a.create1863, ptr %var.locals, align 8
  br label %a.after1861

a.after1861:                                      ; preds = %a.create1860, %choice.case1844
  %a.load21869 = load ptr, ptr %var.locals, align 8
  %var.load1870 = load ptr, ptr %var.cur_mod, align 8
  %call.res1871 = call ptr @"overloads::walk_many"(ptr %fld.load1855, ptr %var.load1856, ptr %a.load21869, ptr %var.load1870)
  store ptr %call.res1871, ptr %var.new_args, align 8
  %arena.cur1872 = call ptr @dva_arena_current()
  %enum.alloc1873 = call ptr @dva_arena_alloc(ptr %arena.cur1872, i64 16)
  %tag.gep1874 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1873, i32 0, i32 0
  store i64 18, ptr %tag.gep1874, align 8
  %pay.gep1875 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1873, i32 0, i32 1
  %var.load1876 = load ptr, ptr %var.v1852, align 8
  %fld.gep1877 = getelementptr inbounds { ptr, ptr }, ptr %var.load1876, i32 0, i32 0
  %fld.load1878 = load ptr, ptr %fld.gep1877, align 8
  %var.load1879 = load ptr, ptr %var.new_args, align 8
  %a.load1880 = load ptr, ptr %var.new_args, align 8
  %a.null1881 = icmp eq ptr %a.load1880, null
  br i1 %a.null1881, label %a.create1882, label %a.after1883

a.create1882:                                     ; preds = %a.after1861
  %arena.cur1884 = call ptr @dva_arena_current()
  %a.create1885 = call ptr @dva_arena_alloc(ptr %arena.cur1884, i64 24)
  %arena.cur1886 = call ptr @dva_arena_current()
  %a.buf1887 = call ptr @dva_arena_alloc(ptr %arena.cur1886, i64 128)
  %a.len.gep1888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 0
  store i64 0, ptr %a.len.gep1888, align 8
  %a.data.gep1889 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 1
  store ptr %a.buf1887, ptr %a.data.gep1889, align 8
  %a.cap.gep1890 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1890, align 8
  store ptr %a.create1885, ptr %var.new_args, align 8
  br label %a.after1883

a.after1883:                                      ; preds = %a.create1882, %a.after1861
  %a.load21891 = load ptr, ptr %var.new_args, align 8
  %arena.cur1892 = call ptr @dva_arena_current()
  %rec.alloc1893 = call ptr @dva_arena_alloc(ptr %arena.cur1892, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1894 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1893, i32 0, i32 0
  store ptr %fld.load1878, ptr %rec.fld1894, align 8
  %rec.fld1895 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1893, i32 0, i32 1
  store ptr %a.load21891, ptr %rec.fld1895, align 8
  store ptr %rec.alloc1893, ptr %pay.gep1875, align 8
  br label %choice.exit

choice.case1896:                                  ; preds = %choice.next1845
  %pay.gep1901 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1902 = load ptr, ptr %pay.gep1901, align 8
  store ptr %payload.ptr1902, ptr %var._1903, align 8
  store ptr %payload.ptr1902, ptr %var.tc, align 8
  %var.load1904 = load ptr, ptr %var.tc, align 8
  %fld.gep1905 = getelementptr inbounds { ptr, ptr }, ptr %var.load1904, i32 0, i32 1
  %fld.load1906 = load ptr, ptr %fld.gep1905, align 8
  %var.load1907 = load ptr, ptr %var.table, align 8
  %var.load1908 = load ptr, ptr %var.locals, align 8
  %a.load1909 = load ptr, ptr %var.locals, align 8
  %a.null1910 = icmp eq ptr %a.load1909, null
  br i1 %a.null1910, label %a.create1911, label %a.after1912

choice.next1897:                                  ; preds = %choice.next1845
  %tag.gep1937 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1938 = load i64, ptr %tag.gep1937, align 8
  %tag.match1939 = icmp eq i64 %tag.id1938, 31
  br i1 %tag.match1939, label %choice.case1935, label %choice.next1936

a.create1911:                                     ; preds = %choice.case1896
  %arena.cur1913 = call ptr @dva_arena_current()
  %a.create1914 = call ptr @dva_arena_alloc(ptr %arena.cur1913, i64 24)
  %arena.cur1915 = call ptr @dva_arena_current()
  %a.buf1916 = call ptr @dva_arena_alloc(ptr %arena.cur1915, i64 128)
  %a.len.gep1917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1914, i32 0, i32 0
  store i64 0, ptr %a.len.gep1917, align 8
  %a.data.gep1918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1914, i32 0, i32 1
  store ptr %a.buf1916, ptr %a.data.gep1918, align 8
  %a.cap.gep1919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1914, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1919, align 8
  store ptr %a.create1914, ptr %var.locals, align 8
  br label %a.after1912

a.after1912:                                      ; preds = %a.create1911, %choice.case1896
  %a.load21920 = load ptr, ptr %var.locals, align 8
  %var.load1921 = load ptr, ptr %var.cur_mod, align 8
  %call.res1922 = call ptr @"overloads::walk"(ptr %fld.load1906, ptr %var.load1907, ptr %a.load21920, ptr %var.load1921)
  store ptr %call.res1922, ptr %var.new_expr, align 8
  %arena.cur1923 = call ptr @dva_arena_current()
  %enum.alloc1924 = call ptr @dva_arena_alloc(ptr %arena.cur1923, i64 16)
  %tag.gep1925 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1924, i32 0, i32 0
  store i64 22, ptr %tag.gep1925, align 8
  %pay.gep1926 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1924, i32 0, i32 1
  %var.load1927 = load ptr, ptr %var.tc, align 8
  %fld.gep1928 = getelementptr inbounds { ptr, ptr }, ptr %var.load1927, i32 0, i32 0
  %fld.load1929 = load ptr, ptr %fld.gep1928, align 8
  %var.load1930 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1931 = call ptr @dva_arena_current()
  %rec.alloc1932 = call ptr @dva_arena_alloc(ptr %arena.cur1931, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1933 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1932, i32 0, i32 0
  store ptr %fld.load1929, ptr %rec.fld1933, align 8
  %rec.fld1934 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1932, i32 0, i32 1
  store ptr %var.load1930, ptr %rec.fld1934, align 8
  store ptr %rec.alloc1932, ptr %pay.gep1926, align 8
  br label %choice.exit

choice.case1935:                                  ; preds = %choice.next1897
  %pay.gep1940 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1941 = load ptr, ptr %pay.gep1940, align 8
  store ptr %payload.ptr1941, ptr %var._1942, align 8
  store ptr %payload.ptr1941, ptr %var.sp, align 8
  %arena.cur1943 = call ptr @dva_arena_current()
  %enum.alloc1944 = call ptr @dva_arena_alloc(ptr %arena.cur1943, i64 16)
  %tag.gep1945 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1944, i32 0, i32 0
  store i64 31, ptr %tag.gep1945, align 8
  %pay.gep1946 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1944, i32 0, i32 1
  %var.load1947 = load ptr, ptr %var.sp, align 8
  %var.load1948 = load ptr, ptr %var.table, align 8
  %var.load1949 = load ptr, ptr %var.locals, align 8
  %a.load1950 = load ptr, ptr %var.locals, align 8
  %a.null1951 = icmp eq ptr %a.load1950, null
  br i1 %a.null1951, label %a.create1952, label %a.after1953

choice.next1936:                                  ; preds = %choice.next1897
  %tag.gep1966 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1967 = load i64, ptr %tag.gep1966, align 8
  %tag.match1968 = icmp eq i64 %tag.id1967, 32
  br i1 %tag.match1968, label %choice.case1964, label %choice.next1965

a.create1952:                                     ; preds = %choice.case1935
  %arena.cur1954 = call ptr @dva_arena_current()
  %a.create1955 = call ptr @dva_arena_alloc(ptr %arena.cur1954, i64 24)
  %arena.cur1956 = call ptr @dva_arena_current()
  %a.buf1957 = call ptr @dva_arena_alloc(ptr %arena.cur1956, i64 128)
  %a.len.gep1958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 0
  store i64 0, ptr %a.len.gep1958, align 8
  %a.data.gep1959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 1
  store ptr %a.buf1957, ptr %a.data.gep1959, align 8
  %a.cap.gep1960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1960, align 8
  store ptr %a.create1955, ptr %var.locals, align 8
  br label %a.after1953

a.after1953:                                      ; preds = %a.create1952, %choice.case1935
  %a.load21961 = load ptr, ptr %var.locals, align 8
  %var.load1962 = load ptr, ptr %var.cur_mod, align 8
  %call.res1963 = call ptr @"overloads::walk_call"(ptr %var.load1947, ptr %var.load1948, ptr %a.load21961, ptr %var.load1962)
  store ptr %call.res1963, ptr %pay.gep1946, align 8
  br label %choice.exit

choice.case1964:                                  ; preds = %choice.next1936
  %pay.gep1969 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1970 = load ptr, ptr %pay.gep1969, align 8
  store ptr %payload.ptr1970, ptr %var._1971, align 8
  store ptr %payload.ptr1970, ptr %var.jn, align 8
  %arena.cur1972 = call ptr @dva_arena_current()
  %enum.alloc1973 = call ptr @dva_arena_alloc(ptr %arena.cur1972, i64 16)
  %tag.gep1974 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1973, i32 0, i32 0
  store i64 32, ptr %tag.gep1974, align 8
  %pay.gep1975 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1973, i32 0, i32 1
  %var.load1976 = load ptr, ptr %var.jn, align 8
  %var.load1977 = load ptr, ptr %var.table, align 8
  %var.load1978 = load ptr, ptr %var.locals, align 8
  %a.load1979 = load ptr, ptr %var.locals, align 8
  %a.null1980 = icmp eq ptr %a.load1979, null
  br i1 %a.null1980, label %a.create1981, label %a.after1982

choice.next1965:                                  ; preds = %choice.next1936
  %tag.gep1995 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1996 = load i64, ptr %tag.gep1995, align 8
  %tag.match1997 = icmp eq i64 %tag.id1996, 33
  br i1 %tag.match1997, label %choice.case1993, label %choice.next1994

a.create1981:                                     ; preds = %choice.case1964
  %arena.cur1983 = call ptr @dva_arena_current()
  %a.create1984 = call ptr @dva_arena_alloc(ptr %arena.cur1983, i64 24)
  %arena.cur1985 = call ptr @dva_arena_current()
  %a.buf1986 = call ptr @dva_arena_alloc(ptr %arena.cur1985, i64 128)
  %a.len.gep1987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 0
  store i64 0, ptr %a.len.gep1987, align 8
  %a.data.gep1988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 1
  store ptr %a.buf1986, ptr %a.data.gep1988, align 8
  %a.cap.gep1989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1989, align 8
  store ptr %a.create1984, ptr %var.locals, align 8
  br label %a.after1982

a.after1982:                                      ; preds = %a.create1981, %choice.case1964
  %a.load21990 = load ptr, ptr %var.locals, align 8
  %var.load1991 = load ptr, ptr %var.cur_mod, align 8
  %call.res1992 = call ptr @"overloads::walk"(ptr %var.load1976, ptr %var.load1977, ptr %a.load21990, ptr %var.load1991)
  store ptr %call.res1992, ptr %pay.gep1975, align 8
  br label %choice.exit

choice.case1993:                                  ; preds = %choice.next1965
  %pay.gep1998 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1999 = load ptr, ptr %pay.gep1998, align 8
  store ptr %payload.ptr1999, ptr %var._2000, align 8
  store ptr %payload.ptr1999, ptr %var.ex, align 8
  %var.load2001 = load ptr, ptr %var.ex, align 8
  %var.load2002 = load ptr, ptr %var.table, align 8
  %var.load2003 = load ptr, ptr %var.locals, align 8
  %a.load2004 = load ptr, ptr %var.locals, align 8
  %a.null2005 = icmp eq ptr %a.load2004, null
  br i1 %a.null2005, label %a.create2006, label %a.after2007

choice.next1994:                                  ; preds = %choice.next1965
  %tag.gep2025 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2026 = load i64, ptr %tag.gep2025, align 8
  %tag.match2027 = icmp eq i64 %tag.id2026, 37
  br i1 %tag.match2027, label %choice.case2023, label %choice.next2024

a.create2006:                                     ; preds = %choice.case1993
  %arena.cur2008 = call ptr @dva_arena_current()
  %a.create2009 = call ptr @dva_arena_alloc(ptr %arena.cur2008, i64 24)
  %arena.cur2010 = call ptr @dva_arena_current()
  %a.buf2011 = call ptr @dva_arena_alloc(ptr %arena.cur2010, i64 128)
  %a.len.gep2012 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2009, i32 0, i32 0
  store i64 0, ptr %a.len.gep2012, align 8
  %a.data.gep2013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2009, i32 0, i32 1
  store ptr %a.buf2011, ptr %a.data.gep2013, align 8
  %a.cap.gep2014 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2009, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2014, align 8
  store ptr %a.create2009, ptr %var.locals, align 8
  br label %a.after2007

a.after2007:                                      ; preds = %a.create2006, %choice.case1993
  %a.load22015 = load ptr, ptr %var.locals, align 8
  %var.load2016 = load ptr, ptr %var.cur_mod, align 8
  %call.res2017 = call ptr @"overloads::walk"(ptr %var.load2001, ptr %var.load2002, ptr %a.load22015, ptr %var.load2016)
  store ptr %call.res2017, ptr %var.new_ex, align 8
  %arena.cur2018 = call ptr @dva_arena_current()
  %enum.alloc2019 = call ptr @dva_arena_alloc(ptr %arena.cur2018, i64 16)
  %tag.gep2020 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2019, i32 0, i32 0
  store i64 33, ptr %tag.gep2020, align 8
  %pay.gep2021 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2019, i32 0, i32 1
  %var.load2022 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load2022, ptr %pay.gep2021, align 8
  br label %choice.exit

choice.case2023:                                  ; preds = %choice.next1994
  %pay.gep2028 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2029 = load ptr, ptr %pay.gep2028, align 8
  store ptr %payload.ptr2029, ptr %var._2030, align 8
  store ptr %payload.ptr2029, ptr %var.r2031, align 8
  %var.load2032 = load ptr, ptr %var.r2031, align 8
  %fld.gep2033 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2032, i32 0, i32 0
  %fld.load2034 = load i1, ptr %fld.gep2033, align 1
  br i1 %fld.load2034, label %choice.then2035, label %choice.else2036

choice.next2024:                                  ; preds = %choice.next1994
  %tag.gep2084 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2085 = load i64, ptr %tag.gep2084, align 8
  %tag.match2086 = icmp eq i64 %tag.id2085, 28
  br i1 %tag.match2086, label %choice.case2082, label %choice.next2083

choice.then2035:                                  ; preds = %choice.case2023
  %var.load2038 = load ptr, ptr %var.r2031, align 8
  %fld.gep2039 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2038, i32 0, i32 1
  %fld.load2040 = load ptr, ptr %fld.gep2039, align 8
  %var.load2041 = load ptr, ptr %var.table, align 8
  %var.load2042 = load ptr, ptr %var.locals, align 8
  %a.load2043 = load ptr, ptr %var.locals, align 8
  %a.null2044 = icmp eq ptr %a.load2043, null
  br i1 %a.null2044, label %a.create2045, label %a.after2046

choice.else2036:                                  ; preds = %choice.case2023
  %var.load2057 = load ptr, ptr %var.r2031, align 8
  %fld.gep2058 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2057, i32 0, i32 1
  %fld.load2059 = load ptr, ptr %fld.gep2058, align 8
  br label %choice.exit2037

choice.exit2037:                                  ; preds = %choice.else2036, %a.after2046
  %choice.res2060 = phi ptr [ %call.res2056, %a.after2046 ], [ %fld.load2059, %choice.else2036 ]
  store ptr %choice.res2060, ptr %var.new_val2061, align 8
  %arena.cur2062 = call ptr @dva_arena_current()
  %enum.alloc2063 = call ptr @dva_arena_alloc(ptr %arena.cur2062, i64 16)
  %tag.gep2064 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2063, i32 0, i32 0
  store i64 37, ptr %tag.gep2064, align 8
  %pay.gep2065 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2063, i32 0, i32 1
  %var.load2066 = load ptr, ptr %var.r2031, align 8
  %fld.gep2067 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2066, i32 0, i32 0
  %fld.load2068 = load i1, ptr %fld.gep2067, align 1
  %var.load2069 = load ptr, ptr %var.new_val2061, align 8
  %var.load2070 = load ptr, ptr %var.r2031, align 8
  %fld.gep2071 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2070, i32 0, i32 2
  %fld.load2072 = load i64, ptr %fld.gep2071, align 8
  %var.load2073 = load ptr, ptr %var.r2031, align 8
  %fld.gep2074 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2073, i32 0, i32 3
  %fld.load2075 = load i64, ptr %fld.gep2074, align 8
  %arena.cur2076 = call ptr @dva_arena_current()
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

a.create2045:                                     ; preds = %choice.then2035
  %arena.cur2047 = call ptr @dva_arena_current()
  %a.create2048 = call ptr @dva_arena_alloc(ptr %arena.cur2047, i64 24)
  %arena.cur2049 = call ptr @dva_arena_current()
  %a.buf2050 = call ptr @dva_arena_alloc(ptr %arena.cur2049, i64 128)
  %a.len.gep2051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 0
  store i64 0, ptr %a.len.gep2051, align 8
  %a.data.gep2052 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 1
  store ptr %a.buf2050, ptr %a.data.gep2052, align 8
  %a.cap.gep2053 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2048, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2053, align 8
  store ptr %a.create2048, ptr %var.locals, align 8
  br label %a.after2046

a.after2046:                                      ; preds = %a.create2045, %choice.then2035
  %a.load22054 = load ptr, ptr %var.locals, align 8
  %var.load2055 = load ptr, ptr %var.cur_mod, align 8
  %call.res2056 = call ptr @"overloads::walk"(ptr %fld.load2040, ptr %var.load2041, ptr %a.load22054, ptr %var.load2055)
  br label %choice.exit2037

choice.case2082:                                  ; preds = %choice.next2024
  %pay.gep2087 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2088 = load ptr, ptr %pay.gep2087, align 8
  store ptr %payload.ptr2088, ptr %var._2089, align 8
  store ptr %payload.ptr2088, ptr %var.ac, align 8
  %var.load2090 = load ptr, ptr %var.ac, align 8
  %fld.gep2091 = getelementptr inbounds { ptr, i64 }, ptr %var.load2090, i32 0, i32 0
  %fld.load2092 = load ptr, ptr %fld.gep2091, align 8
  %var.load2093 = load ptr, ptr %var.table, align 8
  %call.res2094 = call ptr @"overloads::keep_type"(ptr %fld.load2092, ptr %var.load2093)
  store ptr %call.res2094, ptr %var.new_elem, align 8
  %arena.cur2095 = call ptr @dva_arena_current()
  %enum.alloc2096 = call ptr @dva_arena_alloc(ptr %arena.cur2095, i64 16)
  %tag.gep2097 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2096, i32 0, i32 0
  store i64 28, ptr %tag.gep2097, align 8
  %pay.gep2098 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2096, i32 0, i32 1
  %var.load2099 = load ptr, ptr %var.new_elem, align 8
  %var.load2100 = load ptr, ptr %var.ac, align 8
  %fld.gep2101 = getelementptr inbounds { ptr, i64 }, ptr %var.load2100, i32 0, i32 1
  %fld.load2102 = load i64, ptr %fld.gep2101, align 8
  %arena.cur2103 = call ptr @dva_arena_current()
  %rec.alloc2104 = call ptr @dva_arena_alloc(ptr %arena.cur2103, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld2105 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2104, i32 0, i32 0
  store ptr %var.load2099, ptr %rec.fld2105, align 8
  %rec.fld2106 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc2104, i32 0, i32 1
  store i64 %fld.load2102, ptr %rec.fld2106, align 8
  store ptr %rec.alloc2104, ptr %pay.gep2098, align 8
  br label %choice.exit

choice.next2083:                                  ; preds = %choice.next2024
  %tag.gep2109 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2110 = load i64, ptr %tag.gep2109, align 8
  %tag.match2111 = icmp eq i64 %tag.id2110, 38
  br i1 %tag.match2111, label %choice.case2107, label %choice.next2108

choice.case2107:                                  ; preds = %choice.next2083
  %pay.gep2112 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2113 = load ptr, ptr %pay.gep2112, align 8
  store ptr %payload.ptr2113, ptr %var._2114, align 8
  store ptr %payload.ptr2113, ptr %var.ud, align 8
  %var.load2115 = load ptr, ptr %var.ud, align 8
  %fld.gep2116 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2115, i32 0, i32 1
  %fld.load2117 = load ptr, ptr %fld.gep2116, align 8
  %var.load2118 = load ptr, ptr %var.table, align 8
  %var.load2119 = load ptr, ptr %var.locals, align 8
  %a.load2120 = load ptr, ptr %var.locals, align 8
  %a.null2121 = icmp eq ptr %a.load2120, null
  br i1 %a.null2121, label %a.create2122, label %a.after2123

choice.next2108:                                  ; preds = %choice.next2083
  %tag.gep2156 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2157 = load i64, ptr %tag.gep2156, align 8
  %tag.match2158 = icmp eq i64 %tag.id2157, 19
  br i1 %tag.match2158, label %choice.case2154, label %choice.next2155

a.create2122:                                     ; preds = %choice.case2107
  %arena.cur2124 = call ptr @dva_arena_current()
  %a.create2125 = call ptr @dva_arena_alloc(ptr %arena.cur2124, i64 24)
  %arena.cur2126 = call ptr @dva_arena_current()
  %a.buf2127 = call ptr @dva_arena_alloc(ptr %arena.cur2126, i64 128)
  %a.len.gep2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 0
  store i64 0, ptr %a.len.gep2128, align 8
  %a.data.gep2129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 1
  store ptr %a.buf2127, ptr %a.data.gep2129, align 8
  %a.cap.gep2130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2130, align 8
  store ptr %a.create2125, ptr %var.locals, align 8
  br label %a.after2123

a.after2123:                                      ; preds = %a.create2122, %choice.case2107
  %a.load22131 = load ptr, ptr %var.locals, align 8
  %var.load2132 = load ptr, ptr %var.cur_mod, align 8
  %call.res2133 = call ptr @"overloads::walk"(ptr %fld.load2117, ptr %var.load2118, ptr %a.load22131, ptr %var.load2132)
  store ptr %call.res2133, ptr %var.new_msg, align 8
  %arena.cur2134 = call ptr @dva_arena_current()
  %enum.alloc2135 = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 16)
  %tag.gep2136 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2135, i32 0, i32 0
  store i64 38, ptr %tag.gep2136, align 8
  %pay.gep2137 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2135, i32 0, i32 1
  %var.load2138 = load ptr, ptr %var.ud, align 8
  %fld.gep2139 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2138, i32 0, i32 0
  %fld.load2140 = load i1, ptr %fld.gep2139, align 1
  %var.load2141 = load ptr, ptr %var.new_msg, align 8
  %var.load2142 = load ptr, ptr %var.ud, align 8
  %fld.gep2143 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2142, i32 0, i32 2
  %fld.load2144 = load i64, ptr %fld.gep2143, align 8
  %var.load2145 = load ptr, ptr %var.ud, align 8
  %fld.gep2146 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2145, i32 0, i32 3
  %fld.load2147 = load i64, ptr %fld.gep2146, align 8
  %arena.cur2148 = call ptr @dva_arena_current()
  %rec.alloc2149 = call ptr @dva_arena_alloc(ptr %arena.cur2148, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld2150 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2149, i32 0, i32 0
  store i1 %fld.load2140, ptr %rec.fld2150, align 1
  %rec.fld2151 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2149, i32 0, i32 1
  store ptr %var.load2141, ptr %rec.fld2151, align 8
  %rec.fld2152 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2149, i32 0, i32 2
  store i64 %fld.load2144, ptr %rec.fld2152, align 8
  %rec.fld2153 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc2149, i32 0, i32 3
  store i64 %fld.load2147, ptr %rec.fld2153, align 8
  store ptr %rec.alloc2149, ptr %pay.gep2137, align 8
  br label %choice.exit

choice.case2154:                                  ; preds = %choice.next2108
  %pay.gep2159 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2160 = load ptr, ptr %pay.gep2159, align 8
  store ptr %payload.ptr2160, ptr %var._2161, align 8
  store ptr %payload.ptr2160, ptr %var.rm, align 8
  %var.load2162 = load ptr, ptr %var.rm, align 8
  %fld.gep2163 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2162, i32 0, i32 0
  %fld.load2164 = load ptr, ptr %fld.gep2163, align 8
  %var.load2165 = load ptr, ptr %var.table, align 8
  %var.load2166 = load ptr, ptr %var.locals, align 8
  %a.load2167 = load ptr, ptr %var.locals, align 8
  %a.null2168 = icmp eq ptr %a.load2167, null
  br i1 %a.null2168, label %a.create2169, label %a.after2170

choice.next2155:                                  ; preds = %choice.next2108
  %tag.gep2199 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2200 = load i64, ptr %tag.gep2199, align 8
  %tag.match2201 = icmp eq i64 %tag.id2200, 26
  br i1 %tag.match2201, label %choice.case2197, label %choice.next2198

a.create2169:                                     ; preds = %choice.case2154
  %arena.cur2171 = call ptr @dva_arena_current()
  %a.create2172 = call ptr @dva_arena_alloc(ptr %arena.cur2171, i64 24)
  %arena.cur2173 = call ptr @dva_arena_current()
  %a.buf2174 = call ptr @dva_arena_alloc(ptr %arena.cur2173, i64 128)
  %a.len.gep2175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2172, i32 0, i32 0
  store i64 0, ptr %a.len.gep2175, align 8
  %a.data.gep2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2172, i32 0, i32 1
  store ptr %a.buf2174, ptr %a.data.gep2176, align 8
  %a.cap.gep2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2177, align 8
  store ptr %a.create2172, ptr %var.locals, align 8
  br label %a.after2170

a.after2170:                                      ; preds = %a.create2169, %choice.case2154
  %a.load22178 = load ptr, ptr %var.locals, align 8
  %var.load2179 = load ptr, ptr %var.cur_mod, align 8
  %call.res2180 = call ptr @"overloads::walk"(ptr %fld.load2164, ptr %var.load2165, ptr %a.load22178, ptr %var.load2179)
  store ptr %call.res2180, ptr %var.new_addr, align 8
  %arena.cur2181 = call ptr @dva_arena_current()
  %enum.alloc2182 = call ptr @dva_arena_alloc(ptr %arena.cur2181, i64 16)
  %tag.gep2183 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2182, i32 0, i32 0
  store i64 19, ptr %tag.gep2183, align 8
  %pay.gep2184 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2182, i32 0, i32 1
  %var.load2185 = load ptr, ptr %var.new_addr, align 8
  %var.load2186 = load ptr, ptr %var.rm, align 8
  %fld.gep2187 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2186, i32 0, i32 1
  %fld.load2188 = load ptr, ptr %fld.gep2187, align 8
  %var.load2189 = load ptr, ptr %var.rm, align 8
  %fld.gep2190 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2189, i32 0, i32 2
  %fld.load2191 = load ptr, ptr %fld.gep2190, align 8
  %arena.cur2192 = call ptr @dva_arena_current()
  %rec.alloc2193 = call ptr @dva_arena_alloc(ptr %arena.cur2192, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2194 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2193, i32 0, i32 0
  store ptr %var.load2185, ptr %rec.fld2194, align 8
  %rec.fld2195 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2193, i32 0, i32 1
  store ptr %fld.load2188, ptr %rec.fld2195, align 8
  %rec.fld2196 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2193, i32 0, i32 2
  store ptr %fld.load2191, ptr %rec.fld2196, align 8
  store ptr %rec.alloc2193, ptr %pay.gep2184, align 8
  br label %choice.exit

choice.case2197:                                  ; preds = %choice.next2155
  %pay.gep2202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2203 = load ptr, ptr %pay.gep2202, align 8
  store ptr %payload.ptr2203, ptr %var._2204, align 8
  store ptr %payload.ptr2203, ptr %var.so, align 8
  %var.load2205 = load ptr, ptr %var.so, align 8
  %fld.gep2206 = getelementptr inbounds { ptr, ptr }, ptr %var.load2205, i32 0, i32 1
  %fld.load2207 = load ptr, ptr %fld.gep2206, align 8
  %var.load2208 = load ptr, ptr %var.table, align 8
  %call.res2209 = call ptr @"overloads::keep_type"(ptr %fld.load2207, ptr %var.load2208)
  store ptr %call.res2209, ptr %var.new_sti, align 8
  %arena.cur2210 = call ptr @dva_arena_current()
  %enum.alloc2211 = call ptr @dva_arena_alloc(ptr %arena.cur2210, i64 16)
  %tag.gep2212 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2211, i32 0, i32 0
  store i64 26, ptr %tag.gep2212, align 8
  %pay.gep2213 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2211, i32 0, i32 1
  %var.load2214 = load ptr, ptr %var.so, align 8
  %fld.gep2215 = getelementptr inbounds { ptr, ptr }, ptr %var.load2214, i32 0, i32 0
  %fld.load2216 = load ptr, ptr %fld.gep2215, align 8
  %var.load2217 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2218 = call ptr @dva_arena_current()
  %rec.alloc2219 = call ptr @dva_arena_alloc(ptr %arena.cur2218, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2220 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2219, i32 0, i32 0
  store ptr %fld.load2216, ptr %rec.fld2220, align 8
  %rec.fld2221 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2219, i32 0, i32 1
  store ptr %var.load2217, ptr %rec.fld2221, align 8
  store ptr %rec.alloc2219, ptr %pay.gep2213, align 8
  br label %choice.exit

choice.next2198:                                  ; preds = %choice.next2155
  %tag.gep2224 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2225 = load i64, ptr %tag.gep2224, align 8
  %tag.match2226 = icmp eq i64 %tag.id2225, 29
  br i1 %tag.match2226, label %choice.case2222, label %choice.next2223

choice.case2222:                                  ; preds = %choice.next2198
  %pay.gep2227 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2228 = load ptr, ptr %pay.gep2227, align 8
  store ptr %payload.ptr2228, ptr %var._2229, align 8
  store ptr %payload.ptr2228, ptr %var.ml, align 8
  %arena.cur2230 = call ptr @dva_arena_current()
  %a.new2231 = call ptr @dva_arena_alloc(ptr %arena.cur2230, i64 24)
  %arena.cur2232 = call ptr @dva_arena_current()
  %a.buf2233 = call ptr @dva_arena_alloc(ptr %arena.cur2232, i64 128)
  %a.len.gep2234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2231, i32 0, i32 0
  store i64 0, ptr %a.len.gep2234, align 8
  %a.data.gep2235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2231, i32 0, i32 1
  store ptr %a.buf2233, ptr %a.data.gep2235, align 8
  %a.cap.gep2236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2231, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2236, align 8
  store ptr %a.new2231, ptr %var.new_pairs, align 8
  %var.load2237 = load ptr, ptr %var.ml, align 8
  %a.load2238 = load ptr, ptr %var.ml, align 8
  %a.null2239 = icmp eq ptr %a.load2238, null
  br i1 %a.null2239, label %a.create2240, label %a.after2241

choice.next2223:                                  ; preds = %choice.next2198
  %tag.gep2355 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2356 = load i64, ptr %tag.gep2355, align 8
  %tag.match2357 = icmp eq i64 %tag.id2356, 30
  br i1 %tag.match2357, label %choice.case2353, label %choice.next2354

a.create2240:                                     ; preds = %choice.case2222
  %arena.cur2242 = call ptr @dva_arena_current()
  %a.create2243 = call ptr @dva_arena_alloc(ptr %arena.cur2242, i64 24)
  %arena.cur2244 = call ptr @dva_arena_current()
  %a.buf2245 = call ptr @dva_arena_alloc(ptr %arena.cur2244, i64 128)
  %a.len.gep2246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2243, i32 0, i32 0
  store i64 0, ptr %a.len.gep2246, align 8
  %a.data.gep2247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2243, i32 0, i32 1
  store ptr %a.buf2245, ptr %a.data.gep2247, align 8
  %a.cap.gep2248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2248, align 8
  store ptr %a.create2243, ptr %var.ml, align 8
  br label %a.after2241

a.after2241:                                      ; preds = %a.create2240, %choice.case2222
  %a.load22249 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22249, i32 0, i32 0
  %arr.cycle.len2251 = load i64, ptr %arr.cycle.len2250, align 8
  %arr.cycle.data2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22249, i32 0, i32 1
  %arr.cycle.data2253 = load ptr, ptr %arr.cycle.data2252, align 8
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u2255 = load ptr, ptr %var._2229, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after2241
  %counter.load2256 = load i64, ptr %loop.idx.86, align 8
  %loop.cond2257 = icmp slt i64 %counter.load2256, %arr.cycle.len2251
  br i1 %loop.cond2257, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i2258 = sub i64 %counter.load2256, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep2259 = getelementptr i64, ptr %arr.cycle.data2253, i64 %counter.load2256
  %arr.elem.raw2260 = load i64, ptr %arr.elem.gep2259, align 8
  %slot.i2p2261 = inttoptr i64 %arr.elem.raw2260 to ptr
  store i64 %loop.rel.i2258, ptr %var._i2262, align 8
  store ptr %slot.i2p2261, ptr %var._2263, align 8
  store ptr %slot.i2p2261, ptr %var.p2254, align 8
  %var.load2264 = load ptr, ptr %var.p2254, align 8
  %fld.gep2265 = getelementptr inbounds { ptr, ptr }, ptr %var.load2264, i32 0, i32 0
  %fld.load2266 = load ptr, ptr %fld.gep2265, align 8
  %var.load2267 = load ptr, ptr %var.table, align 8
  %var.load2268 = load ptr, ptr %var.locals, align 8
  %a.load2269 = load ptr, ptr %var.locals, align 8
  %a.null2270 = icmp eq ptr %a.load2269, null
  br i1 %a.null2270, label %a.create2271, label %a.after2272

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %a.store2320
  %step.val2334 = load i64, ptr %loop.step.86, align 8
  %loop.next2335 = add i64 %counter.load2256, %step.val2334
  store i64 %loop.next2335, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  store ptr %cycle.prev.u2255, ptr %var._2229, align 8
  %arena.cur2336 = call ptr @dva_arena_current()
  %enum.alloc2337 = call ptr @dva_arena_alloc(ptr %arena.cur2336, i64 16)
  %tag.gep2338 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2337, i32 0, i32 0
  store i64 29, ptr %tag.gep2338, align 8
  %pay.gep2339 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2337, i32 0, i32 1
  %var.load2340 = load ptr, ptr %var.new_pairs, align 8
  %a.load2341 = load ptr, ptr %var.new_pairs, align 8
  %a.null2342 = icmp eq ptr %a.load2341, null
  br i1 %a.null2342, label %a.create2343, label %a.after2344

a.create2271:                                     ; preds = %loop.body.86
  %arena.cur2273 = call ptr @dva_arena_current()
  %a.create2274 = call ptr @dva_arena_alloc(ptr %arena.cur2273, i64 24)
  %arena.cur2275 = call ptr @dva_arena_current()
  %a.buf2276 = call ptr @dva_arena_alloc(ptr %arena.cur2275, i64 128)
  %a.len.gep2277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 0
  store i64 0, ptr %a.len.gep2277, align 8
  %a.data.gep2278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 1
  store ptr %a.buf2276, ptr %a.data.gep2278, align 8
  %a.cap.gep2279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2274, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2279, align 8
  store ptr %a.create2274, ptr %var.locals, align 8
  br label %a.after2272

a.after2272:                                      ; preds = %a.create2271, %loop.body.86
  %a.load22280 = load ptr, ptr %var.locals, align 8
  %var.load2281 = load ptr, ptr %var.cur_mod, align 8
  %call.res2282 = call ptr @"overloads::walk"(ptr %fld.load2266, ptr %var.load2267, ptr %a.load22280, ptr %var.load2281)
  %var.load2283 = load ptr, ptr %var.p2254, align 8
  %fld.gep2284 = getelementptr inbounds { ptr, ptr }, ptr %var.load2283, i32 0, i32 1
  %fld.load2285 = load ptr, ptr %fld.gep2284, align 8
  %var.load2286 = load ptr, ptr %var.table, align 8
  %var.load2287 = load ptr, ptr %var.locals, align 8
  %a.load2288 = load ptr, ptr %var.locals, align 8
  %a.null2289 = icmp eq ptr %a.load2288, null
  br i1 %a.null2289, label %a.create2290, label %a.after2291

a.create2290:                                     ; preds = %a.after2272
  %arena.cur2292 = call ptr @dva_arena_current()
  %a.create2293 = call ptr @dva_arena_alloc(ptr %arena.cur2292, i64 24)
  %arena.cur2294 = call ptr @dva_arena_current()
  %a.buf2295 = call ptr @dva_arena_alloc(ptr %arena.cur2294, i64 128)
  %a.len.gep2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2293, i32 0, i32 0
  store i64 0, ptr %a.len.gep2296, align 8
  %a.data.gep2297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2293, i32 0, i32 1
  store ptr %a.buf2295, ptr %a.data.gep2297, align 8
  %a.cap.gep2298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2293, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2298, align 8
  store ptr %a.create2293, ptr %var.locals, align 8
  br label %a.after2291

a.after2291:                                      ; preds = %a.create2290, %a.after2272
  %a.load22299 = load ptr, ptr %var.locals, align 8
  %var.load2300 = load ptr, ptr %var.cur_mod, align 8
  %call.res2301 = call ptr @"overloads::walk"(ptr %fld.load2285, ptr %var.load2286, ptr %a.load22299, ptr %var.load2300)
  %arena.cur2302 = call ptr @dva_arena_current()
  %rec.alloc2303 = call ptr @dva_arena_alloc(ptr %arena.cur2302, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2304 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2303, i32 0, i32 0
  store ptr %call.res2282, ptr %rec.fld2304, align 8
  %rec.fld2305 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2303, i32 0, i32 1
  store ptr %call.res2301, ptr %rec.fld2305, align 8
  %a.load2306 = load ptr, ptr %var.new_pairs, align 8
  %a.null2307 = icmp eq ptr %a.load2306, null
  br i1 %a.null2307, label %a.create2308, label %a.after2309

a.create2308:                                     ; preds = %a.after2291
  %arena.cur2310 = call ptr @dva_arena_current()
  %a.create2311 = call ptr @dva_arena_alloc(ptr %arena.cur2310, i64 24)
  %arena.cur2312 = call ptr @dva_arena_current()
  %a.buf2313 = call ptr @dva_arena_alloc(ptr %arena.cur2312, i64 128)
  %a.len.gep2314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2311, i32 0, i32 0
  store i64 0, ptr %a.len.gep2314, align 8
  %a.data.gep2315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2311, i32 0, i32 1
  store ptr %a.buf2313, ptr %a.data.gep2315, align 8
  %a.cap.gep2316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2311, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2316, align 8
  store ptr %a.create2311, ptr %var.new_pairs, align 8
  br label %a.after2309

a.after2309:                                      ; preds = %a.create2308, %a.after2291
  %a.load22317 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2318

a.check2318:                                      ; preds = %a.after2309
  %a.len2321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22317, i32 0, i32 0
  %a.len2322 = load i64, ptr %a.len2321, align 8
  %a.cap2323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22317, i32 0, i32 2
  %a.cap2324 = load i64, ptr %a.cap2323, align 8
  %a.needs.grow2325 = icmp eq i64 %a.len2322, %a.cap2324
  br i1 %a.needs.grow2325, label %a.grow2319, label %a.store2320

a.grow2319:                                       ; preds = %a.check2318
  call void @dva_array_grow(ptr %a.load22317)
  br label %a.store2320

a.store2320:                                      ; preds = %a.grow2319, %a.check2318
  %a.cur.data2326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22317, i32 0, i32 1
  %a.cur.data2327 = load ptr, ptr %a.cur.data2326, align 8
  %a.cur.len2328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22317, i32 0, i32 0
  %a.cur.len2329 = load i64, ptr %a.cur.len2328, align 8
  %a.elem.gep2330 = getelementptr i64, ptr %a.cur.data2327, i64 %a.cur.len2329
  %slot.p2i2331 = ptrtoint ptr %rec.alloc2303 to i64
  store i64 %slot.p2i2331, ptr %a.elem.gep2330, align 8
  %a.next.len2332 = add i64 %a.cur.len2329, 1
  %b.len.gep2333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22317, i32 0, i32 0
  store i64 %a.next.len2332, ptr %b.len.gep2333, align 8
  br label %loop.latch.86

a.create2343:                                     ; preds = %loop.exit.86
  %arena.cur2345 = call ptr @dva_arena_current()
  %a.create2346 = call ptr @dva_arena_alloc(ptr %arena.cur2345, i64 24)
  %arena.cur2347 = call ptr @dva_arena_current()
  %a.buf2348 = call ptr @dva_arena_alloc(ptr %arena.cur2347, i64 128)
  %a.len.gep2349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2346, i32 0, i32 0
  store i64 0, ptr %a.len.gep2349, align 8
  %a.data.gep2350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2346, i32 0, i32 1
  store ptr %a.buf2348, ptr %a.data.gep2350, align 8
  %a.cap.gep2351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2351, align 8
  store ptr %a.create2346, ptr %var.new_pairs, align 8
  br label %a.after2344

a.after2344:                                      ; preds = %a.create2343, %loop.exit.86
  %a.load22352 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22352, ptr %pay.gep2339, align 8
  br label %choice.exit

choice.case2353:                                  ; preds = %choice.next2223
  %pay.gep2358 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2359 = load ptr, ptr %pay.gep2358, align 8
  store ptr %payload.ptr2359, ptr %var._2360, align 8
  store ptr %payload.ptr2359, ptr %var.ct, align 8
  %var.load2361 = load ptr, ptr %var.ct, align 8
  %var.load2362 = load ptr, ptr %var.table, align 8
  %var.load2363 = load ptr, ptr %var.locals, align 8
  %a.load2364 = load ptr, ptr %var.locals, align 8
  %a.null2365 = icmp eq ptr %a.load2364, null
  br i1 %a.null2365, label %a.create2366, label %a.after2367

choice.next2354:                                  ; preds = %choice.next2223
  %tag.gep2385 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2386 = load i64, ptr %tag.gep2385, align 8
  %tag.match2387 = icmp eq i64 %tag.id2386, 25
  br i1 %tag.match2387, label %choice.case2383, label %choice.next2384

a.create2366:                                     ; preds = %choice.case2353
  %arena.cur2368 = call ptr @dva_arena_current()
  %a.create2369 = call ptr @dva_arena_alloc(ptr %arena.cur2368, i64 24)
  %arena.cur2370 = call ptr @dva_arena_current()
  %a.buf2371 = call ptr @dva_arena_alloc(ptr %arena.cur2370, i64 128)
  %a.len.gep2372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 0
  store i64 0, ptr %a.len.gep2372, align 8
  %a.data.gep2373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 1
  store ptr %a.buf2371, ptr %a.data.gep2373, align 8
  %a.cap.gep2374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2369, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2374, align 8
  store ptr %a.create2369, ptr %var.locals, align 8
  br label %a.after2367

a.after2367:                                      ; preds = %a.create2366, %choice.case2353
  %a.load22375 = load ptr, ptr %var.locals, align 8
  %var.load2376 = load ptr, ptr %var.cur_mod, align 8
  %call.res2377 = call ptr @"overloads::walk"(ptr %var.load2361, ptr %var.load2362, ptr %a.load22375, ptr %var.load2376)
  store ptr %call.res2377, ptr %var.new_ce, align 8
  %arena.cur2378 = call ptr @dva_arena_current()
  %enum.alloc2379 = call ptr @dva_arena_alloc(ptr %arena.cur2378, i64 16)
  %tag.gep2380 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2379, i32 0, i32 0
  store i64 30, ptr %tag.gep2380, align 8
  %pay.gep2381 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2379, i32 0, i32 1
  %var.load2382 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2382, ptr %pay.gep2381, align 8
  br label %choice.exit

choice.case2383:                                  ; preds = %choice.next2354
  %pay.gep2388 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2389 = load ptr, ptr %pay.gep2388, align 8
  store ptr %payload.ptr2389, ptr %var._2390, align 8
  store ptr %payload.ptr2389, ptr %var.cp2391, align 8
  %arena.cur2392 = call ptr @dva_arena_current()
  %enum.alloc2393 = call ptr @dva_arena_alloc(ptr %arena.cur2392, i64 16)
  %tag.gep2394 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2393, i32 0, i32 0
  store i64 25, ptr %tag.gep2394, align 8
  %pay.gep2395 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2393, i32 0, i32 1
  %var.load2396 = load ptr, ptr %var.cp2391, align 8
  %var.load2397 = load ptr, ptr %var.table, align 8
  %var.load2398 = load ptr, ptr %var.locals, align 8
  %a.load2399 = load ptr, ptr %var.locals, align 8
  %a.null2400 = icmp eq ptr %a.load2399, null
  br i1 %a.null2400, label %a.create2401, label %a.after2402

choice.next2384:                                  ; preds = %choice.next2354
  %tag.gep2415 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2416 = load i64, ptr %tag.gep2415, align 8
  %tag.match2417 = icmp eq i64 %tag.id2416, 27
  br i1 %tag.match2417, label %choice.case2413, label %choice.next2414

a.create2401:                                     ; preds = %choice.case2383
  %arena.cur2403 = call ptr @dva_arena_current()
  %a.create2404 = call ptr @dva_arena_alloc(ptr %arena.cur2403, i64 24)
  %arena.cur2405 = call ptr @dva_arena_current()
  %a.buf2406 = call ptr @dva_arena_alloc(ptr %arena.cur2405, i64 128)
  %a.len.gep2407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2404, i32 0, i32 0
  store i64 0, ptr %a.len.gep2407, align 8
  %a.data.gep2408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2404, i32 0, i32 1
  store ptr %a.buf2406, ptr %a.data.gep2408, align 8
  %a.cap.gep2409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2404, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2409, align 8
  store ptr %a.create2404, ptr %var.locals, align 8
  br label %a.after2402

a.after2402:                                      ; preds = %a.create2401, %choice.case2383
  %a.load22410 = load ptr, ptr %var.locals, align 8
  %var.load2411 = load ptr, ptr %var.cur_mod, align 8
  %call.res2412 = call ptr @"overloads::walk"(ptr %var.load2396, ptr %var.load2397, ptr %a.load22410, ptr %var.load2411)
  store ptr %call.res2412, ptr %pay.gep2395, align 8
  br label %choice.exit

choice.case2413:                                  ; preds = %choice.next2384
  %pay.gep2418 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2419 = load ptr, ptr %pay.gep2418, align 8
  store ptr %payload.ptr2419, ptr %var._2420, align 8
  store ptr %payload.ptr2419, ptr %var.bc, align 8
  %arena.cur2421 = call ptr @dva_arena_current()
  %enum.alloc2422 = call ptr @dva_arena_alloc(ptr %arena.cur2421, i64 16)
  %tag.gep2423 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2422, i32 0, i32 0
  store i64 27, ptr %tag.gep2423, align 8
  %pay.gep2424 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2422, i32 0, i32 1
  %var.load2425 = load ptr, ptr %var.bc, align 8
  %var.load2426 = load ptr, ptr %var.table, align 8
  %var.load2427 = load ptr, ptr %var.locals, align 8
  %a.load2428 = load ptr, ptr %var.locals, align 8
  %a.null2429 = icmp eq ptr %a.load2428, null
  br i1 %a.null2429, label %a.create2430, label %a.after2431

choice.next2414:                                  ; preds = %choice.next2384
  %var.load2442 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2430:                                     ; preds = %choice.case2413
  %arena.cur2432 = call ptr @dva_arena_current()
  %a.create2433 = call ptr @dva_arena_alloc(ptr %arena.cur2432, i64 24)
  %arena.cur2434 = call ptr @dva_arena_current()
  %a.buf2435 = call ptr @dva_arena_alloc(ptr %arena.cur2434, i64 128)
  %a.len.gep2436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2433, i32 0, i32 0
  store i64 0, ptr %a.len.gep2436, align 8
  %a.data.gep2437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2433, i32 0, i32 1
  store ptr %a.buf2435, ptr %a.data.gep2437, align 8
  %a.cap.gep2438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2438, align 8
  store ptr %a.create2433, ptr %var.locals, align 8
  br label %a.after2431

a.after2431:                                      ; preds = %a.create2430, %choice.case2413
  %a.load22439 = load ptr, ptr %var.locals, align 8
  %var.load2440 = load ptr, ptr %var.cur_mod, align 8
  %call.res2441 = call ptr @"overloads::walk"(ptr %var.load2425, ptr %var.load2426, ptr %a.load22439, ptr %var.load2440)
  store ptr %call.res2441, ptr %pay.gep2424, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._104 = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.c, align 8
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load15 = load ptr, ptr %var.c, align 8
  %fld.gep16 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 1
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %call.res = call ptr @"overloads::name_of"(ptr %fld.load17)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %fld.load14, %choice.then ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.original, align 8
  %var.load18 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur19 = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create20, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load22 = load ptr, ptr %var.original, align 8
  %call.res23 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load22)
  %nottmp = xor i1 %call.res23, true
  br i1 %nottmp, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %a.after
  %var.load27 = load ptr, ptr %var.ctx, align 8
  %var.load28 = load ptr, ptr %var.original, align 8
  %var.load29 = load ptr, ptr %var.cur_mod, align 8
  %call.res30 = call ptr @"overloads::resolve_family_name"(ptr %var.load27, ptr %var.load28, ptr %var.load29)
  br label %choice.exit26

choice.else25:                                    ; preds = %a.after
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res31 = phi ptr [ %call.res30, %choice.then24 ], [ @str.1.struct, %choice.else25 ]
  store ptr %choice.res31, ptr %var.fam, align 8
  %var.load32 = load ptr, ptr %var.fam, align 8
  %eq.lhs.len33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len33, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.lhs.len34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_gen_check38:                                  ; preds = %choice.exit26
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %choice.exit26
  %eq.rhs.len43 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %str.tag45 = lshr i64 %eq.rhs.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

str_stale40:                                      ; preds = %str_gen_check38
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

str_gen_check47:                                  ; preds = %str_ok39
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %str_ok39
  %eq.len52 = icmp eq i64 %eq.lhs.len35, %eq.rhs.len44
  br i1 %eq.len52, label %str.eq.then53, label %str.eq.else54

str_stale49:                                      ; preds = %str_gen_check47
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

str.eq.then53:                                    ; preds = %str_ok48
  %eq.lhs.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data56, align 8
  %eq.rhs.data58 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp59 = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len35)
  %eq.cmp.zero60 = icmp eq i32 %eq.memcmp59, 0
  br label %str.eq.merge55

str.eq.else54:                                    ; preds = %str_ok48
  br label %str.eq.merge55

str.eq.merge55:                                   ; preds = %str.eq.else54, %str.eq.then53
  %str.eq.result61 = phi i1 [ %eq.cmp.zero60, %str.eq.then53 ], [ false, %str.eq.else54 ]
  %str.neq62 = xor i1 %str.eq.result61, true
  store i1 %str.neq62, ptr %var.family, align 1
  %var.load63 = load i1, ptr %var.family, align 1
  br i1 %var.load63, label %choice.then64, label %choice.else65

choice.then64:                                    ; preds = %str.eq.merge55
  %var.load67 = load ptr, ptr %var.fam, align 8
  %var.load68 = load ptr, ptr %var.c, align 8
  %fld.gep69 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 2
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load70, i32 0, i32 0
  %a.len.query71 = load i64, ptr %a.len.query, align 8
  %call.res72 = call ptr @"overloads::symbol"(ptr %var.load67, i64 %a.len.query71)
  br label %choice.exit66

choice.else65:                                    ; preds = %str.eq.merge55
  %var.load73 = load ptr, ptr %var.c, align 8
  %fld.gep74 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 0
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res76 = phi ptr [ %call.res72, %choice.then64 ], [ %fld.load75, %choice.else65 ]
  store ptr %choice.res76, ptr %var.target_name, align 8
  %var.load77 = load i1, ptr %var.family, align 1
  br i1 %var.load77, label %choice.then78, label %choice.else79

choice.then78:                                    ; preds = %choice.exit66
  %var.load81 = load ptr, ptr %var.ctx, align 8
  %var.load82 = load ptr, ptr %var.fam, align 8
  %var.load83 = load ptr, ptr %var.c, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load83, i32 0, i32 2
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %a.len.query86 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 0
  %a.len.query87 = load i64, ptr %a.len.query86, align 8
  %call.res88 = call ptr @"overloads::signature"(ptr %var.load81, ptr %var.load82, i64 %a.len.query87)
  br label %choice.exit80

choice.else79:                                    ; preds = %choice.exit66
  %call.res89 = call ptr @"overloads::unknown"()
  br label %choice.exit80

choice.exit80:                                    ; preds = %choice.else79, %choice.then78
  %choice.res90 = phi ptr [ %call.res88, %choice.then78 ], [ %call.res89, %choice.else79 ]
  store ptr %choice.res90, ptr %var.expected, align 8
  %arena.cur91 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 24)
  %arena.cur92 = call ptr @dva_arena_current()
  %a.buf93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 128)
  %a.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep94, align 8
  %a.data.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf93, ptr %a.data.gep95, align 8
  %a.cap.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep96, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load97 = load ptr, ptr %var.c, align 8
  %fld.gep98 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load97, i32 0, i32 2
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load99, i32 0, i32 0
  %arr.cycle.len100 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load99, i32 0, i32 1
  %arr.cycle.data101 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.74, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %choice.exit80
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len100
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data101, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load102 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
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
  %var.load211 = load i1, ptr %var.family, align 1
  br i1 %var.load211, label %choice.then212, label %choice.else213

choice.exit103:                                   ; preds = %choice.next, %choice.exit113
  %choice.res160 = phi ptr [ %choice.res158, %choice.exit113 ], [ %call.res159, %choice.next ]
  store ptr %choice.res160, ptr %var.arg_ti, align 8
  %var.load161 = load ptr, ptr %var.a, align 8
  %var.load162 = load ptr, ptr %var.ctx, align 8
  %var.load163 = load ptr, ptr %var.locals, align 8
  %a.load164 = load ptr, ptr %var.locals, align 8
  %a.null165 = icmp eq ptr %a.load164, null
  br i1 %a.null165, label %a.create166, label %a.after167

choice.case:                                      ; preds = %loop.body.74
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._104, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load105 = load i64, ptr %var.i, align 8
  %var.load106 = load ptr, ptr %var.f, align 8
  %fld.gep107 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load106, i32 0, i32 1
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %a.len.query109 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load108, i32 0, i32 0
  %a.len.query110 = load i64, ptr %a.len.query109, align 8
  %cmptmp = icmp slt i64 %var.load105, %a.len.query110
  br i1 %cmptmp, label %choice.then111, label %choice.else112

choice.next:                                      ; preds = %loop.body.74
  %call.res159 = call ptr @"overloads::unknown"()
  br label %choice.exit103

choice.then111:                                   ; preds = %choice.case
  %var.load114 = load ptr, ptr %var.f, align 8
  %fld.gep115 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load114, i32 0, i32 1
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %var.load117 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load116, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.else112:                                   ; preds = %choice.case
  %call.res157 = call ptr @"overloads::unknown"()
  br label %choice.exit113

choice.exit113:                                   ; preds = %choice.else112, %unwrap.pos.75
  %choice.res158 = phi ptr [ %pay.ptr, %unwrap.pos.75 ], [ %call.res157, %choice.else112 ]
  br label %choice.exit103

a.rd.check:                                       ; preds = %choice.then111
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load116, i32 0, i32 0
  %a.rd.len118 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load117, 0
  %a.rd.lt = icmp slt i64 %var.load117, %a.rd.len118
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load116, i32 0, i32 1
  %a.rd.data119 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data119, i64 %var.load117
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then111
  %arena.cur120 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
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
  %arena.cur121 = call ptr @dva_arena_current()
  %err.alloc122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 56)
  %err.code.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 0
  store i64 4011, ptr %err.code.gep123, align 8
  %err.msg.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep124, align 8
  %err.file.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep125, align 8
  %err.line.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 3
  store i64 0, ptr %err.line.gep126, align 8
  %err.col.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 4
  store i64 0, ptr %err.col.gep127, align 8
  %err.ctx.gep128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc122, i32 0, i32 5
  %err.ctx0.gep129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep128, i32 0, i32 0
  store i64 %var.load117, ptr %err.ctx0.gep129, align 8
  %err.ctx1.gep130 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep128, i32 0, i32 1
  store i64 %a.rd.len118, ptr %err.ctx1.gep130, align 8
  %err.p2i131 = ptrtoint ptr %err.alloc122 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i131, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  br label %choice.exit113

unwrap.abort.75:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep132 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep132, align 8
  %err.msg.gep133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep133, align 8
  %err.file.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep134, align 8
  %err.line.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep135, align 8
  %err.col.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep136, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len137 = load i64, ptr %err.msg.len, align 8
  %err.msg.len138 = and i64 %err.msg.len137, 281474976710655
  %str.tag139 = lshr i64 %err.msg.len137, 48
  %str.immortal140 = icmp eq i64 %str.tag139, 0
  br i1 %str.immortal140, label %str_ok142, label %str_gen_check141

str_gen_check141:                                 ; preds = %unwrap.abort.75
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid145 = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag139)
  br i1 %tag.valid145, label %str_ok142, label %str_stale143

str_ok142:                                        ; preds = %str_stale143, %str_gen_check141, %unwrap.abort.75
  %err.msg.len32 = trunc i64 %err.msg.len138 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data146 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len147 = load i64, ptr %err.file.len, align 8
  %err.file.len148 = and i64 %err.file.len147, 281474976710655
  %str.tag149 = lshr i64 %err.file.len147, 48
  %str.immortal150 = icmp eq i64 %str.tag149, 0
  br i1 %str.immortal150, label %str_ok152, label %str_gen_check151

str_stale143:                                     ; preds = %str_gen_check141
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok142

str_gen_check151:                                 ; preds = %str_ok142
  %arena.cur154 = call ptr @dva_arena_current()
  %tag.valid155 = call i1 @dva_arena_validate_tag(ptr %arena.cur154, i64 %str.tag149)
  br i1 %tag.valid155, label %str_ok152, label %str_stale153

str_ok152:                                        ; preds = %str_stale153, %str_gen_check151, %str_ok142
  %err.file.len32 = trunc i64 %err.file.len148 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data156 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale153:                                     ; preds = %str_gen_check151
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok152

err.thread:                                       ; preds = %str_ok152
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok152
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data146, i32 %err.file.len32, ptr %err.file.data156, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create166:                                      ; preds = %choice.exit103
  %arena.cur168 = call ptr @dva_arena_current()
  %a.create169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 24)
  %arena.cur170 = call ptr @dva_arena_current()
  %a.buf171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 128)
  %a.len.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 0
  store i64 0, ptr %a.len.gep172, align 8
  %a.data.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 1
  store ptr %a.buf171, ptr %a.data.gep173, align 8
  %a.cap.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 2
  store i64 16, ptr %a.cap.gep174, align 8
  store ptr %a.create169, ptr %var.locals, align 8
  br label %a.after167

a.after167:                                       ; preds = %a.create166, %choice.exit103
  %a.load2175 = load ptr, ptr %var.locals, align 8
  %var.load176 = load ptr, ptr %var.cur_mod, align 8
  %call.res177 = call ptr @"overloads::walk"(ptr %var.load161, ptr %var.load162, ptr %a.load2175, ptr %var.load176)
  %var.load178 = load ptr, ptr %var.arg_ti, align 8
  %var.load179 = load ptr, ptr %var.ctx, align 8
  %var.load180 = load ptr, ptr %var.locals, align 8
  %a.load181 = load ptr, ptr %var.locals, align 8
  %a.null182 = icmp eq ptr %a.load181, null
  br i1 %a.null182, label %a.create183, label %a.after184

a.create183:                                      ; preds = %a.after167
  %arena.cur185 = call ptr @dva_arena_current()
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = call ptr @dva_arena_current()
  %a.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 128)
  %a.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 0
  store i64 0, ptr %a.len.gep189, align 8
  %a.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 1
  store ptr %a.buf188, ptr %a.data.gep190, align 8
  %a.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 2
  store i64 16, ptr %a.cap.gep191, align 8
  store ptr %a.create186, ptr %var.locals, align 8
  br label %a.after184

a.after184:                                       ; preds = %a.create183, %a.after167
  %a.load2192 = load ptr, ptr %var.locals, align 8
  %var.load193 = load ptr, ptr %var.cur_mod, align 8
  %call.res194 = call ptr @"overloads::select_value"(ptr %call.res177, ptr %var.load178, ptr %var.load179, ptr %a.load2192, ptr %var.load193)
  %a.load195 = load ptr, ptr %var.args, align 8
  %a.null196 = icmp eq ptr %a.load195, null
  br i1 %a.null196, label %a.create197, label %a.after198

a.create197:                                      ; preds = %a.after184
  %arena.cur199 = call ptr @dva_arena_current()
  %a.create200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 24)
  %arena.cur201 = call ptr @dva_arena_current()
  %a.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 128)
  %a.len.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 0
  store i64 0, ptr %a.len.gep203, align 8
  %a.data.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 1
  store ptr %a.buf202, ptr %a.data.gep204, align 8
  %a.cap.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create200, i32 0, i32 2
  store i64 16, ptr %a.cap.gep205, align 8
  store ptr %a.create200, ptr %var.args, align 8
  br label %a.after198

a.after198:                                       ; preds = %a.create197, %a.after184
  %a.load2206 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after198
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 0
  %a.len207 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 2
  %a.cap208 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len207, %a.cap208
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2206)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 1
  %a.cur.data209 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 0
  %a.cur.len210 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data209, i64 %a.cur.len210
  %slot.p2i = ptrtoint ptr %call.res194 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len210, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2206, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.74

choice.then212:                                   ; preds = %loop.exit.74
  %arena.cur215 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %tag.gep216 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep216, align 8
  %pay.gep217 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load218 = load ptr, ptr %var.target_name, align 8
  store ptr %var.load218, ptr %pay.gep217, align 8
  br label %choice.exit214

choice.else213:                                   ; preds = %loop.exit.74
  %var.load219 = load ptr, ptr %var.c, align 8
  %fld.gep220 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load219, i32 0, i32 1
  %fld.load221 = load ptr, ptr %fld.gep220, align 8
  %var.load222 = load ptr, ptr %var.ctx, align 8
  %var.load223 = load ptr, ptr %var.locals, align 8
  %a.load224 = load ptr, ptr %var.locals, align 8
  %a.null225 = icmp eq ptr %a.load224, null
  br i1 %a.null225, label %a.create226, label %a.after227

choice.exit214:                                   ; preds = %a.after227, %choice.then212
  %choice.res238 = phi ptr [ %enum.alloc, %choice.then212 ], [ %call.res237, %a.after227 ]
  store ptr %choice.res238, ptr %var.target, align 8
  %var.load239 = load ptr, ptr %var.target_name, align 8
  %var.load240 = load ptr, ptr %var.target, align 8
  %var.load241 = load ptr, ptr %var.args, align 8
  %a.load242 = load ptr, ptr %var.args, align 8
  %a.null243 = icmp eq ptr %a.load242, null
  br i1 %a.null243, label %a.create244, label %a.after245

a.create226:                                      ; preds = %choice.else213
  %arena.cur228 = call ptr @dva_arena_current()
  %a.create229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 24)
  %arena.cur230 = call ptr @dva_arena_current()
  %a.buf231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 128)
  %a.len.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 0
  store i64 0, ptr %a.len.gep232, align 8
  %a.data.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 1
  store ptr %a.buf231, ptr %a.data.gep233, align 8
  %a.cap.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep234, align 8
  store ptr %a.create229, ptr %var.locals, align 8
  br label %a.after227

a.after227:                                       ; preds = %a.create226, %choice.else213
  %a.load2235 = load ptr, ptr %var.locals, align 8
  %var.load236 = load ptr, ptr %var.cur_mod, align 8
  %call.res237 = call ptr @"overloads::walk"(ptr %fld.load221, ptr %var.load222, ptr %a.load2235, ptr %var.load236)
  br label %choice.exit214

a.create244:                                      ; preds = %choice.exit214
  %arena.cur246 = call ptr @dva_arena_current()
  %a.create247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 24)
  %arena.cur248 = call ptr @dva_arena_current()
  %a.buf249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 128)
  %a.len.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 0
  store i64 0, ptr %a.len.gep250, align 8
  %a.data.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 1
  store ptr %a.buf249, ptr %a.data.gep251, align 8
  %a.cap.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 2
  store i64 16, ptr %a.cap.gep252, align 8
  store ptr %a.create247, ptr %var.args, align 8
  br label %a.after245

a.after245:                                       ; preds = %a.create244, %choice.exit214
  %a.load2253 = load ptr, ptr %var.args, align 8
  %var.load254 = load ptr, ptr %var.c, align 8
  %fld.gep255 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load254, i32 0, i32 3
  %fld.load256 = load i64, ptr %fld.gep255, align 8
  %var.load257 = load ptr, ptr %var.c, align 8
  %fld.gep258 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load257, i32 0, i32 4
  %fld.load259 = load i64, ptr %fld.gep258, align 8
  %arena.cur260 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load239, ptr %rec.fld, align 8
  %rec.fld261 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load240, ptr %rec.fld261, align 8
  %rec.fld262 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2253, ptr %rec.fld262, align 8
  %rec.fld263 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load256, ptr %rec.fld263, align 8
  %rec.fld264 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load259, ptr %rec.fld264, align 8
  ret ptr %rec.alloc
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"overloads::resolve"(ptr %0) #1 {
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

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
