; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
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
@clo.const.5 = internal constant { ptr, ptr } { ptr @"overloads::has_variants", ptr null }
@"var.overloads::has_variants" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"overloads::signature", ptr null }
@"var.overloads::signature" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"overloads::select_value", ptr null }
@"var.overloads::select_value" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"overloads::application", ptr null }
@"var.overloads::application" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"overloads::keep_type", ptr null }
@"var.overloads::keep_type" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"overloads::keep_fparams", ptr null }
@"var.overloads::keep_fparams" = global ptr null
@str.3 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.3 }
@str.4 = internal unnamed_addr constant [14 x i8] c"overloads.dva\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.4 }
@str.5 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.5 }
@dva_thread_rec = external thread_local global ptr
@clo.const.11 = internal constant { ptr, ptr } { ptr @"overloads::walk_call", ptr null }
@str.6 = internal unnamed_addr constant [16 x i8] c"#overload_local\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.6 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"overloads::walk", ptr null }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"overloads::walk_many", ptr null }
@"var.overloads::walk_many" = global ptr null
@"var.overloads::walk_call" = global ptr null
@"var.overloads::walk" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"overloads::resolve", ptr null }
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

define internal void @__dva_global_init_overloads() #1 {
entry:
  store ptr @clo.const, ptr @"var.overloads::unknown", align 8
  store ptr @clo.const.1, ptr @"var.overloads::contains", align 8
  store ptr @clo.const.2, ptr @"var.overloads::name_of", align 8
  store ptr @clo.const.3, ptr @"var.overloads::symbol", align 8
  store ptr @clo.const.4, ptr @"var.overloads::is_family", align 8
  store ptr @clo.const.5, ptr @"var.overloads::has_variants", align 8
  store ptr @clo.const.6, ptr @"var.overloads::signature", align 8
  store ptr @clo.const.7, ptr @"var.overloads::select_value", align 8
  store ptr @clo.const.8, ptr @"var.overloads::application", align 8
  store ptr @clo.const.9, ptr @"var.overloads::keep_type", align 8
  store ptr @clo.const.10, ptr @"var.overloads::keep_fparams", align 8
  store ptr @clo.const.13, ptr @"var.overloads::walk_many", align 8
  store ptr @clo.const.11, ptr @"var.overloads::walk_call", align 8
  store ptr @clo.const.12, ptr @"var.overloads::walk", align 8
  store ptr @clo.const.14, ptr @"var.overloads::resolve", align 8
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
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.header.57:                                   ; preds = %loop.latch.57, %a.after
  %counter.load = load i64, ptr %loop.idx.57, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.57, label %loop.exit.nat.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.57, align 8
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

loop.exit.nat.57:                                 ; preds = %loop.header.57
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.57, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %loop.exit.nat.57
  %var.load21 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load21

str_gen_check:                                    ; preds = %loop.body.57
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.57
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
  br label %loop.latch.57
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

define i1 @"overloads::has_variants"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %loop.step.58 = alloca i64, align 8
  %loop.idx.58 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.header.58:                                   ; preds = %loop.latch.58, %entry
  %counter.load = load i64, ptr %loop.idx.58, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len1
  br i1 %loop.cond, label %loop.body.58, label %loop.exit.nat.58

loop.body.58:                                     ; preds = %loop.header.58
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.58, align 8
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

loop.exit.nat.58:                                 ; preds = %loop.header.58
  br label %loop.exit.58

loop.latch.58:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.58, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.exit.58:                                     ; preds = %loop.exit.nat.58
  %var.load33 = load i1, ptr %"var.result'", align 1
  ret i1 %var.load33

str_gen_check:                                    ; preds = %loop.body.58
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.58
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
  br label %loop.latch.58

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
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %entry
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len1
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
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

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load34 = load ptr, ptr %"var.result'", align 8
  ret ptr %var.load34

str_gen_check:                                    ; preds = %loop.body.59
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.59
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
  br i1 %str.eq.result, label %and.60.then, label %and.60.else

and.60.then:                                      ; preds = %str.eq.merge
  %var.load20 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp slt i64 %var.load20, 0
  br i1 %cmptmp, label %or.61.then, label %or.61.else

and.60.else:                                      ; preds = %str.eq.merge
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %or.61.exit
  %and.60.phi = phi i1 [ %or.61.phi, %or.61.exit ], [ %str.eq.result, %and.60.else ]
  br i1 %and.60.phi, label %choice.then, label %choice.exit

or.61.then:                                       ; preds = %and.60.then
  br label %or.61.exit

or.61.else:                                       ; preds = %and.60.then
  %var.load21 = load ptr, ptr %var.d, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %var.load24 = load i64, ptr %var.arity, align 8
  %cmptmp25 = icmp eq i64 %fld.load23, %var.load24
  br label %or.61.exit

or.61.exit:                                       ; preds = %or.61.else, %or.61.then
  %or.61.phi = phi i1 [ %cmptmp, %or.61.then ], [ %cmptmp25, %or.61.else ]
  br label %and.60.exit

choice.then:                                      ; preds = %and.60.exit
  %var.load26 = load ptr, ptr %var.d, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit29, %and.60.exit
  br label %loop.latch.59

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

define ptr @"overloads::select_value"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.f = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.expected, align 8
  store ptr %2, ptr %var.ctx, align 8
  store ptr %3, ptr %var.locals, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"overloads::name_of"(ptr %var.load)
  store ptr %call.res, ptr %var.n, align 8
  %var.load1 = load ptr, ptr %var.ctx, align 8
  %var.load2 = load ptr, ptr %var.n, align 8
  %call.res3 = call i1 @"overloads::is_family"(ptr %var.load1, ptr %var.load2)
  br i1 %call.res3, label %and.62.then, label %and.62.else

and.62.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.62.else:                                      ; preds = %entry
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %a.after
  %and.62.phi = phi i1 [ %nottmp, %a.after ], [ %call.res3, %and.62.else ]
  br i1 %and.62.phi, label %choice.then, label %choice.else

a.create:                                         ; preds = %and.62.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.62.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load7 = load ptr, ptr %var.n, align 8
  %call.res8 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load7)
  %nottmp = xor i1 %call.res8, true
  br label %and.62.exit

choice.then:                                      ; preds = %and.62.exit
  %var.load9 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %and.62.exit
  %var.load19 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit10
  %choice.res20 = phi ptr [ %choice.res, %choice.exit10 ], [ %var.load19, %choice.else ]
  ret ptr %choice.res20

choice.exit10:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %var.load18, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %arena.cur11 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep12, align 8
  %pay.gep13 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load14 = load ptr, ptr %var.n, align 8
  %var.load15 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load15, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query16 = load i64, ptr %a.len.query, align 8
  %call.res17 = call ptr @"overloads::symbol"(ptr %var.load14, i64 %a.len.query16)
  store ptr %call.res17, ptr %pay.gep13, align 8
  br label %choice.exit10

choice.next:                                      ; preds = %choice.then
  %var.load18 = load ptr, ptr %var.e, align 8
  br label %choice.exit10
}

define ptr @"overloads::application"(ptr %0) #1 {
entry:
  %var._92 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %loop.step.63 = alloca i64, align 8
  %loop.idx.63 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.63, align 8
  %cycle.prev.u = load ptr, ptr %var._65, align 8
  br label %loop.header.63

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

loop.header.63:                                   ; preds = %loop.latch.63, %choice.exit69
  %counter.load = load i64, ptr %loop.idx.63, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len90
  br i1 %loop.cond, label %loop.body.63, label %loop.exit.nat.63

loop.body.63:                                     ; preds = %loop.header.63
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.63, align 8
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

loop.exit.nat.63:                                 ; preds = %loop.header.63
  br label %loop.exit.63

loop.latch.63:                                    ; preds = %a.store108
  %step.val = load i64, ptr %loop.step.63, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.63, align 8
  br label %loop.header.63

loop.exit.63:                                     ; preds = %loop.exit.nat.63
  store ptr %cycle.prev.u, ptr %var._65, align 8
  %var.load122 = load ptr, ptr %var.b, align 8
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load122, i32 0, i32 0
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %tag.gep128 = getelementptr inbounds { i64, ptr }, ptr %fld.load124, i32 0, i32 0
  %tag.id129 = load i64, ptr %tag.gep128, align 8
  %tag.match130 = icmp eq i64 %tag.id129, 14
  br i1 %tag.match130, label %choice.case126, label %choice.next127

a.create96:                                       ; preds = %loop.body.63
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

a.after97:                                        ; preds = %a.create96, %loop.body.63
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
  br label %loop.latch.63

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

choice.case126:                                   ; preds = %loop.exit.63
  %var.load131 = load ptr, ptr %var.arg, align 8
  %a.load132 = load ptr, ptr %var.args, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.next127:                                   ; preds = %loop.exit.63
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

define ptr @"overloads::walk_many"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.result = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  store ptr %0, ptr %var.exprs, align 8
  store ptr %1, ptr %var.ctx, align 8
  store ptr %2, ptr %var.locals, align 8
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
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.header.64:                                   ; preds = %loop.latch.64, %a.after
  %counter.load = load i64, ptr %loop.idx.64, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
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

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load42 = load ptr, ptr %var.result, align 8
  %a.load43 = load ptr, ptr %var.result, align 8
  %a.null44 = icmp eq ptr %a.load43, null
  br i1 %a.null44, label %a.create45, label %a.after46

a.create16:                                       ; preds = %loop.body.64
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

a.after17:                                        ; preds = %a.create16, %loop.body.64
  %a.load225 = load ptr, ptr %var.locals, align 8
  %call.res = call ptr @"overloads::walk"(ptr %var.load11, ptr %var.load12, ptr %a.load225)
  %a.load26 = load ptr, ptr %var.result, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

a.create28:                                       ; preds = %a.after17
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.result, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %a.after17
  %a.load237 = load ptr, ptr %var.result, align 8
  br label %a.check

a.check:                                          ; preds = %a.after29
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.len38 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 2
  %a.cap39 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len38, %a.cap39
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load237)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.cur.data40 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.cur.len41 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data40, i64 %a.cur.len41
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len41, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.64

a.create45:                                       ; preds = %loop.exit.64
  %arena.cur47 = call ptr @dva_arena_current()
  %a.create48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur49 = call ptr @dva_arena_current()
  %a.buf50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 128)
  %a.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 0
  store i64 0, ptr %a.len.gep51, align 8
  %a.data.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 1
  store ptr %a.buf50, ptr %a.data.gep52, align 8
  %a.cap.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 2
  store i64 16, ptr %a.cap.gep53, align 8
  store ptr %a.create48, ptr %var.result, align 8
  br label %a.after46

a.after46:                                        ; preds = %a.create45, %loop.exit.64
  %a.load254 = load ptr, ptr %var.result, align 8
  ret ptr %a.load254
}

define ptr @"overloads::walk"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.bc = alloca ptr, align 8
  %var._2259 = alloca ptr, align 8
  %var.cp2231 = alloca ptr, align 8
  %var._2230 = alloca ptr, align 8
  %var.new_ce = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._2201 = alloca ptr, align 8
  %var._2106 = alloca ptr, align 8
  %var._i2105 = alloca i64, align 8
  %var.p2097 = alloca ptr, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.new_pairs = alloca ptr, align 8
  %var.ml = alloca ptr, align 8
  %var._2072 = alloca ptr, align 8
  %var.new_sti = alloca ptr, align 8
  %var.so = alloca ptr, align 8
  %var._2047 = alloca ptr, align 8
  %var.new_addr = alloca ptr, align 8
  %var.rm = alloca ptr, align 8
  %var._2005 = alloca ptr, align 8
  %var.new_msg = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1959 = alloca ptr, align 8
  %var.new_elem = alloca ptr, align 8
  %var.ac = alloca ptr, align 8
  %var._1934 = alloca ptr, align 8
  %var.new_val1906 = alloca ptr, align 8
  %var.r1877 = alloca ptr, align 8
  %var._1876 = alloca ptr, align 8
  %var.new_ex = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1847 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1819 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1791 = alloca ptr, align 8
  %var.new_expr = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1753 = alloca ptr, align 8
  %var.new_args = alloca ptr, align 8
  %var.v1703 = alloca ptr, align 8
  %var._1702 = alloca ptr, align 8
  %var.new_val1682 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1663 = alloca ptr, align 8
  %var.new_rhs1633 = alloca ptr, align 8
  %var.new_lhs1604 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1575 = alloca ptr, align 8
  %var.new_br = alloca ptr, align 8
  %var.new_cy = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1521 = alloca ptr, align 8
  %var.new_fn = alloca ptr, align 8
  %var.new_iter = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1463 = alloca ptr, align 8
  %var.new_key = alloca ptr, align 8
  %var.new_target = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1393 = alloca ptr, align 8
  %var.new_val = alloca ptr, align 8
  %var._1301 = alloca ptr, align 8
  %var._i1300 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var.new_fields = alloca ptr, align 8
  %var.re = alloca ptr, align 8
  %var._1278 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1200 = alloca ptr, align 8
  %var.new_ret_ti = alloca ptr, align 8
  %var.new_params = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._1140 = alloca ptr, align 8
  %var.new_ti = alloca ptr, align 8
  %var.td = alloca ptr, align 8
  %var._1115 = alloca ptr, align 8
  %var.new_lhs = alloca ptr, align 8
  %var.new_rhs = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var._1010 = alloca ptr, align 8
  %var.new_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.arity = alloca i64, align 8
  %var.ft = alloca ptr, align 8
  %var._957 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var._941 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._929 = alloca ptr, align 8
  %var.new_blk = alloca ptr, align 8
  %var.new_pred = alloca ptr, align 8
  %var.new_cases = alloca ptr, align 8
  %var._711 = alloca ptr, align 8
  %var._i710 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.74 = alloca i64, align 8
  %loop.idx.74 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._666 = alloca ptr, align 8
  %var._i665 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %var.new_branches = alloca ptr, align 8
  %var.new_cond = alloca ptr, align 8
  %var.ch = alloca ptr, align 8
  %var._625 = alloca ptr, align 8
  %var.ca = alloca ptr, align 8
  %var._545 = alloca ptr, align 8
  %var._491 = alloca ptr, align 8
  %var._i490 = alloca i64, align 8
  %var.child = alloca ptr, align 8
  %loop.step.71 = alloca i64, align 8
  %loop.idx.71 = alloca i64, align 8
  %var.new_exprs = alloca ptr, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._430 = alloca ptr, align 8
  %var.new_body = alloca ptr, align 8
  %var._324 = alloca ptr, align 8
  %var._i323 = alloca i64, align 8
  %var.cp = alloca ptr, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %var._265 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.69 = alloca i64, align 8
  %loop.idx.69 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._225 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._188 = alloca ptr, align 8
  %var.callee = alloca ptr, align 8
  %var.c46 = alloca ptr, align 8
  %var._45 = alloca ptr, align 8
  %var.expanded = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._9 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.table = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.table, align 8
  store ptr %2, ptr %var.locals, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next2253, %a.after2270, %a.after2242, %a.after2208, %a.after2185, %choice.case2040, %a.after2014, %a.after1968, %choice.case1927, %choice.exit1883, %a.after1854, %a.after1830, %a.after1802, %a.after1762, %a.after1733, %a.after1672, %choice.exit1610, %a.after1548, %a.after1490, %a.after1420, %a.after1370, %choice.exit1206, %a.after1168, %choice.case1108, %a.after1062, %a.after908, %a.after609, %a.after397, %a.after204, %choice.exit27, %a.after, %choice.case
  %choice.res2281 = phi ptr [ %var.load1, %choice.case ], [ %enum.alloc, %a.after ], [ %choice.res180, %choice.exit27 ], [ %enum.alloc190, %a.after204 ], [ %enum.alloc408, %a.after397 ], [ %enum.alloc602, %a.after609 ], [ %enum.alloc897, %a.after908 ], [ %enum.alloc1073, %a.after1062 ], [ %enum.alloc1122, %choice.case1108 ], [ %enum.alloc1152, %a.after1168 ], [ %choice.res1270, %choice.exit1206 ], [ %enum.alloc1363, %a.after1370 ], [ %enum.alloc1431, %a.after1420 ], [ %enum.alloc1501, %a.after1490 ], [ %enum.alloc1559, %a.after1548 ], [ %enum.alloc1635, %choice.exit1610 ], [ %enum.alloc1684, %a.after1672 ], [ %enum.alloc1723, %a.after1733 ], [ %enum.alloc1773, %a.after1762 ], [ %enum.alloc1793, %a.after1802 ], [ %enum.alloc1821, %a.after1830 ], [ %enum.alloc1865, %a.after1854 ], [ %enum.alloc1908, %choice.exit1883 ], [ %enum.alloc1941, %choice.case1927 ], [ %enum.alloc1979, %a.after1968 ], [ %enum.alloc2025, %a.after2014 ], [ %enum.alloc2054, %choice.case2040 ], [ %enum.alloc2178, %a.after2185 ], [ %enum.alloc2219, %a.after2208 ], [ %enum.alloc2233, %a.after2242 ], [ %enum.alloc2261, %a.after2270 ], [ %var.load2280, %choice.next2253 ]
  ret ptr %choice.res2281

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
  %tag.gep20 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id21 = load i64, ptr %tag.gep20, align 8
  %tag.match22 = icmp eq i64 %tag.id21, 5
  br i1 %tag.match22, label %choice.case18, label %choice.next19

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
  %call.res = call ptr @"overloads::walk_call"(ptr %var.load12, ptr %var.load13, ptr %a.load2)
  store ptr %call.res, ptr %pay.gep11, align 8
  br label %choice.exit

choice.case18:                                    ; preds = %choice.next3
  %pay.gep23 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr24 = load ptr, ptr %pay.gep23, align 8
  store ptr %payload.ptr24, ptr %var._25, align 8
  store ptr %payload.ptr24, ptr %var.b, align 8
  %var.load26 = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load26, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep30 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id31 = load i64, ptr %tag.gep30, align 8
  %tag.match32 = icmp eq i64 %tag.id31, 13
  %tag.match33 = icmp eq i64 %tag.id31, 14
  %tag.or = or i1 %tag.match32, %tag.match33
  br i1 %tag.or, label %choice.case28, label %choice.next29

choice.next19:                                    ; preds = %choice.next3
  %tag.gep183 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id184 = load i64, ptr %tag.gep183, align 8
  %tag.match185 = icmp eq i64 %tag.id184, 24
  br i1 %tag.match185, label %choice.case181, label %choice.next182

choice.exit27:                                    ; preds = %a.after165, %choice.exit68
  %choice.res180 = phi ptr [ %choice.res131, %choice.exit68 ], [ %enum.alloc133, %a.after165 ]
  br label %choice.exit

choice.case28:                                    ; preds = %choice.case18
  %var.load34 = load ptr, ptr %var.e, align 8
  %call.res35 = call ptr @"overloads::application"(ptr %var.load34)
  store ptr %call.res35, ptr %var.expanded, align 8
  %var.load36 = load ptr, ptr %var.expanded, align 8
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %tag.id41 = load i64, ptr %tag.gep40, align 8
  %tag.match42 = icmp eq i64 %tag.id41, 9
  br i1 %tag.match42, label %choice.case38, label %choice.next39

choice.next29:                                    ; preds = %choice.case18
  %arena.cur132 = call ptr @dva_arena_current()
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %tag.gep134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 0
  store i64 5, ptr %tag.gep134, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  %var.load136 = load ptr, ptr %var.b, align 8
  %fld.gep137 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load136, i32 0, i32 0
  %fld.load138 = load ptr, ptr %fld.gep137, align 8
  %var.load139 = load ptr, ptr %var.b, align 8
  %fld.gep140 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load139, i32 0, i32 1
  %fld.load141 = load ptr, ptr %fld.gep140, align 8
  %var.load142 = load ptr, ptr %var.table, align 8
  %var.load143 = load ptr, ptr %var.locals, align 8
  %a.load144 = load ptr, ptr %var.locals, align 8
  %a.null145 = icmp eq ptr %a.load144, null
  br i1 %a.null145, label %a.create146, label %a.after147

choice.exit37:                                    ; preds = %choice.next39, %choice.case38
  %choice.res = phi ptr [ %fld.load49, %choice.case38 ], [ @str.1.struct, %choice.next39 ]
  store ptr %choice.res, ptr %var.callee, align 8
  %var.load50 = load ptr, ptr %var.table, align 8
  %var.load51 = load ptr, ptr %var.callee, align 8
  %call.res52 = call i1 @"overloads::is_family"(ptr %var.load50, ptr %var.load51)
  br i1 %call.res52, label %and.68.then, label %and.68.else

choice.case38:                                    ; preds = %choice.case28
  %pay.gep43 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %payload.ptr44 = load ptr, ptr %pay.gep43, align 8
  store ptr %payload.ptr44, ptr %var._45, align 8
  store ptr %payload.ptr44, ptr %var.c46, align 8
  %var.load47 = load ptr, ptr %var.c46, align 8
  %fld.gep48 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load47, i32 0, i32 0
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  br label %choice.exit37

choice.next39:                                    ; preds = %choice.case28
  br label %choice.exit37

and.68.then:                                      ; preds = %choice.exit37
  %var.load53 = load ptr, ptr %var.locals, align 8
  %a.load54 = load ptr, ptr %var.locals, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

and.68.else:                                      ; preds = %choice.exit37
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %a.after57
  %and.68.phi = phi i1 [ %nottmp, %a.after57 ], [ %call.res52, %and.68.else ]
  br i1 %and.68.phi, label %choice.then, label %choice.else

a.create56:                                       ; preds = %and.68.then
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.locals, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %and.68.then
  %a.load265 = load ptr, ptr %var.locals, align 8
  %var.load66 = load ptr, ptr %var.callee, align 8
  %call.res67 = call i1 @"overloads::contains"(ptr %a.load265, ptr %var.load66)
  %nottmp = xor i1 %call.res67, true
  br label %and.68.exit

choice.then:                                      ; preds = %and.68.exit
  %var.load69 = load ptr, ptr %var.expanded, align 8
  %var.load70 = load ptr, ptr %var.table, align 8
  %var.load71 = load ptr, ptr %var.locals, align 8
  %a.load72 = load ptr, ptr %var.locals, align 8
  %a.null73 = icmp eq ptr %a.load72, null
  br i1 %a.null73, label %a.create74, label %a.after75

choice.else:                                      ; preds = %and.68.exit
  %arena.cur85 = call ptr @dva_arena_current()
  %enum.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %tag.gep87 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc86, i32 0, i32 0
  store i64 5, ptr %tag.gep87, align 8
  %pay.gep88 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc86, i32 0, i32 1
  %var.load89 = load ptr, ptr %var.b, align 8
  %fld.gep90 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load89, i32 0, i32 0
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %var.load92 = load ptr, ptr %var.b, align 8
  %fld.gep93 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load92, i32 0, i32 1
  %fld.load94 = load ptr, ptr %fld.gep93, align 8
  %var.load95 = load ptr, ptr %var.table, align 8
  %var.load96 = load ptr, ptr %var.locals, align 8
  %a.load97 = load ptr, ptr %var.locals, align 8
  %a.null98 = icmp eq ptr %a.load97, null
  br i1 %a.null98, label %a.create99, label %a.after100

choice.exit68:                                    ; preds = %a.after118, %a.after75
  %choice.res131 = phi ptr [ %call.res84, %a.after75 ], [ %enum.alloc86, %a.after118 ]
  br label %choice.exit27

a.create74:                                       ; preds = %choice.then
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
  store ptr %a.create77, ptr %var.locals, align 8
  br label %a.after75

a.after75:                                        ; preds = %a.create74, %choice.then
  %a.load283 = load ptr, ptr %var.locals, align 8
  %call.res84 = call ptr @"overloads::walk"(ptr %var.load69, ptr %var.load70, ptr %a.load283)
  br label %choice.exit68

a.create99:                                       ; preds = %choice.else
  %arena.cur101 = call ptr @dva_arena_current()
  %a.create102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 24)
  %arena.cur103 = call ptr @dva_arena_current()
  %a.buf104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 128)
  %a.len.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 0
  store i64 0, ptr %a.len.gep105, align 8
  %a.data.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 1
  store ptr %a.buf104, ptr %a.data.gep106, align 8
  %a.cap.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 2
  store i64 16, ptr %a.cap.gep107, align 8
  store ptr %a.create102, ptr %var.locals, align 8
  br label %a.after100

a.after100:                                       ; preds = %a.create99, %choice.else
  %a.load2108 = load ptr, ptr %var.locals, align 8
  %call.res109 = call ptr @"overloads::walk"(ptr %fld.load94, ptr %var.load95, ptr %a.load2108)
  %var.load110 = load ptr, ptr %var.b, align 8
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load110, i32 0, i32 2
  %fld.load112 = load ptr, ptr %fld.gep111, align 8
  %var.load113 = load ptr, ptr %var.table, align 8
  %var.load114 = load ptr, ptr %var.locals, align 8
  %a.load115 = load ptr, ptr %var.locals, align 8
  %a.null116 = icmp eq ptr %a.load115, null
  br i1 %a.null116, label %a.create117, label %a.after118

a.create117:                                      ; preds = %a.after100
  %arena.cur119 = call ptr @dva_arena_current()
  %a.create120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 24)
  %arena.cur121 = call ptr @dva_arena_current()
  %a.buf122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 128)
  %a.len.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create120, i32 0, i32 0
  store i64 0, ptr %a.len.gep123, align 8
  %a.data.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create120, i32 0, i32 1
  store ptr %a.buf122, ptr %a.data.gep124, align 8
  %a.cap.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create120, i32 0, i32 2
  store i64 16, ptr %a.cap.gep125, align 8
  store ptr %a.create120, ptr %var.locals, align 8
  br label %a.after118

a.after118:                                       ; preds = %a.create117, %a.after100
  %a.load2126 = load ptr, ptr %var.locals, align 8
  %call.res127 = call ptr @"overloads::walk"(ptr %fld.load112, ptr %var.load113, ptr %a.load2126)
  %arena.cur128 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load91, ptr %rec.fld, align 8
  %rec.fld129 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res109, ptr %rec.fld129, align 8
  %rec.fld130 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res127, ptr %rec.fld130, align 8
  store ptr %rec.alloc, ptr %pay.gep88, align 8
  br label %choice.exit68

a.create146:                                      ; preds = %choice.next29
  %arena.cur148 = call ptr @dva_arena_current()
  %a.create149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 24)
  %arena.cur150 = call ptr @dva_arena_current()
  %a.buf151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 128)
  %a.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 0
  store i64 0, ptr %a.len.gep152, align 8
  %a.data.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 1
  store ptr %a.buf151, ptr %a.data.gep153, align 8
  %a.cap.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 2
  store i64 16, ptr %a.cap.gep154, align 8
  store ptr %a.create149, ptr %var.locals, align 8
  br label %a.after147

a.after147:                                       ; preds = %a.create146, %choice.next29
  %a.load2155 = load ptr, ptr %var.locals, align 8
  %call.res156 = call ptr @"overloads::walk"(ptr %fld.load141, ptr %var.load142, ptr %a.load2155)
  %var.load157 = load ptr, ptr %var.b, align 8
  %fld.gep158 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load157, i32 0, i32 2
  %fld.load159 = load ptr, ptr %fld.gep158, align 8
  %var.load160 = load ptr, ptr %var.table, align 8
  %var.load161 = load ptr, ptr %var.locals, align 8
  %a.load162 = load ptr, ptr %var.locals, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

a.create164:                                      ; preds = %a.after147
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

a.after165:                                       ; preds = %a.create164, %a.after147
  %a.load2173 = load ptr, ptr %var.locals, align 8
  %call.res174 = call ptr @"overloads::walk"(ptr %fld.load159, ptr %var.load160, ptr %a.load2173)
  %arena.cur175 = call ptr @dva_arena_current()
  %rec.alloc176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld177 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc176, i32 0, i32 0
  store ptr %fld.load138, ptr %rec.fld177, align 8
  %rec.fld178 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc176, i32 0, i32 1
  store ptr %call.res156, ptr %rec.fld178, align 8
  %rec.fld179 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc176, i32 0, i32 2
  store ptr %call.res174, ptr %rec.fld179, align 8
  store ptr %rec.alloc176, ptr %pay.gep135, align 8
  br label %choice.exit27

