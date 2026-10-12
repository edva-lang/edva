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
@str.3 = internal unnamed_addr constant [5 x i8] c"i386\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@str.4 = internal unnamed_addr constant [5 x i8] c"i686\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.4 }
@str.5 = internal unnamed_addr constant [8 x i8] c"riscv32\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"armv7\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [4 x i8] c"arm\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
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
@str.8 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.8 }
@str.9 = internal unnamed_addr constant [11 x i8] c"layout.dva\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.9 }
@str.10 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.10 }
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
  %cmptmp = icmp sge i64 %str.len.query2, 5
  br i1 %cmptmp, label %and.0.then, label %and.0.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.0.then:                                       ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.triple, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.0.else:                                       ; preds = %str_ok
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %str.eq.merge
  %and.0.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.0.else ]
  br i1 %and.0.phi, label %choice.then, label %choice.else

str_gen_check8:                                   ; preds = %and.0.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.0.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len5, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len5
  %final.start = select i1 %start.gt.len, i64 %s.read.len5, i64 %c.start.0
  %rel.end = add i64 %s.read.len5, 5
  %norm.end = select i1 false, i64 %rel.end, i64 5
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len5
  %final.end = select i1 %end.gt.len, i64 %s.read.len5, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %arena.cur14 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len15 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len16 = and i64 %eq.lhs.len15, 281474976710655
  %str.tag17 = lshr i64 %eq.lhs.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str_gen_check19:                                  ; preds = %str_ok9
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %str_ok9
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len24 = and i64 %eq.rhs.len, 281474976710655
  %str.tag25 = lshr i64 %eq.rhs.len, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale21:                                      ; preds = %str_gen_check19
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

str_gen_check27:                                  ; preds = %str_ok20
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok20
  %eq.len = icmp eq i64 %eq.lhs.len16, %eq.rhs.len24
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str.eq.then:                                      ; preds = %str_ok28
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data32 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data32, ptr %eq.rhs.data, i64 %eq.lhs.len16)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok28
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.0.exit

choice.then:                                      ; preds = %and.0.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.0.exit
  %var.load33 = load ptr, ptr %var.triple, align 8
  %str.len.query34 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %str.len.query35 = load i64, ptr %str.len.query34, align 8
  %str.len.query36 = and i64 %str.len.query35, 281474976710655
  %str.tag37 = lshr i64 %str.len.query35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

choice.exit:                                      ; preds = %or.10.exit, %choice.then
  %choice.res = phi i1 [ false, %choice.then ], [ %or.10.phi, %or.10.exit ]
  ret i1 %choice.res

str_gen_check39:                                  ; preds = %choice.else
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %choice.else
  %cmptmp44 = icmp sge i64 %str.len.query36, 6
  br i1 %cmptmp44, label %and.1.then, label %and.1.else

str_stale41:                                      ; preds = %str_gen_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

and.1.then:                                       ; preds = %str_ok40
  %var.load45 = load ptr, ptr %var.triple, align 8
  %s.read.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 0
  %s.read.len47 = load i64, ptr %s.read.len46, align 8
  %s.read.len48 = and i64 %s.read.len47, 281474976710655
  %str.tag49 = lshr i64 %s.read.len47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

and.1.else:                                       ; preds = %str_ok40
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %str.eq.merge100
  %and.1.phi = phi i1 [ %str.eq.result106, %str.eq.merge100 ], [ %cmptmp44, %and.1.else ]
  br i1 %and.1.phi, label %or.2.then, label %or.2.else

str_gen_check51:                                  ; preds = %and.1.then
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag49)
  br i1 %tag.valid55, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %and.1.then
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load45, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %rel.start58 = add i64 %s.read.len48, 0
  %norm.start59 = select i1 false, i64 %rel.start58, i64 0
  %start.lt.060 = icmp slt i64 %norm.start59, 0
  %c.start.061 = select i1 %start.lt.060, i64 0, i64 %norm.start59
  %start.gt.len62 = icmp sgt i64 %c.start.061, %s.read.len48
  %final.start63 = select i1 %start.gt.len62, i64 %s.read.len48, i64 %c.start.061
  %rel.end64 = add i64 %s.read.len48, 6
  %norm.end65 = select i1 false, i64 %rel.end64, i64 6
  %end.lt.066 = icmp slt i64 %norm.end65, 0
  %c.end.067 = select i1 %end.lt.066, i64 0, i64 %norm.end65
  %end.gt.len68 = icmp sgt i64 %c.end.067, %s.read.len48
  %final.end69 = select i1 %end.gt.len68, i64 %s.read.len48, i64 %c.end.067
  %view.empty70 = icmp sle i64 %final.end69, %final.start63
  %view.len.sub71 = sub i64 %final.end69, %final.start63
  %view.len72 = select i1 %view.empty70, i64 0, i64 %view.len.sub71
  %view.data73 = getelementptr i8, ptr %s.read.data57, i64 %final.start63
  %arena.cur74 = call ptr @dva_arena_current()
  %str.view75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  %str.build.len.gep76 = getelementptr inbounds { i64, ptr }, ptr %str.view75, i32 0, i32 0
  store i64 %view.len72, ptr %str.build.len.gep76, align 8
  %str.build.data.gep77 = getelementptr inbounds { i64, ptr }, ptr %str.view75, i32 0, i32 1
  store ptr %view.data73, ptr %str.build.data.gep77, align 8
  %eq.lhs.len78 = getelementptr inbounds { i64, ptr }, ptr %str.view75, i32 0, i32 0
  %eq.lhs.len79 = load i64, ptr %eq.lhs.len78, align 8
  %eq.lhs.len80 = and i64 %eq.lhs.len79, 281474976710655
  %str.tag81 = lshr i64 %eq.lhs.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

str_stale53:                                      ; preds = %str_gen_check51
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

str_gen_check83:                                  ; preds = %str_ok52
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %str_ok52
  %eq.rhs.len88 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len89 = and i64 %eq.rhs.len88, 281474976710655
  %str.tag90 = lshr i64 %eq.rhs.len88, 48
  %str.immortal91 = icmp eq i64 %str.tag90, 0
  br i1 %str.immortal91, label %str_ok93, label %str_gen_check92

str_stale85:                                      ; preds = %str_gen_check83
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check92:                                  ; preds = %str_ok84
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %str.tag90)
  br i1 %tag.valid96, label %str_ok93, label %str_stale94

str_ok93:                                         ; preds = %str_stale94, %str_gen_check92, %str_ok84
  %eq.len97 = icmp eq i64 %eq.lhs.len80, %eq.rhs.len89
  br i1 %eq.len97, label %str.eq.then98, label %str.eq.else99

str_stale94:                                      ; preds = %str_gen_check92
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok93

str.eq.then98:                                    ; preds = %str_ok93
  %eq.lhs.data101 = getelementptr inbounds { i64, ptr }, ptr %str.view75, i32 0, i32 1
  %eq.lhs.data102 = load ptr, ptr %eq.lhs.data101, align 8
  %eq.rhs.data103 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp104 = call i32 @memcmp(ptr %eq.lhs.data102, ptr %eq.rhs.data103, i64 %eq.lhs.len80)
  %eq.cmp.zero105 = icmp eq i32 %eq.memcmp104, 0
  br label %str.eq.merge100

str.eq.else99:                                    ; preds = %str_ok93
  br label %str.eq.merge100

str.eq.merge100:                                  ; preds = %str.eq.else99, %str.eq.then98
  %str.eq.result106 = phi i1 [ %eq.cmp.zero105, %str.eq.then98 ], [ false, %str.eq.else99 ]
  br label %and.1.exit

or.2.then:                                        ; preds = %and.1.exit
  br label %or.2.exit

or.2.else:                                        ; preds = %and.1.exit
  %var.load107 = load ptr, ptr %var.triple, align 8
  %str.len.query108 = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 0
  %str.len.query109 = load i64, ptr %str.len.query108, align 8
  %str.len.query110 = and i64 %str.len.query109, 281474976710655
  %str.tag111 = lshr i64 %str.len.query109, 48
  %str.immortal112 = icmp eq i64 %str.tag111, 0
  br i1 %str.immortal112, label %str_ok114, label %str_gen_check113

or.2.exit:                                        ; preds = %and.3.exit, %or.2.then
  %or.2.phi = phi i1 [ %and.1.phi, %or.2.then ], [ %and.3.phi, %and.3.exit ]
  br i1 %or.2.phi, label %or.4.then, label %or.4.else

