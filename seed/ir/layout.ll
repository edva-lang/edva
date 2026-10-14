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
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.layout::target_triple" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"layout::set_target_triple", ptr null }
@"var.layout::set_target_triple" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.1 = internal unnamed_addr constant [6 x i8] c"arm64\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.1 }
@str.2 = internal unnamed_addr constant [7 x i8] c"wasm32\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.2 }
@str.3 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@str.4 = internal unnamed_addr constant [5 x i8] c"i386\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.4 }
@str.5 = internal unnamed_addr constant [5 x i8] c"i486\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.5 }
@str.6 = internal unnamed_addr constant [5 x i8] c"i586\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.6 }
@str.7 = internal unnamed_addr constant [5 x i8] c"i686\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.7 }
@str.8 = internal unnamed_addr constant [6 x i8] c"armv7\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.8 }
@str.9 = internal unnamed_addr constant [6 x i8] c"armv6\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.9 }
@str.10 = internal unnamed_addr constant [6 x i8] c"thumb\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.10 }
@str.11 = internal unnamed_addr constant [8 x i8] c"riscv32\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [4 x i8] c"arm\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.12 }
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
@str.13 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.13 }
@str.14 = internal unnamed_addr constant [11 x i8] c"layout.dva\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.14 }
@str.15 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.15 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"layout::compute_layout", ptr null }
@"var.layout::compute_layout" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_layout, ptr null }]

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

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_layout() #1 {
entry:
  store ptr @str.0.struct, ptr @"var.layout::target_triple", align 8
  store ptr @clo.const, ptr @"var.layout::set_target_triple", align 8
  store ptr @clo.const.1, ptr @"var.layout::is_32bit_triple", align 8
  store ptr @clo.const.2, ptr @"var.layout::is_32bit_target", align 8
  store ptr @clo.const.3, ptr @"var.layout::align_up", align 8
  store ptr @clo.const.4, ptr @"var.layout::compute_prim_layout", align 8
  store ptr @clo.const.5, ptr @"var.layout::is_niche_utype", align 8
  store ptr @clo.const.6, ptr @"var.layout::compute_layout", align 8
  ret void
}

define void @"layout::set_target_triple"(ptr %0) #1 {
entry:
  %var.t = alloca ptr, align 8
  store ptr %0, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.t, align 8
  store ptr %var.load, ptr @"var.layout::target_triple", align 8
  ret void
}

define i1 @"layout::is_32bit_triple"(ptr %0) #1 {
entry:
  %var.n = alloca i64, align 8
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, 5
  br i1 %cmptmp, label %and.0.then, label %and.0.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.0.then:                                       ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.triple, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.0.else:                                       ; preds = %str_ok
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %str.eq.merge
  %and.0.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.0.else ]
  br i1 %and.0.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.0.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.0.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len6, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len6
  %final.start = select i1 %start.gt.len, i64 %s.read.len6, i64 %c.start.0
  %rel.end = add i64 %s.read.len6, 5
  %norm.end = select i1 false, i64 %rel.end, i64 5
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len6
  %final.end = select i1 %end.gt.len, i64 %s.read.len6, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur15 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len16 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len17 = and i64 %eq.lhs.len16, 281474976710655
  %str.tag18 = lshr i64 %eq.lhs.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str_gen_check20:                                  ; preds = %str_ok10
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %str_ok10
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len25 = and i64 %eq.rhs.len, 281474976710655
  %str.tag26 = lshr i64 %eq.rhs.len, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

str_stale22:                                      ; preds = %str_gen_check20
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check28:                                  ; preds = %str_ok21
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %str_ok21
  %eq.len = icmp eq i64 %eq.lhs.len17, %eq.rhs.len25
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

str.eq.then:                                      ; preds = %str_ok29
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data, i64 %eq.lhs.len17)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok29
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.0.exit

choice.then:                                      ; preds = %and.0.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.0.exit
  %var.load34 = load i64, ptr %var.n, align 8
  %cmptmp35 = icmp sge i64 %var.load34, 6
  br i1 %cmptmp35, label %and.1.then, label %and.1.else

choice.exit:                                      ; preds = %or.20.exit, %choice.then
  %choice.res = phi i1 [ false, %choice.then ], [ %or.20.phi, %or.20.exit ]
  ret i1 %choice.res

and.1.then:                                       ; preds = %choice.else
  %var.load36 = load ptr, ptr %var.triple, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %str.tag40 = lshr i64 %s.read.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

and.1.else:                                       ; preds = %choice.else
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %str.eq.merge91
  %and.1.phi = phi i1 [ %str.eq.result97, %str.eq.merge91 ], [ %cmptmp35, %and.1.else ]
  br i1 %and.1.phi, label %or.2.then, label %or.2.else

str_gen_check42:                                  ; preds = %and.1.then
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %and.1.then
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %rel.start49 = add i64 %s.read.len39, 0
  %norm.start50 = select i1 false, i64 %rel.start49, i64 0
  %start.lt.051 = icmp slt i64 %norm.start50, 0
  %c.start.052 = select i1 %start.lt.051, i64 0, i64 %norm.start50
  %start.gt.len53 = icmp sgt i64 %c.start.052, %s.read.len39
  %final.start54 = select i1 %start.gt.len53, i64 %s.read.len39, i64 %c.start.052
  %rel.end55 = add i64 %s.read.len39, 6
  %norm.end56 = select i1 false, i64 %rel.end55, i64 6
  %end.lt.057 = icmp slt i64 %norm.end56, 0
  %c.end.058 = select i1 %end.lt.057, i64 0, i64 %norm.end56
  %end.gt.len59 = icmp sgt i64 %c.end.058, %s.read.len39
  %final.end60 = select i1 %end.gt.len59, i64 %s.read.len39, i64 %c.end.058
  %view.empty61 = icmp sle i64 %final.end60, %final.start54
  %view.len.sub62 = sub i64 %final.end60, %final.start54
  %view.len63 = select i1 %view.empty61, i64 0, i64 %view.len.sub62
  %view.data64 = getelementptr i8, ptr %s.read.data48, i64 %final.start54
  %arena.cur65 = call ptr @dva_arena_current()
  %str.view66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep67 = getelementptr inbounds { i64, ptr }, ptr %str.view66, i32 0, i32 0
  store i64 %view.len63, ptr %str.build.len.gep67, align 8
  %str.build.data.gep68 = getelementptr inbounds { i64, ptr }, ptr %str.view66, i32 0, i32 1
  store ptr %view.data64, ptr %str.build.data.gep68, align 8
  %eq.lhs.len69 = getelementptr inbounds { i64, ptr }, ptr %str.view66, i32 0, i32 0
  %eq.lhs.len70 = load i64, ptr %eq.lhs.len69, align 8
  %eq.lhs.len71 = and i64 %eq.lhs.len70, 281474976710655
  %str.tag72 = lshr i64 %eq.lhs.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

str_gen_check74:                                  ; preds = %str_ok43
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str_ok43
  %eq.rhs.len79 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len80 = and i64 %eq.rhs.len79, 281474976710655
  %str.tag81 = lshr i64 %eq.rhs.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

str_stale76:                                      ; preds = %str_gen_check74
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check83:                                  ; preds = %str_ok75
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %str_ok75
  %eq.len88 = icmp eq i64 %eq.lhs.len71, %eq.rhs.len80
  br i1 %eq.len88, label %str.eq.then89, label %str.eq.else90

str_stale85:                                      ; preds = %str_gen_check83
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str.eq.then89:                                    ; preds = %str_ok84
  %eq.lhs.data92 = getelementptr inbounds { i64, ptr }, ptr %str.view66, i32 0, i32 1
  %eq.lhs.data93 = load ptr, ptr %eq.lhs.data92, align 8
  %eq.rhs.data94 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp95 = call i32 @memcmp(ptr %eq.lhs.data93, ptr %eq.rhs.data94, i64 %eq.lhs.len71)
  %eq.cmp.zero96 = icmp eq i32 %eq.memcmp95, 0
  br label %str.eq.merge91

str.eq.else90:                                    ; preds = %str_ok84
  br label %str.eq.merge91

str.eq.merge91:                                   ; preds = %str.eq.else90, %str.eq.then89
  %str.eq.result97 = phi i1 [ %eq.cmp.zero96, %str.eq.then89 ], [ false, %str.eq.else90 ]
  br label %and.1.exit

or.2.then:                                        ; preds = %and.1.exit
  br label %or.2.exit

or.2.else:                                        ; preds = %and.1.exit
  %var.load98 = load i64, ptr %var.n, align 8
  %cmptmp99 = icmp sge i64 %var.load98, 4
  br i1 %cmptmp99, label %and.3.then, label %and.3.else

or.2.exit:                                        ; preds = %and.3.exit, %or.2.then
  %or.2.phi = phi i1 [ %and.1.phi, %or.2.then ], [ %and.3.phi, %and.3.exit ]
  br i1 %or.2.phi, label %or.4.then, label %or.4.else

and.3.then:                                       ; preds = %or.2.else
  %var.load100 = load ptr, ptr %var.triple, align 8
  %s.read.len101 = getelementptr inbounds { i64, ptr }, ptr %var.load100, i32 0, i32 0
  %s.read.len102 = load i64, ptr %s.read.len101, align 8
  %s.read.len103 = and i64 %s.read.len102, 281474976710655
  %str.tag104 = lshr i64 %s.read.len102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

and.3.else:                                       ; preds = %or.2.else
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %str.eq.merge155
  %and.3.phi = phi i1 [ %str.eq.result161, %str.eq.merge155 ], [ %cmptmp99, %and.3.else ]
  br label %or.2.exit

str_gen_check106:                                 ; preds = %and.3.then
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %and.3.then
  %s.read.data111 = getelementptr inbounds { i64, ptr }, ptr %var.load100, i32 0, i32 1
  %s.read.data112 = load ptr, ptr %s.read.data111, align 8
  %rel.start113 = add i64 %s.read.len103, 0
  %norm.start114 = select i1 false, i64 %rel.start113, i64 0
  %start.lt.0115 = icmp slt i64 %norm.start114, 0
  %c.start.0116 = select i1 %start.lt.0115, i64 0, i64 %norm.start114
  %start.gt.len117 = icmp sgt i64 %c.start.0116, %s.read.len103
  %final.start118 = select i1 %start.gt.len117, i64 %s.read.len103, i64 %c.start.0116
  %rel.end119 = add i64 %s.read.len103, 4
  %norm.end120 = select i1 false, i64 %rel.end119, i64 4
  %end.lt.0121 = icmp slt i64 %norm.end120, 0
  %c.end.0122 = select i1 %end.lt.0121, i64 0, i64 %norm.end120
  %end.gt.len123 = icmp sgt i64 %c.end.0122, %s.read.len103
  %final.end124 = select i1 %end.gt.len123, i64 %s.read.len103, i64 %c.end.0122
  %view.empty125 = icmp sle i64 %final.end124, %final.start118
  %view.len.sub126 = sub i64 %final.end124, %final.start118
  %view.len127 = select i1 %view.empty125, i64 0, i64 %view.len.sub126
  %view.data128 = getelementptr i8, ptr %s.read.data112, i64 %final.start118
  %arena.cur129 = call ptr @dva_arena_current()
  %str.view130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 16)
  %str.build.len.gep131 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 0
  store i64 %view.len127, ptr %str.build.len.gep131, align 8
  %str.build.data.gep132 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 1
  store ptr %view.data128, ptr %str.build.data.gep132, align 8
  %eq.lhs.len133 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 0
  %eq.lhs.len134 = load i64, ptr %eq.lhs.len133, align 8
  %eq.lhs.len135 = and i64 %eq.lhs.len134, 281474976710655
  %str.tag136 = lshr i64 %eq.lhs.len134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

str_stale108:                                     ; preds = %str_gen_check106
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check138:                                 ; preds = %str_ok107
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %str_ok107
  %eq.rhs.len143 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len144 = and i64 %eq.rhs.len143, 281474976710655
  %str.tag145 = lshr i64 %eq.rhs.len143, 48
  %str.immortal146 = icmp eq i64 %str.tag145, 0
  br i1 %str.immortal146, label %str_ok148, label %str_gen_check147

