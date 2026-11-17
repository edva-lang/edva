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
@str.0 = internal unnamed_addr constant [2 x i8] c"$\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.1 = internal unnamed_addr constant [3 x i8] c"||\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.1 }
@str.2 = internal unnamed_addr constant [3 x i8] c"&&\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c".|.\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@str.5 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.5 }
@str.6 = internal unnamed_addr constant [2 x i8] c"<\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c">\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@str.9 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@str.10 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.10 }
@str.11 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.11 }
@str.12 = internal unnamed_addr constant [4 x i8] c".<.\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.12 }
@str.13 = internal unnamed_addr constant [4 x i8] c".>.\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.13 }
@str.14 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@str.15 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.15 }
@str.16 = internal unnamed_addr constant [3 x i8] c"$>\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"$>>\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [4 x i8] c"$+>\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.18 }
@str.19 = internal unnamed_addr constant [4 x i8] c"$->\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.19 }
@str.20 = internal unnamed_addr constant [3 x i8] c".>\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.21 }
@str.22 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.22 }
@str.23 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.23 }
@clo.const = internal constant { ptr, ptr } { ptr @"operators::bin_info", ptr null }
@"var.operators::bin_info" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_operators, ptr null }]

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

define internal void @__dva_global_init_operators() #0 {
entry:
  store ptr @clo.const, ptr @"var.operators::bin_info", align 8
  ret void
}

define ptr @"operators::bin_info"(ptr %0) #0 {
entry:
  %var.text = alloca ptr, align 8
  store ptr %0, ptr %var.text, align 8
  %var.load = load ptr, ptr %var.text, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next847, %choice.case846, %choice.case808, %choice.case770, %choice.case732, %choice.case694, %choice.case656, %choice.case618, %choice.case580, %choice.case542, %choice.case504, %choice.case466, %choice.case428, %choice.case390, %choice.case352, %choice.case314, %choice.case276, %choice.case238, %choice.case200, %choice.case162, %choice.case124, %choice.case86, %choice.case48, %choice.case10, %choice.case
  %choice.res = phi ptr [ %rec.alloc, %choice.case ], [ %rec.alloc43, %choice.case10 ], [ %rec.alloc81, %choice.case48 ], [ %rec.alloc119, %choice.case86 ], [ %rec.alloc157, %choice.case124 ], [ %rec.alloc195, %choice.case162 ], [ %rec.alloc233, %choice.case200 ], [ %rec.alloc271, %choice.case238 ], [ %rec.alloc309, %choice.case276 ], [ %rec.alloc347, %choice.case314 ], [ %rec.alloc385, %choice.case352 ], [ %rec.alloc423, %choice.case390 ], [ %rec.alloc461, %choice.case428 ], [ %rec.alloc499, %choice.case466 ], [ %rec.alloc537, %choice.case504 ], [ %rec.alloc575, %choice.case542 ], [ %rec.alloc613, %choice.case580 ], [ %rec.alloc651, %choice.case618 ], [ %rec.alloc689, %choice.case656 ], [ %rec.alloc727, %choice.case694 ], [ %rec.alloc765, %choice.case732 ], [ %rec.alloc803, %choice.case770 ], [ %rec.alloc841, %choice.case808 ], [ %rec.alloc879, %choice.case846 ], [ null, %choice.next847 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur5 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 14, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 30, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 30, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld9, align 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len12, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %str.tag15 = lshr i64 %eq.lhs.len13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  br i1 %tag.immortal17, label %str_ok16, label %tag.gen_check18

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case10:                                    ; preds = %str.eq.merge31
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc39, i32 0, i32 0
  store i64 12, ptr %tag.gep40, align 8
  %pay.gep41 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc39, i32 0, i32 1
  store ptr null, ptr %pay.gep41, align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %rec.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld44 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc43, i32 0, i32 0
  store i64 80, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc43, i32 0, i32 1
  store i64 90, ptr %rec.fld45, align 8
  %rec.fld46 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc43, i32 0, i32 2
  store ptr %enum.alloc39, ptr %rec.fld46, align 8
  %rec.fld47 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc43, i32 0, i32 3
  store i1 false, ptr %rec.fld47, align 1
  br label %choice.exit

choice.next11:                                    ; preds = %str.eq.merge31
  %eq.lhs.len50 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len51 = load i64, ptr %eq.lhs.len50, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.lhs.len51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  br i1 %tag.immortal55, label %str_ok54, label %tag.gen_check56

str_ok16:                                         ; preds = %abort.dead25, %tag.slow_check19, %tag.gen_check18, %choice.next
  %eq.rhs.len26 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %eq.len28 = icmp eq i64 %eq.lhs.len14, %eq.rhs.len27
  br i1 %eq.len28, label %str.eq.then29, label %str.eq.else30

tag.gen_check18:                                  ; preds = %choice.next
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok22 = icmp eq i64 %str.tag15, %active.gen21
  br i1 %tag.fast.ok22, label %str_ok16, label %tag.slow_check19

tag.slow_check19:                                 ; preds = %tag.gen_check18
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag15)
  br i1 %tag.valid24, label %str_ok16, label %tag.stale20

tag.stale20:                                      ; preds = %tag.slow_check19
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %str_ok16

str.eq.then29:                                    ; preds = %str_ok16
  %eq.lhs.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data32, align 8
  %eq.rhs.data34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp35 = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len14)
  %eq.cmp.zero36 = icmp eq i32 %eq.memcmp35, 0
  br label %str.eq.merge31

str.eq.else30:                                    ; preds = %str_ok16
  br label %str.eq.merge31

str.eq.merge31:                                   ; preds = %str.eq.else30, %str.eq.then29
  %str.eq.result37 = phi i1 [ %eq.cmp.zero36, %str.eq.then29 ], [ false, %str.eq.else30 ]
  br i1 %str.eq.result37, label %choice.case10, label %choice.next11

choice.case48:                                    ; preds = %str.eq.merge69
  %arena.cur76 = call ptr @dva_arena_current()
  %enum.alloc77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %tag.gep78 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc77, i32 0, i32 0
  store i64 11, ptr %tag.gep78, align 8
  %pay.gep79 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc77, i32 0, i32 1
  store ptr null, ptr %pay.gep79, align 8
  %arena.cur80 = call ptr @dva_arena_current()
  %rec.alloc81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld82 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc81, i32 0, i32 0
  store i64 90, ptr %rec.fld82, align 8
  %rec.fld83 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc81, i32 0, i32 1
  store i64 100, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc81, i32 0, i32 2
  store ptr %enum.alloc77, ptr %rec.fld84, align 8
  %rec.fld85 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc81, i32 0, i32 3
  store i1 false, ptr %rec.fld85, align 1
  br label %choice.exit

choice.next49:                                    ; preds = %str.eq.merge69
  %eq.lhs.len88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len89 = load i64, ptr %eq.lhs.len88, align 8
  %eq.lhs.len90 = and i64 %eq.lhs.len89, 281474976710655
  %str.tag91 = lshr i64 %eq.lhs.len89, 48
  %tag.immortal93 = icmp eq i64 %str.tag91, 0
  br i1 %tag.immortal93, label %str_ok92, label %tag.gen_check94

str_ok54:                                         ; preds = %abort.dead63, %tag.slow_check57, %tag.gen_check56, %choice.next11
  %eq.rhs.len64 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len65 = and i64 %eq.rhs.len64, 281474976710655
  %eq.len66 = icmp eq i64 %eq.lhs.len52, %eq.rhs.len65
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.else68

tag.gen_check56:                                  ; preds = %choice.next11
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok60 = icmp eq i64 %str.tag53, %active.gen59
  br i1 %tag.fast.ok60, label %str_ok54, label %tag.slow_check57

tag.slow_check57:                                 ; preds = %tag.gen_check56
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag53)
  br i1 %tag.valid62, label %str_ok54, label %tag.stale58

tag.stale58:                                      ; preds = %tag.slow_check57
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %str_ok54

str.eq.then67:                                    ; preds = %str_ok54
  %eq.lhs.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data70, align 8
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp73 = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data72, i64 %eq.lhs.len52)
  %eq.cmp.zero74 = icmp eq i32 %eq.memcmp73, 0
  br label %str.eq.merge69

str.eq.else68:                                    ; preds = %str_ok54
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.else68, %str.eq.then67
  %str.eq.result75 = phi i1 [ %eq.cmp.zero74, %str.eq.then67 ], [ false, %str.eq.else68 ]
  br i1 %str.eq.result75, label %choice.case48, label %choice.next49

choice.case86:                                    ; preds = %str.eq.merge107
  %arena.cur114 = call ptr @dva_arena_current()
  %enum.alloc115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  %tag.gep116 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc115, i32 0, i32 0
  store i64 20, ptr %tag.gep116, align 8
  %pay.gep117 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc115, i32 0, i32 1
  store ptr null, ptr %pay.gep117, align 8
  %arena.cur118 = call ptr @dva_arena_current()
  %rec.alloc119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld120 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc119, i32 0, i32 0
  store i64 100, ptr %rec.fld120, align 8
  %rec.fld121 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc119, i32 0, i32 1
  store i64 105, ptr %rec.fld121, align 8
  %rec.fld122 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc119, i32 0, i32 2
  store ptr %enum.alloc115, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc119, i32 0, i32 3
  store i1 false, ptr %rec.fld123, align 1
  br label %choice.exit

choice.next87:                                    ; preds = %str.eq.merge107
  %eq.lhs.len126 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len127 = load i64, ptr %eq.lhs.len126, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %str.tag129 = lshr i64 %eq.lhs.len127, 48
  %tag.immortal131 = icmp eq i64 %str.tag129, 0
  br i1 %tag.immortal131, label %str_ok130, label %tag.gen_check132