str_gen_check113:                                 ; preds = %or.2.else
  %arena.cur116 = call ptr @dva_arena_current()
  %tag.valid117 = call i1 @dva_arena_validate_tag(ptr %arena.cur116, i64 %str.tag111)
  br i1 %tag.valid117, label %str_ok114, label %str_stale115

str_ok114:                                        ; preds = %str_stale115, %str_gen_check113, %or.2.else
  %cmptmp118 = icmp sge i64 %str.len.query110, 4
  br i1 %cmptmp118, label %and.3.then, label %and.3.else

str_stale115:                                     ; preds = %str_gen_check113
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok114

and.3.then:                                       ; preds = %str_ok114
  %var.load119 = load ptr, ptr %var.triple, align 8
  %s.read.len120 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 0
  %s.read.len121 = load i64, ptr %s.read.len120, align 8
  %s.read.len122 = and i64 %s.read.len121, 281474976710655
  %str.tag123 = lshr i64 %s.read.len121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

and.3.else:                                       ; preds = %str_ok114
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %str.eq.merge174
  %and.3.phi = phi i1 [ %str.eq.result180, %str.eq.merge174 ], [ %cmptmp118, %and.3.else ]
  br label %or.2.exit

str_gen_check125:                                 ; preds = %and.3.then
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %and.3.then
  %s.read.data130 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 1
  %s.read.data131 = load ptr, ptr %s.read.data130, align 8
  %rel.start132 = add i64 %s.read.len122, 0
  %norm.start133 = select i1 false, i64 %rel.start132, i64 0
  %start.lt.0134 = icmp slt i64 %norm.start133, 0
  %c.start.0135 = select i1 %start.lt.0134, i64 0, i64 %norm.start133
  %start.gt.len136 = icmp sgt i64 %c.start.0135, %s.read.len122
  %final.start137 = select i1 %start.gt.len136, i64 %s.read.len122, i64 %c.start.0135
  %rel.end138 = add i64 %s.read.len122, 4
  %norm.end139 = select i1 false, i64 %rel.end138, i64 4
  %end.lt.0140 = icmp slt i64 %norm.end139, 0
  %c.end.0141 = select i1 %end.lt.0140, i64 0, i64 %norm.end139
  %end.gt.len142 = icmp sgt i64 %c.end.0141, %s.read.len122
  %final.end143 = select i1 %end.gt.len142, i64 %s.read.len122, i64 %c.end.0141
  %view.empty144 = icmp sle i64 %final.end143, %final.start137
  %view.len.sub145 = sub i64 %final.end143, %final.start137
  %view.len146 = select i1 %view.empty144, i64 0, i64 %view.len.sub145
  %view.data147 = getelementptr i8, ptr %s.read.data131, i64 %final.start137
  %arena.cur148 = call ptr @dva_arena_current()
  %str.view149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 16)
  %str.build.len.gep150 = getelementptr inbounds { i64, ptr }, ptr %str.view149, i32 0, i32 0
  store i64 %view.len146, ptr %str.build.len.gep150, align 8
  %str.build.data.gep151 = getelementptr inbounds { i64, ptr }, ptr %str.view149, i32 0, i32 1
  store ptr %view.data147, ptr %str.build.data.gep151, align 8
  %eq.lhs.len152 = getelementptr inbounds { i64, ptr }, ptr %str.view149, i32 0, i32 0
  %eq.lhs.len153 = load i64, ptr %eq.lhs.len152, align 8
  %eq.lhs.len154 = and i64 %eq.lhs.len153, 281474976710655
  %str.tag155 = lshr i64 %eq.lhs.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

str_stale127:                                     ; preds = %str_gen_check125
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check157:                                 ; preds = %str_ok126
  %arena.cur160 = call ptr @dva_arena_current()
  %tag.valid161 = call i1 @dva_arena_validate_tag(ptr %arena.cur160, i64 %str.tag155)
  br i1 %tag.valid161, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %str_ok126
  %eq.rhs.len162 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len163 = and i64 %eq.rhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.rhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale159:                                     ; preds = %str_gen_check157
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

str_gen_check166:                                 ; preds = %str_ok158
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok158
  %eq.len171 = icmp eq i64 %eq.lhs.len154, %eq.rhs.len163
  br i1 %eq.len171, label %str.eq.then172, label %str.eq.else173

str_stale168:                                     ; preds = %str_gen_check166
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str.eq.then172:                                   ; preds = %str_ok167
  %eq.lhs.data175 = getelementptr inbounds { i64, ptr }, ptr %str.view149, i32 0, i32 1
  %eq.lhs.data176 = load ptr, ptr %eq.lhs.data175, align 8
  %eq.rhs.data177 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp178 = call i32 @memcmp(ptr %eq.lhs.data176, ptr %eq.rhs.data177, i64 %eq.lhs.len154)
  %eq.cmp.zero179 = icmp eq i32 %eq.memcmp178, 0
  br label %str.eq.merge174

str.eq.else173:                                   ; preds = %str_ok167
  br label %str.eq.merge174

str.eq.merge174:                                  ; preds = %str.eq.else173, %str.eq.then172
  %str.eq.result180 = phi i1 [ %eq.cmp.zero179, %str.eq.then172 ], [ false, %str.eq.else173 ]
  br label %and.3.exit

or.4.then:                                        ; preds = %or.2.exit
  br label %or.4.exit

or.4.else:                                        ; preds = %or.2.exit
  %var.load181 = load ptr, ptr %var.triple, align 8
  %str.len.query182 = getelementptr inbounds { i64, ptr }, ptr %var.load181, i32 0, i32 0
  %str.len.query183 = load i64, ptr %str.len.query182, align 8
  %str.len.query184 = and i64 %str.len.query183, 281474976710655
  %str.tag185 = lshr i64 %str.len.query183, 48
  %str.immortal186 = icmp eq i64 %str.tag185, 0
  br i1 %str.immortal186, label %str_ok188, label %str_gen_check187

or.4.exit:                                        ; preds = %and.5.exit, %or.4.then
  %or.4.phi = phi i1 [ %or.2.phi, %or.4.then ], [ %and.5.phi, %and.5.exit ]
  br i1 %or.4.phi, label %or.6.then, label %or.6.else

str_gen_check187:                                 ; preds = %or.4.else
  %arena.cur190 = call ptr @dva_arena_current()
  %tag.valid191 = call i1 @dva_arena_validate_tag(ptr %arena.cur190, i64 %str.tag185)
  br i1 %tag.valid191, label %str_ok188, label %str_stale189

str_ok188:                                        ; preds = %str_stale189, %str_gen_check187, %or.4.else
  %cmptmp192 = icmp sge i64 %str.len.query184, 4
  br i1 %cmptmp192, label %and.5.then, label %and.5.else

str_stale189:                                     ; preds = %str_gen_check187
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok188

and.5.then:                                       ; preds = %str_ok188
  %var.load193 = load ptr, ptr %var.triple, align 8
  %s.read.len194 = getelementptr inbounds { i64, ptr }, ptr %var.load193, i32 0, i32 0
  %s.read.len195 = load i64, ptr %s.read.len194, align 8
  %s.read.len196 = and i64 %s.read.len195, 281474976710655
  %str.tag197 = lshr i64 %s.read.len195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

and.5.else:                                       ; preds = %str_ok188
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %str.eq.merge248
  %and.5.phi = phi i1 [ %str.eq.result254, %str.eq.merge248 ], [ %cmptmp192, %and.5.else ]
  br label %or.4.exit

