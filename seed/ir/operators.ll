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
@str.18 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.18 }
@str.19 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.19 }
@str.20 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.20 }
@clo.const = internal constant { ptr, ptr } { ptr @"operators::bin_info", ptr null }
@"var.operators::bin_info" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_operators, ptr null }]

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

choice.exit:                                      ; preds = %choice.next797, %choice.case796, %choice.case755, %choice.case714, %choice.case673, %choice.case632, %choice.case591, %choice.case550, %choice.case509, %choice.case468, %choice.case427, %choice.case386, %choice.case345, %choice.case304, %choice.case263, %choice.case222, %choice.case181, %choice.case140, %choice.case99, %choice.case58, %choice.case17, %choice.case
  %choice.res = phi ptr [ %rec.alloc, %choice.case ], [ %rec.alloc53, %choice.case17 ], [ %rec.alloc94, %choice.case58 ], [ %rec.alloc135, %choice.case99 ], [ %rec.alloc176, %choice.case140 ], [ %rec.alloc217, %choice.case181 ], [ %rec.alloc258, %choice.case222 ], [ %rec.alloc299, %choice.case263 ], [ %rec.alloc340, %choice.case304 ], [ %rec.alloc381, %choice.case345 ], [ %rec.alloc422, %choice.case386 ], [ %rec.alloc463, %choice.case427 ], [ %rec.alloc504, %choice.case468 ], [ %rec.alloc545, %choice.case509 ], [ %rec.alloc586, %choice.case550 ], [ %rec.alloc627, %choice.case591 ], [ %rec.alloc668, %choice.case632 ], [ %rec.alloc709, %choice.case673 ], [ %rec.alloc750, %choice.case714 ], [ %rec.alloc791, %choice.case755 ], [ %rec.alloc832, %choice.case796 ], [ null, %choice.next797 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur12 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 14, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur13 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 30, ptr %rec.fld, align 8
  %rec.fld14 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 30, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld16, align 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len20 = load i64, ptr %eq.lhs.len19, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %str.tag22 = lshr i64 %eq.lhs.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case17:                                    ; preds = %str.eq.merge41
  %arena.cur48 = call ptr @dva_arena_current()
  %enum.alloc49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 16)
  %tag.gep50 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc49, i32 0, i32 0
  store i64 12, ptr %tag.gep50, align 8
  %pay.gep51 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc49, i32 0, i32 1
  store ptr null, ptr %pay.gep51, align 8
  %arena.cur52 = call ptr @dva_arena_current()
  %rec.alloc53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld54 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc53, i32 0, i32 0
  store i64 80, ptr %rec.fld54, align 8
  %rec.fld55 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc53, i32 0, i32 1
  store i64 90, ptr %rec.fld55, align 8
  %rec.fld56 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc53, i32 0, i32 2
  store ptr %enum.alloc49, ptr %rec.fld56, align 8
  %rec.fld57 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc53, i32 0, i32 3
  store i1 false, ptr %rec.fld57, align 1
  br label %choice.exit

choice.next18:                                    ; preds = %str.eq.merge41
  %eq.lhs.len60 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len61 = load i64, ptr %eq.lhs.len60, align 8
  %eq.lhs.len62 = and i64 %eq.lhs.len61, 281474976710655
  %str.tag63 = lshr i64 %eq.lhs.len61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

str_gen_check24:                                  ; preds = %choice.next
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %choice.next
  %eq.rhs.len29 = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len29, 281474976710655
  %str.tag31 = lshr i64 %eq.rhs.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_stale26:                                      ; preds = %str_gen_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check33:                                  ; preds = %str_ok25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %str_ok25
  %eq.len38 = icmp eq i64 %eq.lhs.len21, %eq.rhs.len30
  br i1 %eq.len38, label %str.eq.then39, label %str.eq.else40

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str.eq.then39:                                    ; preds = %str_ok34
  %eq.lhs.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data43 = load ptr, ptr %eq.lhs.data42, align 8
  %eq.rhs.data44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp45 = call i32 @memcmp(ptr %eq.lhs.data43, ptr %eq.rhs.data44, i64 %eq.lhs.len21)
  %eq.cmp.zero46 = icmp eq i32 %eq.memcmp45, 0
  br label %str.eq.merge41

str.eq.else40:                                    ; preds = %str_ok34
  br label %str.eq.merge41

str.eq.merge41:                                   ; preds = %str.eq.else40, %str.eq.then39
  %str.eq.result47 = phi i1 [ %eq.cmp.zero46, %str.eq.then39 ], [ false, %str.eq.else40 ]
  br i1 %str.eq.result47, label %choice.case17, label %choice.next18

choice.case58:                                    ; preds = %str.eq.merge82
  %arena.cur89 = call ptr @dva_arena_current()
  %enum.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %tag.gep91 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 0
  store i64 11, ptr %tag.gep91, align 8
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 1
  store ptr null, ptr %pay.gep92, align 8
  %arena.cur93 = call ptr @dva_arena_current()
  %rec.alloc94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld95 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc94, i32 0, i32 0
  store i64 90, ptr %rec.fld95, align 8
  %rec.fld96 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc94, i32 0, i32 1
  store i64 100, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc94, i32 0, i32 2
  store ptr %enum.alloc90, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc94, i32 0, i32 3
  store i1 false, ptr %rec.fld98, align 1
  br label %choice.exit

choice.next59:                                    ; preds = %str.eq.merge82
  %eq.lhs.len101 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len102 = load i64, ptr %eq.lhs.len101, align 8
  %eq.lhs.len103 = and i64 %eq.lhs.len102, 281474976710655
  %str.tag104 = lshr i64 %eq.lhs.len102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

str_gen_check65:                                  ; preds = %choice.next18
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %choice.next18
  %eq.rhs.len70 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len71 = and i64 %eq.rhs.len70, 281474976710655
  %str.tag72 = lshr i64 %eq.rhs.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_stale67:                                      ; preds = %str_gen_check65
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str_gen_check74:                                  ; preds = %str_ok66
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str_ok66
  %eq.len79 = icmp eq i64 %eq.lhs.len62, %eq.rhs.len71
  br i1 %eq.len79, label %str.eq.then80, label %str.eq.else81

str_stale76:                                      ; preds = %str_gen_check74
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str.eq.then80:                                    ; preds = %str_ok75
  %eq.lhs.data83 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data83, align 8
  %eq.rhs.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp86 = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data85, i64 %eq.lhs.len62)
  %eq.cmp.zero87 = icmp eq i32 %eq.memcmp86, 0
  br label %str.eq.merge82

str.eq.else81:                                    ; preds = %str_ok75
  br label %str.eq.merge82

str.eq.merge82:                                   ; preds = %str.eq.else81, %str.eq.then80
  %str.eq.result88 = phi i1 [ %eq.cmp.zero87, %str.eq.then80 ], [ false, %str.eq.else81 ]
  br i1 %str.eq.result88, label %choice.case58, label %choice.next59

choice.case99:                                    ; preds = %str.eq.merge123
  %arena.cur130 = call ptr @dva_arena_current()
  %enum.alloc131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 16)
  %tag.gep132 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc131, i32 0, i32 0
  store i64 17, ptr %tag.gep132, align 8
  %pay.gep133 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc131, i32 0, i32 1
  store ptr null, ptr %pay.gep133, align 8
  %arena.cur134 = call ptr @dva_arena_current()
  %rec.alloc135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld136 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc135, i32 0, i32 0
  store i64 100, ptr %rec.fld136, align 8
  %rec.fld137 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc135, i32 0, i32 1
  store i64 105, ptr %rec.fld137, align 8
  %rec.fld138 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc135, i32 0, i32 2
  store ptr %enum.alloc131, ptr %rec.fld138, align 8
  %rec.fld139 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc135, i32 0, i32 3
  store i1 false, ptr %rec.fld139, align 1
  br label %choice.exit

choice.next100:                                   ; preds = %str.eq.merge123
  %eq.lhs.len142 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len143 = load i64, ptr %eq.lhs.len142, align 8
  %eq.lhs.len144 = and i64 %eq.lhs.len143, 281474976710655
  %str.tag145 = lshr i64 %eq.lhs.len143, 48
  %str.immortal146 = icmp eq i64 %str.tag145, 0
  br i1 %str.immortal146, label %str_ok148, label %str_gen_check147

str_gen_check106:                                 ; preds = %choice.next59
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %choice.next59
  %eq.rhs.len111 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len112 = and i64 %eq.rhs.len111, 281474976710655
  %str.tag113 = lshr i64 %eq.rhs.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_stale108:                                     ; preds = %str_gen_check106
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check115:                                 ; preds = %str_ok107
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %str_ok107
  %eq.len120 = icmp eq i64 %eq.lhs.len103, %eq.rhs.len112
  br i1 %eq.len120, label %str.eq.then121, label %str.eq.else122

