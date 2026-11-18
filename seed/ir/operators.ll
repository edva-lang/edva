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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit:                                      ; preds = %choice.next604, %choice.case603, %choice.case576, %choice.case549, %choice.case522, %choice.case495, %choice.case468, %choice.case441, %choice.case414, %choice.case387, %choice.case360, %choice.case333, %choice.case306, %choice.case279, %choice.case252, %choice.case225, %choice.case198, %choice.case171, %choice.case144, %choice.case117, %choice.case90, %choice.case63, %choice.case36, %choice.case9, %choice.case
  %choice.res = phi ptr [ %rec.alloc, %choice.case ], [ %rec.alloc31, %choice.case9 ], [ %rec.alloc58, %choice.case36 ], [ %rec.alloc85, %choice.case63 ], [ %rec.alloc112, %choice.case90 ], [ %rec.alloc139, %choice.case117 ], [ %rec.alloc166, %choice.case144 ], [ %rec.alloc193, %choice.case171 ], [ %rec.alloc220, %choice.case198 ], [ %rec.alloc247, %choice.case225 ], [ %rec.alloc274, %choice.case252 ], [ %rec.alloc301, %choice.case279 ], [ %rec.alloc328, %choice.case306 ], [ %rec.alloc355, %choice.case333 ], [ %rec.alloc382, %choice.case360 ], [ %rec.alloc409, %choice.case387 ], [ %rec.alloc436, %choice.case414 ], [ %rec.alloc463, %choice.case441 ], [ %rec.alloc490, %choice.case468 ], [ %rec.alloc517, %choice.case495 ], [ %rec.alloc544, %choice.case522 ], [ %rec.alloc571, %choice.case549 ], [ %rec.alloc598, %choice.case576 ], [ %rec.alloc625, %choice.case603 ], [ null, %choice.next604 ]
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
  %eq.rhs.len14 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len14, 281474976710655
  %eq.len16 = icmp eq i64 %eq.lhs.len13, %eq.rhs.len15
  br i1 %eq.len16, label %str.eq.then17, label %str.eq.else18

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case9:                                     ; preds = %str.eq.merge19
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc27, i32 0, i32 0
  store i64 12, ptr %tag.gep28, align 8
  %pay.gep29 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc27, i32 0, i32 1
  store ptr null, ptr %pay.gep29, align 8
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld32 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc31, i32 0, i32 0
  store i64 80, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc31, i32 0, i32 1
  store i64 90, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc31, i32 0, i32 2
  store ptr %enum.alloc27, ptr %rec.fld34, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc31, i32 0, i32 3
  store i1 false, ptr %rec.fld35, align 1
  br label %choice.exit

choice.next10:                                    ; preds = %str.eq.merge19
  %eq.lhs.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len39 = load i64, ptr %eq.lhs.len38, align 8
  %eq.lhs.len40 = and i64 %eq.lhs.len39, 281474976710655
  %eq.rhs.len41 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len42 = and i64 %eq.rhs.len41, 281474976710655
  %eq.len43 = icmp eq i64 %eq.lhs.len40, %eq.rhs.len42
  br i1 %eq.len43, label %str.eq.then44, label %str.eq.else45

str.eq.then17:                                    ; preds = %choice.next
  %eq.lhs.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data20, align 8
  %eq.rhs.data22 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp23 = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data22, i64 %eq.lhs.len13)
  %eq.cmp.zero24 = icmp eq i32 %eq.memcmp23, 0
  br label %str.eq.merge19

str.eq.else18:                                    ; preds = %choice.next
  br label %str.eq.merge19

str.eq.merge19:                                   ; preds = %str.eq.else18, %str.eq.then17
  %str.eq.result25 = phi i1 [ %eq.cmp.zero24, %str.eq.then17 ], [ false, %str.eq.else18 ]
  br i1 %str.eq.result25, label %choice.case9, label %choice.next10

choice.case36:                                    ; preds = %str.eq.merge46
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  %tag.gep55 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc54, i32 0, i32 0
  store i64 11, ptr %tag.gep55, align 8
  %pay.gep56 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc54, i32 0, i32 1
  store ptr null, ptr %pay.gep56, align 8
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld59 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc58, i32 0, i32 0
  store i64 90, ptr %rec.fld59, align 8
  %rec.fld60 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc58, i32 0, i32 1
  store i64 100, ptr %rec.fld60, align 8
  %rec.fld61 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc58, i32 0, i32 2
  store ptr %enum.alloc54, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc58, i32 0, i32 3
  store i1 false, ptr %rec.fld62, align 1
  br label %choice.exit

choice.next37:                                    ; preds = %str.eq.merge46
  %eq.lhs.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len66 = load i64, ptr %eq.lhs.len65, align 8
  %eq.lhs.len67 = and i64 %eq.lhs.len66, 281474976710655
  %eq.rhs.len68 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len69 = and i64 %eq.rhs.len68, 281474976710655
  %eq.len70 = icmp eq i64 %eq.lhs.len67, %eq.rhs.len69
  br i1 %eq.len70, label %str.eq.then71, label %str.eq.else72

str.eq.then44:                                    ; preds = %choice.next10
  %eq.lhs.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data48 = load ptr, ptr %eq.lhs.data47, align 8
  %eq.rhs.data49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp50 = call i32 @memcmp(ptr %eq.lhs.data48, ptr %eq.rhs.data49, i64 %eq.lhs.len40)
  %eq.cmp.zero51 = icmp eq i32 %eq.memcmp50, 0
  br label %str.eq.merge46

str.eq.else45:                                    ; preds = %choice.next10
  br label %str.eq.merge46

str.eq.merge46:                                   ; preds = %str.eq.else45, %str.eq.then44
  %str.eq.result52 = phi i1 [ %eq.cmp.zero51, %str.eq.then44 ], [ false, %str.eq.else45 ]
  br i1 %str.eq.result52, label %choice.case36, label %choice.next37

choice.case63:                                    ; preds = %str.eq.merge73
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %tag.gep82 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc81, i32 0, i32 0
  store i64 20, ptr %tag.gep82, align 8
  %pay.gep83 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc81, i32 0, i32 1
  store ptr null, ptr %pay.gep83, align 8
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld86 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc85, i32 0, i32 0
  store i64 100, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc85, i32 0, i32 1
  store i64 105, ptr %rec.fld87, align 8
  %rec.fld88 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc85, i32 0, i32 2
  store ptr %enum.alloc81, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc85, i32 0, i32 3
  store i1 false, ptr %rec.fld89, align 1
  br label %choice.exit

