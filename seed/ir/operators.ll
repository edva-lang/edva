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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next758, %choice.case757, %choice.case723, %choice.case689, %choice.case655, %choice.case621, %choice.case587, %choice.case553, %choice.case519, %choice.case485, %choice.case451, %choice.case417, %choice.case383, %choice.case349, %choice.case315, %choice.case281, %choice.case247, %choice.case213, %choice.case179, %choice.case145, %choice.case111, %choice.case77, %choice.case43, %choice.case9, %choice.case
  %choice.res = phi ptr [ %rec.alloc, %choice.case ], [ %rec.alloc38, %choice.case9 ], [ %rec.alloc72, %choice.case43 ], [ %rec.alloc106, %choice.case77 ], [ %rec.alloc140, %choice.case111 ], [ %rec.alloc174, %choice.case145 ], [ %rec.alloc208, %choice.case179 ], [ %rec.alloc242, %choice.case213 ], [ %rec.alloc276, %choice.case247 ], [ %rec.alloc310, %choice.case281 ], [ %rec.alloc344, %choice.case315 ], [ %rec.alloc378, %choice.case349 ], [ %rec.alloc412, %choice.case383 ], [ %rec.alloc446, %choice.case417 ], [ %rec.alloc480, %choice.case451 ], [ %rec.alloc514, %choice.case485 ], [ %rec.alloc548, %choice.case519 ], [ %rec.alloc582, %choice.case553 ], [ %rec.alloc616, %choice.case587 ], [ %rec.alloc650, %choice.case621 ], [ %rec.alloc684, %choice.case655 ], [ %rec.alloc718, %choice.case689 ], [ %rec.alloc752, %choice.case723 ], [ %rec.alloc786, %choice.case757 ], [ null, %choice.next758 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 14, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 30, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 30, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld8, align 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len12 = load i64, ptr %eq.lhs.len11, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %str.tag14 = lshr i64 %eq.lhs.len12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

choice.case9:                                     ; preds = %str.eq.merge26
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %tag.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 0
  store i64 12, ptr %tag.gep35, align 8
  %pay.gep36 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 1
  store ptr null, ptr %pay.gep36, align 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld39 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc38, i32 0, i32 0
  store i64 80, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc38, i32 0, i32 1
  store i64 90, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc38, i32 0, i32 2
  store ptr %enum.alloc34, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc38, i32 0, i32 3
  store i1 false, ptr %rec.fld42, align 1
  br label %choice.exit

choice.next10:                                    ; preds = %str.eq.merge26
  %eq.lhs.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len46 = load i64, ptr %eq.lhs.len45, align 8
  %eq.lhs.len47 = and i64 %eq.lhs.len46, 281474976710655
  %str.tag48 = lshr i64 %eq.lhs.len46, 48
  %tag.immortal50 = icmp eq i64 %str.tag48, 0
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current52 = icmp eq i64 %str.tag48, %active.gen51
  %tag.fast.ok53 = or i1 %tag.immortal50, %tag.current52
  br i1 %tag.fast.ok53, label %str_ok49, label %tag.slow_check54

str_ok15:                                         ; preds = %tag.slow_check20, %choice.next
  %eq.rhs.len21 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len22 = and i64 %eq.rhs.len21, 281474976710655
  %eq.len23 = icmp eq i64 %eq.lhs.len13, %eq.rhs.len22
  br i1 %eq.len23, label %str.eq.then24, label %str.eq.else25

tag.slow_check20:                                 ; preds = %choice.next
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15

str.eq.then24:                                    ; preds = %str_ok15
  %eq.lhs.data27 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data28 = load ptr, ptr %eq.lhs.data27, align 8
  %eq.rhs.data29 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp30 = call i32 @memcmp(ptr %eq.lhs.data28, ptr %eq.rhs.data29, i64 %eq.lhs.len13)
  %eq.cmp.zero31 = icmp eq i32 %eq.memcmp30, 0
  br label %str.eq.merge26

str.eq.else25:                                    ; preds = %str_ok15
  br label %str.eq.merge26

str.eq.merge26:                                   ; preds = %str.eq.else25, %str.eq.then24
  %str.eq.result32 = phi i1 [ %eq.cmp.zero31, %str.eq.then24 ], [ false, %str.eq.else25 ]
  br i1 %str.eq.result32, label %choice.case9, label %choice.next10

choice.case43:                                    ; preds = %str.eq.merge60
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %tag.gep69 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc68, i32 0, i32 0
  store i64 11, ptr %tag.gep69, align 8
  %pay.gep70 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc68, i32 0, i32 1
  store ptr null, ptr %pay.gep70, align 8
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld73 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc72, i32 0, i32 0
  store i64 90, ptr %rec.fld73, align 8
  %rec.fld74 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc72, i32 0, i32 1
  store i64 100, ptr %rec.fld74, align 8
  %rec.fld75 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc72, i32 0, i32 2
  store ptr %enum.alloc68, ptr %rec.fld75, align 8
  %rec.fld76 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc72, i32 0, i32 3
  store i1 false, ptr %rec.fld76, align 1
  br label %choice.exit

choice.next44:                                    ; preds = %str.eq.merge60
  %eq.lhs.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len80 = load i64, ptr %eq.lhs.len79, align 8
  %eq.lhs.len81 = and i64 %eq.lhs.len80, 281474976710655
  %str.tag82 = lshr i64 %eq.lhs.len80, 48
  %tag.immortal84 = icmp eq i64 %str.tag82, 0
  %active.gen85 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current86 = icmp eq i64 %str.tag82, %active.gen85
  %tag.fast.ok87 = or i1 %tag.immortal84, %tag.current86
  br i1 %tag.fast.ok87, label %str_ok83, label %tag.slow_check88

str_ok49:                                         ; preds = %tag.slow_check54, %choice.next10
  %eq.rhs.len55 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len55, 281474976710655
  %eq.len57 = icmp eq i64 %eq.lhs.len47, %eq.rhs.len56
  br i1 %eq.len57, label %str.eq.then58, label %str.eq.else59

tag.slow_check54:                                 ; preds = %choice.next10
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag48)
  br label %str_ok49

str.eq.then58:                                    ; preds = %str_ok49
  %eq.lhs.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data61, align 8
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp64 = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data63, i64 %eq.lhs.len47)
  %eq.cmp.zero65 = icmp eq i32 %eq.memcmp64, 0
  br label %str.eq.merge60

str.eq.else59:                                    ; preds = %str_ok49
  br label %str.eq.merge60

str.eq.merge60:                                   ; preds = %str.eq.else59, %str.eq.then58
  %str.eq.result66 = phi i1 [ %eq.cmp.zero65, %str.eq.then58 ], [ false, %str.eq.else59 ]
  br i1 %str.eq.result66, label %choice.case43, label %choice.next44

choice.case77:                                    ; preds = %str.eq.merge94
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 16)
  %tag.gep103 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc102, i32 0, i32 0
  store i64 20, ptr %tag.gep103, align 8
  %pay.gep104 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc102, i32 0, i32 1
  store ptr null, ptr %pay.gep104, align 8
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld107 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc106, i32 0, i32 0
  store i64 100, ptr %rec.fld107, align 8
  %rec.fld108 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc106, i32 0, i32 1
  store i64 105, ptr %rec.fld108, align 8
  %rec.fld109 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc106, i32 0, i32 2
  store ptr %enum.alloc102, ptr %rec.fld109, align 8
  %rec.fld110 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc106, i32 0, i32 3
  store i1 false, ptr %rec.fld110, align 1
  br label %choice.exit

choice.next78:                                    ; preds = %str.eq.merge94
  %eq.lhs.len113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len114 = load i64, ptr %eq.lhs.len113, align 8
  %eq.lhs.len115 = and i64 %eq.lhs.len114, 281474976710655
  %str.tag116 = lshr i64 %eq.lhs.len114, 48
  %tag.immortal118 = icmp eq i64 %str.tag116, 0
  %active.gen119 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current120 = icmp eq i64 %str.tag116, %active.gen119
  %tag.fast.ok121 = or i1 %tag.immortal118, %tag.current120
  br i1 %tag.fast.ok121, label %str_ok117, label %tag.slow_check122