str_stale140:                                     ; preds = %str_gen_check138
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

str_gen_check147:                                 ; preds = %str_ok139
  %arena.cur150 = call ptr @dva_arena_current()
  %tag.valid151 = call i1 @dva_arena_validate_tag(ptr %arena.cur150, i64 %str.tag145)
  br i1 %tag.valid151, label %str_ok148, label %str_stale149

str_ok148:                                        ; preds = %str_stale149, %str_gen_check147, %str_ok139
  %eq.len152 = icmp eq i64 %eq.lhs.len135, %eq.rhs.len144
  br i1 %eq.len152, label %str.eq.then153, label %str.eq.else154

str_stale149:                                     ; preds = %str_gen_check147
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok148

str.eq.then153:                                   ; preds = %str_ok148
  %eq.lhs.data156 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 1
  %eq.lhs.data157 = load ptr, ptr %eq.lhs.data156, align 8
  %eq.rhs.data158 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp159 = call i32 @memcmp(ptr %eq.lhs.data157, ptr %eq.rhs.data158, i64 %eq.lhs.len135)
  %eq.cmp.zero160 = icmp eq i32 %eq.memcmp159, 0
  br label %str.eq.merge155

str.eq.else154:                                   ; preds = %str_ok148
  br label %str.eq.merge155

str.eq.merge155:                                  ; preds = %str.eq.else154, %str.eq.then153
  %str.eq.result161 = phi i1 [ %eq.cmp.zero160, %str.eq.then153 ], [ false, %str.eq.else154 ]
  br label %and.3.exit

or.4.then:                                        ; preds = %or.2.exit
  br label %or.4.exit

or.4.else:                                        ; preds = %or.2.exit
  %var.load162 = load i64, ptr %var.n, align 8
  %cmptmp163 = icmp sge i64 %var.load162, 4
  br i1 %cmptmp163, label %and.5.then, label %and.5.else

or.4.exit:                                        ; preds = %and.5.exit, %or.4.then
  %or.4.phi = phi i1 [ %or.2.phi, %or.4.then ], [ %and.5.phi, %and.5.exit ]
  br i1 %or.4.phi, label %or.6.then, label %or.6.else

and.5.then:                                       ; preds = %or.4.else
  %var.load164 = load ptr, ptr %var.triple, align 8
  %s.read.len165 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 0
  %s.read.len166 = load i64, ptr %s.read.len165, align 8
  %s.read.len167 = and i64 %s.read.len166, 281474976710655
  %str.tag168 = lshr i64 %s.read.len166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

and.5.else:                                       ; preds = %or.4.else
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %str.eq.merge219
  %and.5.phi = phi i1 [ %str.eq.result225, %str.eq.merge219 ], [ %cmptmp163, %and.5.else ]
  br label %or.4.exit

str_gen_check170:                                 ; preds = %and.5.then
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %and.5.then
  %s.read.data175 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 1
  %s.read.data176 = load ptr, ptr %s.read.data175, align 8
  %rel.start177 = add i64 %s.read.len167, 0
  %norm.start178 = select i1 false, i64 %rel.start177, i64 0
  %start.lt.0179 = icmp slt i64 %norm.start178, 0
  %c.start.0180 = select i1 %start.lt.0179, i64 0, i64 %norm.start178
  %start.gt.len181 = icmp sgt i64 %c.start.0180, %s.read.len167
  %final.start182 = select i1 %start.gt.len181, i64 %s.read.len167, i64 %c.start.0180
  %rel.end183 = add i64 %s.read.len167, 4
  %norm.end184 = select i1 false, i64 %rel.end183, i64 4
  %end.lt.0185 = icmp slt i64 %norm.end184, 0
  %c.end.0186 = select i1 %end.lt.0185, i64 0, i64 %norm.end184
  %end.gt.len187 = icmp sgt i64 %c.end.0186, %s.read.len167
  %final.end188 = select i1 %end.gt.len187, i64 %s.read.len167, i64 %c.end.0186
  %view.empty189 = icmp sle i64 %final.end188, %final.start182
  %view.len.sub190 = sub i64 %final.end188, %final.start182
  %view.len191 = select i1 %view.empty189, i64 0, i64 %view.len.sub190
  %view.data192 = getelementptr i8, ptr %s.read.data176, i64 %final.start182
  %arena.cur193 = call ptr @dva_arena_current()
  %str.view194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  %str.build.len.gep195 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 0
  store i64 %view.len191, ptr %str.build.len.gep195, align 8
  %str.build.data.gep196 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 1
  store ptr %view.data192, ptr %str.build.data.gep196, align 8
  %eq.lhs.len197 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 0
  %eq.lhs.len198 = load i64, ptr %eq.lhs.len197, align 8
  %eq.lhs.len199 = and i64 %eq.lhs.len198, 281474976710655
  %str.tag200 = lshr i64 %eq.lhs.len198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

str_stale172:                                     ; preds = %str_gen_check170
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check202:                                 ; preds = %str_ok171
  %arena.cur205 = call ptr @dva_arena_current()
  %tag.valid206 = call i1 @dva_arena_validate_tag(ptr %arena.cur205, i64 %str.tag200)
  br i1 %tag.valid206, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %str_ok171
  %eq.rhs.len207 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len208 = and i64 %eq.rhs.len207, 281474976710655
  %str.tag209 = lshr i64 %eq.rhs.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

str_stale204:                                     ; preds = %str_gen_check202
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

str_gen_check211:                                 ; preds = %str_ok203
  %arena.cur214 = call ptr @dva_arena_current()
  %tag.valid215 = call i1 @dva_arena_validate_tag(ptr %arena.cur214, i64 %str.tag209)
  br i1 %tag.valid215, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %str_ok203
  %eq.len216 = icmp eq i64 %eq.lhs.len199, %eq.rhs.len208
  br i1 %eq.len216, label %str.eq.then217, label %str.eq.else218

str_stale213:                                     ; preds = %str_gen_check211
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

str.eq.then217:                                   ; preds = %str_ok212
  %eq.lhs.data220 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 1
  %eq.lhs.data221 = load ptr, ptr %eq.lhs.data220, align 8
  %eq.rhs.data222 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp223 = call i32 @memcmp(ptr %eq.lhs.data221, ptr %eq.rhs.data222, i64 %eq.lhs.len199)
  %eq.cmp.zero224 = icmp eq i32 %eq.memcmp223, 0
  br label %str.eq.merge219

str.eq.else218:                                   ; preds = %str_ok212
  br label %str.eq.merge219

str.eq.merge219:                                  ; preds = %str.eq.else218, %str.eq.then217
  %str.eq.result225 = phi i1 [ %eq.cmp.zero224, %str.eq.then217 ], [ false, %str.eq.else218 ]
  br label %and.5.exit

or.6.then:                                        ; preds = %or.4.exit
  br label %or.6.exit

or.6.else:                                        ; preds = %or.4.exit
  %var.load226 = load i64, ptr %var.n, align 8
  %cmptmp227 = icmp sge i64 %var.load226, 4
  br i1 %cmptmp227, label %and.7.then, label %and.7.else

or.6.exit:                                        ; preds = %and.7.exit, %or.6.then
  %or.6.phi = phi i1 [ %or.4.phi, %or.6.then ], [ %and.7.phi, %and.7.exit ]
  br i1 %or.6.phi, label %or.8.then, label %or.8.else

and.7.then:                                       ; preds = %or.6.else
  %var.load228 = load ptr, ptr %var.triple, align 8
  %s.read.len229 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 0
  %s.read.len230 = load i64, ptr %s.read.len229, align 8
  %s.read.len231 = and i64 %s.read.len230, 281474976710655
  %str.tag232 = lshr i64 %s.read.len230, 48
  %str.immortal233 = icmp eq i64 %str.tag232, 0
  br i1 %str.immortal233, label %str_ok235, label %str_gen_check234

and.7.else:                                       ; preds = %or.6.else
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %str.eq.merge283
  %and.7.phi = phi i1 [ %str.eq.result289, %str.eq.merge283 ], [ %cmptmp227, %and.7.else ]
  br label %or.6.exit

str_gen_check234:                                 ; preds = %and.7.then
  %arena.cur237 = call ptr @dva_arena_current()
  %tag.valid238 = call i1 @dva_arena_validate_tag(ptr %arena.cur237, i64 %str.tag232)
  br i1 %tag.valid238, label %str_ok235, label %str_stale236

str_ok235:                                        ; preds = %str_stale236, %str_gen_check234, %and.7.then
  %s.read.data239 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 1
  %s.read.data240 = load ptr, ptr %s.read.data239, align 8
  %rel.start241 = add i64 %s.read.len231, 0
  %norm.start242 = select i1 false, i64 %rel.start241, i64 0
  %start.lt.0243 = icmp slt i64 %norm.start242, 0
  %c.start.0244 = select i1 %start.lt.0243, i64 0, i64 %norm.start242
  %start.gt.len245 = icmp sgt i64 %c.start.0244, %s.read.len231
  %final.start246 = select i1 %start.gt.len245, i64 %s.read.len231, i64 %c.start.0244
  %rel.end247 = add i64 %s.read.len231, 4
  %norm.end248 = select i1 false, i64 %rel.end247, i64 4
  %end.lt.0249 = icmp slt i64 %norm.end248, 0
  %c.end.0250 = select i1 %end.lt.0249, i64 0, i64 %norm.end248
  %end.gt.len251 = icmp sgt i64 %c.end.0250, %s.read.len231
  %final.end252 = select i1 %end.gt.len251, i64 %s.read.len231, i64 %c.end.0250
  %view.empty253 = icmp sle i64 %final.end252, %final.start246
  %view.len.sub254 = sub i64 %final.end252, %final.start246
  %view.len255 = select i1 %view.empty253, i64 0, i64 %view.len.sub254
  %view.data256 = getelementptr i8, ptr %s.read.data240, i64 %final.start246
  %arena.cur257 = call ptr @dva_arena_current()
  %str.view258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 16)
  %str.build.len.gep259 = getelementptr inbounds { i64, ptr }, ptr %str.view258, i32 0, i32 0
  store i64 %view.len255, ptr %str.build.len.gep259, align 8
  %str.build.data.gep260 = getelementptr inbounds { i64, ptr }, ptr %str.view258, i32 0, i32 1
  store ptr %view.data256, ptr %str.build.data.gep260, align 8
  %eq.lhs.len261 = getelementptr inbounds { i64, ptr }, ptr %str.view258, i32 0, i32 0
  %eq.lhs.len262 = load i64, ptr %eq.lhs.len261, align 8
  %eq.lhs.len263 = and i64 %eq.lhs.len262, 281474976710655
  %str.tag264 = lshr i64 %eq.lhs.len262, 48
  %str.immortal265 = icmp eq i64 %str.tag264, 0
  br i1 %str.immortal265, label %str_ok267, label %str_gen_check266

str_stale236:                                     ; preds = %str_gen_check234
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok235

str_gen_check266:                                 ; preds = %str_ok235
  %arena.cur269 = call ptr @dva_arena_current()
  %tag.valid270 = call i1 @dva_arena_validate_tag(ptr %arena.cur269, i64 %str.tag264)
  br i1 %tag.valid270, label %str_ok267, label %str_stale268

str_ok267:                                        ; preds = %str_stale268, %str_gen_check266, %str_ok235
  %eq.rhs.len271 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len272 = and i64 %eq.rhs.len271, 281474976710655
  %str.tag273 = lshr i64 %eq.rhs.len271, 48
  %str.immortal274 = icmp eq i64 %str.tag273, 0
  br i1 %str.immortal274, label %str_ok276, label %str_gen_check275

str_stale268:                                     ; preds = %str_gen_check266
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok267