choice.next64:                                    ; preds = %str.eq.merge73
  %eq.lhs.len92 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len93 = load i64, ptr %eq.lhs.len92, align 8
  %eq.lhs.len94 = and i64 %eq.lhs.len93, 281474976710655
  %eq.rhs.len95 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len96 = and i64 %eq.rhs.len95, 281474976710655
  %eq.len97 = icmp eq i64 %eq.lhs.len94, %eq.rhs.len96
  br i1 %eq.len97, label %str.eq.then98, label %str.eq.else99

str.eq.then71:                                    ; preds = %choice.next37
  %eq.lhs.data74 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data75 = load ptr, ptr %eq.lhs.data74, align 8
  %eq.rhs.data76 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp77 = call i32 @memcmp(ptr %eq.lhs.data75, ptr %eq.rhs.data76, i64 %eq.lhs.len67)
  %eq.cmp.zero78 = icmp eq i32 %eq.memcmp77, 0
  br label %str.eq.merge73

str.eq.else72:                                    ; preds = %choice.next37
  br label %str.eq.merge73

str.eq.merge73:                                   ; preds = %str.eq.else72, %str.eq.then71
  %str.eq.result79 = phi i1 [ %eq.cmp.zero78, %str.eq.then71 ], [ false, %str.eq.else72 ]
  br i1 %str.eq.result79, label %choice.case63, label %choice.next64

choice.case90:                                    ; preds = %str.eq.merge100
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 16)
  %tag.gep109 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc108, i32 0, i32 0
  store i64 21, ptr %tag.gep109, align 8
  %pay.gep110 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc108, i32 0, i32 1
  store ptr null, ptr %pay.gep110, align 8
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld113 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc112, i32 0, i32 0
  store i64 105, ptr %rec.fld113, align 8
  %rec.fld114 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc112, i32 0, i32 1
  store i64 110, ptr %rec.fld114, align 8
  %rec.fld115 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc112, i32 0, i32 2
  store ptr %enum.alloc108, ptr %rec.fld115, align 8
  %rec.fld116 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc112, i32 0, i32 3
  store i1 false, ptr %rec.fld116, align 1
  br label %choice.exit

choice.next91:                                    ; preds = %str.eq.merge100
  %eq.lhs.len119 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len120 = load i64, ptr %eq.lhs.len119, align 8
  %eq.lhs.len121 = and i64 %eq.lhs.len120, 281474976710655
  %eq.rhs.len122 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len123 = and i64 %eq.rhs.len122, 281474976710655
  %eq.len124 = icmp eq i64 %eq.lhs.len121, %eq.rhs.len123
  br i1 %eq.len124, label %str.eq.then125, label %str.eq.else126

str.eq.then98:                                    ; preds = %choice.next64
  %eq.lhs.data101 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data102 = load ptr, ptr %eq.lhs.data101, align 8
  %eq.rhs.data103 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp104 = call i32 @memcmp(ptr %eq.lhs.data102, ptr %eq.rhs.data103, i64 %eq.lhs.len94)
  %eq.cmp.zero105 = icmp eq i32 %eq.memcmp104, 0
  br label %str.eq.merge100

str.eq.else99:                                    ; preds = %choice.next64
  br label %str.eq.merge100

str.eq.merge100:                                  ; preds = %str.eq.else99, %str.eq.then98
  %str.eq.result106 = phi i1 [ %eq.cmp.zero105, %str.eq.then98 ], [ false, %str.eq.else99 ]
  br i1 %str.eq.result106, label %choice.case90, label %choice.next91

choice.case117:                                   ; preds = %str.eq.merge127
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 16)
  %tag.gep136 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc135, i32 0, i32 0
  store i64 19, ptr %tag.gep136, align 8
  %pay.gep137 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc135, i32 0, i32 1
  store ptr null, ptr %pay.gep137, align 8
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld140 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc139, i32 0, i32 0
  store i64 110, ptr %rec.fld140, align 8
  %rec.fld141 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc139, i32 0, i32 1
  store i64 120, ptr %rec.fld141, align 8
  %rec.fld142 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc139, i32 0, i32 2
  store ptr %enum.alloc135, ptr %rec.fld142, align 8
  %rec.fld143 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc139, i32 0, i32 3
  store i1 false, ptr %rec.fld143, align 1
  br label %choice.exit

choice.next118:                                   ; preds = %str.eq.merge127
  %eq.lhs.len146 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len147 = load i64, ptr %eq.lhs.len146, align 8
  %eq.lhs.len148 = and i64 %eq.lhs.len147, 281474976710655
  %eq.rhs.len149 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len150 = and i64 %eq.rhs.len149, 281474976710655
  %eq.len151 = icmp eq i64 %eq.lhs.len148, %eq.rhs.len150
  br i1 %eq.len151, label %str.eq.then152, label %str.eq.else153

str.eq.then125:                                   ; preds = %choice.next91
  %eq.lhs.data128 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data129 = load ptr, ptr %eq.lhs.data128, align 8
  %eq.rhs.data130 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp131 = call i32 @memcmp(ptr %eq.lhs.data129, ptr %eq.rhs.data130, i64 %eq.lhs.len121)
  %eq.cmp.zero132 = icmp eq i32 %eq.memcmp131, 0
  br label %str.eq.merge127

str.eq.else126:                                   ; preds = %choice.next91
  br label %str.eq.merge127

str.eq.merge127:                                  ; preds = %str.eq.else126, %str.eq.then125
  %str.eq.result133 = phi i1 [ %eq.cmp.zero132, %str.eq.then125 ], [ false, %str.eq.else126 ]
  br i1 %str.eq.result133, label %choice.case117, label %choice.next118

choice.case144:                                   ; preds = %str.eq.merge154
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %tag.gep163 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc162, i32 0, i32 0
  store i64 6, ptr %tag.gep163, align 8
  %pay.gep164 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc162, i32 0, i32 1
  store ptr null, ptr %pay.gep164, align 8
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld167 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc166, i32 0, i32 0
  store i64 120, ptr %rec.fld167, align 8
  %rec.fld168 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc166, i32 0, i32 1
  store i64 130, ptr %rec.fld168, align 8
  %rec.fld169 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc166, i32 0, i32 2
  store ptr %enum.alloc162, ptr %rec.fld169, align 8
  %rec.fld170 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc166, i32 0, i32 3
  store i1 true, ptr %rec.fld170, align 1
  br label %choice.exit