str_ok83:                                         ; preds = %tag.slow_check88, %choice.next44
  %eq.rhs.len89 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len90 = and i64 %eq.rhs.len89, 281474976710655
  %eq.len91 = icmp eq i64 %eq.lhs.len81, %eq.rhs.len90
  br i1 %eq.len91, label %str.eq.then92, label %str.eq.else93

tag.slow_check88:                                 ; preds = %choice.next44
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag82)
  br label %str_ok83

str.eq.then92:                                    ; preds = %str_ok83
  %eq.lhs.data95 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data96 = load ptr, ptr %eq.lhs.data95, align 8
  %eq.rhs.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp98 = call i32 @memcmp(ptr %eq.lhs.data96, ptr %eq.rhs.data97, i64 %eq.lhs.len81)
  %eq.cmp.zero99 = icmp eq i32 %eq.memcmp98, 0
  br label %str.eq.merge94

str.eq.else93:                                    ; preds = %str_ok83
  br label %str.eq.merge94

str.eq.merge94:                                   ; preds = %str.eq.else93, %str.eq.then92
  %str.eq.result100 = phi i1 [ %eq.cmp.zero99, %str.eq.then92 ], [ false, %str.eq.else93 ]
  br i1 %str.eq.result100, label %choice.case77, label %choice.next78

choice.case111:                                   ; preds = %str.eq.merge128
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 16)
  %tag.gep137 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc136, i32 0, i32 0
  store i64 21, ptr %tag.gep137, align 8
  %pay.gep138 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc136, i32 0, i32 1
  store ptr null, ptr %pay.gep138, align 8
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld141 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc140, i32 0, i32 0
  store i64 105, ptr %rec.fld141, align 8
  %rec.fld142 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc140, i32 0, i32 1
  store i64 110, ptr %rec.fld142, align 8
  %rec.fld143 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc140, i32 0, i32 2
  store ptr %enum.alloc136, ptr %rec.fld143, align 8
  %rec.fld144 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc140, i32 0, i32 3
  store i1 false, ptr %rec.fld144, align 1
  br label %choice.exit

choice.next112:                                   ; preds = %str.eq.merge128
  %eq.lhs.len147 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len148 = load i64, ptr %eq.lhs.len147, align 8
  %eq.lhs.len149 = and i64 %eq.lhs.len148, 281474976710655
  %str.tag150 = lshr i64 %eq.lhs.len148, 48
  %tag.immortal152 = icmp eq i64 %str.tag150, 0
  %active.gen153 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current154 = icmp eq i64 %str.tag150, %active.gen153
  %tag.fast.ok155 = or i1 %tag.immortal152, %tag.current154
  br i1 %tag.fast.ok155, label %str_ok151, label %tag.slow_check156

str_ok117:                                        ; preds = %tag.slow_check122, %choice.next78
  %eq.rhs.len123 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len124 = and i64 %eq.rhs.len123, 281474976710655
  %eq.len125 = icmp eq i64 %eq.lhs.len115, %eq.rhs.len124
  br i1 %eq.len125, label %str.eq.then126, label %str.eq.else127

tag.slow_check122:                                ; preds = %choice.next78
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag116)
  br label %str_ok117

str.eq.then126:                                   ; preds = %str_ok117
  %eq.lhs.data129 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data130 = load ptr, ptr %eq.lhs.data129, align 8
  %eq.rhs.data131 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp132 = call i32 @memcmp(ptr %eq.lhs.data130, ptr %eq.rhs.data131, i64 %eq.lhs.len115)
  %eq.cmp.zero133 = icmp eq i32 %eq.memcmp132, 0
  br label %str.eq.merge128

str.eq.else127:                                   ; preds = %str_ok117
  br label %str.eq.merge128

str.eq.merge128:                                  ; preds = %str.eq.else127, %str.eq.then126
  %str.eq.result134 = phi i1 [ %eq.cmp.zero133, %str.eq.then126 ], [ false, %str.eq.else127 ]
  br i1 %str.eq.result134, label %choice.case111, label %choice.next112

choice.case145:                                   ; preds = %str.eq.merge162
  %arena.cur169 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 16)
  %tag.gep171 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc170, i32 0, i32 0
  store i64 19, ptr %tag.gep171, align 8
  %pay.gep172 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc170, i32 0, i32 1
  store ptr null, ptr %pay.gep172, align 8
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld175 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc174, i32 0, i32 0
  store i64 110, ptr %rec.fld175, align 8
  %rec.fld176 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc174, i32 0, i32 1
  store i64 120, ptr %rec.fld176, align 8
  %rec.fld177 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc174, i32 0, i32 2
  store ptr %enum.alloc170, ptr %rec.fld177, align 8
  %rec.fld178 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc174, i32 0, i32 3
  store i1 false, ptr %rec.fld178, align 1
  br label %choice.exit

choice.next146:                                   ; preds = %str.eq.merge162
  %eq.lhs.len181 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len182 = load i64, ptr %eq.lhs.len181, align 8
  %eq.lhs.len183 = and i64 %eq.lhs.len182, 281474976710655
  %str.tag184 = lshr i64 %eq.lhs.len182, 48
  %tag.immortal186 = icmp eq i64 %str.tag184, 0
  %active.gen187 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current188 = icmp eq i64 %str.tag184, %active.gen187
  %tag.fast.ok189 = or i1 %tag.immortal186, %tag.current188
  br i1 %tag.fast.ok189, label %str_ok185, label %tag.slow_check190

str_ok151:                                        ; preds = %tag.slow_check156, %choice.next112
  %eq.rhs.len157 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len158 = and i64 %eq.rhs.len157, 281474976710655
  %eq.len159 = icmp eq i64 %eq.lhs.len149, %eq.rhs.len158
  br i1 %eq.len159, label %str.eq.then160, label %str.eq.else161

tag.slow_check156:                                ; preds = %choice.next112
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag150)
  br label %str_ok151

str.eq.then160:                                   ; preds = %str_ok151
  %eq.lhs.data163 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data164 = load ptr, ptr %eq.lhs.data163, align 8
  %eq.rhs.data165 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp166 = call i32 @memcmp(ptr %eq.lhs.data164, ptr %eq.rhs.data165, i64 %eq.lhs.len149)
  %eq.cmp.zero167 = icmp eq i32 %eq.memcmp166, 0
  br label %str.eq.merge162

str.eq.else161:                                   ; preds = %str_ok151
  br label %str.eq.merge162

str.eq.merge162:                                  ; preds = %str.eq.else161, %str.eq.then160
  %str.eq.result168 = phi i1 [ %eq.cmp.zero167, %str.eq.then160 ], [ false, %str.eq.else161 ]
  br i1 %str.eq.result168, label %choice.case145, label %choice.next146

choice.case179:                                   ; preds = %str.eq.merge196
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 16)
  %tag.gep205 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc204, i32 0, i32 0
  store i64 6, ptr %tag.gep205, align 8
  %pay.gep206 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc204, i32 0, i32 1
  store ptr null, ptr %pay.gep206, align 8
  %arena.cur207 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld209 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc208, i32 0, i32 0
  store i64 120, ptr %rec.fld209, align 8
  %rec.fld210 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc208, i32 0, i32 1
  store i64 130, ptr %rec.fld210, align 8
  %rec.fld211 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc208, i32 0, i32 2
  store ptr %enum.alloc204, ptr %rec.fld211, align 8
  %rec.fld212 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc208, i32 0, i32 3
  store i1 true, ptr %rec.fld212, align 1
  br label %choice.exit

choice.next180:                                   ; preds = %str.eq.merge196
  %eq.lhs.len215 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len216 = load i64, ptr %eq.lhs.len215, align 8
  %eq.lhs.len217 = and i64 %eq.lhs.len216, 281474976710655
  %str.tag218 = lshr i64 %eq.lhs.len216, 48
  %tag.immortal220 = icmp eq i64 %str.tag218, 0
  %active.gen221 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current222 = icmp eq i64 %str.tag218, %active.gen221
  %tag.fast.ok223 = or i1 %tag.immortal220, %tag.current222
  br i1 %tag.fast.ok223, label %str_ok219, label %tag.slow_check224