str_gen_check275:                                 ; preds = %str_ok267
  %arena.cur278 = call ptr @dva_arena_current()
  %tag.valid279 = call i1 @dva_arena_validate_tag(ptr %arena.cur278, i64 %str.tag273)
  br i1 %tag.valid279, label %str_ok276, label %str_stale277

str_ok276:                                        ; preds = %str_stale277, %str_gen_check275, %str_ok267
  %eq.len280 = icmp eq i64 %eq.lhs.len263, %eq.rhs.len272
  br i1 %eq.len280, label %str.eq.then281, label %str.eq.else282

str_stale277:                                     ; preds = %str_gen_check275
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok276

str.eq.then281:                                   ; preds = %str_ok276
  %eq.lhs.data284 = getelementptr inbounds { i64, ptr }, ptr %str.view258, i32 0, i32 1
  %eq.lhs.data285 = load ptr, ptr %eq.lhs.data284, align 8
  %eq.rhs.data286 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp287 = call i32 @memcmp(ptr %eq.lhs.data285, ptr %eq.rhs.data286, i64 %eq.lhs.len263)
  %eq.cmp.zero288 = icmp eq i32 %eq.memcmp287, 0
  br label %str.eq.merge283

str.eq.else282:                                   ; preds = %str_ok276
  br label %str.eq.merge283

str.eq.merge283:                                  ; preds = %str.eq.else282, %str.eq.then281
  %str.eq.result289 = phi i1 [ %eq.cmp.zero288, %str.eq.then281 ], [ false, %str.eq.else282 ]
  br label %and.7.exit

or.8.then:                                        ; preds = %or.6.exit
  br label %or.8.exit

or.8.else:                                        ; preds = %or.6.exit
  %var.load290 = load i64, ptr %var.n, align 8
  %cmptmp291 = icmp sge i64 %var.load290, 4
  br i1 %cmptmp291, label %and.9.then, label %and.9.else

or.8.exit:                                        ; preds = %and.9.exit, %or.8.then
  %or.8.phi = phi i1 [ %or.6.phi, %or.8.then ], [ %and.9.phi, %and.9.exit ]
  br i1 %or.8.phi, label %or.10.then, label %or.10.else

and.9.then:                                       ; preds = %or.8.else
  %var.load292 = load ptr, ptr %var.triple, align 8
  %s.read.len293 = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 0
  %s.read.len294 = load i64, ptr %s.read.len293, align 8
  %s.read.len295 = and i64 %s.read.len294, 281474976710655
  %str.tag296 = lshr i64 %s.read.len294, 48
  %str.immortal297 = icmp eq i64 %str.tag296, 0
  br i1 %str.immortal297, label %str_ok299, label %str_gen_check298

and.9.else:                                       ; preds = %or.8.else
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %str.eq.merge347
  %and.9.phi = phi i1 [ %str.eq.result353, %str.eq.merge347 ], [ %cmptmp291, %and.9.else ]
  br label %or.8.exit

str_gen_check298:                                 ; preds = %and.9.then
  %arena.cur301 = call ptr @dva_arena_current()
  %tag.valid302 = call i1 @dva_arena_validate_tag(ptr %arena.cur301, i64 %str.tag296)
  br i1 %tag.valid302, label %str_ok299, label %str_stale300

str_ok299:                                        ; preds = %str_stale300, %str_gen_check298, %and.9.then
  %s.read.data303 = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 1
  %s.read.data304 = load ptr, ptr %s.read.data303, align 8
  %rel.start305 = add i64 %s.read.len295, 0
  %norm.start306 = select i1 false, i64 %rel.start305, i64 0
  %start.lt.0307 = icmp slt i64 %norm.start306, 0
  %c.start.0308 = select i1 %start.lt.0307, i64 0, i64 %norm.start306
  %start.gt.len309 = icmp sgt i64 %c.start.0308, %s.read.len295
  %final.start310 = select i1 %start.gt.len309, i64 %s.read.len295, i64 %c.start.0308
  %rel.end311 = add i64 %s.read.len295, 4
  %norm.end312 = select i1 false, i64 %rel.end311, i64 4
  %end.lt.0313 = icmp slt i64 %norm.end312, 0
  %c.end.0314 = select i1 %end.lt.0313, i64 0, i64 %norm.end312
  %end.gt.len315 = icmp sgt i64 %c.end.0314, %s.read.len295
  %final.end316 = select i1 %end.gt.len315, i64 %s.read.len295, i64 %c.end.0314
  %view.empty317 = icmp sle i64 %final.end316, %final.start310
  %view.len.sub318 = sub i64 %final.end316, %final.start310
  %view.len319 = select i1 %view.empty317, i64 0, i64 %view.len.sub318
  %view.data320 = getelementptr i8, ptr %s.read.data304, i64 %final.start310
  %arena.cur321 = call ptr @dva_arena_current()
  %str.view322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 16)
  %str.build.len.gep323 = getelementptr inbounds { i64, ptr }, ptr %str.view322, i32 0, i32 0
  store i64 %view.len319, ptr %str.build.len.gep323, align 8
  %str.build.data.gep324 = getelementptr inbounds { i64, ptr }, ptr %str.view322, i32 0, i32 1
  store ptr %view.data320, ptr %str.build.data.gep324, align 8
  %eq.lhs.len325 = getelementptr inbounds { i64, ptr }, ptr %str.view322, i32 0, i32 0
  %eq.lhs.len326 = load i64, ptr %eq.lhs.len325, align 8
  %eq.lhs.len327 = and i64 %eq.lhs.len326, 281474976710655
  %str.tag328 = lshr i64 %eq.lhs.len326, 48
  %str.immortal329 = icmp eq i64 %str.tag328, 0
  br i1 %str.immortal329, label %str_ok331, label %str_gen_check330

str_stale300:                                     ; preds = %str_gen_check298
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok299

str_gen_check330:                                 ; preds = %str_ok299
  %arena.cur333 = call ptr @dva_arena_current()
  %tag.valid334 = call i1 @dva_arena_validate_tag(ptr %arena.cur333, i64 %str.tag328)
  br i1 %tag.valid334, label %str_ok331, label %str_stale332

str_ok331:                                        ; preds = %str_stale332, %str_gen_check330, %str_ok299
  %eq.rhs.len335 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len336 = and i64 %eq.rhs.len335, 281474976710655
  %str.tag337 = lshr i64 %eq.rhs.len335, 48
  %str.immortal338 = icmp eq i64 %str.tag337, 0
  br i1 %str.immortal338, label %str_ok340, label %str_gen_check339

str_stale332:                                     ; preds = %str_gen_check330
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok331

str_gen_check339:                                 ; preds = %str_ok331
  %arena.cur342 = call ptr @dva_arena_current()
  %tag.valid343 = call i1 @dva_arena_validate_tag(ptr %arena.cur342, i64 %str.tag337)
  br i1 %tag.valid343, label %str_ok340, label %str_stale341

str_ok340:                                        ; preds = %str_stale341, %str_gen_check339, %str_ok331
  %eq.len344 = icmp eq i64 %eq.lhs.len327, %eq.rhs.len336
  br i1 %eq.len344, label %str.eq.then345, label %str.eq.else346

str_stale341:                                     ; preds = %str_gen_check339
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok340

str.eq.then345:                                   ; preds = %str_ok340
  %eq.lhs.data348 = getelementptr inbounds { i64, ptr }, ptr %str.view322, i32 0, i32 1
  %eq.lhs.data349 = load ptr, ptr %eq.lhs.data348, align 8
  %eq.rhs.data350 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp351 = call i32 @memcmp(ptr %eq.lhs.data349, ptr %eq.rhs.data350, i64 %eq.lhs.len327)
  %eq.cmp.zero352 = icmp eq i32 %eq.memcmp351, 0
  br label %str.eq.merge347

str.eq.else346:                                   ; preds = %str_ok340
  br label %str.eq.merge347

str.eq.merge347:                                  ; preds = %str.eq.else346, %str.eq.then345
  %str.eq.result353 = phi i1 [ %eq.cmp.zero352, %str.eq.then345 ], [ false, %str.eq.else346 ]
  br label %and.9.exit

or.10.then:                                       ; preds = %or.8.exit
  br label %or.10.exit

or.10.else:                                       ; preds = %or.8.exit
  %var.load354 = load i64, ptr %var.n, align 8
  %cmptmp355 = icmp sge i64 %var.load354, 4
  br i1 %cmptmp355, label %and.11.then, label %and.11.else

or.10.exit:                                       ; preds = %and.11.exit, %or.10.then
  %or.10.phi = phi i1 [ %or.8.phi, %or.10.then ], [ %and.11.phi, %and.11.exit ]
  br i1 %or.10.phi, label %or.12.then, label %or.12.else

and.11.then:                                      ; preds = %or.10.else
  %var.load356 = load ptr, ptr %var.triple, align 8
  %s.read.len357 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 0
  %s.read.len358 = load i64, ptr %s.read.len357, align 8
  %s.read.len359 = and i64 %s.read.len358, 281474976710655
  %str.tag360 = lshr i64 %s.read.len358, 48
  %str.immortal361 = icmp eq i64 %str.tag360, 0
  br i1 %str.immortal361, label %str_ok363, label %str_gen_check362

and.11.else:                                      ; preds = %or.10.else
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %str.eq.merge411
  %and.11.phi = phi i1 [ %str.eq.result417, %str.eq.merge411 ], [ %cmptmp355, %and.11.else ]
  br label %or.10.exit

str_gen_check362:                                 ; preds = %and.11.then
  %arena.cur365 = call ptr @dva_arena_current()
  %tag.valid366 = call i1 @dva_arena_validate_tag(ptr %arena.cur365, i64 %str.tag360)
  br i1 %tag.valid366, label %str_ok363, label %str_stale364

str_ok363:                                        ; preds = %str_stale364, %str_gen_check362, %and.11.then
  %s.read.data367 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 1
  %s.read.data368 = load ptr, ptr %s.read.data367, align 8
  %rel.start369 = add i64 %s.read.len359, 0
  %norm.start370 = select i1 false, i64 %rel.start369, i64 0
  %start.lt.0371 = icmp slt i64 %norm.start370, 0
  %c.start.0372 = select i1 %start.lt.0371, i64 0, i64 %norm.start370
  %start.gt.len373 = icmp sgt i64 %c.start.0372, %s.read.len359
  %final.start374 = select i1 %start.gt.len373, i64 %s.read.len359, i64 %c.start.0372
  %rel.end375 = add i64 %s.read.len359, 4
  %norm.end376 = select i1 false, i64 %rel.end375, i64 4
  %end.lt.0377 = icmp slt i64 %norm.end376, 0
  %c.end.0378 = select i1 %end.lt.0377, i64 0, i64 %norm.end376
  %end.gt.len379 = icmp sgt i64 %c.end.0378, %s.read.len359
  %final.end380 = select i1 %end.gt.len379, i64 %s.read.len359, i64 %c.end.0378
  %view.empty381 = icmp sle i64 %final.end380, %final.start374
  %view.len.sub382 = sub i64 %final.end380, %final.start374
  %view.len383 = select i1 %view.empty381, i64 0, i64 %view.len.sub382
  %view.data384 = getelementptr i8, ptr %s.read.data368, i64 %final.start374
  %arena.cur385 = call ptr @dva_arena_current()
  %str.view386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 16)
  %str.build.len.gep387 = getelementptr inbounds { i64, ptr }, ptr %str.view386, i32 0, i32 0
  store i64 %view.len383, ptr %str.build.len.gep387, align 8
  %str.build.data.gep388 = getelementptr inbounds { i64, ptr }, ptr %str.view386, i32 0, i32 1
  store ptr %view.data384, ptr %str.build.data.gep388, align 8
  %eq.lhs.len389 = getelementptr inbounds { i64, ptr }, ptr %str.view386, i32 0, i32 0
  %eq.lhs.len390 = load i64, ptr %eq.lhs.len389, align 8
  %eq.lhs.len391 = and i64 %eq.lhs.len390, 281474976710655
  %str.tag392 = lshr i64 %eq.lhs.len390, 48
  %str.immortal393 = icmp eq i64 %str.tag392, 0
  br i1 %str.immortal393, label %str_ok395, label %str_gen_check394

