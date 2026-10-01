; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
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
@str.4 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@str.5 = internal unnamed_addr constant [2 x i8] c"<\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.5 }
@str.6 = internal unnamed_addr constant [2 x i8] c">\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.6 }
@str.7 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.7 }
@str.8 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@str.9 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@str.10 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.10 }
@str.11 = internal unnamed_addr constant [4 x i8] c".<.\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.11 }
@str.12 = internal unnamed_addr constant [4 x i8] c".>.\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.12 }
@str.13 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.13 }
@str.14 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@str.15 = internal unnamed_addr constant [3 x i8] c"$>\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"$>>\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@str.17 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.17 }
@str.18 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.18 }
@str.19 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.19 }
@clo.const = internal constant { ptr, ptr } { ptr @"operators::bin_info", ptr null }
@"var.operators::bin_info" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_operators, ptr null }]

declare i32 @printf(ptr, ...)

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_operators() #1 {
entry:
  store ptr @clo.const, ptr @"var.operators::bin_info", align 8
  ret void
}

define ptr @"operators::bin_info"(ptr %0) #1 {
entry:
  %var.text = alloca ptr, align 8
  store ptr %0, ptr %var.text, align 8
  %var.load = load ptr, ptr %var.text, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next831, %choice.case830, %choice.case785, %choice.case740, %choice.case695, %choice.case650, %choice.case605, %choice.case560, %choice.case515, %choice.case470, %choice.case425, %choice.case380, %choice.case335, %choice.case290, %choice.case245, %choice.case200, %choice.case155, %choice.case110, %choice.case65, %choice.case20, %choice.case
  %choice.res = phi ptr [ %rec.alloc, %choice.case ], [ %rec.alloc60, %choice.case20 ], [ %rec.alloc105, %choice.case65 ], [ %rec.alloc150, %choice.case110 ], [ %rec.alloc195, %choice.case155 ], [ %rec.alloc240, %choice.case200 ], [ %rec.alloc285, %choice.case245 ], [ %rec.alloc330, %choice.case290 ], [ %rec.alloc375, %choice.case335 ], [ %rec.alloc420, %choice.case380 ], [ %rec.alloc465, %choice.case425 ], [ %rec.alloc510, %choice.case470 ], [ %rec.alloc555, %choice.case515 ], [ %rec.alloc600, %choice.case560 ], [ %rec.alloc645, %choice.case605 ], [ %rec.alloc690, %choice.case650 ], [ %rec.alloc735, %choice.case695 ], [ %rec.alloc780, %choice.case740 ], [ %rec.alloc825, %choice.case785 ], [ %rec.alloc870, %choice.case830 ], [ null, %choice.next831 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 14, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur16 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 30, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 30, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld19, align 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len23 = load i64, ptr %eq.lhs.len22, align 8
  %eq.lhs.len24 = and i64 %eq.lhs.len23, 281474976710655
  %str.tag25 = lshr i64 %eq.lhs.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case20:                                    ; preds = %str.eq.merge48
  %arena.cur55 = call ptr @dva_arena_current()
  %enum.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc56, i32 0, i32 0
  store i64 12, ptr %tag.gep57, align 8
  %pay.gep58 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc56, i32 0, i32 1
  store ptr null, ptr %pay.gep58, align 8
  %arena.cur59 = call ptr @dva_arena_current()
  %rec.alloc60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld61 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc60, i32 0, i32 0
  store i64 80, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc60, i32 0, i32 1
  store i64 90, ptr %rec.fld62, align 8
  %rec.fld63 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc60, i32 0, i32 2
  store ptr %enum.alloc56, ptr %rec.fld63, align 8
  %rec.fld64 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc60, i32 0, i32 3
  store i1 false, ptr %rec.fld64, align 1
  br label %choice.exit

choice.next21:                                    ; preds = %str.eq.merge48
  %eq.lhs.len67 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len68 = load i64, ptr %eq.lhs.len67, align 8
  %eq.lhs.len69 = and i64 %eq.lhs.len68, 281474976710655
  %str.tag70 = lshr i64 %eq.lhs.len68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_gen_check27:                                  ; preds = %choice.next
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %choice.next
  %eq.rhs.len34 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len35 = and i64 %eq.rhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.rhs.len34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale29:                                      ; preds = %str_gen_check27
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check38:                                  ; preds = %str_ok28
  %arena.gen41 = call ptr @dva_arena_current()
  %arena.gen42 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen41, i32 0, i32 4
  %arena.gen43 = load i64, ptr %arena.gen42, align 8
  %str.tag.match44 = icmp eq i64 %str.tag36, %arena.gen43
  br i1 %str.tag.match44, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok28
  %eq.len45 = icmp eq i64 %eq.lhs.len24, %eq.rhs.len35
  br i1 %eq.len45, label %str.eq.then46, label %str.eq.else47

str_stale40:                                      ; preds = %str_gen_check38
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

str.eq.then46:                                    ; preds = %str_ok39
  %eq.lhs.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data49, align 8
  %eq.rhs.data51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp52 = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data51, i64 %eq.lhs.len24)
  %eq.cmp.zero53 = icmp eq i32 %eq.memcmp52, 0
  br label %str.eq.merge48

str.eq.else47:                                    ; preds = %str_ok39
  br label %str.eq.merge48

str.eq.merge48:                                   ; preds = %str.eq.else47, %str.eq.then46
  %str.eq.result54 = phi i1 [ %eq.cmp.zero53, %str.eq.then46 ], [ false, %str.eq.else47 ]
  br i1 %str.eq.result54, label %choice.case20, label %choice.next21

choice.case65:                                    ; preds = %str.eq.merge93
  %arena.cur100 = call ptr @dva_arena_current()
  %enum.alloc101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %tag.gep102 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc101, i32 0, i32 0
  store i64 11, ptr %tag.gep102, align 8
  %pay.gep103 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc101, i32 0, i32 1
  store ptr null, ptr %pay.gep103, align 8
  %arena.cur104 = call ptr @dva_arena_current()
  %rec.alloc105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld106 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc105, i32 0, i32 0
  store i64 90, ptr %rec.fld106, align 8
  %rec.fld107 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc105, i32 0, i32 1
  store i64 100, ptr %rec.fld107, align 8
  %rec.fld108 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc105, i32 0, i32 2
  store ptr %enum.alloc101, ptr %rec.fld108, align 8
  %rec.fld109 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc105, i32 0, i32 3
  store i1 false, ptr %rec.fld109, align 1
  br label %choice.exit

choice.next66:                                    ; preds = %str.eq.merge93
  %eq.lhs.len112 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len113 = load i64, ptr %eq.lhs.len112, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %str.tag115 = lshr i64 %eq.lhs.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_gen_check72:                                  ; preds = %choice.next21
  %arena.gen75 = call ptr @dva_arena_current()
  %arena.gen76 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen75, i32 0, i32 4
  %arena.gen77 = load i64, ptr %arena.gen76, align 8
  %str.tag.match78 = icmp eq i64 %str.tag70, %arena.gen77
  br i1 %str.tag.match78, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %choice.next21
  %eq.rhs.len79 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len80 = and i64 %eq.rhs.len79, 281474976710655
  %str.tag81 = lshr i64 %eq.rhs.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

str_stale74:                                      ; preds = %str_gen_check72
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

str_gen_check83:                                  ; preds = %str_ok73
  %arena.gen86 = call ptr @dva_arena_current()
  %arena.gen87 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen86, i32 0, i32 4
  %arena.gen88 = load i64, ptr %arena.gen87, align 8
  %str.tag.match89 = icmp eq i64 %str.tag81, %arena.gen88
  br i1 %str.tag.match89, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %str_ok73
  %eq.len90 = icmp eq i64 %eq.lhs.len69, %eq.rhs.len80
  br i1 %eq.len90, label %str.eq.then91, label %str.eq.else92

str_stale85:                                      ; preds = %str_gen_check83
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str.eq.then91:                                    ; preds = %str_ok84
  %eq.lhs.data94 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data95 = load ptr, ptr %eq.lhs.data94, align 8
  %eq.rhs.data96 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp97 = call i32 @memcmp(ptr %eq.lhs.data95, ptr %eq.rhs.data96, i64 %eq.lhs.len69)
  %eq.cmp.zero98 = icmp eq i32 %eq.memcmp97, 0
  br label %str.eq.merge93

str.eq.else92:                                    ; preds = %str_ok84
  br label %str.eq.merge93

str.eq.merge93:                                   ; preds = %str.eq.else92, %str.eq.then91
  %str.eq.result99 = phi i1 [ %eq.cmp.zero98, %str.eq.then91 ], [ false, %str.eq.else92 ]
  br i1 %str.eq.result99, label %choice.case65, label %choice.next66