str_ok185:                                        ; preds = %tag.slow_check190, %choice.next146
  %eq.rhs.len191 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len192 = and i64 %eq.rhs.len191, 281474976710655
  %eq.len193 = icmp eq i64 %eq.lhs.len183, %eq.rhs.len192
  br i1 %eq.len193, label %str.eq.then194, label %str.eq.else195

tag.slow_check190:                                ; preds = %choice.next146
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag184)
  br label %str_ok185

str.eq.then194:                                   ; preds = %str_ok185
  %eq.lhs.data197 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data198 = load ptr, ptr %eq.lhs.data197, align 8
  %eq.rhs.data199 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp200 = call i32 @memcmp(ptr %eq.lhs.data198, ptr %eq.rhs.data199, i64 %eq.lhs.len183)
  %eq.cmp.zero201 = icmp eq i32 %eq.memcmp200, 0
  br label %str.eq.merge196

str.eq.else195:                                   ; preds = %str_ok185
  br label %str.eq.merge196

str.eq.merge196:                                  ; preds = %str.eq.else195, %str.eq.then194
  %str.eq.result202 = phi i1 [ %eq.cmp.zero201, %str.eq.then194 ], [ false, %str.eq.else195 ]
  br i1 %str.eq.result202, label %choice.case179, label %choice.next180

choice.case213:                                   ; preds = %str.eq.merge230
  %arena.cur237 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 16)
  %tag.gep239 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc238, i32 0, i32 0
  store i64 5, ptr %tag.gep239, align 8
  %pay.gep240 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc238, i32 0, i32 1
  store ptr null, ptr %pay.gep240, align 8
  %arena.cur241 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld243 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc242, i32 0, i32 0
  store i64 120, ptr %rec.fld243, align 8
  %rec.fld244 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc242, i32 0, i32 1
  store i64 130, ptr %rec.fld244, align 8
  %rec.fld245 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc242, i32 0, i32 2
  store ptr %enum.alloc238, ptr %rec.fld245, align 8
  %rec.fld246 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc242, i32 0, i32 3
  store i1 true, ptr %rec.fld246, align 1
  br label %choice.exit

choice.next214:                                   ; preds = %str.eq.merge230
  %eq.lhs.len249 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len250 = load i64, ptr %eq.lhs.len249, align 8
  %eq.lhs.len251 = and i64 %eq.lhs.len250, 281474976710655
  %str.tag252 = lshr i64 %eq.lhs.len250, 48
  %tag.immortal254 = icmp eq i64 %str.tag252, 0
  %active.gen255 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current256 = icmp eq i64 %str.tag252, %active.gen255
  %tag.fast.ok257 = or i1 %tag.immortal254, %tag.current256
  br i1 %tag.fast.ok257, label %str_ok253, label %tag.slow_check258

str_ok219:                                        ; preds = %tag.slow_check224, %choice.next180
  %eq.rhs.len225 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len226 = and i64 %eq.rhs.len225, 281474976710655
  %eq.len227 = icmp eq i64 %eq.lhs.len217, %eq.rhs.len226
  br i1 %eq.len227, label %str.eq.then228, label %str.eq.else229

tag.slow_check224:                                ; preds = %choice.next180
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag218)
  br label %str_ok219

str.eq.then228:                                   ; preds = %str_ok219
  %eq.lhs.data231 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data232 = load ptr, ptr %eq.lhs.data231, align 8
  %eq.rhs.data233 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp234 = call i32 @memcmp(ptr %eq.lhs.data232, ptr %eq.rhs.data233, i64 %eq.lhs.len217)
  %eq.cmp.zero235 = icmp eq i32 %eq.memcmp234, 0
  br label %str.eq.merge230

str.eq.else229:                                   ; preds = %str_ok219
  br label %str.eq.merge230

str.eq.merge230:                                  ; preds = %str.eq.else229, %str.eq.then228
  %str.eq.result236 = phi i1 [ %eq.cmp.zero235, %str.eq.then228 ], [ false, %str.eq.else229 ]
  br i1 %str.eq.result236, label %choice.case213, label %choice.next214

choice.case247:                                   ; preds = %str.eq.merge264
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 16)
  %tag.gep273 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc272, i32 0, i32 0
  store i64 7, ptr %tag.gep273, align 8
  %pay.gep274 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc272, i32 0, i32 1
  store ptr null, ptr %pay.gep274, align 8
  %arena.cur275 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld277 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc276, i32 0, i32 0
  store i64 120, ptr %rec.fld277, align 8
  %rec.fld278 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc276, i32 0, i32 1
  store i64 130, ptr %rec.fld278, align 8
  %rec.fld279 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc276, i32 0, i32 2
  store ptr %enum.alloc272, ptr %rec.fld279, align 8
  %rec.fld280 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc276, i32 0, i32 3
  store i1 true, ptr %rec.fld280, align 1
  br label %choice.exit

choice.next248:                                   ; preds = %str.eq.merge264
  %eq.lhs.len283 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len284 = load i64, ptr %eq.lhs.len283, align 8
  %eq.lhs.len285 = and i64 %eq.lhs.len284, 281474976710655
  %str.tag286 = lshr i64 %eq.lhs.len284, 48
  %tag.immortal288 = icmp eq i64 %str.tag286, 0
  %active.gen289 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current290 = icmp eq i64 %str.tag286, %active.gen289
  %tag.fast.ok291 = or i1 %tag.immortal288, %tag.current290
  br i1 %tag.fast.ok291, label %str_ok287, label %tag.slow_check292

str_ok253:                                        ; preds = %tag.slow_check258, %choice.next214
  %eq.rhs.len259 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len260 = and i64 %eq.rhs.len259, 281474976710655
  %eq.len261 = icmp eq i64 %eq.lhs.len251, %eq.rhs.len260
  br i1 %eq.len261, label %str.eq.then262, label %str.eq.else263

tag.slow_check258:                                ; preds = %choice.next214
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag252)
  br label %str_ok253

str.eq.then262:                                   ; preds = %str_ok253
  %eq.lhs.data265 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data266 = load ptr, ptr %eq.lhs.data265, align 8
  %eq.rhs.data267 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp268 = call i32 @memcmp(ptr %eq.lhs.data266, ptr %eq.rhs.data267, i64 %eq.lhs.len251)
  %eq.cmp.zero269 = icmp eq i32 %eq.memcmp268, 0
  br label %str.eq.merge264

str.eq.else263:                                   ; preds = %str_ok253
  br label %str.eq.merge264

str.eq.merge264:                                  ; preds = %str.eq.else263, %str.eq.then262
  %str.eq.result270 = phi i1 [ %eq.cmp.zero269, %str.eq.then262 ], [ false, %str.eq.else263 ]
  br i1 %str.eq.result270, label %choice.case247, label %choice.next248

choice.case281:                                   ; preds = %str.eq.merge298
  %arena.cur305 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 16)
  %tag.gep307 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc306, i32 0, i32 0
  store i64 10, ptr %tag.gep307, align 8
  %pay.gep308 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc306, i32 0, i32 1
  store ptr null, ptr %pay.gep308, align 8
  %arena.cur309 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld311 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc310, i32 0, i32 0
  store i64 120, ptr %rec.fld311, align 8
  %rec.fld312 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc310, i32 0, i32 1
  store i64 130, ptr %rec.fld312, align 8
  %rec.fld313 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc310, i32 0, i32 2
  store ptr %enum.alloc306, ptr %rec.fld313, align 8
  %rec.fld314 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc310, i32 0, i32 3
  store i1 true, ptr %rec.fld314, align 1
  br label %choice.exit

choice.next282:                                   ; preds = %str.eq.merge298
  %eq.lhs.len317 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len318 = load i64, ptr %eq.lhs.len317, align 8
  %eq.lhs.len319 = and i64 %eq.lhs.len318, 281474976710655
  %str.tag320 = lshr i64 %eq.lhs.len318, 48
  %tag.immortal322 = icmp eq i64 %str.tag320, 0
  %active.gen323 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current324 = icmp eq i64 %str.tag320, %active.gen323
  %tag.fast.ok325 = or i1 %tag.immortal322, %tag.current324
  br i1 %tag.fast.ok325, label %str_ok321, label %tag.slow_check326