str_stale117:                                     ; preds = %str_gen_check115
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str.eq.then121:                                   ; preds = %str_ok116
  %eq.lhs.data124 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data125 = load ptr, ptr %eq.lhs.data124, align 8
  %eq.rhs.data126 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp127 = call i32 @memcmp(ptr %eq.lhs.data125, ptr %eq.rhs.data126, i64 %eq.lhs.len103)
  %eq.cmp.zero128 = icmp eq i32 %eq.memcmp127, 0
  br label %str.eq.merge123

str.eq.else122:                                   ; preds = %str_ok116
  br label %str.eq.merge123

str.eq.merge123:                                  ; preds = %str.eq.else122, %str.eq.then121
  %str.eq.result129 = phi i1 [ %eq.cmp.zero128, %str.eq.then121 ], [ false, %str.eq.else122 ]
  br i1 %str.eq.result129, label %choice.case99, label %choice.next100

choice.case140:                                   ; preds = %str.eq.merge164
  %arena.cur171 = call ptr @dva_arena_current()
  %enum.alloc172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 16)
  %tag.gep173 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc172, i32 0, i32 0
  store i64 18, ptr %tag.gep173, align 8
  %pay.gep174 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc172, i32 0, i32 1
  store ptr null, ptr %pay.gep174, align 8
  %arena.cur175 = call ptr @dva_arena_current()
  %rec.alloc176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld177 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc176, i32 0, i32 0
  store i64 105, ptr %rec.fld177, align 8
  %rec.fld178 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc176, i32 0, i32 1
  store i64 110, ptr %rec.fld178, align 8
  %rec.fld179 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc176, i32 0, i32 2
  store ptr %enum.alloc172, ptr %rec.fld179, align 8
  %rec.fld180 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc176, i32 0, i32 3
  store i1 false, ptr %rec.fld180, align 1
  br label %choice.exit

choice.next141:                                   ; preds = %str.eq.merge164
  %eq.lhs.len183 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len184 = load i64, ptr %eq.lhs.len183, align 8
  %eq.lhs.len185 = and i64 %eq.lhs.len184, 281474976710655
  %str.tag186 = lshr i64 %eq.lhs.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

str_gen_check147:                                 ; preds = %choice.next100
  %arena.cur150 = call ptr @dva_arena_current()
  %tag.valid151 = call i1 @dva_arena_validate_tag(ptr %arena.cur150, i64 %str.tag145)
  br i1 %tag.valid151, label %str_ok148, label %str_stale149

str_ok148:                                        ; preds = %str_stale149, %str_gen_check147, %choice.next100
  %eq.rhs.len152 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len153 = and i64 %eq.rhs.len152, 281474976710655
  %str.tag154 = lshr i64 %eq.rhs.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

str_stale149:                                     ; preds = %str_gen_check147
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok148

str_gen_check156:                                 ; preds = %str_ok148
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %str_ok148
  %eq.len161 = icmp eq i64 %eq.lhs.len144, %eq.rhs.len153
  br i1 %eq.len161, label %str.eq.then162, label %str.eq.else163

str_stale158:                                     ; preds = %str_gen_check156
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str.eq.then162:                                   ; preds = %str_ok157
  %eq.lhs.data165 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data166 = load ptr, ptr %eq.lhs.data165, align 8
  %eq.rhs.data167 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp168 = call i32 @memcmp(ptr %eq.lhs.data166, ptr %eq.rhs.data167, i64 %eq.lhs.len144)
  %eq.cmp.zero169 = icmp eq i32 %eq.memcmp168, 0
  br label %str.eq.merge164

str.eq.else163:                                   ; preds = %str_ok157
  br label %str.eq.merge164

str.eq.merge164:                                  ; preds = %str.eq.else163, %str.eq.then162
  %str.eq.result170 = phi i1 [ %eq.cmp.zero169, %str.eq.then162 ], [ false, %str.eq.else163 ]
  br i1 %str.eq.result170, label %choice.case140, label %choice.next141

choice.case181:                                   ; preds = %str.eq.merge205
  %arena.cur212 = call ptr @dva_arena_current()
  %enum.alloc213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 16)
  %tag.gep214 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc213, i32 0, i32 0
  store i64 16, ptr %tag.gep214, align 8
  %pay.gep215 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc213, i32 0, i32 1
  store ptr null, ptr %pay.gep215, align 8
  %arena.cur216 = call ptr @dva_arena_current()
  %rec.alloc217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld218 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc217, i32 0, i32 0
  store i64 110, ptr %rec.fld218, align 8
  %rec.fld219 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc217, i32 0, i32 1
  store i64 120, ptr %rec.fld219, align 8
  %rec.fld220 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc217, i32 0, i32 2
  store ptr %enum.alloc213, ptr %rec.fld220, align 8
  %rec.fld221 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc217, i32 0, i32 3
  store i1 false, ptr %rec.fld221, align 1
  br label %choice.exit

choice.next182:                                   ; preds = %str.eq.merge205
  %eq.lhs.len224 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len225 = load i64, ptr %eq.lhs.len224, align 8
  %eq.lhs.len226 = and i64 %eq.lhs.len225, 281474976710655
  %str.tag227 = lshr i64 %eq.lhs.len225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

str_gen_check188:                                 ; preds = %choice.next141
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %choice.next141
  %eq.rhs.len193 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len194 = and i64 %eq.rhs.len193, 281474976710655
  %str.tag195 = lshr i64 %eq.rhs.len193, 48
  %str.immortal196 = icmp eq i64 %str.tag195, 0
  br i1 %str.immortal196, label %str_ok198, label %str_gen_check197

str_stale190:                                     ; preds = %str_gen_check188
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

str_gen_check197:                                 ; preds = %str_ok189
  %arena.cur200 = call ptr @dva_arena_current()
  %tag.valid201 = call i1 @dva_arena_validate_tag(ptr %arena.cur200, i64 %str.tag195)
  br i1 %tag.valid201, label %str_ok198, label %str_stale199

str_ok198:                                        ; preds = %str_stale199, %str_gen_check197, %str_ok189
  %eq.len202 = icmp eq i64 %eq.lhs.len185, %eq.rhs.len194
  br i1 %eq.len202, label %str.eq.then203, label %str.eq.else204

str_stale199:                                     ; preds = %str_gen_check197
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok198

str.eq.then203:                                   ; preds = %str_ok198
  %eq.lhs.data206 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data207 = load ptr, ptr %eq.lhs.data206, align 8
  %eq.rhs.data208 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp209 = call i32 @memcmp(ptr %eq.lhs.data207, ptr %eq.rhs.data208, i64 %eq.lhs.len185)
  %eq.cmp.zero210 = icmp eq i32 %eq.memcmp209, 0
  br label %str.eq.merge205

str.eq.else204:                                   ; preds = %str_ok198
  br label %str.eq.merge205

str.eq.merge205:                                  ; preds = %str.eq.else204, %str.eq.then203
  %str.eq.result211 = phi i1 [ %eq.cmp.zero210, %str.eq.then203 ], [ false, %str.eq.else204 ]
  br i1 %str.eq.result211, label %choice.case181, label %choice.next182

choice.case222:                                   ; preds = %str.eq.merge246
  %arena.cur253 = call ptr @dva_arena_current()
  %enum.alloc254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 16)
  %tag.gep255 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc254, i32 0, i32 0
  store i64 6, ptr %tag.gep255, align 8
  %pay.gep256 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc254, i32 0, i32 1
  store ptr null, ptr %pay.gep256, align 8
  %arena.cur257 = call ptr @dva_arena_current()
  %rec.alloc258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld259 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc258, i32 0, i32 0
  store i64 120, ptr %rec.fld259, align 8
  %rec.fld260 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc258, i32 0, i32 1
  store i64 130, ptr %rec.fld260, align 8
  %rec.fld261 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc258, i32 0, i32 2
  store ptr %enum.alloc254, ptr %rec.fld261, align 8
  %rec.fld262 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc258, i32 0, i32 3
  store i1 true, ptr %rec.fld262, align 1
  br label %choice.exit

choice.next223:                                   ; preds = %str.eq.merge246
  %eq.lhs.len265 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len266 = load i64, ptr %eq.lhs.len265, align 8
  %eq.lhs.len267 = and i64 %eq.lhs.len266, 281474976710655
  %str.tag268 = lshr i64 %eq.lhs.len266, 48
  %str.immortal269 = icmp eq i64 %str.tag268, 0
  br i1 %str.immortal269, label %str_ok271, label %str_gen_check270

str_gen_check229:                                 ; preds = %choice.next182
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %choice.next182
  %eq.rhs.len234 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len235 = and i64 %eq.rhs.len234, 281474976710655
  %str.tag236 = lshr i64 %eq.rhs.len234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

