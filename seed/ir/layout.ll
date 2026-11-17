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
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
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
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.layout::target_triple" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"layout::set_target_triple", ptr null }
@"var.layout::set_target_triple" = global ptr null
@str.1 = internal unnamed_addr constant [7 x i8] c"wasm32\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.1 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.2 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"x86\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [6 x i8] c"armv7\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.4 }
@str.5 = internal unnamed_addr constant [6 x i8] c"armv6\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"thumb\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [8 x i8] c"riscv32\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@str.8 = internal unnamed_addr constant [4 x i8] c"arm\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.8 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_triple", ptr null }
@"var.layout::is_32bit_triple" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_target", ptr null }
@"var.layout::is_32bit_target" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"layout::align_up", ptr null }
@"var.layout::align_up" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"layout::compute_prim_layout", ptr null }
@"var.layout::compute_prim_layout" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"layout::is_niche_utype", ptr null }
@"var.layout::is_niche_utype" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"layout::classify_ram_layout", ptr null }
@"var.layout::classify_ram_layout" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"layout::compute_layout", ptr null }
@"var.layout::compute_layout" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_layout, ptr null }]

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

define internal void @__dva_global_init_layout() #0 {
entry:
  store ptr @str.0.struct, ptr @"var.layout::target_triple", align 8
  store ptr @clo.const, ptr @"var.layout::set_target_triple", align 8
  store ptr @clo.const.1, ptr @"var.layout::is_32bit_triple", align 8
  store ptr @clo.const.2, ptr @"var.layout::is_32bit_target", align 8
  store ptr @clo.const.3, ptr @"var.layout::align_up", align 8
  store ptr @clo.const.4, ptr @"var.layout::compute_prim_layout", align 8
  store ptr @clo.const.5, ptr @"var.layout::is_niche_utype", align 8
  store ptr @clo.const.6, ptr @"var.layout::classify_ram_layout", align 8
  store ptr @clo.const.7, ptr @"var.layout::compute_layout", align 8
  ret void
}

define void @"layout::set_target_triple"(ptr %0) #0 {
entry:
  %var.t = alloca ptr, align 8
  store ptr %0, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.t, align 8
  store ptr %var.load, ptr @"var.layout::target_triple", align 8
  ret void
}

define i1 @"layout::is_32bit_triple"(ptr %0) #0 {
entry:
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %call.res = call { i64, ptr } @"ast::triple_arch"(ptr %var.load)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %str.eq.merge186
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge186
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur3 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur3, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len6 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len6, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.lhs.len7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  br i1 %tag.immortal11, label %str_ok10, label %tag.gen_check12

str_ok10:                                         ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %str.eq.merge
  %eq.rhs.len20 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len21 = and i64 %eq.rhs.len20, 281474976710655
  %eq.len22 = icmp eq i64 %eq.lhs.len8, %eq.rhs.len21
  br i1 %eq.len22, label %str.eq.then23, label %str.eq.else24

tag.gen_check12:                                  ; preds = %str.eq.merge
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %str.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %str_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag9)
  br i1 %tag.valid18, label %str_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %str_ok10

str.eq.then23:                                    ; preds = %str_ok10
  %eq.lhs.data26 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data27 = load ptr, ptr %eq.lhs.data26, align 8
  %eq.rhs.data28 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp29 = call i32 @memcmp(ptr %eq.lhs.data27, ptr %eq.rhs.data28, i64 %eq.lhs.len8)
  %eq.cmp.zero30 = icmp eq i32 %eq.memcmp29, 0
  br label %str.eq.merge25

str.eq.else24:                                    ; preds = %str_ok10
  br label %str.eq.merge25

str.eq.merge25:                                   ; preds = %str.eq.else24, %str.eq.then23
  %str.eq.result31 = phi i1 [ %eq.cmp.zero30, %str.eq.then23 ], [ false, %str.eq.else24 ]
  %case.or = or i1 %str.eq.result, %str.eq.result31
  %eq.lhs.len32 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len33 = load i64, ptr %eq.lhs.len32, align 8
  %eq.lhs.len34 = and i64 %eq.lhs.len33, 281474976710655
  %str.tag35 = lshr i64 %eq.lhs.len33, 48
  %tag.immortal37 = icmp eq i64 %str.tag35, 0
  br i1 %tag.immortal37, label %str_ok36, label %tag.gen_check38

str_ok36:                                         ; preds = %abort.dead45, %tag.slow_check39, %tag.gen_check38, %str.eq.merge25
  %eq.rhs.len46 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len47 = and i64 %eq.rhs.len46, 281474976710655
  %eq.len48 = icmp eq i64 %eq.lhs.len34, %eq.rhs.len47
  br i1 %eq.len48, label %str.eq.then49, label %str.eq.else50

tag.gen_check38:                                  ; preds = %str.eq.merge25
  %active.gen41 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok42 = icmp eq i64 %str.tag35, %active.gen41
  br i1 %tag.fast.ok42, label %str_ok36, label %tag.slow_check39

tag.slow_check39:                                 ; preds = %tag.gen_check38
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag35)
  br i1 %tag.valid44, label %str_ok36, label %tag.stale40

tag.stale40:                                      ; preds = %tag.slow_check39
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %str_ok36

str.eq.then49:                                    ; preds = %str_ok36
  %eq.lhs.data52 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data53 = load ptr, ptr %eq.lhs.data52, align 8
  %eq.rhs.data54 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp55 = call i32 @memcmp(ptr %eq.lhs.data53, ptr %eq.rhs.data54, i64 %eq.lhs.len34)
  %eq.cmp.zero56 = icmp eq i32 %eq.memcmp55, 0
  br label %str.eq.merge51

str.eq.else50:                                    ; preds = %str_ok36
  br label %str.eq.merge51