choice.case181:                                   ; preds = %choice.next19
  %pay.gep186 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr187 = load ptr, ptr %pay.gep186, align 8
  store ptr %payload.ptr187, ptr %var._188, align 8
  store ptr %payload.ptr187, ptr %var.u, align 8
  %arena.cur189 = call ptr @dva_arena_current()
  %enum.alloc190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 16)
  %tag.gep191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc190, i32 0, i32 0
  store i64 24, ptr %tag.gep191, align 8
  %pay.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc190, i32 0, i32 1
  %var.load193 = load ptr, ptr %var.u, align 8
  %fld.gep194 = getelementptr inbounds { ptr, ptr }, ptr %var.load193, i32 0, i32 0
  %fld.load195 = load ptr, ptr %fld.gep194, align 8
  %var.load196 = load ptr, ptr %var.u, align 8
  %fld.gep197 = getelementptr inbounds { ptr, ptr }, ptr %var.load196, i32 0, i32 1
  %fld.load198 = load ptr, ptr %fld.gep197, align 8
  %var.load199 = load ptr, ptr %var.table, align 8
  %var.load200 = load ptr, ptr %var.locals, align 8
  %a.load201 = load ptr, ptr %var.locals, align 8
  %a.null202 = icmp eq ptr %a.load201, null
  br i1 %a.null202, label %a.create203, label %a.after204

choice.next182:                                   ; preds = %choice.next19
  %tag.gep220 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id221 = load i64, ptr %tag.gep220, align 8
  %tag.match222 = icmp eq i64 %tag.id221, 14
  br i1 %tag.match222, label %choice.case218, label %choice.next219

a.create203:                                      ; preds = %choice.case181
  %arena.cur205 = call ptr @dva_arena_current()
  %a.create206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 24)
  %arena.cur207 = call ptr @dva_arena_current()
  %a.buf208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 128)
  %a.len.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create206, i32 0, i32 0
  store i64 0, ptr %a.len.gep209, align 8
  %a.data.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create206, i32 0, i32 1
  store ptr %a.buf208, ptr %a.data.gep210, align 8
  %a.cap.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create206, i32 0, i32 2
  store i64 16, ptr %a.cap.gep211, align 8
  store ptr %a.create206, ptr %var.locals, align 8
  br label %a.after204

a.after204:                                       ; preds = %a.create203, %choice.case181
  %a.load2212 = load ptr, ptr %var.locals, align 8
  %call.res213 = call ptr @"overloads::walk"(ptr %fld.load198, ptr %var.load199, ptr %a.load2212)
  %arena.cur214 = call ptr @dva_arena_current()
  %rec.alloc215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld216 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc215, i32 0, i32 0
  store ptr %fld.load195, ptr %rec.fld216, align 8
  %rec.fld217 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc215, i32 0, i32 1
  store ptr %call.res213, ptr %rec.fld217, align 8
  store ptr %rec.alloc215, ptr %pay.gep192, align 8
  br label %choice.exit

choice.case218:                                   ; preds = %choice.next182
  %pay.gep223 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr224 = load ptr, ptr %pay.gep223, align 8
  store ptr %payload.ptr224, ptr %var._225, align 8
  store ptr %payload.ptr224, ptr %var.fe, align 8
  %var.load226 = load ptr, ptr %var.locals, align 8
  %a.load227 = load ptr, ptr %var.locals, align 8
  %a.null228 = icmp eq ptr %a.load227, null
  br i1 %a.null228, label %a.create229, label %a.after230

choice.next219:                                   ; preds = %choice.next182
  %tag.gep425 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id426 = load i64, ptr %tag.gep425, align 8
  %tag.match427 = icmp eq i64 %tag.id426, 8
  br i1 %tag.match427, label %choice.case423, label %choice.next424

a.create229:                                      ; preds = %choice.case218
  %arena.cur231 = call ptr @dva_arena_current()
  %a.create232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 24)
  %arena.cur233 = call ptr @dva_arena_current()
  %a.buf234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 128)
  %a.len.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 0
  store i64 0, ptr %a.len.gep235, align 8
  %a.data.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 1
  store ptr %a.buf234, ptr %a.data.gep236, align 8
  %a.cap.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 2
  store i64 16, ptr %a.cap.gep237, align 8
  store ptr %a.create232, ptr %var.locals, align 8
  br label %a.after230

a.after230:                                       ; preds = %a.create229, %choice.case218
  %a.load2238 = load ptr, ptr %var.locals, align 8
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 0
  %a.copy.len239 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 2
  %a.copy.cap240 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2238, i32 0, i32 1
  %a.copy.data241 = load ptr, ptr %a.copy.data, align 8
  %arena.cur242 = call ptr @dva_arena_current()
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap240, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur243 = call ptr @dva_arena_current()
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len239, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data241, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len239, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap240, ptr %a.copy.cap.gep, align 8
  store ptr %a.copy, ptr %var.fn_locals, align 8
  %a.load244 = load ptr, ptr %var.fn_locals, align 8
  %a.null245 = icmp eq ptr %a.load244, null
  br i1 %a.null245, label %a.create246, label %a.after247

a.create246:                                      ; preds = %a.after230
  %arena.cur248 = call ptr @dva_arena_current()
  %a.create249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 24)
  %arena.cur250 = call ptr @dva_arena_current()
  %a.buf251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 128)
  %a.len.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 0
  store i64 0, ptr %a.len.gep252, align 8
  %a.data.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 1
  store ptr %a.buf251, ptr %a.data.gep253, align 8
  %a.cap.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create249, i32 0, i32 2
  store i64 16, ptr %a.cap.gep254, align 8
  store ptr %a.create249, ptr %var.fn_locals, align 8
  br label %a.after247

a.after247:                                       ; preds = %a.create246, %a.after230
  %a.load2255 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check

a.check:                                          ; preds = %a.after247
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 0
  %a.len256 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 2
  %a.cap257 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len256, %a.cap257
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2255)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 1
  %a.cur.data258 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 0
  %a.cur.len259 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data258, i64 %a.cur.len259
  store i64 ptrtoint (ptr @str.6.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len259, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2255, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load260 = load ptr, ptr %var.fe, align 8
  %fld.gep261 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load260, i32 0, i32 0
  %fld.load262 = load ptr, ptr %fld.gep261, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load262, i32 0, i32 0
  %arr.cycle.len263 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load262, i32 0, i32 1
  %arr.cycle.data264 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.69, align 8
  %cycle.prev.u = load ptr, ptr %var._225, align 8
  br label %loop.header.69

loop.header.69:                                   ; preds = %loop.latch.69, %a.store
  %counter.load = load i64, ptr %loop.idx.69, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len263
  br i1 %loop.cond, label %loop.body.69, label %loop.exit.nat.69

loop.body.69:                                     ; preds = %loop.header.69
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.69, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data264, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._265, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load266 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load266, i32 0, i32 0
  %eq.lhs.len267 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len268 = and i64 %eq.lhs.len267, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len267, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.69:                                 ; preds = %loop.header.69
  br label %loop.exit.69

loop.latch.69:                                    ; preds = %choice.exit280
  %step.val = load i64, ptr %loop.step.69, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.69, align 8
  br label %loop.header.69

loop.exit.69:                                     ; preds = %loop.exit.nat.69
  store ptr %cycle.prev.u, ptr %var._225, align 8
  %var.load309 = load ptr, ptr %var.fe, align 8
  %fld.gep310 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load309, i32 0, i32 1
  %fld.load311 = load ptr, ptr %fld.gep310, align 8
  %arr.cycle.len312 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load311, i32 0, i32 0
  %arr.cycle.len313 = load i64, ptr %arr.cycle.len312, align 8
  %arr.cycle.data314 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load311, i32 0, i32 1
  %arr.cycle.data315 = load ptr, ptr %arr.cycle.data314, align 8
  store i64 0, ptr %loop.idx.70, align 8
  %cycle.prev.u316 = load ptr, ptr %var._225, align 8
  br label %loop.header.70

str_gen_check:                                    ; preds = %loop.body.69
  %arena.cur269 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur269, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.69
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len270 = and i64 %eq.rhs.len, 281474976710655
  %str.tag271 = lshr i64 %eq.rhs.len, 48
  %str.immortal272 = icmp eq i64 %str.tag271, 0
  br i1 %str.immortal272, label %str_ok274, label %str_gen_check273

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check273:                                 ; preds = %str_ok
  %arena.cur276 = call ptr @dva_arena_current()
  %tag.valid277 = call i1 @dva_arena_validate_tag(ptr %arena.cur276, i64 %str.tag271)
  br i1 %tag.valid277, label %str_ok274, label %str_stale275

str_ok274:                                        ; preds = %str_stale275, %str_gen_check273, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len268, %eq.rhs.len270
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale275:                                     ; preds = %str_gen_check273
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok274

str.eq.then:                                      ; preds = %str_ok274
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load266, i32 0, i32 1
  %eq.lhs.data278 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data278, ptr %eq.rhs.data, i64 %eq.lhs.len268)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok274
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then279, label %choice.exit280

choice.then279:                                   ; preds = %str.eq.merge
  %var.load281 = load ptr, ptr %var.p, align 8
  %a.load282 = load ptr, ptr %var.fn_locals, align 8
  %a.null283 = icmp eq ptr %a.load282, null
  br i1 %a.null283, label %a.create284, label %a.after285

choice.exit280:                                   ; preds = %a.store296, %str.eq.merge
  br label %loop.latch.69

a.create284:                                      ; preds = %choice.then279
  %arena.cur286 = call ptr @dva_arena_current()
  %a.create287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 24)
  %arena.cur288 = call ptr @dva_arena_current()
  %a.buf289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 128)
  %a.len.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 0
  store i64 0, ptr %a.len.gep290, align 8
  %a.data.gep291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 1
  store ptr %a.buf289, ptr %a.data.gep291, align 8
  %a.cap.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 2
  store i64 16, ptr %a.cap.gep292, align 8
  store ptr %a.create287, ptr %var.fn_locals, align 8
  br label %a.after285

a.after285:                                       ; preds = %a.create284, %choice.then279
  %a.load2293 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check294

a.check294:                                       ; preds = %a.after285
  %a.len297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 0
  %a.len298 = load i64, ptr %a.len297, align 8
  %a.cap299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 2
  %a.cap300 = load i64, ptr %a.cap299, align 8
  %a.needs.grow301 = icmp eq i64 %a.len298, %a.cap300
  br i1 %a.needs.grow301, label %a.grow295, label %a.store296

a.grow295:                                        ; preds = %a.check294
  call void @dva_array_grow(ptr %a.load2293)
  br label %a.store296

a.store296:                                       ; preds = %a.grow295, %a.check294
  %a.cur.data302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 1
  %a.cur.data303 = load ptr, ptr %a.cur.data302, align 8
  %a.cur.len304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 0
  %a.cur.len305 = load i64, ptr %a.cur.len304, align 8
  %a.elem.gep306 = getelementptr i64, ptr %a.cur.data303, i64 %a.cur.len305
  %slot.p2i = ptrtoint ptr %var.load281 to i64
  store i64 %slot.p2i, ptr %a.elem.gep306, align 8
  %a.next.len307 = add i64 %a.cur.len305, 1
  %b.len.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2293, i32 0, i32 0
  store i64 %a.next.len307, ptr %b.len.gep308, align 8
  br label %choice.exit280

loop.header.70:                                   ; preds = %loop.latch.70, %loop.exit.69
  %counter.load317 = load i64, ptr %loop.idx.70, align 8
  %loop.cond318 = icmp slt i64 %counter.load317, %arr.cycle.len313
  br i1 %loop.cond318, label %loop.body.70, label %loop.exit.nat.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i319 = sub i64 %counter.load317, 0
  store i64 1, ptr %loop.step.70, align 8
  %arr.elem.gep320 = getelementptr i64, ptr %arr.cycle.data315, i64 %counter.load317
  %arr.elem.raw321 = load i64, ptr %arr.elem.gep320, align 8
  %slot.i2p322 = inttoptr i64 %arr.elem.raw321 to ptr
  store i64 %loop.rel.i319, ptr %var._i323, align 8
  store ptr %slot.i2p322, ptr %var._324, align 8
  store ptr %slot.i2p322, ptr %var.cp, align 8
  %var.load325 = load ptr, ptr %var.cp, align 8
  %eq.lhs.len326 = getelementptr inbounds { i64, ptr }, ptr %var.load325, i32 0, i32 0
  %eq.lhs.len327 = load i64, ptr %eq.lhs.len326, align 8
  %eq.lhs.len328 = and i64 %eq.lhs.len327, 281474976710655
  %str.tag329 = lshr i64 %eq.lhs.len327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

loop.exit.nat.70:                                 ; preds = %loop.header.70
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit357
  %step.val387 = load i64, ptr %loop.step.70, align 8
  %loop.next388 = add i64 %counter.load317, %step.val387
  store i64 %loop.next388, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  store ptr %cycle.prev.u316, ptr %var._225, align 8
  %var.load389 = load ptr, ptr %var.fe, align 8
  %fld.gep390 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load389, i32 0, i32 2
  %fld.load391 = load ptr, ptr %fld.gep390, align 8
  %var.load392 = load ptr, ptr %var.table, align 8
  %var.load393 = load ptr, ptr %var.fn_locals, align 8
  %a.load394 = load ptr, ptr %var.fn_locals, align 8
  %a.null395 = icmp eq ptr %a.load394, null
  br i1 %a.null395, label %a.create396, label %a.after397

str_gen_check331:                                 ; preds = %loop.body.70
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %loop.body.70
  %eq.rhs.len336 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len337 = and i64 %eq.rhs.len336, 281474976710655
  %str.tag338 = lshr i64 %eq.rhs.len336, 48
  %str.immortal339 = icmp eq i64 %str.tag338, 0
  br i1 %str.immortal339, label %str_ok341, label %str_gen_check340

str_stale333:                                     ; preds = %str_gen_check331
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

str_gen_check340:                                 ; preds = %str_ok332
  %arena.cur343 = call ptr @dva_arena_current()
  %tag.valid344 = call i1 @dva_arena_validate_tag(ptr %arena.cur343, i64 %str.tag338)
  br i1 %tag.valid344, label %str_ok341, label %str_stale342

str_ok341:                                        ; preds = %str_stale342, %str_gen_check340, %str_ok332
  %eq.len345 = icmp eq i64 %eq.lhs.len328, %eq.rhs.len337
  br i1 %eq.len345, label %str.eq.then346, label %str.eq.else347

str_stale342:                                     ; preds = %str_gen_check340
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok341

str.eq.then346:                                   ; preds = %str_ok341
  %eq.lhs.data349 = getelementptr inbounds { i64, ptr }, ptr %var.load325, i32 0, i32 1
  %eq.lhs.data350 = load ptr, ptr %eq.lhs.data349, align 8
  %eq.rhs.data351 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp352 = call i32 @memcmp(ptr %eq.lhs.data350, ptr %eq.rhs.data351, i64 %eq.lhs.len328)
  %eq.cmp.zero353 = icmp eq i32 %eq.memcmp352, 0
  br label %str.eq.merge348

str.eq.else347:                                   ; preds = %str_ok341
  br label %str.eq.merge348

str.eq.merge348:                                  ; preds = %str.eq.else347, %str.eq.then346
  %str.eq.result354 = phi i1 [ %eq.cmp.zero353, %str.eq.then346 ], [ false, %str.eq.else347 ]
  %str.neq355 = xor i1 %str.eq.result354, true
  br i1 %str.neq355, label %choice.then356, label %choice.exit357

choice.then356:                                   ; preds = %str.eq.merge348
  %var.load358 = load ptr, ptr %var.cp, align 8
  %a.load359 = load ptr, ptr %var.fn_locals, align 8
  %a.null360 = icmp eq ptr %a.load359, null
  br i1 %a.null360, label %a.create361, label %a.after362

choice.exit357:                                   ; preds = %a.store373, %str.eq.merge348
  br label %loop.latch.70

a.create361:                                      ; preds = %choice.then356
  %arena.cur363 = call ptr @dva_arena_current()
  %a.create364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 24)
  %arena.cur365 = call ptr @dva_arena_current()
  %a.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 128)
  %a.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 0
  store i64 0, ptr %a.len.gep367, align 8
  %a.data.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 1
  store ptr %a.buf366, ptr %a.data.gep368, align 8
  %a.cap.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 2
  store i64 16, ptr %a.cap.gep369, align 8
  store ptr %a.create364, ptr %var.fn_locals, align 8
  br label %a.after362

a.after362:                                       ; preds = %a.create361, %choice.then356
  %a.load2370 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check371

a.check371:                                       ; preds = %a.after362
  %a.len374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  %a.len375 = load i64, ptr %a.len374, align 8
  %a.cap376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 2
  %a.cap377 = load i64, ptr %a.cap376, align 8
  %a.needs.grow378 = icmp eq i64 %a.len375, %a.cap377
  br i1 %a.needs.grow378, label %a.grow372, label %a.store373

a.grow372:                                        ; preds = %a.check371
  call void @dva_array_grow(ptr %a.load2370)
  br label %a.store373

a.store373:                                       ; preds = %a.grow372, %a.check371
  %a.cur.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 1
  %a.cur.data380 = load ptr, ptr %a.cur.data379, align 8
  %a.cur.len381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  %a.cur.len382 = load i64, ptr %a.cur.len381, align 8
  %a.elem.gep383 = getelementptr i64, ptr %a.cur.data380, i64 %a.cur.len382
  %slot.p2i384 = ptrtoint ptr %var.load358 to i64
  store i64 %slot.p2i384, ptr %a.elem.gep383, align 8
  %a.next.len385 = add i64 %a.cur.len382, 1
  %b.len.gep386 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  store i64 %a.next.len385, ptr %b.len.gep386, align 8
  br label %choice.exit357

a.create396:                                      ; preds = %loop.exit.70
  %arena.cur398 = call ptr @dva_arena_current()
  %a.create399 = call ptr @dva_arena_alloc(ptr %arena.cur398, i64 24)
  %arena.cur400 = call ptr @dva_arena_current()
  %a.buf401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 128)
  %a.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 0
  store i64 0, ptr %a.len.gep402, align 8
  %a.data.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 1
  store ptr %a.buf401, ptr %a.data.gep403, align 8
  %a.cap.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create399, i32 0, i32 2
  store i64 16, ptr %a.cap.gep404, align 8
  store ptr %a.create399, ptr %var.fn_locals, align 8
  br label %a.after397

a.after397:                                       ; preds = %a.create396, %loop.exit.70
  %a.load2405 = load ptr, ptr %var.fn_locals, align 8
  %call.res406 = call ptr @"overloads::walk"(ptr %fld.load391, ptr %var.load392, ptr %a.load2405)
  store ptr %call.res406, ptr %var.new_body, align 8
  %arena.cur407 = call ptr @dva_arena_current()
  %enum.alloc408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 16)
  %tag.gep409 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc408, i32 0, i32 0
  store i64 14, ptr %tag.gep409, align 8
  %pay.gep410 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc408, i32 0, i32 1
  %var.load411 = load ptr, ptr %var.fe, align 8
  %fld.gep412 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load411, i32 0, i32 0
  %fld.load413 = load ptr, ptr %fld.gep412, align 8
  %var.load414 = load ptr, ptr %var.fe, align 8
  %fld.gep415 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load414, i32 0, i32 1
  %fld.load416 = load ptr, ptr %fld.gep415, align 8
  %var.load417 = load ptr, ptr %var.new_body, align 8
  %arena.cur418 = call ptr @dva_arena_current()
  %rec.alloc419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld420 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc419, i32 0, i32 0
  store ptr %fld.load413, ptr %rec.fld420, align 8
  %rec.fld421 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc419, i32 0, i32 1
  store ptr %fld.load416, ptr %rec.fld421, align 8
  %rec.fld422 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc419, i32 0, i32 2
  store ptr %var.load417, ptr %rec.fld422, align 8
  store ptr %rec.alloc419, ptr %pay.gep410, align 8
  br label %choice.exit

choice.case423:                                   ; preds = %choice.next219
  %pay.gep428 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr429 = load ptr, ptr %pay.gep428, align 8
  store ptr %payload.ptr429, ptr %var._430, align 8
  store ptr %payload.ptr429, ptr %var.be, align 8
  %var.load431 = load ptr, ptr %var.locals, align 8
  %a.load432 = load ptr, ptr %var.locals, align 8
  %a.null433 = icmp eq ptr %a.load432, null
  br i1 %a.null433, label %a.create434, label %a.after435

choice.next424:                                   ; preds = %choice.next219
  %tag.gep620 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id621 = load i64, ptr %tag.gep620, align 8
  %tag.match622 = icmp eq i64 %tag.id621, 7
  br i1 %tag.match622, label %choice.case618, label %choice.next619

a.create434:                                      ; preds = %choice.case423
  %arena.cur436 = call ptr @dva_arena_current()
  %a.create437 = call ptr @dva_arena_alloc(ptr %arena.cur436, i64 24)
  %arena.cur438 = call ptr @dva_arena_current()
  %a.buf439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 128)
  %a.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 0
  store i64 0, ptr %a.len.gep440, align 8
  %a.data.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 1
  store ptr %a.buf439, ptr %a.data.gep441, align 8
  %a.cap.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep442, align 8
  store ptr %a.create437, ptr %var.locals, align 8
  br label %a.after435

a.after435:                                       ; preds = %a.create434, %choice.case423
  %a.load2443 = load ptr, ptr %var.locals, align 8
  %a.copy.len444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2443, i32 0, i32 0
  %a.copy.len445 = load i64, ptr %a.copy.len444, align 8
  %a.copy.cap446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2443, i32 0, i32 2
  %a.copy.cap447 = load i64, ptr %a.copy.cap446, align 8
  %a.copy.data448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2443, i32 0, i32 1
  %a.copy.data449 = load ptr, ptr %a.copy.data448, align 8
  %arena.cur450 = call ptr @dva_arena_current()
  %a.copy451 = call ptr @dva_arena_alloc(ptr %arena.cur450, i64 24)
  %a.copy.buflen452 = add i64 %a.copy.cap447, 1
  %a.copy.bufsize453 = mul i64 %a.copy.buflen452, 8
  %arena.cur454 = call ptr @dva_arena_current()
  %a.copy.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %a.copy.bufsize453)
  %a.copy.copylen456 = mul i64 %a.copy.len445, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf455, ptr align 1 %a.copy.data449, i64 %a.copy.copylen456, i1 false)
  %a.copy.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy451, i32 0, i32 0
  store i64 %a.copy.len445, ptr %a.copy.len.gep457, align 8
  %a.copy.data.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy451, i32 0, i32 1
  store ptr %a.copy.buf455, ptr %a.copy.data.gep458, align 8
  %a.copy.cap.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy451, i32 0, i32 2
  store i64 %a.copy.cap447, ptr %a.copy.cap.gep459, align 8
  store ptr %a.copy451, ptr %var.blk_locals, align 8
  %arena.cur460 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 24)
  %arena.cur461 = call ptr @dva_arena_current()
  %a.buf462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 128)
  %a.len.gep463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep463, align 8
  %a.data.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf462, ptr %a.data.gep464, align 8
  %a.cap.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep465, align 8
  store ptr %a.new, ptr %var.new_exprs, align 8
  %var.load466 = load ptr, ptr %var.be, align 8
  %a.load467 = load ptr, ptr %var.be, align 8
  %a.null468 = icmp eq ptr %a.load467, null
  br i1 %a.null468, label %a.create469, label %a.after470

a.create469:                                      ; preds = %a.after435
  %arena.cur471 = call ptr @dva_arena_current()
  %a.create472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 24)
  %arena.cur473 = call ptr @dva_arena_current()
  %a.buf474 = call ptr @dva_arena_alloc(ptr %arena.cur473, i64 128)
  %a.len.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 0
  store i64 0, ptr %a.len.gep475, align 8
  %a.data.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 1
  store ptr %a.buf474, ptr %a.data.gep476, align 8
  %a.cap.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create472, i32 0, i32 2
  store i64 16, ptr %a.cap.gep477, align 8
  store ptr %a.create472, ptr %var.be, align 8
  br label %a.after470

a.after470:                                       ; preds = %a.create469, %a.after435
  %a.load2478 = load ptr, ptr %var.be, align 8
  %arr.cycle.len479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2478, i32 0, i32 0
  %arr.cycle.len480 = load i64, ptr %arr.cycle.len479, align 8
  %arr.cycle.data481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2478, i32 0, i32 1
  %arr.cycle.data482 = load ptr, ptr %arr.cycle.data481, align 8
  store i64 0, ptr %loop.idx.71, align 8
  %cycle.prev.u483 = load ptr, ptr %var._430, align 8
  br label %loop.header.71

loop.header.71:                                   ; preds = %loop.latch.71, %a.after470
  %counter.load484 = load i64, ptr %loop.idx.71, align 8
  %loop.cond485 = icmp slt i64 %counter.load484, %arr.cycle.len480
  br i1 %loop.cond485, label %loop.body.71, label %loop.exit.nat.71

loop.body.71:                                     ; preds = %loop.header.71
  %loop.rel.i486 = sub i64 %counter.load484, 0
  store i64 1, ptr %loop.step.71, align 8
  %arr.elem.gep487 = getelementptr i64, ptr %arr.cycle.data482, i64 %counter.load484
  %arr.elem.raw488 = load i64, ptr %arr.elem.gep487, align 8
  %slot.i2p489 = inttoptr i64 %arr.elem.raw488 to ptr
  store i64 %loop.rel.i486, ptr %var._i490, align 8
  store ptr %slot.i2p489, ptr %var._491, align 8
  store ptr %slot.i2p489, ptr %var.child, align 8
  %var.load492 = load ptr, ptr %var.child, align 8
  %var.load493 = load ptr, ptr %var.table, align 8
  %var.load494 = load ptr, ptr %var.blk_locals, align 8
  %a.load495 = load ptr, ptr %var.blk_locals, align 8
  %a.null496 = icmp eq ptr %a.load495, null
  br i1 %a.null496, label %a.create497, label %a.after498

loop.exit.nat.71:                                 ; preds = %loop.header.71
  br label %loop.exit.71

loop.latch.71:                                    ; preds = %choice.exit537
  %step.val599 = load i64, ptr %loop.step.71, align 8
  %loop.next600 = add i64 %counter.load484, %step.val599
  store i64 %loop.next600, ptr %loop.idx.71, align 8
  br label %loop.header.71

loop.exit.71:                                     ; preds = %loop.exit.nat.71
  store ptr %cycle.prev.u483, ptr %var._430, align 8
  %arena.cur601 = call ptr @dva_arena_current()
  %enum.alloc602 = call ptr @dva_arena_alloc(ptr %arena.cur601, i64 16)
  %tag.gep603 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc602, i32 0, i32 0
  store i64 8, ptr %tag.gep603, align 8
  %pay.gep604 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc602, i32 0, i32 1
  %var.load605 = load ptr, ptr %var.new_exprs, align 8
  %a.load606 = load ptr, ptr %var.new_exprs, align 8
  %a.null607 = icmp eq ptr %a.load606, null
  br i1 %a.null607, label %a.create608, label %a.after609

a.create497:                                      ; preds = %loop.body.71
  %arena.cur499 = call ptr @dva_arena_current()
  %a.create500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 24)
  %arena.cur501 = call ptr @dva_arena_current()
  %a.buf502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 128)
  %a.len.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 0
  store i64 0, ptr %a.len.gep503, align 8
  %a.data.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 1
  store ptr %a.buf502, ptr %a.data.gep504, align 8
  %a.cap.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create500, i32 0, i32 2
  store i64 16, ptr %a.cap.gep505, align 8
  store ptr %a.create500, ptr %var.blk_locals, align 8
  br label %a.after498

a.after498:                                       ; preds = %a.create497, %loop.body.71
  %a.load2506 = load ptr, ptr %var.blk_locals, align 8
  %call.res507 = call ptr @"overloads::walk"(ptr %var.load492, ptr %var.load493, ptr %a.load2506)
  %a.load508 = load ptr, ptr %var.new_exprs, align 8
  %a.null509 = icmp eq ptr %a.load508, null
  br i1 %a.null509, label %a.create510, label %a.after511