str_ok92:                                         ; preds = %abort.dead101, %tag.slow_check95, %tag.gen_check94, %choice.next49
  %eq.rhs.len102 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len103 = and i64 %eq.rhs.len102, 281474976710655
  %eq.len104 = icmp eq i64 %eq.lhs.len90, %eq.rhs.len103
  br i1 %eq.len104, label %str.eq.then105, label %str.eq.else106

tag.gen_check94:                                  ; preds = %choice.next49
  %active.gen97 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok98 = icmp eq i64 %str.tag91, %active.gen97
  br i1 %tag.fast.ok98, label %str_ok92, label %tag.slow_check95

tag.slow_check95:                                 ; preds = %tag.gen_check94
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag91)
  br i1 %tag.valid100, label %str_ok92, label %tag.stale96

tag.stale96:                                      ; preds = %tag.slow_check95
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %str_ok92

str.eq.then105:                                   ; preds = %str_ok92
  %eq.lhs.data108 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data109 = load ptr, ptr %eq.lhs.data108, align 8
  %eq.rhs.data110 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp111 = call i32 @memcmp(ptr %eq.lhs.data109, ptr %eq.rhs.data110, i64 %eq.lhs.len90)
  %eq.cmp.zero112 = icmp eq i32 %eq.memcmp111, 0
  br label %str.eq.merge107

str.eq.else106:                                   ; preds = %str_ok92
  br label %str.eq.merge107

str.eq.merge107:                                  ; preds = %str.eq.else106, %str.eq.then105
  %str.eq.result113 = phi i1 [ %eq.cmp.zero112, %str.eq.then105 ], [ false, %str.eq.else106 ]
  br i1 %str.eq.result113, label %choice.case86, label %choice.next87

choice.case124:                                   ; preds = %str.eq.merge145
  %arena.cur152 = call ptr @dva_arena_current()
  %enum.alloc153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %tag.gep154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 0
  store i64 21, ptr %tag.gep154, align 8
  %pay.gep155 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 1
  store ptr null, ptr %pay.gep155, align 8
  %arena.cur156 = call ptr @dva_arena_current()
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld158 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc157, i32 0, i32 0
  store i64 105, ptr %rec.fld158, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc157, i32 0, i32 1
  store i64 110, ptr %rec.fld159, align 8
  %rec.fld160 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc157, i32 0, i32 2
  store ptr %enum.alloc153, ptr %rec.fld160, align 8
  %rec.fld161 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc157, i32 0, i32 3
  store i1 false, ptr %rec.fld161, align 1
  br label %choice.exit

choice.next125:                                   ; preds = %str.eq.merge145
  %eq.lhs.len164 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len165 = load i64, ptr %eq.lhs.len164, align 8
  %eq.lhs.len166 = and i64 %eq.lhs.len165, 281474976710655
  %str.tag167 = lshr i64 %eq.lhs.len165, 48
  %tag.immortal169 = icmp eq i64 %str.tag167, 0
  br i1 %tag.immortal169, label %str_ok168, label %tag.gen_check170

str_ok130:                                        ; preds = %abort.dead139, %tag.slow_check133, %tag.gen_check132, %choice.next87
  %eq.rhs.len140 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len141 = and i64 %eq.rhs.len140, 281474976710655
  %eq.len142 = icmp eq i64 %eq.lhs.len128, %eq.rhs.len141
  br i1 %eq.len142, label %str.eq.then143, label %str.eq.else144

tag.gen_check132:                                 ; preds = %choice.next87
  %active.gen135 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok136 = icmp eq i64 %str.tag129, %active.gen135
  br i1 %tag.fast.ok136, label %str_ok130, label %tag.slow_check133

tag.slow_check133:                                ; preds = %tag.gen_check132
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag129)
  br i1 %tag.valid138, label %str_ok130, label %tag.stale134

tag.stale134:                                     ; preds = %tag.slow_check133
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead139:                                    ; No predecessors!
  br label %str_ok130

str.eq.then143:                                   ; preds = %str_ok130
  %eq.lhs.data146 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data147 = load ptr, ptr %eq.lhs.data146, align 8
  %eq.rhs.data148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp149 = call i32 @memcmp(ptr %eq.lhs.data147, ptr %eq.rhs.data148, i64 %eq.lhs.len128)
  %eq.cmp.zero150 = icmp eq i32 %eq.memcmp149, 0
  br label %str.eq.merge145

str.eq.else144:                                   ; preds = %str_ok130
  br label %str.eq.merge145

str.eq.merge145:                                  ; preds = %str.eq.else144, %str.eq.then143
  %str.eq.result151 = phi i1 [ %eq.cmp.zero150, %str.eq.then143 ], [ false, %str.eq.else144 ]
  br i1 %str.eq.result151, label %choice.case124, label %choice.next125

choice.case162:                                   ; preds = %str.eq.merge183
  %arena.cur190 = call ptr @dva_arena_current()
  %enum.alloc191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 16)
  %tag.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc191, i32 0, i32 0
  store i64 19, ptr %tag.gep192, align 8
  %pay.gep193 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc191, i32 0, i32 1
  store ptr null, ptr %pay.gep193, align 8
  %arena.cur194 = call ptr @dva_arena_current()
  %rec.alloc195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld196 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc195, i32 0, i32 0
  store i64 110, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc195, i32 0, i32 1
  store i64 120, ptr %rec.fld197, align 8
  %rec.fld198 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc195, i32 0, i32 2
  store ptr %enum.alloc191, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc195, i32 0, i32 3
  store i1 false, ptr %rec.fld199, align 1
  br label %choice.exit

choice.next163:                                   ; preds = %str.eq.merge183
  %eq.lhs.len202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len203 = load i64, ptr %eq.lhs.len202, align 8
  %eq.lhs.len204 = and i64 %eq.lhs.len203, 281474976710655
  %str.tag205 = lshr i64 %eq.lhs.len203, 48
  %tag.immortal207 = icmp eq i64 %str.tag205, 0
  br i1 %tag.immortal207, label %str_ok206, label %tag.gen_check208

str_ok168:                                        ; preds = %abort.dead177, %tag.slow_check171, %tag.gen_check170, %choice.next125
  %eq.rhs.len178 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len179 = and i64 %eq.rhs.len178, 281474976710655
  %eq.len180 = icmp eq i64 %eq.lhs.len166, %eq.rhs.len179
  br i1 %eq.len180, label %str.eq.then181, label %str.eq.else182

tag.gen_check170:                                 ; preds = %choice.next125
  %active.gen173 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok174 = icmp eq i64 %str.tag167, %active.gen173
  br i1 %tag.fast.ok174, label %str_ok168, label %tag.slow_check171

tag.slow_check171:                                ; preds = %tag.gen_check170
  %arena.cur175 = call ptr @dva_arena_current()
  %tag.valid176 = call i1 @dva_arena_validate_tag(ptr %arena.cur175, i64 %str.tag167)
  br i1 %tag.valid176, label %str_ok168, label %tag.stale172

tag.stale172:                                     ; preds = %tag.slow_check171
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead177:                                    ; No predecessors!
  br label %str_ok168

str.eq.then181:                                   ; preds = %str_ok168
  %eq.lhs.data184 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data185 = load ptr, ptr %eq.lhs.data184, align 8
  %eq.rhs.data186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp187 = call i32 @memcmp(ptr %eq.lhs.data185, ptr %eq.rhs.data186, i64 %eq.lhs.len166)
  %eq.cmp.zero188 = icmp eq i32 %eq.memcmp187, 0
  br label %str.eq.merge183

str.eq.else182:                                   ; preds = %str_ok168
  br label %str.eq.merge183

str.eq.merge183:                                  ; preds = %str.eq.else182, %str.eq.then181
  %str.eq.result189 = phi i1 [ %eq.cmp.zero188, %str.eq.then181 ], [ false, %str.eq.else182 ]
  br i1 %str.eq.result189, label %choice.case162, label %choice.next163

choice.case200:                                   ; preds = %str.eq.merge221
  %arena.cur228 = call ptr @dva_arena_current()
  %enum.alloc229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 16)
  %tag.gep230 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc229, i32 0, i32 0
  store i64 6, ptr %tag.gep230, align 8
  %pay.gep231 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc229, i32 0, i32 1
  store ptr null, ptr %pay.gep231, align 8
  %arena.cur232 = call ptr @dva_arena_current()
  %rec.alloc233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld234 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc233, i32 0, i32 0
  store i64 120, ptr %rec.fld234, align 8
  %rec.fld235 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc233, i32 0, i32 1
  store i64 130, ptr %rec.fld235, align 8
  %rec.fld236 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc233, i32 0, i32 2
  store ptr %enum.alloc229, ptr %rec.fld236, align 8
  %rec.fld237 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc233, i32 0, i32 3
  store i1 true, ptr %rec.fld237, align 1
  br label %choice.exit

choice.next201:                                   ; preds = %str.eq.merge221
  %eq.lhs.len240 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len241 = load i64, ptr %eq.lhs.len240, align 8
  %eq.lhs.len242 = and i64 %eq.lhs.len241, 281474976710655
  %str.tag243 = lshr i64 %eq.lhs.len241, 48
  %tag.immortal245 = icmp eq i64 %str.tag243, 0
  br i1 %tag.immortal245, label %str_ok244, label %tag.gen_check246

str_ok206:                                        ; preds = %abort.dead215, %tag.slow_check209, %tag.gen_check208, %choice.next163
  %eq.rhs.len216 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len217 = and i64 %eq.rhs.len216, 281474976710655
  %eq.len218 = icmp eq i64 %eq.lhs.len204, %eq.rhs.len217
  br i1 %eq.len218, label %str.eq.then219, label %str.eq.else220