str.eq.merge51:                                   ; preds = %str.eq.else50, %str.eq.then49
  %str.eq.result57 = phi i1 [ %eq.cmp.zero56, %str.eq.then49 ], [ false, %str.eq.else50 ]
  %case.or58 = or i1 %case.or, %str.eq.result57
  %eq.lhs.len59 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len59, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %str.tag62 = lshr i64 %eq.lhs.len60, 48
  %tag.immortal64 = icmp eq i64 %str.tag62, 0
  br i1 %tag.immortal64, label %str_ok63, label %tag.gen_check65

str_ok63:                                         ; preds = %abort.dead72, %tag.slow_check66, %tag.gen_check65, %str.eq.merge51
  %eq.rhs.len73 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len74 = and i64 %eq.rhs.len73, 281474976710655
  %eq.len75 = icmp eq i64 %eq.lhs.len61, %eq.rhs.len74
  br i1 %eq.len75, label %str.eq.then76, label %str.eq.else77

tag.gen_check65:                                  ; preds = %str.eq.merge51
  %active.gen68 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok69 = icmp eq i64 %str.tag62, %active.gen68
  br i1 %tag.fast.ok69, label %str_ok63, label %tag.slow_check66

tag.slow_check66:                                 ; preds = %tag.gen_check65
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag62)
  br i1 %tag.valid71, label %str_ok63, label %tag.stale67

tag.stale67:                                      ; preds = %tag.slow_check66
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %str_ok63

str.eq.then76:                                    ; preds = %str_ok63
  %eq.lhs.data79 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data80 = load ptr, ptr %eq.lhs.data79, align 8
  %eq.rhs.data81 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp82 = call i32 @memcmp(ptr %eq.lhs.data80, ptr %eq.rhs.data81, i64 %eq.lhs.len61)
  %eq.cmp.zero83 = icmp eq i32 %eq.memcmp82, 0
  br label %str.eq.merge78

str.eq.else77:                                    ; preds = %str_ok63
  br label %str.eq.merge78

str.eq.merge78:                                   ; preds = %str.eq.else77, %str.eq.then76
  %str.eq.result84 = phi i1 [ %eq.cmp.zero83, %str.eq.then76 ], [ false, %str.eq.else77 ]
  %case.or85 = or i1 %case.or58, %str.eq.result84
  %eq.lhs.len86 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len87 = load i64, ptr %eq.lhs.len86, align 8
  %eq.lhs.len88 = and i64 %eq.lhs.len87, 281474976710655
  %str.tag89 = lshr i64 %eq.lhs.len87, 48
  %tag.immortal91 = icmp eq i64 %str.tag89, 0
  br i1 %tag.immortal91, label %str_ok90, label %tag.gen_check92

str_ok90:                                         ; preds = %abort.dead99, %tag.slow_check93, %tag.gen_check92, %str.eq.merge78
  %eq.rhs.len100 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len101 = and i64 %eq.rhs.len100, 281474976710655
  %eq.len102 = icmp eq i64 %eq.lhs.len88, %eq.rhs.len101
  br i1 %eq.len102, label %str.eq.then103, label %str.eq.else104

tag.gen_check92:                                  ; preds = %str.eq.merge78
  %active.gen95 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok96 = icmp eq i64 %str.tag89, %active.gen95
  br i1 %tag.fast.ok96, label %str_ok90, label %tag.slow_check93

tag.slow_check93:                                 ; preds = %tag.gen_check92
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag89)
  br i1 %tag.valid98, label %str_ok90, label %tag.stale94

tag.stale94:                                      ; preds = %tag.slow_check93
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead99:                                     ; No predecessors!
  br label %str_ok90

str.eq.then103:                                   ; preds = %str_ok90
  %eq.lhs.data106 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data107 = load ptr, ptr %eq.lhs.data106, align 8
  %eq.rhs.data108 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp109 = call i32 @memcmp(ptr %eq.lhs.data107, ptr %eq.rhs.data108, i64 %eq.lhs.len88)
  %eq.cmp.zero110 = icmp eq i32 %eq.memcmp109, 0
  br label %str.eq.merge105

str.eq.else104:                                   ; preds = %str_ok90
  br label %str.eq.merge105

str.eq.merge105:                                  ; preds = %str.eq.else104, %str.eq.then103
  %str.eq.result111 = phi i1 [ %eq.cmp.zero110, %str.eq.then103 ], [ false, %str.eq.else104 ]
  %case.or112 = or i1 %case.or85, %str.eq.result111
  %eq.lhs.len113 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len114 = load i64, ptr %eq.lhs.len113, align 8
  %eq.lhs.len115 = and i64 %eq.lhs.len114, 281474976710655
  %str.tag116 = lshr i64 %eq.lhs.len114, 48
  %tag.immortal118 = icmp eq i64 %str.tag116, 0
  br i1 %tag.immortal118, label %str_ok117, label %tag.gen_check119

str_ok117:                                        ; preds = %abort.dead126, %tag.slow_check120, %tag.gen_check119, %str.eq.merge105
  %eq.rhs.len127 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len128 = and i64 %eq.rhs.len127, 281474976710655
  %eq.len129 = icmp eq i64 %eq.lhs.len115, %eq.rhs.len128
  br i1 %eq.len129, label %str.eq.then130, label %str.eq.else131

tag.gen_check119:                                 ; preds = %str.eq.merge105
  %active.gen122 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok123 = icmp eq i64 %str.tag116, %active.gen122
  br i1 %tag.fast.ok123, label %str_ok117, label %tag.slow_check120