choice.next145:                                   ; preds = %str.eq.merge154
  %eq.lhs.len173 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len174 = load i64, ptr %eq.lhs.len173, align 8
  %eq.lhs.len175 = and i64 %eq.lhs.len174, 281474976710655
  %eq.rhs.len176 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len177 = and i64 %eq.rhs.len176, 281474976710655
  %eq.len178 = icmp eq i64 %eq.lhs.len175, %eq.rhs.len177
  br i1 %eq.len178, label %str.eq.then179, label %str.eq.else180

str.eq.then152:                                   ; preds = %choice.next118
  %eq.lhs.data155 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data156 = load ptr, ptr %eq.lhs.data155, align 8
  %eq.rhs.data157 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp158 = call i32 @memcmp(ptr %eq.lhs.data156, ptr %eq.rhs.data157, i64 %eq.lhs.len148)
  %eq.cmp.zero159 = icmp eq i32 %eq.memcmp158, 0
  br label %str.eq.merge154

str.eq.else153:                                   ; preds = %choice.next118
  br label %str.eq.merge154

str.eq.merge154:                                  ; preds = %str.eq.else153, %str.eq.then152
  %str.eq.result160 = phi i1 [ %eq.cmp.zero159, %str.eq.then152 ], [ false, %str.eq.else153 ]
  br i1 %str.eq.result160, label %choice.case144, label %choice.next145

choice.case171:                                   ; preds = %str.eq.merge181
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 16)
  %tag.gep190 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc189, i32 0, i32 0
  store i64 5, ptr %tag.gep190, align 8
  %pay.gep191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc189, i32 0, i32 1
  store ptr null, ptr %pay.gep191, align 8
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld194 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc193, i32 0, i32 0
  store i64 120, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc193, i32 0, i32 1
  store i64 130, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc193, i32 0, i32 2
  store ptr %enum.alloc189, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc193, i32 0, i32 3
  store i1 true, ptr %rec.fld197, align 1
  br label %choice.exit

choice.next172:                                   ; preds = %str.eq.merge181
  %eq.lhs.len200 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len201 = load i64, ptr %eq.lhs.len200, align 8
  %eq.lhs.len202 = and i64 %eq.lhs.len201, 281474976710655
  %eq.rhs.len203 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len204 = and i64 %eq.rhs.len203, 281474976710655
  %eq.len205 = icmp eq i64 %eq.lhs.len202, %eq.rhs.len204
  br i1 %eq.len205, label %str.eq.then206, label %str.eq.else207

str.eq.then179:                                   ; preds = %choice.next145
  %eq.lhs.data182 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data183 = load ptr, ptr %eq.lhs.data182, align 8
  %eq.rhs.data184 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp185 = call i32 @memcmp(ptr %eq.lhs.data183, ptr %eq.rhs.data184, i64 %eq.lhs.len175)
  %eq.cmp.zero186 = icmp eq i32 %eq.memcmp185, 0
  br label %str.eq.merge181

str.eq.else180:                                   ; preds = %choice.next145
  br label %str.eq.merge181

str.eq.merge181:                                  ; preds = %str.eq.else180, %str.eq.then179
  %str.eq.result187 = phi i1 [ %eq.cmp.zero186, %str.eq.then179 ], [ false, %str.eq.else180 ]
  br i1 %str.eq.result187, label %choice.case171, label %choice.next172

choice.case198:                                   ; preds = %str.eq.merge208
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %tag.gep217 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc216, i32 0, i32 0
  store i64 7, ptr %tag.gep217, align 8
  %pay.gep218 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc216, i32 0, i32 1
  store ptr null, ptr %pay.gep218, align 8
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld221 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc220, i32 0, i32 0
  store i64 120, ptr %rec.fld221, align 8
  %rec.fld222 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc220, i32 0, i32 1
  store i64 130, ptr %rec.fld222, align 8
  %rec.fld223 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc220, i32 0, i32 2
  store ptr %enum.alloc216, ptr %rec.fld223, align 8
  %rec.fld224 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc220, i32 0, i32 3
  store i1 true, ptr %rec.fld224, align 1
  br label %choice.exit

choice.next199:                                   ; preds = %str.eq.merge208
  %eq.lhs.len227 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len228 = load i64, ptr %eq.lhs.len227, align 8
  %eq.lhs.len229 = and i64 %eq.lhs.len228, 281474976710655
  %eq.rhs.len230 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len231 = and i64 %eq.rhs.len230, 281474976710655
  %eq.len232 = icmp eq i64 %eq.lhs.len229, %eq.rhs.len231
  br i1 %eq.len232, label %str.eq.then233, label %str.eq.else234

str.eq.then206:                                   ; preds = %choice.next172
  %eq.lhs.data209 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data210 = load ptr, ptr %eq.lhs.data209, align 8
  %eq.rhs.data211 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp212 = call i32 @memcmp(ptr %eq.lhs.data210, ptr %eq.rhs.data211, i64 %eq.lhs.len202)
  %eq.cmp.zero213 = icmp eq i32 %eq.memcmp212, 0
  br label %str.eq.merge208

str.eq.else207:                                   ; preds = %choice.next172
  br label %str.eq.merge208

str.eq.merge208:                                  ; preds = %str.eq.else207, %str.eq.then206
  %str.eq.result214 = phi i1 [ %eq.cmp.zero213, %str.eq.then206 ], [ false, %str.eq.else207 ]
  br i1 %str.eq.result214, label %choice.case198, label %choice.next199

choice.case225:                                   ; preds = %str.eq.merge235
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 16)
  %tag.gep244 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc243, i32 0, i32 0
  store i64 10, ptr %tag.gep244, align 8
  %pay.gep245 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc243, i32 0, i32 1
  store ptr null, ptr %pay.gep245, align 8
  %arena.cur246 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld248 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc247, i32 0, i32 0
  store i64 120, ptr %rec.fld248, align 8
  %rec.fld249 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc247, i32 0, i32 1
  store i64 130, ptr %rec.fld249, align 8
  %rec.fld250 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc247, i32 0, i32 2
  store ptr %enum.alloc243, ptr %rec.fld250, align 8
  %rec.fld251 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc247, i32 0, i32 3
  store i1 true, ptr %rec.fld251, align 1
  br label %choice.exit