tag.gen_check208:                                 ; preds = %choice.next163
  %active.gen211 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok212 = icmp eq i64 %str.tag205, %active.gen211
  br i1 %tag.fast.ok212, label %str_ok206, label %tag.slow_check209

tag.slow_check209:                                ; preds = %tag.gen_check208
  %arena.cur213 = call ptr @dva_arena_current()
  %tag.valid214 = call i1 @dva_arena_validate_tag(ptr %arena.cur213, i64 %str.tag205)
  br i1 %tag.valid214, label %str_ok206, label %tag.stale210

tag.stale210:                                     ; preds = %tag.slow_check209
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead215:                                    ; No predecessors!
  br label %str_ok206

str.eq.then219:                                   ; preds = %str_ok206
  %eq.lhs.data222 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data223 = load ptr, ptr %eq.lhs.data222, align 8
  %eq.rhs.data224 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp225 = call i32 @memcmp(ptr %eq.lhs.data223, ptr %eq.rhs.data224, i64 %eq.lhs.len204)
  %eq.cmp.zero226 = icmp eq i32 %eq.memcmp225, 0
  br label %str.eq.merge221

str.eq.else220:                                   ; preds = %str_ok206
  br label %str.eq.merge221

str.eq.merge221:                                  ; preds = %str.eq.else220, %str.eq.then219
  %str.eq.result227 = phi i1 [ %eq.cmp.zero226, %str.eq.then219 ], [ false, %str.eq.else220 ]
  br i1 %str.eq.result227, label %choice.case200, label %choice.next201

choice.case238:                                   ; preds = %str.eq.merge259
  %arena.cur266 = call ptr @dva_arena_current()
  %enum.alloc267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 16)
  %tag.gep268 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc267, i32 0, i32 0
  store i64 5, ptr %tag.gep268, align 8
  %pay.gep269 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc267, i32 0, i32 1
  store ptr null, ptr %pay.gep269, align 8
  %arena.cur270 = call ptr @dva_arena_current()
  %rec.alloc271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld272 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc271, i32 0, i32 0
  store i64 120, ptr %rec.fld272, align 8
  %rec.fld273 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc271, i32 0, i32 1
  store i64 130, ptr %rec.fld273, align 8
  %rec.fld274 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc271, i32 0, i32 2
  store ptr %enum.alloc267, ptr %rec.fld274, align 8
  %rec.fld275 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc271, i32 0, i32 3
  store i1 true, ptr %rec.fld275, align 1
  br label %choice.exit

choice.next239:                                   ; preds = %str.eq.merge259
  %eq.lhs.len278 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len279 = load i64, ptr %eq.lhs.len278, align 8
  %eq.lhs.len280 = and i64 %eq.lhs.len279, 281474976710655
  %str.tag281 = lshr i64 %eq.lhs.len279, 48
  %tag.immortal283 = icmp eq i64 %str.tag281, 0
  br i1 %tag.immortal283, label %str_ok282, label %tag.gen_check284

str_ok244:                                        ; preds = %abort.dead253, %tag.slow_check247, %tag.gen_check246, %choice.next201
  %eq.rhs.len254 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len255 = and i64 %eq.rhs.len254, 281474976710655
  %eq.len256 = icmp eq i64 %eq.lhs.len242, %eq.rhs.len255
  br i1 %eq.len256, label %str.eq.then257, label %str.eq.else258

tag.gen_check246:                                 ; preds = %choice.next201
  %active.gen249 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok250 = icmp eq i64 %str.tag243, %active.gen249
  br i1 %tag.fast.ok250, label %str_ok244, label %tag.slow_check247

tag.slow_check247:                                ; preds = %tag.gen_check246
  %arena.cur251 = call ptr @dva_arena_current()
  %tag.valid252 = call i1 @dva_arena_validate_tag(ptr %arena.cur251, i64 %str.tag243)
  br i1 %tag.valid252, label %str_ok244, label %tag.stale248

tag.stale248:                                     ; preds = %tag.slow_check247
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead253:                                    ; No predecessors!
  br label %str_ok244

str.eq.then257:                                   ; preds = %str_ok244
  %eq.lhs.data260 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data261 = load ptr, ptr %eq.lhs.data260, align 8
  %eq.rhs.data262 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp263 = call i32 @memcmp(ptr %eq.lhs.data261, ptr %eq.rhs.data262, i64 %eq.lhs.len242)
  %eq.cmp.zero264 = icmp eq i32 %eq.memcmp263, 0
  br label %str.eq.merge259

str.eq.else258:                                   ; preds = %str_ok244
  br label %str.eq.merge259

str.eq.merge259:                                  ; preds = %str.eq.else258, %str.eq.then257
  %str.eq.result265 = phi i1 [ %eq.cmp.zero264, %str.eq.then257 ], [ false, %str.eq.else258 ]
  br i1 %str.eq.result265, label %choice.case238, label %choice.next239

choice.case276:                                   ; preds = %str.eq.merge297
  %arena.cur304 = call ptr @dva_arena_current()
  %enum.alloc305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 16)
  %tag.gep306 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc305, i32 0, i32 0
  store i64 7, ptr %tag.gep306, align 8
  %pay.gep307 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc305, i32 0, i32 1
  store ptr null, ptr %pay.gep307, align 8
  %arena.cur308 = call ptr @dva_arena_current()
  %rec.alloc309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld310 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc309, i32 0, i32 0
  store i64 120, ptr %rec.fld310, align 8
  %rec.fld311 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc309, i32 0, i32 1
  store i64 130, ptr %rec.fld311, align 8
  %rec.fld312 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc309, i32 0, i32 2
  store ptr %enum.alloc305, ptr %rec.fld312, align 8
  %rec.fld313 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc309, i32 0, i32 3
  store i1 true, ptr %rec.fld313, align 1
  br label %choice.exit

choice.next277:                                   ; preds = %str.eq.merge297
  %eq.lhs.len316 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len317 = load i64, ptr %eq.lhs.len316, align 8
  %eq.lhs.len318 = and i64 %eq.lhs.len317, 281474976710655
  %str.tag319 = lshr i64 %eq.lhs.len317, 48
  %tag.immortal321 = icmp eq i64 %str.tag319, 0
  br i1 %tag.immortal321, label %str_ok320, label %tag.gen_check322

str_ok282:                                        ; preds = %abort.dead291, %tag.slow_check285, %tag.gen_check284, %choice.next239
  %eq.rhs.len292 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len293 = and i64 %eq.rhs.len292, 281474976710655
  %eq.len294 = icmp eq i64 %eq.lhs.len280, %eq.rhs.len293
  br i1 %eq.len294, label %str.eq.then295, label %str.eq.else296

tag.gen_check284:                                 ; preds = %choice.next239
  %active.gen287 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok288 = icmp eq i64 %str.tag281, %active.gen287
  br i1 %tag.fast.ok288, label %str_ok282, label %tag.slow_check285

tag.slow_check285:                                ; preds = %tag.gen_check284
  %arena.cur289 = call ptr @dva_arena_current()
  %tag.valid290 = call i1 @dva_arena_validate_tag(ptr %arena.cur289, i64 %str.tag281)
  br i1 %tag.valid290, label %str_ok282, label %tag.stale286

tag.stale286:                                     ; preds = %tag.slow_check285
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead291:                                    ; No predecessors!
  br label %str_ok282

str.eq.then295:                                   ; preds = %str_ok282
  %eq.lhs.data298 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data299 = load ptr, ptr %eq.lhs.data298, align 8
  %eq.rhs.data300 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp301 = call i32 @memcmp(ptr %eq.lhs.data299, ptr %eq.rhs.data300, i64 %eq.lhs.len280)
  %eq.cmp.zero302 = icmp eq i32 %eq.memcmp301, 0
  br label %str.eq.merge297

str.eq.else296:                                   ; preds = %str_ok282
  br label %str.eq.merge297

str.eq.merge297:                                  ; preds = %str.eq.else296, %str.eq.then295
  %str.eq.result303 = phi i1 [ %eq.cmp.zero302, %str.eq.then295 ], [ false, %str.eq.else296 ]
  br i1 %str.eq.result303, label %choice.case276, label %choice.next277

choice.case314:                                   ; preds = %str.eq.merge335
  %arena.cur342 = call ptr @dva_arena_current()
  %enum.alloc343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 16)
  %tag.gep344 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc343, i32 0, i32 0
  store i64 10, ptr %tag.gep344, align 8
  %pay.gep345 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc343, i32 0, i32 1
  store ptr null, ptr %pay.gep345, align 8
  %arena.cur346 = call ptr @dva_arena_current()
  %rec.alloc347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld348 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc347, i32 0, i32 0
  store i64 120, ptr %rec.fld348, align 8
  %rec.fld349 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc347, i32 0, i32 1
  store i64 130, ptr %rec.fld349, align 8
  %rec.fld350 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc347, i32 0, i32 2
  store ptr %enum.alloc343, ptr %rec.fld350, align 8
  %rec.fld351 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc347, i32 0, i32 3
  store i1 true, ptr %rec.fld351, align 1
  br label %choice.exit

choice.next315:                                   ; preds = %str.eq.merge335
  %eq.lhs.len354 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len355 = load i64, ptr %eq.lhs.len354, align 8
  %eq.lhs.len356 = and i64 %eq.lhs.len355, 281474976710655
  %str.tag357 = lshr i64 %eq.lhs.len355, 48
  %tag.immortal359 = icmp eq i64 %str.tag357, 0
  br i1 %tag.immortal359, label %str_ok358, label %tag.gen_check360