tag.slow_check120:                                ; preds = %tag.gen_check119
  %arena.cur124 = call ptr @dva_arena_current()
  %tag.valid125 = call i1 @dva_arena_validate_tag(ptr %arena.cur124, i64 %str.tag116)
  br i1 %tag.valid125, label %str_ok117, label %tag.stale121

tag.stale121:                                     ; preds = %tag.slow_check120
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead126:                                    ; No predecessors!
  br label %str_ok117

str.eq.then130:                                   ; preds = %str_ok117
  %eq.lhs.data133 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data134 = load ptr, ptr %eq.lhs.data133, align 8
  %eq.rhs.data135 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp136 = call i32 @memcmp(ptr %eq.lhs.data134, ptr %eq.rhs.data135, i64 %eq.lhs.len115)
  %eq.cmp.zero137 = icmp eq i32 %eq.memcmp136, 0
  br label %str.eq.merge132

str.eq.else131:                                   ; preds = %str_ok117
  br label %str.eq.merge132

str.eq.merge132:                                  ; preds = %str.eq.else131, %str.eq.then130
  %str.eq.result138 = phi i1 [ %eq.cmp.zero137, %str.eq.then130 ], [ false, %str.eq.else131 ]
  %case.or139 = or i1 %case.or112, %str.eq.result138
  %eq.lhs.len140 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len141 = load i64, ptr %eq.lhs.len140, align 8
  %eq.lhs.len142 = and i64 %eq.lhs.len141, 281474976710655
  %str.tag143 = lshr i64 %eq.lhs.len141, 48
  %tag.immortal145 = icmp eq i64 %str.tag143, 0
  br i1 %tag.immortal145, label %str_ok144, label %tag.gen_check146

str_ok144:                                        ; preds = %abort.dead153, %tag.slow_check147, %tag.gen_check146, %str.eq.merge132
  %eq.rhs.len154 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len155 = and i64 %eq.rhs.len154, 281474976710655
  %eq.len156 = icmp eq i64 %eq.lhs.len142, %eq.rhs.len155
  br i1 %eq.len156, label %str.eq.then157, label %str.eq.else158

tag.gen_check146:                                 ; preds = %str.eq.merge132
  %active.gen149 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok150 = icmp eq i64 %str.tag143, %active.gen149
  br i1 %tag.fast.ok150, label %str_ok144, label %tag.slow_check147

tag.slow_check147:                                ; preds = %tag.gen_check146
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag143)
  br i1 %tag.valid152, label %str_ok144, label %tag.stale148

tag.stale148:                                     ; preds = %tag.slow_check147
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead153:                                    ; No predecessors!
  br label %str_ok144

str.eq.then157:                                   ; preds = %str_ok144
  %eq.lhs.data160 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data161 = load ptr, ptr %eq.lhs.data160, align 8
  %eq.rhs.data162 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp163 = call i32 @memcmp(ptr %eq.lhs.data161, ptr %eq.rhs.data162, i64 %eq.lhs.len142)
  %eq.cmp.zero164 = icmp eq i32 %eq.memcmp163, 0
  br label %str.eq.merge159

str.eq.else158:                                   ; preds = %str_ok144
  br label %str.eq.merge159

str.eq.merge159:                                  ; preds = %str.eq.else158, %str.eq.then157
  %str.eq.result165 = phi i1 [ %eq.cmp.zero164, %str.eq.then157 ], [ false, %str.eq.else158 ]
  %case.or166 = or i1 %case.or139, %str.eq.result165
  %eq.lhs.len167 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len168 = load i64, ptr %eq.lhs.len167, align 8
  %eq.lhs.len169 = and i64 %eq.lhs.len168, 281474976710655
  %str.tag170 = lshr i64 %eq.lhs.len168, 48
  %tag.immortal172 = icmp eq i64 %str.tag170, 0
  br i1 %tag.immortal172, label %str_ok171, label %tag.gen_check173

str_ok171:                                        ; preds = %abort.dead180, %tag.slow_check174, %tag.gen_check173, %str.eq.merge159
  %eq.rhs.len181 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len182 = and i64 %eq.rhs.len181, 281474976710655
  %eq.len183 = icmp eq i64 %eq.lhs.len169, %eq.rhs.len182
  br i1 %eq.len183, label %str.eq.then184, label %str.eq.else185

tag.gen_check173:                                 ; preds = %str.eq.merge159
  %active.gen176 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok177 = icmp eq i64 %str.tag170, %active.gen176
  br i1 %tag.fast.ok177, label %str_ok171, label %tag.slow_check174

tag.slow_check174:                                ; preds = %tag.gen_check173
  %arena.cur178 = call ptr @dva_arena_current()
  %tag.valid179 = call i1 @dva_arena_validate_tag(ptr %arena.cur178, i64 %str.tag170)
  br i1 %tag.valid179, label %str_ok171, label %tag.stale175

tag.stale175:                                     ; preds = %tag.slow_check174
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %str_ok171

str.eq.then184:                                   ; preds = %str_ok171
  %eq.lhs.data187 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data188 = load ptr, ptr %eq.lhs.data187, align 8
  %eq.rhs.data189 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp190 = call i32 @memcmp(ptr %eq.lhs.data188, ptr %eq.rhs.data189, i64 %eq.lhs.len169)
  %eq.cmp.zero191 = icmp eq i32 %eq.memcmp190, 0
  br label %str.eq.merge186

str.eq.else185:                                   ; preds = %str_ok171
  br label %str.eq.merge186

str.eq.merge186:                                  ; preds = %str.eq.else185, %str.eq.then184
  %str.eq.result192 = phi i1 [ %eq.cmp.zero191, %str.eq.then184 ], [ false, %str.eq.else185 ]
  %case.or193 = or i1 %case.or166, %str.eq.result192
  br i1 %case.or193, label %choice.case, label %choice.next
}