str_stale364:                                     ; preds = %str_gen_check362
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok363

str_gen_check394:                                 ; preds = %str_ok363
  %arena.cur397 = call ptr @dva_arena_current()
  %tag.valid398 = call i1 @dva_arena_validate_tag(ptr %arena.cur397, i64 %str.tag392)
  br i1 %tag.valid398, label %str_ok395, label %str_stale396

str_ok395:                                        ; preds = %str_stale396, %str_gen_check394, %str_ok363
  %eq.rhs.len399 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len400 = and i64 %eq.rhs.len399, 281474976710655
  %str.tag401 = lshr i64 %eq.rhs.len399, 48
  %str.immortal402 = icmp eq i64 %str.tag401, 0
  br i1 %str.immortal402, label %str_ok404, label %str_gen_check403

str_stale396:                                     ; preds = %str_gen_check394
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok395

str_gen_check403:                                 ; preds = %str_ok395
  %arena.cur406 = call ptr @dva_arena_current()
  %tag.valid407 = call i1 @dva_arena_validate_tag(ptr %arena.cur406, i64 %str.tag401)
  br i1 %tag.valid407, label %str_ok404, label %str_stale405

str_ok404:                                        ; preds = %str_stale405, %str_gen_check403, %str_ok395
  %eq.len408 = icmp eq i64 %eq.lhs.len391, %eq.rhs.len400
  br i1 %eq.len408, label %str.eq.then409, label %str.eq.else410

str_stale405:                                     ; preds = %str_gen_check403
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok404

str.eq.then409:                                   ; preds = %str_ok404
  %eq.lhs.data412 = getelementptr inbounds { i64, ptr }, ptr %str.view386, i32 0, i32 1
  %eq.lhs.data413 = load ptr, ptr %eq.lhs.data412, align 8
  %eq.rhs.data414 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp415 = call i32 @memcmp(ptr %eq.lhs.data413, ptr %eq.rhs.data414, i64 %eq.lhs.len391)
  %eq.cmp.zero416 = icmp eq i32 %eq.memcmp415, 0
  br label %str.eq.merge411

str.eq.else410:                                   ; preds = %str_ok404
  br label %str.eq.merge411

str.eq.merge411:                                  ; preds = %str.eq.else410, %str.eq.then409
  %str.eq.result417 = phi i1 [ %eq.cmp.zero416, %str.eq.then409 ], [ false, %str.eq.else410 ]
  br label %and.11.exit

or.12.then:                                       ; preds = %or.10.exit
  br label %or.12.exit

or.12.else:                                       ; preds = %or.10.exit
  %var.load418 = load i64, ptr %var.n, align 8
  %cmptmp419 = icmp sge i64 %var.load418, 5
  br i1 %cmptmp419, label %and.13.then, label %and.13.else

or.12.exit:                                       ; preds = %and.13.exit, %or.12.then
  %or.12.phi = phi i1 [ %or.10.phi, %or.12.then ], [ %and.13.phi, %and.13.exit ]
  br i1 %or.12.phi, label %or.14.then, label %or.14.else

and.13.then:                                      ; preds = %or.12.else
  %var.load420 = load ptr, ptr %var.triple, align 8
  %s.read.len421 = getelementptr inbounds { i64, ptr }, ptr %var.load420, i32 0, i32 0
  %s.read.len422 = load i64, ptr %s.read.len421, align 8
  %s.read.len423 = and i64 %s.read.len422, 281474976710655
  %str.tag424 = lshr i64 %s.read.len422, 48
  %str.immortal425 = icmp eq i64 %str.tag424, 0
  br i1 %str.immortal425, label %str_ok427, label %str_gen_check426

and.13.else:                                      ; preds = %or.12.else
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %str.eq.merge475
  %and.13.phi = phi i1 [ %str.eq.result481, %str.eq.merge475 ], [ %cmptmp419, %and.13.else ]
  br label %or.12.exit

str_gen_check426:                                 ; preds = %and.13.then
  %arena.cur429 = call ptr @dva_arena_current()
  %tag.valid430 = call i1 @dva_arena_validate_tag(ptr %arena.cur429, i64 %str.tag424)
  br i1 %tag.valid430, label %str_ok427, label %str_stale428

str_ok427:                                        ; preds = %str_stale428, %str_gen_check426, %and.13.then
  %s.read.data431 = getelementptr inbounds { i64, ptr }, ptr %var.load420, i32 0, i32 1
  %s.read.data432 = load ptr, ptr %s.read.data431, align 8
  %rel.start433 = add i64 %s.read.len423, 0
  %norm.start434 = select i1 false, i64 %rel.start433, i64 0
  %start.lt.0435 = icmp slt i64 %norm.start434, 0
  %c.start.0436 = select i1 %start.lt.0435, i64 0, i64 %norm.start434
  %start.gt.len437 = icmp sgt i64 %c.start.0436, %s.read.len423
  %final.start438 = select i1 %start.gt.len437, i64 %s.read.len423, i64 %c.start.0436
  %rel.end439 = add i64 %s.read.len423, 5
  %norm.end440 = select i1 false, i64 %rel.end439, i64 5
  %end.lt.0441 = icmp slt i64 %norm.end440, 0
  %c.end.0442 = select i1 %end.lt.0441, i64 0, i64 %norm.end440
  %end.gt.len443 = icmp sgt i64 %c.end.0442, %s.read.len423
  %final.end444 = select i1 %end.gt.len443, i64 %s.read.len423, i64 %c.end.0442
  %view.empty445 = icmp sle i64 %final.end444, %final.start438
  %view.len.sub446 = sub i64 %final.end444, %final.start438
  %view.len447 = select i1 %view.empty445, i64 0, i64 %view.len.sub446
  %view.data448 = getelementptr i8, ptr %s.read.data432, i64 %final.start438
  %arena.cur449 = call ptr @dva_arena_current()
  %str.view450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 16)
  %str.build.len.gep451 = getelementptr inbounds { i64, ptr }, ptr %str.view450, i32 0, i32 0
  store i64 %view.len447, ptr %str.build.len.gep451, align 8
  %str.build.data.gep452 = getelementptr inbounds { i64, ptr }, ptr %str.view450, i32 0, i32 1
  store ptr %view.data448, ptr %str.build.data.gep452, align 8
  %eq.lhs.len453 = getelementptr inbounds { i64, ptr }, ptr %str.view450, i32 0, i32 0
  %eq.lhs.len454 = load i64, ptr %eq.lhs.len453, align 8
  %eq.lhs.len455 = and i64 %eq.lhs.len454, 281474976710655
  %str.tag456 = lshr i64 %eq.lhs.len454, 48
  %str.immortal457 = icmp eq i64 %str.tag456, 0
  br i1 %str.immortal457, label %str_ok459, label %str_gen_check458

str_stale428:                                     ; preds = %str_gen_check426
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok427

str_gen_check458:                                 ; preds = %str_ok427
  %arena.cur461 = call ptr @dva_arena_current()
  %tag.valid462 = call i1 @dva_arena_validate_tag(ptr %arena.cur461, i64 %str.tag456)
  br i1 %tag.valid462, label %str_ok459, label %str_stale460

str_ok459:                                        ; preds = %str_stale460, %str_gen_check458, %str_ok427
  %eq.rhs.len463 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len464 = and i64 %eq.rhs.len463, 281474976710655
  %str.tag465 = lshr i64 %eq.rhs.len463, 48
  %str.immortal466 = icmp eq i64 %str.tag465, 0
  br i1 %str.immortal466, label %str_ok468, label %str_gen_check467

str_stale460:                                     ; preds = %str_gen_check458
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok459

str_gen_check467:                                 ; preds = %str_ok459
  %arena.cur470 = call ptr @dva_arena_current()
  %tag.valid471 = call i1 @dva_arena_validate_tag(ptr %arena.cur470, i64 %str.tag465)
  br i1 %tag.valid471, label %str_ok468, label %str_stale469

str_ok468:                                        ; preds = %str_stale469, %str_gen_check467, %str_ok459
  %eq.len472 = icmp eq i64 %eq.lhs.len455, %eq.rhs.len464
  br i1 %eq.len472, label %str.eq.then473, label %str.eq.else474

str_stale469:                                     ; preds = %str_gen_check467
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok468

str.eq.then473:                                   ; preds = %str_ok468
  %eq.lhs.data476 = getelementptr inbounds { i64, ptr }, ptr %str.view450, i32 0, i32 1
  %eq.lhs.data477 = load ptr, ptr %eq.lhs.data476, align 8
  %eq.rhs.data478 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp479 = call i32 @memcmp(ptr %eq.lhs.data477, ptr %eq.rhs.data478, i64 %eq.lhs.len455)
  %eq.cmp.zero480 = icmp eq i32 %eq.memcmp479, 0
  br label %str.eq.merge475

str.eq.else474:                                   ; preds = %str_ok468
  br label %str.eq.merge475

str.eq.merge475:                                  ; preds = %str.eq.else474, %str.eq.then473
  %str.eq.result481 = phi i1 [ %eq.cmp.zero480, %str.eq.then473 ], [ false, %str.eq.else474 ]
  br label %and.13.exit

or.14.then:                                       ; preds = %or.12.exit
  br label %or.14.exit

or.14.else:                                       ; preds = %or.12.exit
  %var.load482 = load i64, ptr %var.n, align 8
  %cmptmp483 = icmp sge i64 %var.load482, 5
  br i1 %cmptmp483, label %and.15.then, label %and.15.else

or.14.exit:                                       ; preds = %and.15.exit, %or.14.then
  %or.14.phi = phi i1 [ %or.12.phi, %or.14.then ], [ %and.15.phi, %and.15.exit ]
  br i1 %or.14.phi, label %or.16.then, label %or.16.else

and.15.then:                                      ; preds = %or.14.else
  %var.load484 = load ptr, ptr %var.triple, align 8
  %s.read.len485 = getelementptr inbounds { i64, ptr }, ptr %var.load484, i32 0, i32 0
  %s.read.len486 = load i64, ptr %s.read.len485, align 8
  %s.read.len487 = and i64 %s.read.len486, 281474976710655
  %str.tag488 = lshr i64 %s.read.len486, 48
  %str.immortal489 = icmp eq i64 %str.tag488, 0
  br i1 %str.immortal489, label %str_ok491, label %str_gen_check490

and.15.else:                                      ; preds = %or.14.else
  br label %and.15.exit

and.15.exit:                                      ; preds = %and.15.else, %str.eq.merge539
  %and.15.phi = phi i1 [ %str.eq.result545, %str.eq.merge539 ], [ %cmptmp483, %and.15.else ]
  br label %or.14.exit

str_gen_check490:                                 ; preds = %and.15.then
  %arena.cur493 = call ptr @dva_arena_current()
  %tag.valid494 = call i1 @dva_arena_validate_tag(ptr %arena.cur493, i64 %str.tag488)
  br i1 %tag.valid494, label %str_ok491, label %str_stale492