str_gen_check199:                                 ; preds = %and.5.then
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %and.5.then
  %s.read.data204 = getelementptr inbounds { i64, ptr }, ptr %var.load193, i32 0, i32 1
  %s.read.data205 = load ptr, ptr %s.read.data204, align 8
  %rel.start206 = add i64 %s.read.len196, 0
  %norm.start207 = select i1 false, i64 %rel.start206, i64 0
  %start.lt.0208 = icmp slt i64 %norm.start207, 0
  %c.start.0209 = select i1 %start.lt.0208, i64 0, i64 %norm.start207
  %start.gt.len210 = icmp sgt i64 %c.start.0209, %s.read.len196
  %final.start211 = select i1 %start.gt.len210, i64 %s.read.len196, i64 %c.start.0209
  %rel.end212 = add i64 %s.read.len196, 4
  %norm.end213 = select i1 false, i64 %rel.end212, i64 4
  %end.lt.0214 = icmp slt i64 %norm.end213, 0
  %c.end.0215 = select i1 %end.lt.0214, i64 0, i64 %norm.end213
  %end.gt.len216 = icmp sgt i64 %c.end.0215, %s.read.len196
  %final.end217 = select i1 %end.gt.len216, i64 %s.read.len196, i64 %c.end.0215
  %view.empty218 = icmp sle i64 %final.end217, %final.start211
  %view.len.sub219 = sub i64 %final.end217, %final.start211
  %view.len220 = select i1 %view.empty218, i64 0, i64 %view.len.sub219
  %view.data221 = getelementptr i8, ptr %s.read.data205, i64 %final.start211
  %arena.cur222 = call ptr @dva_arena_current()
  %str.view223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 16)
  %str.build.len.gep224 = getelementptr inbounds { i64, ptr }, ptr %str.view223, i32 0, i32 0
  store i64 %view.len220, ptr %str.build.len.gep224, align 8
  %str.build.data.gep225 = getelementptr inbounds { i64, ptr }, ptr %str.view223, i32 0, i32 1
  store ptr %view.data221, ptr %str.build.data.gep225, align 8
  %eq.lhs.len226 = getelementptr inbounds { i64, ptr }, ptr %str.view223, i32 0, i32 0
  %eq.lhs.len227 = load i64, ptr %eq.lhs.len226, align 8
  %eq.lhs.len228 = and i64 %eq.lhs.len227, 281474976710655
  %str.tag229 = lshr i64 %eq.lhs.len227, 48
  %str.immortal230 = icmp eq i64 %str.tag229, 0
  br i1 %str.immortal230, label %str_ok232, label %str_gen_check231

str_stale201:                                     ; preds = %str_gen_check199
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok200

str_gen_check231:                                 ; preds = %str_ok200
  %arena.cur234 = call ptr @dva_arena_current()
  %tag.valid235 = call i1 @dva_arena_validate_tag(ptr %arena.cur234, i64 %str.tag229)
  br i1 %tag.valid235, label %str_ok232, label %str_stale233

str_ok232:                                        ; preds = %str_stale233, %str_gen_check231, %str_ok200
  %eq.rhs.len236 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len237 = and i64 %eq.rhs.len236, 281474976710655
  %str.tag238 = lshr i64 %eq.rhs.len236, 48
  %str.immortal239 = icmp eq i64 %str.tag238, 0
  br i1 %str.immortal239, label %str_ok241, label %str_gen_check240

str_stale233:                                     ; preds = %str_gen_check231
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok232

str_gen_check240:                                 ; preds = %str_ok232
  %arena.cur243 = call ptr @dva_arena_current()
  %tag.valid244 = call i1 @dva_arena_validate_tag(ptr %arena.cur243, i64 %str.tag238)
  br i1 %tag.valid244, label %str_ok241, label %str_stale242

str_ok241:                                        ; preds = %str_stale242, %str_gen_check240, %str_ok232
  %eq.len245 = icmp eq i64 %eq.lhs.len228, %eq.rhs.len237
  br i1 %eq.len245, label %str.eq.then246, label %str.eq.else247

str_stale242:                                     ; preds = %str_gen_check240
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok241

str.eq.then246:                                   ; preds = %str_ok241
  %eq.lhs.data249 = getelementptr inbounds { i64, ptr }, ptr %str.view223, i32 0, i32 1
  %eq.lhs.data250 = load ptr, ptr %eq.lhs.data249, align 8
  %eq.rhs.data251 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp252 = call i32 @memcmp(ptr %eq.lhs.data250, ptr %eq.rhs.data251, i64 %eq.lhs.len228)
  %eq.cmp.zero253 = icmp eq i32 %eq.memcmp252, 0
  br label %str.eq.merge248

str.eq.else247:                                   ; preds = %str_ok241
  br label %str.eq.merge248

str.eq.merge248:                                  ; preds = %str.eq.else247, %str.eq.then246
  %str.eq.result254 = phi i1 [ %eq.cmp.zero253, %str.eq.then246 ], [ false, %str.eq.else247 ]
  br label %and.5.exit

or.6.then:                                        ; preds = %or.4.exit
  br label %or.6.exit

or.6.else:                                        ; preds = %or.4.exit
  %var.load255 = load ptr, ptr %var.triple, align 8
  %str.len.query256 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 0
  %str.len.query257 = load i64, ptr %str.len.query256, align 8
  %str.len.query258 = and i64 %str.len.query257, 281474976710655
  %str.tag259 = lshr i64 %str.len.query257, 48
  %str.immortal260 = icmp eq i64 %str.tag259, 0
  br i1 %str.immortal260, label %str_ok262, label %str_gen_check261

or.6.exit:                                        ; preds = %and.7.exit, %or.6.then
  %or.6.phi = phi i1 [ %or.4.phi, %or.6.then ], [ %and.7.phi, %and.7.exit ]
  br i1 %or.6.phi, label %or.8.then, label %or.8.else

str_gen_check261:                                 ; preds = %or.6.else
  %arena.cur264 = call ptr @dva_arena_current()
  %tag.valid265 = call i1 @dva_arena_validate_tag(ptr %arena.cur264, i64 %str.tag259)
  br i1 %tag.valid265, label %str_ok262, label %str_stale263

str_ok262:                                        ; preds = %str_stale263, %str_gen_check261, %or.6.else
  %cmptmp266 = icmp sge i64 %str.len.query258, 7
  br i1 %cmptmp266, label %and.7.then, label %and.7.else

str_stale263:                                     ; preds = %str_gen_check261
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok262

and.7.then:                                       ; preds = %str_ok262
  %var.load267 = load ptr, ptr %var.triple, align 8
  %s.read.len268 = getelementptr inbounds { i64, ptr }, ptr %var.load267, i32 0, i32 0
  %s.read.len269 = load i64, ptr %s.read.len268, align 8
  %s.read.len270 = and i64 %s.read.len269, 281474976710655
  %str.tag271 = lshr i64 %s.read.len269, 48
  %str.immortal272 = icmp eq i64 %str.tag271, 0
  br i1 %str.immortal272, label %str_ok274, label %str_gen_check273

and.7.else:                                       ; preds = %str_ok262
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %str.eq.merge322
  %and.7.phi = phi i1 [ %str.eq.result328, %str.eq.merge322 ], [ %cmptmp266, %and.7.else ]
  br label %or.6.exit

str_gen_check273:                                 ; preds = %and.7.then
  %arena.cur276 = call ptr @dva_arena_current()
  %tag.valid277 = call i1 @dva_arena_validate_tag(ptr %arena.cur276, i64 %str.tag271)
  br i1 %tag.valid277, label %str_ok274, label %str_stale275

str_ok274:                                        ; preds = %str_stale275, %str_gen_check273, %and.7.then
  %s.read.data278 = getelementptr inbounds { i64, ptr }, ptr %var.load267, i32 0, i32 1
  %s.read.data279 = load ptr, ptr %s.read.data278, align 8
  %rel.start280 = add i64 %s.read.len270, 0
  %norm.start281 = select i1 false, i64 %rel.start280, i64 0
  %start.lt.0282 = icmp slt i64 %norm.start281, 0
  %c.start.0283 = select i1 %start.lt.0282, i64 0, i64 %norm.start281
  %start.gt.len284 = icmp sgt i64 %c.start.0283, %s.read.len270
  %final.start285 = select i1 %start.gt.len284, i64 %s.read.len270, i64 %c.start.0283
  %rel.end286 = add i64 %s.read.len270, 7
  %norm.end287 = select i1 false, i64 %rel.end286, i64 7
  %end.lt.0288 = icmp slt i64 %norm.end287, 0
  %c.end.0289 = select i1 %end.lt.0288, i64 0, i64 %norm.end287
  %end.gt.len290 = icmp sgt i64 %c.end.0289, %s.read.len270
  %final.end291 = select i1 %end.gt.len290, i64 %s.read.len270, i64 %c.end.0289
  %view.empty292 = icmp sle i64 %final.end291, %final.start285
  %view.len.sub293 = sub i64 %final.end291, %final.start285
  %view.len294 = select i1 %view.empty292, i64 0, i64 %view.len.sub293
  %view.data295 = getelementptr i8, ptr %s.read.data279, i64 %final.start285
  %arena.cur296 = call ptr @dva_arena_current()
  %str.view297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 16)
  %str.build.len.gep298 = getelementptr inbounds { i64, ptr }, ptr %str.view297, i32 0, i32 0
  store i64 %view.len294, ptr %str.build.len.gep298, align 8
  %str.build.data.gep299 = getelementptr inbounds { i64, ptr }, ptr %str.view297, i32 0, i32 1
  store ptr %view.data295, ptr %str.build.data.gep299, align 8
  %eq.lhs.len300 = getelementptr inbounds { i64, ptr }, ptr %str.view297, i32 0, i32 0
  %eq.lhs.len301 = load i64, ptr %eq.lhs.len300, align 8
  %eq.lhs.len302 = and i64 %eq.lhs.len301, 281474976710655
  %str.tag303 = lshr i64 %eq.lhs.len301, 48
  %str.immortal304 = icmp eq i64 %str.tag303, 0
  br i1 %str.immortal304, label %str_ok306, label %str_gen_check305