str_ok320:                                        ; preds = %abort.dead329, %tag.slow_check323, %tag.gen_check322, %choice.next277
  %eq.rhs.len330 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len331 = and i64 %eq.rhs.len330, 281474976710655
  %eq.len332 = icmp eq i64 %eq.lhs.len318, %eq.rhs.len331
  br i1 %eq.len332, label %str.eq.then333, label %str.eq.else334

tag.gen_check322:                                 ; preds = %choice.next277
  %active.gen325 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok326 = icmp eq i64 %str.tag319, %active.gen325
  br i1 %tag.fast.ok326, label %str_ok320, label %tag.slow_check323

tag.slow_check323:                                ; preds = %tag.gen_check322
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag319)
  br i1 %tag.valid328, label %str_ok320, label %tag.stale324

tag.stale324:                                     ; preds = %tag.slow_check323
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead329:                                    ; No predecessors!
  br label %str_ok320

str.eq.then333:                                   ; preds = %str_ok320
  %eq.lhs.data336 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data337 = load ptr, ptr %eq.lhs.data336, align 8
  %eq.rhs.data338 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp339 = call i32 @memcmp(ptr %eq.lhs.data337, ptr %eq.rhs.data338, i64 %eq.lhs.len318)
  %eq.cmp.zero340 = icmp eq i32 %eq.memcmp339, 0
  br label %str.eq.merge335

str.eq.else334:                                   ; preds = %str_ok320
  br label %str.eq.merge335

str.eq.merge335:                                  ; preds = %str.eq.else334, %str.eq.then333
  %str.eq.result341 = phi i1 [ %eq.cmp.zero340, %str.eq.then333 ], [ false, %str.eq.else334 ]
  br i1 %str.eq.result341, label %choice.case314, label %choice.next315

choice.case352:                                   ; preds = %str.eq.merge373
  %arena.cur380 = call ptr @dva_arena_current()
  %enum.alloc381 = call ptr @dva_arena_alloc(ptr %arena.cur380, i64 16)
  %tag.gep382 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc381, i32 0, i32 0
  store i64 9, ptr %tag.gep382, align 8
  %pay.gep383 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc381, i32 0, i32 1
  store ptr null, ptr %pay.gep383, align 8
  %arena.cur384 = call ptr @dva_arena_current()
  %rec.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld386 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc385, i32 0, i32 0
  store i64 120, ptr %rec.fld386, align 8
  %rec.fld387 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc385, i32 0, i32 1
  store i64 130, ptr %rec.fld387, align 8
  %rec.fld388 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc385, i32 0, i32 2
  store ptr %enum.alloc381, ptr %rec.fld388, align 8
  %rec.fld389 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc385, i32 0, i32 3
  store i1 true, ptr %rec.fld389, align 1
  br label %choice.exit

choice.next353:                                   ; preds = %str.eq.merge373
  %eq.lhs.len392 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len393 = load i64, ptr %eq.lhs.len392, align 8
  %eq.lhs.len394 = and i64 %eq.lhs.len393, 281474976710655
  %str.tag395 = lshr i64 %eq.lhs.len393, 48
  %tag.immortal397 = icmp eq i64 %str.tag395, 0
  br i1 %tag.immortal397, label %str_ok396, label %tag.gen_check398

str_ok358:                                        ; preds = %abort.dead367, %tag.slow_check361, %tag.gen_check360, %choice.next315
  %eq.rhs.len368 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len369 = and i64 %eq.rhs.len368, 281474976710655
  %eq.len370 = icmp eq i64 %eq.lhs.len356, %eq.rhs.len369
  br i1 %eq.len370, label %str.eq.then371, label %str.eq.else372

tag.gen_check360:                                 ; preds = %choice.next315
  %active.gen363 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok364 = icmp eq i64 %str.tag357, %active.gen363
  br i1 %tag.fast.ok364, label %str_ok358, label %tag.slow_check361

tag.slow_check361:                                ; preds = %tag.gen_check360
  %arena.cur365 = call ptr @dva_arena_current()
  %tag.valid366 = call i1 @dva_arena_validate_tag(ptr %arena.cur365, i64 %str.tag357)
  br i1 %tag.valid366, label %str_ok358, label %tag.stale362

tag.stale362:                                     ; preds = %tag.slow_check361
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead367:                                    ; No predecessors!
  br label %str_ok358

str.eq.then371:                                   ; preds = %str_ok358
  %eq.lhs.data374 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data375 = load ptr, ptr %eq.lhs.data374, align 8
  %eq.rhs.data376 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp377 = call i32 @memcmp(ptr %eq.lhs.data375, ptr %eq.rhs.data376, i64 %eq.lhs.len356)
  %eq.cmp.zero378 = icmp eq i32 %eq.memcmp377, 0
  br label %str.eq.merge373

str.eq.else372:                                   ; preds = %str_ok358
  br label %str.eq.merge373

str.eq.merge373:                                  ; preds = %str.eq.else372, %str.eq.then371
  %str.eq.result379 = phi i1 [ %eq.cmp.zero378, %str.eq.then371 ], [ false, %str.eq.else372 ]
  br i1 %str.eq.result379, label %choice.case352, label %choice.next353

choice.case390:                                   ; preds = %str.eq.merge411
  %arena.cur418 = call ptr @dva_arena_current()
  %enum.alloc419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %tag.gep420 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc419, i32 0, i32 0
  store i64 8, ptr %tag.gep420, align 8
  %pay.gep421 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc419, i32 0, i32 1
  store ptr null, ptr %pay.gep421, align 8
  %arena.cur422 = call ptr @dva_arena_current()
  %rec.alloc423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld424 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc423, i32 0, i32 0
  store i64 120, ptr %rec.fld424, align 8
  %rec.fld425 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc423, i32 0, i32 1
  store i64 130, ptr %rec.fld425, align 8
  %rec.fld426 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc423, i32 0, i32 2
  store ptr %enum.alloc419, ptr %rec.fld426, align 8
  %rec.fld427 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc423, i32 0, i32 3
  store i1 true, ptr %rec.fld427, align 1
  br label %choice.exit

choice.next391:                                   ; preds = %str.eq.merge411
  %eq.lhs.len430 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len431 = load i64, ptr %eq.lhs.len430, align 8
  %eq.lhs.len432 = and i64 %eq.lhs.len431, 281474976710655
  %str.tag433 = lshr i64 %eq.lhs.len431, 48
  %tag.immortal435 = icmp eq i64 %str.tag433, 0
  br i1 %tag.immortal435, label %str_ok434, label %tag.gen_check436

str_ok396:                                        ; preds = %abort.dead405, %tag.slow_check399, %tag.gen_check398, %choice.next353
  %eq.rhs.len406 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len407 = and i64 %eq.rhs.len406, 281474976710655
  %eq.len408 = icmp eq i64 %eq.lhs.len394, %eq.rhs.len407
  br i1 %eq.len408, label %str.eq.then409, label %str.eq.else410

tag.gen_check398:                                 ; preds = %choice.next353
  %active.gen401 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok402 = icmp eq i64 %str.tag395, %active.gen401
  br i1 %tag.fast.ok402, label %str_ok396, label %tag.slow_check399

tag.slow_check399:                                ; preds = %tag.gen_check398
  %arena.cur403 = call ptr @dva_arena_current()
  %tag.valid404 = call i1 @dva_arena_validate_tag(ptr %arena.cur403, i64 %str.tag395)
  br i1 %tag.valid404, label %str_ok396, label %tag.stale400

tag.stale400:                                     ; preds = %tag.slow_check399
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead405:                                    ; No predecessors!
  br label %str_ok396

str.eq.then409:                                   ; preds = %str_ok396
  %eq.lhs.data412 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data413 = load ptr, ptr %eq.lhs.data412, align 8
  %eq.rhs.data414 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp415 = call i32 @memcmp(ptr %eq.lhs.data413, ptr %eq.rhs.data414, i64 %eq.lhs.len394)
  %eq.cmp.zero416 = icmp eq i32 %eq.memcmp415, 0
  br label %str.eq.merge411

str.eq.else410:                                   ; preds = %str_ok396
  br label %str.eq.merge411

str.eq.merge411:                                  ; preds = %str.eq.else410, %str.eq.then409
  %str.eq.result417 = phi i1 [ %eq.cmp.zero416, %str.eq.then409 ], [ false, %str.eq.else410 ]
  br i1 %str.eq.result417, label %choice.case390, label %choice.next391

choice.case428:                                   ; preds = %str.eq.merge449
  %arena.cur456 = call ptr @dva_arena_current()
  %enum.alloc457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 16)
  %tag.gep458 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc457, i32 0, i32 0
  store i64 22, ptr %tag.gep458, align 8
  %pay.gep459 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc457, i32 0, i32 1
  store ptr null, ptr %pay.gep459, align 8
  %arena.cur460 = call ptr @dva_arena_current()
  %rec.alloc461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld462 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc461, i32 0, i32 0
  store i64 130, ptr %rec.fld462, align 8
  %rec.fld463 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc461, i32 0, i32 1
  store i64 140, ptr %rec.fld463, align 8
  %rec.fld464 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc461, i32 0, i32 2
  store ptr %enum.alloc457, ptr %rec.fld464, align 8
  %rec.fld465 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc461, i32 0, i32 3
  store i1 false, ptr %rec.fld465, align 1
  br label %choice.exit

choice.next429:                                   ; preds = %str.eq.merge449
  %eq.lhs.len468 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len469 = load i64, ptr %eq.lhs.len468, align 8
  %eq.lhs.len470 = and i64 %eq.lhs.len469, 281474976710655
  %str.tag471 = lshr i64 %eq.lhs.len469, 48
  %tag.immortal473 = icmp eq i64 %str.tag471, 0
  br i1 %tag.immortal473, label %str_ok472, label %tag.gen_check474