declare { i64, ptr } @"ast::triple_arch"(ptr) #0

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

declare i32 @memcmp(ptr, ptr, i64) #0

define i1 @"layout::is_32bit_target"() #0 {
entry:
  %var.load = load ptr, ptr @"var.layout::target_triple", align 8
  %call.res = call i1 @"layout::is_32bit_triple"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"layout::align_up"(i64 %0, i64 %1) #0 {
entry:
  %var.align = alloca i64, align 8
  %var.offset = alloca i64, align 8
  store i64 %0, ptr %var.offset, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.align, align 8
  %cmptmp = icmp sle i64 %var.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.offset, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.offset, align 8
  %var.load3 = load i64, ptr %var.align, align 8
  %addtmp = add i64 %var.load2, %var.load3
  %subtmp = sub i64 %addtmp, 1
  %var.load4 = load i64, ptr %var.align, align 8
  %div.is.zero = icmp eq i64 %var.load4, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

choice.exit:                                      ; preds = %div.ok, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ %multmp, %div.ok ]
  ret i64 %choice.res

div.not_zero:                                     ; preds = %abort.dead, %choice.else
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load4, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.else
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.not_zero

div.ok:                                           ; preds = %abort.dead5, %div.not_zero
  %divtmp = sdiv i64 %subtmp, %var.load4
  %var.load6 = load i64, ptr %var.align, align 8
  %multmp = mul i64 %divtmp, %var.load6
  br label %choice.exit

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead5:                                      ; No predecessors!
  br label %div.ok
}

define ptr @"layout::compute_prim_layout"(ptr %0) #0 {
entry:
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit6:                                     ; preds = %choice.next112, %choice.exit119, %choice.case102, %choice.case94, %choice.case88, %choice.case82, %choice.case76, %choice.case68, %choice.case62, %choice.case56, %choice.case50, %choice.case44, %choice.case38, %choice.case32, %choice.case26, %choice.case20, %choice.case14, %choice.case8, %choice.case
  %choice.res126 = phi ptr [ %call.res7, %choice.case ], [ %call.res13, %choice.case8 ], [ %call.res19, %choice.case14 ], [ %call.res25, %choice.case20 ], [ %call.res31, %choice.case26 ], [ %call.res37, %choice.case32 ], [ %call.res43, %choice.case38 ], [ %call.res49, %choice.case44 ], [ %call.res55, %choice.case50 ], [ %call.res61, %choice.case56 ], [ %call.res67, %choice.case62 ], [ %call.res75, %choice.case68 ], [ %call.res81, %choice.case76 ], [ %call.res87, %choice.case82 ], [ %call.res93, %choice.case88 ], [ %call.res101, %choice.case94 ], [ %call.res110, %choice.case102 ], [ %choice.res122, %choice.exit119 ], [ %call.res125, %choice.next112 ]
  ret ptr %choice.res126

choice.case:                                      ; preds = %choice.exit4
  %call.res7 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next:                                      ; preds = %choice.exit4
  %tag.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id11 = load i64, ptr %tag.gep10, align 8
  %tag.match12 = icmp eq i64 %tag.id11, 1
  br i1 %tag.match12, label %choice.case8, label %choice.next9

choice.case8:                                     ; preds = %choice.next
  %call.res13 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next9:                                     ; preds = %choice.next
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 2
  br i1 %tag.match18, label %choice.case14, label %choice.next15

choice.case14:                                    ; preds = %choice.next9
  %call.res19 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next15:                                    ; preds = %choice.next9
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 3
  br i1 %tag.match24, label %choice.case20, label %choice.next21

choice.case20:                                    ; preds = %choice.next15
  %call.res25 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next21:                                    ; preds = %choice.next15
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 4
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next21
  %call.res31 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next27:                                    ; preds = %choice.next21
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 5
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next27
  %call.res37 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next33:                                    ; preds = %choice.next27
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id41 = load i64, ptr %tag.gep40, align 8
  %tag.match42 = icmp eq i64 %tag.id41, 6
  br i1 %tag.match42, label %choice.case38, label %choice.next39

choice.case38:                                    ; preds = %choice.next33
  %call.res43 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next39:                                    ; preds = %choice.next33
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 7
  br i1 %tag.match48, label %choice.case44, label %choice.next45

choice.case44:                                    ; preds = %choice.next39
  %call.res49 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next45:                                    ; preds = %choice.next39
  %tag.gep52 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id53 = load i64, ptr %tag.gep52, align 8
  %tag.match54 = icmp eq i64 %tag.id53, 8
  br i1 %tag.match54, label %choice.case50, label %choice.next51

choice.case50:                                    ; preds = %choice.next45
  %call.res55 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next51:                                    ; preds = %choice.next45
  %tag.gep58 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id59 = load i64, ptr %tag.gep58, align 8
  %tag.match60 = icmp eq i64 %tag.id59, 9
  br i1 %tag.match60, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next51
  %call.res61 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next57:                                    ; preds = %choice.next51
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id65 = load i64, ptr %tag.gep64, align 8
  %tag.match66 = icmp eq i64 %tag.id65, 10
  br i1 %tag.match66, label %choice.case62, label %choice.next63

choice.case62:                                    ; preds = %choice.next57
  %call.res67 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next63:                                    ; preds = %choice.next57
  %tag.gep70 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id71 = load i64, ptr %tag.gep70, align 8
  %tag.match72 = icmp eq i64 %tag.id71, 11
  br i1 %tag.match72, label %choice.case68, label %choice.next69

choice.case68:                                    ; preds = %choice.next63
  %var.load73 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load73, 2
  %var.load74 = load i64, ptr %var.ptr_align, align 8
  %call.res75 = call ptr @"tast::layout_scalar"(i64 %multmp, i64 %var.load74)
  br label %choice.exit6