str_ok287:                                        ; preds = %tag.slow_check292, %choice.next248
  %eq.rhs.len293 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len294 = and i64 %eq.rhs.len293, 281474976710655
  %eq.len295 = icmp eq i64 %eq.lhs.len285, %eq.rhs.len294
  br i1 %eq.len295, label %str.eq.then296, label %str.eq.else297

tag.slow_check292:                                ; preds = %choice.next248
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag286)
  br label %str_ok287

str.eq.then296:                                   ; preds = %str_ok287
  %eq.lhs.data299 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data300 = load ptr, ptr %eq.lhs.data299, align 8
  %eq.rhs.data301 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp302 = call i32 @memcmp(ptr %eq.lhs.data300, ptr %eq.rhs.data301, i64 %eq.lhs.len285)
  %eq.cmp.zero303 = icmp eq i32 %eq.memcmp302, 0
  br label %str.eq.merge298

str.eq.else297:                                   ; preds = %str_ok287
  br label %str.eq.merge298

str.eq.merge298:                                  ; preds = %str.eq.else297, %str.eq.then296
  %str.eq.result304 = phi i1 [ %eq.cmp.zero303, %str.eq.then296 ], [ false, %str.eq.else297 ]
  br i1 %str.eq.result304, label %choice.case281, label %choice.next282

choice.case315:                                   ; preds = %str.eq.merge332
  %arena.cur339 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 16)
  %tag.gep341 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc340, i32 0, i32 0
  store i64 9, ptr %tag.gep341, align 8
  %pay.gep342 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc340, i32 0, i32 1
  store ptr null, ptr %pay.gep342, align 8
  %arena.cur343 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc344 = call ptr @dva_arena_alloc(ptr %arena.cur343, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld345 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc344, i32 0, i32 0
  store i64 120, ptr %rec.fld345, align 8
  %rec.fld346 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc344, i32 0, i32 1
  store i64 130, ptr %rec.fld346, align 8
  %rec.fld347 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc344, i32 0, i32 2
  store ptr %enum.alloc340, ptr %rec.fld347, align 8
  %rec.fld348 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc344, i32 0, i32 3
  store i1 true, ptr %rec.fld348, align 1
  br label %choice.exit

choice.next316:                                   ; preds = %str.eq.merge332
  %eq.lhs.len351 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len352 = load i64, ptr %eq.lhs.len351, align 8
  %eq.lhs.len353 = and i64 %eq.lhs.len352, 281474976710655
  %str.tag354 = lshr i64 %eq.lhs.len352, 48
  %tag.immortal356 = icmp eq i64 %str.tag354, 0
  %active.gen357 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current358 = icmp eq i64 %str.tag354, %active.gen357
  %tag.fast.ok359 = or i1 %tag.immortal356, %tag.current358
  br i1 %tag.fast.ok359, label %str_ok355, label %tag.slow_check360

str_ok321:                                        ; preds = %tag.slow_check326, %choice.next282
  %eq.rhs.len327 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len328 = and i64 %eq.rhs.len327, 281474976710655
  %eq.len329 = icmp eq i64 %eq.lhs.len319, %eq.rhs.len328
  br i1 %eq.len329, label %str.eq.then330, label %str.eq.else331

tag.slow_check326:                                ; preds = %choice.next282
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag320)
  br label %str_ok321

str.eq.then330:                                   ; preds = %str_ok321
  %eq.lhs.data333 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data334 = load ptr, ptr %eq.lhs.data333, align 8
  %eq.rhs.data335 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp336 = call i32 @memcmp(ptr %eq.lhs.data334, ptr %eq.rhs.data335, i64 %eq.lhs.len319)
  %eq.cmp.zero337 = icmp eq i32 %eq.memcmp336, 0
  br label %str.eq.merge332

str.eq.else331:                                   ; preds = %str_ok321
  br label %str.eq.merge332

str.eq.merge332:                                  ; preds = %str.eq.else331, %str.eq.then330
  %str.eq.result338 = phi i1 [ %eq.cmp.zero337, %str.eq.then330 ], [ false, %str.eq.else331 ]
  br i1 %str.eq.result338, label %choice.case315, label %choice.next316

choice.case349:                                   ; preds = %str.eq.merge366
  %arena.cur373 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 16)
  %tag.gep375 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc374, i32 0, i32 0
  store i64 8, ptr %tag.gep375, align 8
  %pay.gep376 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc374, i32 0, i32 1
  store ptr null, ptr %pay.gep376, align 8
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld379 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc378, i32 0, i32 0
  store i64 120, ptr %rec.fld379, align 8
  %rec.fld380 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc378, i32 0, i32 1
  store i64 130, ptr %rec.fld380, align 8
  %rec.fld381 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc378, i32 0, i32 2
  store ptr %enum.alloc374, ptr %rec.fld381, align 8
  %rec.fld382 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc378, i32 0, i32 3
  store i1 true, ptr %rec.fld382, align 1
  br label %choice.exit

choice.next350:                                   ; preds = %str.eq.merge366
  %eq.lhs.len385 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len386 = load i64, ptr %eq.lhs.len385, align 8
  %eq.lhs.len387 = and i64 %eq.lhs.len386, 281474976710655
  %str.tag388 = lshr i64 %eq.lhs.len386, 48
  %tag.immortal390 = icmp eq i64 %str.tag388, 0
  %active.gen391 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current392 = icmp eq i64 %str.tag388, %active.gen391
  %tag.fast.ok393 = or i1 %tag.immortal390, %tag.current392
  br i1 %tag.fast.ok393, label %str_ok389, label %tag.slow_check394

str_ok355:                                        ; preds = %tag.slow_check360, %choice.next316
  %eq.rhs.len361 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len362 = and i64 %eq.rhs.len361, 281474976710655
  %eq.len363 = icmp eq i64 %eq.lhs.len353, %eq.rhs.len362
  br i1 %eq.len363, label %str.eq.then364, label %str.eq.else365

tag.slow_check360:                                ; preds = %choice.next316
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag354)
  br label %str_ok355

str.eq.then364:                                   ; preds = %str_ok355
  %eq.lhs.data367 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data368 = load ptr, ptr %eq.lhs.data367, align 8
  %eq.rhs.data369 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp370 = call i32 @memcmp(ptr %eq.lhs.data368, ptr %eq.rhs.data369, i64 %eq.lhs.len353)
  %eq.cmp.zero371 = icmp eq i32 %eq.memcmp370, 0
  br label %str.eq.merge366

str.eq.else365:                                   ; preds = %str_ok355
  br label %str.eq.merge366

str.eq.merge366:                                  ; preds = %str.eq.else365, %str.eq.then364
  %str.eq.result372 = phi i1 [ %eq.cmp.zero371, %str.eq.then364 ], [ false, %str.eq.else365 ]
  br i1 %str.eq.result372, label %choice.case349, label %choice.next350

choice.case383:                                   ; preds = %str.eq.merge400
  %arena.cur407 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 16)
  %tag.gep409 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc408, i32 0, i32 0
  store i64 22, ptr %tag.gep409, align 8
  %pay.gep410 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc408, i32 0, i32 1
  store ptr null, ptr %pay.gep410, align 8
  %arena.cur411 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld413 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc412, i32 0, i32 0
  store i64 130, ptr %rec.fld413, align 8
  %rec.fld414 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc412, i32 0, i32 1
  store i64 140, ptr %rec.fld414, align 8
  %rec.fld415 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc412, i32 0, i32 2
  store ptr %enum.alloc408, ptr %rec.fld415, align 8
  %rec.fld416 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc412, i32 0, i32 3
  store i1 false, ptr %rec.fld416, align 1
  br label %choice.exit