str_stale275:                                     ; preds = %str_gen_check273
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok274

str_gen_check305:                                 ; preds = %str_ok274
  %arena.cur308 = call ptr @dva_arena_current()
  %tag.valid309 = call i1 @dva_arena_validate_tag(ptr %arena.cur308, i64 %str.tag303)
  br i1 %tag.valid309, label %str_ok306, label %str_stale307

str_ok306:                                        ; preds = %str_stale307, %str_gen_check305, %str_ok274
  %eq.rhs.len310 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len311 = and i64 %eq.rhs.len310, 281474976710655
  %str.tag312 = lshr i64 %eq.rhs.len310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

str_stale307:                                     ; preds = %str_gen_check305
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok306

str_gen_check314:                                 ; preds = %str_ok306
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %str_ok306
  %eq.len319 = icmp eq i64 %eq.lhs.len302, %eq.rhs.len311
  br i1 %eq.len319, label %str.eq.then320, label %str.eq.else321

str_stale316:                                     ; preds = %str_gen_check314
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

str.eq.then320:                                   ; preds = %str_ok315
  %eq.lhs.data323 = getelementptr inbounds { i64, ptr }, ptr %str.view297, i32 0, i32 1
  %eq.lhs.data324 = load ptr, ptr %eq.lhs.data323, align 8
  %eq.rhs.data325 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp326 = call i32 @memcmp(ptr %eq.lhs.data324, ptr %eq.rhs.data325, i64 %eq.lhs.len302)
  %eq.cmp.zero327 = icmp eq i32 %eq.memcmp326, 0
  br label %str.eq.merge322

str.eq.else321:                                   ; preds = %str_ok315
  br label %str.eq.merge322

str.eq.merge322:                                  ; preds = %str.eq.else321, %str.eq.then320
  %str.eq.result328 = phi i1 [ %eq.cmp.zero327, %str.eq.then320 ], [ false, %str.eq.else321 ]
  br label %and.7.exit

or.8.then:                                        ; preds = %or.6.exit
  br label %or.8.exit

or.8.else:                                        ; preds = %or.6.exit
  %var.load329 = load ptr, ptr %var.triple, align 8
  %str.len.query330 = getelementptr inbounds { i64, ptr }, ptr %var.load329, i32 0, i32 0
  %str.len.query331 = load i64, ptr %str.len.query330, align 8
  %str.len.query332 = and i64 %str.len.query331, 281474976710655
  %str.tag333 = lshr i64 %str.len.query331, 48
  %str.immortal334 = icmp eq i64 %str.tag333, 0
  br i1 %str.immortal334, label %str_ok336, label %str_gen_check335

or.8.exit:                                        ; preds = %and.9.exit, %or.8.then
  %or.8.phi = phi i1 [ %or.6.phi, %or.8.then ], [ %and.9.phi, %and.9.exit ]
  br i1 %or.8.phi, label %or.10.then, label %or.10.else

str_gen_check335:                                 ; preds = %or.8.else
  %arena.cur338 = call ptr @dva_arena_current()
  %tag.valid339 = call i1 @dva_arena_validate_tag(ptr %arena.cur338, i64 %str.tag333)
  br i1 %tag.valid339, label %str_ok336, label %str_stale337

str_ok336:                                        ; preds = %str_stale337, %str_gen_check335, %or.8.else
  %cmptmp340 = icmp sge i64 %str.len.query332, 5
  br i1 %cmptmp340, label %and.9.then, label %and.9.else

str_stale337:                                     ; preds = %str_gen_check335
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok336

and.9.then:                                       ; preds = %str_ok336
  %var.load341 = load ptr, ptr %var.triple, align 8
  %s.read.len342 = getelementptr inbounds { i64, ptr }, ptr %var.load341, i32 0, i32 0
  %s.read.len343 = load i64, ptr %s.read.len342, align 8
  %s.read.len344 = and i64 %s.read.len343, 281474976710655
  %str.tag345 = lshr i64 %s.read.len343, 48
  %str.immortal346 = icmp eq i64 %str.tag345, 0
  br i1 %str.immortal346, label %str_ok348, label %str_gen_check347

and.9.else:                                       ; preds = %str_ok336
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %str.eq.merge396
  %and.9.phi = phi i1 [ %str.eq.result402, %str.eq.merge396 ], [ %cmptmp340, %and.9.else ]
  br label %or.8.exit

str_gen_check347:                                 ; preds = %and.9.then
  %arena.cur350 = call ptr @dva_arena_current()
  %tag.valid351 = call i1 @dva_arena_validate_tag(ptr %arena.cur350, i64 %str.tag345)
  br i1 %tag.valid351, label %str_ok348, label %str_stale349

str_ok348:                                        ; preds = %str_stale349, %str_gen_check347, %and.9.then
  %s.read.data352 = getelementptr inbounds { i64, ptr }, ptr %var.load341, i32 0, i32 1
  %s.read.data353 = load ptr, ptr %s.read.data352, align 8
  %rel.start354 = add i64 %s.read.len344, 0
  %norm.start355 = select i1 false, i64 %rel.start354, i64 0
  %start.lt.0356 = icmp slt i64 %norm.start355, 0
  %c.start.0357 = select i1 %start.lt.0356, i64 0, i64 %norm.start355
  %start.gt.len358 = icmp sgt i64 %c.start.0357, %s.read.len344
  %final.start359 = select i1 %start.gt.len358, i64 %s.read.len344, i64 %c.start.0357
  %rel.end360 = add i64 %s.read.len344, 5
  %norm.end361 = select i1 false, i64 %rel.end360, i64 5
  %end.lt.0362 = icmp slt i64 %norm.end361, 0
  %c.end.0363 = select i1 %end.lt.0362, i64 0, i64 %norm.end361
  %end.gt.len364 = icmp sgt i64 %c.end.0363, %s.read.len344
  %final.end365 = select i1 %end.gt.len364, i64 %s.read.len344, i64 %c.end.0363
  %view.empty366 = icmp sle i64 %final.end365, %final.start359
  %view.len.sub367 = sub i64 %final.end365, %final.start359
  %view.len368 = select i1 %view.empty366, i64 0, i64 %view.len.sub367
  %view.data369 = getelementptr i8, ptr %s.read.data353, i64 %final.start359
  %arena.cur370 = call ptr @dva_arena_current()
  %str.view371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 16)
  %str.build.len.gep372 = getelementptr inbounds { i64, ptr }, ptr %str.view371, i32 0, i32 0
  store i64 %view.len368, ptr %str.build.len.gep372, align 8
  %str.build.data.gep373 = getelementptr inbounds { i64, ptr }, ptr %str.view371, i32 0, i32 1
  store ptr %view.data369, ptr %str.build.data.gep373, align 8
  %eq.lhs.len374 = getelementptr inbounds { i64, ptr }, ptr %str.view371, i32 0, i32 0
  %eq.lhs.len375 = load i64, ptr %eq.lhs.len374, align 8
  %eq.lhs.len376 = and i64 %eq.lhs.len375, 281474976710655
  %str.tag377 = lshr i64 %eq.lhs.len375, 48
  %str.immortal378 = icmp eq i64 %str.tag377, 0
  br i1 %str.immortal378, label %str_ok380, label %str_gen_check379

str_stale349:                                     ; preds = %str_gen_check347
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok348