a.create510:                                      ; preds = %a.after498
  %arena.cur512 = call ptr @dva_arena_current()
  %a.create513 = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 24)
  %arena.cur514 = call ptr @dva_arena_current()
  %a.buf515 = call ptr @dva_arena_alloc(ptr %arena.cur514, i64 128)
  %a.len.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create513, i32 0, i32 0
  store i64 0, ptr %a.len.gep516, align 8
  %a.data.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create513, i32 0, i32 1
  store ptr %a.buf515, ptr %a.data.gep517, align 8
  %a.cap.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create513, i32 0, i32 2
  store i64 16, ptr %a.cap.gep518, align 8
  store ptr %a.create513, ptr %var.new_exprs, align 8
  br label %a.after511

a.after511:                                       ; preds = %a.create510, %a.after498
  %a.load2519 = load ptr, ptr %var.new_exprs, align 8
  br label %a.check520

a.check520:                                       ; preds = %a.after511
  %a.len523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2519, i32 0, i32 0
  %a.len524 = load i64, ptr %a.len523, align 8
  %a.cap525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2519, i32 0, i32 2
  %a.cap526 = load i64, ptr %a.cap525, align 8
  %a.needs.grow527 = icmp eq i64 %a.len524, %a.cap526
  br i1 %a.needs.grow527, label %a.grow521, label %a.store522

a.grow521:                                        ; preds = %a.check520
  call void @dva_array_grow(ptr %a.load2519)
  br label %a.store522

a.store522:                                       ; preds = %a.grow521, %a.check520
  %a.cur.data528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2519, i32 0, i32 1
  %a.cur.data529 = load ptr, ptr %a.cur.data528, align 8
  %a.cur.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2519, i32 0, i32 0
  %a.cur.len531 = load i64, ptr %a.cur.len530, align 8
  %a.elem.gep532 = getelementptr i64, ptr %a.cur.data529, i64 %a.cur.len531
  %slot.p2i533 = ptrtoint ptr %call.res507 to i64
  store i64 %slot.p2i533, ptr %a.elem.gep532, align 8
  %a.next.len534 = add i64 %a.cur.len531, 1
  %b.len.gep535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2519, i32 0, i32 0
  store i64 %a.next.len534, ptr %b.len.gep535, align 8
  %var.load536 = load ptr, ptr %var.child, align 8
  %tag.gep540 = getelementptr inbounds { i64, ptr }, ptr %var.load536, i32 0, i32 0
  %tag.id541 = load i64, ptr %tag.gep540, align 8
  %tag.match542 = icmp eq i64 %tag.id541, 6
  br i1 %tag.match542, label %choice.case538, label %choice.next539

choice.exit537:                                   ; preds = %choice.next539, %choice.exit567
  br label %loop.latch.71

choice.case538:                                   ; preds = %a.store522
  %pay.gep543 = getelementptr inbounds { i64, ptr }, ptr %var.load536, i32 0, i32 1
  %payload.ptr544 = load ptr, ptr %pay.gep543, align 8
  store ptr %payload.ptr544, ptr %var._545, align 8
  store ptr %payload.ptr544, ptr %var.ca, align 8
  %var.load546 = load ptr, ptr %var.locals, align 8
  %a.load547 = load ptr, ptr %var.locals, align 8
  %a.null548 = icmp eq ptr %a.load547, null
  br i1 %a.null548, label %a.create549, label %a.after550

choice.next539:                                   ; preds = %a.store522
  br label %choice.exit537

a.create549:                                      ; preds = %choice.case538
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
  store ptr %a.create552, ptr %var.locals, align 8
  br label %a.after550

a.after550:                                       ; preds = %a.create549, %choice.case538
  %a.load2558 = load ptr, ptr %var.locals, align 8
  %call.res559 = call i1 @"overloads::contains"(ptr %a.load2558, ptr @str.6.struct)
  br i1 %call.res559, label %or.72.then, label %or.72.else

or.72.then:                                       ; preds = %a.after550
  br label %or.72.exit

or.72.else:                                       ; preds = %a.after550
  %var.load560 = load ptr, ptr %var.table, align 8
  %var.load561 = load ptr, ptr %var.ca, align 8
  %fld.gep562 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load561, i32 0, i32 0
  %fld.load563 = load ptr, ptr %fld.gep562, align 8
  %call.res564 = call i1 @"overloads::is_family"(ptr %var.load560, ptr %fld.load563)
  %nottmp565 = xor i1 %call.res564, true
  br label %or.72.exit

or.72.exit:                                       ; preds = %or.72.else, %or.72.then
  %or.72.phi = phi i1 [ %call.res559, %or.72.then ], [ %nottmp565, %or.72.else ]
  br i1 %or.72.phi, label %choice.then566, label %choice.exit567

choice.then566:                                   ; preds = %or.72.exit
  %var.load568 = load ptr, ptr %var.ca, align 8
  %fld.gep569 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load568, i32 0, i32 0
  %fld.load570 = load ptr, ptr %fld.gep569, align 8
  %a.load571 = load ptr, ptr %var.blk_locals, align 8
  %a.null572 = icmp eq ptr %a.load571, null
  br i1 %a.null572, label %a.create573, label %a.after574

choice.exit567:                                   ; preds = %a.store585, %or.72.exit
  br label %choice.exit537

a.create573:                                      ; preds = %choice.then566
  %arena.cur575 = call ptr @dva_arena_current()
  %a.create576 = call ptr @dva_arena_alloc(ptr %arena.cur575, i64 24)
  %arena.cur577 = call ptr @dva_arena_current()
  %a.buf578 = call ptr @dva_arena_alloc(ptr %arena.cur577, i64 128)
  %a.len.gep579 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create576, i32 0, i32 0
  store i64 0, ptr %a.len.gep579, align 8
  %a.data.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create576, i32 0, i32 1
  store ptr %a.buf578, ptr %a.data.gep580, align 8
  %a.cap.gep581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create576, i32 0, i32 2
  store i64 16, ptr %a.cap.gep581, align 8
  store ptr %a.create576, ptr %var.blk_locals, align 8
  br label %a.after574

a.after574:                                       ; preds = %a.create573, %choice.then566
  %a.load2582 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check583

a.check583:                                       ; preds = %a.after574
  %a.len586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2582, i32 0, i32 0
  %a.len587 = load i64, ptr %a.len586, align 8
  %a.cap588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2582, i32 0, i32 2
  %a.cap589 = load i64, ptr %a.cap588, align 8
  %a.needs.grow590 = icmp eq i64 %a.len587, %a.cap589
  br i1 %a.needs.grow590, label %a.grow584, label %a.store585

a.grow584:                                        ; preds = %a.check583
  call void @dva_array_grow(ptr %a.load2582)
  br label %a.store585

a.store585:                                       ; preds = %a.grow584, %a.check583
  %a.cur.data591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2582, i32 0, i32 1
  %a.cur.data592 = load ptr, ptr %a.cur.data591, align 8
  %a.cur.len593 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2582, i32 0, i32 0
  %a.cur.len594 = load i64, ptr %a.cur.len593, align 8
  %a.elem.gep595 = getelementptr i64, ptr %a.cur.data592, i64 %a.cur.len594
  %slot.p2i596 = ptrtoint ptr %fld.load570 to i64
  store i64 %slot.p2i596, ptr %a.elem.gep595, align 8
  %a.next.len597 = add i64 %a.cur.len594, 1
  %b.len.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2582, i32 0, i32 0
  store i64 %a.next.len597, ptr %b.len.gep598, align 8
  br label %choice.exit567

a.create608:                                      ; preds = %loop.exit.71
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
  store ptr %a.create611, ptr %var.new_exprs, align 8
  br label %a.after609

a.after609:                                       ; preds = %a.create608, %loop.exit.71
  %a.load2617 = load ptr, ptr %var.new_exprs, align 8
  store ptr %a.load2617, ptr %pay.gep604, align 8
  br label %choice.exit

choice.case618:                                   ; preds = %choice.next424
  %pay.gep623 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr624 = load ptr, ptr %pay.gep623, align 8
  store ptr %payload.ptr624, ptr %var._625, align 8
  store ptr %payload.ptr624, ptr %var.ch, align 8
  %var.load626 = load ptr, ptr %var.ch, align 8
  %fld.gep627 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load626, i32 0, i32 0
  %fld.load628 = load ptr, ptr %fld.gep627, align 8
  %var.load629 = load ptr, ptr %var.table, align 8
  %var.load630 = load ptr, ptr %var.locals, align 8
  %a.load631 = load ptr, ptr %var.locals, align 8
  %a.null632 = icmp eq ptr %a.load631, null
  br i1 %a.null632, label %a.create633, label %a.after634

choice.next619:                                   ; preds = %choice.next424
  %tag.gep924 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id925 = load i64, ptr %tag.gep924, align 8
  %tag.match926 = icmp eq i64 %tag.id925, 6
  br i1 %tag.match926, label %choice.case922, label %choice.next923

a.create633:                                      ; preds = %choice.case618
  %arena.cur635 = call ptr @dva_arena_current()
  %a.create636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 24)
  %arena.cur637 = call ptr @dva_arena_current()
  %a.buf638 = call ptr @dva_arena_alloc(ptr %arena.cur637, i64 128)
  %a.len.gep639 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create636, i32 0, i32 0
  store i64 0, ptr %a.len.gep639, align 8
  %a.data.gep640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create636, i32 0, i32 1
  store ptr %a.buf638, ptr %a.data.gep640, align 8
  %a.cap.gep641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create636, i32 0, i32 2
  store i64 16, ptr %a.cap.gep641, align 8
  store ptr %a.create636, ptr %var.locals, align 8
  br label %a.after634

a.after634:                                       ; preds = %a.create633, %choice.case618
  %a.load2642 = load ptr, ptr %var.locals, align 8
  %call.res643 = call ptr @"overloads::walk"(ptr %fld.load628, ptr %var.load629, ptr %a.load2642)
  store ptr %call.res643, ptr %var.new_cond, align 8
  %arena.cur644 = call ptr @dva_arena_current()
  %a.new645 = call ptr @dva_arena_alloc(ptr %arena.cur644, i64 24)
  %arena.cur646 = call ptr @dva_arena_current()
  %a.buf647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 128)
  %a.len.gep648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new645, i32 0, i32 0
  store i64 0, ptr %a.len.gep648, align 8
  %a.data.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new645, i32 0, i32 1
  store ptr %a.buf647, ptr %a.data.gep649, align 8
  %a.cap.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new645, i32 0, i32 2
  store i64 16, ptr %a.cap.gep650, align 8
  store ptr %a.new645, ptr %var.new_branches, align 8
  %var.load651 = load ptr, ptr %var.ch, align 8
  %fld.gep652 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load651, i32 0, i32 2
  %fld.load653 = load ptr, ptr %fld.gep652, align 8
  %arr.cycle.len654 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load653, i32 0, i32 0
  %arr.cycle.len655 = load i64, ptr %arr.cycle.len654, align 8
  %arr.cycle.data656 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load653, i32 0, i32 1
  %arr.cycle.data657 = load ptr, ptr %arr.cycle.data656, align 8
  store i64 0, ptr %loop.idx.73, align 8
  %cycle.prev.u658 = load ptr, ptr %var._625, align 8
  br label %loop.header.73

loop.header.73:                                   ; preds = %loop.latch.73, %a.after634
  %counter.load659 = load i64, ptr %loop.idx.73, align 8
  %loop.cond660 = icmp slt i64 %counter.load659, %arr.cycle.len655
  br i1 %loop.cond660, label %loop.body.73, label %loop.exit.nat.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i661 = sub i64 %counter.load659, 0
  store i64 1, ptr %loop.step.73, align 8
  %arr.elem.gep662 = getelementptr i64, ptr %arr.cycle.data657, i64 %counter.load659
  %arr.elem.raw663 = load i64, ptr %arr.elem.gep662, align 8
  %slot.i2p664 = inttoptr i64 %arr.elem.raw663 to ptr
  store i64 %loop.rel.i661, ptr %var._i665, align 8
  store ptr %slot.i2p664, ptr %var._666, align 8
  store ptr %slot.i2p664, ptr %var.br, align 8
  %var.load667 = load ptr, ptr %var.locals, align 8
  %a.load668 = load ptr, ptr %var.locals, align 8
  %a.null669 = icmp eq ptr %a.load668, null
  br i1 %a.null669, label %a.create670, label %a.after671

loop.exit.nat.73:                                 ; preds = %loop.header.73
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %a.store880
  %step.val894 = load i64, ptr %loop.step.73, align 8
  %loop.next895 = add i64 %counter.load659, %step.val894
  store i64 %loop.next895, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %loop.exit.nat.73
  store ptr %cycle.prev.u658, ptr %var._625, align 8
  %arena.cur896 = call ptr @dva_arena_current()
  %enum.alloc897 = call ptr @dva_arena_alloc(ptr %arena.cur896, i64 16)
  %tag.gep898 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc897, i32 0, i32 0
  store i64 7, ptr %tag.gep898, align 8
  %pay.gep899 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc897, i32 0, i32 1
  %var.load900 = load ptr, ptr %var.new_cond, align 8
  %var.load901 = load ptr, ptr %var.ch, align 8
  %fld.gep902 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load901, i32 0, i32 1
  %fld.load903 = load i1, ptr %fld.gep902, align 1
  %var.load904 = load ptr, ptr %var.new_branches, align 8
  %a.load905 = load ptr, ptr %var.new_branches, align 8
  %a.null906 = icmp eq ptr %a.load905, null
  br i1 %a.null906, label %a.create907, label %a.after908

a.create670:                                      ; preds = %loop.body.73
  %arena.cur672 = call ptr @dva_arena_current()
  %a.create673 = call ptr @dva_arena_alloc(ptr %arena.cur672, i64 24)
  %arena.cur674 = call ptr @dva_arena_current()
  %a.buf675 = call ptr @dva_arena_alloc(ptr %arena.cur674, i64 128)
  %a.len.gep676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create673, i32 0, i32 0
  store i64 0, ptr %a.len.gep676, align 8
  %a.data.gep677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create673, i32 0, i32 1
  store ptr %a.buf675, ptr %a.data.gep677, align 8
  %a.cap.gep678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create673, i32 0, i32 2
  store i64 16, ptr %a.cap.gep678, align 8
  store ptr %a.create673, ptr %var.locals, align 8
  br label %a.after671

a.after671:                                       ; preds = %a.create670, %loop.body.73
  %a.load2679 = load ptr, ptr %var.locals, align 8
  %a.copy.len680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2679, i32 0, i32 0
  %a.copy.len681 = load i64, ptr %a.copy.len680, align 8
  %a.copy.cap682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2679, i32 0, i32 2
  %a.copy.cap683 = load i64, ptr %a.copy.cap682, align 8
  %a.copy.data684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2679, i32 0, i32 1
  %a.copy.data685 = load ptr, ptr %a.copy.data684, align 8
  %arena.cur686 = call ptr @dva_arena_current()
  %a.copy687 = call ptr @dva_arena_alloc(ptr %arena.cur686, i64 24)
  %a.copy.buflen688 = add i64 %a.copy.cap683, 1
  %a.copy.bufsize689 = mul i64 %a.copy.buflen688, 8
  %arena.cur690 = call ptr @dva_arena_current()
  %a.copy.buf691 = call ptr @dva_arena_alloc(ptr %arena.cur690, i64 %a.copy.bufsize689)
  %a.copy.copylen692 = mul i64 %a.copy.len681, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf691, ptr align 1 %a.copy.data685, i64 %a.copy.copylen692, i1 false)
  %a.copy.len.gep693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy687, i32 0, i32 0
  store i64 %a.copy.len681, ptr %a.copy.len.gep693, align 8
  %a.copy.data.gep694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy687, i32 0, i32 1
  store ptr %a.copy.buf691, ptr %a.copy.data.gep694, align 8
  %a.copy.cap.gep695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy687, i32 0, i32 2
  store i64 %a.copy.cap683, ptr %a.copy.cap.gep695, align 8
  store ptr %a.copy687, ptr %var.br_locals, align 8
  %var.load696 = load ptr, ptr %var.br, align 8
  %fld.gep697 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load696, i32 0, i32 4
  %fld.load698 = load ptr, ptr %fld.gep697, align 8
  %arr.cycle.len699 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load698, i32 0, i32 0
  %arr.cycle.len700 = load i64, ptr %arr.cycle.len699, align 8
  %arr.cycle.data701 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load698, i32 0, i32 1
  %arr.cycle.data702 = load ptr, ptr %arr.cycle.data701, align 8
  store i64 0, ptr %loop.idx.74, align 8
  %cycle.prev.u703 = load ptr, ptr %var._666, align 8
  %cycle.prev.i = load i64, ptr %var._i665, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %a.after671
  %counter.load704 = load i64, ptr %loop.idx.74, align 8
  %loop.cond705 = icmp slt i64 %counter.load704, %arr.cycle.len700
  br i1 %loop.cond705, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i706 = sub i64 %counter.load704, 0
  store i64 1, ptr %loop.step.74, align 8
  %arr.elem.gep707 = getelementptr i64, ptr %arr.cycle.data702, i64 %counter.load704
  %arr.elem.raw708 = load i64, ptr %arr.elem.gep707, align 8
  %slot.i2p709 = inttoptr i64 %arr.elem.raw708 to ptr
  store i64 %loop.rel.i706, ptr %var._i710, align 8
  store ptr %slot.i2p709, ptr %var._711, align 8
  store ptr %slot.i2p709, ptr %var.bv, align 8
  %var.load712 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len713 = getelementptr inbounds { i64, ptr }, ptr %var.load712, i32 0, i32 0
  %eq.lhs.len714 = load i64, ptr %eq.lhs.len713, align 8
  %eq.lhs.len715 = and i64 %eq.lhs.len714, 281474976710655
  %str.tag716 = lshr i64 %eq.lhs.len714, 48
  %str.immortal717 = icmp eq i64 %str.tag716, 0
  br i1 %str.immortal717, label %str_ok719, label %str_gen_check718

loop.exit.nat.74:                                 ; preds = %loop.header.74
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit744
  %step.val774 = load i64, ptr %loop.step.74, align 8
  %loop.next775 = add i64 %counter.load704, %step.val774
  store i64 %loop.next775, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %loop.exit.nat.74
  store ptr %cycle.prev.u703, ptr %var._666, align 8
  store i64 %cycle.prev.i, ptr %var._i665, align 8
  %var.load776 = load ptr, ptr %var.br, align 8
  %fld.gep777 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load776, i32 0, i32 1
  %fld.load778 = load ptr, ptr %fld.gep777, align 8
  %var.load779 = load ptr, ptr %var.table, align 8
  %var.load780 = load ptr, ptr %var.br_locals, align 8
  %a.load781 = load ptr, ptr %var.br_locals, align 8
  %a.null782 = icmp eq ptr %a.load781, null
  br i1 %a.null782, label %a.create783, label %a.after784

str_gen_check718:                                 ; preds = %loop.body.74
  %arena.cur721 = call ptr @dva_arena_current()
  %tag.valid722 = call i1 @dva_arena_validate_tag(ptr %arena.cur721, i64 %str.tag716)
  br i1 %tag.valid722, label %str_ok719, label %str_stale720

str_ok719:                                        ; preds = %str_stale720, %str_gen_check718, %loop.body.74
  %eq.rhs.len723 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len724 = and i64 %eq.rhs.len723, 281474976710655
  %str.tag725 = lshr i64 %eq.rhs.len723, 48
  %str.immortal726 = icmp eq i64 %str.tag725, 0
  br i1 %str.immortal726, label %str_ok728, label %str_gen_check727

str_stale720:                                     ; preds = %str_gen_check718
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok719

str_gen_check727:                                 ; preds = %str_ok719
  %arena.cur730 = call ptr @dva_arena_current()
  %tag.valid731 = call i1 @dva_arena_validate_tag(ptr %arena.cur730, i64 %str.tag725)
  br i1 %tag.valid731, label %str_ok728, label %str_stale729

str_ok728:                                        ; preds = %str_stale729, %str_gen_check727, %str_ok719
  %eq.len732 = icmp eq i64 %eq.lhs.len715, %eq.rhs.len724
  br i1 %eq.len732, label %str.eq.then733, label %str.eq.else734

str_stale729:                                     ; preds = %str_gen_check727
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok728

str.eq.then733:                                   ; preds = %str_ok728
  %eq.lhs.data736 = getelementptr inbounds { i64, ptr }, ptr %var.load712, i32 0, i32 1
  %eq.lhs.data737 = load ptr, ptr %eq.lhs.data736, align 8
  %eq.rhs.data738 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp739 = call i32 @memcmp(ptr %eq.lhs.data737, ptr %eq.rhs.data738, i64 %eq.lhs.len715)
  %eq.cmp.zero740 = icmp eq i32 %eq.memcmp739, 0
  br label %str.eq.merge735

str.eq.else734:                                   ; preds = %str_ok728
  br label %str.eq.merge735

str.eq.merge735:                                  ; preds = %str.eq.else734, %str.eq.then733
  %str.eq.result741 = phi i1 [ %eq.cmp.zero740, %str.eq.then733 ], [ false, %str.eq.else734 ]
  %str.neq742 = xor i1 %str.eq.result741, true
  br i1 %str.neq742, label %choice.then743, label %choice.exit744

choice.then743:                                   ; preds = %str.eq.merge735
  %var.load745 = load ptr, ptr %var.bv, align 8
  %a.load746 = load ptr, ptr %var.br_locals, align 8
  %a.null747 = icmp eq ptr %a.load746, null
  br i1 %a.null747, label %a.create748, label %a.after749

choice.exit744:                                   ; preds = %a.store760, %str.eq.merge735
  br label %loop.latch.74

a.create748:                                      ; preds = %choice.then743
  %arena.cur750 = call ptr @dva_arena_current()
  %a.create751 = call ptr @dva_arena_alloc(ptr %arena.cur750, i64 24)
  %arena.cur752 = call ptr @dva_arena_current()
  %a.buf753 = call ptr @dva_arena_alloc(ptr %arena.cur752, i64 128)
  %a.len.gep754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 0
  store i64 0, ptr %a.len.gep754, align 8
  %a.data.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 1
  store ptr %a.buf753, ptr %a.data.gep755, align 8
  %a.cap.gep756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 2
  store i64 16, ptr %a.cap.gep756, align 8
  store ptr %a.create751, ptr %var.br_locals, align 8
  br label %a.after749

a.after749:                                       ; preds = %a.create748, %choice.then743
  %a.load2757 = load ptr, ptr %var.br_locals, align 8
  br label %a.check758

a.check758:                                       ; preds = %a.after749
  %a.len761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  %a.len762 = load i64, ptr %a.len761, align 8
  %a.cap763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 2
  %a.cap764 = load i64, ptr %a.cap763, align 8
  %a.needs.grow765 = icmp eq i64 %a.len762, %a.cap764
  br i1 %a.needs.grow765, label %a.grow759, label %a.store760

a.grow759:                                        ; preds = %a.check758
  call void @dva_array_grow(ptr %a.load2757)
  br label %a.store760

a.store760:                                       ; preds = %a.grow759, %a.check758
  %a.cur.data766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 1
  %a.cur.data767 = load ptr, ptr %a.cur.data766, align 8
  %a.cur.len768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  %a.cur.len769 = load i64, ptr %a.cur.len768, align 8
  %a.elem.gep770 = getelementptr i64, ptr %a.cur.data767, i64 %a.cur.len769
  %slot.p2i771 = ptrtoint ptr %var.load745 to i64
  store i64 %slot.p2i771, ptr %a.elem.gep770, align 8
  %a.next.len772 = add i64 %a.cur.len769, 1
  %b.len.gep773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  store i64 %a.next.len772, ptr %b.len.gep773, align 8
  br label %choice.exit744

a.create783:                                      ; preds = %loop.exit.74
  %arena.cur785 = call ptr @dva_arena_current()
  %a.create786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 24)
  %arena.cur787 = call ptr @dva_arena_current()
  %a.buf788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 128)
  %a.len.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 0
  store i64 0, ptr %a.len.gep789, align 8
  %a.data.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 1
  store ptr %a.buf788, ptr %a.data.gep790, align 8
  %a.cap.gep791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 2
  store i64 16, ptr %a.cap.gep791, align 8
  store ptr %a.create786, ptr %var.br_locals, align 8
  br label %a.after784

a.after784:                                       ; preds = %a.create783, %loop.exit.74
  %a.load2792 = load ptr, ptr %var.br_locals, align 8
  %call.res793 = call ptr @"overloads::walk_many"(ptr %fld.load778, ptr %var.load779, ptr %a.load2792)
  store ptr %call.res793, ptr %var.new_cases, align 8
  %var.load794 = load ptr, ptr %var.br, align 8
  %fld.gep795 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load794, i32 0, i32 2
  %fld.load796 = load ptr, ptr %fld.gep795, align 8
  %var.load797 = load ptr, ptr %var.table, align 8
  %var.load798 = load ptr, ptr %var.br_locals, align 8
  %a.load799 = load ptr, ptr %var.br_locals, align 8
  %a.null800 = icmp eq ptr %a.load799, null
  br i1 %a.null800, label %a.create801, label %a.after802

a.create801:                                      ; preds = %a.after784
  %arena.cur803 = call ptr @dva_arena_current()
  %a.create804 = call ptr @dva_arena_alloc(ptr %arena.cur803, i64 24)
  %arena.cur805 = call ptr @dva_arena_current()
  %a.buf806 = call ptr @dva_arena_alloc(ptr %arena.cur805, i64 128)
  %a.len.gep807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create804, i32 0, i32 0
  store i64 0, ptr %a.len.gep807, align 8
  %a.data.gep808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create804, i32 0, i32 1
  store ptr %a.buf806, ptr %a.data.gep808, align 8
  %a.cap.gep809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create804, i32 0, i32 2
  store i64 16, ptr %a.cap.gep809, align 8
  store ptr %a.create804, ptr %var.br_locals, align 8
  br label %a.after802

a.after802:                                       ; preds = %a.create801, %a.after784
  %a.load2810 = load ptr, ptr %var.br_locals, align 8
  %call.res811 = call ptr @"overloads::walk"(ptr %fld.load796, ptr %var.load797, ptr %a.load2810)
  store ptr %call.res811, ptr %var.new_pred, align 8
  %var.load812 = load ptr, ptr %var.br, align 8
  %fld.gep813 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load812, i32 0, i32 6
  %fld.load814 = load ptr, ptr %fld.gep813, align 8
  %var.load815 = load ptr, ptr %var.table, align 8
  %var.load816 = load ptr, ptr %var.br_locals, align 8
  %a.load817 = load ptr, ptr %var.br_locals, align 8
  %a.null818 = icmp eq ptr %a.load817, null
  br i1 %a.null818, label %a.create819, label %a.after820

a.create819:                                      ; preds = %a.after802
  %arena.cur821 = call ptr @dva_arena_current()
  %a.create822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 24)
  %arena.cur823 = call ptr @dva_arena_current()
  %a.buf824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 128)
  %a.len.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 0
  store i64 0, ptr %a.len.gep825, align 8
  %a.data.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 1
  store ptr %a.buf824, ptr %a.data.gep826, align 8
  %a.cap.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 2
  store i64 16, ptr %a.cap.gep827, align 8
  store ptr %a.create822, ptr %var.br_locals, align 8
  br label %a.after820

a.after820:                                       ; preds = %a.create819, %a.after802
  %a.load2828 = load ptr, ptr %var.br_locals, align 8
  %call.res829 = call ptr @"overloads::walk"(ptr %fld.load814, ptr %var.load815, ptr %a.load2828)
  store ptr %call.res829, ptr %var.new_blk, align 8
  %var.load830 = load ptr, ptr %var.br, align 8
  %fld.gep831 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load830, i32 0, i32 0
  %fld.load832 = load ptr, ptr %fld.gep831, align 8
  %var.load833 = load ptr, ptr %var.new_cases, align 8
  %a.load834 = load ptr, ptr %var.new_cases, align 8
  %a.null835 = icmp eq ptr %a.load834, null
  br i1 %a.null835, label %a.create836, label %a.after837

a.create836:                                      ; preds = %a.after820
  %arena.cur838 = call ptr @dva_arena_current()
  %a.create839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 24)
  %arena.cur840 = call ptr @dva_arena_current()
  %a.buf841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 128)
  %a.len.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 0
  store i64 0, ptr %a.len.gep842, align 8
  %a.data.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 1
  store ptr %a.buf841, ptr %a.data.gep843, align 8
  %a.cap.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 2
  store i64 16, ptr %a.cap.gep844, align 8
  store ptr %a.create839, ptr %var.new_cases, align 8
  br label %a.after837