choice.next384:                                   ; preds = %str.eq.merge400
  %eq.lhs.len419 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len420 = load i64, ptr %eq.lhs.len419, align 8
  %eq.lhs.len421 = and i64 %eq.lhs.len420, 281474976710655
  %str.tag422 = lshr i64 %eq.lhs.len420, 48
  %tag.immortal424 = icmp eq i64 %str.tag422, 0
  %active.gen425 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current426 = icmp eq i64 %str.tag422, %active.gen425
  %tag.fast.ok427 = or i1 %tag.immortal424, %tag.current426
  br i1 %tag.fast.ok427, label %str_ok423, label %tag.slow_check428

str_ok389:                                        ; preds = %tag.slow_check394, %choice.next350
  %eq.rhs.len395 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len396 = and i64 %eq.rhs.len395, 281474976710655
  %eq.len397 = icmp eq i64 %eq.lhs.len387, %eq.rhs.len396
  br i1 %eq.len397, label %str.eq.then398, label %str.eq.else399

tag.slow_check394:                                ; preds = %choice.next350
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag388)
  br label %str_ok389

str.eq.then398:                                   ; preds = %str_ok389
  %eq.lhs.data401 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data402 = load ptr, ptr %eq.lhs.data401, align 8
  %eq.rhs.data403 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp404 = call i32 @memcmp(ptr %eq.lhs.data402, ptr %eq.rhs.data403, i64 %eq.lhs.len387)
  %eq.cmp.zero405 = icmp eq i32 %eq.memcmp404, 0
  br label %str.eq.merge400

str.eq.else399:                                   ; preds = %str_ok389
  br label %str.eq.merge400

str.eq.merge400:                                  ; preds = %str.eq.else399, %str.eq.then398
  %str.eq.result406 = phi i1 [ %eq.cmp.zero405, %str.eq.then398 ], [ false, %str.eq.else399 ]
  br i1 %str.eq.result406, label %choice.case383, label %choice.next384

choice.case417:                                   ; preds = %str.eq.merge434
  %arena.cur441 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 16)
  %tag.gep443 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc442, i32 0, i32 0
  store i64 23, ptr %tag.gep443, align 8
  %pay.gep444 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc442, i32 0, i32 1
  store ptr null, ptr %pay.gep444, align 8
  %arena.cur445 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc446 = call ptr @dva_arena_alloc(ptr %arena.cur445, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld447 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc446, i32 0, i32 0
  store i64 130, ptr %rec.fld447, align 8
  %rec.fld448 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc446, i32 0, i32 1
  store i64 140, ptr %rec.fld448, align 8
  %rec.fld449 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc446, i32 0, i32 2
  store ptr %enum.alloc442, ptr %rec.fld449, align 8
  %rec.fld450 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc446, i32 0, i32 3
  store i1 false, ptr %rec.fld450, align 1
  br label %choice.exit

choice.next418:                                   ; preds = %str.eq.merge434
  %eq.lhs.len453 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len454 = load i64, ptr %eq.lhs.len453, align 8
  %eq.lhs.len455 = and i64 %eq.lhs.len454, 281474976710655
  %str.tag456 = lshr i64 %eq.lhs.len454, 48
  %tag.immortal458 = icmp eq i64 %str.tag456, 0
  %active.gen459 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current460 = icmp eq i64 %str.tag456, %active.gen459
  %tag.fast.ok461 = or i1 %tag.immortal458, %tag.current460
  br i1 %tag.fast.ok461, label %str_ok457, label %tag.slow_check462

str_ok423:                                        ; preds = %tag.slow_check428, %choice.next384
  %eq.rhs.len429 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len430 = and i64 %eq.rhs.len429, 281474976710655
  %eq.len431 = icmp eq i64 %eq.lhs.len421, %eq.rhs.len430
  br i1 %eq.len431, label %str.eq.then432, label %str.eq.else433

tag.slow_check428:                                ; preds = %choice.next384
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag422)
  br label %str_ok423

str.eq.then432:                                   ; preds = %str_ok423
  %eq.lhs.data435 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data436 = load ptr, ptr %eq.lhs.data435, align 8
  %eq.rhs.data437 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp438 = call i32 @memcmp(ptr %eq.lhs.data436, ptr %eq.rhs.data437, i64 %eq.lhs.len421)
  %eq.cmp.zero439 = icmp eq i32 %eq.memcmp438, 0
  br label %str.eq.merge434

str.eq.else433:                                   ; preds = %str_ok423
  br label %str.eq.merge434

str.eq.merge434:                                  ; preds = %str.eq.else433, %str.eq.then432
  %str.eq.result440 = phi i1 [ %eq.cmp.zero439, %str.eq.then432 ], [ false, %str.eq.else433 ]
  br i1 %str.eq.result440, label %choice.case417, label %choice.next418

choice.case451:                                   ; preds = %str.eq.merge468
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 16)
  %tag.gep477 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc476, i32 0, i32 0
  store i64 0, ptr %tag.gep477, align 8
  %pay.gep478 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc476, i32 0, i32 1
  store ptr null, ptr %pay.gep478, align 8
  %arena.cur479 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld481 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc480, i32 0, i32 0
  store i64 140, ptr %rec.fld481, align 8
  %rec.fld482 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc480, i32 0, i32 1
  store i64 150, ptr %rec.fld482, align 8
  %rec.fld483 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc480, i32 0, i32 2
  store ptr %enum.alloc476, ptr %rec.fld483, align 8
  %rec.fld484 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc480, i32 0, i32 3
  store i1 false, ptr %rec.fld484, align 1
  br label %choice.exit

choice.next452:                                   ; preds = %str.eq.merge468
  %eq.lhs.len487 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len488 = load i64, ptr %eq.lhs.len487, align 8
  %eq.lhs.len489 = and i64 %eq.lhs.len488, 281474976710655
  %str.tag490 = lshr i64 %eq.lhs.len488, 48
  %tag.immortal492 = icmp eq i64 %str.tag490, 0
  %active.gen493 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current494 = icmp eq i64 %str.tag490, %active.gen493
  %tag.fast.ok495 = or i1 %tag.immortal492, %tag.current494
  br i1 %tag.fast.ok495, label %str_ok491, label %tag.slow_check496

str_ok457:                                        ; preds = %tag.slow_check462, %choice.next418
  %eq.rhs.len463 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len464 = and i64 %eq.rhs.len463, 281474976710655
  %eq.len465 = icmp eq i64 %eq.lhs.len455, %eq.rhs.len464
  br i1 %eq.len465, label %str.eq.then466, label %str.eq.else467

tag.slow_check462:                                ; preds = %choice.next418
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag456)
  br label %str_ok457

str.eq.then466:                                   ; preds = %str_ok457
  %eq.lhs.data469 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data470 = load ptr, ptr %eq.lhs.data469, align 8
  %eq.rhs.data471 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp472 = call i32 @memcmp(ptr %eq.lhs.data470, ptr %eq.rhs.data471, i64 %eq.lhs.len455)
  %eq.cmp.zero473 = icmp eq i32 %eq.memcmp472, 0
  br label %str.eq.merge468

str.eq.else467:                                   ; preds = %str_ok457
  br label %str.eq.merge468

str.eq.merge468:                                  ; preds = %str.eq.else467, %str.eq.then466
  %str.eq.result474 = phi i1 [ %eq.cmp.zero473, %str.eq.then466 ], [ false, %str.eq.else467 ]
  br i1 %str.eq.result474, label %choice.case451, label %choice.next452

choice.case485:                                   ; preds = %str.eq.merge502
  %arena.cur509 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc510 = call ptr @dva_arena_alloc(ptr %arena.cur509, i64 16)
  %tag.gep511 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc510, i32 0, i32 0
  store i64 1, ptr %tag.gep511, align 8
  %pay.gep512 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc510, i32 0, i32 1
  store ptr null, ptr %pay.gep512, align 8
  %arena.cur513 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld515 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc514, i32 0, i32 0
  store i64 140, ptr %rec.fld515, align 8
  %rec.fld516 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc514, i32 0, i32 1
  store i64 150, ptr %rec.fld516, align 8
  %rec.fld517 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc514, i32 0, i32 2
  store ptr %enum.alloc510, ptr %rec.fld517, align 8
  %rec.fld518 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc514, i32 0, i32 3
  store i1 false, ptr %rec.fld518, align 1
  br label %choice.exit