choice.case110:                                   ; preds = %str.eq.merge138
  %arena.cur145 = call ptr @dva_arena_current()
  %enum.alloc146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 16)
  %tag.gep147 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc146, i32 0, i32 0
  store i64 17, ptr %tag.gep147, align 8
  %pay.gep148 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc146, i32 0, i32 1
  store ptr null, ptr %pay.gep148, align 8
  %arena.cur149 = call ptr @dva_arena_current()
  %rec.alloc150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld151 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc150, i32 0, i32 0
  store i64 100, ptr %rec.fld151, align 8
  %rec.fld152 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc150, i32 0, i32 1
  store i64 110, ptr %rec.fld152, align 8
  %rec.fld153 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc150, i32 0, i32 2
  store ptr %enum.alloc146, ptr %rec.fld153, align 8
  %rec.fld154 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc150, i32 0, i32 3
  store i1 false, ptr %rec.fld154, align 1
  br label %choice.exit

choice.next111:                                   ; preds = %str.eq.merge138
  %eq.lhs.len157 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len158 = load i64, ptr %eq.lhs.len157, align 8
  %eq.lhs.len159 = and i64 %eq.lhs.len158, 281474976710655
  %str.tag160 = lshr i64 %eq.lhs.len158, 48
  %str.immortal161 = icmp eq i64 %str.tag160, 0
  br i1 %str.immortal161, label %str_ok163, label %str_gen_check162

str_gen_check117:                                 ; preds = %choice.next66
  %arena.gen120 = call ptr @dva_arena_current()
  %arena.gen121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen120, i32 0, i32 4
  %arena.gen122 = load i64, ptr %arena.gen121, align 8
  %str.tag.match123 = icmp eq i64 %str.tag115, %arena.gen122
  br i1 %str.tag.match123, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %choice.next66
  %eq.rhs.len124 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len125 = and i64 %eq.rhs.len124, 281474976710655
  %str.tag126 = lshr i64 %eq.rhs.len124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_stale119:                                     ; preds = %str_gen_check117
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str_gen_check128:                                 ; preds = %str_ok118
  %arena.gen131 = call ptr @dva_arena_current()
  %arena.gen132 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen131, i32 0, i32 4
  %arena.gen133 = load i64, ptr %arena.gen132, align 8
  %str.tag.match134 = icmp eq i64 %str.tag126, %arena.gen133
  br i1 %str.tag.match134, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %str_ok118
  %eq.len135 = icmp eq i64 %eq.lhs.len114, %eq.rhs.len125
  br i1 %eq.len135, label %str.eq.then136, label %str.eq.else137

str_stale130:                                     ; preds = %str_gen_check128
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

str.eq.then136:                                   ; preds = %str_ok129
  %eq.lhs.data139 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data140 = load ptr, ptr %eq.lhs.data139, align 8
  %eq.rhs.data141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp142 = call i32 @memcmp(ptr %eq.lhs.data140, ptr %eq.rhs.data141, i64 %eq.lhs.len114)
  %eq.cmp.zero143 = icmp eq i32 %eq.memcmp142, 0
  br label %str.eq.merge138

str.eq.else137:                                   ; preds = %str_ok129
  br label %str.eq.merge138

str.eq.merge138:                                  ; preds = %str.eq.else137, %str.eq.then136
  %str.eq.result144 = phi i1 [ %eq.cmp.zero143, %str.eq.then136 ], [ false, %str.eq.else137 ]
  br i1 %str.eq.result144, label %choice.case110, label %choice.next111

choice.case155:                                   ; preds = %str.eq.merge183
  %arena.cur190 = call ptr @dva_arena_current()
  %enum.alloc191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 16)
  %tag.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc191, i32 0, i32 0
  store i64 16, ptr %tag.gep192, align 8
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

choice.next156:                                   ; preds = %str.eq.merge183
  %eq.lhs.len202 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len203 = load i64, ptr %eq.lhs.len202, align 8
  %eq.lhs.len204 = and i64 %eq.lhs.len203, 281474976710655
  %str.tag205 = lshr i64 %eq.lhs.len203, 48
  %str.immortal206 = icmp eq i64 %str.tag205, 0
  br i1 %str.immortal206, label %str_ok208, label %str_gen_check207

str_gen_check162:                                 ; preds = %choice.next111
  %arena.gen165 = call ptr @dva_arena_current()
  %arena.gen166 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen165, i32 0, i32 4
  %arena.gen167 = load i64, ptr %arena.gen166, align 8
  %str.tag.match168 = icmp eq i64 %str.tag160, %arena.gen167
  br i1 %str.tag.match168, label %str_ok163, label %str_stale164

str_ok163:                                        ; preds = %str_stale164, %str_gen_check162, %choice.next111
  %eq.rhs.len169 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len170 = and i64 %eq.rhs.len169, 281474976710655
  %str.tag171 = lshr i64 %eq.rhs.len169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

str_stale164:                                     ; preds = %str_gen_check162
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok163

str_gen_check173:                                 ; preds = %str_ok163
  %arena.gen176 = call ptr @dva_arena_current()
  %arena.gen177 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen176, i32 0, i32 4
  %arena.gen178 = load i64, ptr %arena.gen177, align 8
  %str.tag.match179 = icmp eq i64 %str.tag171, %arena.gen178
  br i1 %str.tag.match179, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %str_ok163
  %eq.len180 = icmp eq i64 %eq.lhs.len159, %eq.rhs.len170
  br i1 %eq.len180, label %str.eq.then181, label %str.eq.else182

str_stale175:                                     ; preds = %str_gen_check173
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str.eq.then181:                                   ; preds = %str_ok174
  %eq.lhs.data184 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data185 = load ptr, ptr %eq.lhs.data184, align 8
  %eq.rhs.data186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp187 = call i32 @memcmp(ptr %eq.lhs.data185, ptr %eq.rhs.data186, i64 %eq.lhs.len159)
  %eq.cmp.zero188 = icmp eq i32 %eq.memcmp187, 0
  br label %str.eq.merge183

str.eq.else182:                                   ; preds = %str_ok174
  br label %str.eq.merge183

str.eq.merge183:                                  ; preds = %str.eq.else182, %str.eq.then181
  %str.eq.result189 = phi i1 [ %eq.cmp.zero188, %str.eq.then181 ], [ false, %str.eq.else182 ]
  br i1 %str.eq.result189, label %choice.case155, label %choice.next156

choice.case200:                                   ; preds = %str.eq.merge228
  %arena.cur235 = call ptr @dva_arena_current()
  %enum.alloc236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 16)
  %tag.gep237 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc236, i32 0, i32 0
  store i64 6, ptr %tag.gep237, align 8
  %pay.gep238 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc236, i32 0, i32 1
  store ptr null, ptr %pay.gep238, align 8
  %arena.cur239 = call ptr @dva_arena_current()
  %rec.alloc240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld241 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc240, i32 0, i32 0
  store i64 120, ptr %rec.fld241, align 8
  %rec.fld242 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc240, i32 0, i32 1
  store i64 130, ptr %rec.fld242, align 8
  %rec.fld243 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc240, i32 0, i32 2
  store ptr %enum.alloc236, ptr %rec.fld243, align 8
  %rec.fld244 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc240, i32 0, i32 3
  store i1 true, ptr %rec.fld244, align 1
  br label %choice.exit

choice.next201:                                   ; preds = %str.eq.merge228
  %eq.lhs.len247 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len248 = load i64, ptr %eq.lhs.len247, align 8
  %eq.lhs.len249 = and i64 %eq.lhs.len248, 281474976710655
  %str.tag250 = lshr i64 %eq.lhs.len248, 48
  %str.immortal251 = icmp eq i64 %str.tag250, 0
  br i1 %str.immortal251, label %str_ok253, label %str_gen_check252

str_gen_check207:                                 ; preds = %choice.next156
  %arena.gen210 = call ptr @dva_arena_current()
  %arena.gen211 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen210, i32 0, i32 4
  %arena.gen212 = load i64, ptr %arena.gen211, align 8
  %str.tag.match213 = icmp eq i64 %str.tag205, %arena.gen212
  br i1 %str.tag.match213, label %str_ok208, label %str_stale209

str_ok208:                                        ; preds = %str_stale209, %str_gen_check207, %choice.next156
  %eq.rhs.len214 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len215 = and i64 %eq.rhs.len214, 281474976710655
  %str.tag216 = lshr i64 %eq.rhs.len214, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

str_stale209:                                     ; preds = %str_gen_check207
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok208

str_gen_check218:                                 ; preds = %str_ok208
  %arena.gen221 = call ptr @dva_arena_current()
  %arena.gen222 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen221, i32 0, i32 4
  %arena.gen223 = load i64, ptr %arena.gen222, align 8
  %str.tag.match224 = icmp eq i64 %str.tag216, %arena.gen223
  br i1 %str.tag.match224, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %str_ok208
  %eq.len225 = icmp eq i64 %eq.lhs.len204, %eq.rhs.len215
  br i1 %eq.len225, label %str.eq.then226, label %str.eq.else227

str_stale220:                                     ; preds = %str_gen_check218
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

str.eq.then226:                                   ; preds = %str_ok219
  %eq.lhs.data229 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data230 = load ptr, ptr %eq.lhs.data229, align 8
  %eq.rhs.data231 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp232 = call i32 @memcmp(ptr %eq.lhs.data230, ptr %eq.rhs.data231, i64 %eq.lhs.len204)
  %eq.cmp.zero233 = icmp eq i32 %eq.memcmp232, 0
  br label %str.eq.merge228