str_ok434:                                        ; preds = %abort.dead443, %tag.slow_check437, %tag.gen_check436, %choice.next391
  %eq.rhs.len444 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len445 = and i64 %eq.rhs.len444, 281474976710655
  %eq.len446 = icmp eq i64 %eq.lhs.len432, %eq.rhs.len445
  br i1 %eq.len446, label %str.eq.then447, label %str.eq.else448

tag.gen_check436:                                 ; preds = %choice.next391
  %active.gen439 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok440 = icmp eq i64 %str.tag433, %active.gen439
  br i1 %tag.fast.ok440, label %str_ok434, label %tag.slow_check437

tag.slow_check437:                                ; preds = %tag.gen_check436
  %arena.cur441 = call ptr @dva_arena_current()
  %tag.valid442 = call i1 @dva_arena_validate_tag(ptr %arena.cur441, i64 %str.tag433)
  br i1 %tag.valid442, label %str_ok434, label %tag.stale438

tag.stale438:                                     ; preds = %tag.slow_check437
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead443:                                    ; No predecessors!
  br label %str_ok434

str.eq.then447:                                   ; preds = %str_ok434
  %eq.lhs.data450 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data451 = load ptr, ptr %eq.lhs.data450, align 8
  %eq.rhs.data452 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp453 = call i32 @memcmp(ptr %eq.lhs.data451, ptr %eq.rhs.data452, i64 %eq.lhs.len432)
  %eq.cmp.zero454 = icmp eq i32 %eq.memcmp453, 0
  br label %str.eq.merge449

str.eq.else448:                                   ; preds = %str_ok434
  br label %str.eq.merge449

str.eq.merge449:                                  ; preds = %str.eq.else448, %str.eq.then447
  %str.eq.result455 = phi i1 [ %eq.cmp.zero454, %str.eq.then447 ], [ false, %str.eq.else448 ]
  br i1 %str.eq.result455, label %choice.case428, label %choice.next429

choice.case466:                                   ; preds = %str.eq.merge487
  %arena.cur494 = call ptr @dva_arena_current()
  %enum.alloc495 = call ptr @dva_arena_alloc(ptr %arena.cur494, i64 16)
  %tag.gep496 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc495, i32 0, i32 0
  store i64 23, ptr %tag.gep496, align 8
  %pay.gep497 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc495, i32 0, i32 1
  store ptr null, ptr %pay.gep497, align 8
  %arena.cur498 = call ptr @dva_arena_current()
  %rec.alloc499 = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld500 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc499, i32 0, i32 0
  store i64 130, ptr %rec.fld500, align 8
  %rec.fld501 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc499, i32 0, i32 1
  store i64 140, ptr %rec.fld501, align 8
  %rec.fld502 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc499, i32 0, i32 2
  store ptr %enum.alloc495, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc499, i32 0, i32 3
  store i1 false, ptr %rec.fld503, align 1
  br label %choice.exit

choice.next467:                                   ; preds = %str.eq.merge487
  %eq.lhs.len506 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len507 = load i64, ptr %eq.lhs.len506, align 8
  %eq.lhs.len508 = and i64 %eq.lhs.len507, 281474976710655
  %str.tag509 = lshr i64 %eq.lhs.len507, 48
  %tag.immortal511 = icmp eq i64 %str.tag509, 0
  br i1 %tag.immortal511, label %str_ok510, label %tag.gen_check512

str_ok472:                                        ; preds = %abort.dead481, %tag.slow_check475, %tag.gen_check474, %choice.next429
  %eq.rhs.len482 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len483 = and i64 %eq.rhs.len482, 281474976710655
  %eq.len484 = icmp eq i64 %eq.lhs.len470, %eq.rhs.len483
  br i1 %eq.len484, label %str.eq.then485, label %str.eq.else486

tag.gen_check474:                                 ; preds = %choice.next429
  %active.gen477 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok478 = icmp eq i64 %str.tag471, %active.gen477
  br i1 %tag.fast.ok478, label %str_ok472, label %tag.slow_check475

tag.slow_check475:                                ; preds = %tag.gen_check474
  %arena.cur479 = call ptr @dva_arena_current()
  %tag.valid480 = call i1 @dva_arena_validate_tag(ptr %arena.cur479, i64 %str.tag471)
  br i1 %tag.valid480, label %str_ok472, label %tag.stale476

tag.stale476:                                     ; preds = %tag.slow_check475
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead481:                                    ; No predecessors!
  br label %str_ok472

str.eq.then485:                                   ; preds = %str_ok472
  %eq.lhs.data488 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data489 = load ptr, ptr %eq.lhs.data488, align 8
  %eq.rhs.data490 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp491 = call i32 @memcmp(ptr %eq.lhs.data489, ptr %eq.rhs.data490, i64 %eq.lhs.len470)
  %eq.cmp.zero492 = icmp eq i32 %eq.memcmp491, 0
  br label %str.eq.merge487

str.eq.else486:                                   ; preds = %str_ok472
  br label %str.eq.merge487

str.eq.merge487:                                  ; preds = %str.eq.else486, %str.eq.then485
  %str.eq.result493 = phi i1 [ %eq.cmp.zero492, %str.eq.then485 ], [ false, %str.eq.else486 ]
  br i1 %str.eq.result493, label %choice.case466, label %choice.next467

choice.case504:                                   ; preds = %str.eq.merge525
  %arena.cur532 = call ptr @dva_arena_current()
  %enum.alloc533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 16)
  %tag.gep534 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc533, i32 0, i32 0
  store i64 0, ptr %tag.gep534, align 8
  %pay.gep535 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc533, i32 0, i32 1
  store ptr null, ptr %pay.gep535, align 8
  %arena.cur536 = call ptr @dva_arena_current()
  %rec.alloc537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld538 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc537, i32 0, i32 0
  store i64 140, ptr %rec.fld538, align 8
  %rec.fld539 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc537, i32 0, i32 1
  store i64 150, ptr %rec.fld539, align 8
  %rec.fld540 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc537, i32 0, i32 2
  store ptr %enum.alloc533, ptr %rec.fld540, align 8
  %rec.fld541 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc537, i32 0, i32 3
  store i1 false, ptr %rec.fld541, align 1
  br label %choice.exit

choice.next505:                                   ; preds = %str.eq.merge525
  %eq.lhs.len544 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len545 = load i64, ptr %eq.lhs.len544, align 8
  %eq.lhs.len546 = and i64 %eq.lhs.len545, 281474976710655
  %str.tag547 = lshr i64 %eq.lhs.len545, 48
  %tag.immortal549 = icmp eq i64 %str.tag547, 0
  br i1 %tag.immortal549, label %str_ok548, label %tag.gen_check550

str_ok510:                                        ; preds = %abort.dead519, %tag.slow_check513, %tag.gen_check512, %choice.next467
  %eq.rhs.len520 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len521 = and i64 %eq.rhs.len520, 281474976710655
  %eq.len522 = icmp eq i64 %eq.lhs.len508, %eq.rhs.len521
  br i1 %eq.len522, label %str.eq.then523, label %str.eq.else524

tag.gen_check512:                                 ; preds = %choice.next467
  %active.gen515 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok516 = icmp eq i64 %str.tag509, %active.gen515
  br i1 %tag.fast.ok516, label %str_ok510, label %tag.slow_check513

tag.slow_check513:                                ; preds = %tag.gen_check512
  %arena.cur517 = call ptr @dva_arena_current()
  %tag.valid518 = call i1 @dva_arena_validate_tag(ptr %arena.cur517, i64 %str.tag509)
  br i1 %tag.valid518, label %str_ok510, label %tag.stale514

tag.stale514:                                     ; preds = %tag.slow_check513
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead519:                                    ; No predecessors!
  br label %str_ok510

str.eq.then523:                                   ; preds = %str_ok510
  %eq.lhs.data526 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data527 = load ptr, ptr %eq.lhs.data526, align 8
  %eq.rhs.data528 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp529 = call i32 @memcmp(ptr %eq.lhs.data527, ptr %eq.rhs.data528, i64 %eq.lhs.len508)
  %eq.cmp.zero530 = icmp eq i32 %eq.memcmp529, 0
  br label %str.eq.merge525

str.eq.else524:                                   ; preds = %str_ok510
  br label %str.eq.merge525

str.eq.merge525:                                  ; preds = %str.eq.else524, %str.eq.then523
  %str.eq.result531 = phi i1 [ %eq.cmp.zero530, %str.eq.then523 ], [ false, %str.eq.else524 ]
  br i1 %str.eq.result531, label %choice.case504, label %choice.next505

choice.case542:                                   ; preds = %str.eq.merge563
  %arena.cur570 = call ptr @dva_arena_current()
  %enum.alloc571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 16)
  %tag.gep572 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc571, i32 0, i32 0
  store i64 1, ptr %tag.gep572, align 8
  %pay.gep573 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc571, i32 0, i32 1
  store ptr null, ptr %pay.gep573, align 8
  %arena.cur574 = call ptr @dva_arena_current()
  %rec.alloc575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld576 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc575, i32 0, i32 0
  store i64 140, ptr %rec.fld576, align 8
  %rec.fld577 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc575, i32 0, i32 1
  store i64 150, ptr %rec.fld577, align 8
  %rec.fld578 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc575, i32 0, i32 2
  store ptr %enum.alloc571, ptr %rec.fld578, align 8
  %rec.fld579 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc575, i32 0, i32 3
  store i1 false, ptr %rec.fld579, align 1
  br label %choice.exit