choice.next226:                                   ; preds = %str.eq.merge235
  %eq.lhs.len254 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len255 = load i64, ptr %eq.lhs.len254, align 8
  %eq.lhs.len256 = and i64 %eq.lhs.len255, 281474976710655
  %eq.rhs.len257 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len258 = and i64 %eq.rhs.len257, 281474976710655
  %eq.len259 = icmp eq i64 %eq.lhs.len256, %eq.rhs.len258
  br i1 %eq.len259, label %str.eq.then260, label %str.eq.else261

str.eq.then233:                                   ; preds = %choice.next199
  %eq.lhs.data236 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data237 = load ptr, ptr %eq.lhs.data236, align 8
  %eq.rhs.data238 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp239 = call i32 @memcmp(ptr %eq.lhs.data237, ptr %eq.rhs.data238, i64 %eq.lhs.len229)
  %eq.cmp.zero240 = icmp eq i32 %eq.memcmp239, 0
  br label %str.eq.merge235

str.eq.else234:                                   ; preds = %choice.next199
  br label %str.eq.merge235

str.eq.merge235:                                  ; preds = %str.eq.else234, %str.eq.then233
  %str.eq.result241 = phi i1 [ %eq.cmp.zero240, %str.eq.then233 ], [ false, %str.eq.else234 ]
  br i1 %str.eq.result241, label %choice.case225, label %choice.next226

choice.case252:                                   ; preds = %str.eq.merge262
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 16)
  %tag.gep271 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc270, i32 0, i32 0
  store i64 9, ptr %tag.gep271, align 8
  %pay.gep272 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc270, i32 0, i32 1
  store ptr null, ptr %pay.gep272, align 8
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld275 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc274, i32 0, i32 0
  store i64 120, ptr %rec.fld275, align 8
  %rec.fld276 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc274, i32 0, i32 1
  store i64 130, ptr %rec.fld276, align 8
  %rec.fld277 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc274, i32 0, i32 2
  store ptr %enum.alloc270, ptr %rec.fld277, align 8
  %rec.fld278 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc274, i32 0, i32 3
  store i1 true, ptr %rec.fld278, align 1
  br label %choice.exit

choice.next253:                                   ; preds = %str.eq.merge262
  %eq.lhs.len281 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len282 = load i64, ptr %eq.lhs.len281, align 8
  %eq.lhs.len283 = and i64 %eq.lhs.len282, 281474976710655
  %eq.rhs.len284 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len285 = and i64 %eq.rhs.len284, 281474976710655
  %eq.len286 = icmp eq i64 %eq.lhs.len283, %eq.rhs.len285
  br i1 %eq.len286, label %str.eq.then287, label %str.eq.else288

str.eq.then260:                                   ; preds = %choice.next226
  %eq.lhs.data263 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data264 = load ptr, ptr %eq.lhs.data263, align 8
  %eq.rhs.data265 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp266 = call i32 @memcmp(ptr %eq.lhs.data264, ptr %eq.rhs.data265, i64 %eq.lhs.len256)
  %eq.cmp.zero267 = icmp eq i32 %eq.memcmp266, 0
  br label %str.eq.merge262

str.eq.else261:                                   ; preds = %choice.next226
  br label %str.eq.merge262

str.eq.merge262:                                  ; preds = %str.eq.else261, %str.eq.then260
  %str.eq.result268 = phi i1 [ %eq.cmp.zero267, %str.eq.then260 ], [ false, %str.eq.else261 ]
  br i1 %str.eq.result268, label %choice.case252, label %choice.next253

choice.case279:                                   ; preds = %str.eq.merge289
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 16)
  %tag.gep298 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc297, i32 0, i32 0
  store i64 8, ptr %tag.gep298, align 8
  %pay.gep299 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc297, i32 0, i32 1
  store ptr null, ptr %pay.gep299, align 8
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld302 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc301, i32 0, i32 0
  store i64 120, ptr %rec.fld302, align 8
  %rec.fld303 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc301, i32 0, i32 1
  store i64 130, ptr %rec.fld303, align 8
  %rec.fld304 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc301, i32 0, i32 2
  store ptr %enum.alloc297, ptr %rec.fld304, align 8
  %rec.fld305 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc301, i32 0, i32 3
  store i1 true, ptr %rec.fld305, align 1
  br label %choice.exit

choice.next280:                                   ; preds = %str.eq.merge289
  %eq.lhs.len308 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len309 = load i64, ptr %eq.lhs.len308, align 8
  %eq.lhs.len310 = and i64 %eq.lhs.len309, 281474976710655
  %eq.rhs.len311 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len312 = and i64 %eq.rhs.len311, 281474976710655
  %eq.len313 = icmp eq i64 %eq.lhs.len310, %eq.rhs.len312
  br i1 %eq.len313, label %str.eq.then314, label %str.eq.else315

str.eq.then287:                                   ; preds = %choice.next253
  %eq.lhs.data290 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data291 = load ptr, ptr %eq.lhs.data290, align 8
  %eq.rhs.data292 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp293 = call i32 @memcmp(ptr %eq.lhs.data291, ptr %eq.rhs.data292, i64 %eq.lhs.len283)
  %eq.cmp.zero294 = icmp eq i32 %eq.memcmp293, 0
  br label %str.eq.merge289

str.eq.else288:                                   ; preds = %choice.next253
  br label %str.eq.merge289

str.eq.merge289:                                  ; preds = %str.eq.else288, %str.eq.then287
  %str.eq.result295 = phi i1 [ %eq.cmp.zero294, %str.eq.then287 ], [ false, %str.eq.else288 ]
  br i1 %str.eq.result295, label %choice.case279, label %choice.next280

choice.case306:                                   ; preds = %str.eq.merge316
  %arena.cur323 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 16)
  %tag.gep325 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc324, i32 0, i32 0
  store i64 22, ptr %tag.gep325, align 8
  %pay.gep326 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc324, i32 0, i32 1
  store ptr null, ptr %pay.gep326, align 8
  %arena.cur327 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld329 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc328, i32 0, i32 0
  store i64 130, ptr %rec.fld329, align 8
  %rec.fld330 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc328, i32 0, i32 1
  store i64 140, ptr %rec.fld330, align 8
  %rec.fld331 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc328, i32 0, i32 2
  store ptr %enum.alloc324, ptr %rec.fld331, align 8
  %rec.fld332 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc328, i32 0, i32 3
  store i1 false, ptr %rec.fld332, align 1
  br label %choice.exit