choice.next486:                                   ; preds = %str.eq.merge502
  %eq.lhs.len521 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len522 = load i64, ptr %eq.lhs.len521, align 8
  %eq.lhs.len523 = and i64 %eq.lhs.len522, 281474976710655
  %str.tag524 = lshr i64 %eq.lhs.len522, 48
  %tag.immortal526 = icmp eq i64 %str.tag524, 0
  %active.gen527 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current528 = icmp eq i64 %str.tag524, %active.gen527
  %tag.fast.ok529 = or i1 %tag.immortal526, %tag.current528
  br i1 %tag.fast.ok529, label %str_ok525, label %tag.slow_check530

str_ok491:                                        ; preds = %tag.slow_check496, %choice.next452
  %eq.rhs.len497 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len498 = and i64 %eq.rhs.len497, 281474976710655
  %eq.len499 = icmp eq i64 %eq.lhs.len489, %eq.rhs.len498
  br i1 %eq.len499, label %str.eq.then500, label %str.eq.else501

tag.slow_check496:                                ; preds = %choice.next452
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag490)
  br label %str_ok491

str.eq.then500:                                   ; preds = %str_ok491
  %eq.lhs.data503 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data504 = load ptr, ptr %eq.lhs.data503, align 8
  %eq.rhs.data505 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp506 = call i32 @memcmp(ptr %eq.lhs.data504, ptr %eq.rhs.data505, i64 %eq.lhs.len489)
  %eq.cmp.zero507 = icmp eq i32 %eq.memcmp506, 0
  br label %str.eq.merge502

str.eq.else501:                                   ; preds = %str_ok491
  br label %str.eq.merge502

str.eq.merge502:                                  ; preds = %str.eq.else501, %str.eq.then500
  %str.eq.result508 = phi i1 [ %eq.cmp.zero507, %str.eq.then500 ], [ false, %str.eq.else501 ]
  br i1 %str.eq.result508, label %choice.case485, label %choice.next486

choice.case519:                                   ; preds = %str.eq.merge536
  %arena.cur543 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc544 = call ptr @dva_arena_alloc(ptr %arena.cur543, i64 16)
  %tag.gep545 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc544, i32 0, i32 0
  store i64 13, ptr %tag.gep545, align 8
  %pay.gep546 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc544, i32 0, i32 1
  store ptr null, ptr %pay.gep546, align 8
  %arena.cur547 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld549 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc548, i32 0, i32 0
  store i64 40, ptr %rec.fld549, align 8
  %rec.fld550 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc548, i32 0, i32 1
  store i64 50, ptr %rec.fld550, align 8
  %rec.fld551 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc548, i32 0, i32 2
  store ptr %enum.alloc544, ptr %rec.fld551, align 8
  %rec.fld552 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc548, i32 0, i32 3
  store i1 false, ptr %rec.fld552, align 1
  br label %choice.exit

choice.next520:                                   ; preds = %str.eq.merge536
  %eq.lhs.len555 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len556 = load i64, ptr %eq.lhs.len555, align 8
  %eq.lhs.len557 = and i64 %eq.lhs.len556, 281474976710655
  %str.tag558 = lshr i64 %eq.lhs.len556, 48
  %tag.immortal560 = icmp eq i64 %str.tag558, 0
  %active.gen561 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current562 = icmp eq i64 %str.tag558, %active.gen561
  %tag.fast.ok563 = or i1 %tag.immortal560, %tag.current562
  br i1 %tag.fast.ok563, label %str_ok559, label %tag.slow_check564

str_ok525:                                        ; preds = %tag.slow_check530, %choice.next486
  %eq.rhs.len531 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len532 = and i64 %eq.rhs.len531, 281474976710655
  %eq.len533 = icmp eq i64 %eq.lhs.len523, %eq.rhs.len532
  br i1 %eq.len533, label %str.eq.then534, label %str.eq.else535

tag.slow_check530:                                ; preds = %choice.next486
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag524)
  br label %str_ok525

str.eq.then534:                                   ; preds = %str_ok525
  %eq.lhs.data537 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data538 = load ptr, ptr %eq.lhs.data537, align 8
  %eq.rhs.data539 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp540 = call i32 @memcmp(ptr %eq.lhs.data538, ptr %eq.rhs.data539, i64 %eq.lhs.len523)
  %eq.cmp.zero541 = icmp eq i32 %eq.memcmp540, 0
  br label %str.eq.merge536

str.eq.else535:                                   ; preds = %str_ok525
  br label %str.eq.merge536

str.eq.merge536:                                  ; preds = %str.eq.else535, %str.eq.then534
  %str.eq.result542 = phi i1 [ %eq.cmp.zero541, %str.eq.then534 ], [ false, %str.eq.else535 ]
  br i1 %str.eq.result542, label %choice.case519, label %choice.next520

choice.case553:                                   ; preds = %str.eq.merge570
  %arena.cur577 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc578 = call ptr @dva_arena_alloc(ptr %arena.cur577, i64 16)
  %tag.gep579 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc578, i32 0, i32 0
  store i64 15, ptr %tag.gep579, align 8
  %pay.gep580 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc578, i32 0, i32 1
  store ptr null, ptr %pay.gep580, align 8
  %arena.cur581 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld583 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc582, i32 0, i32 0
  store i64 40, ptr %rec.fld583, align 8
  %rec.fld584 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc582, i32 0, i32 1
  store i64 50, ptr %rec.fld584, align 8
  %rec.fld585 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc582, i32 0, i32 2
  store ptr %enum.alloc578, ptr %rec.fld585, align 8
  %rec.fld586 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc582, i32 0, i32 3
  store i1 false, ptr %rec.fld586, align 1
  br label %choice.exit

choice.next554:                                   ; preds = %str.eq.merge570
  %eq.lhs.len589 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len590 = load i64, ptr %eq.lhs.len589, align 8
  %eq.lhs.len591 = and i64 %eq.lhs.len590, 281474976710655
  %str.tag592 = lshr i64 %eq.lhs.len590, 48
  %tag.immortal594 = icmp eq i64 %str.tag592, 0
  %active.gen595 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current596 = icmp eq i64 %str.tag592, %active.gen595
  %tag.fast.ok597 = or i1 %tag.immortal594, %tag.current596
  br i1 %tag.fast.ok597, label %str_ok593, label %tag.slow_check598

str_ok559:                                        ; preds = %tag.slow_check564, %choice.next520
  %eq.rhs.len565 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len566 = and i64 %eq.rhs.len565, 281474976710655
  %eq.len567 = icmp eq i64 %eq.lhs.len557, %eq.rhs.len566
  br i1 %eq.len567, label %str.eq.then568, label %str.eq.else569

tag.slow_check564:                                ; preds = %choice.next520
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag558)
  br label %str_ok559

str.eq.then568:                                   ; preds = %str_ok559
  %eq.lhs.data571 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data572 = load ptr, ptr %eq.lhs.data571, align 8
  %eq.rhs.data573 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp574 = call i32 @memcmp(ptr %eq.lhs.data572, ptr %eq.rhs.data573, i64 %eq.lhs.len557)
  %eq.cmp.zero575 = icmp eq i32 %eq.memcmp574, 0
  br label %str.eq.merge570

str.eq.else569:                                   ; preds = %str_ok559
  br label %str.eq.merge570

str.eq.merge570:                                  ; preds = %str.eq.else569, %str.eq.then568
  %str.eq.result576 = phi i1 [ %eq.cmp.zero575, %str.eq.then568 ], [ false, %str.eq.else569 ]
  br i1 %str.eq.result576, label %choice.case553, label %choice.next554