choice.next543:                                   ; preds = %str.eq.merge563
  %eq.lhs.len582 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len583 = load i64, ptr %eq.lhs.len582, align 8
  %eq.lhs.len584 = and i64 %eq.lhs.len583, 281474976710655
  %str.tag585 = lshr i64 %eq.lhs.len583, 48
  %tag.immortal587 = icmp eq i64 %str.tag585, 0
  br i1 %tag.immortal587, label %str_ok586, label %tag.gen_check588

str_ok548:                                        ; preds = %abort.dead557, %tag.slow_check551, %tag.gen_check550, %choice.next505
  %eq.rhs.len558 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len559 = and i64 %eq.rhs.len558, 281474976710655
  %eq.len560 = icmp eq i64 %eq.lhs.len546, %eq.rhs.len559
  br i1 %eq.len560, label %str.eq.then561, label %str.eq.else562

tag.gen_check550:                                 ; preds = %choice.next505
  %active.gen553 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok554 = icmp eq i64 %str.tag547, %active.gen553
  br i1 %tag.fast.ok554, label %str_ok548, label %tag.slow_check551

tag.slow_check551:                                ; preds = %tag.gen_check550
  %arena.cur555 = call ptr @dva_arena_current()
  %tag.valid556 = call i1 @dva_arena_validate_tag(ptr %arena.cur555, i64 %str.tag547)
  br i1 %tag.valid556, label %str_ok548, label %tag.stale552

tag.stale552:                                     ; preds = %tag.slow_check551
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead557:                                    ; No predecessors!
  br label %str_ok548

str.eq.then561:                                   ; preds = %str_ok548
  %eq.lhs.data564 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data565 = load ptr, ptr %eq.lhs.data564, align 8
  %eq.rhs.data566 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp567 = call i32 @memcmp(ptr %eq.lhs.data565, ptr %eq.rhs.data566, i64 %eq.lhs.len546)
  %eq.cmp.zero568 = icmp eq i32 %eq.memcmp567, 0
  br label %str.eq.merge563

str.eq.else562:                                   ; preds = %str_ok548
  br label %str.eq.merge563

str.eq.merge563:                                  ; preds = %str.eq.else562, %str.eq.then561
  %str.eq.result569 = phi i1 [ %eq.cmp.zero568, %str.eq.then561 ], [ false, %str.eq.else562 ]
  br i1 %str.eq.result569, label %choice.case542, label %choice.next543

choice.case580:                                   ; preds = %str.eq.merge601
  %arena.cur608 = call ptr @dva_arena_current()
  %enum.alloc609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 16)
  %tag.gep610 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc609, i32 0, i32 0
  store i64 13, ptr %tag.gep610, align 8
  %pay.gep611 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc609, i32 0, i32 1
  store ptr null, ptr %pay.gep611, align 8
  %arena.cur612 = call ptr @dva_arena_current()
  %rec.alloc613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld614 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc613, i32 0, i32 0
  store i64 40, ptr %rec.fld614, align 8
  %rec.fld615 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc613, i32 0, i32 1
  store i64 50, ptr %rec.fld615, align 8
  %rec.fld616 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc613, i32 0, i32 2
  store ptr %enum.alloc609, ptr %rec.fld616, align 8
  %rec.fld617 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc613, i32 0, i32 3
  store i1 false, ptr %rec.fld617, align 1
  br label %choice.exit

choice.next581:                                   ; preds = %str.eq.merge601
  %eq.lhs.len620 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len621 = load i64, ptr %eq.lhs.len620, align 8
  %eq.lhs.len622 = and i64 %eq.lhs.len621, 281474976710655
  %str.tag623 = lshr i64 %eq.lhs.len621, 48
  %tag.immortal625 = icmp eq i64 %str.tag623, 0
  br i1 %tag.immortal625, label %str_ok624, label %tag.gen_check626

str_ok586:                                        ; preds = %abort.dead595, %tag.slow_check589, %tag.gen_check588, %choice.next543
  %eq.rhs.len596 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len597 = and i64 %eq.rhs.len596, 281474976710655
  %eq.len598 = icmp eq i64 %eq.lhs.len584, %eq.rhs.len597
  br i1 %eq.len598, label %str.eq.then599, label %str.eq.else600

tag.gen_check588:                                 ; preds = %choice.next543
  %active.gen591 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok592 = icmp eq i64 %str.tag585, %active.gen591
  br i1 %tag.fast.ok592, label %str_ok586, label %tag.slow_check589

tag.slow_check589:                                ; preds = %tag.gen_check588
  %arena.cur593 = call ptr @dva_arena_current()
  %tag.valid594 = call i1 @dva_arena_validate_tag(ptr %arena.cur593, i64 %str.tag585)
  br i1 %tag.valid594, label %str_ok586, label %tag.stale590

tag.stale590:                                     ; preds = %tag.slow_check589
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead595:                                    ; No predecessors!
  br label %str_ok586

str.eq.then599:                                   ; preds = %str_ok586
  %eq.lhs.data602 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data603 = load ptr, ptr %eq.lhs.data602, align 8
  %eq.rhs.data604 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp605 = call i32 @memcmp(ptr %eq.lhs.data603, ptr %eq.rhs.data604, i64 %eq.lhs.len584)
  %eq.cmp.zero606 = icmp eq i32 %eq.memcmp605, 0
  br label %str.eq.merge601

str.eq.else600:                                   ; preds = %str_ok586
  br label %str.eq.merge601

str.eq.merge601:                                  ; preds = %str.eq.else600, %str.eq.then599
  %str.eq.result607 = phi i1 [ %eq.cmp.zero606, %str.eq.then599 ], [ false, %str.eq.else600 ]
  br i1 %str.eq.result607, label %choice.case580, label %choice.next581