choice.next307:                                   ; preds = %str.eq.merge316
  %eq.lhs.len335 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len336 = load i64, ptr %eq.lhs.len335, align 8
  %eq.lhs.len337 = and i64 %eq.lhs.len336, 281474976710655
  %eq.rhs.len338 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len339 = and i64 %eq.rhs.len338, 281474976710655
  %eq.len340 = icmp eq i64 %eq.lhs.len337, %eq.rhs.len339
  br i1 %eq.len340, label %str.eq.then341, label %str.eq.else342

str.eq.then314:                                   ; preds = %choice.next280
  %eq.lhs.data317 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data318 = load ptr, ptr %eq.lhs.data317, align 8
  %eq.rhs.data319 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp320 = call i32 @memcmp(ptr %eq.lhs.data318, ptr %eq.rhs.data319, i64 %eq.lhs.len310)
  %eq.cmp.zero321 = icmp eq i32 %eq.memcmp320, 0
  br label %str.eq.merge316

str.eq.else315:                                   ; preds = %choice.next280
  br label %str.eq.merge316

str.eq.merge316:                                  ; preds = %str.eq.else315, %str.eq.then314
  %str.eq.result322 = phi i1 [ %eq.cmp.zero321, %str.eq.then314 ], [ false, %str.eq.else315 ]
  br i1 %str.eq.result322, label %choice.case306, label %choice.next307

choice.case333:                                   ; preds = %str.eq.merge343
  %arena.cur350 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 16)
  %tag.gep352 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc351, i32 0, i32 0
  store i64 23, ptr %tag.gep352, align 8
  %pay.gep353 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc351, i32 0, i32 1
  store ptr null, ptr %pay.gep353, align 8
  %arena.cur354 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld356 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc355, i32 0, i32 0
  store i64 130, ptr %rec.fld356, align 8
  %rec.fld357 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc355, i32 0, i32 1
  store i64 140, ptr %rec.fld357, align 8
  %rec.fld358 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc355, i32 0, i32 2
  store ptr %enum.alloc351, ptr %rec.fld358, align 8
  %rec.fld359 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc355, i32 0, i32 3
  store i1 false, ptr %rec.fld359, align 1
  br label %choice.exit

choice.next334:                                   ; preds = %str.eq.merge343
  %eq.lhs.len362 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len363 = load i64, ptr %eq.lhs.len362, align 8
  %eq.lhs.len364 = and i64 %eq.lhs.len363, 281474976710655
  %eq.rhs.len365 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len366 = and i64 %eq.rhs.len365, 281474976710655
  %eq.len367 = icmp eq i64 %eq.lhs.len364, %eq.rhs.len366
  br i1 %eq.len367, label %str.eq.then368, label %str.eq.else369

str.eq.then341:                                   ; preds = %choice.next307
  %eq.lhs.data344 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data345 = load ptr, ptr %eq.lhs.data344, align 8
  %eq.rhs.data346 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp347 = call i32 @memcmp(ptr %eq.lhs.data345, ptr %eq.rhs.data346, i64 %eq.lhs.len337)
  %eq.cmp.zero348 = icmp eq i32 %eq.memcmp347, 0
  br label %str.eq.merge343

str.eq.else342:                                   ; preds = %choice.next307
  br label %str.eq.merge343

str.eq.merge343:                                  ; preds = %str.eq.else342, %str.eq.then341
  %str.eq.result349 = phi i1 [ %eq.cmp.zero348, %str.eq.then341 ], [ false, %str.eq.else342 ]
  br i1 %str.eq.result349, label %choice.case333, label %choice.next334

choice.case360:                                   ; preds = %str.eq.merge370
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 16)
  %tag.gep379 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc378, i32 0, i32 0
  store i64 0, ptr %tag.gep379, align 8
  %pay.gep380 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc378, i32 0, i32 1
  store ptr null, ptr %pay.gep380, align 8
  %arena.cur381 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld383 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc382, i32 0, i32 0
  store i64 140, ptr %rec.fld383, align 8
  %rec.fld384 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc382, i32 0, i32 1
  store i64 150, ptr %rec.fld384, align 8
  %rec.fld385 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc382, i32 0, i32 2
  store ptr %enum.alloc378, ptr %rec.fld385, align 8
  %rec.fld386 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc382, i32 0, i32 3
  store i1 false, ptr %rec.fld386, align 1
  br label %choice.exit

choice.next361:                                   ; preds = %str.eq.merge370
  %eq.lhs.len389 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len390 = load i64, ptr %eq.lhs.len389, align 8
  %eq.lhs.len391 = and i64 %eq.lhs.len390, 281474976710655
  %eq.rhs.len392 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len393 = and i64 %eq.rhs.len392, 281474976710655
  %eq.len394 = icmp eq i64 %eq.lhs.len391, %eq.rhs.len393
  br i1 %eq.len394, label %str.eq.then395, label %str.eq.else396

str.eq.then368:                                   ; preds = %choice.next334
  %eq.lhs.data371 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data372 = load ptr, ptr %eq.lhs.data371, align 8
  %eq.rhs.data373 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp374 = call i32 @memcmp(ptr %eq.lhs.data372, ptr %eq.rhs.data373, i64 %eq.lhs.len364)
  %eq.cmp.zero375 = icmp eq i32 %eq.memcmp374, 0
  br label %str.eq.merge370

str.eq.else369:                                   ; preds = %choice.next334
  br label %str.eq.merge370

str.eq.merge370:                                  ; preds = %str.eq.else369, %str.eq.then368
  %str.eq.result376 = phi i1 [ %eq.cmp.zero375, %str.eq.then368 ], [ false, %str.eq.else369 ]
  br i1 %str.eq.result376, label %choice.case360, label %choice.next361

choice.case387:                                   ; preds = %str.eq.merge397
  %arena.cur404 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 16)
  %tag.gep406 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc405, i32 0, i32 0
  store i64 1, ptr %tag.gep406, align 8
  %pay.gep407 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc405, i32 0, i32 1
  store ptr null, ptr %pay.gep407, align 8
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld410 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc409, i32 0, i32 0
  store i64 140, ptr %rec.fld410, align 8
  %rec.fld411 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc409, i32 0, i32 1
  store i64 150, ptr %rec.fld411, align 8
  %rec.fld412 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc409, i32 0, i32 2
  store ptr %enum.alloc405, ptr %rec.fld412, align 8
  %rec.fld413 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc409, i32 0, i32 3
  store i1 false, ptr %rec.fld413, align 1
  br label %choice.exit