a.after837:                                       ; preds = %a.create836, %a.after820
  %a.load2845 = load ptr, ptr %var.new_cases, align 8
  %var.load846 = load ptr, ptr %var.new_pred, align 8
  %var.load847 = load ptr, ptr %var.br, align 8
  %fld.gep848 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load847, i32 0, i32 3
  %fld.load849 = load ptr, ptr %fld.gep848, align 8
  %var.load850 = load ptr, ptr %var.br, align 8
  %fld.gep851 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load850, i32 0, i32 4
  %fld.load852 = load ptr, ptr %fld.gep851, align 8
  %var.load853 = load ptr, ptr %var.br, align 8
  %fld.gep854 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load853, i32 0, i32 5
  %fld.load855 = load i1, ptr %fld.gep854, align 1
  %var.load856 = load ptr, ptr %var.new_blk, align 8
  %arena.cur857 = call ptr @dva_arena_current()
  %rec.alloc858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld859 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 0
  store ptr %fld.load832, ptr %rec.fld859, align 8
  %rec.fld860 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 1
  store ptr %a.load2845, ptr %rec.fld860, align 8
  %rec.fld861 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 2
  store ptr %var.load846, ptr %rec.fld861, align 8
  %rec.fld862 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 3
  store ptr %fld.load849, ptr %rec.fld862, align 8
  %rec.fld863 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 4
  store ptr %fld.load852, ptr %rec.fld863, align 8
  %rec.fld864 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 5
  store i1 %fld.load855, ptr %rec.fld864, align 1
  %rec.fld865 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc858, i32 0, i32 6
  store ptr %var.load856, ptr %rec.fld865, align 8
  %a.load866 = load ptr, ptr %var.new_branches, align 8
  %a.null867 = icmp eq ptr %a.load866, null
  br i1 %a.null867, label %a.create868, label %a.after869

a.create868:                                      ; preds = %a.after837
  %arena.cur870 = call ptr @dva_arena_current()
  %a.create871 = call ptr @dva_arena_alloc(ptr %arena.cur870, i64 24)
  %arena.cur872 = call ptr @dva_arena_current()
  %a.buf873 = call ptr @dva_arena_alloc(ptr %arena.cur872, i64 128)
  %a.len.gep874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 0
  store i64 0, ptr %a.len.gep874, align 8
  %a.data.gep875 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 1
  store ptr %a.buf873, ptr %a.data.gep875, align 8
  %a.cap.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 2
  store i64 16, ptr %a.cap.gep876, align 8
  store ptr %a.create871, ptr %var.new_branches, align 8
  br label %a.after869

a.after869:                                       ; preds = %a.create868, %a.after837
  %a.load2877 = load ptr, ptr %var.new_branches, align 8
  br label %a.check878

a.check878:                                       ; preds = %a.after869
  %a.len881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2877, i32 0, i32 0
  %a.len882 = load i64, ptr %a.len881, align 8
  %a.cap883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2877, i32 0, i32 2
  %a.cap884 = load i64, ptr %a.cap883, align 8
  %a.needs.grow885 = icmp eq i64 %a.len882, %a.cap884
  br i1 %a.needs.grow885, label %a.grow879, label %a.store880

a.grow879:                                        ; preds = %a.check878
  call void @dva_array_grow(ptr %a.load2877)
  br label %a.store880

a.store880:                                       ; preds = %a.grow879, %a.check878
  %a.cur.data886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2877, i32 0, i32 1
  %a.cur.data887 = load ptr, ptr %a.cur.data886, align 8
  %a.cur.len888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2877, i32 0, i32 0
  %a.cur.len889 = load i64, ptr %a.cur.len888, align 8
  %a.elem.gep890 = getelementptr i64, ptr %a.cur.data887, i64 %a.cur.len889
  %slot.p2i891 = ptrtoint ptr %rec.alloc858 to i64
  store i64 %slot.p2i891, ptr %a.elem.gep890, align 8
  %a.next.len892 = add i64 %a.cur.len889, 1
  %b.len.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2877, i32 0, i32 0
  store i64 %a.next.len892, ptr %b.len.gep893, align 8
  br label %loop.latch.73

a.create907:                                      ; preds = %loop.exit.73
  %arena.cur909 = call ptr @dva_arena_current()
  %a.create910 = call ptr @dva_arena_alloc(ptr %arena.cur909, i64 24)
  %arena.cur911 = call ptr @dva_arena_current()
  %a.buf912 = call ptr @dva_arena_alloc(ptr %arena.cur911, i64 128)
  %a.len.gep913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create910, i32 0, i32 0
  store i64 0, ptr %a.len.gep913, align 8
  %a.data.gep914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create910, i32 0, i32 1
  store ptr %a.buf912, ptr %a.data.gep914, align 8
  %a.cap.gep915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create910, i32 0, i32 2
  store i64 16, ptr %a.cap.gep915, align 8
  store ptr %a.create910, ptr %var.new_branches, align 8
  br label %a.after908

a.after908:                                       ; preds = %a.create907, %loop.exit.73
  %a.load2916 = load ptr, ptr %var.new_branches, align 8
  %arena.cur917 = call ptr @dva_arena_current()
  %rec.alloc918 = call ptr @dva_arena_alloc(ptr %arena.cur917, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld919 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc918, i32 0, i32 0
  store ptr %var.load900, ptr %rec.fld919, align 8
  %rec.fld920 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc918, i32 0, i32 1
  store i1 %fld.load903, ptr %rec.fld920, align 1
  %rec.fld921 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc918, i32 0, i32 2
  store ptr %a.load2916, ptr %rec.fld921, align 8
  store ptr %rec.alloc918, ptr %pay.gep899, align 8
  br label %choice.exit

choice.case922:                                   ; preds = %choice.next619
  %pay.gep927 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr928 = load ptr, ptr %pay.gep927, align 8
  store ptr %payload.ptr928, ptr %var._929, align 8
  store ptr %payload.ptr928, ptr %var.a, align 8
  %var.load930 = load ptr, ptr %var.a, align 8
  %fld.gep931 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load930, i32 0, i32 5
  %fld.load932 = load ptr, ptr %fld.gep931, align 8
  %tag.gep936 = getelementptr inbounds { i64, ptr }, ptr %fld.load932, i32 0, i32 0
  %tag.id937 = load i64, ptr %tag.gep936, align 8
  %tag.match938 = icmp eq i64 %tag.id937, 14
  br i1 %tag.match938, label %choice.case934, label %choice.next935

choice.next923:                                   ; preds = %choice.next619
  %tag.gep1110 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1111 = load i64, ptr %tag.gep1110, align 8
  %tag.match1112 = icmp eq i64 %tag.id1111, 23
  br i1 %tag.match1112, label %choice.case1108, label %choice.next1109

choice.exit933:                                   ; preds = %choice.exit949, %choice.case934
  %choice.res964 = phi i64 [ %a.len.query945, %choice.case934 ], [ %choice.res963, %choice.exit949 ]
  store i64 %choice.res964, ptr %var.arity, align 8
  %var.load965 = load ptr, ptr %var.table, align 8
  %var.load966 = load ptr, ptr %var.a, align 8
  %fld.gep967 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load966, i32 0, i32 0
  %fld.load968 = load ptr, ptr %fld.gep967, align 8
  %call.res969 = call i1 @"overloads::is_family"(ptr %var.load965, ptr %fld.load968)
  br i1 %call.res969, label %and.75.then, label %and.75.else

choice.case934:                                   ; preds = %choice.case922
  %pay.gep939 = getelementptr inbounds { i64, ptr }, ptr %fld.load932, i32 0, i32 1
  %payload.ptr940 = load ptr, ptr %pay.gep939, align 8
  store ptr %payload.ptr940, ptr %var._941, align 8
  store ptr %payload.ptr940, ptr %var.fn, align 8
  %var.load942 = load ptr, ptr %var.fn, align 8
  %fld.gep943 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load942, i32 0, i32 0
  %fld.load944 = load ptr, ptr %fld.gep943, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load944, i32 0, i32 0
  %a.len.query945 = load i64, ptr %a.len.query, align 8
  br label %choice.exit933

choice.next935:                                   ; preds = %choice.case922
  %var.load946 = load ptr, ptr %var.a, align 8
  %fld.gep947 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load946, i32 0, i32 8
  %fld.load948 = load ptr, ptr %fld.gep947, align 8
  %tag.gep952 = getelementptr inbounds { i64, ptr }, ptr %fld.load948, i32 0, i32 0
  %tag.id953 = load i64, ptr %tag.gep952, align 8
  %tag.match954 = icmp eq i64 %tag.id953, 8
  br i1 %tag.match954, label %choice.case950, label %choice.next951

choice.exit949:                                   ; preds = %choice.next951, %choice.case950
  %choice.res963 = phi i64 [ %a.len.query962, %choice.case950 ], [ -1, %choice.next951 ]
  br label %choice.exit933

choice.case950:                                   ; preds = %choice.next935
  %pay.gep955 = getelementptr inbounds { i64, ptr }, ptr %fld.load948, i32 0, i32 1
  %payload.ptr956 = load ptr, ptr %pay.gep955, align 8
  store ptr %payload.ptr956, ptr %var._957, align 8
  store ptr %payload.ptr956, ptr %var.ft, align 8
  %var.load958 = load ptr, ptr %var.ft, align 8
  %fld.gep959 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load958, i32 0, i32 0
  %fld.load960 = load ptr, ptr %fld.gep959, align 8
  %a.len.query961 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load960, i32 0, i32 0
  %a.len.query962 = load i64, ptr %a.len.query961, align 8
  br label %choice.exit949

choice.next951:                                   ; preds = %choice.next935
  br label %choice.exit949

and.75.then:                                      ; preds = %choice.exit933
  %var.load970 = load ptr, ptr %var.locals, align 8
  %a.load971 = load ptr, ptr %var.locals, align 8
  %a.null972 = icmp eq ptr %a.load971, null
  br i1 %a.null972, label %a.create973, label %a.after974

and.75.else:                                      ; preds = %choice.exit933
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %a.after974
  %and.75.phi = phi i1 [ %nottmp984, %a.after974 ], [ %call.res969, %and.75.else ]
  store i1 %and.75.phi, ptr %var.family, align 1
  %var.load985 = load i1, ptr %var.family, align 1
  br i1 %var.load985, label %and.76.then, label %and.76.else

a.create973:                                      ; preds = %and.75.then
  %arena.cur975 = call ptr @dva_arena_current()
  %a.create976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 24)
  %arena.cur977 = call ptr @dva_arena_current()
  %a.buf978 = call ptr @dva_arena_alloc(ptr %arena.cur977, i64 128)
  %a.len.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 0
  store i64 0, ptr %a.len.gep979, align 8
  %a.data.gep980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 1
  store ptr %a.buf978, ptr %a.data.gep980, align 8
  %a.cap.gep981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 2
  store i64 16, ptr %a.cap.gep981, align 8
  store ptr %a.create976, ptr %var.locals, align 8
  br label %a.after974

a.after974:                                       ; preds = %a.create973, %and.75.then
  %a.load2982 = load ptr, ptr %var.locals, align 8
  %call.res983 = call i1 @"overloads::contains"(ptr %a.load2982, ptr @str.6.struct)
  %nottmp984 = xor i1 %call.res983, true
  br label %and.75.exit

and.76.then:                                      ; preds = %and.75.exit
  %var.load986 = load i64, ptr %var.arity, align 8
  %cmptmp = icmp sge i64 %var.load986, 0
  br label %and.76.exit

and.76.else:                                      ; preds = %and.75.exit
  br label %and.76.exit

and.76.exit:                                      ; preds = %and.76.else, %and.76.then
  %and.76.phi = phi i1 [ %cmptmp, %and.76.then ], [ %var.load985, %and.76.else ]
  br i1 %and.76.phi, label %choice.then987, label %choice.else988

choice.then987:                                   ; preds = %and.76.exit
  %var.load990 = load ptr, ptr %var.a, align 8
  %fld.gep991 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load990, i32 0, i32 0
  %fld.load992 = load ptr, ptr %fld.gep991, align 8
  %var.load993 = load i64, ptr %var.arity, align 8
  %call.res994 = call ptr @"overloads::symbol"(ptr %fld.load992, i64 %var.load993)
  br label %choice.exit989

choice.else988:                                   ; preds = %and.76.exit
  %var.load995 = load ptr, ptr %var.a, align 8
  %fld.gep996 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load995, i32 0, i32 0
  %fld.load997 = load ptr, ptr %fld.gep996, align 8
  br label %choice.exit989

choice.exit989:                                   ; preds = %choice.else988, %choice.then987
  %choice.res998 = phi ptr [ %call.res994, %choice.then987 ], [ %fld.load997, %choice.else988 ]
  store ptr %choice.res998, ptr %var.new_name, align 8
  %var.load999 = load ptr, ptr %var.a, align 8
  %fld.gep1000 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load999, i32 0, i32 8
  %fld.load1001 = load ptr, ptr %fld.gep1000, align 8
  %tag.gep1005 = getelementptr inbounds { i64, ptr }, ptr %fld.load1001, i32 0, i32 0
  %tag.id1006 = load i64, ptr %tag.gep1005, align 8
  %tag.match1007 = icmp eq i64 %tag.id1006, 8
  br i1 %tag.match1007, label %choice.case1003, label %choice.next1004

choice.exit1002:                                  ; preds = %choice.next1004, %choice.case1003
  %choice.res1019 = phi ptr [ %fld.load1013, %choice.case1003 ], [ %call.res1018, %choice.next1004 ]
  store ptr %choice.res1019, ptr %var.expected, align 8
  %var.load1020 = load ptr, ptr %var.a, align 8
  %fld.gep1021 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1020, i32 0, i32 5
  %fld.load1022 = load ptr, ptr %fld.gep1021, align 8
  %var.load1023 = load ptr, ptr %var.table, align 8
  %var.load1024 = load ptr, ptr %var.locals, align 8
  %a.load1025 = load ptr, ptr %var.locals, align 8
  %a.null1026 = icmp eq ptr %a.load1025, null
  br i1 %a.null1026, label %a.create1027, label %a.after1028

choice.case1003:                                  ; preds = %choice.exit989
  %pay.gep1008 = getelementptr inbounds { i64, ptr }, ptr %fld.load1001, i32 0, i32 1
  %payload.ptr1009 = load ptr, ptr %pay.gep1008, align 8
  store ptr %payload.ptr1009, ptr %var._1010, align 8
  %var.load1011 = load ptr, ptr %var.a, align 8
  %fld.gep1012 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1011, i32 0, i32 8
  %fld.load1013 = load ptr, ptr %fld.gep1012, align 8
  br label %choice.exit1002

choice.next1004:                                  ; preds = %choice.exit989
  %var.load1014 = load ptr, ptr %var.table, align 8
  %var.load1015 = load ptr, ptr %var.a, align 8
  %fld.gep1016 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1015, i32 0, i32 0
  %fld.load1017 = load ptr, ptr %fld.gep1016, align 8
  %call.res1018 = call ptr @"overloads::signature"(ptr %var.load1014, ptr %fld.load1017, i64 -1)
  br label %choice.exit1002

a.create1027:                                     ; preds = %choice.exit1002
  %arena.cur1029 = call ptr @dva_arena_current()
  %a.create1030 = call ptr @dva_arena_alloc(ptr %arena.cur1029, i64 24)
  %arena.cur1031 = call ptr @dva_arena_current()
  %a.buf1032 = call ptr @dva_arena_alloc(ptr %arena.cur1031, i64 128)
  %a.len.gep1033 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 0
  store i64 0, ptr %a.len.gep1033, align 8
  %a.data.gep1034 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 1
  store ptr %a.buf1032, ptr %a.data.gep1034, align 8
  %a.cap.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1035, align 8
  store ptr %a.create1030, ptr %var.locals, align 8
  br label %a.after1028

a.after1028:                                      ; preds = %a.create1027, %choice.exit1002
  %a.load21036 = load ptr, ptr %var.locals, align 8
  %call.res1037 = call ptr @"overloads::walk"(ptr %fld.load1022, ptr %var.load1023, ptr %a.load21036)
  %var.load1038 = load ptr, ptr %var.expected, align 8
  %var.load1039 = load ptr, ptr %var.table, align 8
  %var.load1040 = load ptr, ptr %var.locals, align 8
  %a.load1041 = load ptr, ptr %var.locals, align 8
  %a.null1042 = icmp eq ptr %a.load1041, null
  br i1 %a.null1042, label %a.create1043, label %a.after1044

a.create1043:                                     ; preds = %a.after1028
  %arena.cur1045 = call ptr @dva_arena_current()
  %a.create1046 = call ptr @dva_arena_alloc(ptr %arena.cur1045, i64 24)
  %arena.cur1047 = call ptr @dva_arena_current()
  %a.buf1048 = call ptr @dva_arena_alloc(ptr %arena.cur1047, i64 128)
  %a.len.gep1049 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1046, i32 0, i32 0
  store i64 0, ptr %a.len.gep1049, align 8
  %a.data.gep1050 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1046, i32 0, i32 1
  store ptr %a.buf1048, ptr %a.data.gep1050, align 8
  %a.cap.gep1051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1046, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1051, align 8
  store ptr %a.create1046, ptr %var.locals, align 8
  br label %a.after1044

a.after1044:                                      ; preds = %a.create1043, %a.after1028
  %a.load21052 = load ptr, ptr %var.locals, align 8
  %call.res1053 = call ptr @"overloads::select_value"(ptr %call.res1037, ptr %var.load1038, ptr %var.load1039, ptr %a.load21052)
  store ptr %call.res1053, ptr %var.new_rhs, align 8
  %var.load1054 = load ptr, ptr %var.a, align 8
  %fld.gep1055 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1054, i32 0, i32 6
  %fld.load1056 = load ptr, ptr %fld.gep1055, align 8
  %var.load1057 = load ptr, ptr %var.table, align 8
  %var.load1058 = load ptr, ptr %var.locals, align 8
  %a.load1059 = load ptr, ptr %var.locals, align 8
  %a.null1060 = icmp eq ptr %a.load1059, null
  br i1 %a.null1060, label %a.create1061, label %a.after1062

a.create1061:                                     ; preds = %a.after1044
  %arena.cur1063 = call ptr @dva_arena_current()
  %a.create1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 24)
  %arena.cur1065 = call ptr @dva_arena_current()
  %a.buf1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 128)
  %a.len.gep1067 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 0
  store i64 0, ptr %a.len.gep1067, align 8
  %a.data.gep1068 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 1
  store ptr %a.buf1066, ptr %a.data.gep1068, align 8
  %a.cap.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1064, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1069, align 8
  store ptr %a.create1064, ptr %var.locals, align 8
  br label %a.after1062