str_gen_check379:                                 ; preds = %str_ok348
  %arena.cur382 = call ptr @dva_arena_current()
  %tag.valid383 = call i1 @dva_arena_validate_tag(ptr %arena.cur382, i64 %str.tag377)
  br i1 %tag.valid383, label %str_ok380, label %str_stale381

str_ok380:                                        ; preds = %str_stale381, %str_gen_check379, %str_ok348
  %eq.rhs.len384 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len385 = and i64 %eq.rhs.len384, 281474976710655
  %str.tag386 = lshr i64 %eq.rhs.len384, 48
  %str.immortal387 = icmp eq i64 %str.tag386, 0
  br i1 %str.immortal387, label %str_ok389, label %str_gen_check388

str_stale381:                                     ; preds = %str_gen_check379
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok380

str_gen_check388:                                 ; preds = %str_ok380
  %arena.cur391 = call ptr @dva_arena_current()
  %tag.valid392 = call i1 @dva_arena_validate_tag(ptr %arena.cur391, i64 %str.tag386)
  br i1 %tag.valid392, label %str_ok389, label %str_stale390

str_ok389:                                        ; preds = %str_stale390, %str_gen_check388, %str_ok380
  %eq.len393 = icmp eq i64 %eq.lhs.len376, %eq.rhs.len385
  br i1 %eq.len393, label %str.eq.then394, label %str.eq.else395

str_stale390:                                     ; preds = %str_gen_check388
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok389

str.eq.then394:                                   ; preds = %str_ok389
  %eq.lhs.data397 = getelementptr inbounds { i64, ptr }, ptr %str.view371, i32 0, i32 1
  %eq.lhs.data398 = load ptr, ptr %eq.lhs.data397, align 8
  %eq.rhs.data399 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp400 = call i32 @memcmp(ptr %eq.lhs.data398, ptr %eq.rhs.data399, i64 %eq.lhs.len376)
  %eq.cmp.zero401 = icmp eq i32 %eq.memcmp400, 0
  br label %str.eq.merge396

str.eq.else395:                                   ; preds = %str_ok389
  br label %str.eq.merge396

str.eq.merge396:                                  ; preds = %str.eq.else395, %str.eq.then394
  %str.eq.result402 = phi i1 [ %eq.cmp.zero401, %str.eq.then394 ], [ false, %str.eq.else395 ]
  br label %and.9.exit

or.10.then:                                       ; preds = %or.8.exit
  br label %or.10.exit

or.10.else:                                       ; preds = %or.8.exit
  %var.load403 = load ptr, ptr %var.triple, align 8
  %str.len.query404 = getelementptr inbounds { i64, ptr }, ptr %var.load403, i32 0, i32 0
  %str.len.query405 = load i64, ptr %str.len.query404, align 8
  %str.len.query406 = and i64 %str.len.query405, 281474976710655
  %str.tag407 = lshr i64 %str.len.query405, 48
  %str.immortal408 = icmp eq i64 %str.tag407, 0
  br i1 %str.immortal408, label %str_ok410, label %str_gen_check409

or.10.exit:                                       ; preds = %and.11.exit, %or.10.then
  %or.10.phi = phi i1 [ %or.8.phi, %or.10.then ], [ %and.11.phi, %and.11.exit ]
  br label %choice.exit

str_gen_check409:                                 ; preds = %or.10.else
  %arena.cur412 = call ptr @dva_arena_current()
  %tag.valid413 = call i1 @dva_arena_validate_tag(ptr %arena.cur412, i64 %str.tag407)
  br i1 %tag.valid413, label %str_ok410, label %str_stale411

str_ok410:                                        ; preds = %str_stale411, %str_gen_check409, %or.10.else
  %cmptmp414 = icmp sge i64 %str.len.query406, 3
  br i1 %cmptmp414, label %and.11.then, label %and.11.else

str_stale411:                                     ; preds = %str_gen_check409
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok410

and.11.then:                                      ; preds = %str_ok410
  %var.load415 = load ptr, ptr %var.triple, align 8
  %s.read.len416 = getelementptr inbounds { i64, ptr }, ptr %var.load415, i32 0, i32 0
  %s.read.len417 = load i64, ptr %s.read.len416, align 8
  %s.read.len418 = and i64 %s.read.len417, 281474976710655
  %str.tag419 = lshr i64 %s.read.len417, 48
  %str.immortal420 = icmp eq i64 %str.tag419, 0
  br i1 %str.immortal420, label %str_ok422, label %str_gen_check421

and.11.else:                                      ; preds = %str_ok410
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %str.eq.merge470
  %and.11.phi = phi i1 [ %str.eq.result476, %str.eq.merge470 ], [ %cmptmp414, %and.11.else ]
  br label %or.10.exit

str_gen_check421:                                 ; preds = %and.11.then
  %arena.cur424 = call ptr @dva_arena_current()
  %tag.valid425 = call i1 @dva_arena_validate_tag(ptr %arena.cur424, i64 %str.tag419)
  br i1 %tag.valid425, label %str_ok422, label %str_stale423

str_ok422:                                        ; preds = %str_stale423, %str_gen_check421, %and.11.then
  %s.read.data426 = getelementptr inbounds { i64, ptr }, ptr %var.load415, i32 0, i32 1
  %s.read.data427 = load ptr, ptr %s.read.data426, align 8
  %rel.start428 = add i64 %s.read.len418, 0
  %norm.start429 = select i1 false, i64 %rel.start428, i64 0
  %start.lt.0430 = icmp slt i64 %norm.start429, 0
  %c.start.0431 = select i1 %start.lt.0430, i64 0, i64 %norm.start429
  %start.gt.len432 = icmp sgt i64 %c.start.0431, %s.read.len418
  %final.start433 = select i1 %start.gt.len432, i64 %s.read.len418, i64 %c.start.0431
  %rel.end434 = add i64 %s.read.len418, 3
  %norm.end435 = select i1 false, i64 %rel.end434, i64 3
  %end.lt.0436 = icmp slt i64 %norm.end435, 0
  %c.end.0437 = select i1 %end.lt.0436, i64 0, i64 %norm.end435
  %end.gt.len438 = icmp sgt i64 %c.end.0437, %s.read.len418
  %final.end439 = select i1 %end.gt.len438, i64 %s.read.len418, i64 %c.end.0437
  %view.empty440 = icmp sle i64 %final.end439, %final.start433
  %view.len.sub441 = sub i64 %final.end439, %final.start433
  %view.len442 = select i1 %view.empty440, i64 0, i64 %view.len.sub441
  %view.data443 = getelementptr i8, ptr %s.read.data427, i64 %final.start433
  %arena.cur444 = call ptr @dva_arena_current()
  %str.view445 = call ptr @dva_arena_alloc(ptr %arena.cur444, i64 16)
  %str.build.len.gep446 = getelementptr inbounds { i64, ptr }, ptr %str.view445, i32 0, i32 0
  store i64 %view.len442, ptr %str.build.len.gep446, align 8
  %str.build.data.gep447 = getelementptr inbounds { i64, ptr }, ptr %str.view445, i32 0, i32 1
  store ptr %view.data443, ptr %str.build.data.gep447, align 8
  %eq.lhs.len448 = getelementptr inbounds { i64, ptr }, ptr %str.view445, i32 0, i32 0
  %eq.lhs.len449 = load i64, ptr %eq.lhs.len448, align 8
  %eq.lhs.len450 = and i64 %eq.lhs.len449, 281474976710655
  %str.tag451 = lshr i64 %eq.lhs.len449, 48
  %str.immortal452 = icmp eq i64 %str.tag451, 0
  br i1 %str.immortal452, label %str_ok454, label %str_gen_check453

str_stale423:                                     ; preds = %str_gen_check421
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok422

str_gen_check453:                                 ; preds = %str_ok422
  %arena.cur456 = call ptr @dva_arena_current()
  %tag.valid457 = call i1 @dva_arena_validate_tag(ptr %arena.cur456, i64 %str.tag451)
  br i1 %tag.valid457, label %str_ok454, label %str_stale455

str_ok454:                                        ; preds = %str_stale455, %str_gen_check453, %str_ok422
  %eq.rhs.len458 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len459 = and i64 %eq.rhs.len458, 281474976710655
  %str.tag460 = lshr i64 %eq.rhs.len458, 48
  %str.immortal461 = icmp eq i64 %str.tag460, 0
  br i1 %str.immortal461, label %str_ok463, label %str_gen_check462