choice.next388:                                   ; preds = %str.eq.merge397
  %eq.lhs.len416 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len417 = load i64, ptr %eq.lhs.len416, align 8
  %eq.lhs.len418 = and i64 %eq.lhs.len417, 281474976710655
  %eq.rhs.len419 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len420 = and i64 %eq.rhs.len419, 281474976710655
  %eq.len421 = icmp eq i64 %eq.lhs.len418, %eq.rhs.len420
  br i1 %eq.len421, label %str.eq.then422, label %str.eq.else423

str.eq.then395:                                   ; preds = %choice.next361
  %eq.lhs.data398 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data399 = load ptr, ptr %eq.lhs.data398, align 8
  %eq.rhs.data400 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp401 = call i32 @memcmp(ptr %eq.lhs.data399, ptr %eq.rhs.data400, i64 %eq.lhs.len391)
  %eq.cmp.zero402 = icmp eq i32 %eq.memcmp401, 0
  br label %str.eq.merge397

str.eq.else396:                                   ; preds = %choice.next361
  br label %str.eq.merge397

str.eq.merge397:                                  ; preds = %str.eq.else396, %str.eq.then395
  %str.eq.result403 = phi i1 [ %eq.cmp.zero402, %str.eq.then395 ], [ false, %str.eq.else396 ]
  br i1 %str.eq.result403, label %choice.case387, label %choice.next388

choice.case414:                                   ; preds = %str.eq.merge424
  %arena.cur431 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc432 = call ptr @dva_arena_alloc(ptr %arena.cur431, i64 16)
  %tag.gep433 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc432, i32 0, i32 0
  store i64 13, ptr %tag.gep433, align 8
  %pay.gep434 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc432, i32 0, i32 1
  store ptr null, ptr %pay.gep434, align 8
  %arena.cur435 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld437 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc436, i32 0, i32 0
  store i64 40, ptr %rec.fld437, align 8
  %rec.fld438 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc436, i32 0, i32 1
  store i64 50, ptr %rec.fld438, align 8
  %rec.fld439 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc436, i32 0, i32 2
  store ptr %enum.alloc432, ptr %rec.fld439, align 8
  %rec.fld440 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc436, i32 0, i32 3
  store i1 false, ptr %rec.fld440, align 1
  br label %choice.exit

choice.next415:                                   ; preds = %str.eq.merge424
  %eq.lhs.len443 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len444 = load i64, ptr %eq.lhs.len443, align 8
  %eq.lhs.len445 = and i64 %eq.lhs.len444, 281474976710655
  %eq.rhs.len446 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len447 = and i64 %eq.rhs.len446, 281474976710655
  %eq.len448 = icmp eq i64 %eq.lhs.len445, %eq.rhs.len447
  br i1 %eq.len448, label %str.eq.then449, label %str.eq.else450

str.eq.then422:                                   ; preds = %choice.next388
  %eq.lhs.data425 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data426 = load ptr, ptr %eq.lhs.data425, align 8
  %eq.rhs.data427 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp428 = call i32 @memcmp(ptr %eq.lhs.data426, ptr %eq.rhs.data427, i64 %eq.lhs.len418)
  %eq.cmp.zero429 = icmp eq i32 %eq.memcmp428, 0
  br label %str.eq.merge424

str.eq.else423:                                   ; preds = %choice.next388
  br label %str.eq.merge424

str.eq.merge424:                                  ; preds = %str.eq.else423, %str.eq.then422
  %str.eq.result430 = phi i1 [ %eq.cmp.zero429, %str.eq.then422 ], [ false, %str.eq.else423 ]
  br i1 %str.eq.result430, label %choice.case414, label %choice.next415

choice.case441:                                   ; preds = %str.eq.merge451
  %arena.cur458 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 16)
  %tag.gep460 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc459, i32 0, i32 0
  store i64 15, ptr %tag.gep460, align 8
  %pay.gep461 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc459, i32 0, i32 1
  store ptr null, ptr %pay.gep461, align 8
  %arena.cur462 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld464 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 0
  store i64 40, ptr %rec.fld464, align 8
  %rec.fld465 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 1
  store i64 50, ptr %rec.fld465, align 8
  %rec.fld466 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 2
  store ptr %enum.alloc459, ptr %rec.fld466, align 8
  %rec.fld467 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 3
  store i1 false, ptr %rec.fld467, align 1
  br label %choice.exit

choice.next442:                                   ; preds = %str.eq.merge451
  %eq.lhs.len470 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len471 = load i64, ptr %eq.lhs.len470, align 8
  %eq.lhs.len472 = and i64 %eq.lhs.len471, 281474976710655
  %eq.rhs.len473 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len474 = and i64 %eq.rhs.len473, 281474976710655
  %eq.len475 = icmp eq i64 %eq.lhs.len472, %eq.rhs.len474
  br i1 %eq.len475, label %str.eq.then476, label %str.eq.else477

str.eq.then449:                                   ; preds = %choice.next415
  %eq.lhs.data452 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data453 = load ptr, ptr %eq.lhs.data452, align 8
  %eq.rhs.data454 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp455 = call i32 @memcmp(ptr %eq.lhs.data453, ptr %eq.rhs.data454, i64 %eq.lhs.len445)
  %eq.cmp.zero456 = icmp eq i32 %eq.memcmp455, 0
  br label %str.eq.merge451

str.eq.else450:                                   ; preds = %choice.next415
  br label %str.eq.merge451

str.eq.merge451:                                  ; preds = %str.eq.else450, %str.eq.then449
  %str.eq.result457 = phi i1 [ %eq.cmp.zero456, %str.eq.then449 ], [ false, %str.eq.else450 ]
  br i1 %str.eq.result457, label %choice.case441, label %choice.next442