choice.case618:                                   ; preds = %str.eq.merge639
  %arena.cur646 = call ptr @dva_arena_current()
  %enum.alloc647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 16)
  %tag.gep648 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc647, i32 0, i32 0
  store i64 15, ptr %tag.gep648, align 8
  %pay.gep649 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc647, i32 0, i32 1
  store ptr null, ptr %pay.gep649, align 8
  %arena.cur650 = call ptr @dva_arena_current()
  %rec.alloc651 = call ptr @dva_arena_alloc(ptr %arena.cur650, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld652 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc651, i32 0, i32 0
  store i64 40, ptr %rec.fld652, align 8
  %rec.fld653 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc651, i32 0, i32 1
  store i64 50, ptr %rec.fld653, align 8
  %rec.fld654 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc651, i32 0, i32 2
  store ptr %enum.alloc647, ptr %rec.fld654, align 8
  %rec.fld655 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc651, i32 0, i32 3
  store i1 false, ptr %rec.fld655, align 1
  br label %choice.exit

choice.next619:                                   ; preds = %str.eq.merge639
  %eq.lhs.len658 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len659 = load i64, ptr %eq.lhs.len658, align 8
  %eq.lhs.len660 = and i64 %eq.lhs.len659, 281474976710655
  %str.tag661 = lshr i64 %eq.lhs.len659, 48
  %tag.immortal663 = icmp eq i64 %str.tag661, 0
  br i1 %tag.immortal663, label %str_ok662, label %tag.gen_check664

str_ok624:                                        ; preds = %abort.dead633, %tag.slow_check627, %tag.gen_check626, %choice.next581
  %eq.rhs.len634 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len635 = and i64 %eq.rhs.len634, 281474976710655
  %eq.len636 = icmp eq i64 %eq.lhs.len622, %eq.rhs.len635
  br i1 %eq.len636, label %str.eq.then637, label %str.eq.else638

tag.gen_check626:                                 ; preds = %choice.next581
  %active.gen629 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok630 = icmp eq i64 %str.tag623, %active.gen629
  br i1 %tag.fast.ok630, label %str_ok624, label %tag.slow_check627

tag.slow_check627:                                ; preds = %tag.gen_check626
  %arena.cur631 = call ptr @dva_arena_current()
  %tag.valid632 = call i1 @dva_arena_validate_tag(ptr %arena.cur631, i64 %str.tag623)
  br i1 %tag.valid632, label %str_ok624, label %tag.stale628

tag.stale628:                                     ; preds = %tag.slow_check627
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead633:                                    ; No predecessors!
  br label %str_ok624

str.eq.then637:                                   ; preds = %str_ok624
  %eq.lhs.data640 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data641 = load ptr, ptr %eq.lhs.data640, align 8
  %eq.rhs.data642 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp643 = call i32 @memcmp(ptr %eq.lhs.data641, ptr %eq.rhs.data642, i64 %eq.lhs.len622)
  %eq.cmp.zero644 = icmp eq i32 %eq.memcmp643, 0
  br label %str.eq.merge639

str.eq.else638:                                   ; preds = %str_ok624
  br label %str.eq.merge639

str.eq.merge639:                                  ; preds = %str.eq.else638, %str.eq.then637
  %str.eq.result645 = phi i1 [ %eq.cmp.zero644, %str.eq.then637 ], [ false, %str.eq.else638 ]
  br i1 %str.eq.result645, label %choice.case618, label %choice.next619

choice.case656:                                   ; preds = %str.eq.merge677
  %arena.cur684 = call ptr @dva_arena_current()
  %enum.alloc685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 16)
  %tag.gep686 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc685, i32 0, i32 0
  store i64 16, ptr %tag.gep686, align 8
  %pay.gep687 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc685, i32 0, i32 1
  store ptr null, ptr %pay.gep687, align 8
  %arena.cur688 = call ptr @dva_arena_current()
  %rec.alloc689 = call ptr @dva_arena_alloc(ptr %arena.cur688, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld690 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc689, i32 0, i32 0
  store i64 40, ptr %rec.fld690, align 8
  %rec.fld691 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc689, i32 0, i32 1
  store i64 50, ptr %rec.fld691, align 8
  %rec.fld692 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc689, i32 0, i32 2
  store ptr %enum.alloc685, ptr %rec.fld692, align 8
  %rec.fld693 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc689, i32 0, i32 3
  store i1 false, ptr %rec.fld693, align 1
  br label %choice.exit

choice.next657:                                   ; preds = %str.eq.merge677
  %eq.lhs.len696 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len697 = load i64, ptr %eq.lhs.len696, align 8
  %eq.lhs.len698 = and i64 %eq.lhs.len697, 281474976710655
  %str.tag699 = lshr i64 %eq.lhs.len697, 48
  %tag.immortal701 = icmp eq i64 %str.tag699, 0
  br i1 %tag.immortal701, label %str_ok700, label %tag.gen_check702

str_ok662:                                        ; preds = %abort.dead671, %tag.slow_check665, %tag.gen_check664, %choice.next619
  %eq.rhs.len672 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len673 = and i64 %eq.rhs.len672, 281474976710655
  %eq.len674 = icmp eq i64 %eq.lhs.len660, %eq.rhs.len673
  br i1 %eq.len674, label %str.eq.then675, label %str.eq.else676

tag.gen_check664:                                 ; preds = %choice.next619
  %active.gen667 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok668 = icmp eq i64 %str.tag661, %active.gen667
  br i1 %tag.fast.ok668, label %str_ok662, label %tag.slow_check665

tag.slow_check665:                                ; preds = %tag.gen_check664
  %arena.cur669 = call ptr @dva_arena_current()
  %tag.valid670 = call i1 @dva_arena_validate_tag(ptr %arena.cur669, i64 %str.tag661)
  br i1 %tag.valid670, label %str_ok662, label %tag.stale666

tag.stale666:                                     ; preds = %tag.slow_check665
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead671:                                    ; No predecessors!
  br label %str_ok662

str.eq.then675:                                   ; preds = %str_ok662
  %eq.lhs.data678 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data679 = load ptr, ptr %eq.lhs.data678, align 8
  %eq.rhs.data680 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp681 = call i32 @memcmp(ptr %eq.lhs.data679, ptr %eq.rhs.data680, i64 %eq.lhs.len660)
  %eq.cmp.zero682 = icmp eq i32 %eq.memcmp681, 0
  br label %str.eq.merge677

str.eq.else676:                                   ; preds = %str_ok662
  br label %str.eq.merge677

str.eq.merge677:                                  ; preds = %str.eq.else676, %str.eq.then675
  %str.eq.result683 = phi i1 [ %eq.cmp.zero682, %str.eq.then675 ], [ false, %str.eq.else676 ]
  br i1 %str.eq.result683, label %choice.case656, label %choice.next657

choice.case694:                                   ; preds = %str.eq.merge715
  %arena.cur722 = call ptr @dva_arena_current()
  %enum.alloc723 = call ptr @dva_arena_alloc(ptr %arena.cur722, i64 16)
  %tag.gep724 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc723, i32 0, i32 0
  store i64 17, ptr %tag.gep724, align 8
  %pay.gep725 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc723, i32 0, i32 1
  store ptr null, ptr %pay.gep725, align 8
  %arena.cur726 = call ptr @dva_arena_current()
  %rec.alloc727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld728 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc727, i32 0, i32 0
  store i64 40, ptr %rec.fld728, align 8
  %rec.fld729 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc727, i32 0, i32 1
  store i64 50, ptr %rec.fld729, align 8
  %rec.fld730 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc727, i32 0, i32 2
  store ptr %enum.alloc723, ptr %rec.fld730, align 8
  %rec.fld731 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc727, i32 0, i32 3
  store i1 false, ptr %rec.fld731, align 1
  br label %choice.exit

choice.next695:                                   ; preds = %str.eq.merge715
  %eq.lhs.len734 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len735 = load i64, ptr %eq.lhs.len734, align 8
  %eq.lhs.len736 = and i64 %eq.lhs.len735, 281474976710655
  %str.tag737 = lshr i64 %eq.lhs.len735, 48
  %tag.immortal739 = icmp eq i64 %str.tag737, 0
  br i1 %tag.immortal739, label %str_ok738, label %tag.gen_check740

str_ok700:                                        ; preds = %abort.dead709, %tag.slow_check703, %tag.gen_check702, %choice.next657
  %eq.rhs.len710 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len711 = and i64 %eq.rhs.len710, 281474976710655
  %eq.len712 = icmp eq i64 %eq.lhs.len698, %eq.rhs.len711
  br i1 %eq.len712, label %str.eq.then713, label %str.eq.else714

tag.gen_check702:                                 ; preds = %choice.next657
  %active.gen705 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok706 = icmp eq i64 %str.tag699, %active.gen705
  br i1 %tag.fast.ok706, label %str_ok700, label %tag.slow_check703

tag.slow_check703:                                ; preds = %tag.gen_check702
  %arena.cur707 = call ptr @dva_arena_current()
  %tag.valid708 = call i1 @dva_arena_validate_tag(ptr %arena.cur707, i64 %str.tag699)
  br i1 %tag.valid708, label %str_ok700, label %tag.stale704

tag.stale704:                                     ; preds = %tag.slow_check703
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead709:                                    ; No predecessors!
  br label %str_ok700

str.eq.then713:                                   ; preds = %str_ok700
  %eq.lhs.data716 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data717 = load ptr, ptr %eq.lhs.data716, align 8
  %eq.rhs.data718 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp719 = call i32 @memcmp(ptr %eq.lhs.data717, ptr %eq.rhs.data718, i64 %eq.lhs.len698)
  %eq.cmp.zero720 = icmp eq i32 %eq.memcmp719, 0
  br label %str.eq.merge715

str.eq.else714:                                   ; preds = %str_ok700
  br label %str.eq.merge715

str.eq.merge715:                                  ; preds = %str.eq.else714, %str.eq.then713
  %str.eq.result721 = phi i1 [ %eq.cmp.zero720, %str.eq.then713 ], [ false, %str.eq.else714 ]
  br i1 %str.eq.result721, label %choice.case694, label %choice.next695

choice.case732:                                   ; preds = %str.eq.merge753
  %arena.cur760 = call ptr @dva_arena_current()
  %enum.alloc761 = call ptr @dva_arena_alloc(ptr %arena.cur760, i64 16)
  %tag.gep762 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc761, i32 0, i32 0
  store i64 18, ptr %tag.gep762, align 8
  %pay.gep763 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc761, i32 0, i32 1
  store ptr null, ptr %pay.gep763, align 8
  %arena.cur764 = call ptr @dva_arena_current()
  %rec.alloc765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld766 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc765, i32 0, i32 0
  store i64 40, ptr %rec.fld766, align 8
  %rec.fld767 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc765, i32 0, i32 1
  store i64 50, ptr %rec.fld767, align 8
  %rec.fld768 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc765, i32 0, i32 2
  store ptr %enum.alloc761, ptr %rec.fld768, align 8
  %rec.fld769 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc765, i32 0, i32 3
  store i1 false, ptr %rec.fld769, align 1
  br label %choice.exit

choice.next733:                                   ; preds = %str.eq.merge753
  %eq.lhs.len772 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len773 = load i64, ptr %eq.lhs.len772, align 8
  %eq.lhs.len774 = and i64 %eq.lhs.len773, 281474976710655
  %str.tag775 = lshr i64 %eq.lhs.len773, 48
  %tag.immortal777 = icmp eq i64 %str.tag775, 0
  br i1 %tag.immortal777, label %str_ok776, label %tag.gen_check778

str_ok738:                                        ; preds = %abort.dead747, %tag.slow_check741, %tag.gen_check740, %choice.next695
  %eq.rhs.len748 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len749 = and i64 %eq.rhs.len748, 281474976710655
  %eq.len750 = icmp eq i64 %eq.lhs.len736, %eq.rhs.len749
  br i1 %eq.len750, label %str.eq.then751, label %str.eq.else752

tag.gen_check740:                                 ; preds = %choice.next695
  %active.gen743 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok744 = icmp eq i64 %str.tag737, %active.gen743
  br i1 %tag.fast.ok744, label %str_ok738, label %tag.slow_check741

tag.slow_check741:                                ; preds = %tag.gen_check740
  %arena.cur745 = call ptr @dva_arena_current()
  %tag.valid746 = call i1 @dva_arena_validate_tag(ptr %arena.cur745, i64 %str.tag737)
  br i1 %tag.valid746, label %str_ok738, label %tag.stale742

tag.stale742:                                     ; preds = %tag.slow_check741
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead747:                                    ; No predecessors!
  br label %str_ok738

str.eq.then751:                                   ; preds = %str_ok738
  %eq.lhs.data754 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data755 = load ptr, ptr %eq.lhs.data754, align 8
  %eq.rhs.data756 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp757 = call i32 @memcmp(ptr %eq.lhs.data755, ptr %eq.rhs.data756, i64 %eq.lhs.len736)
  %eq.cmp.zero758 = icmp eq i32 %eq.memcmp757, 0
  br label %str.eq.merge753

str.eq.else752:                                   ; preds = %str_ok738
  br label %str.eq.merge753

str.eq.merge753:                                  ; preds = %str.eq.else752, %str.eq.then751
  %str.eq.result759 = phi i1 [ %eq.cmp.zero758, %str.eq.then751 ], [ false, %str.eq.else752 ]
  br i1 %str.eq.result759, label %choice.case732, label %choice.next733

choice.case770:                                   ; preds = %str.eq.merge791
  %arena.cur798 = call ptr @dva_arena_current()
  %enum.alloc799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 16)
  %tag.gep800 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc799, i32 0, i32 0
  store i64 2, ptr %tag.gep800, align 8
  %pay.gep801 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc799, i32 0, i32 1
  store ptr null, ptr %pay.gep801, align 8
  %arena.cur802 = call ptr @dva_arena_current()
  %rec.alloc803 = call ptr @dva_arena_alloc(ptr %arena.cur802, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld804 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc803, i32 0, i32 0
  store i64 150, ptr %rec.fld804, align 8
  %rec.fld805 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc803, i32 0, i32 1
  store i64 160, ptr %rec.fld805, align 8
  %rec.fld806 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc803, i32 0, i32 2
  store ptr %enum.alloc799, ptr %rec.fld806, align 8
  %rec.fld807 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc803, i32 0, i32 3
  store i1 false, ptr %rec.fld807, align 1
  br label %choice.exit

choice.next771:                                   ; preds = %str.eq.merge791
  %eq.lhs.len810 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len811 = load i64, ptr %eq.lhs.len810, align 8
  %eq.lhs.len812 = and i64 %eq.lhs.len811, 281474976710655
  %str.tag813 = lshr i64 %eq.lhs.len811, 48
  %tag.immortal815 = icmp eq i64 %str.tag813, 0
  br i1 %tag.immortal815, label %str_ok814, label %tag.gen_check816

str_ok776:                                        ; preds = %abort.dead785, %tag.slow_check779, %tag.gen_check778, %choice.next733
  %eq.rhs.len786 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len787 = and i64 %eq.rhs.len786, 281474976710655
  %eq.len788 = icmp eq i64 %eq.lhs.len774, %eq.rhs.len787
  br i1 %eq.len788, label %str.eq.then789, label %str.eq.else790

tag.gen_check778:                                 ; preds = %choice.next733
  %active.gen781 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok782 = icmp eq i64 %str.tag775, %active.gen781
  br i1 %tag.fast.ok782, label %str_ok776, label %tag.slow_check779

tag.slow_check779:                                ; preds = %tag.gen_check778
  %arena.cur783 = call ptr @dva_arena_current()
  %tag.valid784 = call i1 @dva_arena_validate_tag(ptr %arena.cur783, i64 %str.tag775)
  br i1 %tag.valid784, label %str_ok776, label %tag.stale780

tag.stale780:                                     ; preds = %tag.slow_check779
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead785:                                    ; No predecessors!
  br label %str_ok776

str.eq.then789:                                   ; preds = %str_ok776
  %eq.lhs.data792 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data793 = load ptr, ptr %eq.lhs.data792, align 8
  %eq.rhs.data794 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp795 = call i32 @memcmp(ptr %eq.lhs.data793, ptr %eq.rhs.data794, i64 %eq.lhs.len774)
  %eq.cmp.zero796 = icmp eq i32 %eq.memcmp795, 0
  br label %str.eq.merge791

str.eq.else790:                                   ; preds = %str_ok776
  br label %str.eq.merge791

str.eq.merge791:                                  ; preds = %str.eq.else790, %str.eq.then789
  %str.eq.result797 = phi i1 [ %eq.cmp.zero796, %str.eq.then789 ], [ false, %str.eq.else790 ]
  br i1 %str.eq.result797, label %choice.case770, label %choice.next771

choice.case808:                                   ; preds = %str.eq.merge829
  %arena.cur836 = call ptr @dva_arena_current()
  %enum.alloc837 = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 16)
  %tag.gep838 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc837, i32 0, i32 0
  store i64 3, ptr %tag.gep838, align 8
  %pay.gep839 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc837, i32 0, i32 1
  store ptr null, ptr %pay.gep839, align 8
  %arena.cur840 = call ptr @dva_arena_current()
  %rec.alloc841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld842 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc841, i32 0, i32 0
  store i64 150, ptr %rec.fld842, align 8
  %rec.fld843 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc841, i32 0, i32 1
  store i64 160, ptr %rec.fld843, align 8
  %rec.fld844 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc841, i32 0, i32 2
  store ptr %enum.alloc837, ptr %rec.fld844, align 8
  %rec.fld845 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc841, i32 0, i32 3
  store i1 false, ptr %rec.fld845, align 1
  br label %choice.exit