choice.case587:                                   ; preds = %str.eq.merge604
  %arena.cur611 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc612 = call ptr @dva_arena_alloc(ptr %arena.cur611, i64 16)
  %tag.gep613 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc612, i32 0, i32 0
  store i64 16, ptr %tag.gep613, align 8
  %pay.gep614 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc612, i32 0, i32 1
  store ptr null, ptr %pay.gep614, align 8
  %arena.cur615 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc616 = call ptr @dva_arena_alloc(ptr %arena.cur615, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld617 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc616, i32 0, i32 0
  store i64 40, ptr %rec.fld617, align 8
  %rec.fld618 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc616, i32 0, i32 1
  store i64 50, ptr %rec.fld618, align 8
  %rec.fld619 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc616, i32 0, i32 2
  store ptr %enum.alloc612, ptr %rec.fld619, align 8
  %rec.fld620 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc616, i32 0, i32 3
  store i1 false, ptr %rec.fld620, align 1
  br label %choice.exit

choice.next588:                                   ; preds = %str.eq.merge604
  %eq.lhs.len623 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len624 = load i64, ptr %eq.lhs.len623, align 8
  %eq.lhs.len625 = and i64 %eq.lhs.len624, 281474976710655
  %str.tag626 = lshr i64 %eq.lhs.len624, 48
  %tag.immortal628 = icmp eq i64 %str.tag626, 0
  %active.gen629 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current630 = icmp eq i64 %str.tag626, %active.gen629
  %tag.fast.ok631 = or i1 %tag.immortal628, %tag.current630
  br i1 %tag.fast.ok631, label %str_ok627, label %tag.slow_check632

str_ok593:                                        ; preds = %tag.slow_check598, %choice.next554
  %eq.rhs.len599 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len600 = and i64 %eq.rhs.len599, 281474976710655
  %eq.len601 = icmp eq i64 %eq.lhs.len591, %eq.rhs.len600
  br i1 %eq.len601, label %str.eq.then602, label %str.eq.else603

tag.slow_check598:                                ; preds = %choice.next554
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag592)
  br label %str_ok593

str.eq.then602:                                   ; preds = %str_ok593
  %eq.lhs.data605 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data606 = load ptr, ptr %eq.lhs.data605, align 8
  %eq.rhs.data607 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp608 = call i32 @memcmp(ptr %eq.lhs.data606, ptr %eq.rhs.data607, i64 %eq.lhs.len591)
  %eq.cmp.zero609 = icmp eq i32 %eq.memcmp608, 0
  br label %str.eq.merge604

str.eq.else603:                                   ; preds = %str_ok593
  br label %str.eq.merge604

str.eq.merge604:                                  ; preds = %str.eq.else603, %str.eq.then602
  %str.eq.result610 = phi i1 [ %eq.cmp.zero609, %str.eq.then602 ], [ false, %str.eq.else603 ]
  br i1 %str.eq.result610, label %choice.case587, label %choice.next588

choice.case621:                                   ; preds = %str.eq.merge638
  %arena.cur645 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 16)
  %tag.gep647 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc646, i32 0, i32 0
  store i64 17, ptr %tag.gep647, align 8
  %pay.gep648 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc646, i32 0, i32 1
  store ptr null, ptr %pay.gep648, align 8
  %arena.cur649 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc650 = call ptr @dva_arena_alloc(ptr %arena.cur649, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld651 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc650, i32 0, i32 0
  store i64 40, ptr %rec.fld651, align 8
  %rec.fld652 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc650, i32 0, i32 1
  store i64 50, ptr %rec.fld652, align 8
  %rec.fld653 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc650, i32 0, i32 2
  store ptr %enum.alloc646, ptr %rec.fld653, align 8
  %rec.fld654 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc650, i32 0, i32 3
  store i1 false, ptr %rec.fld654, align 1
  br label %choice.exit

choice.next622:                                   ; preds = %str.eq.merge638
  %eq.lhs.len657 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len658 = load i64, ptr %eq.lhs.len657, align 8
  %eq.lhs.len659 = and i64 %eq.lhs.len658, 281474976710655
  %str.tag660 = lshr i64 %eq.lhs.len658, 48
  %tag.immortal662 = icmp eq i64 %str.tag660, 0
  %active.gen663 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current664 = icmp eq i64 %str.tag660, %active.gen663
  %tag.fast.ok665 = or i1 %tag.immortal662, %tag.current664
  br i1 %tag.fast.ok665, label %str_ok661, label %tag.slow_check666

str_ok627:                                        ; preds = %tag.slow_check632, %choice.next588
  %eq.rhs.len633 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len634 = and i64 %eq.rhs.len633, 281474976710655
  %eq.len635 = icmp eq i64 %eq.lhs.len625, %eq.rhs.len634
  br i1 %eq.len635, label %str.eq.then636, label %str.eq.else637

tag.slow_check632:                                ; preds = %choice.next588
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag626)
  br label %str_ok627

str.eq.then636:                                   ; preds = %str_ok627
  %eq.lhs.data639 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data640 = load ptr, ptr %eq.lhs.data639, align 8
  %eq.rhs.data641 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp642 = call i32 @memcmp(ptr %eq.lhs.data640, ptr %eq.rhs.data641, i64 %eq.lhs.len625)
  %eq.cmp.zero643 = icmp eq i32 %eq.memcmp642, 0
  br label %str.eq.merge638

str.eq.else637:                                   ; preds = %str_ok627
  br label %str.eq.merge638

str.eq.merge638:                                  ; preds = %str.eq.else637, %str.eq.then636
  %str.eq.result644 = phi i1 [ %eq.cmp.zero643, %str.eq.then636 ], [ false, %str.eq.else637 ]
  br i1 %str.eq.result644, label %choice.case621, label %choice.next622

choice.case655:                                   ; preds = %str.eq.merge672
  %arena.cur679 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc680 = call ptr @dva_arena_alloc(ptr %arena.cur679, i64 16)
  %tag.gep681 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc680, i32 0, i32 0
  store i64 18, ptr %tag.gep681, align 8
  %pay.gep682 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc680, i32 0, i32 1
  store ptr null, ptr %pay.gep682, align 8
  %arena.cur683 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc684 = call ptr @dva_arena_alloc(ptr %arena.cur683, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld685 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 0
  store i64 40, ptr %rec.fld685, align 8
  %rec.fld686 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 1
  store i64 50, ptr %rec.fld686, align 8
  %rec.fld687 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 2
  store ptr %enum.alloc680, ptr %rec.fld687, align 8
  %rec.fld688 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 3
  store i1 false, ptr %rec.fld688, align 1
  br label %choice.exit

choice.next656:                                   ; preds = %str.eq.merge672
  %eq.lhs.len691 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len692 = load i64, ptr %eq.lhs.len691, align 8
  %eq.lhs.len693 = and i64 %eq.lhs.len692, 281474976710655
  %str.tag694 = lshr i64 %eq.lhs.len692, 48
  %tag.immortal696 = icmp eq i64 %str.tag694, 0
  %active.gen697 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current698 = icmp eq i64 %str.tag694, %active.gen697
  %tag.fast.ok699 = or i1 %tag.immortal696, %tag.current698
  br i1 %tag.fast.ok699, label %str_ok695, label %tag.slow_check700

str_ok661:                                        ; preds = %tag.slow_check666, %choice.next622
  %eq.rhs.len667 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len668 = and i64 %eq.rhs.len667, 281474976710655
  %eq.len669 = icmp eq i64 %eq.lhs.len659, %eq.rhs.len668
  br i1 %eq.len669, label %str.eq.then670, label %str.eq.else671

tag.slow_check666:                                ; preds = %choice.next622
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag660)
  br label %str_ok661

str.eq.then670:                                   ; preds = %str_ok661
  %eq.lhs.data673 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data674 = load ptr, ptr %eq.lhs.data673, align 8
  %eq.rhs.data675 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp676 = call i32 @memcmp(ptr %eq.lhs.data674, ptr %eq.rhs.data675, i64 %eq.lhs.len659)
  %eq.cmp.zero677 = icmp eq i32 %eq.memcmp676, 0
  br label %str.eq.merge672

str.eq.else671:                                   ; preds = %str_ok661
  br label %str.eq.merge672

str.eq.merge672:                                  ; preds = %str.eq.else671, %str.eq.then670
  %str.eq.result678 = phi i1 [ %eq.cmp.zero677, %str.eq.then670 ], [ false, %str.eq.else671 ]
  br i1 %str.eq.result678, label %choice.case655, label %choice.next656