str.eq.else227:                                   ; preds = %str_ok219
  br label %str.eq.merge228

str.eq.merge228:                                  ; preds = %str.eq.else227, %str.eq.then226
  %str.eq.result234 = phi i1 [ %eq.cmp.zero233, %str.eq.then226 ], [ false, %str.eq.else227 ]
  br i1 %str.eq.result234, label %choice.case200, label %choice.next201

choice.case245:                                   ; preds = %str.eq.merge273
  %arena.cur280 = call ptr @dva_arena_current()
  %enum.alloc281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 16)
  %tag.gep282 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc281, i32 0, i32 0
  store i64 5, ptr %tag.gep282, align 8
  %pay.gep283 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc281, i32 0, i32 1
  store ptr null, ptr %pay.gep283, align 8
  %arena.cur284 = call ptr @dva_arena_current()
  %rec.alloc285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld286 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 0
  store i64 120, ptr %rec.fld286, align 8
  %rec.fld287 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 1
  store i64 130, ptr %rec.fld287, align 8
  %rec.fld288 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 2
  store ptr %enum.alloc281, ptr %rec.fld288, align 8
  %rec.fld289 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 3
  store i1 true, ptr %rec.fld289, align 1
  br label %choice.exit

choice.next246:                                   ; preds = %str.eq.merge273
  %eq.lhs.len292 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len293 = load i64, ptr %eq.lhs.len292, align 8
  %eq.lhs.len294 = and i64 %eq.lhs.len293, 281474976710655
  %str.tag295 = lshr i64 %eq.lhs.len293, 48
  %str.immortal296 = icmp eq i64 %str.tag295, 0
  br i1 %str.immortal296, label %str_ok298, label %str_gen_check297

str_gen_check252:                                 ; preds = %choice.next201
  %arena.gen255 = call ptr @dva_arena_current()
  %arena.gen256 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen255, i32 0, i32 4
  %arena.gen257 = load i64, ptr %arena.gen256, align 8
  %str.tag.match258 = icmp eq i64 %str.tag250, %arena.gen257
  br i1 %str.tag.match258, label %str_ok253, label %str_stale254

str_ok253:                                        ; preds = %str_stale254, %str_gen_check252, %choice.next201
  %eq.rhs.len259 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len260 = and i64 %eq.rhs.len259, 281474976710655
  %str.tag261 = lshr i64 %eq.rhs.len259, 48
  %str.immortal262 = icmp eq i64 %str.tag261, 0
  br i1 %str.immortal262, label %str_ok264, label %str_gen_check263

str_stale254:                                     ; preds = %str_gen_check252
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok253

str_gen_check263:                                 ; preds = %str_ok253
  %arena.gen266 = call ptr @dva_arena_current()
  %arena.gen267 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen266, i32 0, i32 4
  %arena.gen268 = load i64, ptr %arena.gen267, align 8
  %str.tag.match269 = icmp eq i64 %str.tag261, %arena.gen268
  br i1 %str.tag.match269, label %str_ok264, label %str_stale265

str_ok264:                                        ; preds = %str_stale265, %str_gen_check263, %str_ok253
  %eq.len270 = icmp eq i64 %eq.lhs.len249, %eq.rhs.len260
  br i1 %eq.len270, label %str.eq.then271, label %str.eq.else272

str_stale265:                                     ; preds = %str_gen_check263
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok264

str.eq.then271:                                   ; preds = %str_ok264
  %eq.lhs.data274 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data275 = load ptr, ptr %eq.lhs.data274, align 8
  %eq.rhs.data276 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp277 = call i32 @memcmp(ptr %eq.lhs.data275, ptr %eq.rhs.data276, i64 %eq.lhs.len249)
  %eq.cmp.zero278 = icmp eq i32 %eq.memcmp277, 0
  br label %str.eq.merge273

str.eq.else272:                                   ; preds = %str_ok264
  br label %str.eq.merge273

str.eq.merge273:                                  ; preds = %str.eq.else272, %str.eq.then271
  %str.eq.result279 = phi i1 [ %eq.cmp.zero278, %str.eq.then271 ], [ false, %str.eq.else272 ]
  br i1 %str.eq.result279, label %choice.case245, label %choice.next246

choice.case290:                                   ; preds = %str.eq.merge318
  %arena.cur325 = call ptr @dva_arena_current()
  %enum.alloc326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 16)
  %tag.gep327 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc326, i32 0, i32 0
  store i64 7, ptr %tag.gep327, align 8
  %pay.gep328 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc326, i32 0, i32 1
  store ptr null, ptr %pay.gep328, align 8
  %arena.cur329 = call ptr @dva_arena_current()
  %rec.alloc330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld331 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc330, i32 0, i32 0
  store i64 120, ptr %rec.fld331, align 8
  %rec.fld332 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc330, i32 0, i32 1
  store i64 130, ptr %rec.fld332, align 8
  %rec.fld333 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc330, i32 0, i32 2
  store ptr %enum.alloc326, ptr %rec.fld333, align 8
  %rec.fld334 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc330, i32 0, i32 3
  store i1 true, ptr %rec.fld334, align 1
  br label %choice.exit

choice.next291:                                   ; preds = %str.eq.merge318
  %eq.lhs.len337 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len338 = load i64, ptr %eq.lhs.len337, align 8
  %eq.lhs.len339 = and i64 %eq.lhs.len338, 281474976710655
  %str.tag340 = lshr i64 %eq.lhs.len338, 48
  %str.immortal341 = icmp eq i64 %str.tag340, 0
  br i1 %str.immortal341, label %str_ok343, label %str_gen_check342

str_gen_check297:                                 ; preds = %choice.next246
  %arena.gen300 = call ptr @dva_arena_current()
  %arena.gen301 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen300, i32 0, i32 4
  %arena.gen302 = load i64, ptr %arena.gen301, align 8
  %str.tag.match303 = icmp eq i64 %str.tag295, %arena.gen302
  br i1 %str.tag.match303, label %str_ok298, label %str_stale299

str_ok298:                                        ; preds = %str_stale299, %str_gen_check297, %choice.next246
  %eq.rhs.len304 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len305 = and i64 %eq.rhs.len304, 281474976710655
  %str.tag306 = lshr i64 %eq.rhs.len304, 48
  %str.immortal307 = icmp eq i64 %str.tag306, 0
  br i1 %str.immortal307, label %str_ok309, label %str_gen_check308

str_stale299:                                     ; preds = %str_gen_check297
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok298

str_gen_check308:                                 ; preds = %str_ok298
  %arena.gen311 = call ptr @dva_arena_current()
  %arena.gen312 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen311, i32 0, i32 4
  %arena.gen313 = load i64, ptr %arena.gen312, align 8
  %str.tag.match314 = icmp eq i64 %str.tag306, %arena.gen313
  br i1 %str.tag.match314, label %str_ok309, label %str_stale310

str_ok309:                                        ; preds = %str_stale310, %str_gen_check308, %str_ok298
  %eq.len315 = icmp eq i64 %eq.lhs.len294, %eq.rhs.len305
  br i1 %eq.len315, label %str.eq.then316, label %str.eq.else317

str_stale310:                                     ; preds = %str_gen_check308
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok309

str.eq.then316:                                   ; preds = %str_ok309
  %eq.lhs.data319 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data320 = load ptr, ptr %eq.lhs.data319, align 8
  %eq.rhs.data321 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp322 = call i32 @memcmp(ptr %eq.lhs.data320, ptr %eq.rhs.data321, i64 %eq.lhs.len294)
  %eq.cmp.zero323 = icmp eq i32 %eq.memcmp322, 0
  br label %str.eq.merge318

str.eq.else317:                                   ; preds = %str_ok309
  br label %str.eq.merge318

str.eq.merge318:                                  ; preds = %str.eq.else317, %str.eq.then316
  %str.eq.result324 = phi i1 [ %eq.cmp.zero323, %str.eq.then316 ], [ false, %str.eq.else317 ]
  br i1 %str.eq.result324, label %choice.case290, label %choice.next291

choice.case335:                                   ; preds = %str.eq.merge363
  %arena.cur370 = call ptr @dva_arena_current()
  %enum.alloc371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 16)
  %tag.gep372 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc371, i32 0, i32 0
  store i64 10, ptr %tag.gep372, align 8
  %pay.gep373 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc371, i32 0, i32 1
  store ptr null, ptr %pay.gep373, align 8
  %arena.cur374 = call ptr @dva_arena_current()
  %rec.alloc375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld376 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc375, i32 0, i32 0
  store i64 120, ptr %rec.fld376, align 8
  %rec.fld377 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc375, i32 0, i32 1
  store i64 130, ptr %rec.fld377, align 8
  %rec.fld378 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc375, i32 0, i32 2
  store ptr %enum.alloc371, ptr %rec.fld378, align 8
  %rec.fld379 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc375, i32 0, i32 3
  store i1 true, ptr %rec.fld379, align 1
  br label %choice.exit