str_stale231:                                     ; preds = %str_gen_check229
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

str_gen_check238:                                 ; preds = %str_ok230
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %str_ok230
  %eq.len243 = icmp eq i64 %eq.lhs.len226, %eq.rhs.len235
  br i1 %eq.len243, label %str.eq.then244, label %str.eq.else245

str_stale240:                                     ; preds = %str_gen_check238
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

str.eq.then244:                                   ; preds = %str_ok239
  %eq.lhs.data247 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data248 = load ptr, ptr %eq.lhs.data247, align 8
  %eq.rhs.data249 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp250 = call i32 @memcmp(ptr %eq.lhs.data248, ptr %eq.rhs.data249, i64 %eq.lhs.len226)
  %eq.cmp.zero251 = icmp eq i32 %eq.memcmp250, 0
  br label %str.eq.merge246

str.eq.else245:                                   ; preds = %str_ok239
  br label %str.eq.merge246

str.eq.merge246:                                  ; preds = %str.eq.else245, %str.eq.then244
  %str.eq.result252 = phi i1 [ %eq.cmp.zero251, %str.eq.then244 ], [ false, %str.eq.else245 ]
  br i1 %str.eq.result252, label %choice.case222, label %choice.next223

choice.case263:                                   ; preds = %str.eq.merge287
  %arena.cur294 = call ptr @dva_arena_current()
  %enum.alloc295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 16)
  %tag.gep296 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc295, i32 0, i32 0
  store i64 5, ptr %tag.gep296, align 8
  %pay.gep297 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc295, i32 0, i32 1
  store ptr null, ptr %pay.gep297, align 8
  %arena.cur298 = call ptr @dva_arena_current()
  %rec.alloc299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld300 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc299, i32 0, i32 0
  store i64 120, ptr %rec.fld300, align 8
  %rec.fld301 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc299, i32 0, i32 1
  store i64 130, ptr %rec.fld301, align 8
  %rec.fld302 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc299, i32 0, i32 2
  store ptr %enum.alloc295, ptr %rec.fld302, align 8
  %rec.fld303 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc299, i32 0, i32 3
  store i1 true, ptr %rec.fld303, align 1
  br label %choice.exit

choice.next264:                                   ; preds = %str.eq.merge287
  %eq.lhs.len306 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len307 = load i64, ptr %eq.lhs.len306, align 8
  %eq.lhs.len308 = and i64 %eq.lhs.len307, 281474976710655
  %str.tag309 = lshr i64 %eq.lhs.len307, 48
  %str.immortal310 = icmp eq i64 %str.tag309, 0
  br i1 %str.immortal310, label %str_ok312, label %str_gen_check311

str_gen_check270:                                 ; preds = %choice.next223
  %arena.cur273 = call ptr @dva_arena_current()
  %tag.valid274 = call i1 @dva_arena_validate_tag(ptr %arena.cur273, i64 %str.tag268)
  br i1 %tag.valid274, label %str_ok271, label %str_stale272

str_ok271:                                        ; preds = %str_stale272, %str_gen_check270, %choice.next223
  %eq.rhs.len275 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len276 = and i64 %eq.rhs.len275, 281474976710655
  %str.tag277 = lshr i64 %eq.rhs.len275, 48
  %str.immortal278 = icmp eq i64 %str.tag277, 0
  br i1 %str.immortal278, label %str_ok280, label %str_gen_check279

str_stale272:                                     ; preds = %str_gen_check270
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok271

str_gen_check279:                                 ; preds = %str_ok271
  %arena.cur282 = call ptr @dva_arena_current()
  %tag.valid283 = call i1 @dva_arena_validate_tag(ptr %arena.cur282, i64 %str.tag277)
  br i1 %tag.valid283, label %str_ok280, label %str_stale281

str_ok280:                                        ; preds = %str_stale281, %str_gen_check279, %str_ok271
  %eq.len284 = icmp eq i64 %eq.lhs.len267, %eq.rhs.len276
  br i1 %eq.len284, label %str.eq.then285, label %str.eq.else286

str_stale281:                                     ; preds = %str_gen_check279
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok280

str.eq.then285:                                   ; preds = %str_ok280
  %eq.lhs.data288 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data289 = load ptr, ptr %eq.lhs.data288, align 8
  %eq.rhs.data290 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp291 = call i32 @memcmp(ptr %eq.lhs.data289, ptr %eq.rhs.data290, i64 %eq.lhs.len267)
  %eq.cmp.zero292 = icmp eq i32 %eq.memcmp291, 0
  br label %str.eq.merge287

str.eq.else286:                                   ; preds = %str_ok280
  br label %str.eq.merge287

str.eq.merge287:                                  ; preds = %str.eq.else286, %str.eq.then285
  %str.eq.result293 = phi i1 [ %eq.cmp.zero292, %str.eq.then285 ], [ false, %str.eq.else286 ]
  br i1 %str.eq.result293, label %choice.case263, label %choice.next264

choice.case304:                                   ; preds = %str.eq.merge328
  %arena.cur335 = call ptr @dva_arena_current()
  %enum.alloc336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 16)
  %tag.gep337 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc336, i32 0, i32 0
  store i64 7, ptr %tag.gep337, align 8
  %pay.gep338 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc336, i32 0, i32 1
  store ptr null, ptr %pay.gep338, align 8
  %arena.cur339 = call ptr @dva_arena_current()
  %rec.alloc340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld341 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc340, i32 0, i32 0
  store i64 120, ptr %rec.fld341, align 8
  %rec.fld342 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc340, i32 0, i32 1
  store i64 130, ptr %rec.fld342, align 8
  %rec.fld343 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc340, i32 0, i32 2
  store ptr %enum.alloc336, ptr %rec.fld343, align 8
  %rec.fld344 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc340, i32 0, i32 3
  store i1 true, ptr %rec.fld344, align 1
  br label %choice.exit

choice.next305:                                   ; preds = %str.eq.merge328
  %eq.lhs.len347 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len348 = load i64, ptr %eq.lhs.len347, align 8
  %eq.lhs.len349 = and i64 %eq.lhs.len348, 281474976710655
  %str.tag350 = lshr i64 %eq.lhs.len348, 48
  %str.immortal351 = icmp eq i64 %str.tag350, 0
  br i1 %str.immortal351, label %str_ok353, label %str_gen_check352

str_gen_check311:                                 ; preds = %choice.next264
  %arena.cur314 = call ptr @dva_arena_current()
  %tag.valid315 = call i1 @dva_arena_validate_tag(ptr %arena.cur314, i64 %str.tag309)
  br i1 %tag.valid315, label %str_ok312, label %str_stale313

str_ok312:                                        ; preds = %str_stale313, %str_gen_check311, %choice.next264
  %eq.rhs.len316 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len317 = and i64 %eq.rhs.len316, 281474976710655
  %str.tag318 = lshr i64 %eq.rhs.len316, 48
  %str.immortal319 = icmp eq i64 %str.tag318, 0
  br i1 %str.immortal319, label %str_ok321, label %str_gen_check320

str_stale313:                                     ; preds = %str_gen_check311
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok312

str_gen_check320:                                 ; preds = %str_ok312
  %arena.cur323 = call ptr @dva_arena_current()
  %tag.valid324 = call i1 @dva_arena_validate_tag(ptr %arena.cur323, i64 %str.tag318)
  br i1 %tag.valid324, label %str_ok321, label %str_stale322

str_ok321:                                        ; preds = %str_stale322, %str_gen_check320, %str_ok312
  %eq.len325 = icmp eq i64 %eq.lhs.len308, %eq.rhs.len317
  br i1 %eq.len325, label %str.eq.then326, label %str.eq.else327

str_stale322:                                     ; preds = %str_gen_check320
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok321

str.eq.then326:                                   ; preds = %str_ok321
  %eq.lhs.data329 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data330 = load ptr, ptr %eq.lhs.data329, align 8
  %eq.rhs.data331 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp332 = call i32 @memcmp(ptr %eq.lhs.data330, ptr %eq.rhs.data331, i64 %eq.lhs.len308)
  %eq.cmp.zero333 = icmp eq i32 %eq.memcmp332, 0
  br label %str.eq.merge328

str.eq.else327:                                   ; preds = %str_ok321
  br label %str.eq.merge328

str.eq.merge328:                                  ; preds = %str.eq.else327, %str.eq.then326
  %str.eq.result334 = phi i1 [ %eq.cmp.zero333, %str.eq.then326 ], [ false, %str.eq.else327 ]
  br i1 %str.eq.result334, label %choice.case304, label %choice.next305