choice.next809:                                   ; preds = %str.eq.merge829
  %eq.lhs.len848 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len849 = load i64, ptr %eq.lhs.len848, align 8
  %eq.lhs.len850 = and i64 %eq.lhs.len849, 281474976710655
  %str.tag851 = lshr i64 %eq.lhs.len849, 48
  %tag.immortal853 = icmp eq i64 %str.tag851, 0
  br i1 %tag.immortal853, label %str_ok852, label %tag.gen_check854

str_ok814:                                        ; preds = %abort.dead823, %tag.slow_check817, %tag.gen_check816, %choice.next771
  %eq.rhs.len824 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len825 = and i64 %eq.rhs.len824, 281474976710655
  %eq.len826 = icmp eq i64 %eq.lhs.len812, %eq.rhs.len825
  br i1 %eq.len826, label %str.eq.then827, label %str.eq.else828

tag.gen_check816:                                 ; preds = %choice.next771
  %active.gen819 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok820 = icmp eq i64 %str.tag813, %active.gen819
  br i1 %tag.fast.ok820, label %str_ok814, label %tag.slow_check817

tag.slow_check817:                                ; preds = %tag.gen_check816
  %arena.cur821 = call ptr @dva_arena_current()
  %tag.valid822 = call i1 @dva_arena_validate_tag(ptr %arena.cur821, i64 %str.tag813)
  br i1 %tag.valid822, label %str_ok814, label %tag.stale818

tag.stale818:                                     ; preds = %tag.slow_check817
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead823:                                    ; No predecessors!
  br label %str_ok814

str.eq.then827:                                   ; preds = %str_ok814
  %eq.lhs.data830 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data831 = load ptr, ptr %eq.lhs.data830, align 8
  %eq.rhs.data832 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp833 = call i32 @memcmp(ptr %eq.lhs.data831, ptr %eq.rhs.data832, i64 %eq.lhs.len812)
  %eq.cmp.zero834 = icmp eq i32 %eq.memcmp833, 0
  br label %str.eq.merge829

str.eq.else828:                                   ; preds = %str_ok814
  br label %str.eq.merge829

str.eq.merge829:                                  ; preds = %str.eq.else828, %str.eq.then827
  %str.eq.result835 = phi i1 [ %eq.cmp.zero834, %str.eq.then827 ], [ false, %str.eq.else828 ]
  br i1 %str.eq.result835, label %choice.case808, label %choice.next809

choice.case846:                                   ; preds = %str.eq.merge867
  %arena.cur874 = call ptr @dva_arena_current()
  %enum.alloc875 = call ptr @dva_arena_alloc(ptr %arena.cur874, i64 16)
  %tag.gep876 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc875, i32 0, i32 0
  store i64 4, ptr %tag.gep876, align 8
  %pay.gep877 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc875, i32 0, i32 1
  store ptr null, ptr %pay.gep877, align 8
  %arena.cur878 = call ptr @dva_arena_current()
  %rec.alloc879 = call ptr @dva_arena_alloc(ptr %arena.cur878, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld880 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc879, i32 0, i32 0
  store i64 150, ptr %rec.fld880, align 8
  %rec.fld881 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc879, i32 0, i32 1
  store i64 160, ptr %rec.fld881, align 8
  %rec.fld882 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc879, i32 0, i32 2
  store ptr %enum.alloc875, ptr %rec.fld882, align 8
  %rec.fld883 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc879, i32 0, i32 3
  store i1 false, ptr %rec.fld883, align 1
  br label %choice.exit

choice.next847:                                   ; preds = %str.eq.merge867
  br label %choice.exit

str_ok852:                                        ; preds = %abort.dead861, %tag.slow_check855, %tag.gen_check854, %choice.next809
  %eq.rhs.len862 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len863 = and i64 %eq.rhs.len862, 281474976710655
  %eq.len864 = icmp eq i64 %eq.lhs.len850, %eq.rhs.len863
  br i1 %eq.len864, label %str.eq.then865, label %str.eq.else866

tag.gen_check854:                                 ; preds = %choice.next809
  %active.gen857 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok858 = icmp eq i64 %str.tag851, %active.gen857
  br i1 %tag.fast.ok858, label %str_ok852, label %tag.slow_check855

tag.slow_check855:                                ; preds = %tag.gen_check854
  %arena.cur859 = call ptr @dva_arena_current()
  %tag.valid860 = call i1 @dva_arena_validate_tag(ptr %arena.cur859, i64 %str.tag851)
  br i1 %tag.valid860, label %str_ok852, label %tag.stale856

tag.stale856:                                     ; preds = %tag.slow_check855
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead861:                                    ; No predecessors!
  br label %str_ok852

str.eq.then865:                                   ; preds = %str_ok852
  %eq.lhs.data868 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data869 = load ptr, ptr %eq.lhs.data868, align 8
  %eq.rhs.data870 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp871 = call i32 @memcmp(ptr %eq.lhs.data869, ptr %eq.rhs.data870, i64 %eq.lhs.len850)
  %eq.cmp.zero872 = icmp eq i32 %eq.memcmp871, 0
  br label %str.eq.merge867

str.eq.else866:                                   ; preds = %str_ok852
  br label %str.eq.merge867

str.eq.merge867:                                  ; preds = %str.eq.else866, %str.eq.then865
  %str.eq.result873 = phi i1 [ %eq.cmp.zero872, %str.eq.then865 ], [ false, %str.eq.else866 ]
  br i1 %str.eq.result873, label %choice.case846, label %choice.next847
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

declare i32 @memcmp(ptr, ptr, i64) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