str_ok491:                                        ; preds = %str_stale492, %str_gen_check490, %and.15.then
  %s.read.data495 = getelementptr inbounds { i64, ptr }, ptr %var.load484, i32 0, i32 1
  %s.read.data496 = load ptr, ptr %s.read.data495, align 8
  %rel.start497 = add i64 %s.read.len487, 0
  %norm.start498 = select i1 false, i64 %rel.start497, i64 0
  %start.lt.0499 = icmp slt i64 %norm.start498, 0
  %c.start.0500 = select i1 %start.lt.0499, i64 0, i64 %norm.start498
  %start.gt.len501 = icmp sgt i64 %c.start.0500, %s.read.len487
  %final.start502 = select i1 %start.gt.len501, i64 %s.read.len487, i64 %c.start.0500
  %rel.end503 = add i64 %s.read.len487, 5
  %norm.end504 = select i1 false, i64 %rel.end503, i64 5
  %end.lt.0505 = icmp slt i64 %norm.end504, 0
  %c.end.0506 = select i1 %end.lt.0505, i64 0, i64 %norm.end504
  %end.gt.len507 = icmp sgt i64 %c.end.0506, %s.read.len487
  %final.end508 = select i1 %end.gt.len507, i64 %s.read.len487, i64 %c.end.0506
  %view.empty509 = icmp sle i64 %final.end508, %final.start502
  %view.len.sub510 = sub i64 %final.end508, %final.start502
  %view.len511 = select i1 %view.empty509, i64 0, i64 %view.len.sub510
  %view.data512 = getelementptr i8, ptr %s.read.data496, i64 %final.start502
  %arena.cur513 = call ptr @dva_arena_current()
  %str.view514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 16)
  %str.build.len.gep515 = getelementptr inbounds { i64, ptr }, ptr %str.view514, i32 0, i32 0
  store i64 %view.len511, ptr %str.build.len.gep515, align 8
  %str.build.data.gep516 = getelementptr inbounds { i64, ptr }, ptr %str.view514, i32 0, i32 1
  store ptr %view.data512, ptr %str.build.data.gep516, align 8
  %eq.lhs.len517 = getelementptr inbounds { i64, ptr }, ptr %str.view514, i32 0, i32 0
  %eq.lhs.len518 = load i64, ptr %eq.lhs.len517, align 8
  %eq.lhs.len519 = and i64 %eq.lhs.len518, 281474976710655
  %str.tag520 = lshr i64 %eq.lhs.len518, 48
  %str.immortal521 = icmp eq i64 %str.tag520, 0
  br i1 %str.immortal521, label %str_ok523, label %str_gen_check522

str_stale492:                                     ; preds = %str_gen_check490
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok491

str_gen_check522:                                 ; preds = %str_ok491
  %arena.cur525 = call ptr @dva_arena_current()
  %tag.valid526 = call i1 @dva_arena_validate_tag(ptr %arena.cur525, i64 %str.tag520)
  br i1 %tag.valid526, label %str_ok523, label %str_stale524

str_ok523:                                        ; preds = %str_stale524, %str_gen_check522, %str_ok491
  %eq.rhs.len527 = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len528 = and i64 %eq.rhs.len527, 281474976710655
  %str.tag529 = lshr i64 %eq.rhs.len527, 48
  %str.immortal530 = icmp eq i64 %str.tag529, 0
  br i1 %str.immortal530, label %str_ok532, label %str_gen_check531

str_stale524:                                     ; preds = %str_gen_check522
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok523

str_gen_check531:                                 ; preds = %str_ok523
  %arena.cur534 = call ptr @dva_arena_current()
  %tag.valid535 = call i1 @dva_arena_validate_tag(ptr %arena.cur534, i64 %str.tag529)
  br i1 %tag.valid535, label %str_ok532, label %str_stale533

str_ok532:                                        ; preds = %str_stale533, %str_gen_check531, %str_ok523
  %eq.len536 = icmp eq i64 %eq.lhs.len519, %eq.rhs.len528
  br i1 %eq.len536, label %str.eq.then537, label %str.eq.else538

str_stale533:                                     ; preds = %str_gen_check531
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok532

str.eq.then537:                                   ; preds = %str_ok532
  %eq.lhs.data540 = getelementptr inbounds { i64, ptr }, ptr %str.view514, i32 0, i32 1
  %eq.lhs.data541 = load ptr, ptr %eq.lhs.data540, align 8
  %eq.rhs.data542 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp543 = call i32 @memcmp(ptr %eq.lhs.data541, ptr %eq.rhs.data542, i64 %eq.lhs.len519)
  %eq.cmp.zero544 = icmp eq i32 %eq.memcmp543, 0
  br label %str.eq.merge539

str.eq.else538:                                   ; preds = %str_ok532
  br label %str.eq.merge539

str.eq.merge539:                                  ; preds = %str.eq.else538, %str.eq.then537
  %str.eq.result545 = phi i1 [ %eq.cmp.zero544, %str.eq.then537 ], [ false, %str.eq.else538 ]
  br label %and.15.exit

or.16.then:                                       ; preds = %or.14.exit
  br label %or.16.exit

or.16.else:                                       ; preds = %or.14.exit
  %var.load546 = load i64, ptr %var.n, align 8
  %cmptmp547 = icmp sge i64 %var.load546, 5
  br i1 %cmptmp547, label %and.17.then, label %and.17.else

or.16.exit:                                       ; preds = %and.17.exit, %or.16.then
  %or.16.phi = phi i1 [ %or.14.phi, %or.16.then ], [ %and.17.phi, %and.17.exit ]
  br i1 %or.16.phi, label %or.18.then, label %or.18.else

and.17.then:                                      ; preds = %or.16.else
  %var.load548 = load ptr, ptr %var.triple, align 8
  %s.read.len549 = getelementptr inbounds { i64, ptr }, ptr %var.load548, i32 0, i32 0
  %s.read.len550 = load i64, ptr %s.read.len549, align 8
  %s.read.len551 = and i64 %s.read.len550, 281474976710655
  %str.tag552 = lshr i64 %s.read.len550, 48
  %str.immortal553 = icmp eq i64 %str.tag552, 0
  br i1 %str.immortal553, label %str_ok555, label %str_gen_check554

and.17.else:                                      ; preds = %or.16.else
  br label %and.17.exit

and.17.exit:                                      ; preds = %and.17.else, %str.eq.merge603
  %and.17.phi = phi i1 [ %str.eq.result609, %str.eq.merge603 ], [ %cmptmp547, %and.17.else ]
  br label %or.16.exit

str_gen_check554:                                 ; preds = %and.17.then
  %arena.cur557 = call ptr @dva_arena_current()
  %tag.valid558 = call i1 @dva_arena_validate_tag(ptr %arena.cur557, i64 %str.tag552)
  br i1 %tag.valid558, label %str_ok555, label %str_stale556

str_ok555:                                        ; preds = %str_stale556, %str_gen_check554, %and.17.then
  %s.read.data559 = getelementptr inbounds { i64, ptr }, ptr %var.load548, i32 0, i32 1
  %s.read.data560 = load ptr, ptr %s.read.data559, align 8
  %rel.start561 = add i64 %s.read.len551, 0
  %norm.start562 = select i1 false, i64 %rel.start561, i64 0
  %start.lt.0563 = icmp slt i64 %norm.start562, 0
  %c.start.0564 = select i1 %start.lt.0563, i64 0, i64 %norm.start562
  %start.gt.len565 = icmp sgt i64 %c.start.0564, %s.read.len551
  %final.start566 = select i1 %start.gt.len565, i64 %s.read.len551, i64 %c.start.0564
  %rel.end567 = add i64 %s.read.len551, 5
  %norm.end568 = select i1 false, i64 %rel.end567, i64 5
  %end.lt.0569 = icmp slt i64 %norm.end568, 0
  %c.end.0570 = select i1 %end.lt.0569, i64 0, i64 %norm.end568
  %end.gt.len571 = icmp sgt i64 %c.end.0570, %s.read.len551
  %final.end572 = select i1 %end.gt.len571, i64 %s.read.len551, i64 %c.end.0570
  %view.empty573 = icmp sle i64 %final.end572, %final.start566
  %view.len.sub574 = sub i64 %final.end572, %final.start566
  %view.len575 = select i1 %view.empty573, i64 0, i64 %view.len.sub574
  %view.data576 = getelementptr i8, ptr %s.read.data560, i64 %final.start566
  %arena.cur577 = call ptr @dva_arena_current()
  %str.view578 = call ptr @dva_arena_alloc(ptr %arena.cur577, i64 16)
  %str.build.len.gep579 = getelementptr inbounds { i64, ptr }, ptr %str.view578, i32 0, i32 0
  store i64 %view.len575, ptr %str.build.len.gep579, align 8
  %str.build.data.gep580 = getelementptr inbounds { i64, ptr }, ptr %str.view578, i32 0, i32 1
  store ptr %view.data576, ptr %str.build.data.gep580, align 8
  %eq.lhs.len581 = getelementptr inbounds { i64, ptr }, ptr %str.view578, i32 0, i32 0
  %eq.lhs.len582 = load i64, ptr %eq.lhs.len581, align 8
  %eq.lhs.len583 = and i64 %eq.lhs.len582, 281474976710655
  %str.tag584 = lshr i64 %eq.lhs.len582, 48
  %str.immortal585 = icmp eq i64 %str.tag584, 0
  br i1 %str.immortal585, label %str_ok587, label %str_gen_check586

str_stale556:                                     ; preds = %str_gen_check554
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok555

str_gen_check586:                                 ; preds = %str_ok555
  %arena.cur589 = call ptr @dva_arena_current()
  %tag.valid590 = call i1 @dva_arena_validate_tag(ptr %arena.cur589, i64 %str.tag584)
  br i1 %tag.valid590, label %str_ok587, label %str_stale588

str_ok587:                                        ; preds = %str_stale588, %str_gen_check586, %str_ok555
  %eq.rhs.len591 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len592 = and i64 %eq.rhs.len591, 281474976710655
  %str.tag593 = lshr i64 %eq.rhs.len591, 48
  %str.immortal594 = icmp eq i64 %str.tag593, 0
  br i1 %str.immortal594, label %str_ok596, label %str_gen_check595

str_stale588:                                     ; preds = %str_gen_check586
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok587

str_gen_check595:                                 ; preds = %str_ok587
  %arena.cur598 = call ptr @dva_arena_current()
  %tag.valid599 = call i1 @dva_arena_validate_tag(ptr %arena.cur598, i64 %str.tag593)
  br i1 %tag.valid599, label %str_ok596, label %str_stale597

str_ok596:                                        ; preds = %str_stale597, %str_gen_check595, %str_ok587
  %eq.len600 = icmp eq i64 %eq.lhs.len583, %eq.rhs.len592
  br i1 %eq.len600, label %str.eq.then601, label %str.eq.else602

str_stale597:                                     ; preds = %str_gen_check595
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok596

str.eq.then601:                                   ; preds = %str_ok596
  %eq.lhs.data604 = getelementptr inbounds { i64, ptr }, ptr %str.view578, i32 0, i32 1
  %eq.lhs.data605 = load ptr, ptr %eq.lhs.data604, align 8
  %eq.rhs.data606 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp607 = call i32 @memcmp(ptr %eq.lhs.data605, ptr %eq.rhs.data606, i64 %eq.lhs.len583)
  %eq.cmp.zero608 = icmp eq i32 %eq.memcmp607, 0
  br label %str.eq.merge603

str.eq.else602:                                   ; preds = %str_ok596
  br label %str.eq.merge603

str.eq.merge603:                                  ; preds = %str.eq.else602, %str.eq.then601
  %str.eq.result609 = phi i1 [ %eq.cmp.zero608, %str.eq.then601 ], [ false, %str.eq.else602 ]
  br label %and.17.exit

or.18.then:                                       ; preds = %or.16.exit
  br label %or.18.exit

or.18.else:                                       ; preds = %or.16.exit
  %var.load610 = load i64, ptr %var.n, align 8
  %cmptmp611 = icmp sge i64 %var.load610, 7
  br i1 %cmptmp611, label %and.19.then, label %and.19.else

or.18.exit:                                       ; preds = %and.19.exit, %or.18.then
  %or.18.phi = phi i1 [ %or.16.phi, %or.18.then ], [ %and.19.phi, %and.19.exit ]
  br i1 %or.18.phi, label %or.20.then, label %or.20.else

and.19.then:                                      ; preds = %or.18.else
  %var.load612 = load ptr, ptr %var.triple, align 8
  %s.read.len613 = getelementptr inbounds { i64, ptr }, ptr %var.load612, i32 0, i32 0
  %s.read.len614 = load i64, ptr %s.read.len613, align 8
  %s.read.len615 = and i64 %s.read.len614, 281474976710655
  %str.tag616 = lshr i64 %s.read.len614, 48
  %str.immortal617 = icmp eq i64 %str.tag616, 0
  br i1 %str.immortal617, label %str_ok619, label %str_gen_check618