choice.case468:                                   ; preds = %str.eq.merge478
  %arena.cur485 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 16)
  %tag.gep487 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc486, i32 0, i32 0
  store i64 16, ptr %tag.gep487, align 8
  %pay.gep488 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc486, i32 0, i32 1
  store ptr null, ptr %pay.gep488, align 8
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld491 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc490, i32 0, i32 0
  store i64 40, ptr %rec.fld491, align 8
  %rec.fld492 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc490, i32 0, i32 1
  store i64 50, ptr %rec.fld492, align 8
  %rec.fld493 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc490, i32 0, i32 2
  store ptr %enum.alloc486, ptr %rec.fld493, align 8
  %rec.fld494 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc490, i32 0, i32 3
  store i1 false, ptr %rec.fld494, align 1
  br label %choice.exit

choice.next469:                                   ; preds = %str.eq.merge478
  %eq.lhs.len497 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len498 = load i64, ptr %eq.lhs.len497, align 8
  %eq.lhs.len499 = and i64 %eq.lhs.len498, 281474976710655
  %eq.rhs.len500 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len501 = and i64 %eq.rhs.len500, 281474976710655
  %eq.len502 = icmp eq i64 %eq.lhs.len499, %eq.rhs.len501
  br i1 %eq.len502, label %str.eq.then503, label %str.eq.else504

str.eq.then476:                                   ; preds = %choice.next442
  %eq.lhs.data479 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data480 = load ptr, ptr %eq.lhs.data479, align 8
  %eq.rhs.data481 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp482 = call i32 @memcmp(ptr %eq.lhs.data480, ptr %eq.rhs.data481, i64 %eq.lhs.len472)
  %eq.cmp.zero483 = icmp eq i32 %eq.memcmp482, 0
  br label %str.eq.merge478

str.eq.else477:                                   ; preds = %choice.next442
  br label %str.eq.merge478

str.eq.merge478:                                  ; preds = %str.eq.else477, %str.eq.then476
  %str.eq.result484 = phi i1 [ %eq.cmp.zero483, %str.eq.then476 ], [ false, %str.eq.else477 ]
  br i1 %str.eq.result484, label %choice.case468, label %choice.next469

choice.case495:                                   ; preds = %str.eq.merge505
  %arena.cur512 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc513 = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 16)
  %tag.gep514 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc513, i32 0, i32 0
  store i64 17, ptr %tag.gep514, align 8
  %pay.gep515 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc513, i32 0, i32 1
  store ptr null, ptr %pay.gep515, align 8
  %arena.cur516 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc517 = call ptr @dva_arena_alloc(ptr %arena.cur516, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld518 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc517, i32 0, i32 0
  store i64 40, ptr %rec.fld518, align 8
  %rec.fld519 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc517, i32 0, i32 1
  store i64 50, ptr %rec.fld519, align 8
  %rec.fld520 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc517, i32 0, i32 2
  store ptr %enum.alloc513, ptr %rec.fld520, align 8
  %rec.fld521 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc517, i32 0, i32 3
  store i1 false, ptr %rec.fld521, align 1
  br label %choice.exit

choice.next496:                                   ; preds = %str.eq.merge505
  %eq.lhs.len524 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len525 = load i64, ptr %eq.lhs.len524, align 8
  %eq.lhs.len526 = and i64 %eq.lhs.len525, 281474976710655
  %eq.rhs.len527 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len528 = and i64 %eq.rhs.len527, 281474976710655
  %eq.len529 = icmp eq i64 %eq.lhs.len526, %eq.rhs.len528
  br i1 %eq.len529, label %str.eq.then530, label %str.eq.else531

str.eq.then503:                                   ; preds = %choice.next469
  %eq.lhs.data506 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data507 = load ptr, ptr %eq.lhs.data506, align 8
  %eq.rhs.data508 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp509 = call i32 @memcmp(ptr %eq.lhs.data507, ptr %eq.rhs.data508, i64 %eq.lhs.len499)
  %eq.cmp.zero510 = icmp eq i32 %eq.memcmp509, 0
  br label %str.eq.merge505

str.eq.else504:                                   ; preds = %choice.next469
  br label %str.eq.merge505

str.eq.merge505:                                  ; preds = %str.eq.else504, %str.eq.then503
  %str.eq.result511 = phi i1 [ %eq.cmp.zero510, %str.eq.then503 ], [ false, %str.eq.else504 ]
  br i1 %str.eq.result511, label %choice.case495, label %choice.next496

choice.case522:                                   ; preds = %str.eq.merge532
  %arena.cur539 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 16)
  %tag.gep541 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc540, i32 0, i32 0
  store i64 18, ptr %tag.gep541, align 8
  %pay.gep542 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc540, i32 0, i32 1
  store ptr null, ptr %pay.gep542, align 8
  %arena.cur543 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc544 = call ptr @dva_arena_alloc(ptr %arena.cur543, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld545 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc544, i32 0, i32 0
  store i64 40, ptr %rec.fld545, align 8
  %rec.fld546 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc544, i32 0, i32 1
  store i64 50, ptr %rec.fld546, align 8
  %rec.fld547 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc544, i32 0, i32 2
  store ptr %enum.alloc540, ptr %rec.fld547, align 8
  %rec.fld548 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc544, i32 0, i32 3
  store i1 false, ptr %rec.fld548, align 1
  br label %choice.exit

choice.next523:                                   ; preds = %str.eq.merge532
  %eq.lhs.len551 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len552 = load i64, ptr %eq.lhs.len551, align 8
  %eq.lhs.len553 = and i64 %eq.lhs.len552, 281474976710655
  %eq.rhs.len554 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len555 = and i64 %eq.rhs.len554, 281474976710655
  %eq.len556 = icmp eq i64 %eq.lhs.len553, %eq.rhs.len555
  br i1 %eq.len556, label %str.eq.then557, label %str.eq.else558

str.eq.then530:                                   ; preds = %choice.next496
  %eq.lhs.data533 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data534 = load ptr, ptr %eq.lhs.data533, align 8
  %eq.rhs.data535 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp536 = call i32 @memcmp(ptr %eq.lhs.data534, ptr %eq.rhs.data535, i64 %eq.lhs.len526)
  %eq.cmp.zero537 = icmp eq i32 %eq.memcmp536, 0
  br label %str.eq.merge532

str.eq.else531:                                   ; preds = %choice.next496
  br label %str.eq.merge532

str.eq.merge532:                                  ; preds = %str.eq.else531, %str.eq.then530
  %str.eq.result538 = phi i1 [ %eq.cmp.zero537, %str.eq.then530 ], [ false, %str.eq.else531 ]
  br i1 %str.eq.result538, label %choice.case522, label %choice.next523

choice.case549:                                   ; preds = %str.eq.merge559
  %arena.cur566 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc567 = call ptr @dva_arena_alloc(ptr %arena.cur566, i64 16)
  %tag.gep568 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc567, i32 0, i32 0
  store i64 2, ptr %tag.gep568, align 8
  %pay.gep569 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc567, i32 0, i32 1
  store ptr null, ptr %pay.gep569, align 8
  %arena.cur570 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld572 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc571, i32 0, i32 0
  store i64 150, ptr %rec.fld572, align 8
  %rec.fld573 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc571, i32 0, i32 1
  store i64 160, ptr %rec.fld573, align 8
  %rec.fld574 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc571, i32 0, i32 2
  store ptr %enum.alloc567, ptr %rec.fld574, align 8
  %rec.fld575 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc571, i32 0, i32 3
  store i1 false, ptr %rec.fld575, align 1
  br label %choice.exit

choice.next550:                                   ; preds = %str.eq.merge559
  %eq.lhs.len578 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len579 = load i64, ptr %eq.lhs.len578, align 8
  %eq.lhs.len580 = and i64 %eq.lhs.len579, 281474976710655
  %eq.rhs.len581 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len582 = and i64 %eq.rhs.len581, 281474976710655
  %eq.len583 = icmp eq i64 %eq.lhs.len580, %eq.rhs.len582
  br i1 %eq.len583, label %str.eq.then584, label %str.eq.else585

str.eq.then557:                                   ; preds = %choice.next523
  %eq.lhs.data560 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data561 = load ptr, ptr %eq.lhs.data560, align 8
  %eq.rhs.data562 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp563 = call i32 @memcmp(ptr %eq.lhs.data561, ptr %eq.rhs.data562, i64 %eq.lhs.len553)
  %eq.cmp.zero564 = icmp eq i32 %eq.memcmp563, 0
  br label %str.eq.merge559

str.eq.else558:                                   ; preds = %choice.next523
  br label %str.eq.merge559

str.eq.merge559:                                  ; preds = %str.eq.else558, %str.eq.then557
  %str.eq.result565 = phi i1 [ %eq.cmp.zero564, %str.eq.then557 ], [ false, %str.eq.else558 ]
  br i1 %str.eq.result565, label %choice.case549, label %choice.next550

choice.case576:                                   ; preds = %str.eq.merge586
  %arena.cur593 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 16)
  %tag.gep595 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc594, i32 0, i32 0
  store i64 3, ptr %tag.gep595, align 8
  %pay.gep596 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc594, i32 0, i32 1
  store ptr null, ptr %pay.gep596, align 8
  %arena.cur597 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld599 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc598, i32 0, i32 0
  store i64 150, ptr %rec.fld599, align 8
  %rec.fld600 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc598, i32 0, i32 1
  store i64 160, ptr %rec.fld600, align 8
  %rec.fld601 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc598, i32 0, i32 2
  store ptr %enum.alloc594, ptr %rec.fld601, align 8
  %rec.fld602 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc598, i32 0, i32 3
  store i1 false, ptr %rec.fld602, align 1
  br label %choice.exit