choice.next69:                                    ; preds = %choice.next63
  %tag.gep78 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id79 = load i64, ptr %tag.gep78, align 8
  %tag.match80 = icmp eq i64 %tag.id79, 12
  br i1 %tag.match80, label %choice.case76, label %choice.next77

choice.case76:                                    ; preds = %choice.next69
  %call.res81 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next77:                                    ; preds = %choice.next69
  %tag.gep84 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id85 = load i64, ptr %tag.gep84, align 8
  %tag.match86 = icmp eq i64 %tag.id85, 13
  br i1 %tag.match86, label %choice.case82, label %choice.next83

choice.case82:                                    ; preds = %choice.next77
  %call.res87 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next83:                                    ; preds = %choice.next77
  %tag.gep90 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id91 = load i64, ptr %tag.gep90, align 8
  %tag.match92 = icmp eq i64 %tag.id91, 14
  br i1 %tag.match92, label %choice.case88, label %choice.next89

choice.case88:                                    ; preds = %choice.next83
  %call.res93 = call ptr @"tast::layout_void"()
  br label %choice.exit6

choice.next89:                                    ; preds = %choice.next83
  %tag.gep96 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id97 = load i64, ptr %tag.gep96, align 8
  %tag.match98 = icmp eq i64 %tag.id97, 15
  br i1 %tag.match98, label %choice.case94, label %choice.next95

choice.case94:                                    ; preds = %choice.next89
  %var.load99 = load i64, ptr %var.ptr_sz, align 8
  %var.load100 = load i64, ptr %var.ptr_align, align 8
  %call.res101 = call ptr @"tast::layout_scalar"(i64 %var.load99, i64 %var.load100)
  br label %choice.exit6

choice.next95:                                    ; preds = %choice.next89
  %tag.gep104 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id105 = load i64, ptr %tag.gep104, align 8
  %tag.match106 = icmp eq i64 %tag.id105, 16
  br i1 %tag.match106, label %choice.case102, label %choice.next103

choice.case102:                                   ; preds = %choice.next95
  %var.load107 = load i64, ptr %var.ptr_sz, align 8
  %multmp108 = mul i64 %var.load107, 3
  %var.load109 = load i64, ptr %var.ptr_align, align 8
  %call.res110 = call ptr @"tast::layout_scalar"(i64 %multmp108, i64 %var.load109)
  br label %choice.exit6

choice.next103:                                   ; preds = %choice.next95
  %tag.gep113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id114 = load i64, ptr %tag.gep113, align 8
  %tag.match115 = icmp eq i64 %tag.id114, 17
  br i1 %tag.match115, label %choice.case111, label %choice.next112

choice.case111:                                   ; preds = %choice.next103
  %call.res116 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res116, label %choice.then117, label %choice.else118

choice.next112:                                   ; preds = %choice.next103
  %var.load123 = load i64, ptr %var.ptr_sz, align 8
  %var.load124 = load i64, ptr %var.ptr_align, align 8
  %call.res125 = call ptr @"tast::layout_scalar"(i64 %var.load123, i64 %var.load124)
  br label %choice.exit6

choice.then117:                                   ; preds = %choice.case111
  %call.res120 = call ptr @"tast::layout_aggregate"(i64 48, i64 8)
  br label %choice.exit119

choice.else118:                                   ; preds = %choice.case111
  %call.res121 = call ptr @"tast::layout_aggregate"(i64 56, i64 8)
  br label %choice.exit119

choice.exit119:                                   ; preds = %choice.else118, %choice.then117
  %choice.res122 = phi ptr [ %call.res120, %choice.then117 ], [ %call.res121, %choice.else118 ]
  br label %choice.exit6
}

declare ptr @"tast::layout_scalar"(i64, i64) #0

declare ptr @"tast::layout_void"() #0

declare ptr @"tast::layout_aggregate"(i64, i64) #0

define i1 @"layout::is_niche_utype"(ptr %0, ptr %1) #0 {
entry:
  %var.r = alloca ptr, align 8
  %var._18 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %call.res = call ptr @"unify::canon"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.c, align 8
  %var.load2 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next12, %a.after, %choice.exit4
  %choice.res23 = phi i1 [ %choice.res, %choice.exit4 ], [ %cmptmp, %a.after ], [ false, %choice.next12 ]
  ret i1 %choice.res23

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 11
  %tag.match10 = icmp eq i64 %tag.id8, 17
  %tag.or = or i1 %tag.match9, %tag.match10
  br i1 %tag.or, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %tag.gep13 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id14 = load i64, ptr %tag.gep13, align 8
  %tag.match15 = icmp eq i64 %tag.id14, 3
  br i1 %tag.match15, label %choice.case11, label %choice.next12

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

choice.case11:                                    ; preds = %choice.next
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr17 = load ptr, ptr %pay.gep16, align 8
  store ptr %payload.ptr17, ptr %var._18, align 8
  store ptr %payload.ptr17, ptr %var.r, align 8
  %var.load19 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next12:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case11
  %arena.cur = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create20, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case11
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query22 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query22, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #0

define ptr @"layout::classify_ram_layout"(i1 %0, i1 %1, i1 %2, i1 %3) #0 {
entry:
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.neg_is_niche = alloca i1, align 1
  %var.pos_is_niche = alloca i1, align 1
  %var.has_neg = alloca i1, align 1
  %var.has_pos = alloca i1, align 1
  store i1 %0, ptr %var.has_pos, align 1
  store i1 %1, ptr %var.has_neg, align 1
  store i1 %2, ptr %var.pos_is_niche, align 1
  store i1 %3, ptr %var.neg_is_niche, align 1
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %var.load = load i1, ptr %var.has_pos, align 1
  br i1 %var.load, label %and.146.then, label %and.146.else