choice.case345:                                   ; preds = %str.eq.merge369
  %arena.cur376 = call ptr @dva_arena_current()
  %enum.alloc377 = call ptr @dva_arena_alloc(ptr %arena.cur376, i64 16)
  %tag.gep378 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc377, i32 0, i32 0
  store i64 10, ptr %tag.gep378, align 8
  %pay.gep379 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc377, i32 0, i32 1
  store ptr null, ptr %pay.gep379, align 8
  %arena.cur380 = call ptr @dva_arena_current()
  %rec.alloc381 = call ptr @dva_arena_alloc(ptr %arena.cur380, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld382 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc381, i32 0, i32 0
  store i64 120, ptr %rec.fld382, align 8
  %rec.fld383 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc381, i32 0, i32 1
  store i64 130, ptr %rec.fld383, align 8
  %rec.fld384 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc381, i32 0, i32 2
  store ptr %enum.alloc377, ptr %rec.fld384, align 8
  %rec.fld385 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc381, i32 0, i32 3
  store i1 true, ptr %rec.fld385, align 1
  br label %choice.exit

choice.next346:                                   ; preds = %str.eq.merge369
  %eq.lhs.len388 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len389 = load i64, ptr %eq.lhs.len388, align 8
  %eq.lhs.len390 = and i64 %eq.lhs.len389, 281474976710655
  %str.tag391 = lshr i64 %eq.lhs.len389, 48
  %str.immortal392 = icmp eq i64 %str.tag391, 0
  br i1 %str.immortal392, label %str_ok394, label %str_gen_check393

str_gen_check352:                                 ; preds = %choice.next305
  %arena.cur355 = call ptr @dva_arena_current()
  %tag.valid356 = call i1 @dva_arena_validate_tag(ptr %arena.cur355, i64 %str.tag350)
  br i1 %tag.valid356, label %str_ok353, label %str_stale354

str_ok353:                                        ; preds = %str_stale354, %str_gen_check352, %choice.next305
  %eq.rhs.len357 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len358 = and i64 %eq.rhs.len357, 281474976710655
  %str.tag359 = lshr i64 %eq.rhs.len357, 48
  %str.immortal360 = icmp eq i64 %str.tag359, 0
  br i1 %str.immortal360, label %str_ok362, label %str_gen_check361

str_stale354:                                     ; preds = %str_gen_check352
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok353

str_gen_check361:                                 ; preds = %str_ok353
  %arena.cur364 = call ptr @dva_arena_current()
  %tag.valid365 = call i1 @dva_arena_validate_tag(ptr %arena.cur364, i64 %str.tag359)
  br i1 %tag.valid365, label %str_ok362, label %str_stale363

str_ok362:                                        ; preds = %str_stale363, %str_gen_check361, %str_ok353
  %eq.len366 = icmp eq i64 %eq.lhs.len349, %eq.rhs.len358
  br i1 %eq.len366, label %str.eq.then367, label %str.eq.else368

str_stale363:                                     ; preds = %str_gen_check361
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok362

str.eq.then367:                                   ; preds = %str_ok362
  %eq.lhs.data370 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data371 = load ptr, ptr %eq.lhs.data370, align 8
  %eq.rhs.data372 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp373 = call i32 @memcmp(ptr %eq.lhs.data371, ptr %eq.rhs.data372, i64 %eq.lhs.len349)
  %eq.cmp.zero374 = icmp eq i32 %eq.memcmp373, 0
  br label %str.eq.merge369

str.eq.else368:                                   ; preds = %str_ok362
  br label %str.eq.merge369

str.eq.merge369:                                  ; preds = %str.eq.else368, %str.eq.then367
  %str.eq.result375 = phi i1 [ %eq.cmp.zero374, %str.eq.then367 ], [ false, %str.eq.else368 ]
  br i1 %str.eq.result375, label %choice.case345, label %choice.next346

choice.case386:                                   ; preds = %str.eq.merge410
  %arena.cur417 = call ptr @dva_arena_current()
  %enum.alloc418 = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 16)
  %tag.gep419 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc418, i32 0, i32 0
  store i64 9, ptr %tag.gep419, align 8
  %pay.gep420 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc418, i32 0, i32 1
  store ptr null, ptr %pay.gep420, align 8
  %arena.cur421 = call ptr @dva_arena_current()
  %rec.alloc422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld423 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc422, i32 0, i32 0
  store i64 120, ptr %rec.fld423, align 8
  %rec.fld424 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc422, i32 0, i32 1
  store i64 130, ptr %rec.fld424, align 8
  %rec.fld425 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc422, i32 0, i32 2
  store ptr %enum.alloc418, ptr %rec.fld425, align 8
  %rec.fld426 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc422, i32 0, i32 3
  store i1 true, ptr %rec.fld426, align 1
  br label %choice.exit

choice.next387:                                   ; preds = %str.eq.merge410
  %eq.lhs.len429 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len430 = load i64, ptr %eq.lhs.len429, align 8
  %eq.lhs.len431 = and i64 %eq.lhs.len430, 281474976710655
  %str.tag432 = lshr i64 %eq.lhs.len430, 48
  %str.immortal433 = icmp eq i64 %str.tag432, 0
  br i1 %str.immortal433, label %str_ok435, label %str_gen_check434

str_gen_check393:                                 ; preds = %choice.next346
  %arena.cur396 = call ptr @dva_arena_current()
  %tag.valid397 = call i1 @dva_arena_validate_tag(ptr %arena.cur396, i64 %str.tag391)
  br i1 %tag.valid397, label %str_ok394, label %str_stale395

str_ok394:                                        ; preds = %str_stale395, %str_gen_check393, %choice.next346
  %eq.rhs.len398 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len399 = and i64 %eq.rhs.len398, 281474976710655
  %str.tag400 = lshr i64 %eq.rhs.len398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

str_stale395:                                     ; preds = %str_gen_check393
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok394

str_gen_check402:                                 ; preds = %str_ok394
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %str_ok394
  %eq.len407 = icmp eq i64 %eq.lhs.len390, %eq.rhs.len399
  br i1 %eq.len407, label %str.eq.then408, label %str.eq.else409

str_stale404:                                     ; preds = %str_gen_check402
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str.eq.then408:                                   ; preds = %str_ok403
  %eq.lhs.data411 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data412 = load ptr, ptr %eq.lhs.data411, align 8
  %eq.rhs.data413 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp414 = call i32 @memcmp(ptr %eq.lhs.data412, ptr %eq.rhs.data413, i64 %eq.lhs.len390)
  %eq.cmp.zero415 = icmp eq i32 %eq.memcmp414, 0
  br label %str.eq.merge410

str.eq.else409:                                   ; preds = %str_ok403
  br label %str.eq.merge410

str.eq.merge410:                                  ; preds = %str.eq.else409, %str.eq.then408
  %str.eq.result416 = phi i1 [ %eq.cmp.zero415, %str.eq.then408 ], [ false, %str.eq.else409 ]
  br i1 %str.eq.result416, label %choice.case386, label %choice.next387

choice.case427:                                   ; preds = %str.eq.merge451
  %arena.cur458 = call ptr @dva_arena_current()
  %enum.alloc459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 16)
  %tag.gep460 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc459, i32 0, i32 0
  store i64 8, ptr %tag.gep460, align 8
  %pay.gep461 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc459, i32 0, i32 1
  store ptr null, ptr %pay.gep461, align 8
  %arena.cur462 = call ptr @dva_arena_current()
  %rec.alloc463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld464 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 0
  store i64 120, ptr %rec.fld464, align 8
  %rec.fld465 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 1
  store i64 130, ptr %rec.fld465, align 8
  %rec.fld466 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 2
  store ptr %enum.alloc459, ptr %rec.fld466, align 8
  %rec.fld467 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc463, i32 0, i32 3
  store i1 true, ptr %rec.fld467, align 1
  br label %choice.exit

choice.next428:                                   ; preds = %str.eq.merge451
  %eq.lhs.len470 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len471 = load i64, ptr %eq.lhs.len470, align 8
  %eq.lhs.len472 = and i64 %eq.lhs.len471, 281474976710655
  %str.tag473 = lshr i64 %eq.lhs.len471, 48
  %str.immortal474 = icmp eq i64 %str.tag473, 0
  br i1 %str.immortal474, label %str_ok476, label %str_gen_check475

str_gen_check434:                                 ; preds = %choice.next387
  %arena.cur437 = call ptr @dva_arena_current()
  %tag.valid438 = call i1 @dva_arena_validate_tag(ptr %arena.cur437, i64 %str.tag432)
  br i1 %tag.valid438, label %str_ok435, label %str_stale436

str_ok435:                                        ; preds = %str_stale436, %str_gen_check434, %choice.next387
  %eq.rhs.len439 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len440 = and i64 %eq.rhs.len439, 281474976710655
  %str.tag441 = lshr i64 %eq.rhs.len439, 48
  %str.immortal442 = icmp eq i64 %str.tag441, 0
  br i1 %str.immortal442, label %str_ok444, label %str_gen_check443

str_stale436:                                     ; preds = %str_gen_check434
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok435