and.19.else:                                      ; preds = %or.18.else
  br label %and.19.exit

and.19.exit:                                      ; preds = %and.19.else, %str.eq.merge667
  %and.19.phi = phi i1 [ %str.eq.result673, %str.eq.merge667 ], [ %cmptmp611, %and.19.else ]
  br label %or.18.exit

str_gen_check618:                                 ; preds = %and.19.then
  %arena.cur621 = call ptr @dva_arena_current()
  %tag.valid622 = call i1 @dva_arena_validate_tag(ptr %arena.cur621, i64 %str.tag616)
  br i1 %tag.valid622, label %str_ok619, label %str_stale620

str_ok619:                                        ; preds = %str_stale620, %str_gen_check618, %and.19.then
  %s.read.data623 = getelementptr inbounds { i64, ptr }, ptr %var.load612, i32 0, i32 1
  %s.read.data624 = load ptr, ptr %s.read.data623, align 8
  %rel.start625 = add i64 %s.read.len615, 0
  %norm.start626 = select i1 false, i64 %rel.start625, i64 0
  %start.lt.0627 = icmp slt i64 %norm.start626, 0
  %c.start.0628 = select i1 %start.lt.0627, i64 0, i64 %norm.start626
  %start.gt.len629 = icmp sgt i64 %c.start.0628, %s.read.len615
  %final.start630 = select i1 %start.gt.len629, i64 %s.read.len615, i64 %c.start.0628
  %rel.end631 = add i64 %s.read.len615, 7
  %norm.end632 = select i1 false, i64 %rel.end631, i64 7
  %end.lt.0633 = icmp slt i64 %norm.end632, 0
  %c.end.0634 = select i1 %end.lt.0633, i64 0, i64 %norm.end632
  %end.gt.len635 = icmp sgt i64 %c.end.0634, %s.read.len615
  %final.end636 = select i1 %end.gt.len635, i64 %s.read.len615, i64 %c.end.0634
  %view.empty637 = icmp sle i64 %final.end636, %final.start630
  %view.len.sub638 = sub i64 %final.end636, %final.start630
  %view.len639 = select i1 %view.empty637, i64 0, i64 %view.len.sub638
  %view.data640 = getelementptr i8, ptr %s.read.data624, i64 %final.start630
  %arena.cur641 = call ptr @dva_arena_current()
  %str.view642 = call ptr @dva_arena_alloc(ptr %arena.cur641, i64 16)
  %str.build.len.gep643 = getelementptr inbounds { i64, ptr }, ptr %str.view642, i32 0, i32 0
  store i64 %view.len639, ptr %str.build.len.gep643, align 8
  %str.build.data.gep644 = getelementptr inbounds { i64, ptr }, ptr %str.view642, i32 0, i32 1
  store ptr %view.data640, ptr %str.build.data.gep644, align 8
  %eq.lhs.len645 = getelementptr inbounds { i64, ptr }, ptr %str.view642, i32 0, i32 0
  %eq.lhs.len646 = load i64, ptr %eq.lhs.len645, align 8
  %eq.lhs.len647 = and i64 %eq.lhs.len646, 281474976710655
  %str.tag648 = lshr i64 %eq.lhs.len646, 48
  %str.immortal649 = icmp eq i64 %str.tag648, 0
  br i1 %str.immortal649, label %str_ok651, label %str_gen_check650

str_stale620:                                     ; preds = %str_gen_check618
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok619

str_gen_check650:                                 ; preds = %str_ok619
  %arena.cur653 = call ptr @dva_arena_current()
  %tag.valid654 = call i1 @dva_arena_validate_tag(ptr %arena.cur653, i64 %str.tag648)
  br i1 %tag.valid654, label %str_ok651, label %str_stale652

str_ok651:                                        ; preds = %str_stale652, %str_gen_check650, %str_ok619
  %eq.rhs.len655 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len656 = and i64 %eq.rhs.len655, 281474976710655
  %str.tag657 = lshr i64 %eq.rhs.len655, 48
  %str.immortal658 = icmp eq i64 %str.tag657, 0
  br i1 %str.immortal658, label %str_ok660, label %str_gen_check659

str_stale652:                                     ; preds = %str_gen_check650
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok651

str_gen_check659:                                 ; preds = %str_ok651
  %arena.cur662 = call ptr @dva_arena_current()
  %tag.valid663 = call i1 @dva_arena_validate_tag(ptr %arena.cur662, i64 %str.tag657)
  br i1 %tag.valid663, label %str_ok660, label %str_stale661

str_ok660:                                        ; preds = %str_stale661, %str_gen_check659, %str_ok651
  %eq.len664 = icmp eq i64 %eq.lhs.len647, %eq.rhs.len656
  br i1 %eq.len664, label %str.eq.then665, label %str.eq.else666

str_stale661:                                     ; preds = %str_gen_check659
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok660

str.eq.then665:                                   ; preds = %str_ok660
  %eq.lhs.data668 = getelementptr inbounds { i64, ptr }, ptr %str.view642, i32 0, i32 1
  %eq.lhs.data669 = load ptr, ptr %eq.lhs.data668, align 8
  %eq.rhs.data670 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp671 = call i32 @memcmp(ptr %eq.lhs.data669, ptr %eq.rhs.data670, i64 %eq.lhs.len647)
  %eq.cmp.zero672 = icmp eq i32 %eq.memcmp671, 0
  br label %str.eq.merge667

str.eq.else666:                                   ; preds = %str_ok660
  br label %str.eq.merge667

str.eq.merge667:                                  ; preds = %str.eq.else666, %str.eq.then665
  %str.eq.result673 = phi i1 [ %eq.cmp.zero672, %str.eq.then665 ], [ false, %str.eq.else666 ]
  br label %and.19.exit

or.20.then:                                       ; preds = %or.18.exit
  br label %or.20.exit

or.20.else:                                       ; preds = %or.18.exit
  %var.load674 = load i64, ptr %var.n, align 8
  %cmptmp675 = icmp sge i64 %var.load674, 3
  br i1 %cmptmp675, label %and.21.then, label %and.21.else

or.20.exit:                                       ; preds = %and.21.exit, %or.20.then
  %or.20.phi = phi i1 [ %or.18.phi, %or.20.then ], [ %and.21.phi, %and.21.exit ]
  br label %choice.exit

and.21.then:                                      ; preds = %or.20.else
  %var.load676 = load ptr, ptr %var.triple, align 8
  %s.read.len677 = getelementptr inbounds { i64, ptr }, ptr %var.load676, i32 0, i32 0
  %s.read.len678 = load i64, ptr %s.read.len677, align 8
  %s.read.len679 = and i64 %s.read.len678, 281474976710655
  %str.tag680 = lshr i64 %s.read.len678, 48
  %str.immortal681 = icmp eq i64 %str.tag680, 0
  br i1 %str.immortal681, label %str_ok683, label %str_gen_check682

and.21.else:                                      ; preds = %or.20.else
  br label %and.21.exit

and.21.exit:                                      ; preds = %and.21.else, %str.eq.merge731
  %and.21.phi = phi i1 [ %str.eq.result737, %str.eq.merge731 ], [ %cmptmp675, %and.21.else ]
  br label %or.20.exit

str_gen_check682:                                 ; preds = %and.21.then
  %arena.cur685 = call ptr @dva_arena_current()
  %tag.valid686 = call i1 @dva_arena_validate_tag(ptr %arena.cur685, i64 %str.tag680)
  br i1 %tag.valid686, label %str_ok683, label %str_stale684

str_ok683:                                        ; preds = %str_stale684, %str_gen_check682, %and.21.then
  %s.read.data687 = getelementptr inbounds { i64, ptr }, ptr %var.load676, i32 0, i32 1
  %s.read.data688 = load ptr, ptr %s.read.data687, align 8
  %rel.start689 = add i64 %s.read.len679, 0
  %norm.start690 = select i1 false, i64 %rel.start689, i64 0
  %start.lt.0691 = icmp slt i64 %norm.start690, 0
  %c.start.0692 = select i1 %start.lt.0691, i64 0, i64 %norm.start690
  %start.gt.len693 = icmp sgt i64 %c.start.0692, %s.read.len679
  %final.start694 = select i1 %start.gt.len693, i64 %s.read.len679, i64 %c.start.0692
  %rel.end695 = add i64 %s.read.len679, 3
  %norm.end696 = select i1 false, i64 %rel.end695, i64 3
  %end.lt.0697 = icmp slt i64 %norm.end696, 0
  %c.end.0698 = select i1 %end.lt.0697, i64 0, i64 %norm.end696
  %end.gt.len699 = icmp sgt i64 %c.end.0698, %s.read.len679
  %final.end700 = select i1 %end.gt.len699, i64 %s.read.len679, i64 %c.end.0698
  %view.empty701 = icmp sle i64 %final.end700, %final.start694
  %view.len.sub702 = sub i64 %final.end700, %final.start694
  %view.len703 = select i1 %view.empty701, i64 0, i64 %view.len.sub702
  %view.data704 = getelementptr i8, ptr %s.read.data688, i64 %final.start694
  %arena.cur705 = call ptr @dva_arena_current()
  %str.view706 = call ptr @dva_arena_alloc(ptr %arena.cur705, i64 16)
  %str.build.len.gep707 = getelementptr inbounds { i64, ptr }, ptr %str.view706, i32 0, i32 0
  store i64 %view.len703, ptr %str.build.len.gep707, align 8
  %str.build.data.gep708 = getelementptr inbounds { i64, ptr }, ptr %str.view706, i32 0, i32 1
  store ptr %view.data704, ptr %str.build.data.gep708, align 8
  %eq.lhs.len709 = getelementptr inbounds { i64, ptr }, ptr %str.view706, i32 0, i32 0
  %eq.lhs.len710 = load i64, ptr %eq.lhs.len709, align 8
  %eq.lhs.len711 = and i64 %eq.lhs.len710, 281474976710655
  %str.tag712 = lshr i64 %eq.lhs.len710, 48
  %str.immortal713 = icmp eq i64 %str.tag712, 0
  br i1 %str.immortal713, label %str_ok715, label %str_gen_check714

str_stale684:                                     ; preds = %str_gen_check682
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok683

str_gen_check714:                                 ; preds = %str_ok683
  %arena.cur717 = call ptr @dva_arena_current()
  %tag.valid718 = call i1 @dva_arena_validate_tag(ptr %arena.cur717, i64 %str.tag712)
  br i1 %tag.valid718, label %str_ok715, label %str_stale716

str_ok715:                                        ; preds = %str_stale716, %str_gen_check714, %str_ok683
  %eq.rhs.len719 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len720 = and i64 %eq.rhs.len719, 281474976710655
  %str.tag721 = lshr i64 %eq.rhs.len719, 48
  %str.immortal722 = icmp eq i64 %str.tag721, 0
  br i1 %str.immortal722, label %str_ok724, label %str_gen_check723

str_stale716:                                     ; preds = %str_gen_check714
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok715

str_gen_check723:                                 ; preds = %str_ok715
  %arena.cur726 = call ptr @dva_arena_current()
  %tag.valid727 = call i1 @dva_arena_validate_tag(ptr %arena.cur726, i64 %str.tag721)
  br i1 %tag.valid727, label %str_ok724, label %str_stale725

str_ok724:                                        ; preds = %str_stale725, %str_gen_check723, %str_ok715
  %eq.len728 = icmp eq i64 %eq.lhs.len711, %eq.rhs.len720
  br i1 %eq.len728, label %str.eq.then729, label %str.eq.else730

str_stale725:                                     ; preds = %str_gen_check723
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok724