and.146.then:                                     ; preds = %choice.exit4
  %var.load6 = load i1, ptr %var.has_neg, align 1
  %nottmp = xor i1 %var.load6, true
  br label %and.146.exit

and.146.else:                                     ; preds = %choice.exit4
  br label %and.146.exit

and.146.exit:                                     ; preds = %and.146.else, %and.146.then
  %and.146.phi = phi i1 [ %nottmp, %and.146.then ], [ %var.load, %and.146.else ]
  br i1 %and.146.phi, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %and.146.exit
  %var.load10 = load i1, ptr %var.pos_is_niche, align 1
  br i1 %var.load10, label %choice.then11, label %choice.else12

choice.else8:                                     ; preds = %and.146.exit
  %var.load21 = load i1, ptr %var.has_pos, align 1
  %nottmp22 = xor i1 %var.load21, true
  br i1 %nottmp22, label %and.147.then, label %and.147.else

choice.exit9:                                     ; preds = %choice.exit26, %choice.exit13
  %choice.res51 = phi ptr [ %choice.res20, %choice.exit13 ], [ %choice.res50, %choice.exit26 ]
  ret ptr %choice.res51

choice.then11:                                    ; preds = %choice.then7
  %var.load14 = load i64, ptr %var.ptr_sz, align 8
  %var.load15 = load i64, ptr %var.ptr_align, align 8
  %call.res16 = call ptr @"tast::layout_ram_niche_pos"(i64 %var.load14, i64 %var.load15)
  br label %choice.exit13

choice.else12:                                    ; preds = %choice.then7
  %var.load17 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load17, 2
  %var.load18 = load i64, ptr %var.ptr_align, align 8
  %call.res19 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp, i64 %var.load18)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.else12, %choice.then11
  %choice.res20 = phi ptr [ %call.res16, %choice.then11 ], [ %call.res19, %choice.else12 ]
  br label %choice.exit9

and.147.then:                                     ; preds = %choice.else8
  %var.load23 = load i1, ptr %var.has_neg, align 1
  br label %and.147.exit

and.147.else:                                     ; preds = %choice.else8
  br label %and.147.exit

and.147.exit:                                     ; preds = %and.147.else, %and.147.then
  %and.147.phi = phi i1 [ %var.load23, %and.147.then ], [ %nottmp22, %and.147.else ]
  br i1 %and.147.phi, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %and.147.exit
  %var.load27 = load i1, ptr %var.neg_is_niche, align 1
  br i1 %var.load27, label %choice.then28, label %choice.else29

choice.else25:                                    ; preds = %and.147.exit
  %var.load39 = load i1, ptr %var.has_pos, align 1
  br i1 %var.load39, label %or.148.then, label %or.148.else

choice.exit26:                                    ; preds = %choice.exit43, %choice.exit30
  %choice.res50 = phi ptr [ %choice.res38, %choice.exit30 ], [ %choice.res49, %choice.exit43 ]
  br label %choice.exit9

choice.then28:                                    ; preds = %choice.then24
  %var.load31 = load i64, ptr %var.ptr_sz, align 8
  %var.load32 = load i64, ptr %var.ptr_align, align 8
  %call.res33 = call ptr @"tast::layout_ram_niche_neg"(i64 %var.load31, i64 %var.load32)
  br label %choice.exit30

choice.else29:                                    ; preds = %choice.then24
  %var.load34 = load i64, ptr %var.ptr_sz, align 8
  %multmp35 = mul i64 %var.load34, 2
  %var.load36 = load i64, ptr %var.ptr_align, align 8
  %call.res37 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp35, i64 %var.load36)
  br label %choice.exit30

choice.exit30:                                    ; preds = %choice.else29, %choice.then28
  %choice.res38 = phi ptr [ %call.res33, %choice.then28 ], [ %call.res37, %choice.else29 ]
  br label %choice.exit26

or.148.then:                                      ; preds = %choice.else25
  br label %or.148.exit

or.148.else:                                      ; preds = %choice.else25
  %var.load40 = load i1, ptr %var.has_neg, align 1
  br label %or.148.exit

or.148.exit:                                      ; preds = %or.148.else, %or.148.then
  %or.148.phi = phi i1 [ %var.load39, %or.148.then ], [ %var.load40, %or.148.else ]
  br i1 %or.148.phi, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %or.148.exit
  %var.load44 = load i64, ptr %var.ptr_sz, align 8
  %multmp45 = mul i64 %var.load44, 2
  %var.load46 = load i64, ptr %var.ptr_align, align 8
  %call.res47 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp45, i64 %var.load46)
  br label %choice.exit43

choice.else42:                                    ; preds = %or.148.exit
  %call.res48 = call ptr @"tast::layout_ram_flag"()
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res49 = phi ptr [ %call.res47, %choice.then41 ], [ %call.res48, %choice.else42 ]
  br label %choice.exit26
}

declare ptr @"tast::layout_ram_niche_pos"(i64, i64) #0

declare ptr @"tast::layout_ram_unboxed"(i64, i64) #0

declare ptr @"tast::layout_ram_niche_neg"(i64, i64) #0