choice.next577:                                   ; preds = %str.eq.merge586
  %eq.lhs.len605 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len606 = load i64, ptr %eq.lhs.len605, align 8
  %eq.lhs.len607 = and i64 %eq.lhs.len606, 281474976710655
  %eq.rhs.len608 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len609 = and i64 %eq.rhs.len608, 281474976710655
  %eq.len610 = icmp eq i64 %eq.lhs.len607, %eq.rhs.len609
  br i1 %eq.len610, label %str.eq.then611, label %str.eq.else612

str.eq.then584:                                   ; preds = %choice.next550
  %eq.lhs.data587 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data588 = load ptr, ptr %eq.lhs.data587, align 8
  %eq.rhs.data589 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp590 = call i32 @memcmp(ptr %eq.lhs.data588, ptr %eq.rhs.data589, i64 %eq.lhs.len580)
  %eq.cmp.zero591 = icmp eq i32 %eq.memcmp590, 0
  br label %str.eq.merge586

str.eq.else585:                                   ; preds = %choice.next550
  br label %str.eq.merge586

str.eq.merge586:                                  ; preds = %str.eq.else585, %str.eq.then584
  %str.eq.result592 = phi i1 [ %eq.cmp.zero591, %str.eq.then584 ], [ false, %str.eq.else585 ]
  br i1 %str.eq.result592, label %choice.case576, label %choice.next577

choice.case603:                                   ; preds = %str.eq.merge613
  %arena.cur620 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc621 = call ptr @dva_arena_alloc(ptr %arena.cur620, i64 16)
  %tag.gep622 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc621, i32 0, i32 0
  store i64 4, ptr %tag.gep622, align 8
  %pay.gep623 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc621, i32 0, i32 1
  store ptr null, ptr %pay.gep623, align 8
  %arena.cur624 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld626 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc625, i32 0, i32 0
  store i64 150, ptr %rec.fld626, align 8
  %rec.fld627 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc625, i32 0, i32 1
  store i64 160, ptr %rec.fld627, align 8
  %rec.fld628 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc625, i32 0, i32 2
  store ptr %enum.alloc621, ptr %rec.fld628, align 8
  %rec.fld629 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc625, i32 0, i32 3
  store i1 false, ptr %rec.fld629, align 1
  br label %choice.exit

choice.next604:                                   ; preds = %str.eq.merge613
  br label %choice.exit

str.eq.then611:                                   ; preds = %choice.next577
  %eq.lhs.data614 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data615 = load ptr, ptr %eq.lhs.data614, align 8
  %eq.rhs.data616 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp617 = call i32 @memcmp(ptr %eq.lhs.data615, ptr %eq.rhs.data616, i64 %eq.lhs.len607)
  %eq.cmp.zero618 = icmp eq i32 %eq.memcmp617, 0
  br label %str.eq.merge613

str.eq.else612:                                   ; preds = %choice.next577
  br label %str.eq.merge613

str.eq.merge613:                                  ; preds = %str.eq.else612, %str.eq.then611
  %str.eq.result619 = phi i1 [ %eq.cmp.zero618, %str.eq.then611 ], [ false, %str.eq.else612 ]
  br i1 %str.eq.result619, label %choice.case603, label %choice.next604
}

declare i32 @memcmp(ptr, ptr, i64) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