str.eq.then729:                                   ; preds = %str_ok724
  %eq.lhs.data732 = getelementptr inbounds { i64, ptr }, ptr %str.view706, i32 0, i32 1
  %eq.lhs.data733 = load ptr, ptr %eq.lhs.data732, align 8
  %eq.rhs.data734 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp735 = call i32 @memcmp(ptr %eq.lhs.data733, ptr %eq.rhs.data734, i64 %eq.lhs.len711)
  %eq.cmp.zero736 = icmp eq i32 %eq.memcmp735, 0
  br label %str.eq.merge731

str.eq.else730:                                   ; preds = %str_ok724
  br label %str.eq.merge731

str.eq.merge731:                                  ; preds = %str.eq.else730, %str.eq.then729
  %str.eq.result737 = phi i1 [ %eq.cmp.zero736, %str.eq.then729 ], [ false, %str.eq.else730 ]
  br label %and.21.exit
}

define i1 @"layout::is_32bit_target"() #1 {
entry:
  %var.load = load ptr, ptr @"var.layout::target_triple", align 8
  %call.res = call i1 @"layout::is_32bit_triple"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"layout::align_up"(i64 %0, i64 %1) #1 {
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

div.not_zero:                                     ; preds = %div.zero_abort, %choice.else
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load4, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.else
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %subtmp, %var.load4
  %var.load5 = load i64, ptr %var.align, align 8
  %multmp = mul i64 %divtmp, %var.load5
  br label %choice.exit

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define ptr @"layout::compute_prim_layout"(ptr %0) #1 {
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

declare ptr @"tast::layout_scalar"(i64, i64) #1

declare ptr @"tast::layout_void"() #1

declare ptr @"tast::layout_aggregate"(i64, i64) #1

define i1 @"layout::is_niche_utype"(ptr %0, ptr %1) #1 {
entry:
  %var.r = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next11, %a.after, %choice.exit4
  %choice.res22 = phi i1 [ %choice.res, %choice.exit4 ], [ %cmptmp, %a.after ], [ false, %choice.next11 ]
  ret i1 %choice.res22

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 11
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id13 = load i64, ptr %tag.gep12, align 8
  %tag.match14 = icmp eq i64 %tag.id13, 3
  br i1 %tag.match14, label %choice.case10, label %choice.next11

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

choice.case10:                                    ; preds = %choice.next
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  store ptr %payload.ptr16, ptr %var._17, align 8
  store ptr %payload.ptr16, ptr %var.r, align 8
  %var.load18 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next11:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case10
  %arena.cur = call ptr @dva_arena_current()
  %a.create19 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur20 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create19, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create19, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case10
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query21 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query21, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #1

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #1 {
entry:
  %var._270 = alloca ptr, align 8
  %var.e_align = alloca i64, align 8
  %var.elay = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._217 = alloca ptr, align 8
  %var.has_n = alloca i1, align 1
  %var.has_p = alloca i1, align 1
  %var.r143 = alloca ptr, align 8
  %var._142 = alloca ptr, align 8
  %var.fin_size = alloca i64, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._82 = alloca ptr, align 8
  %var._79 = alloca ptr, align 8
  %var._45 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
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

choice.exit14:                                    ; preds = %choice.next264, %choice.case263, %choice.exit241, %choice.case210, %choice.exit156, %choice.exit128, %choice.case17, %choice.case
  %choice.res286 = phi ptr [ %call.res16, %choice.case ], [ %rec.alloc, %choice.case17 ], [ %call.res134, %choice.exit128 ], [ %choice.res209, %choice.exit156 ], [ %call.res221, %choice.case210 ], [ %rec.alloc259, %choice.exit241 ], [ %rec.alloc279, %choice.case263 ], [ %call.res285, %choice.next264 ]
  ret ptr %choice.res286

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
  store i64 6, ptr %tag.gep27, align 8
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
  %tag.gep137 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id138 = load i64, ptr %tag.gep137, align 8
  %tag.match139 = icmp eq i64 %tag.id138, 4
  br i1 %tag.match139, label %choice.case135, label %choice.next136

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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query44 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.22, align 8
  %cycle.prev.u = load i64, ptr %var._39, align 8
  br label %loop.header.22

loop.header.22:                                   ; preds = %loop.latch.22, %a.after
  %counter.load = load i64, ptr %loop.idx.22, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query44
  br i1 %loop.cond, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._45, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load46 = load ptr, ptr %var.r, align 8
  %a.load47 = load ptr, ptr %var.r, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit110
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  store i64 %cycle.prev.u, ptr %var._39, align 8
  %var.load120 = load i64, ptr %"var.cur_off'", align 8
  %var.load121 = load i64, ptr %"var.max_align'", align 8
  %call.res122 = call i64 @"layout::align_up"(i64 %var.load120, i64 %var.load121)
  store i64 %call.res122, ptr %var.total_size, align 8
  %var.load123 = load i64, ptr %var.total_size, align 8
  %var.load124 = load i64, ptr %var.min_rec_sz, align 8
  %cmptmp125 = icmp slt i64 %var.load123, %var.load124
  br i1 %cmptmp125, label %choice.then126, label %choice.else127

a.create49:                                       ; preds = %loop.body.22
  %arena.cur51 = call ptr @dva_arena_current()
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = call ptr @dva_arena_current()
  %a.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 128)
  %a.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 0
  store i64 0, ptr %a.len.gep55, align 8
  %a.data.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 1
  store ptr %a.buf54, ptr %a.data.gep56, align 8
  %a.cap.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 2
  store i64 16, ptr %a.cap.gep57, align 8
  store ptr %a.create52, ptr %var.r, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %loop.body.22
  %a.load258 = load ptr, ptr %var.r, align 8
  %var.load59 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load258, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after50
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.rd.len60 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load59, 0
  %a.rd.lt = icmp slt i64 %var.load59, %a.rd.len60
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 1
  %a.rd.data61 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data61, i64 %var.load59
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after50
  %arena.cur62 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.13.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.14.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 97, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 22, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur63 = call ptr @dva_arena_current()
  %err.alloc64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 56)
  %err.code.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 0
  store i64 4011, ptr %err.code.gep65, align 8
  %err.msg.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 1
  store ptr @str.15.struct, ptr %err.msg.gep66, align 8
  %err.file.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 2
  store ptr @str.14.struct, ptr %err.file.gep67, align 8
  %err.line.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 3
  store i64 97, ptr %err.line.gep68, align 8
  %err.col.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 4
  store i64 22, ptr %err.col.gep69, align 8
  %err.ctx.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 5
  %err.ctx0.gep71 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 0
  store i64 %var.load59, ptr %err.ctx0.gep71, align 8
  %err.ctx1.gep72 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 1
  store i64 %a.rd.len60, ptr %err.ctx1.gep72, align 8
  %err.p2i73 = ptrtoint ptr %err.alloc64 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i73, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag74 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag74, label %choice.then75, label %choice.else76

choice.then75:                                    ; preds = %a.rd.done
  %ram.pay78 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay78 to ptr
  store ptr %pay.ptr, ptr %var._79, align 8
  br label %choice.exit77

choice.else76:                                    ; preds = %a.rd.done
  %ram.pay80 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr81 = inttoptr i64 %ram.pay80 to ptr
  store ptr %pay.ptr81, ptr %var._82, align 8
  %arena.cur83 = call ptr @dva_arena_current()
  %enum.alloc84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %tag.gep85 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc84, i32 0, i32 0
  store i64 9, ptr %tag.gep85, align 8
  %pay.gep86 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc84, i32 0, i32 1
  store ptr null, ptr %pay.gep86, align 8
  %arena.cur87 = call ptr @dva_arena_current()
  %rec.alloc88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld89 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc88, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc88, i32 0, i32 1
  store ptr %enum.alloc84, ptr %rec.fld90, align 8
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.else76, %choice.then75
  %choice.res91 = phi ptr [ %pay.ptr, %choice.then75 ], [ %rec.alloc88, %choice.else76 ]
  store ptr %choice.res91, ptr %var.f, align 8
  %var.load92 = load ptr, ptr %var.ctx, align 8
  %var.load93 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load93, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res94 = call ptr @"layout::compute_layout"(ptr %var.load92, ptr %fld.load)
  store ptr %call.res94, ptr %var.flay, align 8
  %var.load95 = load ptr, ptr %var.flay, align 8
  %fld.gep96 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load95, i32 0, i32 1
  %fld.load97 = load i64, ptr %fld.gep96, align 8
  %cmptmp = icmp slt i64 %fld.load97, 1
  br i1 %cmptmp, label %choice.then98, label %choice.else99

choice.then98:                                    ; preds = %choice.exit77
  br label %choice.exit100

choice.else99:                                    ; preds = %choice.exit77
  %var.load101 = load ptr, ptr %var.flay, align 8
  %fld.gep102 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load101, i32 0, i32 1
  %fld.load103 = load i64, ptr %fld.gep102, align 8
  br label %choice.exit100

choice.exit100:                                   ; preds = %choice.else99, %choice.then98
  %choice.res104 = phi i64 [ 1, %choice.then98 ], [ %fld.load103, %choice.else99 ]
  store i64 %choice.res104, ptr %var.f_align, align 8
  %var.load105 = load i64, ptr %"var.max_align'", align 8
  %var.load106 = load i64, ptr %var.f_align, align 8
  %cmptmp107 = icmp slt i64 %var.load105, %var.load106
  br i1 %cmptmp107, label %choice.then108, label %choice.else109

choice.then108:                                   ; preds = %choice.exit100
  %var.load111 = load i64, ptr %var.f_align, align 8
  br label %choice.exit110

choice.else109:                                   ; preds = %choice.exit100
  %var.load112 = load i64, ptr %"var.max_align'", align 8
  br label %choice.exit110

choice.exit110:                                   ; preds = %choice.else109, %choice.then108
  %choice.res113 = phi i64 [ %var.load111, %choice.then108 ], [ %var.load112, %choice.else109 ]
  store i64 %choice.res113, ptr %"var.max_align'", align 8
  %var.load114 = load i64, ptr %"var.cur_off'", align 8
  %var.load115 = load i64, ptr %var.f_align, align 8
  %call.res116 = call i64 @"layout::align_up"(i64 %var.load114, i64 %var.load115)
  %var.load117 = load ptr, ptr %var.flay, align 8
  %fld.gep118 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load117, i32 0, i32 0
  %fld.load119 = load i64, ptr %fld.gep118, align 8
  %addtmp = add i64 %call.res116, %fld.load119
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.22

choice.then126:                                   ; preds = %loop.exit.22
  %var.load129 = load i64, ptr %var.min_rec_sz, align 8
  br label %choice.exit128

choice.else127:                                   ; preds = %loop.exit.22
  %var.load130 = load i64, ptr %var.total_size, align 8
  br label %choice.exit128

choice.exit128:                                   ; preds = %choice.else127, %choice.then126
  %choice.res131 = phi i64 [ %var.load129, %choice.then126 ], [ %var.load130, %choice.else127 ]
  store i64 %choice.res131, ptr %var.fin_size, align 8
  %var.load132 = load i64, ptr %var.fin_size, align 8
  %var.load133 = load i64, ptr %"var.max_align'", align 8
  %call.res134 = call ptr @"tast::layout_aggregate"(i64 %var.load132, i64 %var.load133)
  br label %choice.exit14

choice.case135:                                   ; preds = %choice.next33
  %pay.gep140 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr141 = load ptr, ptr %pay.gep140, align 8
  store ptr %payload.ptr141, ptr %var._142, align 8
  store ptr %payload.ptr141, ptr %var.r143, align 8
  %var.load144 = load ptr, ptr %var.r143, align 8
  %fld.gep145 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load144, i32 0, i32 0
  %fld.gep146 = getelementptr inbounds { i1, ptr }, ptr %fld.gep145, i32 0, i32 0
  %fld.load147 = load i1, ptr %fld.gep146, align 1
  store i1 %fld.load147, ptr %var.has_p, align 1
  %var.load148 = load ptr, ptr %var.r143, align 8
  %fld.gep149 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load148, i32 0, i32 1
  %fld.gep150 = getelementptr inbounds { i1, ptr }, ptr %fld.gep149, i32 0, i32 0
  %fld.load151 = load i1, ptr %fld.gep150, align 1
  store i1 %fld.load151, ptr %var.has_n, align 1
  %var.load152 = load i1, ptr %var.has_p, align 1
  br i1 %var.load152, label %and.23.then, label %and.23.else