choice.next336:                                   ; preds = %str.eq.merge363
  %eq.lhs.len382 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len383 = load i64, ptr %eq.lhs.len382, align 8
  %eq.lhs.len384 = and i64 %eq.lhs.len383, 281474976710655
  %str.tag385 = lshr i64 %eq.lhs.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

str_gen_check342:                                 ; preds = %choice.next291
  %arena.gen345 = call ptr @dva_arena_current()
  %arena.gen346 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen345, i32 0, i32 4
  %arena.gen347 = load i64, ptr %arena.gen346, align 8
  %str.tag.match348 = icmp eq i64 %str.tag340, %arena.gen347
  br i1 %str.tag.match348, label %str_ok343, label %str_stale344

str_ok343:                                        ; preds = %str_stale344, %str_gen_check342, %choice.next291
  %eq.rhs.len349 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len350 = and i64 %eq.rhs.len349, 281474976710655
  %str.tag351 = lshr i64 %eq.rhs.len349, 48
  %str.immortal352 = icmp eq i64 %str.tag351, 0
  br i1 %str.immortal352, label %str_ok354, label %str_gen_check353

str_stale344:                                     ; preds = %str_gen_check342
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok343

str_gen_check353:                                 ; preds = %str_ok343
  %arena.gen356 = call ptr @dva_arena_current()
  %arena.gen357 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen356, i32 0, i32 4
  %arena.gen358 = load i64, ptr %arena.gen357, align 8
  %str.tag.match359 = icmp eq i64 %str.tag351, %arena.gen358
  br i1 %str.tag.match359, label %str_ok354, label %str_stale355

str_ok354:                                        ; preds = %str_stale355, %str_gen_check353, %str_ok343
  %eq.len360 = icmp eq i64 %eq.lhs.len339, %eq.rhs.len350
  br i1 %eq.len360, label %str.eq.then361, label %str.eq.else362

str_stale355:                                     ; preds = %str_gen_check353
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok354

str.eq.then361:                                   ; preds = %str_ok354
  %eq.lhs.data364 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data365 = load ptr, ptr %eq.lhs.data364, align 8
  %eq.rhs.data366 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp367 = call i32 @memcmp(ptr %eq.lhs.data365, ptr %eq.rhs.data366, i64 %eq.lhs.len339)
  %eq.cmp.zero368 = icmp eq i32 %eq.memcmp367, 0
  br label %str.eq.merge363

str.eq.else362:                                   ; preds = %str_ok354
  br label %str.eq.merge363

str.eq.merge363:                                  ; preds = %str.eq.else362, %str.eq.then361
  %str.eq.result369 = phi i1 [ %eq.cmp.zero368, %str.eq.then361 ], [ false, %str.eq.else362 ]
  br i1 %str.eq.result369, label %choice.case335, label %choice.next336

choice.case380:                                   ; preds = %str.eq.merge408
  %arena.cur415 = call ptr @dva_arena_current()
  %enum.alloc416 = call ptr @dva_arena_alloc(ptr %arena.cur415, i64 16)
  %tag.gep417 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc416, i32 0, i32 0
  store i64 9, ptr %tag.gep417, align 8
  %pay.gep418 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc416, i32 0, i32 1
  store ptr null, ptr %pay.gep418, align 8
  %arena.cur419 = call ptr @dva_arena_current()
  %rec.alloc420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld421 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc420, i32 0, i32 0
  store i64 120, ptr %rec.fld421, align 8
  %rec.fld422 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc420, i32 0, i32 1
  store i64 130, ptr %rec.fld422, align 8
  %rec.fld423 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc420, i32 0, i32 2
  store ptr %enum.alloc416, ptr %rec.fld423, align 8
  %rec.fld424 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc420, i32 0, i32 3
  store i1 true, ptr %rec.fld424, align 1
  br label %choice.exit

choice.next381:                                   ; preds = %str.eq.merge408
  %eq.lhs.len427 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len428 = load i64, ptr %eq.lhs.len427, align 8
  %eq.lhs.len429 = and i64 %eq.lhs.len428, 281474976710655
  %str.tag430 = lshr i64 %eq.lhs.len428, 48
  %str.immortal431 = icmp eq i64 %str.tag430, 0
  br i1 %str.immortal431, label %str_ok433, label %str_gen_check432

str_gen_check387:                                 ; preds = %choice.next336
  %arena.gen390 = call ptr @dva_arena_current()
  %arena.gen391 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen390, i32 0, i32 4
  %arena.gen392 = load i64, ptr %arena.gen391, align 8
  %str.tag.match393 = icmp eq i64 %str.tag385, %arena.gen392
  br i1 %str.tag.match393, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %choice.next336
  %eq.rhs.len394 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len395 = and i64 %eq.rhs.len394, 281474976710655
  %str.tag396 = lshr i64 %eq.rhs.len394, 48
  %str.immortal397 = icmp eq i64 %str.tag396, 0
  br i1 %str.immortal397, label %str_ok399, label %str_gen_check398

str_stale389:                                     ; preds = %str_gen_check387
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

str_gen_check398:                                 ; preds = %str_ok388
  %arena.gen401 = call ptr @dva_arena_current()
  %arena.gen402 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen401, i32 0, i32 4
  %arena.gen403 = load i64, ptr %arena.gen402, align 8
  %str.tag.match404 = icmp eq i64 %str.tag396, %arena.gen403
  br i1 %str.tag.match404, label %str_ok399, label %str_stale400

str_ok399:                                        ; preds = %str_stale400, %str_gen_check398, %str_ok388
  %eq.len405 = icmp eq i64 %eq.lhs.len384, %eq.rhs.len395
  br i1 %eq.len405, label %str.eq.then406, label %str.eq.else407

str_stale400:                                     ; preds = %str_gen_check398
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok399

str.eq.then406:                                   ; preds = %str_ok399
  %eq.lhs.data409 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data410 = load ptr, ptr %eq.lhs.data409, align 8
  %eq.rhs.data411 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp412 = call i32 @memcmp(ptr %eq.lhs.data410, ptr %eq.rhs.data411, i64 %eq.lhs.len384)
  %eq.cmp.zero413 = icmp eq i32 %eq.memcmp412, 0
  br label %str.eq.merge408

str.eq.else407:                                   ; preds = %str_ok399
  br label %str.eq.merge408

str.eq.merge408:                                  ; preds = %str.eq.else407, %str.eq.then406
  %str.eq.result414 = phi i1 [ %eq.cmp.zero413, %str.eq.then406 ], [ false, %str.eq.else407 ]
  br i1 %str.eq.result414, label %choice.case380, label %choice.next381