str_stale455:                                     ; preds = %str_gen_check453
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok454

str_gen_check462:                                 ; preds = %str_ok454
  %arena.cur465 = call ptr @dva_arena_current()
  %tag.valid466 = call i1 @dva_arena_validate_tag(ptr %arena.cur465, i64 %str.tag460)
  br i1 %tag.valid466, label %str_ok463, label %str_stale464

str_ok463:                                        ; preds = %str_stale464, %str_gen_check462, %str_ok454
  %eq.len467 = icmp eq i64 %eq.lhs.len450, %eq.rhs.len459
  br i1 %eq.len467, label %str.eq.then468, label %str.eq.else469

str_stale464:                                     ; preds = %str_gen_check462
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok463

str.eq.then468:                                   ; preds = %str_ok463
  %eq.lhs.data471 = getelementptr inbounds { i64, ptr }, ptr %str.view445, i32 0, i32 1
  %eq.lhs.data472 = load ptr, ptr %eq.lhs.data471, align 8
  %eq.rhs.data473 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp474 = call i32 @memcmp(ptr %eq.lhs.data472, ptr %eq.rhs.data473, i64 %eq.lhs.len450)
  %eq.cmp.zero475 = icmp eq i32 %eq.memcmp474, 0
  br label %str.eq.merge470

str.eq.else469:                                   ; preds = %str_ok463
  br label %str.eq.merge470

str.eq.merge470:                                  ; preds = %str.eq.else469, %str.eq.then468
  %str.eq.result476 = phi i1 [ %eq.cmp.zero475, %str.eq.then468 ], [ false, %str.eq.else469 ]
  br label %and.11.exit
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
  %var.p = alloca ptr, align 8
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
  %choice.res21 = phi i1 [ %choice.res, %choice.exit4 ], [ %cmptmp, %a.after ], [ false, %choice.next11 ]
  ret i1 %choice.res21

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
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
  store ptr %payload.ptr16, ptr %var.r, align 8
  %var.load17 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next11:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case10
  %arena.cur = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create18, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case10
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query20 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query20, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #1

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #1 {
entry:
  %var._266 = alloca ptr, align 8
  %var.e_align = alloca i64, align 8
  %var.elay = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._214 = alloca ptr, align 8
  %var.has_n = alloca i1, align 1
  %var.has_p = alloca i1, align 1
  %var.r140 = alloca ptr, align 8
  %var.fin_size = alloca i64, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._80 = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var._43 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %"var.max_align'" = alloca i64, align 8
  %"var.cur_off'" = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p = alloca ptr, align 8
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

choice.exit14:                                    ; preds = %choice.next260, %choice.case259, %choice.exit237, %choice.case207, %choice.exit153, %choice.exit126, %choice.case17, %choice.case
  %choice.res282 = phi ptr [ %call.res16, %choice.case ], [ %rec.alloc, %choice.case17 ], [ %call.res132, %choice.exit126 ], [ %choice.res206, %choice.exit153 ], [ %call.res218, %choice.case207 ], [ %rec.alloc255, %choice.exit237 ], [ %rec.alloc275, %choice.case259 ], [ %call.res281, %choice.next260 ]
  ret ptr %choice.res282

choice.case:                                      ; preds = %choice.exit9
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
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
  store ptr %payload.ptr23, ptr %var._, align 8
  %var.load24 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load24, 2
  %var.load25 = load i64, ptr %var.ptr_align, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep26 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep26, align 8
  %pay.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep27, align 8
  %arena.cur28 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %multmp, ptr %rec.fld, align 8
  %rec.fld29 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load25, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld30, align 8
  br label %choice.exit14

choice.next18:                                    ; preds = %choice.next
  %tag.gep33 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id34 = load i64, ptr %tag.gep33, align 8
  %tag.match35 = icmp eq i64 %tag.id34, 3
  br i1 %tag.match35, label %choice.case31, label %choice.next32

choice.case31:                                    ; preds = %choice.next18
  %pay.gep36 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr37 = load ptr, ptr %pay.gep36, align 8
  store ptr %payload.ptr37, ptr %var.r, align 8
  store i64 0, ptr %"var.cur_off'", align 8
  store i64 1, ptr %"var.max_align'", align 8
  %var.load38 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next32:                                    ; preds = %choice.next18
  %tag.gep135 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id136 = load i64, ptr %tag.gep135, align 8
  %tag.match137 = icmp eq i64 %tag.id136, 4
  br i1 %tag.match137, label %choice.case133, label %choice.next134

a.create:                                         ; preds = %choice.case31
  %arena.cur39 = call ptr @dva_arena_current()
  %a.create40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 24)
  %arena.cur41 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create40, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create40, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create40, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create40, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case31
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query42 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after
  %counter.load = load i64, ptr %loop.idx.12, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query42
  br i1 %loop.cond, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._43, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load44 = load ptr, ptr %var.r, align 8
  %a.load45 = load ptr, ptr %var.r, align 8
  %a.null46 = icmp eq ptr %a.load45, null
  br i1 %a.null46, label %a.create47, label %a.after48

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %choice.exit108
  %step.val = load i64, ptr %loop.step.12, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  %var.load118 = load i64, ptr %"var.cur_off'", align 8
  %var.load119 = load i64, ptr %"var.max_align'", align 8
  %call.res120 = call i64 @"layout::align_up"(i64 %var.load118, i64 %var.load119)
  store i64 %call.res120, ptr %var.total_size, align 8
  %var.load121 = load i64, ptr %var.total_size, align 8
  %var.load122 = load i64, ptr %var.min_rec_sz, align 8
  %cmptmp123 = icmp slt i64 %var.load121, %var.load122
  br i1 %cmptmp123, label %choice.then124, label %choice.else125

a.create47:                                       ; preds = %loop.body.12
  %arena.cur49 = call ptr @dva_arena_current()
  %a.create50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 24)
  %arena.cur51 = call ptr @dva_arena_current()
  %a.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 128)
  %a.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 0
  store i64 0, ptr %a.len.gep53, align 8
  %a.data.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 1
  store ptr %a.buf52, ptr %a.data.gep54, align 8
  %a.cap.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 2
  store i64 16, ptr %a.cap.gep55, align 8
  store ptr %a.create50, ptr %var.r, align 8
  br label %a.after48

a.after48:                                        ; preds = %a.create47, %loop.body.12
  %a.load256 = load ptr, ptr %var.r, align 8
  %var.load57 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load256, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after48
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  %a.rd.len58 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load57, 0
  %a.rd.lt = icmp slt i64 %var.load57, %a.rd.len58
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 1
  %a.rd.data59 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data59, i64 %var.load57
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after48
  %arena.cur60 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 91, ptr %err.line.gep, align 8
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
  %arena.cur61 = call ptr @dva_arena_current()
  %err.alloc62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 56)
  %err.code.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 0
  store i64 4011, ptr %err.code.gep63, align 8
  %err.msg.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep64, align 8
  %err.file.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 2
  store ptr @str.9.struct, ptr %err.file.gep65, align 8
  %err.line.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 3
  store i64 91, ptr %err.line.gep66, align 8
  %err.col.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 4
  store i64 22, ptr %err.col.gep67, align 8
  %err.ctx.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc62, i32 0, i32 5
  %err.ctx0.gep69 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep68, i32 0, i32 0
  store i64 %var.load57, ptr %err.ctx0.gep69, align 8
  %err.ctx1.gep70 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep68, i32 0, i32 1
  store i64 %a.rd.len58, ptr %err.ctx1.gep70, align 8
  %err.p2i71 = ptrtoint ptr %err.alloc62 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i71, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag72 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %a.rd.done
  %ram.pay76 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay76 to ptr
  store ptr %pay.ptr, ptr %var._77, align 8
  br label %choice.exit75