declare ptr @"tast::layout_ram_flag"() #0

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #0 {
entry:
  %var._148 = alloca ptr, align 8
  %var._128 = alloca ptr, align 8
  %var._108 = alloca ptr, align 8
  %var.r79 = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var.fin_size = alloca i64, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.149 = alloca i64, align 8
  %loop.idx.149 = alloca i64, align 8
  %"var.max_align'" = alloca i64, align 8
  %"var.cur_off'" = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._24 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.min_rec_sz = alloca i64, align 8
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %call.res6 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res6, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.else8:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else8, %choice.then7
  %choice.res10 = phi i64 [ 8, %choice.then7 ], [ 16, %choice.else8 ]
  store i64 %choice.res10, ptr %var.min_rec_sz, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %call.res12 = call ptr @"unify::canon"(ptr %var.load, ptr %var.load11)
  store ptr %call.res12, ptr %var.c, align 8
  %var.load13 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit14:                                    ; preds = %choice.next142, %choice.case141, %choice.case121, %choice.case101, %choice.case71, %loop.exit.149, %choice.case17, %choice.case
  %choice.res164 = phi ptr [ %call.res16, %choice.case ], [ %rec.alloc, %choice.case17 ], [ %call.res70, %loop.exit.149 ], [ %call.res100, %choice.case71 ], [ %rec.alloc117, %choice.case101 ], [ %rec.alloc137, %choice.case121 ], [ %rec.alloc157, %choice.case141 ], [ %call.res163, %choice.next142 ]
  ret ptr %choice.res164

choice.case:                                      ; preds = %choice.exit9
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load15 = load ptr, ptr %var.p, align 8
  %call.res16 = call ptr @"layout::compute_prim_layout"(ptr %var.load15)
  br label %choice.exit14

choice.next:                                      ; preds = %choice.exit9
  %tag.gep19 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id20 = load i64, ptr %tag.gep19, align 8
  %tag.match21 = icmp eq i64 %tag.id20, 2
  br i1 %tag.match21, label %choice.case17, label %choice.next18

choice.case17:                                    ; preds = %choice.next
  %pay.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr23 = load ptr, ptr %pay.gep22, align 8
  store ptr %payload.ptr23, ptr %var._24, align 8
  %var.load25 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load25, 2
  %var.load26 = load i64, ptr %var.ptr_align, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 12, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %multmp, ptr %rec.fld, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load26, ptr %rec.fld30, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld31, align 8
  br label %choice.exit14

choice.next18:                                    ; preds = %choice.next
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 3
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next18
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.r, align 8
  store i64 0, ptr %"var.cur_off'", align 8
  store i64 1, ptr %"var.max_align'", align 8
  %var.load40 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next33:                                    ; preds = %choice.next18
  %tag.gep73 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id74 = load i64, ptr %tag.gep73, align 8
  %tag.match75 = icmp eq i64 %tag.id74, 4
  br i1 %tag.match75, label %choice.case71, label %choice.next72

a.create:                                         ; preds = %choice.case32
  %arena.cur41 = call ptr @dva_arena_current()
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create42, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case32
  %a.load2 = load ptr, ptr %var.r, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len44 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data45 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.149, align 8
  %cycle.prev.u = load ptr, ptr %var._39, align 8
  br label %loop.header.149

loop.header.149:                                  ; preds = %loop.latch.149, %a.after
  %counter.load = load i64, ptr %loop.idx.149, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len44
  br i1 %loop.cond, label %loop.body.149, label %loop.exit.nat.149

loop.body.149:                                    ; preds = %loop.header.149
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.149, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data45, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._46, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load47 = load ptr, ptr %var.ctx, align 8
  %var.load48 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load48, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res49 = call ptr @"layout::compute_layout"(ptr %var.load47, ptr %fld.load)
  store ptr %call.res49, ptr %var.flay, align 8
  %var.load50 = load ptr, ptr %var.flay, align 8
  %fld.gep51 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %max = call i64 @llvm.smax.i64(i64 %fld.load52, i64 1)
  store i64 %max, ptr %var.f_align, align 8
  %var.load53 = load i64, ptr %"var.max_align'", align 8
  %var.load54 = load i64, ptr %var.f_align, align 8
  %max55 = call i64 @llvm.smax.i64(i64 %var.load53, i64 %var.load54)
  store i64 %max55, ptr %"var.max_align'", align 8
  %var.load56 = load i64, ptr %"var.cur_off'", align 8
  %var.load57 = load i64, ptr %var.f_align, align 8
  %call.res58 = call i64 @"layout::align_up"(i64 %var.load56, i64 %var.load57)
  %var.load59 = load ptr, ptr %var.flay, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  %addtmp = add i64 %call.res58, %fld.load61
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.149

loop.exit.nat.149:                                ; preds = %loop.header.149
  br label %loop.exit.149

loop.latch.149:                                   ; preds = %loop.body.149
  %step.val = load i64, ptr %loop.step.149, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.149, align 8
  br label %loop.header.149

loop.exit.149:                                    ; preds = %loop.exit.nat.149
  store ptr %cycle.prev.u, ptr %var._39, align 8
  %var.load62 = load i64, ptr %"var.cur_off'", align 8
  %var.load63 = load i64, ptr %"var.max_align'", align 8
  %call.res64 = call i64 @"layout::align_up"(i64 %var.load62, i64 %var.load63)
  store i64 %call.res64, ptr %var.total_size, align 8
  %var.load65 = load i64, ptr %var.total_size, align 8
  %var.load66 = load i64, ptr %var.min_rec_sz, align 8
  %max67 = call i64 @llvm.smax.i64(i64 %var.load65, i64 %var.load66)
  store i64 %max67, ptr %var.fin_size, align 8
  %var.load68 = load i64, ptr %var.fin_size, align 8
  %var.load69 = load i64, ptr %"var.max_align'", align 8
  %call.res70 = call ptr @"tast::layout_record"(i64 %var.load68, i64 %var.load69)
  br label %choice.exit14