choice.next136:                                   ; preds = %choice.next33
  %tag.gep212 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id213 = load i64, ptr %tag.gep212, align 8
  %tag.match214 = icmp eq i64 %tag.id213, 5
  br i1 %tag.match214, label %choice.case210, label %choice.next211

and.23.then:                                      ; preds = %choice.case135
  %var.load153 = load i1, ptr %var.has_n, align 1
  %nottmp = xor i1 %var.load153, true
  br label %and.23.exit

and.23.else:                                      ; preds = %choice.case135
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp, %and.23.then ], [ %var.load152, %and.23.else ]
  br i1 %and.23.phi, label %choice.then154, label %choice.else155

choice.then154:                                   ; preds = %and.23.exit
  %var.load157 = load ptr, ptr %var.ctx, align 8
  %var.load158 = load ptr, ptr %var.r143, align 8
  %fld.gep159 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load158, i32 0, i32 0
  %fld.gep160 = getelementptr inbounds { i1, ptr }, ptr %fld.gep159, i32 0, i32 1
  %fld.load161 = load ptr, ptr %fld.gep160, align 8
  %call.res162 = call i1 @"layout::is_niche_utype"(ptr %var.load157, ptr %fld.load161)
  br i1 %call.res162, label %choice.then163, label %choice.else164

choice.else155:                                   ; preds = %and.23.exit
  %var.load174 = load i1, ptr %var.has_p, align 1
  %nottmp175 = xor i1 %var.load174, true
  br i1 %nottmp175, label %and.24.then, label %and.24.else

choice.exit156:                                   ; preds = %choice.exit179, %choice.exit165
  %choice.res209 = phi ptr [ %choice.res173, %choice.exit165 ], [ %choice.res208, %choice.exit179 ]
  br label %choice.exit14

choice.then163:                                   ; preds = %choice.then154
  %var.load166 = load i64, ptr %var.ptr_sz, align 8
  %var.load167 = load i64, ptr %var.ptr_align, align 8
  %call.res168 = call ptr @"tast::layout_scalar"(i64 %var.load166, i64 %var.load167)
  br label %choice.exit165

choice.else164:                                   ; preds = %choice.then154
  %var.load169 = load i64, ptr %var.ptr_sz, align 8
  %multmp170 = mul i64 %var.load169, 2
  %var.load171 = load i64, ptr %var.ptr_align, align 8
  %call.res172 = call ptr @"tast::layout_ram"(i64 %multmp170, i64 %var.load171)
  br label %choice.exit165

choice.exit165:                                   ; preds = %choice.else164, %choice.then163
  %choice.res173 = phi ptr [ %call.res168, %choice.then163 ], [ %call.res172, %choice.else164 ]
  br label %choice.exit156

and.24.then:                                      ; preds = %choice.else155
  %var.load176 = load i1, ptr %var.has_n, align 1
  br label %and.24.exit

and.24.else:                                      ; preds = %choice.else155
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %var.load176, %and.24.then ], [ %nottmp175, %and.24.else ]
  br i1 %and.24.phi, label %choice.then177, label %choice.else178

choice.then177:                                   ; preds = %and.24.exit
  %var.load180 = load ptr, ptr %var.ctx, align 8
  %var.load181 = load ptr, ptr %var.r143, align 8
  %fld.gep182 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load181, i32 0, i32 1
  %fld.gep183 = getelementptr inbounds { i1, ptr }, ptr %fld.gep182, i32 0, i32 1
  %fld.load184 = load ptr, ptr %fld.gep183, align 8
  %call.res185 = call i1 @"layout::is_niche_utype"(ptr %var.load180, ptr %fld.load184)
  br i1 %call.res185, label %choice.then186, label %choice.else187

choice.else178:                                   ; preds = %and.24.exit
  %var.load197 = load i1, ptr %var.has_p, align 1
  br i1 %var.load197, label %or.25.then, label %or.25.else

choice.exit179:                                   ; preds = %choice.exit201, %choice.exit188
  %choice.res208 = phi ptr [ %choice.res196, %choice.exit188 ], [ %choice.res207, %choice.exit201 ]
  br label %choice.exit156

choice.then186:                                   ; preds = %choice.then177
  %var.load189 = load i64, ptr %var.ptr_sz, align 8
  %var.load190 = load i64, ptr %var.ptr_align, align 8
  %call.res191 = call ptr @"tast::layout_scalar"(i64 %var.load189, i64 %var.load190)
  br label %choice.exit188

choice.else187:                                   ; preds = %choice.then177
  %var.load192 = load i64, ptr %var.ptr_sz, align 8
  %multmp193 = mul i64 %var.load192, 2
  %var.load194 = load i64, ptr %var.ptr_align, align 8
  %call.res195 = call ptr @"tast::layout_ram"(i64 %multmp193, i64 %var.load194)
  br label %choice.exit188

choice.exit188:                                   ; preds = %choice.else187, %choice.then186
  %choice.res196 = phi ptr [ %call.res191, %choice.then186 ], [ %call.res195, %choice.else187 ]
  br label %choice.exit179

or.25.then:                                       ; preds = %choice.else178
  br label %or.25.exit

or.25.else:                                       ; preds = %choice.else178
  %var.load198 = load i1, ptr %var.has_n, align 1
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %var.load197, %or.25.then ], [ %var.load198, %or.25.else ]
  br i1 %or.25.phi, label %choice.then199, label %choice.else200

choice.then199:                                   ; preds = %or.25.exit
  %var.load202 = load i64, ptr %var.ptr_sz, align 8
  %multmp203 = mul i64 %var.load202, 2
  %var.load204 = load i64, ptr %var.ptr_align, align 8
  %call.res205 = call ptr @"tast::layout_ram"(i64 %multmp203, i64 %var.load204)
  br label %choice.exit201

choice.else200:                                   ; preds = %or.25.exit
  %call.res206 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit201

choice.exit201:                                   ; preds = %choice.else200, %choice.then199
  %choice.res207 = phi ptr [ %call.res205, %choice.then199 ], [ %call.res206, %choice.else200 ]
  br label %choice.exit179

choice.case210:                                   ; preds = %choice.next136
  %pay.gep215 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr216 = load ptr, ptr %pay.gep215, align 8
  store ptr %payload.ptr216, ptr %var._217, align 8
  %var.load218 = load i64, ptr %var.ptr_sz, align 8
  %multmp219 = mul i64 %var.load218, 2
  %var.load220 = load i64, ptr %var.ptr_align, align 8
  %call.res221 = call ptr @"tast::layout_aggregate"(i64 %multmp219, i64 %var.load220)
  br label %choice.exit14

choice.next211:                                   ; preds = %choice.next136
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id225 = load i64, ptr %tag.gep224, align 8
  %tag.match226 = icmp eq i64 %tag.id225, 6
  br i1 %tag.match226, label %choice.case222, label %choice.next223

choice.case222:                                   ; preds = %choice.next211
  %pay.gep227 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr228 = load ptr, ptr %pay.gep227, align 8
  store ptr %payload.ptr228, ptr %var._229, align 8
  store ptr %payload.ptr228, ptr %var.a, align 8
  %var.load230 = load ptr, ptr %var.ctx, align 8
  %var.load231 = load ptr, ptr %var.a, align 8
  %fld.gep232 = getelementptr inbounds { ptr, i64 }, ptr %var.load231, i32 0, i32 0
  %fld.load233 = load ptr, ptr %fld.gep232, align 8
  %call.res234 = call ptr @"layout::compute_layout"(ptr %var.load230, ptr %fld.load233)
  store ptr %call.res234, ptr %var.elay, align 8
  %var.load235 = load ptr, ptr %var.elay, align 8
  %fld.gep236 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load235, i32 0, i32 1
  %fld.load237 = load i64, ptr %fld.gep236, align 8
  %cmptmp238 = icmp slt i64 %fld.load237, 1
  br i1 %cmptmp238, label %choice.then239, label %choice.else240

choice.next223:                                   ; preds = %choice.next211
  %tag.gep265 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id266 = load i64, ptr %tag.gep265, align 8
  %tag.match267 = icmp eq i64 %tag.id266, 7
  br i1 %tag.match267, label %choice.case263, label %choice.next264

choice.then239:                                   ; preds = %choice.case222
  br label %choice.exit241

choice.else240:                                   ; preds = %choice.case222
  %var.load242 = load ptr, ptr %var.elay, align 8
  %fld.gep243 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load242, i32 0, i32 1
  %fld.load244 = load i64, ptr %fld.gep243, align 8
  br label %choice.exit241

choice.exit241:                                   ; preds = %choice.else240, %choice.then239
  %choice.res245 = phi i64 [ 1, %choice.then239 ], [ %fld.load244, %choice.else240 ]
  store i64 %choice.res245, ptr %var.e_align, align 8
  %var.load246 = load ptr, ptr %var.elay, align 8
  %fld.gep247 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load246, i32 0, i32 0
  %fld.load248 = load i64, ptr %fld.gep247, align 8
  %var.load249 = load ptr, ptr %var.a, align 8
  %fld.gep250 = getelementptr inbounds { ptr, i64 }, ptr %var.load249, i32 0, i32 1
  %fld.load251 = load i64, ptr %fld.gep250, align 8
  %multmp252 = mul i64 %fld.load248, %fld.load251
  %var.load253 = load i64, ptr %var.e_align, align 8
  %arena.cur254 = call ptr @dva_arena_current()
  %enum.alloc255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 16)
  %tag.gep256 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc255, i32 0, i32 0
  store i64 5, ptr %tag.gep256, align 8
  %pay.gep257 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc255, i32 0, i32 1
  store ptr null, ptr %pay.gep257, align 8
  %arena.cur258 = call ptr @dva_arena_current()
  %rec.alloc259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld260 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc259, i32 0, i32 0
  store i64 %multmp252, ptr %rec.fld260, align 8
  %rec.fld261 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc259, i32 0, i32 1
  store i64 %var.load253, ptr %rec.fld261, align 8
  %rec.fld262 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc259, i32 0, i32 2
  store ptr %enum.alloc255, ptr %rec.fld262, align 8
  br label %choice.exit14

choice.case263:                                   ; preds = %choice.next223
  %pay.gep268 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr269 = load ptr, ptr %pay.gep268, align 8
  store ptr %payload.ptr269, ptr %var._270, align 8
  %var.load271 = load i64, ptr %var.ptr_sz, align 8
  %multmp272 = mul i64 %var.load271, 2
  %var.load273 = load i64, ptr %var.ptr_align, align 8
  %arena.cur274 = call ptr @dva_arena_current()
  %enum.alloc275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 16)
  %tag.gep276 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc275, i32 0, i32 0
  store i64 4, ptr %tag.gep276, align 8
  %pay.gep277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc275, i32 0, i32 1
  store ptr null, ptr %pay.gep277, align 8
  %arena.cur278 = call ptr @dva_arena_current()
  %rec.alloc279 = call ptr @dva_arena_alloc(ptr %arena.cur278, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld280 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc279, i32 0, i32 0
  store i64 %multmp272, ptr %rec.fld280, align 8
  %rec.fld281 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc279, i32 0, i32 1
  store i64 %var.load273, ptr %rec.fld281, align 8
  %rec.fld282 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc279, i32 0, i32 2
  store ptr %enum.alloc275, ptr %rec.fld282, align 8
  br label %choice.exit14

choice.next264:                                   ; preds = %choice.next223
  %var.load283 = load i64, ptr %var.ptr_sz, align 8
  %var.load284 = load i64, ptr %var.ptr_align, align 8
  %call.res285 = call ptr @"tast::layout_scalar"(i64 %var.load283, i64 %var.load284)
  br label %choice.exit14
}

declare ptr @"tast::layout_ram"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