choice.else74:                                    ; preds = %a.rd.done
  %ram.pay78 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr79 = inttoptr i64 %ram.pay78 to ptr
  store ptr %pay.ptr79, ptr %var._80, align 8
  %arena.cur81 = call ptr @dva_arena_current()
  %enum.alloc82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %tag.gep83 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc82, i32 0, i32 0
  store i64 9, ptr %tag.gep83, align 8
  %pay.gep84 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc82, i32 0, i32 1
  store ptr null, ptr %pay.gep84, align 8
  %arena.cur85 = call ptr @dva_arena_current()
  %rec.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld87 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc86, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld87, align 8
  %rec.fld88 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc86, i32 0, i32 1
  store ptr %enum.alloc82, ptr %rec.fld88, align 8
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %choice.then73
  %choice.res89 = phi ptr [ %pay.ptr, %choice.then73 ], [ %rec.alloc86, %choice.else74 ]
  store ptr %choice.res89, ptr %var.f, align 8
  %var.load90 = load ptr, ptr %var.ctx, align 8
  %var.load91 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load91, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res92 = call ptr @"layout::compute_layout"(ptr %var.load90, ptr %fld.load)
  store ptr %call.res92, ptr %var.flay, align 8
  %var.load93 = load ptr, ptr %var.flay, align 8
  %fld.gep94 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load93, i32 0, i32 1
  %fld.load95 = load i64, ptr %fld.gep94, align 8
  %cmptmp = icmp slt i64 %fld.load95, 1
  br i1 %cmptmp, label %choice.then96, label %choice.else97

choice.then96:                                    ; preds = %choice.exit75
  br label %choice.exit98

choice.else97:                                    ; preds = %choice.exit75
  %var.load99 = load ptr, ptr %var.flay, align 8
  %fld.gep100 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load99, i32 0, i32 1
  %fld.load101 = load i64, ptr %fld.gep100, align 8
  br label %choice.exit98

choice.exit98:                                    ; preds = %choice.else97, %choice.then96
  %choice.res102 = phi i64 [ 1, %choice.then96 ], [ %fld.load101, %choice.else97 ]
  store i64 %choice.res102, ptr %var.f_align, align 8
  %var.load103 = load i64, ptr %"var.max_align'", align 8
  %var.load104 = load i64, ptr %var.f_align, align 8
  %cmptmp105 = icmp slt i64 %var.load103, %var.load104
  br i1 %cmptmp105, label %choice.then106, label %choice.else107

choice.then106:                                   ; preds = %choice.exit98
  %var.load109 = load i64, ptr %var.f_align, align 8
  br label %choice.exit108

choice.else107:                                   ; preds = %choice.exit98
  %var.load110 = load i64, ptr %"var.max_align'", align 8
  br label %choice.exit108

choice.exit108:                                   ; preds = %choice.else107, %choice.then106
  %choice.res111 = phi i64 [ %var.load109, %choice.then106 ], [ %var.load110, %choice.else107 ]
  store i64 %choice.res111, ptr %"var.max_align'", align 8
  %var.load112 = load i64, ptr %"var.cur_off'", align 8
  %var.load113 = load i64, ptr %var.f_align, align 8
  %call.res114 = call i64 @"layout::align_up"(i64 %var.load112, i64 %var.load113)
  %var.load115 = load ptr, ptr %var.flay, align 8
  %fld.gep116 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load115, i32 0, i32 0
  %fld.load117 = load i64, ptr %fld.gep116, align 8
  %addtmp = add i64 %call.res114, %fld.load117
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.12

choice.then124:                                   ; preds = %loop.exit.12
  %var.load127 = load i64, ptr %var.min_rec_sz, align 8
  br label %choice.exit126

choice.else125:                                   ; preds = %loop.exit.12
  %var.load128 = load i64, ptr %var.total_size, align 8
  br label %choice.exit126

choice.exit126:                                   ; preds = %choice.else125, %choice.then124
  %choice.res129 = phi i64 [ %var.load127, %choice.then124 ], [ %var.load128, %choice.else125 ]
  store i64 %choice.res129, ptr %var.fin_size, align 8
  %var.load130 = load i64, ptr %var.fin_size, align 8
  %var.load131 = load i64, ptr %"var.max_align'", align 8
  %call.res132 = call ptr @"tast::layout_aggregate"(i64 %var.load130, i64 %var.load131)
  br label %choice.exit14

choice.case133:                                   ; preds = %choice.next32
  %pay.gep138 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr139 = load ptr, ptr %pay.gep138, align 8
  store ptr %payload.ptr139, ptr %var.r140, align 8
  %var.load141 = load ptr, ptr %var.r140, align 8
  %fld.gep142 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load141, i32 0, i32 0
  %fld.gep143 = getelementptr inbounds { i1, ptr }, ptr %fld.gep142, i32 0, i32 0
  %fld.load144 = load i1, ptr %fld.gep143, align 1
  store i1 %fld.load144, ptr %var.has_p, align 1
  %var.load145 = load ptr, ptr %var.r140, align 8
  %fld.gep146 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load145, i32 0, i32 1
  %fld.gep147 = getelementptr inbounds { i1, ptr }, ptr %fld.gep146, i32 0, i32 0
  %fld.load148 = load i1, ptr %fld.gep147, align 1
  store i1 %fld.load148, ptr %var.has_n, align 1
  %var.load149 = load i1, ptr %var.has_p, align 1
  br i1 %var.load149, label %and.13.then, label %and.13.else

choice.next134:                                   ; preds = %choice.next32
  %tag.gep209 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id210 = load i64, ptr %tag.gep209, align 8
  %tag.match211 = icmp eq i64 %tag.id210, 5
  br i1 %tag.match211, label %choice.case207, label %choice.next208

and.13.then:                                      ; preds = %choice.case133
  %var.load150 = load i1, ptr %var.has_n, align 1
  %nottmp = xor i1 %var.load150, true
  br label %and.13.exit

and.13.else:                                      ; preds = %choice.case133
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %and.13.then
  %and.13.phi = phi i1 [ %nottmp, %and.13.then ], [ %var.load149, %and.13.else ]
  br i1 %and.13.phi, label %choice.then151, label %choice.else152

choice.then151:                                   ; preds = %and.13.exit
  %var.load154 = load ptr, ptr %var.ctx, align 8
  %var.load155 = load ptr, ptr %var.r140, align 8
  %fld.gep156 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load155, i32 0, i32 0
  %fld.gep157 = getelementptr inbounds { i1, ptr }, ptr %fld.gep156, i32 0, i32 1
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %call.res159 = call i1 @"layout::is_niche_utype"(ptr %var.load154, ptr %fld.load158)
  br i1 %call.res159, label %choice.then160, label %choice.else161

choice.else152:                                   ; preds = %and.13.exit
  %var.load171 = load i1, ptr %var.has_p, align 1
  %nottmp172 = xor i1 %var.load171, true
  br i1 %nottmp172, label %and.14.then, label %and.14.else

choice.exit153:                                   ; preds = %choice.exit176, %choice.exit162
  %choice.res206 = phi ptr [ %choice.res170, %choice.exit162 ], [ %choice.res205, %choice.exit176 ]
  br label %choice.exit14

choice.then160:                                   ; preds = %choice.then151
  %var.load163 = load i64, ptr %var.ptr_sz, align 8
  %var.load164 = load i64, ptr %var.ptr_align, align 8
  %call.res165 = call ptr @"tast::layout_scalar"(i64 %var.load163, i64 %var.load164)
  br label %choice.exit162

choice.else161:                                   ; preds = %choice.then151
  %var.load166 = load i64, ptr %var.ptr_sz, align 8
  %multmp167 = mul i64 %var.load166, 2
  %var.load168 = load i64, ptr %var.ptr_align, align 8
  %call.res169 = call ptr @"tast::layout_ram"(i64 %multmp167, i64 %var.load168)
  br label %choice.exit162

choice.exit162:                                   ; preds = %choice.else161, %choice.then160
  %choice.res170 = phi ptr [ %call.res165, %choice.then160 ], [ %call.res169, %choice.else161 ]
  br label %choice.exit153

and.14.then:                                      ; preds = %choice.else152
  %var.load173 = load i1, ptr %var.has_n, align 1
  br label %and.14.exit

and.14.else:                                      ; preds = %choice.else152
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %var.load173, %and.14.then ], [ %nottmp172, %and.14.else ]
  br i1 %and.14.phi, label %choice.then174, label %choice.else175

choice.then174:                                   ; preds = %and.14.exit
  %var.load177 = load ptr, ptr %var.ctx, align 8
  %var.load178 = load ptr, ptr %var.r140, align 8
  %fld.gep179 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load178, i32 0, i32 1
  %fld.gep180 = getelementptr inbounds { i1, ptr }, ptr %fld.gep179, i32 0, i32 1
  %fld.load181 = load ptr, ptr %fld.gep180, align 8
  %call.res182 = call i1 @"layout::is_niche_utype"(ptr %var.load177, ptr %fld.load181)
  br i1 %call.res182, label %choice.then183, label %choice.else184