choice.case71:                                    ; preds = %choice.next33
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr77 = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr77, ptr %var._78, align 8
  store ptr %payload.ptr77, ptr %var.r79, align 8
  %var.load80 = load ptr, ptr %var.r79, align 8
  %fld.gep81 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load80, i32 0, i32 0
  %fld.gep82 = getelementptr inbounds { i1, ptr }, ptr %fld.gep81, i32 0, i32 0
  %fld.load83 = load i1, ptr %fld.gep82, align 1
  %var.load84 = load ptr, ptr %var.r79, align 8
  %fld.gep85 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load84, i32 0, i32 1
  %fld.gep86 = getelementptr inbounds { i1, ptr }, ptr %fld.gep85, i32 0, i32 0
  %fld.load87 = load i1, ptr %fld.gep86, align 1
  %var.load88 = load ptr, ptr %var.ctx, align 8
  %var.load89 = load ptr, ptr %var.r79, align 8
  %fld.gep90 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load89, i32 0, i32 0
  %fld.gep91 = getelementptr inbounds { i1, ptr }, ptr %fld.gep90, i32 0, i32 1
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %call.res93 = call i1 @"layout::is_niche_utype"(ptr %var.load88, ptr %fld.load92)
  %var.load94 = load ptr, ptr %var.ctx, align 8
  %var.load95 = load ptr, ptr %var.r79, align 8
  %fld.gep96 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load95, i32 0, i32 1
  %fld.gep97 = getelementptr inbounds { i1, ptr }, ptr %fld.gep96, i32 0, i32 1
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %call.res99 = call i1 @"layout::is_niche_utype"(ptr %var.load94, ptr %fld.load98)
  %call.res100 = call ptr @"layout::classify_ram_layout"(i1 %fld.load83, i1 %fld.load87, i1 %call.res93, i1 %call.res99)
  br label %choice.exit14

choice.next72:                                    ; preds = %choice.next33
  %tag.gep103 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id104 = load i64, ptr %tag.gep103, align 8
  %tag.match105 = icmp eq i64 %tag.id104, 5
  br i1 %tag.match105, label %choice.case101, label %choice.next102

choice.case101:                                   ; preds = %choice.next72
  %pay.gep106 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr107 = load ptr, ptr %pay.gep106, align 8
  store ptr %payload.ptr107, ptr %var._108, align 8
  %var.load109 = load i64, ptr %var.ptr_sz, align 8
  %multmp110 = mul i64 %var.load109, 2
  %var.load111 = load i64, ptr %var.ptr_align, align 8
  %arena.cur112 = call ptr @dva_arena_current()
  %enum.alloc113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %tag.gep114 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc113, i32 0, i32 0
  store i64 9, ptr %tag.gep114, align 8
  %pay.gep115 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc113, i32 0, i32 1
  store ptr null, ptr %pay.gep115, align 8
  %arena.cur116 = call ptr @dva_arena_current()
  %rec.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld118 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 0
  store i64 %multmp110, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 1
  store i64 %var.load111, ptr %rec.fld119, align 8
  %rec.fld120 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 2
  store ptr %enum.alloc113, ptr %rec.fld120, align 8
  br label %choice.exit14

choice.next102:                                   ; preds = %choice.next72
  %tag.gep123 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id124 = load i64, ptr %tag.gep123, align 8
  %tag.match125 = icmp eq i64 %tag.id124, 6
  br i1 %tag.match125, label %choice.case121, label %choice.next122

choice.case121:                                   ; preds = %choice.next102
  %pay.gep126 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr127 = load ptr, ptr %pay.gep126, align 8
  store ptr %payload.ptr127, ptr %var._128, align 8
  %var.load129 = load i64, ptr %var.ptr_sz, align 8
  %multmp130 = mul i64 %var.load129, 3
  %var.load131 = load i64, ptr %var.ptr_align, align 8
  %arena.cur132 = call ptr @dva_arena_current()
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %tag.gep134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 0
  store i64 11, ptr %tag.gep134, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  store ptr null, ptr %pay.gep135, align 8
  %arena.cur136 = call ptr @dva_arena_current()
  %rec.alloc137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld138 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 0
  store i64 %multmp130, ptr %rec.fld138, align 8
  %rec.fld139 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 1
  store i64 %var.load131, ptr %rec.fld139, align 8
  %rec.fld140 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 2
  store ptr %enum.alloc133, ptr %rec.fld140, align 8
  br label %choice.exit14

choice.next122:                                   ; preds = %choice.next102
  %tag.gep143 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id144 = load i64, ptr %tag.gep143, align 8
  %tag.match145 = icmp eq i64 %tag.id144, 7
  br i1 %tag.match145, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next122
  %pay.gep146 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr147 = load ptr, ptr %pay.gep146, align 8
  store ptr %payload.ptr147, ptr %var._148, align 8
  %var.load149 = load i64, ptr %var.ptr_sz, align 8
  %multmp150 = mul i64 %var.load149, 2
  %var.load151 = load i64, ptr %var.ptr_align, align 8
  %arena.cur152 = call ptr @dva_arena_current()
  %enum.alloc153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %tag.gep154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 0
  store i64 10, ptr %tag.gep154, align 8
  %pay.gep155 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 1
  store ptr null, ptr %pay.gep155, align 8
  %arena.cur156 = call ptr @dva_arena_current()
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld158 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 0
  store i64 %multmp150, ptr %rec.fld158, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 1
  store i64 %var.load151, ptr %rec.fld159, align 8
  %rec.fld160 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 2
  store ptr %enum.alloc153, ptr %rec.fld160, align 8
  br label %choice.exit14

choice.next142:                                   ; preds = %choice.next122
  %var.load161 = load i64, ptr %var.ptr_sz, align 8
  %var.load162 = load i64, ptr %var.ptr_align, align 8
  %call.res163 = call ptr @"tast::layout_scalar"(i64 %var.load161, i64 %var.load162)
  br label %choice.exit14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

declare ptr @"tast::layout_record"(i64, i64) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