a.after1062:                                      ; preds = %a.create1061, %a.after1044
  %a.load21070 = load ptr, ptr %var.locals, align 8
  %call.res1071 = call ptr @"overloads::walk"(ptr %fld.load1056, ptr %var.load1057, ptr %a.load21070)
  store ptr %call.res1071, ptr %var.new_lhs, align 8
  %arena.cur1072 = call ptr @dva_arena_current()
  %enum.alloc1073 = call ptr @dva_arena_alloc(ptr %arena.cur1072, i64 16)
  %tag.gep1074 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1073, i32 0, i32 0
  store i64 6, ptr %tag.gep1074, align 8
  %pay.gep1075 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1073, i32 0, i32 1
  %var.load1076 = load ptr, ptr %var.new_name, align 8
  %var.load1077 = load ptr, ptr %var.a, align 8
  %fld.gep1078 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1077, i32 0, i32 1
  %fld.load1079 = load i1, ptr %fld.gep1078, align 1
  %var.load1080 = load ptr, ptr %var.a, align 8
  %fld.gep1081 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1080, i32 0, i32 2
  %fld.load1082 = load i1, ptr %fld.gep1081, align 1
  %var.load1083 = load ptr, ptr %var.a, align 8
  %fld.gep1084 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1083, i32 0, i32 3
  %fld.load1085 = load i1, ptr %fld.gep1084, align 1
  %var.load1086 = load ptr, ptr %var.a, align 8
  %fld.gep1087 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1086, i32 0, i32 4
  %fld.load1088 = load i1, ptr %fld.gep1087, align 1
  %var.load1089 = load ptr, ptr %var.new_rhs, align 8
  %var.load1090 = load ptr, ptr %var.new_lhs, align 8
  %var.load1091 = load ptr, ptr %var.a, align 8
  %fld.gep1092 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1091, i32 0, i32 7
  %fld.load1093 = load ptr, ptr %fld.gep1092, align 8
  %var.load1094 = load ptr, ptr %var.a, align 8
  %fld.gep1095 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1094, i32 0, i32 8
  %fld.load1096 = load ptr, ptr %fld.gep1095, align 8
  %arena.cur1097 = call ptr @dva_arena_current()
  %rec.alloc1098 = call ptr @dva_arena_alloc(ptr %arena.cur1097, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1099 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 0
  store ptr %var.load1076, ptr %rec.fld1099, align 8
  %rec.fld1100 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 1
  store i1 %fld.load1079, ptr %rec.fld1100, align 1
  %rec.fld1101 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 2
  store i1 %fld.load1082, ptr %rec.fld1101, align 1
  %rec.fld1102 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 3
  store i1 %fld.load1085, ptr %rec.fld1102, align 1
  %rec.fld1103 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 4
  store i1 %fld.load1088, ptr %rec.fld1103, align 1
  %rec.fld1104 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 5
  store ptr %var.load1089, ptr %rec.fld1104, align 8
  %rec.fld1105 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 6
  store ptr %var.load1090, ptr %rec.fld1105, align 8
  %rec.fld1106 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 7
  store ptr %fld.load1093, ptr %rec.fld1106, align 8
  %rec.fld1107 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %rec.alloc1098, i32 0, i32 8
  store ptr %fld.load1096, ptr %rec.fld1107, align 8
  store ptr %rec.alloc1098, ptr %pay.gep1075, align 8
  br label %choice.exit

choice.case1108:                                  ; preds = %choice.next923
  %pay.gep1113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1114 = load ptr, ptr %pay.gep1113, align 8
  store ptr %payload.ptr1114, ptr %var._1115, align 8
  store ptr %payload.ptr1114, ptr %var.td, align 8
  %var.load1116 = load ptr, ptr %var.td, align 8
  %fld.gep1117 = getelementptr inbounds { ptr, ptr }, ptr %var.load1116, i32 0, i32 1
  %fld.load1118 = load ptr, ptr %fld.gep1117, align 8
  %var.load1119 = load ptr, ptr %var.table, align 8
  %call.res1120 = call ptr @"overloads::keep_type"(ptr %fld.load1118, ptr %var.load1119)
  store ptr %call.res1120, ptr %var.new_ti, align 8
  %arena.cur1121 = call ptr @dva_arena_current()
  %enum.alloc1122 = call ptr @dva_arena_alloc(ptr %arena.cur1121, i64 16)
  %tag.gep1123 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1122, i32 0, i32 0
  store i64 23, ptr %tag.gep1123, align 8
  %pay.gep1124 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1122, i32 0, i32 1
  %var.load1125 = load ptr, ptr %var.td, align 8
  %fld.gep1126 = getelementptr inbounds { ptr, ptr }, ptr %var.load1125, i32 0, i32 0
  %fld.load1127 = load ptr, ptr %fld.gep1126, align 8
  %var.load1128 = load ptr, ptr %var.new_ti, align 8
  %arena.cur1129 = call ptr @dva_arena_current()
  %rec.alloc1130 = call ptr @dva_arena_alloc(ptr %arena.cur1129, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1131 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1130, i32 0, i32 0
  store ptr %fld.load1127, ptr %rec.fld1131, align 8
  %rec.fld1132 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1130, i32 0, i32 1
  store ptr %var.load1128, ptr %rec.fld1132, align 8
  store ptr %rec.alloc1130, ptr %pay.gep1124, align 8
  br label %choice.exit

choice.next1109:                                  ; preds = %choice.next923
  %tag.gep1135 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1136 = load i64, ptr %tag.gep1135, align 8
  %tag.match1137 = icmp eq i64 %tag.id1136, 21
  br i1 %tag.match1137, label %choice.case1133, label %choice.next1134

choice.case1133:                                  ; preds = %choice.next1109
  %pay.gep1138 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1139 = load ptr, ptr %pay.gep1138, align 8
  store ptr %payload.ptr1139, ptr %var._1140, align 8
  store ptr %payload.ptr1139, ptr %var.f, align 8
  %var.load1141 = load ptr, ptr %var.f, align 8
  %fld.gep1142 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1141, i32 0, i32 3
  %fld.load1143 = load ptr, ptr %fld.gep1142, align 8
  %var.load1144 = load ptr, ptr %var.table, align 8
  %call.res1145 = call ptr @"overloads::keep_fparams"(ptr %fld.load1143, ptr %var.load1144)
  store ptr %call.res1145, ptr %var.new_params, align 8
  %var.load1146 = load ptr, ptr %var.f, align 8
  %fld.gep1147 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1146, i32 0, i32 5
  %fld.load1148 = load ptr, ptr %fld.gep1147, align 8
  %var.load1149 = load ptr, ptr %var.table, align 8
  %call.res1150 = call ptr @"overloads::keep_type"(ptr %fld.load1148, ptr %var.load1149)
  store ptr %call.res1150, ptr %var.new_ret_ti, align 8
  %arena.cur1151 = call ptr @dva_arena_current()
  %enum.alloc1152 = call ptr @dva_arena_alloc(ptr %arena.cur1151, i64 16)
  %tag.gep1153 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1152, i32 0, i32 0
  store i64 21, ptr %tag.gep1153, align 8
  %pay.gep1154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1152, i32 0, i32 1
  %var.load1155 = load ptr, ptr %var.f, align 8
  %fld.gep1156 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1155, i32 0, i32 0
  %fld.load1157 = load ptr, ptr %fld.gep1156, align 8
  %var.load1158 = load ptr, ptr %var.f, align 8
  %fld.gep1159 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1158, i32 0, i32 1
  %fld.load1160 = load ptr, ptr %fld.gep1159, align 8
  %var.load1161 = load ptr, ptr %var.f, align 8
  %fld.gep1162 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1161, i32 0, i32 2
  %fld.load1163 = load ptr, ptr %fld.gep1162, align 8
  %var.load1164 = load ptr, ptr %var.new_params, align 8
  %a.load1165 = load ptr, ptr %var.new_params, align 8
  %a.null1166 = icmp eq ptr %a.load1165, null
  br i1 %a.null1166, label %a.create1167, label %a.after1168

choice.next1134:                                  ; preds = %choice.next1109
  %tag.gep1195 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1196 = load i64, ptr %tag.gep1195, align 8
  %tag.match1197 = icmp eq i64 %tag.id1196, 16
  br i1 %tag.match1197, label %choice.case1193, label %choice.next1194

a.create1167:                                     ; preds = %choice.case1133
  %arena.cur1169 = call ptr @dva_arena_current()
  %a.create1170 = call ptr @dva_arena_alloc(ptr %arena.cur1169, i64 24)
  %arena.cur1171 = call ptr @dva_arena_current()
  %a.buf1172 = call ptr @dva_arena_alloc(ptr %arena.cur1171, i64 128)
  %a.len.gep1173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1170, i32 0, i32 0
  store i64 0, ptr %a.len.gep1173, align 8
  %a.data.gep1174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1170, i32 0, i32 1
  store ptr %a.buf1172, ptr %a.data.gep1174, align 8
  %a.cap.gep1175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1170, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1175, align 8
  store ptr %a.create1170, ptr %var.new_params, align 8
  br label %a.after1168

a.after1168:                                      ; preds = %a.create1167, %choice.case1133
  %a.load21176 = load ptr, ptr %var.new_params, align 8
  %var.load1177 = load ptr, ptr %var.f, align 8
  %fld.gep1178 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1177, i32 0, i32 4
  %fld.load1179 = load ptr, ptr %fld.gep1178, align 8
  %var.load1180 = load ptr, ptr %var.new_ret_ti, align 8
  %var.load1181 = load ptr, ptr %var.f, align 8
  %fld.gep1182 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %var.load1181, i32 0, i32 6
  %fld.load1183 = load i1, ptr %fld.gep1182, align 1
  %arena.cur1184 = call ptr @dva_arena_current()
  %rec.alloc1185 = call ptr @dva_arena_alloc(ptr %arena.cur1184, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1186 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 0
  store ptr %fld.load1157, ptr %rec.fld1186, align 8
  %rec.fld1187 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 1
  store ptr %fld.load1160, ptr %rec.fld1187, align 8
  %rec.fld1188 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 2
  store ptr %fld.load1163, ptr %rec.fld1188, align 8
  %rec.fld1189 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 3
  store ptr %a.load21176, ptr %rec.fld1189, align 8
  %rec.fld1190 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 4
  store ptr %fld.load1179, ptr %rec.fld1190, align 8
  %rec.fld1191 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 5
  store ptr %var.load1180, ptr %rec.fld1191, align 8
  %rec.fld1192 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, i1 }, ptr %rec.alloc1185, i32 0, i32 6
  store i1 %fld.load1183, ptr %rec.fld1192, align 1
  store ptr %rec.alloc1185, ptr %pay.gep1154, align 8
  br label %choice.exit

choice.case1193:                                  ; preds = %choice.next1134
  %pay.gep1198 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1199 = load ptr, ptr %pay.gep1198, align 8
  store ptr %payload.ptr1199, ptr %var._1200, align 8
  store ptr %payload.ptr1199, ptr %var.m, align 8
  %var.load1201 = load ptr, ptr %var.m, align 8
  %fld.gep1202 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1201, i32 0, i32 2
  %fld.load1203 = load i1, ptr %fld.gep1202, align 1
  br i1 %fld.load1203, label %choice.then1204, label %choice.else1205

choice.next1194:                                  ; preds = %choice.next1134
  %tag.gep1273 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1274 = load i64, ptr %tag.gep1273, align 8
  %tag.match1275 = icmp eq i64 %tag.id1274, 15
  br i1 %tag.match1275, label %choice.case1271, label %choice.next1272

choice.then1204:                                  ; preds = %choice.case1193
  %arena.cur1207 = call ptr @dva_arena_current()
  %enum.alloc1208 = call ptr @dva_arena_alloc(ptr %arena.cur1207, i64 16)
  %tag.gep1209 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1208, i32 0, i32 0
  store i64 3, ptr %tag.gep1209, align 8
  %pay.gep1210 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1208, i32 0, i32 1
  %var.load1211 = load ptr, ptr %var.e, align 8
  %call.res1212 = call ptr @"overloads::name_of"(ptr %var.load1211)
  store ptr %call.res1212, ptr %pay.gep1210, align 8
  br label %choice.exit1206

choice.else1205:                                  ; preds = %choice.case1193
  %arena.cur1213 = call ptr @dva_arena_current()
  %enum.alloc1214 = call ptr @dva_arena_alloc(ptr %arena.cur1213, i64 16)
  %tag.gep1215 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1214, i32 0, i32 0
  store i64 16, ptr %tag.gep1215, align 8
  %pay.gep1216 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1214, i32 0, i32 1
  %var.load1217 = load ptr, ptr %var.m, align 8
  %fld.gep1218 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1217, i32 0, i32 0
  %fld.load1219 = load ptr, ptr %fld.gep1218, align 8
  %var.load1220 = load ptr, ptr %var.table, align 8
  %var.load1221 = load ptr, ptr %var.locals, align 8
  %a.load1222 = load ptr, ptr %var.locals, align 8
  %a.null1223 = icmp eq ptr %a.load1222, null
  br i1 %a.null1223, label %a.create1224, label %a.after1225

choice.exit1206:                                  ; preds = %a.after1246, %choice.then1204
  %choice.res1270 = phi ptr [ %enum.alloc1208, %choice.then1204 ], [ %enum.alloc1214, %a.after1246 ]
  br label %choice.exit

a.create1224:                                     ; preds = %choice.else1205
  %arena.cur1226 = call ptr @dva_arena_current()
  %a.create1227 = call ptr @dva_arena_alloc(ptr %arena.cur1226, i64 24)
  %arena.cur1228 = call ptr @dva_arena_current()
  %a.buf1229 = call ptr @dva_arena_alloc(ptr %arena.cur1228, i64 128)
  %a.len.gep1230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1227, i32 0, i32 0
  store i64 0, ptr %a.len.gep1230, align 8
  %a.data.gep1231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1227, i32 0, i32 1
  store ptr %a.buf1229, ptr %a.data.gep1231, align 8
  %a.cap.gep1232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1227, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1232, align 8
  store ptr %a.create1227, ptr %var.locals, align 8
  br label %a.after1225

a.after1225:                                      ; preds = %a.create1224, %choice.else1205
  %a.load21233 = load ptr, ptr %var.locals, align 8
  %call.res1234 = call ptr @"overloads::walk"(ptr %fld.load1219, ptr %var.load1220, ptr %a.load21233)
  %var.load1235 = load ptr, ptr %var.m, align 8
  %fld.gep1236 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1235, i32 0, i32 1
  %fld.load1237 = load ptr, ptr %fld.gep1236, align 8
  %var.load1238 = load ptr, ptr %var.m, align 8
  %fld.gep1239 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1238, i32 0, i32 3
  %fld.load1240 = load ptr, ptr %fld.gep1239, align 8
  %var.load1241 = load ptr, ptr %var.table, align 8
  %var.load1242 = load ptr, ptr %var.locals, align 8
  %a.load1243 = load ptr, ptr %var.locals, align 8
  %a.null1244 = icmp eq ptr %a.load1243, null
  br i1 %a.null1244, label %a.create1245, label %a.after1246

a.create1245:                                     ; preds = %a.after1225
  %arena.cur1247 = call ptr @dva_arena_current()
  %a.create1248 = call ptr @dva_arena_alloc(ptr %arena.cur1247, i64 24)
  %arena.cur1249 = call ptr @dva_arena_current()
  %a.buf1250 = call ptr @dva_arena_alloc(ptr %arena.cur1249, i64 128)
  %a.len.gep1251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 0
  store i64 0, ptr %a.len.gep1251, align 8
  %a.data.gep1252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 1
  store ptr %a.buf1250, ptr %a.data.gep1252, align 8
  %a.cap.gep1253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1253, align 8
  store ptr %a.create1248, ptr %var.locals, align 8
  br label %a.after1246

a.after1246:                                      ; preds = %a.create1245, %a.after1225
  %a.load21254 = load ptr, ptr %var.locals, align 8
  %call.res1255 = call ptr @"overloads::walk"(ptr %fld.load1240, ptr %var.load1241, ptr %a.load21254)
  %var.load1256 = load ptr, ptr %var.m, align 8
  %fld.gep1257 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1256, i32 0, i32 4
  %fld.load1258 = load i64, ptr %fld.gep1257, align 8
  %var.load1259 = load ptr, ptr %var.m, align 8
  %fld.gep1260 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1259, i32 0, i32 5
  %fld.load1261 = load i64, ptr %fld.gep1260, align 8
  %arena.cur1262 = call ptr @dva_arena_current()
  %rec.alloc1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1264 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 0
  store ptr %call.res1234, ptr %rec.fld1264, align 8
  %rec.fld1265 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 1
  store ptr %fld.load1237, ptr %rec.fld1265, align 8
  %rec.fld1266 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 2
  store i1 false, ptr %rec.fld1266, align 1
  %rec.fld1267 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 3
  store ptr %call.res1255, ptr %rec.fld1267, align 8
  %rec.fld1268 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 4
  store i64 %fld.load1258, ptr %rec.fld1268, align 8
  %rec.fld1269 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %rec.alloc1263, i32 0, i32 5
  store i64 %fld.load1261, ptr %rec.fld1269, align 8
  store ptr %rec.alloc1263, ptr %pay.gep1216, align 8
  br label %choice.exit1206

choice.case1271:                                  ; preds = %choice.next1194
  %pay.gep1276 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1277 = load ptr, ptr %pay.gep1276, align 8
  store ptr %payload.ptr1277, ptr %var._1278, align 8
  store ptr %payload.ptr1277, ptr %var.re, align 8
  %arena.cur1279 = call ptr @dva_arena_current()
  %a.new1280 = call ptr @dva_arena_alloc(ptr %arena.cur1279, i64 24)
  %arena.cur1281 = call ptr @dva_arena_current()
  %a.buf1282 = call ptr @dva_arena_alloc(ptr %arena.cur1281, i64 128)
  %a.len.gep1283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1280, i32 0, i32 0
  store i64 0, ptr %a.len.gep1283, align 8
  %a.data.gep1284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1280, i32 0, i32 1
  store ptr %a.buf1282, ptr %a.data.gep1284, align 8
  %a.cap.gep1285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1280, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1285, align 8
  store ptr %a.new1280, ptr %var.new_fields, align 8
  %var.load1286 = load ptr, ptr %var.re, align 8
  %fld.gep1287 = getelementptr inbounds { ptr, i1 }, ptr %var.load1286, i32 0, i32 0
  %fld.load1288 = load ptr, ptr %fld.gep1287, align 8
  %arr.cycle.len1289 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1288, i32 0, i32 0
  %arr.cycle.len1290 = load i64, ptr %arr.cycle.len1289, align 8
  %arr.cycle.data1291 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1288, i32 0, i32 1
  %arr.cycle.data1292 = load ptr, ptr %arr.cycle.data1291, align 8
  store i64 0, ptr %loop.idx.77, align 8
  %cycle.prev.u1293 = load ptr, ptr %var._1278, align 8
  br label %loop.header.77

choice.next1272:                                  ; preds = %choice.next1194
  %tag.gep1388 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1389 = load i64, ptr %tag.gep1388, align 8
  %tag.match1390 = icmp eq i64 %tag.id1389, 17
  br i1 %tag.match1390, label %choice.case1386, label %choice.next1387

loop.header.77:                                   ; preds = %loop.latch.77, %choice.case1271
  %counter.load1294 = load i64, ptr %loop.idx.77, align 8
  %loop.cond1295 = icmp slt i64 %counter.load1294, %arr.cycle.len1290
  br i1 %loop.cond1295, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i1296 = sub i64 %counter.load1294, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep1297 = getelementptr i64, ptr %arr.cycle.data1292, i64 %counter.load1294
  %arr.elem.raw1298 = load i64, ptr %arr.elem.gep1297, align 8
  %slot.i2p1299 = inttoptr i64 %arr.elem.raw1298 to ptr
  store i64 %loop.rel.i1296, ptr %var._i1300, align 8
  store ptr %slot.i2p1299, ptr %var._1301, align 8
  store ptr %slot.i2p1299, ptr %var.fld, align 8
  %var.load1302 = load ptr, ptr %var.fld, align 8
  %fld.gep1303 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1302, i32 0, i32 2
  %fld.load1304 = load ptr, ptr %fld.gep1303, align 8
  %var.load1305 = load ptr, ptr %var.table, align 8
  %var.load1306 = load ptr, ptr %var.locals, align 8
  %a.load1307 = load ptr, ptr %var.locals, align 8
  %a.null1308 = icmp eq ptr %a.load1307, null
  br i1 %a.null1308, label %a.create1309, label %a.after1310

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %a.store1346
  %step.val1360 = load i64, ptr %loop.step.77, align 8
  %loop.next1361 = add i64 %counter.load1294, %step.val1360
  store i64 %loop.next1361, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  store ptr %cycle.prev.u1293, ptr %var._1278, align 8
  %arena.cur1362 = call ptr @dva_arena_current()
  %enum.alloc1363 = call ptr @dva_arena_alloc(ptr %arena.cur1362, i64 16)
  %tag.gep1364 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1363, i32 0, i32 0
  store i64 15, ptr %tag.gep1364, align 8
  %pay.gep1365 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1363, i32 0, i32 1
  %var.load1366 = load ptr, ptr %var.new_fields, align 8
  %a.load1367 = load ptr, ptr %var.new_fields, align 8
  %a.null1368 = icmp eq ptr %a.load1367, null
  br i1 %a.null1368, label %a.create1369, label %a.after1370

a.create1309:                                     ; preds = %loop.body.77
  %arena.cur1311 = call ptr @dva_arena_current()
  %a.create1312 = call ptr @dva_arena_alloc(ptr %arena.cur1311, i64 24)
  %arena.cur1313 = call ptr @dva_arena_current()
  %a.buf1314 = call ptr @dva_arena_alloc(ptr %arena.cur1313, i64 128)
  %a.len.gep1315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 0
  store i64 0, ptr %a.len.gep1315, align 8
  %a.data.gep1316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 1
  store ptr %a.buf1314, ptr %a.data.gep1316, align 8
  %a.cap.gep1317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1312, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1317, align 8
  store ptr %a.create1312, ptr %var.locals, align 8
  br label %a.after1310

a.after1310:                                      ; preds = %a.create1309, %loop.body.77
  %a.load21318 = load ptr, ptr %var.locals, align 8
  %call.res1319 = call ptr @"overloads::walk"(ptr %fld.load1304, ptr %var.load1305, ptr %a.load21318)
  store ptr %call.res1319, ptr %var.new_val, align 8
  %var.load1320 = load ptr, ptr %var.fld, align 8
  %fld.gep1321 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1320, i32 0, i32 0
  %fld.load1322 = load i1, ptr %fld.gep1321, align 1
  %var.load1323 = load ptr, ptr %var.fld, align 8
  %fld.gep1324 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1323, i32 0, i32 1
  %fld.load1325 = load ptr, ptr %fld.gep1324, align 8
  %var.load1326 = load ptr, ptr %var.new_val, align 8
  %arena.cur1327 = call ptr @dva_arena_current()
  %rec.alloc1328 = call ptr @dva_arena_alloc(ptr %arena.cur1327, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1329 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1328, i32 0, i32 0
  store i1 %fld.load1322, ptr %rec.fld1329, align 1
  %rec.fld1330 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1328, i32 0, i32 1
  store ptr %fld.load1325, ptr %rec.fld1330, align 8
  %rec.fld1331 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1328, i32 0, i32 2
  store ptr %var.load1326, ptr %rec.fld1331, align 8
  %a.load1332 = load ptr, ptr %var.new_fields, align 8
  %a.null1333 = icmp eq ptr %a.load1332, null
  br i1 %a.null1333, label %a.create1334, label %a.after1335

a.create1334:                                     ; preds = %a.after1310
  %arena.cur1336 = call ptr @dva_arena_current()
  %a.create1337 = call ptr @dva_arena_alloc(ptr %arena.cur1336, i64 24)
  %arena.cur1338 = call ptr @dva_arena_current()
  %a.buf1339 = call ptr @dva_arena_alloc(ptr %arena.cur1338, i64 128)
  %a.len.gep1340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1337, i32 0, i32 0
  store i64 0, ptr %a.len.gep1340, align 8
  %a.data.gep1341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1337, i32 0, i32 1
  store ptr %a.buf1339, ptr %a.data.gep1341, align 8
  %a.cap.gep1342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1337, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1342, align 8
  store ptr %a.create1337, ptr %var.new_fields, align 8
  br label %a.after1335

a.after1335:                                      ; preds = %a.create1334, %a.after1310
  %a.load21343 = load ptr, ptr %var.new_fields, align 8
  br label %a.check1344

a.check1344:                                      ; preds = %a.after1335
  %a.len1347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21343, i32 0, i32 0
  %a.len1348 = load i64, ptr %a.len1347, align 8
  %a.cap1349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21343, i32 0, i32 2
  %a.cap1350 = load i64, ptr %a.cap1349, align 8
  %a.needs.grow1351 = icmp eq i64 %a.len1348, %a.cap1350
  br i1 %a.needs.grow1351, label %a.grow1345, label %a.store1346

a.grow1345:                                       ; preds = %a.check1344
  call void @dva_array_grow(ptr %a.load21343)
  br label %a.store1346

a.store1346:                                      ; preds = %a.grow1345, %a.check1344
  %a.cur.data1352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21343, i32 0, i32 1
  %a.cur.data1353 = load ptr, ptr %a.cur.data1352, align 8
  %a.cur.len1354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21343, i32 0, i32 0
  %a.cur.len1355 = load i64, ptr %a.cur.len1354, align 8
  %a.elem.gep1356 = getelementptr i64, ptr %a.cur.data1353, i64 %a.cur.len1355
  %slot.p2i1357 = ptrtoint ptr %rec.alloc1328 to i64
  store i64 %slot.p2i1357, ptr %a.elem.gep1356, align 8
  %a.next.len1358 = add i64 %a.cur.len1355, 1
  %b.len.gep1359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21343, i32 0, i32 0
  store i64 %a.next.len1358, ptr %b.len.gep1359, align 8
  br label %loop.latch.77

a.create1369:                                     ; preds = %loop.exit.77
  %arena.cur1371 = call ptr @dva_arena_current()
  %a.create1372 = call ptr @dva_arena_alloc(ptr %arena.cur1371, i64 24)
  %arena.cur1373 = call ptr @dva_arena_current()
  %a.buf1374 = call ptr @dva_arena_alloc(ptr %arena.cur1373, i64 128)
  %a.len.gep1375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1372, i32 0, i32 0
  store i64 0, ptr %a.len.gep1375, align 8
  %a.data.gep1376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1372, i32 0, i32 1
  store ptr %a.buf1374, ptr %a.data.gep1376, align 8
  %a.cap.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1372, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1377, align 8
  store ptr %a.create1372, ptr %var.new_fields, align 8
  br label %a.after1370

a.after1370:                                      ; preds = %a.create1369, %loop.exit.77
  %a.load21378 = load ptr, ptr %var.new_fields, align 8
  %var.load1379 = load ptr, ptr %var.re, align 8
  %fld.gep1380 = getelementptr inbounds { ptr, i1 }, ptr %var.load1379, i32 0, i32 1
  %fld.load1381 = load i1, ptr %fld.gep1380, align 1
  %arena.cur1382 = call ptr @dva_arena_current()
  %rec.alloc1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1384 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1383, i32 0, i32 0
  store ptr %a.load21378, ptr %rec.fld1384, align 8
  %rec.fld1385 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc1383, i32 0, i32 1
  store i1 %fld.load1381, ptr %rec.fld1385, align 1
  store ptr %rec.alloc1383, ptr %pay.gep1365, align 8
  br label %choice.exit

choice.case1386:                                  ; preds = %choice.next1272
  %pay.gep1391 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1392 = load ptr, ptr %pay.gep1391, align 8
  store ptr %payload.ptr1392, ptr %var._1393, align 8
  store ptr %payload.ptr1392, ptr %var.ka, align 8
  %var.load1394 = load ptr, ptr %var.ka, align 8
  %fld.gep1395 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1394, i32 0, i32 0
  %fld.load1396 = load ptr, ptr %fld.gep1395, align 8
  %var.load1397 = load ptr, ptr %var.table, align 8
  %var.load1398 = load ptr, ptr %var.locals, align 8
  %a.load1399 = load ptr, ptr %var.locals, align 8
  %a.null1400 = icmp eq ptr %a.load1399, null
  br i1 %a.null1400, label %a.create1401, label %a.after1402

choice.next1387:                                  ; preds = %choice.next1272
  %tag.gep1458 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1459 = load i64, ptr %tag.gep1458, align 8
  %tag.match1460 = icmp eq i64 %tag.id1459, 12
  br i1 %tag.match1460, label %choice.case1456, label %choice.next1457

a.create1401:                                     ; preds = %choice.case1386
  %arena.cur1403 = call ptr @dva_arena_current()
  %a.create1404 = call ptr @dva_arena_alloc(ptr %arena.cur1403, i64 24)
  %arena.cur1405 = call ptr @dva_arena_current()
  %a.buf1406 = call ptr @dva_arena_alloc(ptr %arena.cur1405, i64 128)
  %a.len.gep1407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 0
  store i64 0, ptr %a.len.gep1407, align 8
  %a.data.gep1408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 1
  store ptr %a.buf1406, ptr %a.data.gep1408, align 8
  %a.cap.gep1409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1404, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1409, align 8
  store ptr %a.create1404, ptr %var.locals, align 8
  br label %a.after1402

a.after1402:                                      ; preds = %a.create1401, %choice.case1386
  %a.load21410 = load ptr, ptr %var.locals, align 8
  %call.res1411 = call ptr @"overloads::walk"(ptr %fld.load1396, ptr %var.load1397, ptr %a.load21410)
  store ptr %call.res1411, ptr %var.new_target, align 8
  %var.load1412 = load ptr, ptr %var.ka, align 8
  %fld.gep1413 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1412, i32 0, i32 1
  %fld.load1414 = load ptr, ptr %fld.gep1413, align 8
  %var.load1415 = load ptr, ptr %var.table, align 8
  %var.load1416 = load ptr, ptr %var.locals, align 8
  %a.load1417 = load ptr, ptr %var.locals, align 8
  %a.null1418 = icmp eq ptr %a.load1417, null
  br i1 %a.null1418, label %a.create1419, label %a.after1420

a.create1419:                                     ; preds = %a.after1402
  %arena.cur1421 = call ptr @dva_arena_current()
  %a.create1422 = call ptr @dva_arena_alloc(ptr %arena.cur1421, i64 24)
  %arena.cur1423 = call ptr @dva_arena_current()
  %a.buf1424 = call ptr @dva_arena_alloc(ptr %arena.cur1423, i64 128)
  %a.len.gep1425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1422, i32 0, i32 0
  store i64 0, ptr %a.len.gep1425, align 8
  %a.data.gep1426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1422, i32 0, i32 1
  store ptr %a.buf1424, ptr %a.data.gep1426, align 8
  %a.cap.gep1427 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1422, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1427, align 8
  store ptr %a.create1422, ptr %var.locals, align 8
  br label %a.after1420

a.after1420:                                      ; preds = %a.create1419, %a.after1402
  %a.load21428 = load ptr, ptr %var.locals, align 8
  %call.res1429 = call ptr @"overloads::walk"(ptr %fld.load1414, ptr %var.load1415, ptr %a.load21428)
  store ptr %call.res1429, ptr %var.new_key, align 8
  %arena.cur1430 = call ptr @dva_arena_current()
  %enum.alloc1431 = call ptr @dva_arena_alloc(ptr %arena.cur1430, i64 16)
  %tag.gep1432 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1431, i32 0, i32 0
  store i64 17, ptr %tag.gep1432, align 8
  %pay.gep1433 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1431, i32 0, i32 1
  %var.load1434 = load ptr, ptr %var.new_target, align 8
  %var.load1435 = load ptr, ptr %var.new_key, align 8
  %var.load1436 = load ptr, ptr %var.ka, align 8
  %fld.gep1437 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1436, i32 0, i32 2
  %fld.load1438 = load i1, ptr %fld.gep1437, align 1
  %var.load1439 = load ptr, ptr %var.ka, align 8
  %fld.gep1440 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1439, i32 0, i32 3
  %fld.load1441 = load i1, ptr %fld.gep1440, align 1
  %var.load1442 = load ptr, ptr %var.ka, align 8
  %fld.gep1443 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1442, i32 0, i32 4
  %fld.load1444 = load i64, ptr %fld.gep1443, align 8
  %var.load1445 = load ptr, ptr %var.ka, align 8
  %fld.gep1446 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1445, i32 0, i32 5
  %fld.load1447 = load i64, ptr %fld.gep1446, align 8
  %arena.cur1448 = call ptr @dva_arena_current()
  %rec.alloc1449 = call ptr @dva_arena_alloc(ptr %arena.cur1448, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1, i1, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1450 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 0
  store ptr %var.load1434, ptr %rec.fld1450, align 8
  %rec.fld1451 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 1
  store ptr %var.load1435, ptr %rec.fld1451, align 8
  %rec.fld1452 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 2
  store i1 %fld.load1438, ptr %rec.fld1452, align 1
  %rec.fld1453 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 3
  store i1 %fld.load1441, ptr %rec.fld1453, align 1
  %rec.fld1454 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 4
  store i64 %fld.load1444, ptr %rec.fld1454, align 8
  %rec.fld1455 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %rec.alloc1449, i32 0, i32 5
  store i64 %fld.load1447, ptr %rec.fld1455, align 8
  store ptr %rec.alloc1449, ptr %pay.gep1433, align 8
  br label %choice.exit

choice.case1456:                                  ; preds = %choice.next1387
  %pay.gep1461 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1462 = load ptr, ptr %pay.gep1461, align 8
  store ptr %payload.ptr1462, ptr %var._1463, align 8
  store ptr %payload.ptr1462, ptr %var.cy, align 8
  %var.load1464 = load ptr, ptr %var.cy, align 8
  %fld.gep1465 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1464, i32 0, i32 0
  %fld.load1466 = load ptr, ptr %fld.gep1465, align 8
  %var.load1467 = load ptr, ptr %var.table, align 8
  %var.load1468 = load ptr, ptr %var.locals, align 8
  %a.load1469 = load ptr, ptr %var.locals, align 8
  %a.null1470 = icmp eq ptr %a.load1469, null
  br i1 %a.null1470, label %a.create1471, label %a.after1472

choice.next1457:                                  ; preds = %choice.next1387
  %tag.gep1516 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1517 = load i64, ptr %tag.gep1516, align 8
  %tag.match1518 = icmp eq i64 %tag.id1517, 11
  br i1 %tag.match1518, label %choice.case1514, label %choice.next1515

a.create1471:                                     ; preds = %choice.case1456
  %arena.cur1473 = call ptr @dva_arena_current()
  %a.create1474 = call ptr @dva_arena_alloc(ptr %arena.cur1473, i64 24)
  %arena.cur1475 = call ptr @dva_arena_current()
  %a.buf1476 = call ptr @dva_arena_alloc(ptr %arena.cur1475, i64 128)
  %a.len.gep1477 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 0
  store i64 0, ptr %a.len.gep1477, align 8
  %a.data.gep1478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 1
  store ptr %a.buf1476, ptr %a.data.gep1478, align 8
  %a.cap.gep1479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1474, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1479, align 8
  store ptr %a.create1474, ptr %var.locals, align 8
  br label %a.after1472

a.after1472:                                      ; preds = %a.create1471, %choice.case1456
  %a.load21480 = load ptr, ptr %var.locals, align 8
  %call.res1481 = call ptr @"overloads::walk"(ptr %fld.load1466, ptr %var.load1467, ptr %a.load21480)
  store ptr %call.res1481, ptr %var.new_iter, align 8
  %var.load1482 = load ptr, ptr %var.cy, align 8
  %fld.gep1483 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1482, i32 0, i32 1
  %fld.load1484 = load ptr, ptr %fld.gep1483, align 8
  %var.load1485 = load ptr, ptr %var.table, align 8
  %var.load1486 = load ptr, ptr %var.locals, align 8
  %a.load1487 = load ptr, ptr %var.locals, align 8
  %a.null1488 = icmp eq ptr %a.load1487, null
  br i1 %a.null1488, label %a.create1489, label %a.after1490

a.create1489:                                     ; preds = %a.after1472
  %arena.cur1491 = call ptr @dva_arena_current()
  %a.create1492 = call ptr @dva_arena_alloc(ptr %arena.cur1491, i64 24)
  %arena.cur1493 = call ptr @dva_arena_current()
  %a.buf1494 = call ptr @dva_arena_alloc(ptr %arena.cur1493, i64 128)
  %a.len.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 0
  store i64 0, ptr %a.len.gep1495, align 8
  %a.data.gep1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 1
  store ptr %a.buf1494, ptr %a.data.gep1496, align 8
  %a.cap.gep1497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1497, align 8
  store ptr %a.create1492, ptr %var.locals, align 8
  br label %a.after1490

a.after1490:                                      ; preds = %a.create1489, %a.after1472
  %a.load21498 = load ptr, ptr %var.locals, align 8
  %call.res1499 = call ptr @"overloads::walk"(ptr %fld.load1484, ptr %var.load1485, ptr %a.load21498)
  store ptr %call.res1499, ptr %var.new_fn, align 8
  %arena.cur1500 = call ptr @dva_arena_current()
  %enum.alloc1501 = call ptr @dva_arena_alloc(ptr %arena.cur1500, i64 16)
  %tag.gep1502 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1501, i32 0, i32 0
  store i64 12, ptr %tag.gep1502, align 8
  %pay.gep1503 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1501, i32 0, i32 1
  %var.load1504 = load ptr, ptr %var.new_iter, align 8
  %var.load1505 = load ptr, ptr %var.new_fn, align 8
  %var.load1506 = load ptr, ptr %var.cy, align 8
  %fld.gep1507 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1506, i32 0, i32 2
  %fld.load1508 = load i1, ptr %fld.gep1507, align 1
  %arena.cur1509 = call ptr @dva_arena_current()
  %rec.alloc1510 = call ptr @dva_arena_alloc(ptr %arena.cur1509, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1511 = getelementptr inbounds { ptr, ptr, i1 }, ptr %rec.alloc1510, i32 0, i32 0
  store ptr %var.load1504, ptr %rec.fld1511, align 8
  %rec.fld1512 = getelementptr inbounds { ptr, ptr, i1 }, ptr %rec.alloc1510, i32 0, i32 1
  store ptr %var.load1505, ptr %rec.fld1512, align 8
  %rec.fld1513 = getelementptr inbounds { ptr, ptr, i1 }, ptr %rec.alloc1510, i32 0, i32 2
  store i1 %fld.load1508, ptr %rec.fld1513, align 1
  store ptr %rec.alloc1510, ptr %pay.gep1503, align 8
  br label %choice.exit

choice.case1514:                                  ; preds = %choice.next1457
  %pay.gep1519 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1520 = load ptr, ptr %pay.gep1519, align 8
  store ptr %payload.ptr1520, ptr %var._1521, align 8
  store ptr %payload.ptr1520, ptr %var.ce, align 8
  %var.load1522 = load ptr, ptr %var.ce, align 8
  %fld.gep1523 = getelementptr inbounds { ptr, ptr }, ptr %var.load1522, i32 0, i32 0
  %fld.load1524 = load ptr, ptr %fld.gep1523, align 8
  %var.load1525 = load ptr, ptr %var.table, align 8
  %var.load1526 = load ptr, ptr %var.locals, align 8
  %a.load1527 = load ptr, ptr %var.locals, align 8
  %a.null1528 = icmp eq ptr %a.load1527, null
  br i1 %a.null1528, label %a.create1529, label %a.after1530

choice.next1515:                                  ; preds = %choice.next1457
  %tag.gep1570 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1571 = load i64, ptr %tag.gep1570, align 8
  %tag.match1572 = icmp eq i64 %tag.id1571, 13
  br i1 %tag.match1572, label %choice.case1568, label %choice.next1569

a.create1529:                                     ; preds = %choice.case1514
  %arena.cur1531 = call ptr @dva_arena_current()
  %a.create1532 = call ptr @dva_arena_alloc(ptr %arena.cur1531, i64 24)
  %arena.cur1533 = call ptr @dva_arena_current()
  %a.buf1534 = call ptr @dva_arena_alloc(ptr %arena.cur1533, i64 128)
  %a.len.gep1535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 0
  store i64 0, ptr %a.len.gep1535, align 8
  %a.data.gep1536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 1
  store ptr %a.buf1534, ptr %a.data.gep1536, align 8
  %a.cap.gep1537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1537, align 8
  store ptr %a.create1532, ptr %var.locals, align 8
  br label %a.after1530

a.after1530:                                      ; preds = %a.create1529, %choice.case1514
  %a.load21538 = load ptr, ptr %var.locals, align 8
  %call.res1539 = call ptr @"overloads::walk"(ptr %fld.load1524, ptr %var.load1525, ptr %a.load21538)
  store ptr %call.res1539, ptr %var.new_cy, align 8
  %var.load1540 = load ptr, ptr %var.ce, align 8
  %fld.gep1541 = getelementptr inbounds { ptr, ptr }, ptr %var.load1540, i32 0, i32 1
  %fld.load1542 = load ptr, ptr %fld.gep1541, align 8
  %var.load1543 = load ptr, ptr %var.table, align 8
  %var.load1544 = load ptr, ptr %var.locals, align 8
  %a.load1545 = load ptr, ptr %var.locals, align 8
  %a.null1546 = icmp eq ptr %a.load1545, null
  br i1 %a.null1546, label %a.create1547, label %a.after1548

a.create1547:                                     ; preds = %a.after1530
  %arena.cur1549 = call ptr @dva_arena_current()
  %a.create1550 = call ptr @dva_arena_alloc(ptr %arena.cur1549, i64 24)
  %arena.cur1551 = call ptr @dva_arena_current()
  %a.buf1552 = call ptr @dva_arena_alloc(ptr %arena.cur1551, i64 128)
  %a.len.gep1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1550, i32 0, i32 0
  store i64 0, ptr %a.len.gep1553, align 8
  %a.data.gep1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1550, i32 0, i32 1
  store ptr %a.buf1552, ptr %a.data.gep1554, align 8
  %a.cap.gep1555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1550, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1555, align 8
  store ptr %a.create1550, ptr %var.locals, align 8
  br label %a.after1548

a.after1548:                                      ; preds = %a.create1547, %a.after1530
  %a.load21556 = load ptr, ptr %var.locals, align 8
  %call.res1557 = call ptr @"overloads::walk"(ptr %fld.load1542, ptr %var.load1543, ptr %a.load21556)
  store ptr %call.res1557, ptr %var.new_br, align 8
  %arena.cur1558 = call ptr @dva_arena_current()
  %enum.alloc1559 = call ptr @dva_arena_alloc(ptr %arena.cur1558, i64 16)
  %tag.gep1560 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1559, i32 0, i32 0
  store i64 11, ptr %tag.gep1560, align 8
  %pay.gep1561 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1559, i32 0, i32 1
  %var.load1562 = load ptr, ptr %var.new_cy, align 8
  %var.load1563 = load ptr, ptr %var.new_br, align 8
  %arena.cur1564 = call ptr @dva_arena_current()
  %rec.alloc1565 = call ptr @dva_arena_alloc(ptr %arena.cur1564, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1566 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1565, i32 0, i32 0
  store ptr %var.load1562, ptr %rec.fld1566, align 8
  %rec.fld1567 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1565, i32 0, i32 1
  store ptr %var.load1563, ptr %rec.fld1567, align 8
  store ptr %rec.alloc1565, ptr %pay.gep1561, align 8
  br label %choice.exit

choice.case1568:                                  ; preds = %choice.next1515
  %pay.gep1573 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1574 = load ptr, ptr %pay.gep1573, align 8
  store ptr %payload.ptr1574, ptr %var._1575, align 8
  store ptr %payload.ptr1574, ptr %var.r, align 8
  %var.load1576 = load ptr, ptr %var.r, align 8
  %fld.gep1577 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1576, i32 0, i32 0
  %fld.load1578 = load i1, ptr %fld.gep1577, align 1
  br i1 %fld.load1578, label %choice.then1579, label %choice.else1580

choice.next1569:                                  ; preds = %choice.next1515
  %tag.gep1658 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1659 = load i64, ptr %tag.gep1658, align 8
  %tag.match1660 = icmp eq i64 %tag.id1659, 36
  br i1 %tag.match1660, label %choice.case1656, label %choice.next1657

choice.then1579:                                  ; preds = %choice.case1568
  %var.load1582 = load ptr, ptr %var.r, align 8
  %fld.gep1583 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1582, i32 0, i32 2
  %fld.load1584 = load ptr, ptr %fld.gep1583, align 8
  %var.load1585 = load ptr, ptr %var.table, align 8
  %var.load1586 = load ptr, ptr %var.locals, align 8
  %a.load1587 = load ptr, ptr %var.locals, align 8
  %a.null1588 = icmp eq ptr %a.load1587, null
  br i1 %a.null1588, label %a.create1589, label %a.after1590

choice.else1580:                                  ; preds = %choice.case1568
  %var.load1600 = load ptr, ptr %var.r, align 8
  %fld.gep1601 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1600, i32 0, i32 2
  %fld.load1602 = load ptr, ptr %fld.gep1601, align 8
  br label %choice.exit1581

choice.exit1581:                                  ; preds = %choice.else1580, %a.after1590
  %choice.res1603 = phi ptr [ %call.res1599, %a.after1590 ], [ %fld.load1602, %choice.else1580 ]
  store ptr %choice.res1603, ptr %var.new_lhs1604, align 8
  %var.load1605 = load ptr, ptr %var.r, align 8
  %fld.gep1606 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1605, i32 0, i32 1
  %fld.load1607 = load i1, ptr %fld.gep1606, align 1
  br i1 %fld.load1607, label %choice.then1608, label %choice.else1609

a.create1589:                                     ; preds = %choice.then1579
  %arena.cur1591 = call ptr @dva_arena_current()
  %a.create1592 = call ptr @dva_arena_alloc(ptr %arena.cur1591, i64 24)
  %arena.cur1593 = call ptr @dva_arena_current()
  %a.buf1594 = call ptr @dva_arena_alloc(ptr %arena.cur1593, i64 128)
  %a.len.gep1595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 0
  store i64 0, ptr %a.len.gep1595, align 8
  %a.data.gep1596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 1
  store ptr %a.buf1594, ptr %a.data.gep1596, align 8
  %a.cap.gep1597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1592, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1597, align 8
  store ptr %a.create1592, ptr %var.locals, align 8
  br label %a.after1590

a.after1590:                                      ; preds = %a.create1589, %choice.then1579
  %a.load21598 = load ptr, ptr %var.locals, align 8
  %call.res1599 = call ptr @"overloads::walk"(ptr %fld.load1584, ptr %var.load1585, ptr %a.load21598)
  br label %choice.exit1581

choice.then1608:                                  ; preds = %choice.exit1581
  %var.load1611 = load ptr, ptr %var.r, align 8
  %fld.gep1612 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1611, i32 0, i32 3
  %fld.load1613 = load ptr, ptr %fld.gep1612, align 8
  %var.load1614 = load ptr, ptr %var.table, align 8
  %var.load1615 = load ptr, ptr %var.locals, align 8
  %a.load1616 = load ptr, ptr %var.locals, align 8
  %a.null1617 = icmp eq ptr %a.load1616, null
  br i1 %a.null1617, label %a.create1618, label %a.after1619

choice.else1609:                                  ; preds = %choice.exit1581
  %var.load1629 = load ptr, ptr %var.r, align 8
  %fld.gep1630 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1629, i32 0, i32 3
  %fld.load1631 = load ptr, ptr %fld.gep1630, align 8
  br label %choice.exit1610

choice.exit1610:                                  ; preds = %choice.else1609, %a.after1619
  %choice.res1632 = phi ptr [ %call.res1628, %a.after1619 ], [ %fld.load1631, %choice.else1609 ]
  store ptr %choice.res1632, ptr %var.new_rhs1633, align 8
  %arena.cur1634 = call ptr @dva_arena_current()
  %enum.alloc1635 = call ptr @dva_arena_alloc(ptr %arena.cur1634, i64 16)
  %tag.gep1636 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1635, i32 0, i32 0
  store i64 13, ptr %tag.gep1636, align 8
  %pay.gep1637 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1635, i32 0, i32 1
  %var.load1638 = load ptr, ptr %var.r, align 8
  %fld.gep1639 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1638, i32 0, i32 0
  %fld.load1640 = load i1, ptr %fld.gep1639, align 1
  %var.load1641 = load ptr, ptr %var.r, align 8
  %fld.gep1642 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1641, i32 0, i32 1
  %fld.load1643 = load i1, ptr %fld.gep1642, align 1
  %var.load1644 = load ptr, ptr %var.new_lhs1604, align 8
  %var.load1645 = load ptr, ptr %var.new_rhs1633, align 8
  %var.load1646 = load ptr, ptr %var.r, align 8
  %fld.gep1647 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1646, i32 0, i32 4
  %fld.load1648 = load i1, ptr %fld.gep1647, align 1
  %arena.cur1649 = call ptr @dva_arena_current()
  %rec.alloc1650 = call ptr @dva_arena_alloc(ptr %arena.cur1649, i64 ptrtoint (ptr getelementptr ({ i1, i1, ptr, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld1651 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1650, i32 0, i32 0
  store i1 %fld.load1640, ptr %rec.fld1651, align 1
  %rec.fld1652 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1650, i32 0, i32 1
  store i1 %fld.load1643, ptr %rec.fld1652, align 1
  %rec.fld1653 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1650, i32 0, i32 2
  store ptr %var.load1644, ptr %rec.fld1653, align 8
  %rec.fld1654 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1650, i32 0, i32 3
  store ptr %var.load1645, ptr %rec.fld1654, align 8
  %rec.fld1655 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %rec.alloc1650, i32 0, i32 4
  store i1 %fld.load1648, ptr %rec.fld1655, align 1
  store ptr %rec.alloc1650, ptr %pay.gep1637, align 8
  br label %choice.exit

a.create1618:                                     ; preds = %choice.then1608
  %arena.cur1620 = call ptr @dva_arena_current()
  %a.create1621 = call ptr @dva_arena_alloc(ptr %arena.cur1620, i64 24)
  %arena.cur1622 = call ptr @dva_arena_current()
  %a.buf1623 = call ptr @dva_arena_alloc(ptr %arena.cur1622, i64 128)
  %a.len.gep1624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 0
  store i64 0, ptr %a.len.gep1624, align 8
  %a.data.gep1625 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 1
  store ptr %a.buf1623, ptr %a.data.gep1625, align 8
  %a.cap.gep1626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1626, align 8
  store ptr %a.create1621, ptr %var.locals, align 8
  br label %a.after1619

a.after1619:                                      ; preds = %a.create1618, %choice.then1608
  %a.load21627 = load ptr, ptr %var.locals, align 8
  %call.res1628 = call ptr @"overloads::walk"(ptr %fld.load1613, ptr %var.load1614, ptr %a.load21627)
  br label %choice.exit1610

choice.case1656:                                  ; preds = %choice.next1569
  %pay.gep1661 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1662 = load ptr, ptr %pay.gep1661, align 8
  store ptr %payload.ptr1662, ptr %var._1663, align 8
  store ptr %payload.ptr1662, ptr %var.na, align 8
  %var.load1664 = load ptr, ptr %var.na, align 8
  %fld.gep1665 = getelementptr inbounds { ptr, ptr }, ptr %var.load1664, i32 0, i32 1
  %fld.load1666 = load ptr, ptr %fld.gep1665, align 8
  %var.load1667 = load ptr, ptr %var.table, align 8
  %var.load1668 = load ptr, ptr %var.locals, align 8
  %a.load1669 = load ptr, ptr %var.locals, align 8
  %a.null1670 = icmp eq ptr %a.load1669, null
  br i1 %a.null1670, label %a.create1671, label %a.after1672

choice.next1657:                                  ; preds = %choice.next1569
  %tag.gep1697 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1698 = load i64, ptr %tag.gep1697, align 8
  %tag.match1699 = icmp eq i64 %tag.id1698, 18
  br i1 %tag.match1699, label %choice.case1695, label %choice.next1696

a.create1671:                                     ; preds = %choice.case1656
  %arena.cur1673 = call ptr @dva_arena_current()
  %a.create1674 = call ptr @dva_arena_alloc(ptr %arena.cur1673, i64 24)
  %arena.cur1675 = call ptr @dva_arena_current()
  %a.buf1676 = call ptr @dva_arena_alloc(ptr %arena.cur1675, i64 128)
  %a.len.gep1677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 0
  store i64 0, ptr %a.len.gep1677, align 8
  %a.data.gep1678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 1
  store ptr %a.buf1676, ptr %a.data.gep1678, align 8
  %a.cap.gep1679 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1674, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1679, align 8
  store ptr %a.create1674, ptr %var.locals, align 8
  br label %a.after1672

a.after1672:                                      ; preds = %a.create1671, %choice.case1656
  %a.load21680 = load ptr, ptr %var.locals, align 8
  %call.res1681 = call ptr @"overloads::walk"(ptr %fld.load1666, ptr %var.load1667, ptr %a.load21680)
  store ptr %call.res1681, ptr %var.new_val1682, align 8
  %arena.cur1683 = call ptr @dva_arena_current()
  %enum.alloc1684 = call ptr @dva_arena_alloc(ptr %arena.cur1683, i64 16)
  %tag.gep1685 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1684, i32 0, i32 0
  store i64 36, ptr %tag.gep1685, align 8
  %pay.gep1686 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1684, i32 0, i32 1
  %var.load1687 = load ptr, ptr %var.na, align 8
  %fld.gep1688 = getelementptr inbounds { ptr, ptr }, ptr %var.load1687, i32 0, i32 0
  %fld.load1689 = load ptr, ptr %fld.gep1688, align 8
  %var.load1690 = load ptr, ptr %var.new_val1682, align 8
  %arena.cur1691 = call ptr @dva_arena_current()
  %rec.alloc1692 = call ptr @dva_arena_alloc(ptr %arena.cur1691, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1693 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1692, i32 0, i32 0
  store ptr %fld.load1689, ptr %rec.fld1693, align 8
  %rec.fld1694 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1692, i32 0, i32 1
  store ptr %var.load1690, ptr %rec.fld1694, align 8
  store ptr %rec.alloc1692, ptr %pay.gep1686, align 8
  br label %choice.exit

choice.case1695:                                  ; preds = %choice.next1657
  %pay.gep1700 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1701 = load ptr, ptr %pay.gep1700, align 8
  store ptr %payload.ptr1701, ptr %var._1702, align 8
  store ptr %payload.ptr1701, ptr %var.v1703, align 8
  %var.load1704 = load ptr, ptr %var.v1703, align 8
  %fld.gep1705 = getelementptr inbounds { ptr, ptr }, ptr %var.load1704, i32 0, i32 1
  %fld.load1706 = load ptr, ptr %fld.gep1705, align 8
  %var.load1707 = load ptr, ptr %var.table, align 8
  %var.load1708 = load ptr, ptr %var.locals, align 8
  %a.load1709 = load ptr, ptr %var.locals, align 8
  %a.null1710 = icmp eq ptr %a.load1709, null
  br i1 %a.null1710, label %a.create1711, label %a.after1712

choice.next1696:                                  ; preds = %choice.next1657
  %tag.gep1748 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1749 = load i64, ptr %tag.gep1748, align 8
  %tag.match1750 = icmp eq i64 %tag.id1749, 22
  br i1 %tag.match1750, label %choice.case1746, label %choice.next1747

a.create1711:                                     ; preds = %choice.case1695
  %arena.cur1713 = call ptr @dva_arena_current()
  %a.create1714 = call ptr @dva_arena_alloc(ptr %arena.cur1713, i64 24)
  %arena.cur1715 = call ptr @dva_arena_current()
  %a.buf1716 = call ptr @dva_arena_alloc(ptr %arena.cur1715, i64 128)
  %a.len.gep1717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 0
  store i64 0, ptr %a.len.gep1717, align 8
  %a.data.gep1718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 1
  store ptr %a.buf1716, ptr %a.data.gep1718, align 8
  %a.cap.gep1719 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1719, align 8
  store ptr %a.create1714, ptr %var.locals, align 8
  br label %a.after1712

a.after1712:                                      ; preds = %a.create1711, %choice.case1695
  %a.load21720 = load ptr, ptr %var.locals, align 8
  %call.res1721 = call ptr @"overloads::walk_many"(ptr %fld.load1706, ptr %var.load1707, ptr %a.load21720)
  store ptr %call.res1721, ptr %var.new_args, align 8
  %arena.cur1722 = call ptr @dva_arena_current()
  %enum.alloc1723 = call ptr @dva_arena_alloc(ptr %arena.cur1722, i64 16)
  %tag.gep1724 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1723, i32 0, i32 0
  store i64 18, ptr %tag.gep1724, align 8
  %pay.gep1725 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1723, i32 0, i32 1
  %var.load1726 = load ptr, ptr %var.v1703, align 8
  %fld.gep1727 = getelementptr inbounds { ptr, ptr }, ptr %var.load1726, i32 0, i32 0
  %fld.load1728 = load ptr, ptr %fld.gep1727, align 8
  %var.load1729 = load ptr, ptr %var.new_args, align 8
  %a.load1730 = load ptr, ptr %var.new_args, align 8
  %a.null1731 = icmp eq ptr %a.load1730, null
  br i1 %a.null1731, label %a.create1732, label %a.after1733

a.create1732:                                     ; preds = %a.after1712
  %arena.cur1734 = call ptr @dva_arena_current()
  %a.create1735 = call ptr @dva_arena_alloc(ptr %arena.cur1734, i64 24)
  %arena.cur1736 = call ptr @dva_arena_current()
  %a.buf1737 = call ptr @dva_arena_alloc(ptr %arena.cur1736, i64 128)
  %a.len.gep1738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1735, i32 0, i32 0
  store i64 0, ptr %a.len.gep1738, align 8
  %a.data.gep1739 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1735, i32 0, i32 1
  store ptr %a.buf1737, ptr %a.data.gep1739, align 8
  %a.cap.gep1740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1735, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1740, align 8
  store ptr %a.create1735, ptr %var.new_args, align 8
  br label %a.after1733

a.after1733:                                      ; preds = %a.create1732, %a.after1712
  %a.load21741 = load ptr, ptr %var.new_args, align 8
  %arena.cur1742 = call ptr @dva_arena_current()
  %rec.alloc1743 = call ptr @dva_arena_alloc(ptr %arena.cur1742, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1744 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1743, i32 0, i32 0
  store ptr %fld.load1728, ptr %rec.fld1744, align 8
  %rec.fld1745 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1743, i32 0, i32 1
  store ptr %a.load21741, ptr %rec.fld1745, align 8
  store ptr %rec.alloc1743, ptr %pay.gep1725, align 8
  br label %choice.exit

choice.case1746:                                  ; preds = %choice.next1696
  %pay.gep1751 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1752 = load ptr, ptr %pay.gep1751, align 8
  store ptr %payload.ptr1752, ptr %var._1753, align 8
  store ptr %payload.ptr1752, ptr %var.tc, align 8
  %var.load1754 = load ptr, ptr %var.tc, align 8
  %fld.gep1755 = getelementptr inbounds { ptr, ptr }, ptr %var.load1754, i32 0, i32 1
  %fld.load1756 = load ptr, ptr %fld.gep1755, align 8
  %var.load1757 = load ptr, ptr %var.table, align 8
  %var.load1758 = load ptr, ptr %var.locals, align 8
  %a.load1759 = load ptr, ptr %var.locals, align 8
  %a.null1760 = icmp eq ptr %a.load1759, null
  br i1 %a.null1760, label %a.create1761, label %a.after1762

choice.next1747:                                  ; preds = %choice.next1696
  %tag.gep1786 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1787 = load i64, ptr %tag.gep1786, align 8
  %tag.match1788 = icmp eq i64 %tag.id1787, 31
  br i1 %tag.match1788, label %choice.case1784, label %choice.next1785

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
  %call.res1771 = call ptr @"overloads::walk"(ptr %fld.load1756, ptr %var.load1757, ptr %a.load21770)
  store ptr %call.res1771, ptr %var.new_expr, align 8
  %arena.cur1772 = call ptr @dva_arena_current()
  %enum.alloc1773 = call ptr @dva_arena_alloc(ptr %arena.cur1772, i64 16)
  %tag.gep1774 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1773, i32 0, i32 0
  store i64 22, ptr %tag.gep1774, align 8
  %pay.gep1775 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1773, i32 0, i32 1
  %var.load1776 = load ptr, ptr %var.tc, align 8
  %fld.gep1777 = getelementptr inbounds { ptr, ptr }, ptr %var.load1776, i32 0, i32 0
  %fld.load1778 = load ptr, ptr %fld.gep1777, align 8
  %var.load1779 = load ptr, ptr %var.new_expr, align 8
  %arena.cur1780 = call ptr @dva_arena_current()
  %rec.alloc1781 = call ptr @dva_arena_alloc(ptr %arena.cur1780, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1782 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1781, i32 0, i32 0
  store ptr %fld.load1778, ptr %rec.fld1782, align 8
  %rec.fld1783 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc1781, i32 0, i32 1
  store ptr %var.load1779, ptr %rec.fld1783, align 8
  store ptr %rec.alloc1781, ptr %pay.gep1775, align 8
  br label %choice.exit

choice.case1784:                                  ; preds = %choice.next1747
  %pay.gep1789 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1790 = load ptr, ptr %pay.gep1789, align 8
  store ptr %payload.ptr1790, ptr %var._1791, align 8
  store ptr %payload.ptr1790, ptr %var.sp, align 8
  %arena.cur1792 = call ptr @dva_arena_current()
  %enum.alloc1793 = call ptr @dva_arena_alloc(ptr %arena.cur1792, i64 16)
  %tag.gep1794 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1793, i32 0, i32 0
  store i64 31, ptr %tag.gep1794, align 8
  %pay.gep1795 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1793, i32 0, i32 1
  %var.load1796 = load ptr, ptr %var.sp, align 8
  %var.load1797 = load ptr, ptr %var.table, align 8
  %var.load1798 = load ptr, ptr %var.locals, align 8
  %a.load1799 = load ptr, ptr %var.locals, align 8
  %a.null1800 = icmp eq ptr %a.load1799, null
  br i1 %a.null1800, label %a.create1801, label %a.after1802

choice.next1785:                                  ; preds = %choice.next1747
  %tag.gep1814 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1815 = load i64, ptr %tag.gep1814, align 8
  %tag.match1816 = icmp eq i64 %tag.id1815, 32
  br i1 %tag.match1816, label %choice.case1812, label %choice.next1813

a.create1801:                                     ; preds = %choice.case1784
  %arena.cur1803 = call ptr @dva_arena_current()
  %a.create1804 = call ptr @dva_arena_alloc(ptr %arena.cur1803, i64 24)
  %arena.cur1805 = call ptr @dva_arena_current()
  %a.buf1806 = call ptr @dva_arena_alloc(ptr %arena.cur1805, i64 128)
  %a.len.gep1807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 0
  store i64 0, ptr %a.len.gep1807, align 8
  %a.data.gep1808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 1
  store ptr %a.buf1806, ptr %a.data.gep1808, align 8
  %a.cap.gep1809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1809, align 8
  store ptr %a.create1804, ptr %var.locals, align 8
  br label %a.after1802

a.after1802:                                      ; preds = %a.create1801, %choice.case1784
  %a.load21810 = load ptr, ptr %var.locals, align 8
  %call.res1811 = call ptr @"overloads::walk_call"(ptr %var.load1796, ptr %var.load1797, ptr %a.load21810)
  store ptr %call.res1811, ptr %pay.gep1795, align 8
  br label %choice.exit

choice.case1812:                                  ; preds = %choice.next1785
  %pay.gep1817 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1818 = load ptr, ptr %pay.gep1817, align 8
  store ptr %payload.ptr1818, ptr %var._1819, align 8
  store ptr %payload.ptr1818, ptr %var.jn, align 8
  %arena.cur1820 = call ptr @dva_arena_current()
  %enum.alloc1821 = call ptr @dva_arena_alloc(ptr %arena.cur1820, i64 16)
  %tag.gep1822 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1821, i32 0, i32 0
  store i64 32, ptr %tag.gep1822, align 8
  %pay.gep1823 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1821, i32 0, i32 1
  %var.load1824 = load ptr, ptr %var.jn, align 8
  %var.load1825 = load ptr, ptr %var.table, align 8
  %var.load1826 = load ptr, ptr %var.locals, align 8
  %a.load1827 = load ptr, ptr %var.locals, align 8
  %a.null1828 = icmp eq ptr %a.load1827, null
  br i1 %a.null1828, label %a.create1829, label %a.after1830

choice.next1813:                                  ; preds = %choice.next1785
  %tag.gep1842 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1843 = load i64, ptr %tag.gep1842, align 8
  %tag.match1844 = icmp eq i64 %tag.id1843, 33
  br i1 %tag.match1844, label %choice.case1840, label %choice.next1841

a.create1829:                                     ; preds = %choice.case1812
  %arena.cur1831 = call ptr @dva_arena_current()
  %a.create1832 = call ptr @dva_arena_alloc(ptr %arena.cur1831, i64 24)
  %arena.cur1833 = call ptr @dva_arena_current()
  %a.buf1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 128)
  %a.len.gep1835 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 0
  store i64 0, ptr %a.len.gep1835, align 8
  %a.data.gep1836 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 1
  store ptr %a.buf1834, ptr %a.data.gep1836, align 8
  %a.cap.gep1837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1832, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1837, align 8
  store ptr %a.create1832, ptr %var.locals, align 8
  br label %a.after1830

a.after1830:                                      ; preds = %a.create1829, %choice.case1812
  %a.load21838 = load ptr, ptr %var.locals, align 8
  %call.res1839 = call ptr @"overloads::walk"(ptr %var.load1824, ptr %var.load1825, ptr %a.load21838)
  store ptr %call.res1839, ptr %pay.gep1823, align 8
  br label %choice.exit

choice.case1840:                                  ; preds = %choice.next1813
  %pay.gep1845 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1846 = load ptr, ptr %pay.gep1845, align 8
  store ptr %payload.ptr1846, ptr %var._1847, align 8
  store ptr %payload.ptr1846, ptr %var.ex, align 8
  %var.load1848 = load ptr, ptr %var.ex, align 8
  %var.load1849 = load ptr, ptr %var.table, align 8
  %var.load1850 = load ptr, ptr %var.locals, align 8
  %a.load1851 = load ptr, ptr %var.locals, align 8
  %a.null1852 = icmp eq ptr %a.load1851, null
  br i1 %a.null1852, label %a.create1853, label %a.after1854

choice.next1841:                                  ; preds = %choice.next1813
  %tag.gep1871 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1872 = load i64, ptr %tag.gep1871, align 8
  %tag.match1873 = icmp eq i64 %tag.id1872, 37
  br i1 %tag.match1873, label %choice.case1869, label %choice.next1870

a.create1853:                                     ; preds = %choice.case1840
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

a.after1854:                                      ; preds = %a.create1853, %choice.case1840
  %a.load21862 = load ptr, ptr %var.locals, align 8
  %call.res1863 = call ptr @"overloads::walk"(ptr %var.load1848, ptr %var.load1849, ptr %a.load21862)
  store ptr %call.res1863, ptr %var.new_ex, align 8
  %arena.cur1864 = call ptr @dva_arena_current()
  %enum.alloc1865 = call ptr @dva_arena_alloc(ptr %arena.cur1864, i64 16)
  %tag.gep1866 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1865, i32 0, i32 0
  store i64 33, ptr %tag.gep1866, align 8
  %pay.gep1867 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1865, i32 0, i32 1
  %var.load1868 = load ptr, ptr %var.new_ex, align 8
  store ptr %var.load1868, ptr %pay.gep1867, align 8
  br label %choice.exit

choice.case1869:                                  ; preds = %choice.next1841
  %pay.gep1874 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1875 = load ptr, ptr %pay.gep1874, align 8
  store ptr %payload.ptr1875, ptr %var._1876, align 8
  store ptr %payload.ptr1875, ptr %var.r1877, align 8
  %var.load1878 = load ptr, ptr %var.r1877, align 8
  %fld.gep1879 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1878, i32 0, i32 0
  %fld.load1880 = load i1, ptr %fld.gep1879, align 1
  br i1 %fld.load1880, label %choice.then1881, label %choice.else1882

choice.next1870:                                  ; preds = %choice.next1841
  %tag.gep1929 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1930 = load i64, ptr %tag.gep1929, align 8
  %tag.match1931 = icmp eq i64 %tag.id1930, 28
  br i1 %tag.match1931, label %choice.case1927, label %choice.next1928

choice.then1881:                                  ; preds = %choice.case1869
  %var.load1884 = load ptr, ptr %var.r1877, align 8
  %fld.gep1885 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1884, i32 0, i32 1
  %fld.load1886 = load ptr, ptr %fld.gep1885, align 8
  %var.load1887 = load ptr, ptr %var.table, align 8
  %var.load1888 = load ptr, ptr %var.locals, align 8
  %a.load1889 = load ptr, ptr %var.locals, align 8
  %a.null1890 = icmp eq ptr %a.load1889, null
  br i1 %a.null1890, label %a.create1891, label %a.after1892

choice.else1882:                                  ; preds = %choice.case1869
  %var.load1902 = load ptr, ptr %var.r1877, align 8
  %fld.gep1903 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1902, i32 0, i32 1
  %fld.load1904 = load ptr, ptr %fld.gep1903, align 8
  br label %choice.exit1883

choice.exit1883:                                  ; preds = %choice.else1882, %a.after1892
  %choice.res1905 = phi ptr [ %call.res1901, %a.after1892 ], [ %fld.load1904, %choice.else1882 ]
  store ptr %choice.res1905, ptr %var.new_val1906, align 8
  %arena.cur1907 = call ptr @dva_arena_current()
  %enum.alloc1908 = call ptr @dva_arena_alloc(ptr %arena.cur1907, i64 16)
  %tag.gep1909 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1908, i32 0, i32 0
  store i64 37, ptr %tag.gep1909, align 8
  %pay.gep1910 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1908, i32 0, i32 1
  %var.load1911 = load ptr, ptr %var.r1877, align 8
  %fld.gep1912 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1911, i32 0, i32 0
  %fld.load1913 = load i1, ptr %fld.gep1912, align 1
  %var.load1914 = load ptr, ptr %var.new_val1906, align 8
  %var.load1915 = load ptr, ptr %var.r1877, align 8
  %fld.gep1916 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1915, i32 0, i32 2
  %fld.load1917 = load i64, ptr %fld.gep1916, align 8
  %var.load1918 = load ptr, ptr %var.r1877, align 8
  %fld.gep1919 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1918, i32 0, i32 3
  %fld.load1920 = load i64, ptr %fld.gep1919, align 8
  %arena.cur1921 = call ptr @dva_arena_current()
  %rec.alloc1922 = call ptr @dva_arena_alloc(ptr %arena.cur1921, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1923 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1922, i32 0, i32 0
  store i1 %fld.load1913, ptr %rec.fld1923, align 1
  %rec.fld1924 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1922, i32 0, i32 1
  store ptr %var.load1914, ptr %rec.fld1924, align 8
  %rec.fld1925 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1922, i32 0, i32 2
  store i64 %fld.load1917, ptr %rec.fld1925, align 8
  %rec.fld1926 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1922, i32 0, i32 3
  store i64 %fld.load1920, ptr %rec.fld1926, align 8
  store ptr %rec.alloc1922, ptr %pay.gep1910, align 8
  br label %choice.exit

a.create1891:                                     ; preds = %choice.then1881
  %arena.cur1893 = call ptr @dva_arena_current()
  %a.create1894 = call ptr @dva_arena_alloc(ptr %arena.cur1893, i64 24)
  %arena.cur1895 = call ptr @dva_arena_current()
  %a.buf1896 = call ptr @dva_arena_alloc(ptr %arena.cur1895, i64 128)
  %a.len.gep1897 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1894, i32 0, i32 0
  store i64 0, ptr %a.len.gep1897, align 8
  %a.data.gep1898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1894, i32 0, i32 1
  store ptr %a.buf1896, ptr %a.data.gep1898, align 8
  %a.cap.gep1899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1894, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1899, align 8
  store ptr %a.create1894, ptr %var.locals, align 8
  br label %a.after1892

a.after1892:                                      ; preds = %a.create1891, %choice.then1881
  %a.load21900 = load ptr, ptr %var.locals, align 8
  %call.res1901 = call ptr @"overloads::walk"(ptr %fld.load1886, ptr %var.load1887, ptr %a.load21900)
  br label %choice.exit1883

choice.case1927:                                  ; preds = %choice.next1870
  %pay.gep1932 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1933 = load ptr, ptr %pay.gep1932, align 8
  store ptr %payload.ptr1933, ptr %var._1934, align 8
  store ptr %payload.ptr1933, ptr %var.ac, align 8
  %var.load1935 = load ptr, ptr %var.ac, align 8
  %fld.gep1936 = getelementptr inbounds { ptr, i64 }, ptr %var.load1935, i32 0, i32 0
  %fld.load1937 = load ptr, ptr %fld.gep1936, align 8
  %var.load1938 = load ptr, ptr %var.table, align 8
  %call.res1939 = call ptr @"overloads::keep_type"(ptr %fld.load1937, ptr %var.load1938)
  store ptr %call.res1939, ptr %var.new_elem, align 8
  %arena.cur1940 = call ptr @dva_arena_current()
  %enum.alloc1941 = call ptr @dva_arena_alloc(ptr %arena.cur1940, i64 16)
  %tag.gep1942 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1941, i32 0, i32 0
  store i64 28, ptr %tag.gep1942, align 8
  %pay.gep1943 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1941, i32 0, i32 1
  %var.load1944 = load ptr, ptr %var.new_elem, align 8
  %var.load1945 = load ptr, ptr %var.ac, align 8
  %fld.gep1946 = getelementptr inbounds { ptr, i64 }, ptr %var.load1945, i32 0, i32 1
  %fld.load1947 = load i64, ptr %fld.gep1946, align 8
  %arena.cur1948 = call ptr @dva_arena_current()
  %rec.alloc1949 = call ptr @dva_arena_alloc(ptr %arena.cur1948, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1950 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc1949, i32 0, i32 0
  store ptr %var.load1944, ptr %rec.fld1950, align 8
  %rec.fld1951 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc1949, i32 0, i32 1
  store i64 %fld.load1947, ptr %rec.fld1951, align 8
  store ptr %rec.alloc1949, ptr %pay.gep1943, align 8
  br label %choice.exit

choice.next1928:                                  ; preds = %choice.next1870
  %tag.gep1954 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1955 = load i64, ptr %tag.gep1954, align 8
  %tag.match1956 = icmp eq i64 %tag.id1955, 38
  br i1 %tag.match1956, label %choice.case1952, label %choice.next1953

choice.case1952:                                  ; preds = %choice.next1928
  %pay.gep1957 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1958 = load ptr, ptr %pay.gep1957, align 8
  store ptr %payload.ptr1958, ptr %var._1959, align 8
  store ptr %payload.ptr1958, ptr %var.ud, align 8
  %var.load1960 = load ptr, ptr %var.ud, align 8
  %fld.gep1961 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1960, i32 0, i32 1
  %fld.load1962 = load ptr, ptr %fld.gep1961, align 8
  %var.load1963 = load ptr, ptr %var.table, align 8
  %var.load1964 = load ptr, ptr %var.locals, align 8
  %a.load1965 = load ptr, ptr %var.locals, align 8
  %a.null1966 = icmp eq ptr %a.load1965, null
  br i1 %a.null1966, label %a.create1967, label %a.after1968

choice.next1953:                                  ; preds = %choice.next1928
  %tag.gep2000 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2001 = load i64, ptr %tag.gep2000, align 8
  %tag.match2002 = icmp eq i64 %tag.id2001, 19
  br i1 %tag.match2002, label %choice.case1998, label %choice.next1999

a.create1967:                                     ; preds = %choice.case1952
  %arena.cur1969 = call ptr @dva_arena_current()
  %a.create1970 = call ptr @dva_arena_alloc(ptr %arena.cur1969, i64 24)
  %arena.cur1971 = call ptr @dva_arena_current()
  %a.buf1972 = call ptr @dva_arena_alloc(ptr %arena.cur1971, i64 128)
  %a.len.gep1973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1970, i32 0, i32 0
  store i64 0, ptr %a.len.gep1973, align 8
  %a.data.gep1974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1970, i32 0, i32 1
  store ptr %a.buf1972, ptr %a.data.gep1974, align 8
  %a.cap.gep1975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1970, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1975, align 8
  store ptr %a.create1970, ptr %var.locals, align 8
  br label %a.after1968

a.after1968:                                      ; preds = %a.create1967, %choice.case1952
  %a.load21976 = load ptr, ptr %var.locals, align 8
  %call.res1977 = call ptr @"overloads::walk"(ptr %fld.load1962, ptr %var.load1963, ptr %a.load21976)
  store ptr %call.res1977, ptr %var.new_msg, align 8
  %arena.cur1978 = call ptr @dva_arena_current()
  %enum.alloc1979 = call ptr @dva_arena_alloc(ptr %arena.cur1978, i64 16)
  %tag.gep1980 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1979, i32 0, i32 0
  store i64 38, ptr %tag.gep1980, align 8
  %pay.gep1981 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1979, i32 0, i32 1
  %var.load1982 = load ptr, ptr %var.ud, align 8
  %fld.gep1983 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1982, i32 0, i32 0
  %fld.load1984 = load i1, ptr %fld.gep1983, align 1
  %var.load1985 = load ptr, ptr %var.new_msg, align 8
  %var.load1986 = load ptr, ptr %var.ud, align 8
  %fld.gep1987 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1986, i32 0, i32 2
  %fld.load1988 = load i64, ptr %fld.gep1987, align 8
  %var.load1989 = load ptr, ptr %var.ud, align 8
  %fld.gep1990 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1989, i32 0, i32 3
  %fld.load1991 = load i64, ptr %fld.gep1990, align 8
  %arena.cur1992 = call ptr @dva_arena_current()
  %rec.alloc1993 = call ptr @dva_arena_alloc(ptr %arena.cur1992, i64 ptrtoint (ptr getelementptr ({ i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld1994 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1993, i32 0, i32 0
  store i1 %fld.load1984, ptr %rec.fld1994, align 1
  %rec.fld1995 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1993, i32 0, i32 1
  store ptr %var.load1985, ptr %rec.fld1995, align 8
  %rec.fld1996 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1993, i32 0, i32 2
  store i64 %fld.load1988, ptr %rec.fld1996, align 8
  %rec.fld1997 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %rec.alloc1993, i32 0, i32 3
  store i64 %fld.load1991, ptr %rec.fld1997, align 8
  store ptr %rec.alloc1993, ptr %pay.gep1981, align 8
  br label %choice.exit

choice.case1998:                                  ; preds = %choice.next1953
  %pay.gep2003 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2004 = load ptr, ptr %pay.gep2003, align 8
  store ptr %payload.ptr2004, ptr %var._2005, align 8
  store ptr %payload.ptr2004, ptr %var.rm, align 8
  %var.load2006 = load ptr, ptr %var.rm, align 8
  %fld.gep2007 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2006, i32 0, i32 0
  %fld.load2008 = load ptr, ptr %fld.gep2007, align 8
  %var.load2009 = load ptr, ptr %var.table, align 8
  %var.load2010 = load ptr, ptr %var.locals, align 8
  %a.load2011 = load ptr, ptr %var.locals, align 8
  %a.null2012 = icmp eq ptr %a.load2011, null
  br i1 %a.null2012, label %a.create2013, label %a.after2014

choice.next1999:                                  ; preds = %choice.next1953
  %tag.gep2042 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2043 = load i64, ptr %tag.gep2042, align 8
  %tag.match2044 = icmp eq i64 %tag.id2043, 26
  br i1 %tag.match2044, label %choice.case2040, label %choice.next2041

a.create2013:                                     ; preds = %choice.case1998
  %arena.cur2015 = call ptr @dva_arena_current()
  %a.create2016 = call ptr @dva_arena_alloc(ptr %arena.cur2015, i64 24)
  %arena.cur2017 = call ptr @dva_arena_current()
  %a.buf2018 = call ptr @dva_arena_alloc(ptr %arena.cur2017, i64 128)
  %a.len.gep2019 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2016, i32 0, i32 0
  store i64 0, ptr %a.len.gep2019, align 8
  %a.data.gep2020 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2016, i32 0, i32 1
  store ptr %a.buf2018, ptr %a.data.gep2020, align 8
  %a.cap.gep2021 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2016, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2021, align 8
  store ptr %a.create2016, ptr %var.locals, align 8
  br label %a.after2014

a.after2014:                                      ; preds = %a.create2013, %choice.case1998
  %a.load22022 = load ptr, ptr %var.locals, align 8
  %call.res2023 = call ptr @"overloads::walk"(ptr %fld.load2008, ptr %var.load2009, ptr %a.load22022)
  store ptr %call.res2023, ptr %var.new_addr, align 8
  %arena.cur2024 = call ptr @dva_arena_current()
  %enum.alloc2025 = call ptr @dva_arena_alloc(ptr %arena.cur2024, i64 16)
  %tag.gep2026 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2025, i32 0, i32 0
  store i64 19, ptr %tag.gep2026, align 8
  %pay.gep2027 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2025, i32 0, i32 1
  %var.load2028 = load ptr, ptr %var.new_addr, align 8
  %var.load2029 = load ptr, ptr %var.rm, align 8
  %fld.gep2030 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2029, i32 0, i32 1
  %fld.load2031 = load ptr, ptr %fld.gep2030, align 8
  %var.load2032 = load ptr, ptr %var.rm, align 8
  %fld.gep2033 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2032, i32 0, i32 2
  %fld.load2034 = load ptr, ptr %fld.gep2033, align 8
  %arena.cur2035 = call ptr @dva_arena_current()
  %rec.alloc2036 = call ptr @dva_arena_alloc(ptr %arena.cur2035, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2037 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2036, i32 0, i32 0
  store ptr %var.load2028, ptr %rec.fld2037, align 8
  %rec.fld2038 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2036, i32 0, i32 1
  store ptr %fld.load2031, ptr %rec.fld2038, align 8
  %rec.fld2039 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc2036, i32 0, i32 2
  store ptr %fld.load2034, ptr %rec.fld2039, align 8
  store ptr %rec.alloc2036, ptr %pay.gep2027, align 8
  br label %choice.exit

choice.case2040:                                  ; preds = %choice.next1999
  %pay.gep2045 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2046 = load ptr, ptr %pay.gep2045, align 8
  store ptr %payload.ptr2046, ptr %var._2047, align 8
  store ptr %payload.ptr2046, ptr %var.so, align 8
  %var.load2048 = load ptr, ptr %var.so, align 8
  %fld.gep2049 = getelementptr inbounds { ptr, ptr }, ptr %var.load2048, i32 0, i32 1
  %fld.load2050 = load ptr, ptr %fld.gep2049, align 8
  %var.load2051 = load ptr, ptr %var.table, align 8
  %call.res2052 = call ptr @"overloads::keep_type"(ptr %fld.load2050, ptr %var.load2051)
  store ptr %call.res2052, ptr %var.new_sti, align 8
  %arena.cur2053 = call ptr @dva_arena_current()
  %enum.alloc2054 = call ptr @dva_arena_alloc(ptr %arena.cur2053, i64 16)
  %tag.gep2055 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2054, i32 0, i32 0
  store i64 26, ptr %tag.gep2055, align 8
  %pay.gep2056 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2054, i32 0, i32 1
  %var.load2057 = load ptr, ptr %var.so, align 8
  %fld.gep2058 = getelementptr inbounds { ptr, ptr }, ptr %var.load2057, i32 0, i32 0
  %fld.load2059 = load ptr, ptr %fld.gep2058, align 8
  %var.load2060 = load ptr, ptr %var.new_sti, align 8
  %arena.cur2061 = call ptr @dva_arena_current()
  %rec.alloc2062 = call ptr @dva_arena_alloc(ptr %arena.cur2061, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2063 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2062, i32 0, i32 0
  store ptr %fld.load2059, ptr %rec.fld2063, align 8
  %rec.fld2064 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2062, i32 0, i32 1
  store ptr %var.load2060, ptr %rec.fld2064, align 8
  store ptr %rec.alloc2062, ptr %pay.gep2056, align 8
  br label %choice.exit

choice.next2041:                                  ; preds = %choice.next1999
  %tag.gep2067 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2068 = load i64, ptr %tag.gep2067, align 8
  %tag.match2069 = icmp eq i64 %tag.id2068, 29
  br i1 %tag.match2069, label %choice.case2065, label %choice.next2066

choice.case2065:                                  ; preds = %choice.next2041
  %pay.gep2070 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2071 = load ptr, ptr %pay.gep2070, align 8
  store ptr %payload.ptr2071, ptr %var._2072, align 8
  store ptr %payload.ptr2071, ptr %var.ml, align 8
  %arena.cur2073 = call ptr @dva_arena_current()
  %a.new2074 = call ptr @dva_arena_alloc(ptr %arena.cur2073, i64 24)
  %arena.cur2075 = call ptr @dva_arena_current()
  %a.buf2076 = call ptr @dva_arena_alloc(ptr %arena.cur2075, i64 128)
  %a.len.gep2077 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2074, i32 0, i32 0
  store i64 0, ptr %a.len.gep2077, align 8
  %a.data.gep2078 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2074, i32 0, i32 1
  store ptr %a.buf2076, ptr %a.data.gep2078, align 8
  %a.cap.gep2079 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new2074, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2079, align 8
  store ptr %a.new2074, ptr %var.new_pairs, align 8
  %var.load2080 = load ptr, ptr %var.ml, align 8
  %a.load2081 = load ptr, ptr %var.ml, align 8
  %a.null2082 = icmp eq ptr %a.load2081, null
  br i1 %a.null2082, label %a.create2083, label %a.after2084

choice.next2066:                                  ; preds = %choice.next2041
  %tag.gep2196 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2197 = load i64, ptr %tag.gep2196, align 8
  %tag.match2198 = icmp eq i64 %tag.id2197, 30
  br i1 %tag.match2198, label %choice.case2194, label %choice.next2195

a.create2083:                                     ; preds = %choice.case2065
  %arena.cur2085 = call ptr @dva_arena_current()
  %a.create2086 = call ptr @dva_arena_alloc(ptr %arena.cur2085, i64 24)
  %arena.cur2087 = call ptr @dva_arena_current()
  %a.buf2088 = call ptr @dva_arena_alloc(ptr %arena.cur2087, i64 128)
  %a.len.gep2089 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2086, i32 0, i32 0
  store i64 0, ptr %a.len.gep2089, align 8
  %a.data.gep2090 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2086, i32 0, i32 1
  store ptr %a.buf2088, ptr %a.data.gep2090, align 8
  %a.cap.gep2091 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2086, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2091, align 8
  store ptr %a.create2086, ptr %var.ml, align 8
  br label %a.after2084

a.after2084:                                      ; preds = %a.create2083, %choice.case2065
  %a.load22092 = load ptr, ptr %var.ml, align 8
  %arr.cycle.len2093 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22092, i32 0, i32 0
  %arr.cycle.len2094 = load i64, ptr %arr.cycle.len2093, align 8
  %arr.cycle.data2095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22092, i32 0, i32 1
  %arr.cycle.data2096 = load ptr, ptr %arr.cycle.data2095, align 8
  store i64 0, ptr %loop.idx.78, align 8
  %cycle.prev.u2098 = load ptr, ptr %var._2072, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %a.after2084
  %counter.load2099 = load i64, ptr %loop.idx.78, align 8
  %loop.cond2100 = icmp slt i64 %counter.load2099, %arr.cycle.len2094
  br i1 %loop.cond2100, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i2101 = sub i64 %counter.load2099, 0
  store i64 1, ptr %loop.step.78, align 8
  %arr.elem.gep2102 = getelementptr i64, ptr %arr.cycle.data2096, i64 %counter.load2099
  %arr.elem.raw2103 = load i64, ptr %arr.elem.gep2102, align 8
  %slot.i2p2104 = inttoptr i64 %arr.elem.raw2103 to ptr
  store i64 %loop.rel.i2101, ptr %var._i2105, align 8
  store ptr %slot.i2p2104, ptr %var._2106, align 8
  store ptr %slot.i2p2104, ptr %var.p2097, align 8
  %var.load2107 = load ptr, ptr %var.p2097, align 8
  %fld.gep2108 = getelementptr inbounds { ptr, ptr }, ptr %var.load2107, i32 0, i32 0
  %fld.load2109 = load ptr, ptr %fld.gep2108, align 8
  %var.load2110 = load ptr, ptr %var.table, align 8
  %var.load2111 = load ptr, ptr %var.locals, align 8
  %a.load2112 = load ptr, ptr %var.locals, align 8
  %a.null2113 = icmp eq ptr %a.load2112, null
  br i1 %a.null2113, label %a.create2114, label %a.after2115

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %a.store2161
  %step.val2175 = load i64, ptr %loop.step.78, align 8
  %loop.next2176 = add i64 %counter.load2099, %step.val2175
  store i64 %loop.next2176, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  store ptr %cycle.prev.u2098, ptr %var._2072, align 8
  %arena.cur2177 = call ptr @dva_arena_current()
  %enum.alloc2178 = call ptr @dva_arena_alloc(ptr %arena.cur2177, i64 16)
  %tag.gep2179 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2178, i32 0, i32 0
  store i64 29, ptr %tag.gep2179, align 8
  %pay.gep2180 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2178, i32 0, i32 1
  %var.load2181 = load ptr, ptr %var.new_pairs, align 8
  %a.load2182 = load ptr, ptr %var.new_pairs, align 8
  %a.null2183 = icmp eq ptr %a.load2182, null
  br i1 %a.null2183, label %a.create2184, label %a.after2185

a.create2114:                                     ; preds = %loop.body.78
  %arena.cur2116 = call ptr @dva_arena_current()
  %a.create2117 = call ptr @dva_arena_alloc(ptr %arena.cur2116, i64 24)
  %arena.cur2118 = call ptr @dva_arena_current()
  %a.buf2119 = call ptr @dva_arena_alloc(ptr %arena.cur2118, i64 128)
  %a.len.gep2120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2117, i32 0, i32 0
  store i64 0, ptr %a.len.gep2120, align 8
  %a.data.gep2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2117, i32 0, i32 1
  store ptr %a.buf2119, ptr %a.data.gep2121, align 8
  %a.cap.gep2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2122, align 8
  store ptr %a.create2117, ptr %var.locals, align 8
  br label %a.after2115

a.after2115:                                      ; preds = %a.create2114, %loop.body.78
  %a.load22123 = load ptr, ptr %var.locals, align 8
  %call.res2124 = call ptr @"overloads::walk"(ptr %fld.load2109, ptr %var.load2110, ptr %a.load22123)
  %var.load2125 = load ptr, ptr %var.p2097, align 8
  %fld.gep2126 = getelementptr inbounds { ptr, ptr }, ptr %var.load2125, i32 0, i32 1
  %fld.load2127 = load ptr, ptr %fld.gep2126, align 8
  %var.load2128 = load ptr, ptr %var.table, align 8
  %var.load2129 = load ptr, ptr %var.locals, align 8
  %a.load2130 = load ptr, ptr %var.locals, align 8
  %a.null2131 = icmp eq ptr %a.load2130, null
  br i1 %a.null2131, label %a.create2132, label %a.after2133

a.create2132:                                     ; preds = %a.after2115
  %arena.cur2134 = call ptr @dva_arena_current()
  %a.create2135 = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 24)
  %arena.cur2136 = call ptr @dva_arena_current()
  %a.buf2137 = call ptr @dva_arena_alloc(ptr %arena.cur2136, i64 128)
  %a.len.gep2138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2135, i32 0, i32 0
  store i64 0, ptr %a.len.gep2138, align 8
  %a.data.gep2139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2135, i32 0, i32 1
  store ptr %a.buf2137, ptr %a.data.gep2139, align 8
  %a.cap.gep2140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2135, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2140, align 8
  store ptr %a.create2135, ptr %var.locals, align 8
  br label %a.after2133

a.after2133:                                      ; preds = %a.create2132, %a.after2115
  %a.load22141 = load ptr, ptr %var.locals, align 8
  %call.res2142 = call ptr @"overloads::walk"(ptr %fld.load2127, ptr %var.load2128, ptr %a.load22141)
  %arena.cur2143 = call ptr @dva_arena_current()
  %rec.alloc2144 = call ptr @dva_arena_alloc(ptr %arena.cur2143, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld2145 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2144, i32 0, i32 0
  store ptr %call.res2124, ptr %rec.fld2145, align 8
  %rec.fld2146 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc2144, i32 0, i32 1
  store ptr %call.res2142, ptr %rec.fld2146, align 8
  %a.load2147 = load ptr, ptr %var.new_pairs, align 8
  %a.null2148 = icmp eq ptr %a.load2147, null
  br i1 %a.null2148, label %a.create2149, label %a.after2150

a.create2149:                                     ; preds = %a.after2133
  %arena.cur2151 = call ptr @dva_arena_current()
  %a.create2152 = call ptr @dva_arena_alloc(ptr %arena.cur2151, i64 24)
  %arena.cur2153 = call ptr @dva_arena_current()
  %a.buf2154 = call ptr @dva_arena_alloc(ptr %arena.cur2153, i64 128)
  %a.len.gep2155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2152, i32 0, i32 0
  store i64 0, ptr %a.len.gep2155, align 8
  %a.data.gep2156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2152, i32 0, i32 1
  store ptr %a.buf2154, ptr %a.data.gep2156, align 8
  %a.cap.gep2157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2152, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2157, align 8
  store ptr %a.create2152, ptr %var.new_pairs, align 8
  br label %a.after2150

a.after2150:                                      ; preds = %a.create2149, %a.after2133
  %a.load22158 = load ptr, ptr %var.new_pairs, align 8
  br label %a.check2159

a.check2159:                                      ; preds = %a.after2150
  %a.len2162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22158, i32 0, i32 0
  %a.len2163 = load i64, ptr %a.len2162, align 8
  %a.cap2164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22158, i32 0, i32 2
  %a.cap2165 = load i64, ptr %a.cap2164, align 8
  %a.needs.grow2166 = icmp eq i64 %a.len2163, %a.cap2165
  br i1 %a.needs.grow2166, label %a.grow2160, label %a.store2161

a.grow2160:                                       ; preds = %a.check2159
  call void @dva_array_grow(ptr %a.load22158)
  br label %a.store2161

a.store2161:                                      ; preds = %a.grow2160, %a.check2159
  %a.cur.data2167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22158, i32 0, i32 1
  %a.cur.data2168 = load ptr, ptr %a.cur.data2167, align 8
  %a.cur.len2169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22158, i32 0, i32 0
  %a.cur.len2170 = load i64, ptr %a.cur.len2169, align 8
  %a.elem.gep2171 = getelementptr i64, ptr %a.cur.data2168, i64 %a.cur.len2170
  %slot.p2i2172 = ptrtoint ptr %rec.alloc2144 to i64
  store i64 %slot.p2i2172, ptr %a.elem.gep2171, align 8
  %a.next.len2173 = add i64 %a.cur.len2170, 1
  %b.len.gep2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22158, i32 0, i32 0
  store i64 %a.next.len2173, ptr %b.len.gep2174, align 8
  br label %loop.latch.78

a.create2184:                                     ; preds = %loop.exit.78
  %arena.cur2186 = call ptr @dva_arena_current()
  %a.create2187 = call ptr @dva_arena_alloc(ptr %arena.cur2186, i64 24)
  %arena.cur2188 = call ptr @dva_arena_current()
  %a.buf2189 = call ptr @dva_arena_alloc(ptr %arena.cur2188, i64 128)
  %a.len.gep2190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2187, i32 0, i32 0
  store i64 0, ptr %a.len.gep2190, align 8
  %a.data.gep2191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2187, i32 0, i32 1
  store ptr %a.buf2189, ptr %a.data.gep2191, align 8
  %a.cap.gep2192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2187, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2192, align 8
  store ptr %a.create2187, ptr %var.new_pairs, align 8
  br label %a.after2185

a.after2185:                                      ; preds = %a.create2184, %loop.exit.78
  %a.load22193 = load ptr, ptr %var.new_pairs, align 8
  store ptr %a.load22193, ptr %pay.gep2180, align 8
  br label %choice.exit

choice.case2194:                                  ; preds = %choice.next2066
  %pay.gep2199 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2200 = load ptr, ptr %pay.gep2199, align 8
  store ptr %payload.ptr2200, ptr %var._2201, align 8
  store ptr %payload.ptr2200, ptr %var.ct, align 8
  %var.load2202 = load ptr, ptr %var.ct, align 8
  %var.load2203 = load ptr, ptr %var.table, align 8
  %var.load2204 = load ptr, ptr %var.locals, align 8
  %a.load2205 = load ptr, ptr %var.locals, align 8
  %a.null2206 = icmp eq ptr %a.load2205, null
  br i1 %a.null2206, label %a.create2207, label %a.after2208

choice.next2195:                                  ; preds = %choice.next2066
  %tag.gep2225 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2226 = load i64, ptr %tag.gep2225, align 8
  %tag.match2227 = icmp eq i64 %tag.id2226, 25
  br i1 %tag.match2227, label %choice.case2223, label %choice.next2224

a.create2207:                                     ; preds = %choice.case2194
  %arena.cur2209 = call ptr @dva_arena_current()
  %a.create2210 = call ptr @dva_arena_alloc(ptr %arena.cur2209, i64 24)
  %arena.cur2211 = call ptr @dva_arena_current()
  %a.buf2212 = call ptr @dva_arena_alloc(ptr %arena.cur2211, i64 128)
  %a.len.gep2213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 0
  store i64 0, ptr %a.len.gep2213, align 8
  %a.data.gep2214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 1
  store ptr %a.buf2212, ptr %a.data.gep2214, align 8
  %a.cap.gep2215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2215, align 8
  store ptr %a.create2210, ptr %var.locals, align 8
  br label %a.after2208

a.after2208:                                      ; preds = %a.create2207, %choice.case2194
  %a.load22216 = load ptr, ptr %var.locals, align 8
  %call.res2217 = call ptr @"overloads::walk"(ptr %var.load2202, ptr %var.load2203, ptr %a.load22216)
  store ptr %call.res2217, ptr %var.new_ce, align 8
  %arena.cur2218 = call ptr @dva_arena_current()
  %enum.alloc2219 = call ptr @dva_arena_alloc(ptr %arena.cur2218, i64 16)
  %tag.gep2220 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2219, i32 0, i32 0
  store i64 30, ptr %tag.gep2220, align 8
  %pay.gep2221 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2219, i32 0, i32 1
  %var.load2222 = load ptr, ptr %var.new_ce, align 8
  store ptr %var.load2222, ptr %pay.gep2221, align 8
  br label %choice.exit

choice.case2223:                                  ; preds = %choice.next2195
  %pay.gep2228 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2229 = load ptr, ptr %pay.gep2228, align 8
  store ptr %payload.ptr2229, ptr %var._2230, align 8
  store ptr %payload.ptr2229, ptr %var.cp2231, align 8
  %arena.cur2232 = call ptr @dva_arena_current()
  %enum.alloc2233 = call ptr @dva_arena_alloc(ptr %arena.cur2232, i64 16)
  %tag.gep2234 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2233, i32 0, i32 0
  store i64 25, ptr %tag.gep2234, align 8
  %pay.gep2235 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2233, i32 0, i32 1
  %var.load2236 = load ptr, ptr %var.cp2231, align 8
  %var.load2237 = load ptr, ptr %var.table, align 8
  %var.load2238 = load ptr, ptr %var.locals, align 8
  %a.load2239 = load ptr, ptr %var.locals, align 8
  %a.null2240 = icmp eq ptr %a.load2239, null
  br i1 %a.null2240, label %a.create2241, label %a.after2242

choice.next2224:                                  ; preds = %choice.next2195
  %tag.gep2254 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2255 = load i64, ptr %tag.gep2254, align 8
  %tag.match2256 = icmp eq i64 %tag.id2255, 27
  br i1 %tag.match2256, label %choice.case2252, label %choice.next2253

a.create2241:                                     ; preds = %choice.case2223
  %arena.cur2243 = call ptr @dva_arena_current()
  %a.create2244 = call ptr @dva_arena_alloc(ptr %arena.cur2243, i64 24)
  %arena.cur2245 = call ptr @dva_arena_current()
  %a.buf2246 = call ptr @dva_arena_alloc(ptr %arena.cur2245, i64 128)
  %a.len.gep2247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2244, i32 0, i32 0
  store i64 0, ptr %a.len.gep2247, align 8
  %a.data.gep2248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2244, i32 0, i32 1
  store ptr %a.buf2246, ptr %a.data.gep2248, align 8
  %a.cap.gep2249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2244, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2249, align 8
  store ptr %a.create2244, ptr %var.locals, align 8
  br label %a.after2242

a.after2242:                                      ; preds = %a.create2241, %choice.case2223
  %a.load22250 = load ptr, ptr %var.locals, align 8
  %call.res2251 = call ptr @"overloads::walk"(ptr %var.load2236, ptr %var.load2237, ptr %a.load22250)
  store ptr %call.res2251, ptr %pay.gep2235, align 8
  br label %choice.exit

choice.case2252:                                  ; preds = %choice.next2224
  %pay.gep2257 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2258 = load ptr, ptr %pay.gep2257, align 8
  store ptr %payload.ptr2258, ptr %var._2259, align 8
  store ptr %payload.ptr2258, ptr %var.bc, align 8
  %arena.cur2260 = call ptr @dva_arena_current()
  %enum.alloc2261 = call ptr @dva_arena_alloc(ptr %arena.cur2260, i64 16)
  %tag.gep2262 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2261, i32 0, i32 0
  store i64 27, ptr %tag.gep2262, align 8
  %pay.gep2263 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2261, i32 0, i32 1
  %var.load2264 = load ptr, ptr %var.bc, align 8
  %var.load2265 = load ptr, ptr %var.table, align 8
  %var.load2266 = load ptr, ptr %var.locals, align 8
  %a.load2267 = load ptr, ptr %var.locals, align 8
  %a.null2268 = icmp eq ptr %a.load2267, null
  br i1 %a.null2268, label %a.create2269, label %a.after2270

choice.next2253:                                  ; preds = %choice.next2224
  %var.load2280 = load ptr, ptr %var.e, align 8
  br label %choice.exit

a.create2269:                                     ; preds = %choice.case2252
  %arena.cur2271 = call ptr @dva_arena_current()
  %a.create2272 = call ptr @dva_arena_alloc(ptr %arena.cur2271, i64 24)
  %arena.cur2273 = call ptr @dva_arena_current()
  %a.buf2274 = call ptr @dva_arena_alloc(ptr %arena.cur2273, i64 128)
  %a.len.gep2275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2272, i32 0, i32 0
  store i64 0, ptr %a.len.gep2275, align 8
  %a.data.gep2276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2272, i32 0, i32 1
  store ptr %a.buf2274, ptr %a.data.gep2276, align 8
  %a.cap.gep2277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2272, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2277, align 8
  store ptr %a.create2272, ptr %var.locals, align 8
  br label %a.after2270

a.after2270:                                      ; preds = %a.create2269, %choice.case2252
  %a.load22278 = load ptr, ptr %var.locals, align 8
  %call.res2279 = call ptr @"overloads::walk"(ptr %var.load2264, ptr %var.load2265, ptr %a.load22278)
  store ptr %call.res2279, ptr %pay.gep2263, align 8
  br label %choice.exit
}

define ptr @"overloads::walk_call"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.target = alloca ptr, align 8
  %var.arg_ti = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._62 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.a = alloca ptr, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %var.args = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.target_name = alloca ptr, align 8
  %var.family = alloca i1, align 1
  %var.original = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  store ptr %0, ptr %var.c, align 8
  store ptr %1, ptr %var.ctx, align 8
  store ptr %2, ptr %var.locals, align 8
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
  %var.load18 = load ptr, ptr %var.ctx, align 8
  %var.load19 = load ptr, ptr %var.original, align 8
  %call.res20 = call i1 @"overloads::is_family"(ptr %var.load18, ptr %var.load19)
  br i1 %call.res20, label %and.65.then, label %and.65.else

and.65.then:                                      ; preds = %choice.exit
  %var.load21 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.65.else:                                      ; preds = %choice.exit
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %a.after
  %and.65.phi = phi i1 [ %nottmp, %a.after ], [ %call.res20, %and.65.else ]
  store i1 %and.65.phi, ptr %var.family, align 1
  %var.load27 = load i1, ptr %var.family, align 1
  br i1 %var.load27, label %choice.then28, label %choice.else29

a.create:                                         ; preds = %and.65.then
  %arena.cur22 = call ptr @dva_arena_current()
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create23, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.65.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load25 = load ptr, ptr %var.original, align 8
  %call.res26 = call i1 @"overloads::contains"(ptr %a.load2, ptr %var.load25)
  %nottmp = xor i1 %call.res26, true
  br label %and.65.exit

choice.then28:                                    ; preds = %and.65.exit
  %var.load31 = load ptr, ptr %var.original, align 8
  %var.load32 = load ptr, ptr %var.c, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load34, i32 0, i32 0
  %a.len.query35 = load i64, ptr %a.len.query, align 8
  %call.res36 = call ptr @"overloads::symbol"(ptr %var.load31, i64 %a.len.query35)
  br label %choice.exit30

choice.else29:                                    ; preds = %and.65.exit
  %var.load37 = load ptr, ptr %var.c, align 8
  %fld.gep38 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load37, i32 0, i32 0
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  br label %choice.exit30

choice.exit30:                                    ; preds = %choice.else29, %choice.then28
  %choice.res40 = phi ptr [ %call.res36, %choice.then28 ], [ %fld.load39, %choice.else29 ]
  store ptr %choice.res40, ptr %var.target_name, align 8
  %var.load41 = load ptr, ptr %var.ctx, align 8
  %var.load42 = load ptr, ptr %var.original, align 8
  %var.load43 = load ptr, ptr %var.c, align 8
  %fld.gep44 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load ptr, ptr %fld.gep44, align 8
  %a.len.query46 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load45, i32 0, i32 0
  %a.len.query47 = load i64, ptr %a.len.query46, align 8
  %call.res48 = call ptr @"overloads::signature"(ptr %var.load41, ptr %var.load42, i64 %a.len.query47)
  store ptr %call.res48, ptr %var.expected, align 8
  %arena.cur49 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 24)
  %arena.cur50 = call ptr @dva_arena_current()
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.new, ptr %var.args, align 8
  %var.load55 = load ptr, ptr %var.c, align 8
  %fld.gep56 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load55, i32 0, i32 2
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load57, i32 0, i32 0
  %arr.cycle.len58 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load57, i32 0, i32 1
  %arr.cycle.data59 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.66, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.66

loop.header.66:                                   ; preds = %loop.latch.66, %choice.exit30
  %counter.load = load i64, ptr %loop.idx.66, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len58
  br i1 %loop.cond, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.66, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data59, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.a, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load60 = load ptr, ptr %var.expected, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

loop.exit.nat.66:                                 ; preds = %loop.header.66
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load167 = load i1, ptr %var.family, align 1
  br i1 %var.load167, label %choice.then168, label %choice.else169

choice.exit61:                                    ; preds = %choice.next, %choice.exit71
  %choice.res118 = phi ptr [ %choice.res116, %choice.exit71 ], [ %call.res117, %choice.next ]
  store ptr %choice.res118, ptr %var.arg_ti, align 8
  %var.load119 = load ptr, ptr %var.a, align 8
  %var.load120 = load ptr, ptr %var.ctx, align 8
  %var.load121 = load ptr, ptr %var.locals, align 8
  %a.load122 = load ptr, ptr %var.locals, align 8
  %a.null123 = icmp eq ptr %a.load122, null
  br i1 %a.null123, label %a.create124, label %a.after125

choice.case:                                      ; preds = %loop.body.66
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._62, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load63 = load i64, ptr %var.i, align 8
  %var.load64 = load ptr, ptr %var.f, align 8
  %fld.gep65 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load64, i32 0, i32 1
  %fld.load66 = load ptr, ptr %fld.gep65, align 8
  %a.len.query67 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load66, i32 0, i32 0
  %a.len.query68 = load i64, ptr %a.len.query67, align 8
  %cmptmp = icmp slt i64 %var.load63, %a.len.query68
  br i1 %cmptmp, label %choice.then69, label %choice.else70

choice.next:                                      ; preds = %loop.body.66
  %call.res117 = call ptr @"overloads::unknown"()
  br label %choice.exit61

choice.then69:                                    ; preds = %choice.case
  %var.load72 = load ptr, ptr %var.f, align 8
  %fld.gep73 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load72, i32 0, i32 1
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %var.load75 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load74, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.else70:                                    ; preds = %choice.case
  %call.res115 = call ptr @"overloads::unknown"()
  br label %choice.exit71

choice.exit71:                                    ; preds = %choice.else70, %unwrap.pos.67
  %choice.res116 = phi ptr [ %pay.ptr, %unwrap.pos.67 ], [ %call.res115, %choice.else70 ]
  br label %choice.exit61

a.rd.check:                                       ; preds = %choice.then69
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load74, i32 0, i32 0
  %a.rd.len76 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load75, 0
  %a.rd.lt = icmp slt i64 %var.load75, %a.rd.len76
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load74, i32 0, i32 1
  %a.rd.data77 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data77, i64 %var.load75
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then69
  %arena.cur78 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.4.struct, ptr %err.file.gep, align 8
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
  %arena.cur79 = call ptr @dva_arena_current()
  %err.alloc80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 56)
  %err.code.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 0
  store i64 4011, ptr %err.code.gep81, align 8
  %err.msg.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep82, align 8
  %err.file.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 2
  store ptr @str.4.struct, ptr %err.file.gep83, align 8
  %err.line.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 3
  store i64 0, ptr %err.line.gep84, align 8
  %err.col.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 4
  store i64 0, ptr %err.col.gep85, align 8
  %err.ctx.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 5
  %err.ctx0.gep87 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep86, i32 0, i32 0
  store i64 %var.load75, ptr %err.ctx0.gep87, align 8
  %err.ctx1.gep88 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep86, i32 0, i32 1
  store i64 %a.rd.len76, ptr %err.ctx1.gep88, align 8
  %err.p2i89 = ptrtoint ptr %err.alloc80 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i89, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.67, label %unwrap.abort.67

unwrap.pos.67:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  br label %choice.exit71

unwrap.abort.67:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep90, align 8
  %err.msg.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep91, align 8
  %err.file.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep92, align 8
  %err.line.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep93, align 8
  %err.col.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep94, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len95 = load i64, ptr %err.msg.len, align 8
  %err.msg.len96 = and i64 %err.msg.len95, 281474976710655
  %str.tag97 = lshr i64 %err.msg.len95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

str_gen_check99:                                  ; preds = %unwrap.abort.67
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %unwrap.abort.67
  %err.msg.len32 = trunc i64 %err.msg.len96 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data104 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len105 = load i64, ptr %err.file.len, align 8
  %err.file.len106 = and i64 %err.file.len105, 281474976710655
  %str.tag107 = lshr i64 %err.file.len105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_stale101:                                     ; preds = %str_gen_check99
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

str_gen_check109:                                 ; preds = %str_ok100
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %str_ok100
  %err.file.len32 = trunc i64 %err.file.len106 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data114 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale111:                                     ; preds = %str_gen_check109
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

err.thread:                                       ; preds = %str_ok110
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok110
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data104, i32 %err.file.len32, ptr %err.file.data114, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create124:                                      ; preds = %choice.exit61
  %arena.cur126 = call ptr @dva_arena_current()
  %a.create127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 24)
  %arena.cur128 = call ptr @dva_arena_current()
  %a.buf129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 128)
  %a.len.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 0
  store i64 0, ptr %a.len.gep130, align 8
  %a.data.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 1
  store ptr %a.buf129, ptr %a.data.gep131, align 8
  %a.cap.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 2
  store i64 16, ptr %a.cap.gep132, align 8
  store ptr %a.create127, ptr %var.locals, align 8
  br label %a.after125

a.after125:                                       ; preds = %a.create124, %choice.exit61
  %a.load2133 = load ptr, ptr %var.locals, align 8
  %call.res134 = call ptr @"overloads::walk"(ptr %var.load119, ptr %var.load120, ptr %a.load2133)
  %var.load135 = load ptr, ptr %var.arg_ti, align 8
  %var.load136 = load ptr, ptr %var.ctx, align 8
  %var.load137 = load ptr, ptr %var.locals, align 8
  %a.load138 = load ptr, ptr %var.locals, align 8
  %a.null139 = icmp eq ptr %a.load138, null
  br i1 %a.null139, label %a.create140, label %a.after141

a.create140:                                      ; preds = %a.after125
  %arena.cur142 = call ptr @dva_arena_current()
  %a.create143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 24)
  %arena.cur144 = call ptr @dva_arena_current()
  %a.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 128)
  %a.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 0
  store i64 0, ptr %a.len.gep146, align 8
  %a.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 1
  store ptr %a.buf145, ptr %a.data.gep147, align 8
  %a.cap.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep148, align 8
  store ptr %a.create143, ptr %var.locals, align 8
  br label %a.after141

a.after141:                                       ; preds = %a.create140, %a.after125
  %a.load2149 = load ptr, ptr %var.locals, align 8
  %call.res150 = call ptr @"overloads::select_value"(ptr %call.res134, ptr %var.load135, ptr %var.load136, ptr %a.load2149)
  %a.load151 = load ptr, ptr %var.args, align 8
  %a.null152 = icmp eq ptr %a.load151, null
  br i1 %a.null152, label %a.create153, label %a.after154

a.create153:                                      ; preds = %a.after141
  %arena.cur155 = call ptr @dva_arena_current()
  %a.create156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 24)
  %arena.cur157 = call ptr @dva_arena_current()
  %a.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 128)
  %a.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 0
  store i64 0, ptr %a.len.gep159, align 8
  %a.data.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 1
  store ptr %a.buf158, ptr %a.data.gep160, align 8
  %a.cap.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep161, align 8
  store ptr %a.create156, ptr %var.args, align 8
  br label %a.after154

a.after154:                                       ; preds = %a.create153, %a.after141
  %a.load2162 = load ptr, ptr %var.args, align 8
  br label %a.check

a.check:                                          ; preds = %a.after154
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2162, i32 0, i32 0
  %a.len163 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2162, i32 0, i32 2
  %a.cap164 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len163, %a.cap164
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2162)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2162, i32 0, i32 1
  %a.cur.data165 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2162, i32 0, i32 0
  %a.cur.len166 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data165, i64 %a.cur.len166
  %slot.p2i = ptrtoint ptr %call.res150 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len166, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2162, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.66

choice.then168:                                   ; preds = %loop.exit.66
  %arena.cur171 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 16)
  %tag.gep172 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep172, align 8
  %pay.gep173 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load174 = load ptr, ptr %var.target_name, align 8
  store ptr %var.load174, ptr %pay.gep173, align 8
  br label %choice.exit170

choice.else169:                                   ; preds = %loop.exit.66
  %var.load175 = load ptr, ptr %var.c, align 8
  %fld.gep176 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load175, i32 0, i32 1
  %fld.load177 = load ptr, ptr %fld.gep176, align 8
  %var.load178 = load ptr, ptr %var.ctx, align 8
  %var.load179 = load ptr, ptr %var.locals, align 8
  %a.load180 = load ptr, ptr %var.locals, align 8
  %a.null181 = icmp eq ptr %a.load180, null
  br i1 %a.null181, label %a.create182, label %a.after183

choice.exit170:                                   ; preds = %a.after183, %choice.then168
  %choice.res193 = phi ptr [ %enum.alloc, %choice.then168 ], [ %call.res192, %a.after183 ]
  store ptr %choice.res193, ptr %var.target, align 8
  %var.load194 = load ptr, ptr %var.target_name, align 8
  %var.load195 = load ptr, ptr %var.target, align 8
  %var.load196 = load ptr, ptr %var.args, align 8
  %a.load197 = load ptr, ptr %var.args, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

a.create182:                                      ; preds = %choice.else169
  %arena.cur184 = call ptr @dva_arena_current()
  %a.create185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 24)
  %arena.cur186 = call ptr @dva_arena_current()
  %a.buf187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 128)
  %a.len.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create185, i32 0, i32 0
  store i64 0, ptr %a.len.gep188, align 8
  %a.data.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create185, i32 0, i32 1
  store ptr %a.buf187, ptr %a.data.gep189, align 8
  %a.cap.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create185, i32 0, i32 2
  store i64 16, ptr %a.cap.gep190, align 8
  store ptr %a.create185, ptr %var.locals, align 8
  br label %a.after183

a.after183:                                       ; preds = %a.create182, %choice.else169
  %a.load2191 = load ptr, ptr %var.locals, align 8
  %call.res192 = call ptr @"overloads::walk"(ptr %fld.load177, ptr %var.load178, ptr %a.load2191)
  br label %choice.exit170

a.create199:                                      ; preds = %choice.exit170
  %arena.cur201 = call ptr @dva_arena_current()
  %a.create202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 24)
  %arena.cur203 = call ptr @dva_arena_current()
  %a.buf204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 128)
  %a.len.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 0
  store i64 0, ptr %a.len.gep205, align 8
  %a.data.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 1
  store ptr %a.buf204, ptr %a.data.gep206, align 8
  %a.cap.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep207, align 8
  store ptr %a.create202, ptr %var.args, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %choice.exit170
  %a.load2208 = load ptr, ptr %var.args, align 8
  %var.load209 = load ptr, ptr %var.c, align 8
  %fld.gep210 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load209, i32 0, i32 3
  %fld.load211 = load i64, ptr %fld.gep210, align 8
  %var.load212 = load ptr, ptr %var.c, align 8
  %fld.gep213 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load212, i32 0, i32 4
  %fld.load214 = load i64, ptr %fld.gep213, align 8
  %arena.cur215 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load194, ptr %rec.fld, align 8
  %rec.fld216 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load195, ptr %rec.fld216, align 8
  %rec.fld217 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2208, ptr %rec.fld217, align 8
  %rec.fld218 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load211, ptr %rec.fld218, align 8
  %rec.fld219 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load214, ptr %rec.fld219, align 8
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
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
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
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after21
  %counter.load = load i64, ptr %loop.idx.79, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len30
  br i1 %loop.cond, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.79, align 8
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

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.79, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %var.load104 = load ptr, ptr %var.defs, align 8
  %a.load105 = load ptr, ptr %var.defs, align 8
  %a.null106 = icmp eq ptr %a.load105, null
  br i1 %a.null106, label %a.create107, label %a.after108

choice.exit34:                                    ; preds = %choice.next36, %choice.exit77
  br label %loop.latch.79

choice.case35:                                    ; preds = %loop.body.79
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

choice.next36:                                    ; preds = %loop.body.79
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
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load53, i32 0, i32 0
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

a.create107:                                      ; preds = %loop.exit.79
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

a.after108:                                       ; preds = %a.create107, %loop.exit.79
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
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after132
  %counter.load145 = load i64, ptr %loop.idx.80, align 8
  %loop.cond146 = icmp slt i64 %counter.load145, %arr.cycle.len142
  br i1 %loop.cond146, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i147 = sub i64 %counter.load145, 0
  store i64 1, ptr %loop.step.80, align 8
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
  br i1 %call.res, label %and.81.then, label %and.81.else

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %choice.exit165
  %step.val187 = load i64, ptr %loop.step.80, align 8
  %loop.next188 = add i64 %counter.load145, %step.val187
  store i64 %loop.next188, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  %var.load189 = load ptr, ptr %var.ctx, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr }, ptr %var.load189, i32 0, i32 1
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %a.len.query192 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %a.len.query193 = load i64, ptr %a.len.query192, align 8
  %cmptmp194 = icmp sgt i64 %a.len.query193, 0
  br i1 %cmptmp194, label %choice.then195, label %choice.else

and.81.then:                                      ; preds = %loop.body.80
  %var.load157 = load ptr, ptr %var.ctx, align 8
  %fld.gep158 = getelementptr inbounds { ptr, ptr }, ptr %var.load157, i32 0, i32 1
  %fld.load159 = load ptr, ptr %fld.gep158, align 8
  %var.load160 = load ptr, ptr %var.d, align 8
  %fld.gep161 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load160, i32 0, i32 0
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %call.res163 = call i1 @"overloads::contains"(ptr %fld.load159, ptr %fld.load162)
  %nottmp = xor i1 %call.res163, true
  br label %and.81.exit

and.81.else:                                      ; preds = %loop.body.80
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %and.81.then
  %and.81.phi = phi i1 [ %nottmp, %and.81.then ], [ %call.res, %and.81.else ]
  br i1 %and.81.phi, label %choice.then164, label %choice.exit165

choice.then164:                                   ; preds = %and.81.exit
  %var.load166 = load ptr, ptr %var.ctx, align 8
  %var.load167 = load ptr, ptr %var.d, align 8
  %fld.gep168 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load167, i32 0, i32 0
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %fld.gep170 = getelementptr inbounds { ptr, ptr }, ptr %var.load166, i32 0, i32 1
  %a.fld.load = load ptr, ptr %fld.gep170, align 8
  br label %a.check171

choice.exit165:                                   ; preds = %a.store173, %and.81.exit
  br label %loop.latch.80

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

choice.then195:                                   ; preds = %loop.exit.80
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
  %call.res206 = call ptr @"overloads::walk"(ptr %var.load197, ptr %var.load198, ptr %a.new200)
  br label %choice.exit196

choice.else:                                      ; preds = %loop.exit.80
  %var.load207 = load ptr, ptr %var.program, align 8
  br label %choice.exit196

choice.exit196:                                   ; preds = %choice.else, %choice.then195
  %choice.res208 = phi ptr [ %call.res206, %choice.then195 ], [ %var.load207, %choice.else ]
  ret ptr %choice.res208
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