str_gen_check443:                                 ; preds = %str_ok435
  %arena.cur446 = call ptr @dva_arena_current()
  %tag.valid447 = call i1 @dva_arena_validate_tag(ptr %arena.cur446, i64 %str.tag441)
  br i1 %tag.valid447, label %str_ok444, label %str_stale445

str_ok444:                                        ; preds = %str_stale445, %str_gen_check443, %str_ok435
  %eq.len448 = icmp eq i64 %eq.lhs.len431, %eq.rhs.len440
  br i1 %eq.len448, label %str.eq.then449, label %str.eq.else450

str_stale445:                                     ; preds = %str_gen_check443
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok444

str.eq.then449:                                   ; preds = %str_ok444
  %eq.lhs.data452 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data453 = load ptr, ptr %eq.lhs.data452, align 8
  %eq.rhs.data454 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp455 = call i32 @memcmp(ptr %eq.lhs.data453, ptr %eq.rhs.data454, i64 %eq.lhs.len431)
  %eq.cmp.zero456 = icmp eq i32 %eq.memcmp455, 0
  br label %str.eq.merge451

str.eq.else450:                                   ; preds = %str_ok444
  br label %str.eq.merge451

str.eq.merge451:                                  ; preds = %str.eq.else450, %str.eq.then449
  %str.eq.result457 = phi i1 [ %eq.cmp.zero456, %str.eq.then449 ], [ false, %str.eq.else450 ]
  br i1 %str.eq.result457, label %choice.case427, label %choice.next428