choice.case425:                                   ; preds = %str.eq.merge453
  %arena.cur460 = call ptr @dva_arena_current()
  %enum.alloc461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 16)
  %tag.gep462 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc461, i32 0, i32 0
  store i64 8, ptr %tag.gep462, align 8
  %pay.gep463 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc461, i32 0, i32 1
  store ptr null, ptr %pay.gep463, align 8
  %arena.cur464 = call ptr @dva_arena_current()
  %rec.alloc465 = call ptr @dva_arena_alloc(ptr %arena.cur464, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld466 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc465, i32 0, i32 0
  store i64 120, ptr %rec.fld466, align 8
  %rec.fld467 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc465, i32 0, i32 1
  store i64 130, ptr %rec.fld467, align 8
  %rec.fld468 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc465, i32 0, i32 2
  store ptr %enum.alloc461, ptr %rec.fld468, align 8
  %rec.fld469 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc465, i32 0, i32 3
  store i1 true, ptr %rec.fld469, align 1
  br label %choice.exit

choice.next426:                                   ; preds = %str.eq.merge453
  %eq.lhs.len472 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len473 = load i64, ptr %eq.lhs.len472, align 8
  %eq.lhs.len474 = and i64 %eq.lhs.len473, 281474976710655
  %str.tag475 = lshr i64 %eq.lhs.len473, 48
  %str.immortal476 = icmp eq i64 %str.tag475, 0
  br i1 %str.immortal476, label %str_ok478, label %str_gen_check477

str_gen_check432:                                 ; preds = %choice.next381
  %arena.gen435 = call ptr @dva_arena_current()
  %arena.gen436 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen435, i32 0, i32 4
  %arena.gen437 = load i64, ptr %arena.gen436, align 8
  %str.tag.match438 = icmp eq i64 %str.tag430, %arena.gen437
  br i1 %str.tag.match438, label %str_ok433, label %str_stale434

str_ok433:                                        ; preds = %str_stale434, %str_gen_check432, %choice.next381
  %eq.rhs.len439 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len440 = and i64 %eq.rhs.len439, 281474976710655
  %str.tag441 = lshr i64 %eq.rhs.len439, 48
  %str.immortal442 = icmp eq i64 %str.tag441, 0
  br i1 %str.immortal442, label %str_ok444, label %str_gen_check443

str_stale434:                                     ; preds = %str_gen_check432
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok433

str_gen_check443:                                 ; preds = %str_ok433
  %arena.gen446 = call ptr @dva_arena_current()
  %arena.gen447 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen446, i32 0, i32 4
  %arena.gen448 = load i64, ptr %arena.gen447, align 8
  %str.tag.match449 = icmp eq i64 %str.tag441, %arena.gen448
  br i1 %str.tag.match449, label %str_ok444, label %str_stale445

str_ok444:                                        ; preds = %str_stale445, %str_gen_check443, %str_ok433
  %eq.len450 = icmp eq i64 %eq.lhs.len429, %eq.rhs.len440
  br i1 %eq.len450, label %str.eq.then451, label %str.eq.else452

str_stale445:                                     ; preds = %str_gen_check443
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok444

str.eq.then451:                                   ; preds = %str_ok444
  %eq.lhs.data454 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data455 = load ptr, ptr %eq.lhs.data454, align 8
  %eq.rhs.data456 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp457 = call i32 @memcmp(ptr %eq.lhs.data455, ptr %eq.rhs.data456, i64 %eq.lhs.len429)
  %eq.cmp.zero458 = icmp eq i32 %eq.memcmp457, 0
  br label %str.eq.merge453

str.eq.else452:                                   ; preds = %str_ok444
  br label %str.eq.merge453

str.eq.merge453:                                  ; preds = %str.eq.else452, %str.eq.then451
  %str.eq.result459 = phi i1 [ %eq.cmp.zero458, %str.eq.then451 ], [ false, %str.eq.else452 ]
  br i1 %str.eq.result459, label %choice.case425, label %choice.next426

choice.case470:                                   ; preds = %str.eq.merge498
  %arena.cur505 = call ptr @dva_arena_current()
  %enum.alloc506 = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 16)
  %tag.gep507 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc506, i32 0, i32 0
  store i64 18, ptr %tag.gep507, align 8
  %pay.gep508 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc506, i32 0, i32 1
  store ptr null, ptr %pay.gep508, align 8
  %arena.cur509 = call ptr @dva_arena_current()
  %rec.alloc510 = call ptr @dva_arena_alloc(ptr %arena.cur509, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld511 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc510, i32 0, i32 0
  store i64 130, ptr %rec.fld511, align 8
  %rec.fld512 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc510, i32 0, i32 1
  store i64 140, ptr %rec.fld512, align 8
  %rec.fld513 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc510, i32 0, i32 2
  store ptr %enum.alloc506, ptr %rec.fld513, align 8
  %rec.fld514 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc510, i32 0, i32 3
  store i1 false, ptr %rec.fld514, align 1
  br label %choice.exit

choice.next471:                                   ; preds = %str.eq.merge498
  %eq.lhs.len517 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len518 = load i64, ptr %eq.lhs.len517, align 8
  %eq.lhs.len519 = and i64 %eq.lhs.len518, 281474976710655
  %str.tag520 = lshr i64 %eq.lhs.len518, 48
  %str.immortal521 = icmp eq i64 %str.tag520, 0
  br i1 %str.immortal521, label %str_ok523, label %str_gen_check522

str_gen_check477:                                 ; preds = %choice.next426
  %arena.gen480 = call ptr @dva_arena_current()
  %arena.gen481 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen480, i32 0, i32 4
  %arena.gen482 = load i64, ptr %arena.gen481, align 8
  %str.tag.match483 = icmp eq i64 %str.tag475, %arena.gen482
  br i1 %str.tag.match483, label %str_ok478, label %str_stale479

str_ok478:                                        ; preds = %str_stale479, %str_gen_check477, %choice.next426
  %eq.rhs.len484 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len485 = and i64 %eq.rhs.len484, 281474976710655
  %str.tag486 = lshr i64 %eq.rhs.len484, 48
  %str.immortal487 = icmp eq i64 %str.tag486, 0
  br i1 %str.immortal487, label %str_ok489, label %str_gen_check488

str_stale479:                                     ; preds = %str_gen_check477
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok478

str_gen_check488:                                 ; preds = %str_ok478
  %arena.gen491 = call ptr @dva_arena_current()
  %arena.gen492 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen491, i32 0, i32 4
  %arena.gen493 = load i64, ptr %arena.gen492, align 8
  %str.tag.match494 = icmp eq i64 %str.tag486, %arena.gen493
  br i1 %str.tag.match494, label %str_ok489, label %str_stale490

str_ok489:                                        ; preds = %str_stale490, %str_gen_check488, %str_ok478
  %eq.len495 = icmp eq i64 %eq.lhs.len474, %eq.rhs.len485
  br i1 %eq.len495, label %str.eq.then496, label %str.eq.else497

str_stale490:                                     ; preds = %str_gen_check488
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok489

str.eq.then496:                                   ; preds = %str_ok489
  %eq.lhs.data499 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data500 = load ptr, ptr %eq.lhs.data499, align 8
  %eq.rhs.data501 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp502 = call i32 @memcmp(ptr %eq.lhs.data500, ptr %eq.rhs.data501, i64 %eq.lhs.len474)
  %eq.cmp.zero503 = icmp eq i32 %eq.memcmp502, 0
  br label %str.eq.merge498

str.eq.else497:                                   ; preds = %str_ok489
  br label %str.eq.merge498

str.eq.merge498:                                  ; preds = %str.eq.else497, %str.eq.then496
  %str.eq.result504 = phi i1 [ %eq.cmp.zero503, %str.eq.then496 ], [ false, %str.eq.else497 ]
  br i1 %str.eq.result504, label %choice.case470, label %choice.next471

choice.case515:                                   ; preds = %str.eq.merge543
  %arena.cur550 = call ptr @dva_arena_current()
  %enum.alloc551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 16)
  %tag.gep552 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc551, i32 0, i32 0
  store i64 19, ptr %tag.gep552, align 8
  %pay.gep553 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc551, i32 0, i32 1
  store ptr null, ptr %pay.gep553, align 8
  %arena.cur554 = call ptr @dva_arena_current()
  %rec.alloc555 = call ptr @dva_arena_alloc(ptr %arena.cur554, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld556 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc555, i32 0, i32 0
  store i64 130, ptr %rec.fld556, align 8
  %rec.fld557 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc555, i32 0, i32 1
  store i64 140, ptr %rec.fld557, align 8
  %rec.fld558 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc555, i32 0, i32 2
  store ptr %enum.alloc551, ptr %rec.fld558, align 8
  %rec.fld559 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc555, i32 0, i32 3
  store i1 false, ptr %rec.fld559, align 1
  br label %choice.exit

choice.next516:                                   ; preds = %str.eq.merge543
  %eq.lhs.len562 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len563 = load i64, ptr %eq.lhs.len562, align 8
  %eq.lhs.len564 = and i64 %eq.lhs.len563, 281474976710655
  %str.tag565 = lshr i64 %eq.lhs.len563, 48
  %str.immortal566 = icmp eq i64 %str.tag565, 0
  br i1 %str.immortal566, label %str_ok568, label %str_gen_check567

str_gen_check522:                                 ; preds = %choice.next471
  %arena.gen525 = call ptr @dva_arena_current()
  %arena.gen526 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen525, i32 0, i32 4
  %arena.gen527 = load i64, ptr %arena.gen526, align 8
  %str.tag.match528 = icmp eq i64 %str.tag520, %arena.gen527
  br i1 %str.tag.match528, label %str_ok523, label %str_stale524

str_ok523:                                        ; preds = %str_stale524, %str_gen_check522, %choice.next471
  %eq.rhs.len529 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len530 = and i64 %eq.rhs.len529, 281474976710655
  %str.tag531 = lshr i64 %eq.rhs.len529, 48
  %str.immortal532 = icmp eq i64 %str.tag531, 0
  br i1 %str.immortal532, label %str_ok534, label %str_gen_check533

str_stale524:                                     ; preds = %str_gen_check522
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok523

str_gen_check533:                                 ; preds = %str_ok523
  %arena.gen536 = call ptr @dva_arena_current()
  %arena.gen537 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen536, i32 0, i32 4
  %arena.gen538 = load i64, ptr %arena.gen537, align 8
  %str.tag.match539 = icmp eq i64 %str.tag531, %arena.gen538
  br i1 %str.tag.match539, label %str_ok534, label %str_stale535

str_ok534:                                        ; preds = %str_stale535, %str_gen_check533, %str_ok523
  %eq.len540 = icmp eq i64 %eq.lhs.len519, %eq.rhs.len530
  br i1 %eq.len540, label %str.eq.then541, label %str.eq.else542

str_stale535:                                     ; preds = %str_gen_check533
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok534

str.eq.then541:                                   ; preds = %str_ok534
  %eq.lhs.data544 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data545 = load ptr, ptr %eq.lhs.data544, align 8
  %eq.rhs.data546 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp547 = call i32 @memcmp(ptr %eq.lhs.data545, ptr %eq.rhs.data546, i64 %eq.lhs.len519)
  %eq.cmp.zero548 = icmp eq i32 %eq.memcmp547, 0
  br label %str.eq.merge543

str.eq.else542:                                   ; preds = %str_ok534
  br label %str.eq.merge543

str.eq.merge543:                                  ; preds = %str.eq.else542, %str.eq.then541
  %str.eq.result549 = phi i1 [ %eq.cmp.zero548, %str.eq.then541 ], [ false, %str.eq.else542 ]
  br i1 %str.eq.result549, label %choice.case515, label %choice.next516

choice.case560:                                   ; preds = %str.eq.merge588
  %arena.cur595 = call ptr @dva_arena_current()
  %enum.alloc596 = call ptr @dva_arena_alloc(ptr %arena.cur595, i64 16)
  %tag.gep597 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc596, i32 0, i32 0
  store i64 0, ptr %tag.gep597, align 8
  %pay.gep598 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc596, i32 0, i32 1
  store ptr null, ptr %pay.gep598, align 8
  %arena.cur599 = call ptr @dva_arena_current()
  %rec.alloc600 = call ptr @dva_arena_alloc(ptr %arena.cur599, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld601 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc600, i32 0, i32 0
  store i64 140, ptr %rec.fld601, align 8
  %rec.fld602 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc600, i32 0, i32 1
  store i64 150, ptr %rec.fld602, align 8
  %rec.fld603 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc600, i32 0, i32 2
  store ptr %enum.alloc596, ptr %rec.fld603, align 8
  %rec.fld604 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc600, i32 0, i32 3
  store i1 false, ptr %rec.fld604, align 1
  br label %choice.exit

choice.next561:                                   ; preds = %str.eq.merge588
  %eq.lhs.len607 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len608 = load i64, ptr %eq.lhs.len607, align 8
  %eq.lhs.len609 = and i64 %eq.lhs.len608, 281474976710655
  %str.tag610 = lshr i64 %eq.lhs.len608, 48
  %str.immortal611 = icmp eq i64 %str.tag610, 0
  br i1 %str.immortal611, label %str_ok613, label %str_gen_check612

str_gen_check567:                                 ; preds = %choice.next516
  %arena.gen570 = call ptr @dva_arena_current()
  %arena.gen571 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen570, i32 0, i32 4
  %arena.gen572 = load i64, ptr %arena.gen571, align 8
  %str.tag.match573 = icmp eq i64 %str.tag565, %arena.gen572
  br i1 %str.tag.match573, label %str_ok568, label %str_stale569

str_ok568:                                        ; preds = %str_stale569, %str_gen_check567, %choice.next516
  %eq.rhs.len574 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len575 = and i64 %eq.rhs.len574, 281474976710655
  %str.tag576 = lshr i64 %eq.rhs.len574, 48
  %str.immortal577 = icmp eq i64 %str.tag576, 0
  br i1 %str.immortal577, label %str_ok579, label %str_gen_check578

str_stale569:                                     ; preds = %str_gen_check567
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok568

str_gen_check578:                                 ; preds = %str_ok568
  %arena.gen581 = call ptr @dva_arena_current()
  %arena.gen582 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen581, i32 0, i32 4
  %arena.gen583 = load i64, ptr %arena.gen582, align 8
  %str.tag.match584 = icmp eq i64 %str.tag576, %arena.gen583
  br i1 %str.tag.match584, label %str_ok579, label %str_stale580

str_ok579:                                        ; preds = %str_stale580, %str_gen_check578, %str_ok568
  %eq.len585 = icmp eq i64 %eq.lhs.len564, %eq.rhs.len575
  br i1 %eq.len585, label %str.eq.then586, label %str.eq.else587

str_stale580:                                     ; preds = %str_gen_check578
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok579

str.eq.then586:                                   ; preds = %str_ok579
  %eq.lhs.data589 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data590 = load ptr, ptr %eq.lhs.data589, align 8
  %eq.rhs.data591 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp592 = call i32 @memcmp(ptr %eq.lhs.data590, ptr %eq.rhs.data591, i64 %eq.lhs.len564)
  %eq.cmp.zero593 = icmp eq i32 %eq.memcmp592, 0
  br label %str.eq.merge588

str.eq.else587:                                   ; preds = %str_ok579
  br label %str.eq.merge588

str.eq.merge588:                                  ; preds = %str.eq.else587, %str.eq.then586
  %str.eq.result594 = phi i1 [ %eq.cmp.zero593, %str.eq.then586 ], [ false, %str.eq.else587 ]
  br i1 %str.eq.result594, label %choice.case560, label %choice.next561

choice.case605:                                   ; preds = %str.eq.merge633
  %arena.cur640 = call ptr @dva_arena_current()
  %enum.alloc641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 16)
  %tag.gep642 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc641, i32 0, i32 0
  store i64 1, ptr %tag.gep642, align 8
  %pay.gep643 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc641, i32 0, i32 1
  store ptr null, ptr %pay.gep643, align 8
  %arena.cur644 = call ptr @dva_arena_current()
  %rec.alloc645 = call ptr @dva_arena_alloc(ptr %arena.cur644, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld646 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc645, i32 0, i32 0
  store i64 140, ptr %rec.fld646, align 8
  %rec.fld647 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc645, i32 0, i32 1
  store i64 150, ptr %rec.fld647, align 8
  %rec.fld648 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc645, i32 0, i32 2
  store ptr %enum.alloc641, ptr %rec.fld648, align 8
  %rec.fld649 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc645, i32 0, i32 3
  store i1 false, ptr %rec.fld649, align 1
  br label %choice.exit

choice.next606:                                   ; preds = %str.eq.merge633
  %eq.lhs.len652 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len653 = load i64, ptr %eq.lhs.len652, align 8
  %eq.lhs.len654 = and i64 %eq.lhs.len653, 281474976710655
  %str.tag655 = lshr i64 %eq.lhs.len653, 48
  %str.immortal656 = icmp eq i64 %str.tag655, 0
  br i1 %str.immortal656, label %str_ok658, label %str_gen_check657

str_gen_check612:                                 ; preds = %choice.next561
  %arena.gen615 = call ptr @dva_arena_current()
  %arena.gen616 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen615, i32 0, i32 4
  %arena.gen617 = load i64, ptr %arena.gen616, align 8
  %str.tag.match618 = icmp eq i64 %str.tag610, %arena.gen617
  br i1 %str.tag.match618, label %str_ok613, label %str_stale614

str_ok613:                                        ; preds = %str_stale614, %str_gen_check612, %choice.next561
  %eq.rhs.len619 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len620 = and i64 %eq.rhs.len619, 281474976710655
  %str.tag621 = lshr i64 %eq.rhs.len619, 48
  %str.immortal622 = icmp eq i64 %str.tag621, 0
  br i1 %str.immortal622, label %str_ok624, label %str_gen_check623

str_stale614:                                     ; preds = %str_gen_check612
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok613

str_gen_check623:                                 ; preds = %str_ok613
  %arena.gen626 = call ptr @dva_arena_current()
  %arena.gen627 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen626, i32 0, i32 4
  %arena.gen628 = load i64, ptr %arena.gen627, align 8
  %str.tag.match629 = icmp eq i64 %str.tag621, %arena.gen628
  br i1 %str.tag.match629, label %str_ok624, label %str_stale625

str_ok624:                                        ; preds = %str_stale625, %str_gen_check623, %str_ok613
  %eq.len630 = icmp eq i64 %eq.lhs.len609, %eq.rhs.len620
  br i1 %eq.len630, label %str.eq.then631, label %str.eq.else632

str_stale625:                                     ; preds = %str_gen_check623
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok624

str.eq.then631:                                   ; preds = %str_ok624
  %eq.lhs.data634 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data635 = load ptr, ptr %eq.lhs.data634, align 8
  %eq.rhs.data636 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp637 = call i32 @memcmp(ptr %eq.lhs.data635, ptr %eq.rhs.data636, i64 %eq.lhs.len609)
  %eq.cmp.zero638 = icmp eq i32 %eq.memcmp637, 0
  br label %str.eq.merge633

str.eq.else632:                                   ; preds = %str_ok624
  br label %str.eq.merge633

str.eq.merge633:                                  ; preds = %str.eq.else632, %str.eq.then631
  %str.eq.result639 = phi i1 [ %eq.cmp.zero638, %str.eq.then631 ], [ false, %str.eq.else632 ]
  br i1 %str.eq.result639, label %choice.case605, label %choice.next606

choice.case650:                                   ; preds = %str.eq.merge678
  %arena.cur685 = call ptr @dva_arena_current()
  %enum.alloc686 = call ptr @dva_arena_alloc(ptr %arena.cur685, i64 16)
  %tag.gep687 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc686, i32 0, i32 0
  store i64 13, ptr %tag.gep687, align 8
  %pay.gep688 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc686, i32 0, i32 1
  store ptr null, ptr %pay.gep688, align 8
  %arena.cur689 = call ptr @dva_arena_current()
  %rec.alloc690 = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld691 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc690, i32 0, i32 0
  store i64 40, ptr %rec.fld691, align 8
  %rec.fld692 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc690, i32 0, i32 1
  store i64 50, ptr %rec.fld692, align 8
  %rec.fld693 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc690, i32 0, i32 2
  store ptr %enum.alloc686, ptr %rec.fld693, align 8
  %rec.fld694 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc690, i32 0, i32 3
  store i1 false, ptr %rec.fld694, align 1
  br label %choice.exit

choice.next651:                                   ; preds = %str.eq.merge678
  %eq.lhs.len697 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len698 = load i64, ptr %eq.lhs.len697, align 8
  %eq.lhs.len699 = and i64 %eq.lhs.len698, 281474976710655
  %str.tag700 = lshr i64 %eq.lhs.len698, 48
  %str.immortal701 = icmp eq i64 %str.tag700, 0
  br i1 %str.immortal701, label %str_ok703, label %str_gen_check702

str_gen_check657:                                 ; preds = %choice.next606
  %arena.gen660 = call ptr @dva_arena_current()
  %arena.gen661 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen660, i32 0, i32 4
  %arena.gen662 = load i64, ptr %arena.gen661, align 8
  %str.tag.match663 = icmp eq i64 %str.tag655, %arena.gen662
  br i1 %str.tag.match663, label %str_ok658, label %str_stale659

str_ok658:                                        ; preds = %str_stale659, %str_gen_check657, %choice.next606
  %eq.rhs.len664 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len665 = and i64 %eq.rhs.len664, 281474976710655
  %str.tag666 = lshr i64 %eq.rhs.len664, 48
  %str.immortal667 = icmp eq i64 %str.tag666, 0
  br i1 %str.immortal667, label %str_ok669, label %str_gen_check668

str_stale659:                                     ; preds = %str_gen_check657
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok658

str_gen_check668:                                 ; preds = %str_ok658
  %arena.gen671 = call ptr @dva_arena_current()
  %arena.gen672 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen671, i32 0, i32 4
  %arena.gen673 = load i64, ptr %arena.gen672, align 8
  %str.tag.match674 = icmp eq i64 %str.tag666, %arena.gen673
  br i1 %str.tag.match674, label %str_ok669, label %str_stale670

str_ok669:                                        ; preds = %str_stale670, %str_gen_check668, %str_ok658
  %eq.len675 = icmp eq i64 %eq.lhs.len654, %eq.rhs.len665
  br i1 %eq.len675, label %str.eq.then676, label %str.eq.else677

str_stale670:                                     ; preds = %str_gen_check668
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok669

str.eq.then676:                                   ; preds = %str_ok669
  %eq.lhs.data679 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data680 = load ptr, ptr %eq.lhs.data679, align 8
  %eq.rhs.data681 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp682 = call i32 @memcmp(ptr %eq.lhs.data680, ptr %eq.rhs.data681, i64 %eq.lhs.len654)
  %eq.cmp.zero683 = icmp eq i32 %eq.memcmp682, 0
  br label %str.eq.merge678

str.eq.else677:                                   ; preds = %str_ok669
  br label %str.eq.merge678

str.eq.merge678:                                  ; preds = %str.eq.else677, %str.eq.then676
  %str.eq.result684 = phi i1 [ %eq.cmp.zero683, %str.eq.then676 ], [ false, %str.eq.else677 ]
  br i1 %str.eq.result684, label %choice.case650, label %choice.next651

choice.case695:                                   ; preds = %str.eq.merge723
  %arena.cur730 = call ptr @dva_arena_current()
  %enum.alloc731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 16)
  %tag.gep732 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc731, i32 0, i32 0
  store i64 15, ptr %tag.gep732, align 8
  %pay.gep733 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc731, i32 0, i32 1
  store ptr null, ptr %pay.gep733, align 8
  %arena.cur734 = call ptr @dva_arena_current()
  %rec.alloc735 = call ptr @dva_arena_alloc(ptr %arena.cur734, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld736 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc735, i32 0, i32 0
  store i64 40, ptr %rec.fld736, align 8
  %rec.fld737 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc735, i32 0, i32 1
  store i64 50, ptr %rec.fld737, align 8
  %rec.fld738 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc735, i32 0, i32 2
  store ptr %enum.alloc731, ptr %rec.fld738, align 8
  %rec.fld739 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc735, i32 0, i32 3
  store i1 false, ptr %rec.fld739, align 1
  br label %choice.exit

choice.next696:                                   ; preds = %str.eq.merge723
  %eq.lhs.len742 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len743 = load i64, ptr %eq.lhs.len742, align 8
  %eq.lhs.len744 = and i64 %eq.lhs.len743, 281474976710655
  %str.tag745 = lshr i64 %eq.lhs.len743, 48
  %str.immortal746 = icmp eq i64 %str.tag745, 0
  br i1 %str.immortal746, label %str_ok748, label %str_gen_check747

str_gen_check702:                                 ; preds = %choice.next651
  %arena.gen705 = call ptr @dva_arena_current()
  %arena.gen706 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen705, i32 0, i32 4
  %arena.gen707 = load i64, ptr %arena.gen706, align 8
  %str.tag.match708 = icmp eq i64 %str.tag700, %arena.gen707
  br i1 %str.tag.match708, label %str_ok703, label %str_stale704

str_ok703:                                        ; preds = %str_stale704, %str_gen_check702, %choice.next651
  %eq.rhs.len709 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len710 = and i64 %eq.rhs.len709, 281474976710655
  %str.tag711 = lshr i64 %eq.rhs.len709, 48
  %str.immortal712 = icmp eq i64 %str.tag711, 0
  br i1 %str.immortal712, label %str_ok714, label %str_gen_check713

str_stale704:                                     ; preds = %str_gen_check702
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok703

str_gen_check713:                                 ; preds = %str_ok703
  %arena.gen716 = call ptr @dva_arena_current()
  %arena.gen717 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen716, i32 0, i32 4
  %arena.gen718 = load i64, ptr %arena.gen717, align 8
  %str.tag.match719 = icmp eq i64 %str.tag711, %arena.gen718
  br i1 %str.tag.match719, label %str_ok714, label %str_stale715

str_ok714:                                        ; preds = %str_stale715, %str_gen_check713, %str_ok703
  %eq.len720 = icmp eq i64 %eq.lhs.len699, %eq.rhs.len710
  br i1 %eq.len720, label %str.eq.then721, label %str.eq.else722

str_stale715:                                     ; preds = %str_gen_check713
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok714

str.eq.then721:                                   ; preds = %str_ok714
  %eq.lhs.data724 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data725 = load ptr, ptr %eq.lhs.data724, align 8
  %eq.rhs.data726 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp727 = call i32 @memcmp(ptr %eq.lhs.data725, ptr %eq.rhs.data726, i64 %eq.lhs.len699)
  %eq.cmp.zero728 = icmp eq i32 %eq.memcmp727, 0
  br label %str.eq.merge723

str.eq.else722:                                   ; preds = %str_ok714
  br label %str.eq.merge723

str.eq.merge723:                                  ; preds = %str.eq.else722, %str.eq.then721
  %str.eq.result729 = phi i1 [ %eq.cmp.zero728, %str.eq.then721 ], [ false, %str.eq.else722 ]
  br i1 %str.eq.result729, label %choice.case695, label %choice.next696

choice.case740:                                   ; preds = %str.eq.merge768
  %arena.cur775 = call ptr @dva_arena_current()
  %enum.alloc776 = call ptr @dva_arena_alloc(ptr %arena.cur775, i64 16)
  %tag.gep777 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc776, i32 0, i32 0
  store i64 2, ptr %tag.gep777, align 8
  %pay.gep778 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc776, i32 0, i32 1
  store ptr null, ptr %pay.gep778, align 8
  %arena.cur779 = call ptr @dva_arena_current()
  %rec.alloc780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld781 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc780, i32 0, i32 0
  store i64 150, ptr %rec.fld781, align 8
  %rec.fld782 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc780, i32 0, i32 1
  store i64 160, ptr %rec.fld782, align 8
  %rec.fld783 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc780, i32 0, i32 2
  store ptr %enum.alloc776, ptr %rec.fld783, align 8
  %rec.fld784 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc780, i32 0, i32 3
  store i1 false, ptr %rec.fld784, align 1
  br label %choice.exit

choice.next741:                                   ; preds = %str.eq.merge768
  %eq.lhs.len787 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len788 = load i64, ptr %eq.lhs.len787, align 8
  %eq.lhs.len789 = and i64 %eq.lhs.len788, 281474976710655
  %str.tag790 = lshr i64 %eq.lhs.len788, 48
  %str.immortal791 = icmp eq i64 %str.tag790, 0
  br i1 %str.immortal791, label %str_ok793, label %str_gen_check792

str_gen_check747:                                 ; preds = %choice.next696
  %arena.gen750 = call ptr @dva_arena_current()
  %arena.gen751 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen750, i32 0, i32 4
  %arena.gen752 = load i64, ptr %arena.gen751, align 8
  %str.tag.match753 = icmp eq i64 %str.tag745, %arena.gen752
  br i1 %str.tag.match753, label %str_ok748, label %str_stale749

str_ok748:                                        ; preds = %str_stale749, %str_gen_check747, %choice.next696
  %eq.rhs.len754 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len755 = and i64 %eq.rhs.len754, 281474976710655
  %str.tag756 = lshr i64 %eq.rhs.len754, 48
  %str.immortal757 = icmp eq i64 %str.tag756, 0
  br i1 %str.immortal757, label %str_ok759, label %str_gen_check758

str_stale749:                                     ; preds = %str_gen_check747
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok748

str_gen_check758:                                 ; preds = %str_ok748
  %arena.gen761 = call ptr @dva_arena_current()
  %arena.gen762 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen761, i32 0, i32 4
  %arena.gen763 = load i64, ptr %arena.gen762, align 8
  %str.tag.match764 = icmp eq i64 %str.tag756, %arena.gen763
  br i1 %str.tag.match764, label %str_ok759, label %str_stale760

str_ok759:                                        ; preds = %str_stale760, %str_gen_check758, %str_ok748
  %eq.len765 = icmp eq i64 %eq.lhs.len744, %eq.rhs.len755
  br i1 %eq.len765, label %str.eq.then766, label %str.eq.else767

str_stale760:                                     ; preds = %str_gen_check758
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok759

str.eq.then766:                                   ; preds = %str_ok759
  %eq.lhs.data769 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data770 = load ptr, ptr %eq.lhs.data769, align 8
  %eq.rhs.data771 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp772 = call i32 @memcmp(ptr %eq.lhs.data770, ptr %eq.rhs.data771, i64 %eq.lhs.len744)
  %eq.cmp.zero773 = icmp eq i32 %eq.memcmp772, 0
  br label %str.eq.merge768

str.eq.else767:                                   ; preds = %str_ok759
  br label %str.eq.merge768

str.eq.merge768:                                  ; preds = %str.eq.else767, %str.eq.then766
  %str.eq.result774 = phi i1 [ %eq.cmp.zero773, %str.eq.then766 ], [ false, %str.eq.else767 ]
  br i1 %str.eq.result774, label %choice.case740, label %choice.next741

choice.case785:                                   ; preds = %str.eq.merge813
  %arena.cur820 = call ptr @dva_arena_current()
  %enum.alloc821 = call ptr @dva_arena_alloc(ptr %arena.cur820, i64 16)
  %tag.gep822 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc821, i32 0, i32 0
  store i64 3, ptr %tag.gep822, align 8
  %pay.gep823 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc821, i32 0, i32 1
  store ptr null, ptr %pay.gep823, align 8
  %arena.cur824 = call ptr @dva_arena_current()
  %rec.alloc825 = call ptr @dva_arena_alloc(ptr %arena.cur824, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld826 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc825, i32 0, i32 0
  store i64 150, ptr %rec.fld826, align 8
  %rec.fld827 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc825, i32 0, i32 1
  store i64 160, ptr %rec.fld827, align 8
  %rec.fld828 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc825, i32 0, i32 2
  store ptr %enum.alloc821, ptr %rec.fld828, align 8
  %rec.fld829 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc825, i32 0, i32 3
  store i1 false, ptr %rec.fld829, align 1
  br label %choice.exit

choice.next786:                                   ; preds = %str.eq.merge813
  %eq.lhs.len832 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len833 = load i64, ptr %eq.lhs.len832, align 8
  %eq.lhs.len834 = and i64 %eq.lhs.len833, 281474976710655
  %str.tag835 = lshr i64 %eq.lhs.len833, 48
  %str.immortal836 = icmp eq i64 %str.tag835, 0
  br i1 %str.immortal836, label %str_ok838, label %str_gen_check837

str_gen_check792:                                 ; preds = %choice.next741
  %arena.gen795 = call ptr @dva_arena_current()
  %arena.gen796 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen795, i32 0, i32 4
  %arena.gen797 = load i64, ptr %arena.gen796, align 8
  %str.tag.match798 = icmp eq i64 %str.tag790, %arena.gen797
  br i1 %str.tag.match798, label %str_ok793, label %str_stale794

str_ok793:                                        ; preds = %str_stale794, %str_gen_check792, %choice.next741
  %eq.rhs.len799 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len800 = and i64 %eq.rhs.len799, 281474976710655
  %str.tag801 = lshr i64 %eq.rhs.len799, 48
  %str.immortal802 = icmp eq i64 %str.tag801, 0
  br i1 %str.immortal802, label %str_ok804, label %str_gen_check803

str_stale794:                                     ; preds = %str_gen_check792
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok793

str_gen_check803:                                 ; preds = %str_ok793
  %arena.gen806 = call ptr @dva_arena_current()
  %arena.gen807 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen806, i32 0, i32 4
  %arena.gen808 = load i64, ptr %arena.gen807, align 8
  %str.tag.match809 = icmp eq i64 %str.tag801, %arena.gen808
  br i1 %str.tag.match809, label %str_ok804, label %str_stale805

str_ok804:                                        ; preds = %str_stale805, %str_gen_check803, %str_ok793
  %eq.len810 = icmp eq i64 %eq.lhs.len789, %eq.rhs.len800
  br i1 %eq.len810, label %str.eq.then811, label %str.eq.else812

str_stale805:                                     ; preds = %str_gen_check803
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok804

str.eq.then811:                                   ; preds = %str_ok804
  %eq.lhs.data814 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data815 = load ptr, ptr %eq.lhs.data814, align 8
  %eq.rhs.data816 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp817 = call i32 @memcmp(ptr %eq.lhs.data815, ptr %eq.rhs.data816, i64 %eq.lhs.len789)
  %eq.cmp.zero818 = icmp eq i32 %eq.memcmp817, 0
  br label %str.eq.merge813

str.eq.else812:                                   ; preds = %str_ok804
  br label %str.eq.merge813

str.eq.merge813:                                  ; preds = %str.eq.else812, %str.eq.then811
  %str.eq.result819 = phi i1 [ %eq.cmp.zero818, %str.eq.then811 ], [ false, %str.eq.else812 ]
  br i1 %str.eq.result819, label %choice.case785, label %choice.next786

choice.case830:                                   ; preds = %str.eq.merge858
  %arena.cur865 = call ptr @dva_arena_current()
  %enum.alloc866 = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 16)
  %tag.gep867 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc866, i32 0, i32 0
  store i64 4, ptr %tag.gep867, align 8
  %pay.gep868 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc866, i32 0, i32 1
  store ptr null, ptr %pay.gep868, align 8
  %arena.cur869 = call ptr @dva_arena_current()
  %rec.alloc870 = call ptr @dva_arena_alloc(ptr %arena.cur869, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld871 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc870, i32 0, i32 0
  store i64 150, ptr %rec.fld871, align 8
  %rec.fld872 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc870, i32 0, i32 1
  store i64 160, ptr %rec.fld872, align 8
  %rec.fld873 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc870, i32 0, i32 2
  store ptr %enum.alloc866, ptr %rec.fld873, align 8
  %rec.fld874 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc870, i32 0, i32 3
  store i1 false, ptr %rec.fld874, align 1
  br label %choice.exit

choice.next831:                                   ; preds = %str.eq.merge858
  br label %choice.exit

str_gen_check837:                                 ; preds = %choice.next786
  %arena.gen840 = call ptr @dva_arena_current()
  %arena.gen841 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen840, i32 0, i32 4
  %arena.gen842 = load i64, ptr %arena.gen841, align 8
  %str.tag.match843 = icmp eq i64 %str.tag835, %arena.gen842
  br i1 %str.tag.match843, label %str_ok838, label %str_stale839

str_ok838:                                        ; preds = %str_stale839, %str_gen_check837, %choice.next786
  %eq.rhs.len844 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len845 = and i64 %eq.rhs.len844, 281474976710655
  %str.tag846 = lshr i64 %eq.rhs.len844, 48
  %str.immortal847 = icmp eq i64 %str.tag846, 0
  br i1 %str.immortal847, label %str_ok849, label %str_gen_check848

str_stale839:                                     ; preds = %str_gen_check837
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok838

str_gen_check848:                                 ; preds = %str_ok838
  %arena.gen851 = call ptr @dva_arena_current()
  %arena.gen852 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen851, i32 0, i32 4
  %arena.gen853 = load i64, ptr %arena.gen852, align 8
  %str.tag.match854 = icmp eq i64 %str.tag846, %arena.gen853
  br i1 %str.tag.match854, label %str_ok849, label %str_stale850

str_ok849:                                        ; preds = %str_stale850, %str_gen_check848, %str_ok838
  %eq.len855 = icmp eq i64 %eq.lhs.len834, %eq.rhs.len845
  br i1 %eq.len855, label %str.eq.then856, label %str.eq.else857

str_stale850:                                     ; preds = %str_gen_check848
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok849

str.eq.then856:                                   ; preds = %str_ok849
  %eq.lhs.data859 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data860 = load ptr, ptr %eq.lhs.data859, align 8
  %eq.rhs.data861 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp862 = call i32 @memcmp(ptr %eq.lhs.data860, ptr %eq.rhs.data861, i64 %eq.lhs.len834)
  %eq.cmp.zero863 = icmp eq i32 %eq.memcmp862, 0
  br label %str.eq.merge858

str.eq.else857:                                   ; preds = %str_ok849
  br label %str.eq.merge858

str.eq.merge858:                                  ; preds = %str.eq.else857, %str.eq.then856
  %str.eq.result864 = phi i1 [ %eq.cmp.zero863, %str.eq.then856 ], [ false, %str.eq.else857 ]
  br i1 %str.eq.result864, label %choice.case830, label %choice.next831
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