choice.else175:                                   ; preds = %and.14.exit
  %var.load194 = load i1, ptr %var.has_p, align 1
  br i1 %var.load194, label %or.15.then, label %or.15.else

choice.exit176:                                   ; preds = %choice.exit198, %choice.exit185
  %choice.res205 = phi ptr [ %choice.res193, %choice.exit185 ], [ %choice.res204, %choice.exit198 ]
  br label %choice.exit153

choice.then183:                                   ; preds = %choice.then174
  %var.load186 = load i64, ptr %var.ptr_sz, align 8
  %var.load187 = load i64, ptr %var.ptr_align, align 8
  %call.res188 = call ptr @"tast::layout_scalar"(i64 %var.load186, i64 %var.load187)
  br label %choice.exit185

choice.else184:                                   ; preds = %choice.then174
  %var.load189 = load i64, ptr %var.ptr_sz, align 8
  %multmp190 = mul i64 %var.load189, 2
  %var.load191 = load i64, ptr %var.ptr_align, align 8
  %call.res192 = call ptr @"tast::layout_ram"(i64 %multmp190, i64 %var.load191)
  br label %choice.exit185

choice.exit185:                                   ; preds = %choice.else184, %choice.then183
  %choice.res193 = phi ptr [ %call.res188, %choice.then183 ], [ %call.res192, %choice.else184 ]
  br label %choice.exit176

or.15.then:                                       ; preds = %choice.else175
  br label %or.15.exit

or.15.else:                                       ; preds = %choice.else175
  %var.load195 = load i1, ptr %var.has_n, align 1
  br label %or.15.exit

or.15.exit:                                       ; preds = %or.15.else, %or.15.then
  %or.15.phi = phi i1 [ %var.load194, %or.15.then ], [ %var.load195, %or.15.else ]
  br i1 %or.15.phi, label %choice.then196, label %choice.else197

choice.then196:                                   ; preds = %or.15.exit
  %var.load199 = load i64, ptr %var.ptr_sz, align 8
  %multmp200 = mul i64 %var.load199, 2
  %var.load201 = load i64, ptr %var.ptr_align, align 8
  %call.res202 = call ptr @"tast::layout_ram"(i64 %multmp200, i64 %var.load201)
  br label %choice.exit198

choice.else197:                                   ; preds = %or.15.exit
  %call.res203 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit198

choice.exit198:                                   ; preds = %choice.else197, %choice.then196
  %choice.res204 = phi ptr [ %call.res202, %choice.then196 ], [ %call.res203, %choice.else197 ]
  br label %choice.exit176

choice.case207:                                   ; preds = %choice.next134
  %pay.gep212 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr213 = load ptr, ptr %pay.gep212, align 8
  store ptr %payload.ptr213, ptr %var._214, align 8
  %var.load215 = load i64, ptr %var.ptr_sz, align 8
  %multmp216 = mul i64 %var.load215, 2
  %var.load217 = load i64, ptr %var.ptr_align, align 8
  %call.res218 = call ptr @"tast::layout_aggregate"(i64 %multmp216, i64 %var.load217)
  br label %choice.exit14

choice.next208:                                   ; preds = %choice.next134
  %tag.gep221 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id222 = load i64, ptr %tag.gep221, align 8
  %tag.match223 = icmp eq i64 %tag.id222, 6
  br i1 %tag.match223, label %choice.case219, label %choice.next220

choice.case219:                                   ; preds = %choice.next208
  %pay.gep224 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr225 = load ptr, ptr %pay.gep224, align 8
  store ptr %payload.ptr225, ptr %var.a, align 8
  %var.load226 = load ptr, ptr %var.ctx, align 8
  %var.load227 = load ptr, ptr %var.a, align 8
  %fld.gep228 = getelementptr inbounds { ptr, i64 }, ptr %var.load227, i32 0, i32 0
  %fld.load229 = load ptr, ptr %fld.gep228, align 8
  %call.res230 = call ptr @"layout::compute_layout"(ptr %var.load226, ptr %fld.load229)
  store ptr %call.res230, ptr %var.elay, align 8
  %var.load231 = load ptr, ptr %var.elay, align 8
  %fld.gep232 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load231, i32 0, i32 1
  %fld.load233 = load i64, ptr %fld.gep232, align 8
  %cmptmp234 = icmp slt i64 %fld.load233, 1
  br i1 %cmptmp234, label %choice.then235, label %choice.else236

choice.next220:                                   ; preds = %choice.next208
  %tag.gep261 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id262 = load i64, ptr %tag.gep261, align 8
  %tag.match263 = icmp eq i64 %tag.id262, 7
  br i1 %tag.match263, label %choice.case259, label %choice.next260

choice.then235:                                   ; preds = %choice.case219
  br label %choice.exit237

choice.else236:                                   ; preds = %choice.case219
  %var.load238 = load ptr, ptr %var.elay, align 8
  %fld.gep239 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load238, i32 0, i32 1
  %fld.load240 = load i64, ptr %fld.gep239, align 8
  br label %choice.exit237

choice.exit237:                                   ; preds = %choice.else236, %choice.then235
  %choice.res241 = phi i64 [ 1, %choice.then235 ], [ %fld.load240, %choice.else236 ]
  store i64 %choice.res241, ptr %var.e_align, align 8
  %var.load242 = load ptr, ptr %var.elay, align 8
  %fld.gep243 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load242, i32 0, i32 0
  %fld.load244 = load i64, ptr %fld.gep243, align 8
  %var.load245 = load ptr, ptr %var.a, align 8
  %fld.gep246 = getelementptr inbounds { ptr, i64 }, ptr %var.load245, i32 0, i32 1
  %fld.load247 = load i64, ptr %fld.gep246, align 8
  %multmp248 = mul i64 %fld.load244, %fld.load247
  %var.load249 = load i64, ptr %var.e_align, align 8
  %arena.cur250 = call ptr @dva_arena_current()
  %enum.alloc251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 16)
  %tag.gep252 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc251, i32 0, i32 0
  store i64 5, ptr %tag.gep252, align 8
  %pay.gep253 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc251, i32 0, i32 1
  store ptr null, ptr %pay.gep253, align 8
  %arena.cur254 = call ptr @dva_arena_current()
  %rec.alloc255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld256 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc255, i32 0, i32 0
  store i64 %multmp248, ptr %rec.fld256, align 8
  %rec.fld257 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc255, i32 0, i32 1
  store i64 %var.load249, ptr %rec.fld257, align 8
  %rec.fld258 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc255, i32 0, i32 2
  store ptr %enum.alloc251, ptr %rec.fld258, align 8
  br label %choice.exit14

choice.case259:                                   ; preds = %choice.next220
  %pay.gep264 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr265 = load ptr, ptr %pay.gep264, align 8
  store ptr %payload.ptr265, ptr %var._266, align 8
  %var.load267 = load i64, ptr %var.ptr_sz, align 8
  %multmp268 = mul i64 %var.load267, 2
  %var.load269 = load i64, ptr %var.ptr_align, align 8
  %arena.cur270 = call ptr @dva_arena_current()
  %enum.alloc271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 16)
  %tag.gep272 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc271, i32 0, i32 0
  store i64 4, ptr %tag.gep272, align 8
  %pay.gep273 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc271, i32 0, i32 1
  store ptr null, ptr %pay.gep273, align 8
  %arena.cur274 = call ptr @dva_arena_current()
  %rec.alloc275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld276 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc275, i32 0, i32 0
  store i64 %multmp268, ptr %rec.fld276, align 8
  %rec.fld277 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc275, i32 0, i32 1
  store i64 %var.load269, ptr %rec.fld277, align 8
  %rec.fld278 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc275, i32 0, i32 2
  store ptr %enum.alloc271, ptr %rec.fld278, align 8
  br label %choice.exit14

choice.next260:                                   ; preds = %choice.next220
  %var.load279 = load i64, ptr %var.ptr_sz, align 8
  %var.load280 = load i64, ptr %var.ptr_align, align 8
  %call.res281 = call ptr @"tast::layout_scalar"(i64 %var.load279, i64 %var.load280)
  br label %choice.exit14
}

declare ptr @"tast::layout_ram"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