choice.case468:                                   ; preds = %str.eq.merge492
  %arena.cur499 = call ptr @dva_arena_current()
  %enum.alloc500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 16)
  %tag.gep501 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc500, i32 0, i32 0
  store i64 19, ptr %tag.gep501, align 8
  %pay.gep502 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc500, i32 0, i32 1
  store ptr null, ptr %pay.gep502, align 8
  %arena.cur503 = call ptr @dva_arena_current()
  %rec.alloc504 = call ptr @dva_arena_alloc(ptr %arena.cur503, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld505 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc504, i32 0, i32 0
  store i64 130, ptr %rec.fld505, align 8
  %rec.fld506 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc504, i32 0, i32 1
  store i64 140, ptr %rec.fld506, align 8
  %rec.fld507 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc504, i32 0, i32 2
  store ptr %enum.alloc500, ptr %rec.fld507, align 8
  %rec.fld508 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc504, i32 0, i32 3
  store i1 false, ptr %rec.fld508, align 1
  br label %choice.exit

choice.next469:                                   ; preds = %str.eq.merge492
  %eq.lhs.len511 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len512 = load i64, ptr %eq.lhs.len511, align 8
  %eq.lhs.len513 = and i64 %eq.lhs.len512, 281474976710655
  %str.tag514 = lshr i64 %eq.lhs.len512, 48
  %str.immortal515 = icmp eq i64 %str.tag514, 0
  br i1 %str.immortal515, label %str_ok517, label %str_gen_check516

str_gen_check475:                                 ; preds = %choice.next428
  %arena.cur478 = call ptr @dva_arena_current()
  %tag.valid479 = call i1 @dva_arena_validate_tag(ptr %arena.cur478, i64 %str.tag473)
  br i1 %tag.valid479, label %str_ok476, label %str_stale477

str_ok476:                                        ; preds = %str_stale477, %str_gen_check475, %choice.next428
  %eq.rhs.len480 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len481 = and i64 %eq.rhs.len480, 281474976710655
  %str.tag482 = lshr i64 %eq.rhs.len480, 48
  %str.immortal483 = icmp eq i64 %str.tag482, 0
  br i1 %str.immortal483, label %str_ok485, label %str_gen_check484

str_stale477:                                     ; preds = %str_gen_check475
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok476

str_gen_check484:                                 ; preds = %str_ok476
  %arena.cur487 = call ptr @dva_arena_current()
  %tag.valid488 = call i1 @dva_arena_validate_tag(ptr %arena.cur487, i64 %str.tag482)
  br i1 %tag.valid488, label %str_ok485, label %str_stale486

str_ok485:                                        ; preds = %str_stale486, %str_gen_check484, %str_ok476
  %eq.len489 = icmp eq i64 %eq.lhs.len472, %eq.rhs.len481
  br i1 %eq.len489, label %str.eq.then490, label %str.eq.else491

str_stale486:                                     ; preds = %str_gen_check484
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok485

str.eq.then490:                                   ; preds = %str_ok485
  %eq.lhs.data493 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data494 = load ptr, ptr %eq.lhs.data493, align 8
  %eq.rhs.data495 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp496 = call i32 @memcmp(ptr %eq.lhs.data494, ptr %eq.rhs.data495, i64 %eq.lhs.len472)
  %eq.cmp.zero497 = icmp eq i32 %eq.memcmp496, 0
  br label %str.eq.merge492

str.eq.else491:                                   ; preds = %str_ok485
  br label %str.eq.merge492

str.eq.merge492:                                  ; preds = %str.eq.else491, %str.eq.then490
  %str.eq.result498 = phi i1 [ %eq.cmp.zero497, %str.eq.then490 ], [ false, %str.eq.else491 ]
  br i1 %str.eq.result498, label %choice.case468, label %choice.next469

choice.case509:                                   ; preds = %str.eq.merge533
  %arena.cur540 = call ptr @dva_arena_current()
  %enum.alloc541 = call ptr @dva_arena_alloc(ptr %arena.cur540, i64 16)
  %tag.gep542 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc541, i32 0, i32 0
  store i64 20, ptr %tag.gep542, align 8
  %pay.gep543 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc541, i32 0, i32 1
  store ptr null, ptr %pay.gep543, align 8
  %arena.cur544 = call ptr @dva_arena_current()
  %rec.alloc545 = call ptr @dva_arena_alloc(ptr %arena.cur544, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld546 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc545, i32 0, i32 0
  store i64 130, ptr %rec.fld546, align 8
  %rec.fld547 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc545, i32 0, i32 1
  store i64 140, ptr %rec.fld547, align 8
  %rec.fld548 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc545, i32 0, i32 2
  store ptr %enum.alloc541, ptr %rec.fld548, align 8
  %rec.fld549 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc545, i32 0, i32 3
  store i1 false, ptr %rec.fld549, align 1
  br label %choice.exit

choice.next510:                                   ; preds = %str.eq.merge533
  %eq.lhs.len552 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len553 = load i64, ptr %eq.lhs.len552, align 8
  %eq.lhs.len554 = and i64 %eq.lhs.len553, 281474976710655
  %str.tag555 = lshr i64 %eq.lhs.len553, 48
  %str.immortal556 = icmp eq i64 %str.tag555, 0
  br i1 %str.immortal556, label %str_ok558, label %str_gen_check557

str_gen_check516:                                 ; preds = %choice.next469
  %arena.cur519 = call ptr @dva_arena_current()
  %tag.valid520 = call i1 @dva_arena_validate_tag(ptr %arena.cur519, i64 %str.tag514)
  br i1 %tag.valid520, label %str_ok517, label %str_stale518

str_ok517:                                        ; preds = %str_stale518, %str_gen_check516, %choice.next469
  %eq.rhs.len521 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len522 = and i64 %eq.rhs.len521, 281474976710655
  %str.tag523 = lshr i64 %eq.rhs.len521, 48
  %str.immortal524 = icmp eq i64 %str.tag523, 0
  br i1 %str.immortal524, label %str_ok526, label %str_gen_check525

str_stale518:                                     ; preds = %str_gen_check516
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok517

str_gen_check525:                                 ; preds = %str_ok517
  %arena.cur528 = call ptr @dva_arena_current()
  %tag.valid529 = call i1 @dva_arena_validate_tag(ptr %arena.cur528, i64 %str.tag523)
  br i1 %tag.valid529, label %str_ok526, label %str_stale527

str_ok526:                                        ; preds = %str_stale527, %str_gen_check525, %str_ok517
  %eq.len530 = icmp eq i64 %eq.lhs.len513, %eq.rhs.len522
  br i1 %eq.len530, label %str.eq.then531, label %str.eq.else532

str_stale527:                                     ; preds = %str_gen_check525
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok526

str.eq.then531:                                   ; preds = %str_ok526
  %eq.lhs.data534 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data535 = load ptr, ptr %eq.lhs.data534, align 8
  %eq.rhs.data536 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp537 = call i32 @memcmp(ptr %eq.lhs.data535, ptr %eq.rhs.data536, i64 %eq.lhs.len513)
  %eq.cmp.zero538 = icmp eq i32 %eq.memcmp537, 0
  br label %str.eq.merge533

str.eq.else532:                                   ; preds = %str_ok526
  br label %str.eq.merge533

str.eq.merge533:                                  ; preds = %str.eq.else532, %str.eq.then531
  %str.eq.result539 = phi i1 [ %eq.cmp.zero538, %str.eq.then531 ], [ false, %str.eq.else532 ]
  br i1 %str.eq.result539, label %choice.case509, label %choice.next510

choice.case550:                                   ; preds = %str.eq.merge574
  %arena.cur581 = call ptr @dva_arena_current()
  %enum.alloc582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 16)
  %tag.gep583 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc582, i32 0, i32 0
  store i64 0, ptr %tag.gep583, align 8
  %pay.gep584 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc582, i32 0, i32 1
  store ptr null, ptr %pay.gep584, align 8
  %arena.cur585 = call ptr @dva_arena_current()
  %rec.alloc586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld587 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc586, i32 0, i32 0
  store i64 140, ptr %rec.fld587, align 8
  %rec.fld588 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc586, i32 0, i32 1
  store i64 150, ptr %rec.fld588, align 8
  %rec.fld589 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc586, i32 0, i32 2
  store ptr %enum.alloc582, ptr %rec.fld589, align 8
  %rec.fld590 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc586, i32 0, i32 3
  store i1 false, ptr %rec.fld590, align 1
  br label %choice.exit

choice.next551:                                   ; preds = %str.eq.merge574
  %eq.lhs.len593 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len594 = load i64, ptr %eq.lhs.len593, align 8
  %eq.lhs.len595 = and i64 %eq.lhs.len594, 281474976710655
  %str.tag596 = lshr i64 %eq.lhs.len594, 48
  %str.immortal597 = icmp eq i64 %str.tag596, 0
  br i1 %str.immortal597, label %str_ok599, label %str_gen_check598

str_gen_check557:                                 ; preds = %choice.next510
  %arena.cur560 = call ptr @dva_arena_current()
  %tag.valid561 = call i1 @dva_arena_validate_tag(ptr %arena.cur560, i64 %str.tag555)
  br i1 %tag.valid561, label %str_ok558, label %str_stale559

str_ok558:                                        ; preds = %str_stale559, %str_gen_check557, %choice.next510
  %eq.rhs.len562 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %str.tag564 = lshr i64 %eq.rhs.len562, 48
  %str.immortal565 = icmp eq i64 %str.tag564, 0
  br i1 %str.immortal565, label %str_ok567, label %str_gen_check566

str_stale559:                                     ; preds = %str_gen_check557
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok558

str_gen_check566:                                 ; preds = %str_ok558
  %arena.cur569 = call ptr @dva_arena_current()
  %tag.valid570 = call i1 @dva_arena_validate_tag(ptr %arena.cur569, i64 %str.tag564)
  br i1 %tag.valid570, label %str_ok567, label %str_stale568

str_ok567:                                        ; preds = %str_stale568, %str_gen_check566, %str_ok558
  %eq.len571 = icmp eq i64 %eq.lhs.len554, %eq.rhs.len563
  br i1 %eq.len571, label %str.eq.then572, label %str.eq.else573

str_stale568:                                     ; preds = %str_gen_check566
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok567

str.eq.then572:                                   ; preds = %str_ok567
  %eq.lhs.data575 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data576 = load ptr, ptr %eq.lhs.data575, align 8
  %eq.rhs.data577 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp578 = call i32 @memcmp(ptr %eq.lhs.data576, ptr %eq.rhs.data577, i64 %eq.lhs.len554)
  %eq.cmp.zero579 = icmp eq i32 %eq.memcmp578, 0
  br label %str.eq.merge574

str.eq.else573:                                   ; preds = %str_ok567
  br label %str.eq.merge574

str.eq.merge574:                                  ; preds = %str.eq.else573, %str.eq.then572
  %str.eq.result580 = phi i1 [ %eq.cmp.zero579, %str.eq.then572 ], [ false, %str.eq.else573 ]
  br i1 %str.eq.result580, label %choice.case550, label %choice.next551

choice.case591:                                   ; preds = %str.eq.merge615
  %arena.cur622 = call ptr @dva_arena_current()
  %enum.alloc623 = call ptr @dva_arena_alloc(ptr %arena.cur622, i64 16)
  %tag.gep624 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc623, i32 0, i32 0
  store i64 1, ptr %tag.gep624, align 8
  %pay.gep625 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc623, i32 0, i32 1
  store ptr null, ptr %pay.gep625, align 8
  %arena.cur626 = call ptr @dva_arena_current()
  %rec.alloc627 = call ptr @dva_arena_alloc(ptr %arena.cur626, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld628 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc627, i32 0, i32 0
  store i64 140, ptr %rec.fld628, align 8
  %rec.fld629 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc627, i32 0, i32 1
  store i64 150, ptr %rec.fld629, align 8
  %rec.fld630 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc627, i32 0, i32 2
  store ptr %enum.alloc623, ptr %rec.fld630, align 8
  %rec.fld631 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc627, i32 0, i32 3
  store i1 false, ptr %rec.fld631, align 1
  br label %choice.exit

choice.next592:                                   ; preds = %str.eq.merge615
  %eq.lhs.len634 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len635 = load i64, ptr %eq.lhs.len634, align 8
  %eq.lhs.len636 = and i64 %eq.lhs.len635, 281474976710655
  %str.tag637 = lshr i64 %eq.lhs.len635, 48
  %str.immortal638 = icmp eq i64 %str.tag637, 0
  br i1 %str.immortal638, label %str_ok640, label %str_gen_check639

str_gen_check598:                                 ; preds = %choice.next551
  %arena.cur601 = call ptr @dva_arena_current()
  %tag.valid602 = call i1 @dva_arena_validate_tag(ptr %arena.cur601, i64 %str.tag596)
  br i1 %tag.valid602, label %str_ok599, label %str_stale600

str_ok599:                                        ; preds = %str_stale600, %str_gen_check598, %choice.next551
  %eq.rhs.len603 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len604 = and i64 %eq.rhs.len603, 281474976710655
  %str.tag605 = lshr i64 %eq.rhs.len603, 48
  %str.immortal606 = icmp eq i64 %str.tag605, 0
  br i1 %str.immortal606, label %str_ok608, label %str_gen_check607

str_stale600:                                     ; preds = %str_gen_check598
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok599

str_gen_check607:                                 ; preds = %str_ok599
  %arena.cur610 = call ptr @dva_arena_current()
  %tag.valid611 = call i1 @dva_arena_validate_tag(ptr %arena.cur610, i64 %str.tag605)
  br i1 %tag.valid611, label %str_ok608, label %str_stale609

str_ok608:                                        ; preds = %str_stale609, %str_gen_check607, %str_ok599
  %eq.len612 = icmp eq i64 %eq.lhs.len595, %eq.rhs.len604
  br i1 %eq.len612, label %str.eq.then613, label %str.eq.else614

str_stale609:                                     ; preds = %str_gen_check607
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok608

str.eq.then613:                                   ; preds = %str_ok608
  %eq.lhs.data616 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data617 = load ptr, ptr %eq.lhs.data616, align 8
  %eq.rhs.data618 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp619 = call i32 @memcmp(ptr %eq.lhs.data617, ptr %eq.rhs.data618, i64 %eq.lhs.len595)
  %eq.cmp.zero620 = icmp eq i32 %eq.memcmp619, 0
  br label %str.eq.merge615

str.eq.else614:                                   ; preds = %str_ok608
  br label %str.eq.merge615

str.eq.merge615:                                  ; preds = %str.eq.else614, %str.eq.then613
  %str.eq.result621 = phi i1 [ %eq.cmp.zero620, %str.eq.then613 ], [ false, %str.eq.else614 ]
  br i1 %str.eq.result621, label %choice.case591, label %choice.next592

choice.case632:                                   ; preds = %str.eq.merge656
  %arena.cur663 = call ptr @dva_arena_current()
  %enum.alloc664 = call ptr @dva_arena_alloc(ptr %arena.cur663, i64 16)
  %tag.gep665 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc664, i32 0, i32 0
  store i64 13, ptr %tag.gep665, align 8
  %pay.gep666 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc664, i32 0, i32 1
  store ptr null, ptr %pay.gep666, align 8
  %arena.cur667 = call ptr @dva_arena_current()
  %rec.alloc668 = call ptr @dva_arena_alloc(ptr %arena.cur667, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld669 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc668, i32 0, i32 0
  store i64 40, ptr %rec.fld669, align 8
  %rec.fld670 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc668, i32 0, i32 1
  store i64 50, ptr %rec.fld670, align 8
  %rec.fld671 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc668, i32 0, i32 2
  store ptr %enum.alloc664, ptr %rec.fld671, align 8
  %rec.fld672 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc668, i32 0, i32 3
  store i1 false, ptr %rec.fld672, align 1
  br label %choice.exit

choice.next633:                                   ; preds = %str.eq.merge656
  %eq.lhs.len675 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len676 = load i64, ptr %eq.lhs.len675, align 8
  %eq.lhs.len677 = and i64 %eq.lhs.len676, 281474976710655
  %str.tag678 = lshr i64 %eq.lhs.len676, 48
  %str.immortal679 = icmp eq i64 %str.tag678, 0
  br i1 %str.immortal679, label %str_ok681, label %str_gen_check680

str_gen_check639:                                 ; preds = %choice.next592
  %arena.cur642 = call ptr @dva_arena_current()
  %tag.valid643 = call i1 @dva_arena_validate_tag(ptr %arena.cur642, i64 %str.tag637)
  br i1 %tag.valid643, label %str_ok640, label %str_stale641

str_ok640:                                        ; preds = %str_stale641, %str_gen_check639, %choice.next592
  %eq.rhs.len644 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len645 = and i64 %eq.rhs.len644, 281474976710655
  %str.tag646 = lshr i64 %eq.rhs.len644, 48
  %str.immortal647 = icmp eq i64 %str.tag646, 0
  br i1 %str.immortal647, label %str_ok649, label %str_gen_check648

str_stale641:                                     ; preds = %str_gen_check639
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok640

str_gen_check648:                                 ; preds = %str_ok640
  %arena.cur651 = call ptr @dva_arena_current()
  %tag.valid652 = call i1 @dva_arena_validate_tag(ptr %arena.cur651, i64 %str.tag646)
  br i1 %tag.valid652, label %str_ok649, label %str_stale650

str_ok649:                                        ; preds = %str_stale650, %str_gen_check648, %str_ok640
  %eq.len653 = icmp eq i64 %eq.lhs.len636, %eq.rhs.len645
  br i1 %eq.len653, label %str.eq.then654, label %str.eq.else655

str_stale650:                                     ; preds = %str_gen_check648
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok649

str.eq.then654:                                   ; preds = %str_ok649
  %eq.lhs.data657 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data658 = load ptr, ptr %eq.lhs.data657, align 8
  %eq.rhs.data659 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp660 = call i32 @memcmp(ptr %eq.lhs.data658, ptr %eq.rhs.data659, i64 %eq.lhs.len636)
  %eq.cmp.zero661 = icmp eq i32 %eq.memcmp660, 0
  br label %str.eq.merge656

str.eq.else655:                                   ; preds = %str_ok649
  br label %str.eq.merge656

str.eq.merge656:                                  ; preds = %str.eq.else655, %str.eq.then654
  %str.eq.result662 = phi i1 [ %eq.cmp.zero661, %str.eq.then654 ], [ false, %str.eq.else655 ]
  br i1 %str.eq.result662, label %choice.case632, label %choice.next633

choice.case673:                                   ; preds = %str.eq.merge697
  %arena.cur704 = call ptr @dva_arena_current()
  %enum.alloc705 = call ptr @dva_arena_alloc(ptr %arena.cur704, i64 16)
  %tag.gep706 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc705, i32 0, i32 0
  store i64 15, ptr %tag.gep706, align 8
  %pay.gep707 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc705, i32 0, i32 1
  store ptr null, ptr %pay.gep707, align 8
  %arena.cur708 = call ptr @dva_arena_current()
  %rec.alloc709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld710 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc709, i32 0, i32 0
  store i64 40, ptr %rec.fld710, align 8
  %rec.fld711 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc709, i32 0, i32 1
  store i64 50, ptr %rec.fld711, align 8
  %rec.fld712 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc709, i32 0, i32 2
  store ptr %enum.alloc705, ptr %rec.fld712, align 8
  %rec.fld713 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc709, i32 0, i32 3
  store i1 false, ptr %rec.fld713, align 1
  br label %choice.exit

choice.next674:                                   ; preds = %str.eq.merge697
  %eq.lhs.len716 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len717 = load i64, ptr %eq.lhs.len716, align 8
  %eq.lhs.len718 = and i64 %eq.lhs.len717, 281474976710655
  %str.tag719 = lshr i64 %eq.lhs.len717, 48
  %str.immortal720 = icmp eq i64 %str.tag719, 0
  br i1 %str.immortal720, label %str_ok722, label %str_gen_check721

str_gen_check680:                                 ; preds = %choice.next633
  %arena.cur683 = call ptr @dva_arena_current()
  %tag.valid684 = call i1 @dva_arena_validate_tag(ptr %arena.cur683, i64 %str.tag678)
  br i1 %tag.valid684, label %str_ok681, label %str_stale682

str_ok681:                                        ; preds = %str_stale682, %str_gen_check680, %choice.next633
  %eq.rhs.len685 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len686 = and i64 %eq.rhs.len685, 281474976710655
  %str.tag687 = lshr i64 %eq.rhs.len685, 48
  %str.immortal688 = icmp eq i64 %str.tag687, 0
  br i1 %str.immortal688, label %str_ok690, label %str_gen_check689

str_stale682:                                     ; preds = %str_gen_check680
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok681

str_gen_check689:                                 ; preds = %str_ok681
  %arena.cur692 = call ptr @dva_arena_current()
  %tag.valid693 = call i1 @dva_arena_validate_tag(ptr %arena.cur692, i64 %str.tag687)
  br i1 %tag.valid693, label %str_ok690, label %str_stale691

str_ok690:                                        ; preds = %str_stale691, %str_gen_check689, %str_ok681
  %eq.len694 = icmp eq i64 %eq.lhs.len677, %eq.rhs.len686
  br i1 %eq.len694, label %str.eq.then695, label %str.eq.else696

str_stale691:                                     ; preds = %str_gen_check689
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok690

str.eq.then695:                                   ; preds = %str_ok690
  %eq.lhs.data698 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data699 = load ptr, ptr %eq.lhs.data698, align 8
  %eq.rhs.data700 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp701 = call i32 @memcmp(ptr %eq.lhs.data699, ptr %eq.rhs.data700, i64 %eq.lhs.len677)
  %eq.cmp.zero702 = icmp eq i32 %eq.memcmp701, 0
  br label %str.eq.merge697

str.eq.else696:                                   ; preds = %str_ok690
  br label %str.eq.merge697

str.eq.merge697:                                  ; preds = %str.eq.else696, %str.eq.then695
  %str.eq.result703 = phi i1 [ %eq.cmp.zero702, %str.eq.then695 ], [ false, %str.eq.else696 ]
  br i1 %str.eq.result703, label %choice.case673, label %choice.next674

choice.case714:                                   ; preds = %str.eq.merge738
  %arena.cur745 = call ptr @dva_arena_current()
  %enum.alloc746 = call ptr @dva_arena_alloc(ptr %arena.cur745, i64 16)
  %tag.gep747 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc746, i32 0, i32 0
  store i64 2, ptr %tag.gep747, align 8
  %pay.gep748 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc746, i32 0, i32 1
  store ptr null, ptr %pay.gep748, align 8
  %arena.cur749 = call ptr @dva_arena_current()
  %rec.alloc750 = call ptr @dva_arena_alloc(ptr %arena.cur749, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld751 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc750, i32 0, i32 0
  store i64 150, ptr %rec.fld751, align 8
  %rec.fld752 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc750, i32 0, i32 1
  store i64 160, ptr %rec.fld752, align 8
  %rec.fld753 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc750, i32 0, i32 2
  store ptr %enum.alloc746, ptr %rec.fld753, align 8
  %rec.fld754 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc750, i32 0, i32 3
  store i1 false, ptr %rec.fld754, align 1
  br label %choice.exit

choice.next715:                                   ; preds = %str.eq.merge738
  %eq.lhs.len757 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len758 = load i64, ptr %eq.lhs.len757, align 8
  %eq.lhs.len759 = and i64 %eq.lhs.len758, 281474976710655
  %str.tag760 = lshr i64 %eq.lhs.len758, 48
  %str.immortal761 = icmp eq i64 %str.tag760, 0
  br i1 %str.immortal761, label %str_ok763, label %str_gen_check762

str_gen_check721:                                 ; preds = %choice.next674
  %arena.cur724 = call ptr @dva_arena_current()
  %tag.valid725 = call i1 @dva_arena_validate_tag(ptr %arena.cur724, i64 %str.tag719)
  br i1 %tag.valid725, label %str_ok722, label %str_stale723

str_ok722:                                        ; preds = %str_stale723, %str_gen_check721, %choice.next674
  %eq.rhs.len726 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len727 = and i64 %eq.rhs.len726, 281474976710655
  %str.tag728 = lshr i64 %eq.rhs.len726, 48
  %str.immortal729 = icmp eq i64 %str.tag728, 0
  br i1 %str.immortal729, label %str_ok731, label %str_gen_check730

str_stale723:                                     ; preds = %str_gen_check721
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok722

str_gen_check730:                                 ; preds = %str_ok722
  %arena.cur733 = call ptr @dva_arena_current()
  %tag.valid734 = call i1 @dva_arena_validate_tag(ptr %arena.cur733, i64 %str.tag728)
  br i1 %tag.valid734, label %str_ok731, label %str_stale732

str_ok731:                                        ; preds = %str_stale732, %str_gen_check730, %str_ok722
  %eq.len735 = icmp eq i64 %eq.lhs.len718, %eq.rhs.len727
  br i1 %eq.len735, label %str.eq.then736, label %str.eq.else737

str_stale732:                                     ; preds = %str_gen_check730
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok731

str.eq.then736:                                   ; preds = %str_ok731
  %eq.lhs.data739 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data740 = load ptr, ptr %eq.lhs.data739, align 8
  %eq.rhs.data741 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp742 = call i32 @memcmp(ptr %eq.lhs.data740, ptr %eq.rhs.data741, i64 %eq.lhs.len718)
  %eq.cmp.zero743 = icmp eq i32 %eq.memcmp742, 0
  br label %str.eq.merge738

str.eq.else737:                                   ; preds = %str_ok731
  br label %str.eq.merge738

str.eq.merge738:                                  ; preds = %str.eq.else737, %str.eq.then736
  %str.eq.result744 = phi i1 [ %eq.cmp.zero743, %str.eq.then736 ], [ false, %str.eq.else737 ]
  br i1 %str.eq.result744, label %choice.case714, label %choice.next715

choice.case755:                                   ; preds = %str.eq.merge779
  %arena.cur786 = call ptr @dva_arena_current()
  %enum.alloc787 = call ptr @dva_arena_alloc(ptr %arena.cur786, i64 16)
  %tag.gep788 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc787, i32 0, i32 0
  store i64 3, ptr %tag.gep788, align 8
  %pay.gep789 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc787, i32 0, i32 1
  store ptr null, ptr %pay.gep789, align 8
  %arena.cur790 = call ptr @dva_arena_current()
  %rec.alloc791 = call ptr @dva_arena_alloc(ptr %arena.cur790, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld792 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc791, i32 0, i32 0
  store i64 150, ptr %rec.fld792, align 8
  %rec.fld793 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc791, i32 0, i32 1
  store i64 160, ptr %rec.fld793, align 8
  %rec.fld794 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc791, i32 0, i32 2
  store ptr %enum.alloc787, ptr %rec.fld794, align 8
  %rec.fld795 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc791, i32 0, i32 3
  store i1 false, ptr %rec.fld795, align 1
  br label %choice.exit

choice.next756:                                   ; preds = %str.eq.merge779
  %eq.lhs.len798 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len799 = load i64, ptr %eq.lhs.len798, align 8
  %eq.lhs.len800 = and i64 %eq.lhs.len799, 281474976710655
  %str.tag801 = lshr i64 %eq.lhs.len799, 48
  %str.immortal802 = icmp eq i64 %str.tag801, 0
  br i1 %str.immortal802, label %str_ok804, label %str_gen_check803

str_gen_check762:                                 ; preds = %choice.next715
  %arena.cur765 = call ptr @dva_arena_current()
  %tag.valid766 = call i1 @dva_arena_validate_tag(ptr %arena.cur765, i64 %str.tag760)
  br i1 %tag.valid766, label %str_ok763, label %str_stale764

str_ok763:                                        ; preds = %str_stale764, %str_gen_check762, %choice.next715
  %eq.rhs.len767 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len768 = and i64 %eq.rhs.len767, 281474976710655
  %str.tag769 = lshr i64 %eq.rhs.len767, 48
  %str.immortal770 = icmp eq i64 %str.tag769, 0
  br i1 %str.immortal770, label %str_ok772, label %str_gen_check771

str_stale764:                                     ; preds = %str_gen_check762
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok763

str_gen_check771:                                 ; preds = %str_ok763
  %arena.cur774 = call ptr @dva_arena_current()
  %tag.valid775 = call i1 @dva_arena_validate_tag(ptr %arena.cur774, i64 %str.tag769)
  br i1 %tag.valid775, label %str_ok772, label %str_stale773

str_ok772:                                        ; preds = %str_stale773, %str_gen_check771, %str_ok763
  %eq.len776 = icmp eq i64 %eq.lhs.len759, %eq.rhs.len768
  br i1 %eq.len776, label %str.eq.then777, label %str.eq.else778

str_stale773:                                     ; preds = %str_gen_check771
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok772

str.eq.then777:                                   ; preds = %str_ok772
  %eq.lhs.data780 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data781 = load ptr, ptr %eq.lhs.data780, align 8
  %eq.rhs.data782 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp783 = call i32 @memcmp(ptr %eq.lhs.data781, ptr %eq.rhs.data782, i64 %eq.lhs.len759)
  %eq.cmp.zero784 = icmp eq i32 %eq.memcmp783, 0
  br label %str.eq.merge779

str.eq.else778:                                   ; preds = %str_ok772
  br label %str.eq.merge779

str.eq.merge779:                                  ; preds = %str.eq.else778, %str.eq.then777
  %str.eq.result785 = phi i1 [ %eq.cmp.zero784, %str.eq.then777 ], [ false, %str.eq.else778 ]
  br i1 %str.eq.result785, label %choice.case755, label %choice.next756

choice.case796:                                   ; preds = %str.eq.merge820
  %arena.cur827 = call ptr @dva_arena_current()
  %enum.alloc828 = call ptr @dva_arena_alloc(ptr %arena.cur827, i64 16)
  %tag.gep829 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc828, i32 0, i32 0
  store i64 4, ptr %tag.gep829, align 8
  %pay.gep830 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc828, i32 0, i32 1
  store ptr null, ptr %pay.gep830, align 8
  %arena.cur831 = call ptr @dva_arena_current()
  %rec.alloc832 = call ptr @dva_arena_alloc(ptr %arena.cur831, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld833 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc832, i32 0, i32 0
  store i64 150, ptr %rec.fld833, align 8
  %rec.fld834 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc832, i32 0, i32 1
  store i64 160, ptr %rec.fld834, align 8
  %rec.fld835 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc832, i32 0, i32 2
  store ptr %enum.alloc828, ptr %rec.fld835, align 8
  %rec.fld836 = getelementptr inbounds { i64, i64, ptr, i1 }, ptr %rec.alloc832, i32 0, i32 3
  store i1 false, ptr %rec.fld836, align 1
  br label %choice.exit

choice.next797:                                   ; preds = %str.eq.merge820
  br label %choice.exit

str_gen_check803:                                 ; preds = %choice.next756
  %arena.cur806 = call ptr @dva_arena_current()
  %tag.valid807 = call i1 @dva_arena_validate_tag(ptr %arena.cur806, i64 %str.tag801)
  br i1 %tag.valid807, label %str_ok804, label %str_stale805

str_ok804:                                        ; preds = %str_stale805, %str_gen_check803, %choice.next756
  %eq.rhs.len808 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len809 = and i64 %eq.rhs.len808, 281474976710655
  %str.tag810 = lshr i64 %eq.rhs.len808, 48
  %str.immortal811 = icmp eq i64 %str.tag810, 0
  br i1 %str.immortal811, label %str_ok813, label %str_gen_check812

str_stale805:                                     ; preds = %str_gen_check803
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok804

str_gen_check812:                                 ; preds = %str_ok804
  %arena.cur815 = call ptr @dva_arena_current()
  %tag.valid816 = call i1 @dva_arena_validate_tag(ptr %arena.cur815, i64 %str.tag810)
  br i1 %tag.valid816, label %str_ok813, label %str_stale814

str_ok813:                                        ; preds = %str_stale814, %str_gen_check812, %str_ok804
  %eq.len817 = icmp eq i64 %eq.lhs.len800, %eq.rhs.len809
  br i1 %eq.len817, label %str.eq.then818, label %str.eq.else819

str_stale814:                                     ; preds = %str_gen_check812
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok813

str.eq.then818:                                   ; preds = %str_ok813
  %eq.lhs.data821 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data822 = load ptr, ptr %eq.lhs.data821, align 8
  %eq.rhs.data823 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp824 = call i32 @memcmp(ptr %eq.lhs.data822, ptr %eq.rhs.data823, i64 %eq.lhs.len800)
  %eq.cmp.zero825 = icmp eq i32 %eq.memcmp824, 0
  br label %str.eq.merge820

str.eq.else819:                                   ; preds = %str_ok813
  br label %str.eq.merge820

str.eq.merge820:                                  ; preds = %str.eq.else819, %str.eq.then818
  %str.eq.result826 = phi i1 [ %eq.cmp.zero825, %str.eq.then818 ], [ false, %str.eq.else819 ]
  br i1 %str.eq.result826, label %choice.case796, label %choice.next797
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i32 @memcmp(ptr, ptr, i64)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