choice.case689:                                   ; preds = %str.eq.merge706
  %arena.cur713 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 16)
  %tag.gep715 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc714, i32 0, i32 0
  store i64 2, ptr %tag.gep715, align 8
  %pay.gep716 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc714, i32 0, i32 1
  store ptr null, ptr %pay.gep716, align 8
  %arena.cur717 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc718 = call ptr @dva_arena_alloc(ptr %arena.cur717, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld719 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc718, i32 0, i32 0
  store i64 150, ptr %rec.fld719, align 8
  %rec.fld720 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc718, i32 0, i32 1
  store i64 160, ptr %rec.fld720, align 8
  %rec.fld721 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc718, i32 0, i32 2
  store ptr %enum.alloc714, ptr %rec.fld721, align 8
  %rec.fld722 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc718, i32 0, i32 3
  store i1 false, ptr %rec.fld722, align 1
  br label %choice.exit

choice.next690:                                   ; preds = %str.eq.merge706
  %eq.lhs.len725 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len726 = load i64, ptr %eq.lhs.len725, align 8
  %eq.lhs.len727 = and i64 %eq.lhs.len726, 281474976710655
  %str.tag728 = lshr i64 %eq.lhs.len726, 48
  %tag.immortal730 = icmp eq i64 %str.tag728, 0
  %active.gen731 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current732 = icmp eq i64 %str.tag728, %active.gen731
  %tag.fast.ok733 = or i1 %tag.immortal730, %tag.current732
  br i1 %tag.fast.ok733, label %str_ok729, label %tag.slow_check734

str_ok695:                                        ; preds = %tag.slow_check700, %choice.next656
  %eq.rhs.len701 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len702 = and i64 %eq.rhs.len701, 281474976710655
  %eq.len703 = icmp eq i64 %eq.lhs.len693, %eq.rhs.len702
  br i1 %eq.len703, label %str.eq.then704, label %str.eq.else705

tag.slow_check700:                                ; preds = %choice.next656
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag694)
  br label %str_ok695

str.eq.then704:                                   ; preds = %str_ok695
  %eq.lhs.data707 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data708 = load ptr, ptr %eq.lhs.data707, align 8
  %eq.rhs.data709 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp710 = call i32 @memcmp(ptr %eq.lhs.data708, ptr %eq.rhs.data709, i64 %eq.lhs.len693)
  %eq.cmp.zero711 = icmp eq i32 %eq.memcmp710, 0
  br label %str.eq.merge706

str.eq.else705:                                   ; preds = %str_ok695
  br label %str.eq.merge706

str.eq.merge706:                                  ; preds = %str.eq.else705, %str.eq.then704
  %str.eq.result712 = phi i1 [ %eq.cmp.zero711, %str.eq.then704 ], [ false, %str.eq.else705 ]
  br i1 %str.eq.result712, label %choice.case689, label %choice.next690

choice.case723:                                   ; preds = %str.eq.merge740
  %arena.cur747 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc748 = call ptr @dva_arena_alloc(ptr %arena.cur747, i64 16)
  %tag.gep749 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc748, i32 0, i32 0
  store i64 3, ptr %tag.gep749, align 8
  %pay.gep750 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc748, i32 0, i32 1
  store ptr null, ptr %pay.gep750, align 8
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld753 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc752, i32 0, i32 0
  store i64 150, ptr %rec.fld753, align 8
  %rec.fld754 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc752, i32 0, i32 1
  store i64 160, ptr %rec.fld754, align 8
  %rec.fld755 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc752, i32 0, i32 2
  store ptr %enum.alloc748, ptr %rec.fld755, align 8
  %rec.fld756 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc752, i32 0, i32 3
  store i1 false, ptr %rec.fld756, align 1
  br label %choice.exit

choice.next724:                                   ; preds = %str.eq.merge740
  %eq.lhs.len759 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len760 = load i64, ptr %eq.lhs.len759, align 8
  %eq.lhs.len761 = and i64 %eq.lhs.len760, 281474976710655
  %str.tag762 = lshr i64 %eq.lhs.len760, 48
  %tag.immortal764 = icmp eq i64 %str.tag762, 0
  %active.gen765 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current766 = icmp eq i64 %str.tag762, %active.gen765
  %tag.fast.ok767 = or i1 %tag.immortal764, %tag.current766
  br i1 %tag.fast.ok767, label %str_ok763, label %tag.slow_check768

str_ok729:                                        ; preds = %tag.slow_check734, %choice.next690
  %eq.rhs.len735 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len736 = and i64 %eq.rhs.len735, 281474976710655
  %eq.len737 = icmp eq i64 %eq.lhs.len727, %eq.rhs.len736
  br i1 %eq.len737, label %str.eq.then738, label %str.eq.else739

tag.slow_check734:                                ; preds = %choice.next690
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag728)
  br label %str_ok729

str.eq.then738:                                   ; preds = %str_ok729
  %eq.lhs.data741 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data742 = load ptr, ptr %eq.lhs.data741, align 8
  %eq.rhs.data743 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp744 = call i32 @memcmp(ptr %eq.lhs.data742, ptr %eq.rhs.data743, i64 %eq.lhs.len727)
  %eq.cmp.zero745 = icmp eq i32 %eq.memcmp744, 0
  br label %str.eq.merge740

str.eq.else739:                                   ; preds = %str_ok729
  br label %str.eq.merge740

str.eq.merge740:                                  ; preds = %str.eq.else739, %str.eq.then738
  %str.eq.result746 = phi i1 [ %eq.cmp.zero745, %str.eq.then738 ], [ false, %str.eq.else739 ]
  br i1 %str.eq.result746, label %choice.case723, label %choice.next724

choice.case757:                                   ; preds = %str.eq.merge774
  %arena.cur781 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc782 = call ptr @dva_arena_alloc(ptr %arena.cur781, i64 16)
  %tag.gep783 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc782, i32 0, i32 0
  store i64 4, ptr %tag.gep783, align 8
  %pay.gep784 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc782, i32 0, i32 1
  store ptr null, ptr %pay.gep784, align 8
  %arena.cur785 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld787 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc786, i32 0, i32 0
  store i64 150, ptr %rec.fld787, align 8
  %rec.fld788 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc786, i32 0, i32 1
  store i64 160, ptr %rec.fld788, align 8
  %rec.fld789 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc786, i32 0, i32 2
  store ptr %enum.alloc782, ptr %rec.fld789, align 8
  %rec.fld790 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc786, i32 0, i32 3
  store i1 false, ptr %rec.fld790, align 1
  br label %choice.exit

choice.next758:                                   ; preds = %str.eq.merge774
  br label %choice.exit

str_ok763:                                        ; preds = %tag.slow_check768, %choice.next724
  %eq.rhs.len769 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len770 = and i64 %eq.rhs.len769, 281474976710655
  %eq.len771 = icmp eq i64 %eq.lhs.len761, %eq.rhs.len770
  br i1 %eq.len771, label %str.eq.then772, label %str.eq.else773

tag.slow_check768:                                ; preds = %choice.next724
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag762)
  br label %str_ok763

str.eq.then772:                                   ; preds = %str_ok763
  %eq.lhs.data775 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data776 = load ptr, ptr %eq.lhs.data775, align 8
  %eq.rhs.data777 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp778 = call i32 @memcmp(ptr %eq.lhs.data776, ptr %eq.rhs.data777, i64 %eq.lhs.len761)
  %eq.cmp.zero779 = icmp eq i32 %eq.memcmp778, 0
  br label %str.eq.merge774

str.eq.else773:                                   ; preds = %str_ok763
  br label %str.eq.merge774

str.eq.merge774:                                  ; preds = %str.eq.else773, %str.eq.then772
  %str.eq.result780 = phi i1 [ %eq.cmp.zero779, %str.eq.then772 ], [ false, %str.eq.else773 ]
  br i1 %str.eq.result780, label %choice.case757, label %choice.next758
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

declare i32 @memcmp(ptr, ptr, i64) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
