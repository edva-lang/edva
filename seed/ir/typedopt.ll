; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"typedopt::#is_int", ptr null }
@"var.typedopt::#is_int" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"typedopt::#scalar_literal", ptr null }
@"var.typedopt::#scalar_literal" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"typedopt::#same_scalar_type", ptr null }
@"var.typedopt::#same_scalar_type" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"typedopt::#replace", ptr null }
@"var.typedopt::#replace" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"typedopt::#scalar_operand", ptr null }
@"var.typedopt::#scalar_operand" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_bin", ptr null }
@"var.typedopt::#simplify_bin" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [13 x i8] c"typedopt.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.6 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_member", ptr null }
@"var.typedopt::#simplify_member" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"typedopt::#wide_int", ptr null }
@"var.typedopt::#wide_int" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"typedopt::#int_array", ptr null }
@"var.typedopt::#int_array" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"typedopt::#read_var", ptr null }
@"var.typedopt::#read_var" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"typedopt::#write_var", ptr null }
@"var.typedopt::#write_var" = global ptr null
@str.4 = internal unnamed_addr constant [10 x i8] c"_map_out_\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.4 }
@str.5 = internal unnamed_addr constant [11 x i8] c"_fold_acc_\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c"_i\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c"_\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [7 x i8] c"#pipe_\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.8 }
@str.9 = internal unnamed_addr constant [7 x i8] c"_value\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.9 }
@str.10 = internal unnamed_addr constant [7 x i8] c"_index\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.10 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"typedopt::#read_stage", ptr null }
@"var.typedopt::#read_stage" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"typedopt::#bare_branch", ptr null }
@"var.typedopt::#bare_branch" = global ptr null
@unwrap_abort_msg = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.13 = internal constant { ptr, ptr } { ptr @"typedopt::#stage_value", ptr null }
@"var.typedopt::#stage_value" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"typedopt::#replace_append", ptr null }
@"var.typedopt::#replace_append" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"typedopt::#fusion_source", ptr null }
@"var.typedopt::#fusion_source" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"typedopt::#setup_has_no_bindings", ptr null }
@"var.typedopt::#setup_has_no_bindings" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"typedopt::#collect_binders", ptr null }
@"var.typedopt::#collect_binders" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"typedopt::#fuse_pipeline", ptr null }
@"var.typedopt::#fuse_pipeline" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_choice", ptr null }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_block", ptr null }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_optional", ptr null }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite", ptr null }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_list", ptr null }
@"var.typedopt::#rewrite_list" = global ptr null
@"var.typedopt::#rewrite_optional" = global ptr null
@"var.typedopt::#rewrite_block" = global ptr null
@"var.typedopt::#simplify_choice" = global ptr null
@"var.typedopt::#rewrite" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_stmt", ptr null }
@"var.typedopt::#rewrite_stmt" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"typedopt::collection_fusion", ptr null }
@"var.typedopt::collection_fusion" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"typedopt::run", ptr null }
@"var.typedopt::run" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_typedopt, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_typedopt() #3 {
entry:
  store ptr @clo.const, ptr @"var.typedopt::#is_int", align 8
  store ptr @clo.const.1, ptr @"var.typedopt::#scalar_literal", align 8
  store ptr @clo.const.2, ptr @"var.typedopt::#same_scalar_type", align 8
  store ptr @clo.const.3, ptr @"var.typedopt::#replace", align 8
  store ptr @clo.const.4, ptr @"var.typedopt::#scalar_operand", align 8
  store ptr @clo.const.5, ptr @"var.typedopt::#simplify_bin", align 8
  store ptr @clo.const.6, ptr @"var.typedopt::#simplify_member", align 8
  store ptr @clo.const.7, ptr @"var.typedopt::#wide_int", align 8
  store ptr @clo.const.8, ptr @"var.typedopt::#int_array", align 8
  store ptr @clo.const.9, ptr @"var.typedopt::#read_var", align 8
  store ptr @clo.const.10, ptr @"var.typedopt::#write_var", align 8
  store ptr @clo.const.11, ptr @"var.typedopt::#read_stage", align 8
  store ptr @clo.const.12, ptr @"var.typedopt::#bare_branch", align 8
  store ptr @clo.const.13, ptr @"var.typedopt::#stage_value", align 8
  store ptr @clo.const.14, ptr @"var.typedopt::#replace_append", align 8
  store ptr @clo.const.15, ptr @"var.typedopt::#fusion_source", align 8
  store ptr @clo.const.16, ptr @"var.typedopt::#setup_has_no_bindings", align 8
  store ptr @clo.const.17, ptr @"var.typedopt::#collect_binders", align 8
  store ptr @clo.const.18, ptr @"var.typedopt::#fuse_pipeline", align 8
  store ptr @clo.const.23, ptr @"var.typedopt::#rewrite_list", align 8
  store ptr @clo.const.21, ptr @"var.typedopt::#rewrite_optional", align 8
  store ptr @clo.const.20, ptr @"var.typedopt::#rewrite_block", align 8
  store ptr @clo.const.19, ptr @"var.typedopt::#simplify_choice", align 8
  store ptr @clo.const.22, ptr @"var.typedopt::#rewrite", align 8
  store ptr @clo.const.24, ptr @"var.typedopt::#rewrite_stmt", align 8
  store ptr @clo.const.25, ptr @"var.typedopt::collection_fusion", align 8
  store ptr @clo.const.26, ptr @"var.typedopt::run", align 8
  ret void
}

define internal i1 @"typedopt::#is_int"(ptr %0) #3 {
entry:
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit2
  %choice.res8 = phi i1 [ %choice.res, %choice.exit2 ], [ false, %choice.next ]
  ret i1 %choice.res8

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.exit2:                                     ; preds = %choice.next4, %choice.case3
  %choice.res = phi i1 [ true, %choice.case3 ], [ false, %choice.next4 ]
  br label %choice.exit

choice.case3:                                     ; preds = %choice.case
  br label %choice.exit2

choice.next4:                                     ; preds = %choice.case
  br label %choice.exit2
}

define internal i1 @"typedopt::#scalar_literal"(ptr %0) #3 {
entry:
  %var.p = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  %tag.match1 = icmp eq i64 %tag.id, 4
  %tag.or = or i1 %tag.match, %tag.match1
  %tag.match2 = icmp eq i64 %tag.id, 3
  %tag.or3 = or i1 %tag.or, %tag.match2
  %tag.match4 = icmp eq i64 %tag.id, 1
  %tag.or5 = or i1 %tag.or3, %tag.match4
  br i1 %tag.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit9
  %choice.res50 = phi i1 [ %choice.res49, %choice.exit9 ], [ false, %choice.next ]
  ret i1 %choice.res50

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  %var.load6 = load ptr, ptr %var.e, align 8
  %fld.gep7 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %tag.id13 = load i64, ptr %tag.gep12, align 8
  %tag.match14 = icmp eq i64 %tag.id13, 0
  br i1 %tag.match14, label %choice.case10, label %choice.next11

choice.exit9:                                     ; preds = %choice.next11, %choice.exit19
  %choice.res49 = phi i1 [ %choice.res, %choice.exit19 ], [ false, %choice.next11 ]
  br label %choice.exit

choice.case10:                                    ; preds = %pay.int.merge
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  store ptr %payload.ptr16, ptr %var._17, align 8
  store ptr %payload.ptr16, ptr %var.p, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 1
  %tag.match25 = icmp eq i64 %tag.id23, 2
  %tag.or26 = or i1 %tag.match24, %tag.match25
  %tag.match27 = icmp eq i64 %tag.id23, 3
  %tag.or28 = or i1 %tag.or26, %tag.match27
  %tag.match29 = icmp eq i64 %tag.id23, 4
  %tag.or30 = or i1 %tag.or28, %tag.match29
  %tag.match31 = icmp eq i64 %tag.id23, 5
  %tag.or32 = or i1 %tag.or30, %tag.match31
  %tag.match33 = icmp eq i64 %tag.id23, 6
  %tag.or34 = or i1 %tag.or32, %tag.match33
  %tag.match35 = icmp eq i64 %tag.id23, 7
  %tag.or36 = or i1 %tag.or34, %tag.match35
  %tag.match37 = icmp eq i64 %tag.id23, 8
  %tag.or38 = or i1 %tag.or36, %tag.match37
  %tag.match39 = icmp eq i64 %tag.id23, 9
  %tag.or40 = or i1 %tag.or38, %tag.match39
  %tag.match41 = icmp eq i64 %tag.id23, 26
  %tag.or42 = or i1 %tag.or40, %tag.match41
  %tag.match43 = icmp eq i64 %tag.id23, 10
  %tag.or44 = or i1 %tag.or42, %tag.match43
  %tag.match45 = icmp eq i64 %tag.id23, 11
  %tag.or46 = or i1 %tag.or44, %tag.match45
  %tag.match47 = icmp eq i64 %tag.id23, 12
  %tag.or48 = or i1 %tag.or46, %tag.match47
  br i1 %tag.or48, label %choice.case20, label %choice.next21

choice.next11:                                    ; preds = %pay.int.merge
  br label %choice.exit9

choice.exit19:                                    ; preds = %choice.next21, %choice.case20
  %choice.res = phi i1 [ true, %choice.case20 ], [ false, %choice.next21 ]
  br label %choice.exit9

choice.case20:                                    ; preds = %choice.case10
  br label %choice.exit19

choice.next21:                                    ; preds = %choice.case10
  br label %choice.exit19
}

define internal i1 @"typedopt::#same_scalar_type"(ptr %0, ptr %1) #3 {
entry:
  %var.q = alloca ptr, align 8
  %var._12 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit4
  %choice.res15 = phi i1 [ %choice.res, %choice.exit4 ], [ false, %choice.next ]
  ret i1 %choice.res15

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 0
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ %enum.tag.eq, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  store ptr %payload.ptr11, ptr %var._12, align 8
  store ptr %payload.ptr11, ptr %var.q, align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %var.load14 = load ptr, ptr %var.q, align 8
  %enum.l.tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %enum.l.tag = load i64, ptr %enum.l.tag.gep, align 8
  %enum.r.tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %enum.r.tag = load i64, ptr %enum.r.tag.gep, align 8
  %enum.tag.eq = icmp eq i64 %enum.l.tag, %enum.r.tag
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4
}

define internal ptr @"typedopt::#replace"(ptr %0, ptr %1) #3 {
entry:
  %var.__ctor_arg_115 = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  store ptr %0, ptr %var.orig, align 8
  store ptr %1, ptr %var.value, align 8
  %var.load = load ptr, ptr %var.value, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.__ctor_arg_115, align 8
  %var.load1 = load ptr, ptr %var.__ctor_arg_115, align 8
  %var.load2 = load ptr, ptr %var.orig, align 8
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %var.load5 = load ptr, ptr %var.orig, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load5, i32 0, i32 2
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %var.load8 = load ptr, ptr %var.orig, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %var.load10 = load ptr, ptr %var.orig, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.orig, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load13, i32 0, i32 5
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld16 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load4, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load7, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld18, ptr align 1 %fld.gep9, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld19 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load12, ptr %rec.fld19, align 8
  %rec.fld20 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load15, ptr %rec.fld20, align 8
  ret ptr %rec.alloc
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define internal ptr @"typedopt::#scalar_operand"(ptr %0, ptr %1) #3 {
entry:
  %var.fact = alloca ptr, align 8
  %var._11 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit10
  %choice.res38 = phi ptr [ %choice.res36, %choice.exit10 ], [ %var.load37, %choice.next ]
  ret ptr %choice.res38

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i1, ptr %fld.gep2, align 1
  br i1 %fld.load3, label %choice.then, label %choice.exit4

choice.next:                                      ; preds = %entry
  %var.load37 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.then:                                      ; preds = %choice.case
  %var.load5 = load ptr, ptr %var.e, align 8
  ret ptr %var.load5

choice.exit4:                                     ; preds = %ret.dead, %choice.case
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i1 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %niche.ne.null = icmp ne ptr %fld.load8, null
  br i1 %niche.ne.null, label %choice.then9, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit4

choice.then9:                                     ; preds = %choice.exit4
  store ptr %fld.load8, ptr %var._11, align 8
  store ptr %fld.load8, ptr %var.fact, align 8
  %var.load12 = load ptr, ptr %var.v, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.fact, align 8
  %fld.gep16 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %eq.rhs.len20 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len21 = and i64 %eq.rhs.len20, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len19, %eq.rhs.len21
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.else:                                      ; preds = %choice.exit4
  %var.load35 = load ptr, ptr %var.e, align 8
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else, %choice.exit29
  %choice.res36 = phi ptr [ %choice.res, %choice.exit29 ], [ %var.load35, %choice.else ]
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.then9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %eq.rhs.data23 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data23, i64 %eq.lhs.len19)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.then9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %and.163.then, label %and.163.else

and.163.then:                                     ; preds = %str.eq.merge
  %var.load24 = load ptr, ptr %var.e, align 8
  %var.load25 = load ptr, ptr %var.fact, align 8
  %fld.gep26 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load25, i32 0, i32 1
  %call.res = call i1 @"typedopt::#same_scalar_type"(ptr %var.load24, ptr %fld.gep26)
  br label %and.163.exit

and.163.else:                                     ; preds = %str.eq.merge
  br label %and.163.exit

and.163.exit:                                     ; preds = %and.163.else, %and.163.then
  %and.163.phi = phi i1 [ %call.res, %and.163.then ], [ %str.eq.result, %and.163.else ]
  br i1 %and.163.phi, label %choice.then27, label %choice.else28

choice.then27:                                    ; preds = %and.163.exit
  %var.load30 = load ptr, ptr %var.e, align 8
  %var.load31 = load ptr, ptr %var.fact, align 8
  %fld.gep32 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load31, i32 0, i32 1
  %call.res33 = call ptr @"typedopt::#replace"(ptr %var.load30, ptr %fld.gep32)
  br label %choice.exit29

choice.else28:                                    ; preds = %and.163.exit
  %var.load34 = load ptr, ptr %var.e, align 8
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.else28, %choice.then27
  %choice.res = phi ptr [ %call.res33, %choice.then27 ], [ %var.load34, %choice.else28 ]
  br label %choice.exit10
}

declare i32 @memcmp(ptr, ptr, i64) #3

define internal ptr @"typedopt::#simplify_bin"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #3 {
entry:
  %var.__ctor_arg_201 = alloca ptr, align 8
  %var._207 = alloca ptr, align 8
  %var.__ctor_arg_182 = alloca ptr, align 8
  %var.value = alloca i64, align 8
  %var.lv = alloca i64, align 8
  %var.n122 = alloca i64, align 8
  %var._121 = alloca i64, align 8
  %var._100 = alloca i64, align 8
  %var.r_const = alloca i1, align 1
  %var._80 = alloca i64, align 8
  %var.rv = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var.l = alloca ptr, align 8
  %var.__ctor_arg_149 = alloca ptr, align 8
  %var.eligible = alloca i1, align 1
  %var.rhs = alloca ptr, align 8
  %var.lhs = alloca ptr, align 8
  %var.op = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.orig, align 8
  store ptr %2, ptr %var.op, align 8
  store ptr %3, ptr %var.lhs, align 8
  store ptr %4, ptr %var.rhs, align 8
  %var.load = load ptr, ptr %var.orig, align 8
  %call.res = call i1 @"typedopt::#is_int"(ptr %var.load)
  br i1 %call.res, label %and.164.then, label %and.164.else

and.164.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.lhs, align 8
  %call.res2 = call i1 @"typedopt::#is_int"(ptr %var.load1)
  br label %and.164.exit

and.164.else:                                     ; preds = %entry
  br label %and.164.exit

and.164.exit:                                     ; preds = %and.164.else, %and.164.then
  %and.164.phi = phi i1 [ %call.res2, %and.164.then ], [ %call.res, %and.164.else ]
  br i1 %and.164.phi, label %and.165.then, label %and.165.else

and.165.then:                                     ; preds = %and.164.exit
  %var.load3 = load ptr, ptr %var.rhs, align 8
  %call.res4 = call i1 @"typedopt::#is_int"(ptr %var.load3)
  br label %and.165.exit

and.165.else:                                     ; preds = %and.164.exit
  br label %and.165.exit

and.165.exit:                                     ; preds = %and.165.else, %and.165.then
  %and.165.phi = phi i1 [ %call.res4, %and.165.then ], [ %and.164.phi, %and.165.else ]
  br i1 %and.165.phi, label %and.166.then, label %and.166.else

and.166.then:                                     ; preds = %and.165.exit
  %var.load5 = load ptr, ptr %var.op, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  %tag.match6 = icmp eq i64 %tag.id, 1
  %tag.or = or i1 %tag.match, %tag.match6
  %tag.match7 = icmp eq i64 %tag.id, 2
  %tag.or8 = or i1 %tag.or, %tag.match7
  %tag.match9 = icmp eq i64 %tag.id, 19
  %tag.or10 = or i1 %tag.or8, %tag.match9
  %tag.match11 = icmp eq i64 %tag.id, 20
  %tag.or12 = or i1 %tag.or10, %tag.match11
  %tag.match13 = icmp eq i64 %tag.id, 21
  %tag.or14 = or i1 %tag.or12, %tag.match13
  br i1 %tag.or14, label %choice.case, label %choice.next

and.166.else:                                     ; preds = %and.165.exit
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit
  %and.166.phi = phi i1 [ %choice.res, %choice.exit ], [ %and.165.phi, %and.166.else ]
  store i1 %and.166.phi, ptr %var.eligible, align 1
  %var.load15 = load i1, ptr %var.eligible, align 1
  %nottmp = xor i1 %var.load15, true
  br i1 %nottmp, label %choice.then, label %choice.exit16

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.166.exit

choice.case:                                      ; preds = %and.166.then
  br label %choice.exit

choice.next:                                      ; preds = %and.166.then
  br label %choice.exit

choice.then:                                      ; preds = %and.166.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep17, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load18 = load ptr, ptr %var.op, align 8
  %var.load19 = load ptr, ptr %var.lhs, align 8
  %var.load20 = load ptr, ptr %var.rhs, align 8
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load18, ptr %rec.fld, align 8
  %rec.fld22 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld22, ptr align 1 %var.load19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld23, ptr align 1 %var.load20, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_149, align 8
  %var.load24 = load ptr, ptr %var.__ctor_arg_149, align 8
  %var.load25 = load ptr, ptr %var.orig, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load25, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load26 = load ptr, ptr %var.orig, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %var.load29 = load ptr, ptr %var.orig, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load29, i32 0, i32 3
  %var.load31 = load ptr, ptr %var.orig, align 8
  %fld.gep32 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load31, i32 0, i32 4
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr %var.orig, align 8
  %fld.gep35 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load34, i32 0, i32 5
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld39 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 0
  store ptr %var.load24, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 2
  store ptr %fld.load28, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld42, ptr align 1 %fld.gep30, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 4
  store i64 %fld.load33, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 5
  store i64 %fld.load36, ptr %rec.fld44, align 8
  ret ptr %rec.alloc38

choice.exit16:                                    ; preds = %ret.dead, %and.166.exit
  %var.load45 = load ptr, ptr %var.ctx, align 8
  %var.load46 = load ptr, ptr %var.lhs, align 8
  %call.res47 = call ptr @"typedopt::#scalar_operand"(ptr %var.load45, ptr %var.load46)
  store ptr %call.res47, ptr %var.l, align 8
  %var.load48 = load ptr, ptr %var.ctx, align 8
  %var.load49 = load ptr, ptr %var.rhs, align 8
  %call.res50 = call ptr @"typedopt::#scalar_operand"(ptr %var.load48, ptr %var.load49)
  store ptr %call.res50, ptr %var.r, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 0
  br i1 %tag.match59, label %choice.case55, label %choice.next56

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

choice.exit54:                                    ; preds = %choice.next56, %pay.int.merge
  %choice.res62 = phi i64 [ %var.load61, %pay.int.merge ], [ 0, %choice.next56 ]
  store i64 %choice.res62, ptr %var.rv, align 8
  %var.load63 = load ptr, ptr %var.r, align 8
  %fld.gep64 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load ptr, ptr %fld.gep64, align 8
  %tag.gep69 = getelementptr inbounds { i64, ptr }, ptr %fld.load65, i32 0, i32 0
  %tag.id70 = load i64, ptr %tag.gep69, align 8
  %tag.match71 = icmp eq i64 %tag.id70, 0
  br i1 %tag.match71, label %choice.case67, label %choice.next68

choice.case55:                                    ; preds = %choice.exit16
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next56:                                    ; preds = %choice.exit16
  br label %choice.exit54

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case55
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  store i64 %pay.int.phi, ptr %var.n, align 8
  %var.load61 = load i64, ptr %var.n, align 8
  br label %choice.exit54

choice.exit66:                                    ; preds = %choice.next68, %pay.int.merge77
  %choice.res81 = phi i1 [ true, %pay.int.merge77 ], [ false, %choice.next68 ]
  store i1 %choice.res81, ptr %var.r_const, align 1
  %var.load82 = load i1, ptr %var.r_const, align 1
  br i1 %var.load82, label %and.167.then, label %and.167.else

choice.case67:                                    ; preds = %choice.exit54
  %pay.gep72 = getelementptr inbounds { i64, ptr }, ptr %fld.load65, i32 0, i32 1
  %payload.ptr73 = load ptr, ptr %pay.gep72, align 8
  %pay.int.null74 = icmp eq ptr %payload.ptr73, null
  br i1 %pay.int.null74, label %pay.int.nullbb76, label %pay.int.load75

choice.next68:                                    ; preds = %choice.exit54
  br label %choice.exit66

pay.int.load75:                                   ; preds = %choice.case67
  %pay.int.val78 = load i64, ptr %payload.ptr73, align 8
  br label %pay.int.merge77

pay.int.nullbb76:                                 ; preds = %choice.case67
  br label %pay.int.merge77

pay.int.merge77:                                  ; preds = %pay.int.nullbb76, %pay.int.load75
  %pay.int.phi79 = phi i64 [ %pay.int.val78, %pay.int.load75 ], [ 0, %pay.int.nullbb76 ]
  store i64 %pay.int.phi79, ptr %var._80, align 8
  br label %choice.exit66

and.167.then:                                     ; preds = %choice.exit66
  %var.load83 = load ptr, ptr %var.l, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %tag.gep89 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 0
  %tag.id90 = load i64, ptr %tag.gep89, align 8
  %tag.match91 = icmp eq i64 %tag.id90, 0
  br i1 %tag.match91, label %choice.case87, label %choice.next88

and.167.else:                                     ; preds = %choice.exit66
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.167.else, %choice.exit86
  %and.167.phi = phi i1 [ %choice.res101, %choice.exit86 ], [ %var.load82, %and.167.else ]
  br i1 %and.167.phi, label %choice.then102, label %choice.exit103

choice.exit86:                                    ; preds = %choice.next88, %pay.int.merge97
  %choice.res101 = phi i1 [ true, %pay.int.merge97 ], [ false, %choice.next88 ]
  br label %and.167.exit

choice.case87:                                    ; preds = %and.167.then
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 1
  %payload.ptr93 = load ptr, ptr %pay.gep92, align 8
  %pay.int.null94 = icmp eq ptr %payload.ptr93, null
  br i1 %pay.int.null94, label %pay.int.nullbb96, label %pay.int.load95

choice.next88:                                    ; preds = %and.167.then
  br label %choice.exit86

pay.int.load95:                                   ; preds = %choice.case87
  %pay.int.val98 = load i64, ptr %payload.ptr93, align 8
  br label %pay.int.merge97

pay.int.nullbb96:                                 ; preds = %choice.case87
  br label %pay.int.merge97

pay.int.merge97:                                  ; preds = %pay.int.nullbb96, %pay.int.load95
  %pay.int.phi99 = phi i64 [ %pay.int.val98, %pay.int.load95 ], [ 0, %pay.int.nullbb96 ]
  store i64 %pay.int.phi99, ptr %var._100, align 8
  br label %choice.exit86

choice.then102:                                   ; preds = %and.167.exit
  %var.load104 = load ptr, ptr %var.l, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load104, i32 0, i32 0
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %tag.gep110 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %tag.id111 = load i64, ptr %tag.gep110, align 8
  %tag.match112 = icmp eq i64 %tag.id111, 0
  br i1 %tag.match112, label %choice.case108, label %choice.next109

choice.exit103:                                   ; preds = %ret.dead194, %and.167.exit
  %var.load195 = load i1, ptr %var.r_const, align 1
  br i1 %var.load195, label %and.168.then, label %and.168.else

choice.exit107:                                   ; preds = %choice.next109, %pay.int.merge118
  %choice.res124 = phi i64 [ %var.load123, %pay.int.merge118 ], [ 0, %choice.next109 ]
  store i64 %choice.res124, ptr %var.lv, align 8
  %var.load125 = load ptr, ptr %var.op, align 8
  %tag.gep129 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id130 = load i64, ptr %tag.gep129, align 8
  %tag.match131 = icmp eq i64 %tag.id130, 0
  br i1 %tag.match131, label %choice.case127, label %choice.next128

choice.case108:                                   ; preds = %choice.then102
  %pay.gep113 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %payload.ptr114 = load ptr, ptr %pay.gep113, align 8
  %pay.int.null115 = icmp eq ptr %payload.ptr114, null
  br i1 %pay.int.null115, label %pay.int.nullbb117, label %pay.int.load116

choice.next109:                                   ; preds = %choice.then102
  br label %choice.exit107

pay.int.load116:                                  ; preds = %choice.case108
  %pay.int.val119 = load i64, ptr %payload.ptr114, align 8
  br label %pay.int.merge118

pay.int.nullbb117:                                ; preds = %choice.case108
  br label %pay.int.merge118

pay.int.merge118:                                 ; preds = %pay.int.nullbb117, %pay.int.load116
  %pay.int.phi120 = phi i64 [ %pay.int.val119, %pay.int.load116 ], [ 0, %pay.int.nullbb117 ]
  store i64 %pay.int.phi120, ptr %var._121, align 8
  store i64 %pay.int.phi120, ptr %var.n122, align 8
  %var.load123 = load i64, ptr %var.n122, align 8
  br label %choice.exit107

choice.exit126:                                   ; preds = %choice.next156, %choice.case155, %choice.case148, %choice.case141, %choice.case134, %choice.case127
  %choice.res164 = phi i64 [ %addtmp, %choice.case127 ], [ %subtmp, %choice.case134 ], [ %multmp, %choice.case141 ], [ %bandtmp, %choice.case148 ], [ %bortmp, %choice.case155 ], [ %bxortmp, %choice.next156 ]
  store i64 %choice.res164, ptr %var.value, align 8
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 16)
  %tag.gep167 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc166, i32 0, i32 0
  store i64 0, ptr %tag.gep167, align 8
  %pay.gep168 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc166, i32 0, i32 1
  %var.load169 = load i64, ptr %var.value, align 8
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 %var.load169, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep168, align 8
  store ptr %enum.alloc166, ptr %var.__ctor_arg_182, align 8
  %var.load171 = load ptr, ptr %var.__ctor_arg_182, align 8
  %var.load172 = load ptr, ptr %var.orig, align 8
  %fld.gep173 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load172, i32 0, i32 1
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %var.load175 = load ptr, ptr %var.orig, align 8
  %fld.gep176 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load175, i32 0, i32 2
  %fld.load177 = load ptr, ptr %fld.gep176, align 8
  %var.load178 = load ptr, ptr %var.orig, align 8
  %fld.gep179 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load178, i32 0, i32 3
  %var.load180 = load ptr, ptr %var.orig, align 8
  %fld.gep181 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load180, i32 0, i32 4
  %fld.load182 = load i64, ptr %fld.gep181, align 8
  %var.load183 = load ptr, ptr %var.orig, align 8
  %fld.gep184 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load183, i32 0, i32 5
  %fld.load185 = load i64, ptr %fld.gep184, align 8
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld188 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 0
  store ptr %var.load171, ptr %rec.fld188, align 8
  %rec.fld189 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 1
  store ptr %fld.load174, ptr %rec.fld189, align 8
  %rec.fld190 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 2
  store ptr %fld.load177, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld191, ptr align 1 %fld.gep179, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld192 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 4
  store i64 %fld.load182, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 5
  store i64 %fld.load185, ptr %rec.fld193, align 8
  ret ptr %rec.alloc187

choice.case127:                                   ; preds = %choice.exit107
  %var.load132 = load i64, ptr %var.lv, align 8
  %var.load133 = load i64, ptr %var.rv, align 8
  %addtmp = add i64 %var.load132, %var.load133
  br label %choice.exit126

choice.next128:                                   ; preds = %choice.exit107
  %tag.gep136 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id137 = load i64, ptr %tag.gep136, align 8
  %tag.match138 = icmp eq i64 %tag.id137, 1
  br i1 %tag.match138, label %choice.case134, label %choice.next135

choice.case134:                                   ; preds = %choice.next128
  %var.load139 = load i64, ptr %var.lv, align 8
  %var.load140 = load i64, ptr %var.rv, align 8
  %subtmp = sub i64 %var.load139, %var.load140
  br label %choice.exit126

choice.next135:                                   ; preds = %choice.next128
  %tag.gep143 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id144 = load i64, ptr %tag.gep143, align 8
  %tag.match145 = icmp eq i64 %tag.id144, 2
  br i1 %tag.match145, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next135
  %var.load146 = load i64, ptr %var.lv, align 8
  %var.load147 = load i64, ptr %var.rv, align 8
  %multmp = mul i64 %var.load146, %var.load147
  br label %choice.exit126

choice.next142:                                   ; preds = %choice.next135
  %tag.gep150 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id151 = load i64, ptr %tag.gep150, align 8
  %tag.match152 = icmp eq i64 %tag.id151, 19
  br i1 %tag.match152, label %choice.case148, label %choice.next149

choice.case148:                                   ; preds = %choice.next142
  %var.load153 = load i64, ptr %var.lv, align 8
  %var.load154 = load i64, ptr %var.rv, align 8
  %bandtmp = and i64 %var.load153, %var.load154
  br label %choice.exit126

choice.next149:                                   ; preds = %choice.next142
  %tag.gep157 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id158 = load i64, ptr %tag.gep157, align 8
  %tag.match159 = icmp eq i64 %tag.id158, 20
  br i1 %tag.match159, label %choice.case155, label %choice.next156

choice.case155:                                   ; preds = %choice.next149
  %var.load160 = load i64, ptr %var.lv, align 8
  %var.load161 = load i64, ptr %var.rv, align 8
  %bortmp = or i64 %var.load160, %var.load161
  br label %choice.exit126

choice.next156:                                   ; preds = %choice.next149
  %var.load162 = load i64, ptr %var.lv, align 8
  %var.load163 = load i64, ptr %var.rv, align 8
  %bxortmp = xor i64 %var.load162, %var.load163
  br label %choice.exit126

ret.dead194:                                      ; No predecessors!
  br label %choice.exit103

and.168.then:                                     ; preds = %choice.exit103
  %var.load196 = load ptr, ptr %var.l, align 8
  %fld.gep197 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load196, i32 0, i32 0
  %fld.load198 = load ptr, ptr %fld.gep197, align 8
  %tag.gep202 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 0
  %tag.id203 = load i64, ptr %tag.gep202, align 8
  %tag.match204 = icmp eq i64 %tag.id203, 6
  br i1 %tag.match204, label %choice.case200, label %choice.next201

and.168.else:                                     ; preds = %choice.exit103
  br label %and.168.exit

and.168.exit:                                     ; preds = %and.168.else, %choice.exit199
  %and.168.phi = phi i1 [ %choice.res208, %choice.exit199 ], [ %var.load195, %and.168.else ]
  br i1 %and.168.phi, label %and.169.then, label %and.169.else

choice.exit199:                                   ; preds = %choice.next201, %choice.case200
  %choice.res208 = phi i1 [ true, %choice.case200 ], [ false, %choice.next201 ]
  br label %and.168.exit

choice.case200:                                   ; preds = %and.168.then
  %pay.gep205 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 1
  %payload.ptr206 = load ptr, ptr %pay.gep205, align 8
  store ptr %payload.ptr206, ptr %var._207, align 8
  br label %choice.exit199

choice.next201:                                   ; preds = %and.168.then
  br label %choice.exit199

and.169.then:                                     ; preds = %and.168.exit
  %var.load209 = load i64, ptr %var.rv, align 8
  %cmptmp = icmp eq i64 %var.load209, 0
  br i1 %cmptmp, label %and.170.then, label %and.170.else

and.169.else:                                     ; preds = %and.168.exit
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %or.171.exit
  %and.169.phi = phi i1 [ %or.171.phi, %or.171.exit ], [ %and.168.phi, %and.169.else ]
  br i1 %and.169.phi, label %choice.then234, label %choice.exit235

and.170.then:                                     ; preds = %and.169.then
  %var.load210 = load ptr, ptr %var.op, align 8
  %tag.gep214 = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 0
  %tag.id215 = load i64, ptr %tag.gep214, align 8
  %tag.match216 = icmp eq i64 %tag.id215, 0
  %tag.match217 = icmp eq i64 %tag.id215, 1
  %tag.or218 = or i1 %tag.match216, %tag.match217
  %tag.match219 = icmp eq i64 %tag.id215, 20
  %tag.or220 = or i1 %tag.or218, %tag.match219
  %tag.match221 = icmp eq i64 %tag.id215, 21
  %tag.or222 = or i1 %tag.or220, %tag.match221
  br i1 %tag.or222, label %choice.case212, label %choice.next213

and.170.else:                                     ; preds = %and.169.then
  br label %and.170.exit

and.170.exit:                                     ; preds = %and.170.else, %choice.exit211
  %and.170.phi = phi i1 [ %choice.res223, %choice.exit211 ], [ %cmptmp, %and.170.else ]
  br i1 %and.170.phi, label %or.171.then, label %or.171.else

choice.exit211:                                   ; preds = %choice.next213, %choice.case212
  %choice.res223 = phi i1 [ true, %choice.case212 ], [ false, %choice.next213 ]
  br label %and.170.exit

choice.case212:                                   ; preds = %and.170.then
  br label %choice.exit211

choice.next213:                                   ; preds = %and.170.then
  br label %choice.exit211

or.171.then:                                      ; preds = %and.170.exit
  br label %or.171.exit

or.171.else:                                      ; preds = %and.170.exit
  %var.load224 = load i64, ptr %var.rv, align 8
  %cmptmp225 = icmp eq i64 %var.load224, 1
  br i1 %cmptmp225, label %and.172.then, label %and.172.else

or.171.exit:                                      ; preds = %and.172.exit, %or.171.then
  %or.171.phi = phi i1 [ %and.170.phi, %or.171.then ], [ %and.172.phi, %and.172.exit ]
  br label %and.169.exit

and.172.then:                                     ; preds = %or.171.else
  %var.load226 = load ptr, ptr %var.op, align 8
  %tag.gep230 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %tag.id231 = load i64, ptr %tag.gep230, align 8
  %tag.match232 = icmp eq i64 %tag.id231, 2
  br i1 %tag.match232, label %choice.case228, label %choice.next229

and.172.else:                                     ; preds = %or.171.else
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %choice.exit227
  %and.172.phi = phi i1 [ %choice.res233, %choice.exit227 ], [ %cmptmp225, %and.172.else ]
  br label %or.171.exit

choice.exit227:                                   ; preds = %choice.next229, %choice.case228
  %choice.res233 = phi i1 [ true, %choice.case228 ], [ false, %choice.next229 ]
  br label %and.172.exit

choice.case228:                                   ; preds = %and.172.then
  br label %choice.exit227

choice.next229:                                   ; preds = %and.172.then
  br label %choice.exit227

choice.then234:                                   ; preds = %and.169.exit
  %var.load236 = load ptr, ptr %var.orig, align 8
  %var.load237 = load ptr, ptr %var.l, align 8
  %call.res238 = call ptr @"typedopt::#replace"(ptr %var.load236, ptr %var.load237)
  ret ptr %call.res238

choice.exit235:                                   ; preds = %ret.dead239, %and.169.exit
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 16)
  %tag.gep242 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc241, i32 0, i32 0
  store i64 7, ptr %tag.gep242, align 8
  %pay.gep243 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc241, i32 0, i32 1
  %var.load244 = load ptr, ptr %var.op, align 8
  %var.load245 = load ptr, ptr %var.l, align 8
  %var.load246 = load ptr, ptr %var.r, align 8
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld249 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 0
  store ptr %var.load244, ptr %rec.fld249, align 8
  %rec.fld250 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld250, ptr align 1 %var.load245, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld251 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld251, ptr align 1 %var.load246, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc248, ptr %pay.gep243, align 8
  store ptr %enum.alloc241, ptr %var.__ctor_arg_201, align 8
  %var.load252 = load ptr, ptr %var.__ctor_arg_201, align 8
  %var.load253 = load ptr, ptr %var.orig, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load253, i32 0, i32 1
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %var.load256 = load ptr, ptr %var.orig, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load256, i32 0, i32 2
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.orig, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load259, i32 0, i32 3
  %var.load261 = load ptr, ptr %var.orig, align 8
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load261, i32 0, i32 4
  %fld.load263 = load i64, ptr %fld.gep262, align 8
  %var.load264 = load ptr, ptr %var.orig, align 8
  %fld.gep265 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load264, i32 0, i32 5
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld269 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 0
  store ptr %var.load252, ptr %rec.fld269, align 8
  %rec.fld270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 1
  store ptr %fld.load255, ptr %rec.fld270, align 8
  %rec.fld271 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 2
  store ptr %fld.load258, ptr %rec.fld271, align 8
  %rec.fld272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld272, ptr align 1 %fld.gep260, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld273 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 4
  store i64 %fld.load263, ptr %rec.fld273, align 8
  %rec.fld274 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 5
  store i64 %fld.load266, ptr %rec.fld274, align 8
  ret ptr %rec.alloc268

ret.dead239:                                      ; No predecessors!
  br label %choice.exit235
}

define internal ptr @"typedopt::#simplify_member"(ptr %0, ptr %1, ptr %2, i64 %3) #3 {
entry:
  %var.value = alloca ptr, align 8
  %var._117 = alloca ptr, align 8
  %var._i116 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.175 = alloca i64, align 8
  %loop.idx.175 = alloca i64, align 8
  %var.fields = alloca ptr, align 8
  %var._86 = alloca ptr, align 8
  %var.plain = alloca i1, align 1
  %var.r = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var.position = alloca i64, align 8
  %var._46 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.byte = alloca i64, align 8
  %loop.step.173 = alloca i64, align 8
  %loop.idx.173 = alloca i64, align 8
  %var.fallback = alloca ptr, align 8
  %var.__ctor_arg_207 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  store ptr %0, ptr %var.orig, align 8
  store ptr %1, ptr %var.target, align 8
  store ptr %2, ptr %var.name, align 8
  store i64 %3, ptr %var.idx, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 11, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.target, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld, ptr align 1 %var.load, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld4 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_207, align 8
  %var.load6 = load ptr, ptr %var.__ctor_arg_207, align 8
  %var.load7 = load ptr, ptr %var.orig, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load8 = load ptr, ptr %var.orig, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load8, i32 0, i32 2
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %var.load11 = load ptr, ptr %var.orig, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load11, i32 0, i32 3
  %var.load13 = load ptr, ptr %var.orig, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %var.load16 = load ptr, ptr %var.orig, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load16, i32 0, i32 5
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld21 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 0
  store ptr %var.load6, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 2
  store ptr %fld.load10, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld24, ptr align 1 %fld.gep12, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld25 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 4
  store i64 %fld.load15, ptr %rec.fld25, align 8
  %rec.fld26 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 5
  store i64 %fld.load18, ptr %rec.fld26, align 8
  store ptr %rec.alloc20, ptr %var.fallback, align 8
  %var.load27 = load ptr, ptr %var.name, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len28 = load i64, ptr %str.len, align 8
  %str.len29 = and i64 %str.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.header.173:                                  ; preds = %loop.latch.173, %entry
  %counter.load = load i64, ptr %loop.idx.173, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len29
  br i1 %loop.cond, label %loop.body.173, label %loop.exit.nat.173

loop.body.173:                                    ; preds = %loop.header.173
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.173, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.byte, align 8
  %var.load31 = load i64, ptr %var.byte, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load31)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.173:                                ; preds = %loop.header.173
  br label %loop.exit.173

loop.latch.173:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.173, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.exit.173:                                    ; preds = %loop.exit.nat.173
  %var.load33 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len36 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len35, %eq.rhs.len36
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.then:                                      ; preds = %loop.body.173
  %var.load32 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load32

choice.exit:                                      ; preds = %ret.dead, %loop.body.173
  br label %loop.latch.173

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %loop.exit.173
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.lhs.data37 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr %eq.rhs.data, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.exit.173
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then38, label %choice.else

choice.then38:                                    ; preds = %str.eq.merge
  %var.load40 = load i64, ptr %var.idx, align 8
  br label %choice.exit39

choice.else:                                      ; preds = %str.eq.merge
  %var.load41 = load ptr, ptr %var.name, align 8
  %call.res42 = call { i1, i64 } @"str::parse_int"(ptr %var.load41)
  %ram.tag = extractvalue { i1, i64 } %call.res42, 0
  br i1 %ram.tag, label %choice.then43, label %choice.else44

choice.exit39:                                    ; preds = %choice.exit45, %choice.then38
  %choice.res47 = phi i64 [ %var.load40, %choice.then38 ], [ %choice.res, %choice.exit45 ]
  store i64 %choice.res47, ptr %var.position, align 8
  %var.load48 = load i64, ptr %var.position, align 8
  %cmptmp = icmp slt i64 %var.load48, 0
  br i1 %cmptmp, label %choice.then49, label %choice.exit50

choice.then43:                                    ; preds = %choice.else
  %ram.pay = extractvalue { i1, i64 } %call.res42, 1
  store i64 %ram.pay, ptr %var._46, align 8
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.else
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.else44, %choice.then43
  %choice.res = phi i64 [ %ram.pay, %choice.then43 ], [ -1, %choice.else44 ]
  br label %choice.exit39

choice.then49:                                    ; preds = %choice.exit39
  %var.load51 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load51

choice.exit50:                                    ; preds = %ret.dead52, %choice.exit39
  %var.load53 = load ptr, ptr %var.target, align 8
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load53, i32 0, i32 2
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep57, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.next

ret.dead52:                                       ; No predecessors!
  br label %choice.exit50

choice.exit56:                                    ; preds = %choice.next, %and.174.exit
  %choice.res68 = phi i1 [ %and.174.phi, %and.174.exit ], [ false, %choice.next ]
  store i1 %choice.res68, ptr %var.plain, align 1
  %var.load69 = load i1, ptr %var.plain, align 1
  %nottmp70 = xor i1 %var.load69, true
  br i1 %nottmp70, label %choice.then71, label %choice.exit72

choice.case:                                      ; preds = %choice.exit50
  %pay.gep58 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep58, align 8
  store ptr %payload.ptr, ptr %var._59, align 8
  store ptr %payload.ptr, ptr %var.r, align 8
  %var.load60 = load ptr, ptr %var.r, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %var.load60, i32 0, i32 1
  %fld.load62 = load i1, ptr %fld.gep61, align 1
  %nottmp63 = xor i1 %fld.load62, true
  br i1 %nottmp63, label %and.174.then, label %and.174.else

choice.next:                                      ; preds = %choice.exit50
  br label %choice.exit56

and.174.then:                                     ; preds = %choice.case
  %var.load64 = load ptr, ptr %var.r, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %var.load64, i32 0, i32 5
  %fld.load66 = load i1, ptr %fld.gep65, align 1
  %nottmp67 = xor i1 %fld.load66, true
  br label %and.174.exit

and.174.else:                                     ; preds = %choice.case
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %and.174.then
  %and.174.phi = phi i1 [ %nottmp67, %and.174.then ], [ %nottmp63, %and.174.else ]
  br label %choice.exit56

choice.then71:                                    ; preds = %choice.exit56
  %var.load73 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load73

choice.exit72:                                    ; preds = %ret.dead74, %choice.exit56
  %var.load75 = load ptr, ptr %var.target, align 8
  %fld.gep76 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load75, i32 0, i32 0
  %fld.load77 = load ptr, ptr %fld.gep76, align 8
  %tag.gep81 = getelementptr inbounds { i64, ptr }, ptr %fld.load77, i32 0, i32 0
  %tag.id82 = load i64, ptr %tag.gep81, align 8
  %tag.match83 = icmp eq i64 %tag.id82, 10
  br i1 %tag.match83, label %choice.case79, label %choice.next80

ret.dead74:                                       ; No predecessors!
  br label %choice.exit72

choice.exit78:                                    ; preds = %choice.next80, %choice.exit193
  %choice.res200 = phi ptr [ %choice.res198, %choice.exit193 ], [ %var.load199, %choice.next80 ]
  ret ptr %choice.res200

choice.case79:                                    ; preds = %choice.exit72
  %pay.gep84 = getelementptr inbounds { i64, ptr }, ptr %fld.load77, i32 0, i32 1
  %payload.ptr85 = load ptr, ptr %pay.gep84, align 8
  store ptr %payload.ptr85, ptr %var._86, align 8
  store ptr %payload.ptr85, ptr %var.fields, align 8
  %var.load87 = load i64, ptr %var.position, align 8
  %var.load88 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next80:                                    ; preds = %choice.exit72
  %var.load199 = load ptr, ptr %var.fallback, align 8
  br label %choice.exit78

a.create:                                         ; preds = %choice.case79
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create90, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case79
  %a.load2 = load ptr, ptr %var.fields, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query92 = load i64, ptr %a.len.query, align 8
  %cmptmp93 = icmp sge i64 %var.load87, %a.len.query92
  br i1 %cmptmp93, label %choice.then94, label %choice.exit95

choice.then94:                                    ; preds = %a.after
  %var.load96 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load96

choice.exit95:                                    ; preds = %ret.dead97, %a.after
  %var.load98 = load ptr, ptr %var.fields, align 8
  %a.load99 = load ptr, ptr %var.fields, align 8
  %a.null100 = icmp eq ptr %a.load99, null
  br i1 %a.null100, label %a.create101, label %a.after102

ret.dead97:                                       ; No predecessors!
  br label %choice.exit95

a.create101:                                      ; preds = %choice.exit95
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 24)
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 128)
  %a.len.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 0
  store i64 0, ptr %a.len.gep107, align 8
  %a.data.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 1
  store ptr %a.buf106, ptr %a.data.gep108, align 8
  %a.cap.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 2
  store i64 16, ptr %a.cap.gep109, align 8
  store ptr %a.create104, ptr %var.fields, align 8
  br label %a.after102

a.after102:                                       ; preds = %a.create101, %choice.exit95
  %a.load2110 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 0
  %arr.cycle.len111 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 1
  %arr.cycle.data112 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.175, align 8
  %cycle.prev.u = load ptr, ptr %var._86, align 8
  br label %loop.header.175

loop.header.175:                                  ; preds = %loop.latch.175, %a.after102
  %counter.load113 = load i64, ptr %loop.idx.175, align 8
  %loop.cond114 = icmp slt i64 %counter.load113, %arr.cycle.len111
  br i1 %loop.cond114, label %loop.body.175, label %loop.exit.nat.175

loop.body.175:                                    ; preds = %loop.header.175
  %loop.rel.i115 = sub i64 %counter.load113, 0
  store i64 1, ptr %loop.step.175, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data112, i64 %counter.load113
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i115, ptr %var._i116, align 8
  store ptr %slot.i2p, ptr %var._117, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load118 = load ptr, ptr %var.f, align 8
  %fld.gep119 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load118, i32 0, i32 0
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %eq.lhs.len121 = getelementptr inbounds { i64, ptr }, ptr %fld.load120, i32 0, i32 0
  %eq.lhs.len122 = load i64, ptr %eq.lhs.len121, align 8
  %eq.lhs.len123 = and i64 %eq.lhs.len122, 281474976710655
  %eq.rhs.len124 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len125 = and i64 %eq.rhs.len124, 281474976710655
  %eq.len126 = icmp eq i64 %eq.lhs.len123, %eq.rhs.len125
  br i1 %eq.len126, label %str.eq.then127, label %str.eq.else128

loop.exit.nat.175:                                ; preds = %loop.header.175
  br label %loop.exit.175

loop.latch.175:                                   ; preds = %choice.exit141
  %step.val144 = load i64, ptr %loop.step.175, align 8
  %loop.next145 = add i64 %counter.load113, %step.val144
  store i64 %loop.next145, ptr %loop.idx.175, align 8
  br label %loop.header.175

loop.exit.175:                                    ; preds = %loop.exit.nat.175
  store ptr %cycle.prev.u, ptr %var._86, align 8
  %var.load146 = load ptr, ptr %var.fields, align 8
  %a.load147 = load ptr, ptr %var.fields, align 8
  %a.null148 = icmp eq ptr %a.load147, null
  br i1 %a.null148, label %a.create149, label %a.after150

str.eq.then127:                                   ; preds = %loop.body.175
  %eq.lhs.data130 = getelementptr inbounds { i64, ptr }, ptr %fld.load120, i32 0, i32 1
  %eq.lhs.data131 = load ptr, ptr %eq.lhs.data130, align 8
  %eq.rhs.data132 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp133 = call i32 @memcmp(ptr %eq.lhs.data131, ptr %eq.rhs.data132, i64 %eq.lhs.len123)
  %eq.cmp.zero134 = icmp eq i32 %eq.memcmp133, 0
  br label %str.eq.merge129

str.eq.else128:                                   ; preds = %loop.body.175
  br label %str.eq.merge129

str.eq.merge129:                                  ; preds = %str.eq.else128, %str.eq.then127
  %str.eq.result135 = phi i1 [ %eq.cmp.zero134, %str.eq.then127 ], [ false, %str.eq.else128 ]
  %str.neq = xor i1 %str.eq.result135, true
  br i1 %str.neq, label %or.176.then, label %or.176.else

or.176.then:                                      ; preds = %str.eq.merge129
  br label %or.176.exit

or.176.else:                                      ; preds = %str.eq.merge129
  %var.load136 = load ptr, ptr %var.f, align 8
  %fld.gep137 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load136, i32 0, i32 1
  %call.res138 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep137)
  %nottmp139 = xor i1 %call.res138, true
  br label %or.176.exit

or.176.exit:                                      ; preds = %or.176.else, %or.176.then
  %or.176.phi = phi i1 [ %str.neq, %or.176.then ], [ %nottmp139, %or.176.else ]
  br i1 %or.176.phi, label %choice.then140, label %choice.exit141

choice.then140:                                   ; preds = %or.176.exit
  %var.load142 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load142

choice.exit141:                                   ; preds = %ret.dead143, %or.176.exit
  br label %loop.latch.175

ret.dead143:                                      ; No predecessors!
  br label %choice.exit141

a.create149:                                      ; preds = %loop.exit.175
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 24)
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 128)
  %a.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 0
  store i64 0, ptr %a.len.gep155, align 8
  %a.data.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 1
  store ptr %a.buf154, ptr %a.data.gep156, align 8
  %a.cap.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 2
  store i64 16, ptr %a.cap.gep157, align 8
  store ptr %a.create152, ptr %var.fields, align 8
  br label %a.after150

a.after150:                                       ; preds = %a.create149, %loop.exit.175
  %a.load2158 = load ptr, ptr %var.fields, align 8
  %var.load159 = load i64, ptr %var.position, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2158, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after150
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 0
  %a.rd.len160 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load159, 0
  %a.rd.lt = icmp slt i64 %var.load159, %a.rd.len160
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 1
  %a.rd.data161 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data161, i64 %var.load159
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after150
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 84, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 37, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 56)
  %err.code.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 0
  store i64 4011, ptr %err.code.gep165, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep166, align 8
  %err.file.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep167, align 8
  %err.line.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 3
  store i64 84, ptr %err.line.gep168, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 4
  store i64 37, ptr %err.col.gep169, align 8
  %err.ctx.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 5
  %err.ctx0.gep171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 0
  store i64 %var.load159, ptr %err.ctx0.gep171, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 1
  store i64 %a.rd.len160, ptr %err.ctx1.gep172, align 8
  %err.p2i173 = ptrtoint ptr %err.alloc164 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i173, %a.rd.err.oob ]
  %ram.tag174 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay175 = insertvalue { i1, i64 } %ram.tag174, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay175, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.177, label %unwrap.abort.177

unwrap.pos.177:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay175, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %fld.gep187 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  store ptr %fld.gep187, ptr %var.value, align 8
  %var.load188 = load ptr, ptr %var.orig, align 8
  %var.load189 = load ptr, ptr %var.value, align 8
  %call.res190 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load188, ptr %var.load189)
  br i1 %call.res190, label %choice.then191, label %choice.else192

unwrap.abort.177:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay175, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep176, align 8
  %err.msg.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep177, align 8
  %err.file.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep178, align 8
  %err.line.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep179, align 8
  %err.col.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep180, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len181 = load i64, ptr %err.msg.len, align 8
  %err.msg.len182 = and i64 %err.msg.len181, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len182 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data183 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len184 = load i64, ptr %err.file.len, align 8
  %err.file.len185 = and i64 %err.file.len184, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len185 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data186 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.177
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.177
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data183, i32 %err.file.len32, ptr %err.file.data186, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then191:                                   ; preds = %unwrap.pos.177
  %var.load194 = load ptr, ptr %var.orig, align 8
  %var.load195 = load ptr, ptr %var.value, align 8
  %call.res196 = call ptr @"typedopt::#replace"(ptr %var.load194, ptr %var.load195)
  br label %choice.exit193

choice.else192:                                   ; preds = %unwrap.pos.177
  %var.load197 = load ptr, ptr %var.fallback, align 8
  br label %choice.exit193

choice.exit193:                                   ; preds = %choice.else192, %choice.then191
  %choice.res198 = phi ptr [ %call.res196, %choice.then191 ], [ %var.load197, %choice.else192 ]
  br label %choice.exit78
}

declare i1 @"str::is_digit"(i64) #3

declare { i1, i64 } @"str::parse_int"(ptr) #3

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

define internal i1 @"typedopt::#wide_int"(ptr %0) #3 {
entry:
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call i1 @"typedopt::#is_int"(ptr %var.load)
  br i1 %call.res, label %and.178.then, label %and.178.else

and.178.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load1, i32 0, i32 3
  %fld.gep2 = getelementptr inbounds { i64, i64, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp eq i64 %fld.load, 8
  br label %and.178.exit

and.178.else:                                     ; preds = %entry
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %and.178.then
  %and.178.phi = phi i1 [ %cmptmp, %and.178.then ], [ %call.res, %and.178.else ]
  ret i1 %and.178.phi
}

define internal i1 @"typedopt::#int_array"(ptr %0) #3 {
entry:
  %var.p = alloca ptr, align 8
  %var._19 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  store ptr %0, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.ti, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %and.179.exit
  %choice.res29 = phi i1 [ %and.179.phi, %and.179.exit ], [ false, %choice.next ]
  ret i1 %choice.res29

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.exit2:                                     ; preds = %choice.next4, %choice.case3
  %choice.res = phi i1 [ true, %choice.case3 ], [ false, %choice.next4 ]
  br i1 %choice.res, label %and.179.then, label %and.179.else

choice.case3:                                     ; preds = %choice.case
  br label %choice.exit2

choice.next4:                                     ; preds = %choice.case
  br label %choice.exit2

and.179.then:                                     ; preds = %choice.exit2
  %var.load8 = load ptr, ptr %var.a, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load8, i32 0, i32 1
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %tag.gep14 = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %tag.id15 = load i64, ptr %tag.gep14, align 8
  %tag.match16 = icmp eq i64 %tag.id15, 0
  br i1 %tag.match16, label %choice.case12, label %choice.next13

and.179.else:                                     ; preds = %choice.exit2
  br label %and.179.exit

and.179.exit:                                     ; preds = %and.179.else, %choice.exit11
  %and.179.phi = phi i1 [ %choice.res28, %choice.exit11 ], [ %choice.res, %and.179.else ]
  br label %choice.exit

choice.exit11:                                    ; preds = %choice.next13, %choice.exit21
  %choice.res28 = phi i1 [ %choice.res27, %choice.exit21 ], [ false, %choice.next13 ]
  br label %and.179.exit

choice.case12:                                    ; preds = %and.179.then
  %pay.gep17 = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %payload.ptr18 = load ptr, ptr %pay.gep17, align 8
  store ptr %payload.ptr18, ptr %var._19, align 8
  store ptr %payload.ptr18, ptr %var.p, align 8
  %var.load20 = load ptr, ptr %var.p, align 8
  %tag.gep24 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %tag.id25 = load i64, ptr %tag.gep24, align 8
  %tag.match26 = icmp eq i64 %tag.id25, 1
  br i1 %tag.match26, label %choice.case22, label %choice.next23

choice.next13:                                    ; preds = %and.179.then
  br label %choice.exit11

choice.exit21:                                    ; preds = %choice.next23, %choice.case22
  %choice.res27 = phi i1 [ true, %choice.case22 ], [ false, %choice.next23 ]
  br label %choice.exit11

choice.case22:                                    ; preds = %choice.case12
  br label %choice.exit21

choice.next23:                                    ; preds = %choice.case12
  br label %choice.exit21
}

define internal ptr @"typedopt::#read_var"(ptr %0, ptr %1, i1 %2) #3 {
entry:
  %var.__ctor_arg_267 = alloca ptr, align 8
  %var.mut = alloca i1, align 1
  %var.e = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.e, align 8
  store i1 %2, ptr %var.mut, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load i1, ptr %var.mut, align 1
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load1, ptr %rec.fld4, align 1
  store ptr %rec.alloc, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_267, align 8
  %var.load5 = load ptr, ptr %var.__ctor_arg_267, align 8
  %var.load6 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load6, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load7, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.e, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load10, i32 0, i32 3
  %var.load12 = load ptr, ptr %var.e, align 8
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load12, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.e, align 8
  %fld.gep16 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load15, i32 0, i32 5
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld20 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 0
  store ptr %var.load5, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 2
  store ptr %fld.load9, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld23, ptr align 1 %fld.gep11, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld24 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 4
  store i64 %fld.load14, ptr %rec.fld24, align 8
  %rec.fld25 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc19, i32 0, i32 5
  store i64 %fld.load17, ptr %rec.fld25, align 8
  ret ptr %rec.alloc19
}

define internal ptr @"typedopt::#write_var"(ptr %0, i1 %1, ptr %2) #3 {
entry:
  %var.unit = alloca ptr, align 8
  %var.rhs = alloca ptr, align 8
  %var.mut = alloca i1, align 1
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i1 %1, ptr %var.mut, align 1
  store ptr %2, ptr %var.rhs, align 8
  %call.res = call ptr @"tast::mk_lit_unit"(i64 0, i64 0)
  store ptr %call.res, ptr %var.unit, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load i1, ptr %var.mut, align 1
  %var.load2 = load ptr, ptr %var.rhs, align 8
  %var.load3 = load ptr, ptr %var.unit, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %var.unit, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.unit, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load7, i32 0, i32 3
  %call.res9 = call ptr @"tast::mk_typed_assign"(ptr %var.load, i1 %var.load1, i1 false, i1 false, i1 false, ptr %var.load2, ptr %fld.load, ptr %fld.load6, ptr %fld.gep8, i64 0, i64 0)
  ret ptr %call.res9
}

declare ptr @"tast::mk_lit_unit"(i64, i64) #3

declare ptr @"tast::mk_typed_assign"(ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64) #3

define internal ptr @"typedopt::#read_stage"(ptr %0) #3 {
entry:
  %var.s = alloca ptr, align 8
  %var._1004 = alloca ptr, align 8
  %var.unpacked = alloca ptr, align 8
  %var.acc = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  %var.v767 = alloca ptr, align 8
  %var._766 = alloca ptr, align 8
  %var.a753 = alloca ptr, align 8
  %var._752 = alloca ptr, align 8
  %var.bind = alloca ptr, align 8
  %var.b634 = alloca ptr, align 8
  %var._633 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var._518 = alloca ptr, align 8
  %var._515 = alloca ptr, align 8
  %var.p0 = alloca ptr, align 8
  %var._464 = alloca ptr, align 8
  %var._461 = alloca ptr, align 8
  %var.lam = alloca ptr, align 8
  %var._411 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._389 = alloca ptr, align 8
  %var.expected_prefix = alloca ptr, align 8
  %var.collects = alloca i1, align 1
  %var._360 = alloca ptr, align 8
  %var.initial = alloca ptr, align 8
  %var.a341 = alloca ptr, align 8
  %var._340 = alloca ptr, align 8
  %var.init_ok = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._288 = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._264 = alloca ptr, align 8
  %var.result = alloca ptr, align 8
  %var.cycle = alloca ptr, align 8
  %var.init = alloca ptr, align 8
  %var.parts = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._13 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 17
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit1

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  ret ptr null

choice.exit1:                                     ; preds = %ret.dead, %choice.exit
  %var.load2 = load ptr, ptr %var.e, align 8
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 0
  %tag.id9 = load i64, ptr %tag.gep8, align 8
  %tag.match10 = icmp eq i64 %tag.id9, 17
  br i1 %tag.match10, label %choice.case6, label %choice.next7

ret.dead:                                         ; No predecessors!
  br label %choice.exit1

choice.exit5:                                     ; preds = %choice.next7, %a.after
  %choice.res23 = phi ptr [ %a.load2, %a.after ], [ %a.new, %choice.next7 ]
  store ptr %choice.res23, ptr %var.parts, align 8
  %var.load24 = load ptr, ptr %var.parts, align 8
  %a.load25 = load ptr, ptr %var.parts, align 8
  %a.null26 = icmp eq ptr %a.load25, null
  br i1 %a.null26, label %a.create27, label %a.after28

choice.case6:                                     ; preds = %choice.exit1
  %pay.gep11 = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 1
  %payload.ptr12 = load ptr, ptr %pay.gep11, align 8
  store ptr %payload.ptr12, ptr %var._13, align 8
  store ptr %payload.ptr12, ptr %var.b, align 8
  %var.load14 = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next7:                                     ; preds = %choice.exit1
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  br label %choice.exit5

a.create:                                         ; preds = %choice.case6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create15, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case6
  %a.load2 = load ptr, ptr %var.b, align 8
  br label %choice.exit5

a.create27:                                       ; preds = %choice.exit5
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.parts, align 8
  br label %a.after28

a.after28:                                        ; preds = %a.create27, %choice.exit5
  %a.load236 = load ptr, ptr %var.parts, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load236, i32 0, i32 0
  %a.len.query37 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp ne i64 %a.len.query37, 3
  br i1 %cmptmp, label %choice.then38, label %choice.exit39

choice.then38:                                    ; preds = %a.after28
  ret ptr null

choice.exit39:                                    ; preds = %ret.dead40, %a.after28
  %var.load41 = load ptr, ptr %var.parts, align 8
  %a.load42 = load ptr, ptr %var.parts, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

ret.dead40:                                       ; No predecessors!
  br label %choice.exit39

a.create44:                                       ; preds = %choice.exit39
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr %var.parts, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %choice.exit39
  %a.load253 = load ptr, ptr %var.parts, align 8
  %a.rd.nonnull = icmp ne ptr %a.load253, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after45
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.rd.len54 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len54
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 1
  %a.rd.data55 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data55, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after45
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 118, ptr %err.line.gep, align 8
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
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 56)
  %err.code.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 0
  store i64 4011, ptr %err.code.gep59, align 8
  %err.msg.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep60, align 8
  %err.file.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep61, align 8
  %err.line.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 3
  store i64 118, ptr %err.line.gep62, align 8
  %err.col.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 4
  store i64 22, ptr %err.col.gep63, align 8
  %err.ctx.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 5
  %err.ctx0.gep65 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep64, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep65, align 8
  %err.ctx1.gep66 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep64, i32 0, i32 1
  store i64 %a.rd.len54, ptr %err.ctx1.gep66, align 8
  %err.p2i67 = ptrtoint ptr %err.alloc58 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i67, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.181, label %unwrap.abort.181

unwrap.pos.181:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.init, align 8
  %var.load79 = load ptr, ptr %var.parts, align 8
  %a.load80 = load ptr, ptr %var.parts, align 8
  %a.null81 = icmp eq ptr %a.load80, null
  br i1 %a.null81, label %a.create82, label %a.after83

unwrap.abort.181:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep68, align 8
  %err.msg.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep69, align 8
  %err.file.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep70, align 8
  %err.line.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep71, align 8
  %err.col.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep72, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len73 = load i64, ptr %err.msg.len, align 8
  %err.msg.len74 = and i64 %err.msg.len73, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len74 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data75 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len76 = load i64, ptr %err.file.len, align 8
  %err.file.len77 = and i64 %err.file.len76, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len77 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data78 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.181
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.181
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data75, i32 %err.file.len32, ptr %err.file.data78, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create82:                                       ; preds = %unwrap.pos.181
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 24)
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 128)
  %a.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 0
  store i64 0, ptr %a.len.gep88, align 8
  %a.data.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 1
  store ptr %a.buf87, ptr %a.data.gep89, align 8
  %a.cap.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 2
  store i64 16, ptr %a.cap.gep90, align 8
  store ptr %a.create85, ptr %var.parts, align 8
  br label %a.after83

a.after83:                                        ; preds = %a.create82, %unwrap.pos.181
  %a.load291 = load ptr, ptr %var.parts, align 8
  %a.rd.nonnull92 = icmp ne ptr %a.load291, null
  br i1 %a.rd.nonnull92, label %a.rd.check93, label %a.rd.err.null95

a.rd.check93:                                     ; preds = %a.after83
  %a.rd.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load291, i32 0, i32 0
  %a.rd.len99 = load i64, ptr %a.rd.len98, align 8
  %a.rd.lt100 = icmp slt i64 1, %a.rd.len99
  %a.rd.bounds101 = and i1 true, %a.rd.lt100
  br i1 %a.rd.bounds101, label %a.rd.ok94, label %a.rd.err.oob96

a.rd.ok94:                                        ; preds = %a.rd.check93
  %a.rd.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load291, i32 0, i32 1
  %a.rd.data103 = load ptr, ptr %a.rd.data102, align 8
  %a.rd.elem.gep104 = getelementptr i64, ptr %a.rd.data103, i64 1
  %a.rd.elem105 = load i64, ptr %a.rd.elem.gep104, align 8
  br label %a.rd.done97

a.rd.err.null95:                                  ; preds = %a.after83
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 56)
  %err.code.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 0
  store i64 4011, ptr %err.code.gep108, align 8
  %err.msg.gep109 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep109, align 8
  %err.file.gep110 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep110, align 8
  %err.line.gep111 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 3
  store i64 119, ptr %err.line.gep111, align 8
  %err.col.gep112 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 4
  store i64 23, ptr %err.col.gep112, align 8
  %err.ctx.gep113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc107, i32 0, i32 5
  %err.ctx0.gep114 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep113, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep114, align 8
  %err.ctx1.gep115 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep113, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep115, align 8
  %err.p2i116 = ptrtoint ptr %err.alloc107 to i64
  br label %a.rd.done97

a.rd.err.oob96:                                   ; preds = %a.rd.check93
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 56)
  %err.code.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 0
  store i64 4011, ptr %err.code.gep119, align 8
  %err.msg.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep120, align 8
  %err.file.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep121, align 8
  %err.line.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 3
  store i64 119, ptr %err.line.gep122, align 8
  %err.col.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 4
  store i64 23, ptr %err.col.gep123, align 8
  %err.ctx.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 5
  %err.ctx0.gep125 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep124, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep125, align 8
  %err.ctx1.gep126 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep124, i32 0, i32 1
  store i64 %a.rd.len99, ptr %err.ctx1.gep126, align 8
  %err.p2i127 = ptrtoint ptr %err.alloc118 to i64
  br label %a.rd.done97

a.rd.done97:                                      ; preds = %a.rd.err.oob96, %a.rd.err.null95, %a.rd.ok94
  %a.rd.tag128 = phi i1 [ true, %a.rd.ok94 ], [ false, %a.rd.err.null95 ], [ false, %a.rd.err.oob96 ]
  %a.rd.pay129 = phi i64 [ %a.rd.elem105, %a.rd.ok94 ], [ %err.p2i116, %a.rd.err.null95 ], [ %err.p2i127, %a.rd.err.oob96 ]
  %ram.tag130 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag128, 0
  %ram.pay131 = insertvalue { i1, i64 } %ram.tag130, i64 %a.rd.pay129, 1
  %unwrap.is_pos132 = extractvalue { i1, i64 } %ram.pay131, 0
  br i1 %unwrap.is_pos132, label %unwrap.pos.182, label %unwrap.abort.182

unwrap.pos.182:                                   ; preds = %a.rd.done97
  %unwrap.pay.pos164 = extractvalue { i1, i64 } %ram.pay131, 1
  %pay.ptr165 = inttoptr i64 %unwrap.pay.pos164 to ptr
  store ptr %pay.ptr165, ptr %var.cycle, align 8
  %var.load166 = load ptr, ptr %var.parts, align 8
  %a.load167 = load ptr, ptr %var.parts, align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

unwrap.abort.182:                                 ; preds = %a.rd.done97
  %unwrap.pay.abort133 = extractvalue { i1, i64 } %ram.pay131, 1
  %err.ptr134 = inttoptr i64 %unwrap.pay.abort133 to ptr
  %err.code.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 0
  %err.code136 = load i64, ptr %err.code.gep135, align 8
  %err.msg.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 1
  %err.msg.struct138 = load ptr, ptr %err.msg.gep137, align 8
  %err.file.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 2
  %err.file.struct140 = load ptr, ptr %err.file.gep139, align 8
  %err.line.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 3
  %err.line142 = load i64, ptr %err.line.gep141, align 8
  %err.col.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 4
  %err.col144 = load i64, ptr %err.col.gep143, align 8
  %err.msg.len145 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct138, i32 0, i32 0
  %err.msg.len146 = load i64, ptr %err.msg.len145, align 8
  %err.msg.len147 = and i64 %err.msg.len146, 281474976710655
  %err.msg.len32148 = trunc i64 %err.msg.len147 to i32
  %err.msg.data149 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct138, i32 0, i32 1
  %err.msg.data150 = load ptr, ptr %err.msg.data149, align 8
  %err.file.len151 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct140, i32 0, i32 0
  %err.file.len152 = load i64, ptr %err.file.len151, align 8
  %err.file.len153 = and i64 %err.file.len152, 281474976710655
  %err.file.len32154 = trunc i64 %err.file.len153 to i32
  %err.file.data155 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct140, i32 0, i32 1
  %err.file.data156 = load ptr, ptr %err.file.data155, align 8
  %err.thread.rec157 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread158 = icmp ne ptr %err.thread.rec157, null
  br i1 %err.is.thread158, label %err.thread159, label %err.normal160

err.thread159:                                    ; preds = %unwrap.abort.182
  %err.haserr.gep161 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec157, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep161, align 8
  %err.err.gep162 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec157, i32 0, i32 7
  store ptr %err.ptr134, ptr %err.err.gep162, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal160:                                    ; preds = %unwrap.abort.182
  %err.panic.printf163 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code136, i32 %err.msg.len32148, ptr %err.msg.data150, i32 %err.file.len32154, ptr %err.file.data156, i64 %err.line142, i64 %err.col144)
  call void @exit(i32 1)
  unreachable

a.create169:                                      ; preds = %unwrap.pos.182
  %arena.cur171 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %var.parts, align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %unwrap.pos.182
  %a.load2178 = load ptr, ptr %var.parts, align 8
  %a.rd.nonnull179 = icmp ne ptr %a.load2178, null
  br i1 %a.rd.nonnull179, label %a.rd.check180, label %a.rd.err.null182

a.rd.check180:                                    ; preds = %a.after170
  %a.rd.len185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 0
  %a.rd.len186 = load i64, ptr %a.rd.len185, align 8
  %a.rd.lt187 = icmp slt i64 2, %a.rd.len186
  %a.rd.bounds188 = and i1 true, %a.rd.lt187
  br i1 %a.rd.bounds188, label %a.rd.ok181, label %a.rd.err.oob183

a.rd.ok181:                                       ; preds = %a.rd.check180
  %a.rd.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 1
  %a.rd.data190 = load ptr, ptr %a.rd.data189, align 8
  %a.rd.elem.gep191 = getelementptr i64, ptr %a.rd.data190, i64 2
  %a.rd.elem192 = load i64, ptr %a.rd.elem.gep191, align 8
  br label %a.rd.done184

a.rd.err.null182:                                 ; preds = %a.after170
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 56)
  %err.code.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 0
  store i64 4011, ptr %err.code.gep195, align 8
  %err.msg.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep196, align 8
  %err.file.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep197, align 8
  %err.line.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 3
  store i64 120, ptr %err.line.gep198, align 8
  %err.col.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 4
  store i64 24, ptr %err.col.gep199, align 8
  %err.ctx.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 5
  %err.ctx0.gep201 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep201, align 8
  %err.ctx1.gep202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep202, align 8
  %err.p2i203 = ptrtoint ptr %err.alloc194 to i64
  br label %a.rd.done184

a.rd.err.oob183:                                  ; preds = %a.rd.check180
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  %err.code.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 0
  store i64 4011, ptr %err.code.gep206, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 120, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 24, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  %err.ctx0.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 0
  store i64 2, ptr %err.ctx0.gep212, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 %a.rd.len186, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done184

a.rd.done184:                                     ; preds = %a.rd.err.oob183, %a.rd.err.null182, %a.rd.ok181
  %a.rd.tag215 = phi i1 [ true, %a.rd.ok181 ], [ false, %a.rd.err.null182 ], [ false, %a.rd.err.oob183 ]
  %a.rd.pay216 = phi i64 [ %a.rd.elem192, %a.rd.ok181 ], [ %err.p2i203, %a.rd.err.null182 ], [ %err.p2i214, %a.rd.err.oob183 ]
  %ram.tag217 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag215, 0
  %ram.pay218 = insertvalue { i1, i64 } %ram.tag217, i64 %a.rd.pay216, 1
  %unwrap.is_pos219 = extractvalue { i1, i64 } %ram.pay218, 0
  br i1 %unwrap.is_pos219, label %unwrap.pos.183, label %unwrap.abort.183

unwrap.pos.183:                                   ; preds = %a.rd.done184
  %unwrap.pay.pos251 = extractvalue { i1, i64 } %ram.pay218, 1
  %pay.ptr252 = inttoptr i64 %unwrap.pay.pos251 to ptr
  store ptr %pay.ptr252, ptr %var.result, align 8
  %var.load253 = load ptr, ptr %var.result, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load253, i32 0, i32 0
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %tag.gep259 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 0
  %tag.id260 = load i64, ptr %tag.gep259, align 8
  %tag.match261 = icmp eq i64 %tag.id260, 6
  br i1 %tag.match261, label %choice.case257, label %choice.next258

unwrap.abort.183:                                 ; preds = %a.rd.done184
  %unwrap.pay.abort220 = extractvalue { i1, i64 } %ram.pay218, 1
  %err.ptr221 = inttoptr i64 %unwrap.pay.abort220 to ptr
  %err.code.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 0
  %err.code223 = load i64, ptr %err.code.gep222, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 1
  %err.msg.struct225 = load ptr, ptr %err.msg.gep224, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 2
  %err.file.struct227 = load ptr, ptr %err.file.gep226, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 3
  %err.line229 = load i64, ptr %err.line.gep228, align 8
  %err.col.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 4
  %err.col231 = load i64, ptr %err.col.gep230, align 8
  %err.msg.len232 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 0
  %err.msg.len233 = load i64, ptr %err.msg.len232, align 8
  %err.msg.len234 = and i64 %err.msg.len233, 281474976710655
  %err.msg.len32235 = trunc i64 %err.msg.len234 to i32
  %err.msg.data236 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 1
  %err.msg.data237 = load ptr, ptr %err.msg.data236, align 8
  %err.file.len238 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 0
  %err.file.len239 = load i64, ptr %err.file.len238, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32241 = trunc i64 %err.file.len240 to i32
  %err.file.data242 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 1
  %err.file.data243 = load ptr, ptr %err.file.data242, align 8
  %err.thread.rec244 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread245 = icmp ne ptr %err.thread.rec244, null
  br i1 %err.is.thread245, label %err.thread246, label %err.normal247

err.thread246:                                    ; preds = %unwrap.abort.183
  %err.haserr.gep248 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep248, align 8
  %err.err.gep249 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 7
  store ptr %err.ptr221, ptr %err.err.gep249, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal247:                                    ; preds = %unwrap.abort.183
  %err.panic.printf250 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code223, i32 %err.msg.len32235, ptr %err.msg.data237, i32 %err.file.len32241, ptr %err.file.data243, i64 %err.line229, i64 %err.col231)
  call void @exit(i32 1)
  unreachable

choice.exit256:                                   ; preds = %choice.next258, %choice.case257
  %choice.res268 = phi ptr [ %fld.load267, %choice.case257 ], [ @str.0.struct, %choice.next258 ]
  store ptr %choice.res268, ptr %var.out, align 8
  %var.load269 = load ptr, ptr %var.out, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load269, i32 0, i32 0
  %eq.lhs.len270 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len271 = and i64 %eq.lhs.len270, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len272 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len271, %eq.rhs.len272
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.case257:                                   ; preds = %unwrap.pos.183
  %pay.gep262 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 1
  %payload.ptr263 = load ptr, ptr %pay.gep262, align 8
  store ptr %payload.ptr263, ptr %var._264, align 8
  store ptr %payload.ptr263, ptr %var.v, align 8
  %var.load265 = load ptr, ptr %var.v, align 8
  %fld.gep266 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load265, i32 0, i32 0
  %fld.load267 = load ptr, ptr %fld.gep266, align 8
  br label %choice.exit256

choice.next258:                                   ; preds = %unwrap.pos.183
  br label %choice.exit256

str.eq.then:                                      ; preds = %choice.exit256
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load269, i32 0, i32 1
  %eq.lhs.data273 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data273, ptr %eq.rhs.data, i64 %eq.lhs.len271)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit256
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then274, label %choice.exit275

choice.then274:                                   ; preds = %str.eq.merge
  ret ptr null

choice.exit275:                                   ; preds = %ret.dead276, %str.eq.merge
  %var.load277 = load ptr, ptr %var.init, align 8
  %fld.gep278 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load277, i32 0, i32 0
  %fld.load279 = load ptr, ptr %fld.gep278, align 8
  %tag.gep283 = getelementptr inbounds { i64, ptr }, ptr %fld.load279, i32 0, i32 0
  %tag.id284 = load i64, ptr %tag.gep283, align 8
  %tag.match285 = icmp eq i64 %tag.id284, 18
  br i1 %tag.match285, label %choice.case281, label %choice.next282

ret.dead276:                                      ; No predecessors!
  br label %choice.exit275

choice.exit280:                                   ; preds = %choice.next282, %and.185.exit
  %choice.res323 = phi i1 [ %and.185.phi, %and.185.exit ], [ false, %choice.next282 ]
  store i1 %choice.res323, ptr %var.init_ok, align 1
  %var.load324 = load i1, ptr %var.init_ok, align 1
  %nottmp325 = xor i1 %var.load324, true
  br i1 %nottmp325, label %choice.then326, label %choice.exit327

choice.case281:                                   ; preds = %choice.exit275
  %pay.gep286 = getelementptr inbounds { i64, ptr }, ptr %fld.load279, i32 0, i32 1
  %payload.ptr287 = load ptr, ptr %pay.gep286, align 8
  store ptr %payload.ptr287, ptr %var._288, align 8
  store ptr %payload.ptr287, ptr %var.a, align 8
  %var.load289 = load ptr, ptr %var.a, align 8
  %fld.gep290 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load289, i32 0, i32 0
  %fld.load291 = load ptr, ptr %fld.gep290, align 8
  %var.load292 = load ptr, ptr %var.out, align 8
  %eq.lhs.len293 = getelementptr inbounds { i64, ptr }, ptr %fld.load291, i32 0, i32 0
  %eq.lhs.len294 = load i64, ptr %eq.lhs.len293, align 8
  %eq.lhs.len295 = and i64 %eq.lhs.len294, 281474976710655
  %eq.rhs.len296 = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 0
  %eq.rhs.len297 = load i64, ptr %eq.rhs.len296, align 8
  %eq.rhs.len298 = and i64 %eq.rhs.len297, 281474976710655
  %eq.len299 = icmp eq i64 %eq.lhs.len295, %eq.rhs.len298
  br i1 %eq.len299, label %str.eq.then300, label %str.eq.else301

choice.next282:                                   ; preds = %choice.exit275
  br label %choice.exit280

str.eq.then300:                                   ; preds = %choice.case281
  %eq.lhs.data303 = getelementptr inbounds { i64, ptr }, ptr %fld.load291, i32 0, i32 1
  %eq.lhs.data304 = load ptr, ptr %eq.lhs.data303, align 8
  %eq.rhs.data305 = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 1
  %eq.rhs.data306 = load ptr, ptr %eq.rhs.data305, align 8
  %eq.memcmp307 = call i32 @memcmp(ptr %eq.lhs.data304, ptr %eq.rhs.data306, i64 %eq.lhs.len295)
  %eq.cmp.zero308 = icmp eq i32 %eq.memcmp307, 0
  br label %str.eq.merge302

str.eq.else301:                                   ; preds = %choice.case281
  br label %str.eq.merge302

str.eq.merge302:                                  ; preds = %str.eq.else301, %str.eq.then300
  %str.eq.result309 = phi i1 [ %eq.cmp.zero308, %str.eq.then300 ], [ false, %str.eq.else301 ]
  br i1 %str.eq.result309, label %and.184.then, label %and.184.else

and.184.then:                                     ; preds = %str.eq.merge302
  %var.load310 = load ptr, ptr %var.a, align 8
  %fld.gep311 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load310, i32 0, i32 1
  %fld.load312 = load i1, ptr %fld.gep311, align 1
  br label %and.184.exit

and.184.else:                                     ; preds = %str.eq.merge302
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %and.184.then
  %and.184.phi = phi i1 [ %fld.load312, %and.184.then ], [ %str.eq.result309, %and.184.else ]
  br i1 %and.184.phi, label %and.185.then, label %and.185.else

and.185.then:                                     ; preds = %and.184.exit
  %var.load313 = load ptr, ptr %var.a, align 8
  %fld.gep314 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load313, i32 0, i32 2
  %fld.load315 = load i1, ptr %fld.gep314, align 1
  br i1 %fld.load315, label %or.186.then, label %or.186.else

and.185.else:                                     ; preds = %and.184.exit
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %or.187.exit
  %and.185.phi = phi i1 [ %nottmp322, %or.187.exit ], [ %and.184.phi, %and.185.else ]
  br label %choice.exit280

or.186.then:                                      ; preds = %and.185.then
  br label %or.186.exit

or.186.else:                                      ; preds = %and.185.then
  %var.load316 = load ptr, ptr %var.a, align 8
  %fld.gep317 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load316, i32 0, i32 3
  %fld.load318 = load i1, ptr %fld.gep317, align 1
  br label %or.186.exit

or.186.exit:                                      ; preds = %or.186.else, %or.186.then
  %or.186.phi = phi i1 [ %fld.load315, %or.186.then ], [ %fld.load318, %or.186.else ]
  br i1 %or.186.phi, label %or.187.then, label %or.187.else

or.187.then:                                      ; preds = %or.186.exit
  br label %or.187.exit

or.187.else:                                      ; preds = %or.186.exit
  %var.load319 = load ptr, ptr %var.a, align 8
  %fld.gep320 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load319, i32 0, i32 4
  %fld.load321 = load i1, ptr %fld.gep320, align 1
  br label %or.187.exit

or.187.exit:                                      ; preds = %or.187.else, %or.187.then
  %or.187.phi = phi i1 [ %or.186.phi, %or.187.then ], [ %fld.load321, %or.187.else ]
  %nottmp322 = xor i1 %or.187.phi, true
  br label %and.185.exit

choice.then326:                                   ; preds = %choice.exit280
  ret ptr null

choice.exit327:                                   ; preds = %ret.dead328, %choice.exit280
  %var.load329 = load ptr, ptr %var.init, align 8
  %fld.gep330 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load329, i32 0, i32 0
  %fld.load331 = load ptr, ptr %fld.gep330, align 8
  %tag.gep335 = getelementptr inbounds { i64, ptr }, ptr %fld.load331, i32 0, i32 0
  %tag.id336 = load i64, ptr %tag.gep335, align 8
  %tag.match337 = icmp eq i64 %tag.id336, 18
  br i1 %tag.match337, label %choice.case333, label %choice.next334

ret.dead328:                                      ; No predecessors!
  br label %choice.exit327

choice.exit332:                                   ; preds = %choice.next334, %choice.case333
  %choice.res345 = phi ptr [ %fld.gep343, %choice.case333 ], [ %var.load344, %choice.next334 ]
  store ptr %choice.res345, ptr %var.initial, align 8
  %var.load346 = load ptr, ptr %var.e, align 8
  %fld.gep347 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load346, i32 0, i32 2
  %fld.load348 = load ptr, ptr %fld.gep347, align 8
  %call.res = call i1 @"typedopt::#int_array"(ptr %fld.load348)
  br i1 %call.res, label %and.188.then, label %and.188.else

choice.case333:                                   ; preds = %choice.exit327
  %pay.gep338 = getelementptr inbounds { i64, ptr }, ptr %fld.load331, i32 0, i32 1
  %payload.ptr339 = load ptr, ptr %pay.gep338, align 8
  store ptr %payload.ptr339, ptr %var._340, align 8
  store ptr %payload.ptr339, ptr %var.a341, align 8
  %var.load342 = load ptr, ptr %var.a341, align 8
  %fld.gep343 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load342, i32 0, i32 5
  br label %choice.exit332

choice.next334:                                   ; preds = %choice.exit327
  %var.load344 = load ptr, ptr %var.init, align 8
  br label %choice.exit332

and.188.then:                                     ; preds = %choice.exit332
  %var.load349 = load ptr, ptr %var.initial, align 8
  %fld.gep350 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load349, i32 0, i32 0
  %fld.load351 = load ptr, ptr %fld.gep350, align 8
  %tag.gep355 = getelementptr inbounds { i64, ptr }, ptr %fld.load351, i32 0, i32 0
  %tag.id356 = load i64, ptr %tag.gep355, align 8
  %tag.match357 = icmp eq i64 %tag.id356, 24
  br i1 %tag.match357, label %choice.case353, label %choice.next354

and.188.else:                                     ; preds = %choice.exit332
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %choice.exit352
  %and.188.phi = phi i1 [ %choice.res361, %choice.exit352 ], [ %call.res, %and.188.else ]
  store i1 %and.188.phi, ptr %var.collects, align 1
  %var.load362 = load i1, ptr %var.collects, align 1
  br i1 %var.load362, label %choice.then363, label %choice.else

choice.exit352:                                   ; preds = %choice.next354, %choice.case353
  %choice.res361 = phi i1 [ true, %choice.case353 ], [ false, %choice.next354 ]
  br label %and.188.exit

choice.case353:                                   ; preds = %and.188.then
  %pay.gep358 = getelementptr inbounds { i64, ptr }, ptr %fld.load351, i32 0, i32 1
  %payload.ptr359 = load ptr, ptr %pay.gep358, align 8
  store ptr %payload.ptr359, ptr %var._360, align 8
  br label %choice.exit352

choice.next354:                                   ; preds = %and.188.then
  br label %choice.exit352

choice.then363:                                   ; preds = %and.188.exit
  br label %choice.exit364

choice.else:                                      ; preds = %and.188.exit
  br label %choice.exit364

choice.exit364:                                   ; preds = %choice.else, %choice.then363
  %choice.res365 = phi ptr [ @str.4.struct, %choice.then363 ], [ @str.5.struct, %choice.else ]
  store ptr %choice.res365, ptr %var.expected_prefix, align 8
  %var.load366 = load ptr, ptr %var.out, align 8
  %var.load367 = load ptr, ptr %var.expected_prefix, align 8
  %call.res368 = call i1 @"str::starts_with"(ptr %var.load366, ptr %var.load367)
  %nottmp369 = xor i1 %call.res368, true
  br i1 %nottmp369, label %or.189.then, label %or.189.else

or.189.then:                                      ; preds = %choice.exit364
  br label %or.189.exit

or.189.else:                                      ; preds = %choice.exit364
  %var.load370 = load i1, ptr %var.collects, align 1
  %nottmp371 = xor i1 %var.load370, true
  br i1 %nottmp371, label %and.190.then, label %and.190.else

or.189.exit:                                      ; preds = %and.190.exit, %or.189.then
  %or.189.phi = phi i1 [ %nottmp369, %or.189.then ], [ %and.190.phi, %and.190.exit ]
  br i1 %or.189.phi, label %choice.then375, label %choice.exit376

and.190.then:                                     ; preds = %or.189.else
  %var.load372 = load ptr, ptr %var.e, align 8
  %call.res373 = call i1 @"typedopt::#wide_int"(ptr %var.load372)
  %nottmp374 = xor i1 %call.res373, true
  br label %and.190.exit

and.190.else:                                     ; preds = %or.189.else
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %and.190.then
  %and.190.phi = phi i1 [ %nottmp374, %and.190.then ], [ %nottmp371, %and.190.else ]
  br label %or.189.exit

choice.then375:                                   ; preds = %or.189.exit
  ret ptr null

choice.exit376:                                   ; preds = %ret.dead377, %or.189.exit
  %var.load378 = load ptr, ptr %var.cycle, align 8
  %fld.gep379 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load378, i32 0, i32 0
  %fld.load380 = load ptr, ptr %fld.gep379, align 8
  %tag.gep384 = getelementptr inbounds { i64, ptr }, ptr %fld.load380, i32 0, i32 0
  %tag.id385 = load i64, ptr %tag.gep384, align 8
  %tag.match386 = icmp eq i64 %tag.id385, 19
  br i1 %tag.match386, label %choice.case382, label %choice.next383

ret.dead377:                                      ; No predecessors!
  br label %choice.exit376

choice.exit381:                                   ; preds = %choice.next383, %choice.exit403
  %choice.res1097 = phi ptr [ %choice.res1096, %choice.exit403 ], [ null, %choice.next383 ]
  ret ptr %choice.res1097

choice.case382:                                   ; preds = %choice.exit376
  %pay.gep387 = getelementptr inbounds { i64, ptr }, ptr %fld.load380, i32 0, i32 1
  %payload.ptr388 = load ptr, ptr %pay.gep387, align 8
  store ptr %payload.ptr388, ptr %var._389, align 8
  store ptr %payload.ptr388, ptr %var.c, align 8
  %var.load390 = load ptr, ptr %var.c, align 8
  %fld.gep391 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load390, i32 0, i32 2
  %fld.load392 = load ptr, ptr %fld.gep391, align 8
  %niche.ne.null = icmp ne ptr %fld.load392, null
  br i1 %niche.ne.null, label %or.191.then, label %or.191.else

choice.next383:                                   ; preds = %choice.exit376
  br label %choice.exit381

or.191.then:                                      ; preds = %choice.case382
  br label %or.191.exit

or.191.else:                                      ; preds = %choice.case382
  %var.load393 = load ptr, ptr %var.c, align 8
  %fld.gep394 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load393, i32 0, i32 3
  %fld.load395 = load i1, ptr %fld.gep394, align 1
  br label %or.191.exit

or.191.exit:                                      ; preds = %or.191.else, %or.191.then
  %or.191.phi = phi i1 [ %niche.ne.null, %or.191.then ], [ %fld.load395, %or.191.else ]
  br i1 %or.191.phi, label %choice.then396, label %choice.exit397

choice.then396:                                   ; preds = %or.191.exit
  ret ptr null

choice.exit397:                                   ; preds = %ret.dead398, %or.191.exit
  %var.load399 = load ptr, ptr %var.c, align 8
  %fld.gep400 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load399, i32 0, i32 1
  %fld.gep401 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep400, i32 0, i32 0
  %fld.load402 = load ptr, ptr %fld.gep401, align 8
  %tag.gep406 = getelementptr inbounds { i64, ptr }, ptr %fld.load402, i32 0, i32 0
  %tag.id407 = load i64, ptr %tag.gep406, align 8
  %tag.match408 = icmp eq i64 %tag.id407, 16
  br i1 %tag.match408, label %choice.case404, label %choice.next405

ret.dead398:                                      ; No predecessors!
  br label %choice.exit397

choice.exit403:                                   ; preds = %choice.next405, %choice.exit1003
  %choice.res1096 = phi ptr [ %choice.res1095, %choice.exit1003 ], [ null, %choice.next405 ]
  br label %choice.exit381

choice.case404:                                   ; preds = %choice.exit397
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %fld.load402, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  store ptr %payload.ptr410, ptr %var._411, align 8
  store ptr %payload.ptr410, ptr %var.lam, align 8
  %var.load412 = load ptr, ptr %var.lam, align 8
  %fld.gep413 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load412, i32 0, i32 0
  %fld.load414 = load ptr, ptr %fld.gep413, align 8
  %a.rd.nonnull415 = icmp ne ptr %fld.load414, null
  br i1 %a.rd.nonnull415, label %a.rd.check416, label %a.rd.err.null418

choice.next405:                                   ; preds = %choice.exit397
  br label %choice.exit403

a.rd.check416:                                    ; preds = %choice.case404
  %a.rd.len421 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load414, i32 0, i32 0
  %a.rd.len422 = load i64, ptr %a.rd.len421, align 8
  %a.rd.lt423 = icmp slt i64 0, %a.rd.len422
  %a.rd.bounds424 = and i1 true, %a.rd.lt423
  br i1 %a.rd.bounds424, label %a.rd.ok417, label %a.rd.err.oob419

a.rd.ok417:                                       ; preds = %a.rd.check416
  %a.rd.data425 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load414, i32 0, i32 1
  %a.rd.data426 = load ptr, ptr %a.rd.data425, align 8
  %a.rd.elem.gep427 = getelementptr i64, ptr %a.rd.data426, i64 0
  %a.rd.elem428 = load i64, ptr %a.rd.elem.gep427, align 8
  br label %a.rd.done420

a.rd.err.null418:                                 ; preds = %choice.case404
  %arena.cur429 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc430 = call ptr @dva_arena_alloc(ptr %arena.cur429, i64 56)
  %err.code.gep431 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 0
  store i64 4011, ptr %err.code.gep431, align 8
  %err.msg.gep432 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep432, align 8
  %err.file.gep433 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep433, align 8
  %err.line.gep434 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 3
  store i64 0, ptr %err.line.gep434, align 8
  %err.col.gep435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 4
  store i64 0, ptr %err.col.gep435, align 8
  %err.ctx.gep436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 5
  %err.ctx0.gep437 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep436, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep437, align 8
  %err.ctx1.gep438 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep436, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep438, align 8
  %err.p2i439 = ptrtoint ptr %err.alloc430 to i64
  br label %a.rd.done420

a.rd.err.oob419:                                  ; preds = %a.rd.check416
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 56)
  %err.code.gep442 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 0
  store i64 4011, ptr %err.code.gep442, align 8
  %err.msg.gep443 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep443, align 8
  %err.file.gep444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep444, align 8
  %err.line.gep445 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 3
  store i64 0, ptr %err.line.gep445, align 8
  %err.col.gep446 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 4
  store i64 0, ptr %err.col.gep446, align 8
  %err.ctx.gep447 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 5
  %err.ctx0.gep448 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep447, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep448, align 8
  %err.ctx1.gep449 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep447, i32 0, i32 1
  store i64 %a.rd.len422, ptr %err.ctx1.gep449, align 8
  %err.p2i450 = ptrtoint ptr %err.alloc441 to i64
  br label %a.rd.done420

a.rd.done420:                                     ; preds = %a.rd.err.oob419, %a.rd.err.null418, %a.rd.ok417
  %a.rd.tag451 = phi i1 [ true, %a.rd.ok417 ], [ false, %a.rd.err.null418 ], [ false, %a.rd.err.oob419 ]
  %a.rd.pay452 = phi i64 [ %a.rd.elem428, %a.rd.ok417 ], [ %err.p2i439, %a.rd.err.null418 ], [ %err.p2i450, %a.rd.err.oob419 ]
  %ram.tag453 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag451, 0
  %ram.pay454 = insertvalue { i1, i64 } %ram.tag453, i64 %a.rd.pay452, 1
  %ram.tag455 = extractvalue { i1, i64 } %ram.pay454, 0
  br i1 %ram.tag455, label %choice.then456, label %choice.else457

choice.then456:                                   ; preds = %a.rd.done420
  %ram.pay459 = extractvalue { i1, i64 } %ram.pay454, 1
  %pay.ptr460 = inttoptr i64 %ram.pay459 to ptr
  store ptr %pay.ptr460, ptr %var._461, align 8
  br label %choice.exit458

choice.else457:                                   ; preds = %a.rd.done420
  %ram.pay462 = extractvalue { i1, i64 } %ram.pay454, 1
  %pay.ptr463 = inttoptr i64 %ram.pay462 to ptr
  store ptr %pay.ptr463, ptr %var._464, align 8
  br label %choice.exit458

choice.exit458:                                   ; preds = %choice.else457, %choice.then456
  %choice.res465 = phi ptr [ %pay.ptr460, %choice.then456 ], [ @str.0.struct, %choice.else457 ]
  store ptr %choice.res465, ptr %var.p0, align 8
  %var.load466 = load ptr, ptr %var.lam, align 8
  %fld.gep467 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load466, i32 0, i32 0
  %fld.load468 = load ptr, ptr %fld.gep467, align 8
  %a.rd.nonnull469 = icmp ne ptr %fld.load468, null
  br i1 %a.rd.nonnull469, label %a.rd.check470, label %a.rd.err.null472

a.rd.check470:                                    ; preds = %choice.exit458
  %a.rd.len475 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load468, i32 0, i32 0
  %a.rd.len476 = load i64, ptr %a.rd.len475, align 8
  %a.rd.lt477 = icmp slt i64 1, %a.rd.len476
  %a.rd.bounds478 = and i1 true, %a.rd.lt477
  br i1 %a.rd.bounds478, label %a.rd.ok471, label %a.rd.err.oob473

a.rd.ok471:                                       ; preds = %a.rd.check470
  %a.rd.data479 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load468, i32 0, i32 1
  %a.rd.data480 = load ptr, ptr %a.rd.data479, align 8
  %a.rd.elem.gep481 = getelementptr i64, ptr %a.rd.data480, i64 1
  %a.rd.elem482 = load i64, ptr %a.rd.elem.gep481, align 8
  br label %a.rd.done474

a.rd.err.null472:                                 ; preds = %choice.exit458
  %arena.cur483 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 56)
  %err.code.gep485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 0
  store i64 4011, ptr %err.code.gep485, align 8
  %err.msg.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep486, align 8
  %err.file.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep487, align 8
  %err.line.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 3
  store i64 0, ptr %err.line.gep488, align 8
  %err.col.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 4
  store i64 0, ptr %err.col.gep489, align 8
  %err.ctx.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 5
  %err.ctx0.gep491 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep490, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep491, align 8
  %err.ctx1.gep492 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep490, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep492, align 8
  %err.p2i493 = ptrtoint ptr %err.alloc484 to i64
  br label %a.rd.done474

a.rd.err.oob473:                                  ; preds = %a.rd.check470
  %arena.cur494 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc495 = call ptr @dva_arena_alloc(ptr %arena.cur494, i64 56)
  %err.code.gep496 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 0
  store i64 4011, ptr %err.code.gep496, align 8
  %err.msg.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep497, align 8
  %err.file.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep498, align 8
  %err.line.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 3
  store i64 0, ptr %err.line.gep499, align 8
  %err.col.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 4
  store i64 0, ptr %err.col.gep500, align 8
  %err.ctx.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 5
  %err.ctx0.gep502 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep501, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep502, align 8
  %err.ctx1.gep503 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep501, i32 0, i32 1
  store i64 %a.rd.len476, ptr %err.ctx1.gep503, align 8
  %err.p2i504 = ptrtoint ptr %err.alloc495 to i64
  br label %a.rd.done474

a.rd.done474:                                     ; preds = %a.rd.err.oob473, %a.rd.err.null472, %a.rd.ok471
  %a.rd.tag505 = phi i1 [ true, %a.rd.ok471 ], [ false, %a.rd.err.null472 ], [ false, %a.rd.err.oob473 ]
  %a.rd.pay506 = phi i64 [ %a.rd.elem482, %a.rd.ok471 ], [ %err.p2i493, %a.rd.err.null472 ], [ %err.p2i504, %a.rd.err.oob473 ]
  %ram.tag507 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag505, 0
  %ram.pay508 = insertvalue { i1, i64 } %ram.tag507, i64 %a.rd.pay506, 1
  %ram.tag509 = extractvalue { i1, i64 } %ram.pay508, 0
  br i1 %ram.tag509, label %choice.then510, label %choice.else511

choice.then510:                                   ; preds = %a.rd.done474
  %ram.pay513 = extractvalue { i1, i64 } %ram.pay508, 1
  %pay.ptr514 = inttoptr i64 %ram.pay513 to ptr
  store ptr %pay.ptr514, ptr %var._515, align 8
  br label %choice.exit512

choice.else511:                                   ; preds = %a.rd.done474
  %ram.pay516 = extractvalue { i1, i64 } %ram.pay508, 1
  %pay.ptr517 = inttoptr i64 %ram.pay516 to ptr
  store ptr %pay.ptr517, ptr %var._518, align 8
  br label %choice.exit512

choice.exit512:                                   ; preds = %choice.else511, %choice.then510
  %choice.res519 = phi ptr [ %pay.ptr514, %choice.then510 ], [ @str.0.struct, %choice.else511 ]
  store ptr %choice.res519, ptr %var.p1, align 8
  %var.load520 = load ptr, ptr %var.p0, align 8
  %eq.lhs.len524 = getelementptr inbounds { i64, ptr }, ptr %var.load520, i32 0, i32 0
  %eq.lhs.len525 = load i64, ptr %eq.lhs.len524, align 8
  %eq.lhs.len526 = and i64 %eq.lhs.len525, 281474976710655
  %eq.rhs.len527 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len528 = and i64 %eq.rhs.len527, 281474976710655
  %eq.len529 = icmp eq i64 %eq.lhs.len526, %eq.rhs.len528
  br i1 %eq.len529, label %str.eq.then530, label %str.eq.else531

choice.exit521:                                   ; preds = %choice.next523, %choice.case522
  %choice.res554 = phi i1 [ true, %choice.case522 ], [ false, %choice.next523 ]
  br i1 %choice.res554, label %or.192.then, label %or.192.else

choice.case522:                                   ; preds = %str.eq.merge547
  br label %choice.exit521

choice.next523:                                   ; preds = %str.eq.merge547
  br label %choice.exit521

str.eq.then530:                                   ; preds = %choice.exit512
  %eq.lhs.data533 = getelementptr inbounds { i64, ptr }, ptr %var.load520, i32 0, i32 1
  %eq.lhs.data534 = load ptr, ptr %eq.lhs.data533, align 8
  %eq.rhs.data535 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp536 = call i32 @memcmp(ptr %eq.lhs.data534, ptr %eq.rhs.data535, i64 %eq.lhs.len526)
  %eq.cmp.zero537 = icmp eq i32 %eq.memcmp536, 0
  br label %str.eq.merge532

str.eq.else531:                                   ; preds = %choice.exit512
  br label %str.eq.merge532

str.eq.merge532:                                  ; preds = %str.eq.else531, %str.eq.then530
  %str.eq.result538 = phi i1 [ %eq.cmp.zero537, %str.eq.then530 ], [ false, %str.eq.else531 ]
  %eq.lhs.len539 = getelementptr inbounds { i64, ptr }, ptr %var.load520, i32 0, i32 0
  %eq.lhs.len540 = load i64, ptr %eq.lhs.len539, align 8
  %eq.lhs.len541 = and i64 %eq.lhs.len540, 281474976710655
  %eq.rhs.len542 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len543 = and i64 %eq.rhs.len542, 281474976710655
  %eq.len544 = icmp eq i64 %eq.lhs.len541, %eq.rhs.len543
  br i1 %eq.len544, label %str.eq.then545, label %str.eq.else546

str.eq.then545:                                   ; preds = %str.eq.merge532
  %eq.lhs.data548 = getelementptr inbounds { i64, ptr }, ptr %var.load520, i32 0, i32 1
  %eq.lhs.data549 = load ptr, ptr %eq.lhs.data548, align 8
  %eq.rhs.data550 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp551 = call i32 @memcmp(ptr %eq.lhs.data549, ptr %eq.rhs.data550, i64 %eq.lhs.len541)
  %eq.cmp.zero552 = icmp eq i32 %eq.memcmp551, 0
  br label %str.eq.merge547

str.eq.else546:                                   ; preds = %str.eq.merge532
  br label %str.eq.merge547

str.eq.merge547:                                  ; preds = %str.eq.else546, %str.eq.then545
  %str.eq.result553 = phi i1 [ %eq.cmp.zero552, %str.eq.then545 ], [ false, %str.eq.else546 ]
  %case.or = or i1 %str.eq.result538, %str.eq.result553
  br i1 %case.or, label %choice.case522, label %choice.next523

or.192.then:                                      ; preds = %choice.exit521
  br label %or.192.exit

or.192.else:                                      ; preds = %choice.exit521
  %var.load555 = load ptr, ptr %var.p1, align 8
  %eq.lhs.len559 = getelementptr inbounds { i64, ptr }, ptr %var.load555, i32 0, i32 0
  %eq.lhs.len560 = load i64, ptr %eq.lhs.len559, align 8
  %eq.lhs.len561 = and i64 %eq.lhs.len560, 281474976710655
  %eq.rhs.len562 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %eq.len564 = icmp eq i64 %eq.lhs.len561, %eq.rhs.len563
  br i1 %eq.len564, label %str.eq.then565, label %str.eq.else566

or.192.exit:                                      ; preds = %choice.exit556, %or.192.then
  %or.192.phi = phi i1 [ %choice.res554, %or.192.then ], [ %choice.res590, %choice.exit556 ]
  br i1 %or.192.phi, label %or.193.then, label %or.193.else

choice.exit556:                                   ; preds = %choice.next558, %choice.case557
  %choice.res590 = phi i1 [ true, %choice.case557 ], [ false, %choice.next558 ]
  br label %or.192.exit

choice.case557:                                   ; preds = %str.eq.merge582
  br label %choice.exit556

choice.next558:                                   ; preds = %str.eq.merge582
  br label %choice.exit556

str.eq.then565:                                   ; preds = %or.192.else
  %eq.lhs.data568 = getelementptr inbounds { i64, ptr }, ptr %var.load555, i32 0, i32 1
  %eq.lhs.data569 = load ptr, ptr %eq.lhs.data568, align 8
  %eq.rhs.data570 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp571 = call i32 @memcmp(ptr %eq.lhs.data569, ptr %eq.rhs.data570, i64 %eq.lhs.len561)
  %eq.cmp.zero572 = icmp eq i32 %eq.memcmp571, 0
  br label %str.eq.merge567

str.eq.else566:                                   ; preds = %or.192.else
  br label %str.eq.merge567

str.eq.merge567:                                  ; preds = %str.eq.else566, %str.eq.then565
  %str.eq.result573 = phi i1 [ %eq.cmp.zero572, %str.eq.then565 ], [ false, %str.eq.else566 ]
  %eq.lhs.len574 = getelementptr inbounds { i64, ptr }, ptr %var.load555, i32 0, i32 0
  %eq.lhs.len575 = load i64, ptr %eq.lhs.len574, align 8
  %eq.lhs.len576 = and i64 %eq.lhs.len575, 281474976710655
  %eq.rhs.len577 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len578 = and i64 %eq.rhs.len577, 281474976710655
  %eq.len579 = icmp eq i64 %eq.lhs.len576, %eq.rhs.len578
  br i1 %eq.len579, label %str.eq.then580, label %str.eq.else581

str.eq.then580:                                   ; preds = %str.eq.merge567
  %eq.lhs.data583 = getelementptr inbounds { i64, ptr }, ptr %var.load555, i32 0, i32 1
  %eq.lhs.data584 = load ptr, ptr %eq.lhs.data583, align 8
  %eq.rhs.data585 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp586 = call i32 @memcmp(ptr %eq.lhs.data584, ptr %eq.rhs.data585, i64 %eq.lhs.len576)
  %eq.cmp.zero587 = icmp eq i32 %eq.memcmp586, 0
  br label %str.eq.merge582

str.eq.else581:                                   ; preds = %str.eq.merge567
  br label %str.eq.merge582

str.eq.merge582:                                  ; preds = %str.eq.else581, %str.eq.then580
  %str.eq.result588 = phi i1 [ %eq.cmp.zero587, %str.eq.then580 ], [ false, %str.eq.else581 ]
  %case.or589 = or i1 %str.eq.result573, %str.eq.result588
  br i1 %case.or589, label %choice.case557, label %choice.next558

or.193.then:                                      ; preds = %or.192.exit
  br label %or.193.exit

or.193.else:                                      ; preds = %or.192.exit
  %var.load591 = load ptr, ptr %var.p0, align 8
  %var.load592 = load ptr, ptr %var.p1, align 8
  %eq.lhs.len593 = getelementptr inbounds { i64, ptr }, ptr %var.load591, i32 0, i32 0
  %eq.lhs.len594 = load i64, ptr %eq.lhs.len593, align 8
  %eq.lhs.len595 = and i64 %eq.lhs.len594, 281474976710655
  %eq.rhs.len596 = getelementptr inbounds { i64, ptr }, ptr %var.load592, i32 0, i32 0
  %eq.rhs.len597 = load i64, ptr %eq.rhs.len596, align 8
  %eq.rhs.len598 = and i64 %eq.rhs.len597, 281474976710655
  %eq.len599 = icmp eq i64 %eq.lhs.len595, %eq.rhs.len598
  br i1 %eq.len599, label %str.eq.then600, label %str.eq.else601

or.193.exit:                                      ; preds = %str.eq.merge602, %or.193.then
  %or.193.phi = phi i1 [ %or.192.phi, %or.193.then ], [ %str.eq.result609, %str.eq.merge602 ]
  br i1 %or.193.phi, label %choice.then610, label %choice.exit611

str.eq.then600:                                   ; preds = %or.193.else
  %eq.lhs.data603 = getelementptr inbounds { i64, ptr }, ptr %var.load591, i32 0, i32 1
  %eq.lhs.data604 = load ptr, ptr %eq.lhs.data603, align 8
  %eq.rhs.data605 = getelementptr inbounds { i64, ptr }, ptr %var.load592, i32 0, i32 1
  %eq.rhs.data606 = load ptr, ptr %eq.rhs.data605, align 8
  %eq.memcmp607 = call i32 @memcmp(ptr %eq.lhs.data604, ptr %eq.rhs.data606, i64 %eq.lhs.len595)
  %eq.cmp.zero608 = icmp eq i32 %eq.memcmp607, 0
  br label %str.eq.merge602

str.eq.else601:                                   ; preds = %or.193.else
  br label %str.eq.merge602

str.eq.merge602:                                  ; preds = %str.eq.else601, %str.eq.then600
  %str.eq.result609 = phi i1 [ %eq.cmp.zero608, %str.eq.then600 ], [ false, %str.eq.else601 ]
  br label %or.193.exit

choice.then610:                                   ; preds = %or.193.exit
  ret ptr null

choice.exit611:                                   ; preds = %ret.dead612, %or.193.exit
  %var.load613 = load i1, ptr %var.collects, align 1
  br i1 %var.load613, label %choice.then614, label %choice.else615

ret.dead612:                                      ; No predecessors!
  br label %choice.exit611

choice.then614:                                   ; preds = %choice.exit611
  %var.load617 = load ptr, ptr %var.lam, align 8
  %fld.gep618 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load617, i32 0, i32 1
  %arena.cur619 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld, ptr align 1 %fld.gep618, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld620 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %rec.fld620, align 8
  br label %choice.exit616

choice.else615:                                   ; preds = %choice.exit611
  %var.load621 = load ptr, ptr %var.lam, align 8
  %fld.gep622 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load621, i32 0, i32 1
  %fld.gep623 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep622, i32 0, i32 0
  %fld.load624 = load ptr, ptr %fld.gep623, align 8
  %tag.gep628 = getelementptr inbounds { i64, ptr }, ptr %fld.load624, i32 0, i32 0
  %tag.id629 = load i64, ptr %tag.gep628, align 8
  %tag.match630 = icmp eq i64 %tag.id629, 17
  br i1 %tag.match630, label %choice.case626, label %choice.next627

choice.exit616:                                   ; preds = %choice.exit625, %choice.then614
  %choice.res998 = phi ptr [ %rec.alloc, %choice.then614 ], [ %choice.res997, %choice.exit625 ]
  store ptr %choice.res998, ptr %var.unpacked, align 8
  %var.load999 = load ptr, ptr %var.unpacked, align 8
  %niche.ne.null1000 = icmp ne ptr %var.load999, null
  br i1 %niche.ne.null1000, label %choice.then1001, label %choice.else1002

choice.exit625:                                   ; preds = %choice.next627, %unwrap.pos.201
  %choice.res997 = phi ptr [ %rec.alloc994, %unwrap.pos.201 ], [ null, %choice.next627 ]
  br label %choice.exit616

choice.case626:                                   ; preds = %choice.else615
  %pay.gep631 = getelementptr inbounds { i64, ptr }, ptr %fld.load624, i32 0, i32 1
  %payload.ptr632 = load ptr, ptr %pay.gep631, align 8
  store ptr %payload.ptr632, ptr %var._633, align 8
  store ptr %payload.ptr632, ptr %var.b634, align 8
  %var.load635 = load ptr, ptr %var.b634, align 8
  %a.load636 = load ptr, ptr %var.b634, align 8
  %a.null637 = icmp eq ptr %a.load636, null
  br i1 %a.null637, label %a.create638, label %a.after639

choice.next627:                                   ; preds = %choice.else615
  br label %choice.exit625

a.create638:                                      ; preds = %choice.case626
  %arena.cur640 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 24)
  %arena.cur642 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf643 = call ptr @dva_arena_alloc(ptr %arena.cur642, i64 128)
  %a.len.gep644 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create641, i32 0, i32 0
  store i64 0, ptr %a.len.gep644, align 8
  %a.data.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create641, i32 0, i32 1
  store ptr %a.buf643, ptr %a.data.gep645, align 8
  %a.cap.gep646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create641, i32 0, i32 2
  store i64 16, ptr %a.cap.gep646, align 8
  store ptr %a.create641, ptr %var.b634, align 8
  br label %a.after639

a.after639:                                       ; preds = %a.create638, %choice.case626
  %a.load2647 = load ptr, ptr %var.b634, align 8
  %a.len.query648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2647, i32 0, i32 0
  %a.len.query649 = load i64, ptr %a.len.query648, align 8
  %cmptmp650 = icmp ne i64 %a.len.query649, 2
  br i1 %cmptmp650, label %choice.then651, label %choice.exit652

choice.then651:                                   ; preds = %a.after639
  ret ptr null

choice.exit652:                                   ; preds = %ret.dead653, %a.after639
  %var.load654 = load ptr, ptr %var.b634, align 8
  %a.load655 = load ptr, ptr %var.b634, align 8
  %a.null656 = icmp eq ptr %a.load655, null
  br i1 %a.null656, label %a.create657, label %a.after658

ret.dead653:                                      ; No predecessors!
  br label %choice.exit652

a.create657:                                      ; preds = %choice.exit652
  %arena.cur659 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create660 = call ptr @dva_arena_alloc(ptr %arena.cur659, i64 24)
  %arena.cur661 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf662 = call ptr @dva_arena_alloc(ptr %arena.cur661, i64 128)
  %a.len.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create660, i32 0, i32 0
  store i64 0, ptr %a.len.gep663, align 8
  %a.data.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create660, i32 0, i32 1
  store ptr %a.buf662, ptr %a.data.gep664, align 8
  %a.cap.gep665 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create660, i32 0, i32 2
  store i64 16, ptr %a.cap.gep665, align 8
  store ptr %a.create660, ptr %var.b634, align 8
  br label %a.after658

a.after658:                                       ; preds = %a.create657, %choice.exit652
  %a.load2666 = load ptr, ptr %var.b634, align 8
  %a.rd.nonnull667 = icmp ne ptr %a.load2666, null
  br i1 %a.rd.nonnull667, label %a.rd.check668, label %a.rd.err.null670

a.rd.check668:                                    ; preds = %a.after658
  %a.rd.len673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2666, i32 0, i32 0
  %a.rd.len674 = load i64, ptr %a.rd.len673, align 8
  %a.rd.lt675 = icmp slt i64 0, %a.rd.len674
  %a.rd.bounds676 = and i1 true, %a.rd.lt675
  br i1 %a.rd.bounds676, label %a.rd.ok669, label %a.rd.err.oob671

a.rd.ok669:                                       ; preds = %a.rd.check668
  %a.rd.data677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2666, i32 0, i32 1
  %a.rd.data678 = load ptr, ptr %a.rd.data677, align 8
  %a.rd.elem.gep679 = getelementptr i64, ptr %a.rd.data678, i64 0
  %a.rd.elem680 = load i64, ptr %a.rd.elem.gep679, align 8
  br label %a.rd.done672

a.rd.err.null670:                                 ; preds = %a.after658
  %arena.cur681 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc682 = call ptr @dva_arena_alloc(ptr %arena.cur681, i64 56)
  %err.code.gep683 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 0
  store i64 4011, ptr %err.code.gep683, align 8
  %err.msg.gep684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep684, align 8
  %err.file.gep685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep685, align 8
  %err.line.gep686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 3
  store i64 143, ptr %err.line.gep686, align 8
  %err.col.gep687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 4
  store i64 42, ptr %err.col.gep687, align 8
  %err.ctx.gep688 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc682, i32 0, i32 5
  %err.ctx0.gep689 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep688, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep689, align 8
  %err.ctx1.gep690 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep688, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep690, align 8
  %err.p2i691 = ptrtoint ptr %err.alloc682 to i64
  br label %a.rd.done672

a.rd.err.oob671:                                  ; preds = %a.rd.check668
  %arena.cur692 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc693 = call ptr @dva_arena_alloc(ptr %arena.cur692, i64 56)
  %err.code.gep694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 0
  store i64 4011, ptr %err.code.gep694, align 8
  %err.msg.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep695, align 8
  %err.file.gep696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep696, align 8
  %err.line.gep697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 3
  store i64 143, ptr %err.line.gep697, align 8
  %err.col.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 4
  store i64 42, ptr %err.col.gep698, align 8
  %err.ctx.gep699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 5
  %err.ctx0.gep700 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep699, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep700, align 8
  %err.ctx1.gep701 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep699, i32 0, i32 1
  store i64 %a.rd.len674, ptr %err.ctx1.gep701, align 8
  %err.p2i702 = ptrtoint ptr %err.alloc693 to i64
  br label %a.rd.done672

a.rd.done672:                                     ; preds = %a.rd.err.oob671, %a.rd.err.null670, %a.rd.ok669
  %a.rd.tag703 = phi i1 [ true, %a.rd.ok669 ], [ false, %a.rd.err.null670 ], [ false, %a.rd.err.oob671 ]
  %a.rd.pay704 = phi i64 [ %a.rd.elem680, %a.rd.ok669 ], [ %err.p2i691, %a.rd.err.null670 ], [ %err.p2i702, %a.rd.err.oob671 ]
  %ram.tag705 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag703, 0
  %ram.pay706 = insertvalue { i1, i64 } %ram.tag705, i64 %a.rd.pay704, 1
  %unwrap.is_pos707 = extractvalue { i1, i64 } %ram.pay706, 0
  br i1 %unwrap.is_pos707, label %unwrap.pos.194, label %unwrap.abort.194

unwrap.pos.194:                                   ; preds = %a.rd.done672
  %unwrap.pay.pos739 = extractvalue { i1, i64 } %ram.pay706, 1
  %pay.ptr740 = inttoptr i64 %unwrap.pay.pos739 to ptr
  store ptr %pay.ptr740, ptr %var.bind, align 8
  %var.load741 = load ptr, ptr %var.bind, align 8
  %fld.gep742 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load741, i32 0, i32 0
  %fld.load743 = load ptr, ptr %fld.gep742, align 8
  %tag.gep747 = getelementptr inbounds { i64, ptr }, ptr %fld.load743, i32 0, i32 0
  %tag.id748 = load i64, ptr %tag.gep747, align 8
  %tag.match749 = icmp eq i64 %tag.id748, 18
  br i1 %tag.match749, label %choice.case745, label %choice.next746

unwrap.abort.194:                                 ; preds = %a.rd.done672
  %unwrap.pay.abort708 = extractvalue { i1, i64 } %ram.pay706, 1
  %err.ptr709 = inttoptr i64 %unwrap.pay.abort708 to ptr
  %err.code.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 0
  %err.code711 = load i64, ptr %err.code.gep710, align 8
  %err.msg.gep712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 1
  %err.msg.struct713 = load ptr, ptr %err.msg.gep712, align 8
  %err.file.gep714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 2
  %err.file.struct715 = load ptr, ptr %err.file.gep714, align 8
  %err.line.gep716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 3
  %err.line717 = load i64, ptr %err.line.gep716, align 8
  %err.col.gep718 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 4
  %err.col719 = load i64, ptr %err.col.gep718, align 8
  %err.msg.len720 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct713, i32 0, i32 0
  %err.msg.len721 = load i64, ptr %err.msg.len720, align 8
  %err.msg.len722 = and i64 %err.msg.len721, 281474976710655
  %err.msg.len32723 = trunc i64 %err.msg.len722 to i32
  %err.msg.data724 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct713, i32 0, i32 1
  %err.msg.data725 = load ptr, ptr %err.msg.data724, align 8
  %err.file.len726 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct715, i32 0, i32 0
  %err.file.len727 = load i64, ptr %err.file.len726, align 8
  %err.file.len728 = and i64 %err.file.len727, 281474976710655
  %err.file.len32729 = trunc i64 %err.file.len728 to i32
  %err.file.data730 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct715, i32 0, i32 1
  %err.file.data731 = load ptr, ptr %err.file.data730, align 8
  %err.thread.rec732 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread733 = icmp ne ptr %err.thread.rec732, null
  br i1 %err.is.thread733, label %err.thread734, label %err.normal735

err.thread734:                                    ; preds = %unwrap.abort.194
  %err.haserr.gep736 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep736, align 8
  %err.err.gep737 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 7
  store ptr %err.ptr709, ptr %err.err.gep737, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal735:                                    ; preds = %unwrap.abort.194
  %err.panic.printf738 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code711, i32 %err.msg.len32723, ptr %err.msg.data725, i32 %err.file.len32729, ptr %err.file.data731, i64 %err.line717, i64 %err.col719)
  call void @exit(i32 1)
  unreachable

choice.exit744:                                   ; preds = %choice.next746, %choice.exit806
  %choice.res811 = phi ptr [ %choice.res810, %choice.exit806 ], [ @str.0.struct, %choice.next746 ]
  store ptr %choice.res811, ptr %var.acc, align 8
  %var.load812 = load ptr, ptr %var.acc, align 8
  %eq.lhs.len816 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 0
  %eq.lhs.len817 = load i64, ptr %eq.lhs.len816, align 8
  %eq.lhs.len818 = and i64 %eq.lhs.len817, 281474976710655
  %eq.rhs.len819 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len820 = and i64 %eq.rhs.len819, 281474976710655
  %eq.len821 = icmp eq i64 %eq.lhs.len818, %eq.rhs.len820
  br i1 %eq.len821, label %str.eq.then822, label %str.eq.else823

choice.case745:                                   ; preds = %unwrap.pos.194
  %pay.gep750 = getelementptr inbounds { i64, ptr }, ptr %fld.load743, i32 0, i32 1
  %payload.ptr751 = load ptr, ptr %pay.gep750, align 8
  store ptr %payload.ptr751, ptr %var._752, align 8
  store ptr %payload.ptr751, ptr %var.a753, align 8
  %var.load754 = load ptr, ptr %var.a753, align 8
  %fld.gep755 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load754, i32 0, i32 5
  %fld.gep756 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep755, i32 0, i32 0
  %fld.load757 = load ptr, ptr %fld.gep756, align 8
  %tag.gep761 = getelementptr inbounds { i64, ptr }, ptr %fld.load757, i32 0, i32 0
  %tag.id762 = load i64, ptr %tag.gep761, align 8
  %tag.match763 = icmp eq i64 %tag.id762, 6
  br i1 %tag.match763, label %choice.case759, label %choice.next760

choice.next746:                                   ; preds = %unwrap.pos.194
  br label %choice.exit744

choice.exit758:                                   ; preds = %choice.next760, %choice.case759
  %choice.res771 = phi ptr [ %fld.load770, %choice.case759 ], [ @str.0.struct, %choice.next760 ]
  store ptr %choice.res771, ptr %var.src, align 8
  %var.load772 = load ptr, ptr %var.a753, align 8
  %fld.gep773 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load772, i32 0, i32 1
  %fld.load774 = load i1, ptr %fld.gep773, align 1
  br i1 %fld.load774, label %and.195.then, label %and.195.else

choice.case759:                                   ; preds = %choice.case745
  %pay.gep764 = getelementptr inbounds { i64, ptr }, ptr %fld.load757, i32 0, i32 1
  %payload.ptr765 = load ptr, ptr %pay.gep764, align 8
  store ptr %payload.ptr765, ptr %var._766, align 8
  store ptr %payload.ptr765, ptr %var.v767, align 8
  %var.load768 = load ptr, ptr %var.v767, align 8
  %fld.gep769 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load768, i32 0, i32 0
  %fld.load770 = load ptr, ptr %fld.gep769, align 8
  br label %choice.exit758

choice.next760:                                   ; preds = %choice.case745
  br label %choice.exit758

and.195.then:                                     ; preds = %choice.exit758
  %var.load775 = load ptr, ptr %var.a753, align 8
  %fld.gep776 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load775, i32 0, i32 2
  %fld.load777 = load i1, ptr %fld.gep776, align 1
  br i1 %fld.load777, label %or.196.then, label %or.196.else

and.195.else:                                     ; preds = %choice.exit758
  br label %and.195.exit

and.195.exit:                                     ; preds = %and.195.else, %or.197.exit
  %and.195.phi = phi i1 [ %nottmp784, %or.197.exit ], [ %fld.load774, %and.195.else ]
  br i1 %and.195.phi, label %and.198.then, label %and.198.else

or.196.then:                                      ; preds = %and.195.then
  br label %or.196.exit

or.196.else:                                      ; preds = %and.195.then
  %var.load778 = load ptr, ptr %var.a753, align 8
  %fld.gep779 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load778, i32 0, i32 3
  %fld.load780 = load i1, ptr %fld.gep779, align 1
  br label %or.196.exit

or.196.exit:                                      ; preds = %or.196.else, %or.196.then
  %or.196.phi = phi i1 [ %fld.load777, %or.196.then ], [ %fld.load780, %or.196.else ]
  br i1 %or.196.phi, label %or.197.then, label %or.197.else

or.197.then:                                      ; preds = %or.196.exit
  br label %or.197.exit

or.197.else:                                      ; preds = %or.196.exit
  %var.load781 = load ptr, ptr %var.a753, align 8
  %fld.gep782 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load781, i32 0, i32 4
  %fld.load783 = load i1, ptr %fld.gep782, align 1
  br label %or.197.exit

or.197.exit:                                      ; preds = %or.197.else, %or.197.then
  %or.197.phi = phi i1 [ %or.196.phi, %or.197.then ], [ %fld.load783, %or.197.else ]
  %nottmp784 = xor i1 %or.197.phi, true
  br label %and.195.exit

and.198.then:                                     ; preds = %and.195.exit
  %var.load785 = load ptr, ptr %var.src, align 8
  %var.load786 = load ptr, ptr %var.out, align 8
  %eq.lhs.len787 = getelementptr inbounds { i64, ptr }, ptr %var.load785, i32 0, i32 0
  %eq.lhs.len788 = load i64, ptr %eq.lhs.len787, align 8
  %eq.lhs.len789 = and i64 %eq.lhs.len788, 281474976710655
  %eq.rhs.len790 = getelementptr inbounds { i64, ptr }, ptr %var.load786, i32 0, i32 0
  %eq.rhs.len791 = load i64, ptr %eq.rhs.len790, align 8
  %eq.rhs.len792 = and i64 %eq.rhs.len791, 281474976710655
  %eq.len793 = icmp eq i64 %eq.lhs.len789, %eq.rhs.len792
  br i1 %eq.len793, label %str.eq.then794, label %str.eq.else795

and.198.else:                                     ; preds = %and.195.exit
  br label %and.198.exit

and.198.exit:                                     ; preds = %and.198.else, %str.eq.merge796
  %and.198.phi = phi i1 [ %str.eq.result803, %str.eq.merge796 ], [ %and.195.phi, %and.198.else ]
  br i1 %and.198.phi, label %choice.then804, label %choice.else805

str.eq.then794:                                   ; preds = %and.198.then
  %eq.lhs.data797 = getelementptr inbounds { i64, ptr }, ptr %var.load785, i32 0, i32 1
  %eq.lhs.data798 = load ptr, ptr %eq.lhs.data797, align 8
  %eq.rhs.data799 = getelementptr inbounds { i64, ptr }, ptr %var.load786, i32 0, i32 1
  %eq.rhs.data800 = load ptr, ptr %eq.rhs.data799, align 8
  %eq.memcmp801 = call i32 @memcmp(ptr %eq.lhs.data798, ptr %eq.rhs.data800, i64 %eq.lhs.len789)
  %eq.cmp.zero802 = icmp eq i32 %eq.memcmp801, 0
  br label %str.eq.merge796

str.eq.else795:                                   ; preds = %and.198.then
  br label %str.eq.merge796

str.eq.merge796:                                  ; preds = %str.eq.else795, %str.eq.then794
  %str.eq.result803 = phi i1 [ %eq.cmp.zero802, %str.eq.then794 ], [ false, %str.eq.else795 ]
  br label %and.198.exit

choice.then804:                                   ; preds = %and.198.exit
  %var.load807 = load ptr, ptr %var.a753, align 8
  %fld.gep808 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load807, i32 0, i32 0
  %fld.load809 = load ptr, ptr %fld.gep808, align 8
  br label %choice.exit806

choice.else805:                                   ; preds = %and.198.exit
  br label %choice.exit806

choice.exit806:                                   ; preds = %choice.else805, %choice.then804
  %choice.res810 = phi ptr [ %fld.load809, %choice.then804 ], [ @str.0.struct, %choice.else805 ]
  br label %choice.exit744

choice.exit813:                                   ; preds = %choice.next815, %choice.case814
  %choice.res863 = phi i1 [ true, %choice.case814 ], [ false, %choice.next815 ]
  br i1 %choice.res863, label %or.199.then, label %or.199.else

choice.case814:                                   ; preds = %str.eq.merge855
  br label %choice.exit813

choice.next815:                                   ; preds = %str.eq.merge855
  br label %choice.exit813

str.eq.then822:                                   ; preds = %choice.exit744
  %eq.lhs.data825 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 1
  %eq.lhs.data826 = load ptr, ptr %eq.lhs.data825, align 8
  %eq.rhs.data827 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp828 = call i32 @memcmp(ptr %eq.lhs.data826, ptr %eq.rhs.data827, i64 %eq.lhs.len818)
  %eq.cmp.zero829 = icmp eq i32 %eq.memcmp828, 0
  br label %str.eq.merge824

str.eq.else823:                                   ; preds = %choice.exit744
  br label %str.eq.merge824

str.eq.merge824:                                  ; preds = %str.eq.else823, %str.eq.then822
  %str.eq.result830 = phi i1 [ %eq.cmp.zero829, %str.eq.then822 ], [ false, %str.eq.else823 ]
  %eq.lhs.len831 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 0
  %eq.lhs.len832 = load i64, ptr %eq.lhs.len831, align 8
  %eq.lhs.len833 = and i64 %eq.lhs.len832, 281474976710655
  %eq.rhs.len834 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len835 = and i64 %eq.rhs.len834, 281474976710655
  %eq.len836 = icmp eq i64 %eq.lhs.len833, %eq.rhs.len835
  br i1 %eq.len836, label %str.eq.then837, label %str.eq.else838

str.eq.then837:                                   ; preds = %str.eq.merge824
  %eq.lhs.data840 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 1
  %eq.lhs.data841 = load ptr, ptr %eq.lhs.data840, align 8
  %eq.rhs.data842 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp843 = call i32 @memcmp(ptr %eq.lhs.data841, ptr %eq.rhs.data842, i64 %eq.lhs.len833)
  %eq.cmp.zero844 = icmp eq i32 %eq.memcmp843, 0
  br label %str.eq.merge839

str.eq.else838:                                   ; preds = %str.eq.merge824
  br label %str.eq.merge839

str.eq.merge839:                                  ; preds = %str.eq.else838, %str.eq.then837
  %str.eq.result845 = phi i1 [ %eq.cmp.zero844, %str.eq.then837 ], [ false, %str.eq.else838 ]
  %case.or846 = or i1 %str.eq.result830, %str.eq.result845
  %eq.lhs.len847 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 0
  %eq.lhs.len848 = load i64, ptr %eq.lhs.len847, align 8
  %eq.lhs.len849 = and i64 %eq.lhs.len848, 281474976710655
  %eq.rhs.len850 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len851 = and i64 %eq.rhs.len850, 281474976710655
  %eq.len852 = icmp eq i64 %eq.lhs.len849, %eq.rhs.len851
  br i1 %eq.len852, label %str.eq.then853, label %str.eq.else854

str.eq.then853:                                   ; preds = %str.eq.merge839
  %eq.lhs.data856 = getelementptr inbounds { i64, ptr }, ptr %var.load812, i32 0, i32 1
  %eq.lhs.data857 = load ptr, ptr %eq.lhs.data856, align 8
  %eq.rhs.data858 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp859 = call i32 @memcmp(ptr %eq.lhs.data857, ptr %eq.rhs.data858, i64 %eq.lhs.len849)
  %eq.cmp.zero860 = icmp eq i32 %eq.memcmp859, 0
  br label %str.eq.merge855

str.eq.else854:                                   ; preds = %str.eq.merge839
  br label %str.eq.merge855

str.eq.merge855:                                  ; preds = %str.eq.else854, %str.eq.then853
  %str.eq.result861 = phi i1 [ %eq.cmp.zero860, %str.eq.then853 ], [ false, %str.eq.else854 ]
  %case.or862 = or i1 %case.or846, %str.eq.result861
  br i1 %case.or862, label %choice.case814, label %choice.next815

or.199.then:                                      ; preds = %choice.exit813
  br label %or.199.exit

or.199.else:                                      ; preds = %choice.exit813
  %var.load864 = load ptr, ptr %var.acc, align 8
  %var.load865 = load ptr, ptr %var.p0, align 8
  %eq.lhs.len866 = getelementptr inbounds { i64, ptr }, ptr %var.load864, i32 0, i32 0
  %eq.lhs.len867 = load i64, ptr %eq.lhs.len866, align 8
  %eq.lhs.len868 = and i64 %eq.lhs.len867, 281474976710655
  %eq.rhs.len869 = getelementptr inbounds { i64, ptr }, ptr %var.load865, i32 0, i32 0
  %eq.rhs.len870 = load i64, ptr %eq.rhs.len869, align 8
  %eq.rhs.len871 = and i64 %eq.rhs.len870, 281474976710655
  %eq.len872 = icmp eq i64 %eq.lhs.len868, %eq.rhs.len871
  br i1 %eq.len872, label %str.eq.then873, label %str.eq.else874

or.199.exit:                                      ; preds = %str.eq.merge875, %or.199.then
  %or.199.phi = phi i1 [ %choice.res863, %or.199.then ], [ %str.eq.result882, %str.eq.merge875 ]
  br i1 %or.199.phi, label %or.200.then, label %or.200.else

str.eq.then873:                                   ; preds = %or.199.else
  %eq.lhs.data876 = getelementptr inbounds { i64, ptr }, ptr %var.load864, i32 0, i32 1
  %eq.lhs.data877 = load ptr, ptr %eq.lhs.data876, align 8
  %eq.rhs.data878 = getelementptr inbounds { i64, ptr }, ptr %var.load865, i32 0, i32 1
  %eq.rhs.data879 = load ptr, ptr %eq.rhs.data878, align 8
  %eq.memcmp880 = call i32 @memcmp(ptr %eq.lhs.data877, ptr %eq.rhs.data879, i64 %eq.lhs.len868)
  %eq.cmp.zero881 = icmp eq i32 %eq.memcmp880, 0
  br label %str.eq.merge875

str.eq.else874:                                   ; preds = %or.199.else
  br label %str.eq.merge875

str.eq.merge875:                                  ; preds = %str.eq.else874, %str.eq.then873
  %str.eq.result882 = phi i1 [ %eq.cmp.zero881, %str.eq.then873 ], [ false, %str.eq.else874 ]
  br label %or.199.exit

or.200.then:                                      ; preds = %or.199.exit
  br label %or.200.exit

or.200.else:                                      ; preds = %or.199.exit
  %var.load883 = load ptr, ptr %var.acc, align 8
  %var.load884 = load ptr, ptr %var.p1, align 8
  %eq.lhs.len885 = getelementptr inbounds { i64, ptr }, ptr %var.load883, i32 0, i32 0
  %eq.lhs.len886 = load i64, ptr %eq.lhs.len885, align 8
  %eq.lhs.len887 = and i64 %eq.lhs.len886, 281474976710655
  %eq.rhs.len888 = getelementptr inbounds { i64, ptr }, ptr %var.load884, i32 0, i32 0
  %eq.rhs.len889 = load i64, ptr %eq.rhs.len888, align 8
  %eq.rhs.len890 = and i64 %eq.rhs.len889, 281474976710655
  %eq.len891 = icmp eq i64 %eq.lhs.len887, %eq.rhs.len890
  br i1 %eq.len891, label %str.eq.then892, label %str.eq.else893

or.200.exit:                                      ; preds = %str.eq.merge894, %or.200.then
  %or.200.phi = phi i1 [ %or.199.phi, %or.200.then ], [ %str.eq.result901, %str.eq.merge894 ]
  br i1 %or.200.phi, label %choice.then902, label %choice.exit903

str.eq.then892:                                   ; preds = %or.200.else
  %eq.lhs.data895 = getelementptr inbounds { i64, ptr }, ptr %var.load883, i32 0, i32 1
  %eq.lhs.data896 = load ptr, ptr %eq.lhs.data895, align 8
  %eq.rhs.data897 = getelementptr inbounds { i64, ptr }, ptr %var.load884, i32 0, i32 1
  %eq.rhs.data898 = load ptr, ptr %eq.rhs.data897, align 8
  %eq.memcmp899 = call i32 @memcmp(ptr %eq.lhs.data896, ptr %eq.rhs.data898, i64 %eq.lhs.len887)
  %eq.cmp.zero900 = icmp eq i32 %eq.memcmp899, 0
  br label %str.eq.merge894

str.eq.else893:                                   ; preds = %or.200.else
  br label %str.eq.merge894

str.eq.merge894:                                  ; preds = %str.eq.else893, %str.eq.then892
  %str.eq.result901 = phi i1 [ %eq.cmp.zero900, %str.eq.then892 ], [ false, %str.eq.else893 ]
  br label %or.200.exit

choice.then902:                                   ; preds = %or.200.exit
  ret ptr null

choice.exit903:                                   ; preds = %ret.dead904, %or.200.exit
  %var.load905 = load ptr, ptr %var.b634, align 8
  %a.load906 = load ptr, ptr %var.b634, align 8
  %a.null907 = icmp eq ptr %a.load906, null
  br i1 %a.null907, label %a.create908, label %a.after909

ret.dead904:                                      ; No predecessors!
  br label %choice.exit903

a.create908:                                      ; preds = %choice.exit903
  %arena.cur910 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create911 = call ptr @dva_arena_alloc(ptr %arena.cur910, i64 24)
  %arena.cur912 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf913 = call ptr @dva_arena_alloc(ptr %arena.cur912, i64 128)
  %a.len.gep914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 0
  store i64 0, ptr %a.len.gep914, align 8
  %a.data.gep915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 1
  store ptr %a.buf913, ptr %a.data.gep915, align 8
  %a.cap.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 2
  store i64 16, ptr %a.cap.gep916, align 8
  store ptr %a.create911, ptr %var.b634, align 8
  br label %a.after909

a.after909:                                       ; preds = %a.create908, %choice.exit903
  %a.load2917 = load ptr, ptr %var.b634, align 8
  %a.rd.nonnull918 = icmp ne ptr %a.load2917, null
  br i1 %a.rd.nonnull918, label %a.rd.check919, label %a.rd.err.null921

a.rd.check919:                                    ; preds = %a.after909
  %a.rd.len924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 0
  %a.rd.len925 = load i64, ptr %a.rd.len924, align 8
  %a.rd.lt926 = icmp slt i64 1, %a.rd.len925
  %a.rd.bounds927 = and i1 true, %a.rd.lt926
  br i1 %a.rd.bounds927, label %a.rd.ok920, label %a.rd.err.oob922

a.rd.ok920:                                       ; preds = %a.rd.check919
  %a.rd.data928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 1
  %a.rd.data929 = load ptr, ptr %a.rd.data928, align 8
  %a.rd.elem.gep930 = getelementptr i64, ptr %a.rd.data929, i64 1
  %a.rd.elem931 = load i64, ptr %a.rd.elem.gep930, align 8
  br label %a.rd.done923

a.rd.err.null921:                                 ; preds = %a.after909
  %arena.cur932 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc933 = call ptr @dva_arena_alloc(ptr %arena.cur932, i64 56)
  %err.code.gep934 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 0
  store i64 4011, ptr %err.code.gep934, align 8
  %err.msg.gep935 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep935, align 8
  %err.file.gep936 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep936, align 8
  %err.line.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 3
  store i64 150, ptr %err.line.gep937, align 8
  %err.col.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 4
  store i64 39, ptr %err.col.gep938, align 8
  %err.ctx.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc933, i32 0, i32 5
  %err.ctx0.gep940 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep939, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep940, align 8
  %err.ctx1.gep941 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep939, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep941, align 8
  %err.p2i942 = ptrtoint ptr %err.alloc933 to i64
  br label %a.rd.done923

a.rd.err.oob922:                                  ; preds = %a.rd.check919
  %arena.cur943 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc944 = call ptr @dva_arena_alloc(ptr %arena.cur943, i64 56)
  %err.code.gep945 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 0
  store i64 4011, ptr %err.code.gep945, align 8
  %err.msg.gep946 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep946, align 8
  %err.file.gep947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep947, align 8
  %err.line.gep948 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 3
  store i64 150, ptr %err.line.gep948, align 8
  %err.col.gep949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 4
  store i64 39, ptr %err.col.gep949, align 8
  %err.ctx.gep950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc944, i32 0, i32 5
  %err.ctx0.gep951 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep950, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep951, align 8
  %err.ctx1.gep952 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep950, i32 0, i32 1
  store i64 %a.rd.len925, ptr %err.ctx1.gep952, align 8
  %err.p2i953 = ptrtoint ptr %err.alloc944 to i64
  br label %a.rd.done923

a.rd.done923:                                     ; preds = %a.rd.err.oob922, %a.rd.err.null921, %a.rd.ok920
  %a.rd.tag954 = phi i1 [ true, %a.rd.ok920 ], [ false, %a.rd.err.null921 ], [ false, %a.rd.err.oob922 ]
  %a.rd.pay955 = phi i64 [ %a.rd.elem931, %a.rd.ok920 ], [ %err.p2i942, %a.rd.err.null921 ], [ %err.p2i953, %a.rd.err.oob922 ]
  %ram.tag956 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag954, 0
  %ram.pay957 = insertvalue { i1, i64 } %ram.tag956, i64 %a.rd.pay955, 1
  %unwrap.is_pos958 = extractvalue { i1, i64 } %ram.pay957, 0
  br i1 %unwrap.is_pos958, label %unwrap.pos.201, label %unwrap.abort.201

unwrap.pos.201:                                   ; preds = %a.rd.done923
  %unwrap.pay.pos990 = extractvalue { i1, i64 } %ram.pay957, 1
  %pay.ptr991 = inttoptr i64 %unwrap.pay.pos990 to ptr
  %var.load992 = load ptr, ptr %var.acc, align 8
  %arena.cur993 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc994 = call ptr @dva_arena_alloc(ptr %arena.cur993, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld995 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc994, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld995, ptr align 1 %pay.ptr991, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld996 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc994, i32 0, i32 1
  store ptr %var.load992, ptr %rec.fld996, align 8
  br label %choice.exit625

unwrap.abort.201:                                 ; preds = %a.rd.done923
  %unwrap.pay.abort959 = extractvalue { i1, i64 } %ram.pay957, 1
  %err.ptr960 = inttoptr i64 %unwrap.pay.abort959 to ptr
  %err.code.gep961 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr960, i32 0, i32 0
  %err.code962 = load i64, ptr %err.code.gep961, align 8
  %err.msg.gep963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr960, i32 0, i32 1
  %err.msg.struct964 = load ptr, ptr %err.msg.gep963, align 8
  %err.file.gep965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr960, i32 0, i32 2
  %err.file.struct966 = load ptr, ptr %err.file.gep965, align 8
  %err.line.gep967 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr960, i32 0, i32 3
  %err.line968 = load i64, ptr %err.line.gep967, align 8
  %err.col.gep969 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr960, i32 0, i32 4
  %err.col970 = load i64, ptr %err.col.gep969, align 8
  %err.msg.len971 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct964, i32 0, i32 0
  %err.msg.len972 = load i64, ptr %err.msg.len971, align 8
  %err.msg.len973 = and i64 %err.msg.len972, 281474976710655
  %err.msg.len32974 = trunc i64 %err.msg.len973 to i32
  %err.msg.data975 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct964, i32 0, i32 1
  %err.msg.data976 = load ptr, ptr %err.msg.data975, align 8
  %err.file.len977 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct966, i32 0, i32 0
  %err.file.len978 = load i64, ptr %err.file.len977, align 8
  %err.file.len979 = and i64 %err.file.len978, 281474976710655
  %err.file.len32980 = trunc i64 %err.file.len979 to i32
  %err.file.data981 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct966, i32 0, i32 1
  %err.file.data982 = load ptr, ptr %err.file.data981, align 8
  %err.thread.rec983 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread984 = icmp ne ptr %err.thread.rec983, null
  br i1 %err.is.thread984, label %err.thread985, label %err.normal986

err.thread985:                                    ; preds = %unwrap.abort.201
  %err.haserr.gep987 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec983, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep987, align 8
  %err.err.gep988 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec983, i32 0, i32 7
  store ptr %err.ptr960, ptr %err.err.gep988, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal986:                                    ; preds = %unwrap.abort.201
  %err.panic.printf989 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code962, i32 %err.msg.len32974, ptr %err.msg.data976, i32 %err.file.len32980, ptr %err.file.data982, i64 %err.line968, i64 %err.col970)
  call void @exit(i32 1)
  unreachable

choice.then1001:                                  ; preds = %choice.exit616
  store ptr %var.load999, ptr %var._1004, align 8
  store ptr %var.load999, ptr %var.s, align 8
  %var.load1005 = load ptr, ptr %var.init, align 8
  %var.load1006 = load ptr, ptr %var.cycle, align 8
  %var.load1007 = load ptr, ptr %var.result, align 8
  %var.load1008 = load ptr, ptr %var.c, align 8
  %fld.gep1009 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load1008, i32 0, i32 0
  %var.load1010 = load ptr, ptr %var.c, align 8
  %fld.gep1011 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load1010, i32 0, i32 1
  %var.load1012 = load ptr, ptr %var.lam, align 8
  %fld.gep1013 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load1012, i32 0, i32 0
  %fld.load1014 = load ptr, ptr %fld.gep1013, align 8
  %var.load1015 = load ptr, ptr %var.s, align 8
  %fld.gep1016 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load1015, i32 0, i32 0
  %var.load1017 = load ptr, ptr %var.out, align 8
  %var.load1018 = load ptr, ptr %var.s, align 8
  %fld.gep1019 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load1018, i32 0, i32 1
  %fld.load1020 = load ptr, ptr %fld.gep1019, align 8
  %var.load1021 = load i1, ptr %var.collects, align 1
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %var.load1022 = load ptr, ptr %var.out, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load1022, i32 0, i32 0
  %cat.seg1023 = load i64, ptr %cat.seg, align 8
  %cat.seg1024 = and i64 %cat.seg1023, 281474976710655
  %cat.seg1025 = getelementptr inbounds { i64, ptr }, ptr %var.load1022, i32 0, i32 1
  %cat.seg1026 = load ptr, ptr %cat.seg1025, align 8
  %cat.lit.data1027 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1024)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len1028

choice.else1002:                                  ; preds = %choice.exit616
  br label %choice.exit1003

choice.exit1003:                                  ; preds = %choice.else1002, %concat.tot.len1067
  %choice.res1095 = phi ptr [ %rec.alloc1082, %concat.tot.len1067 ], [ null, %choice.else1002 ]
  br label %choice.exit403

cat.sum.len1028:                                  ; preds = %abort.dead, %choice.then1001
  %cat.sum.len1029 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 6)
  %sum1030 = extractvalue { i64, i1 } %cat.sum.len1029, 0
  %ovf1031 = extractvalue { i64, i1 } %cat.sum.len1029, 1
  br i1 %ovf1031, label %str_overflow_abort1033, label %cat.sum.len1032

str_overflow_abort:                               ; preds = %choice.then1001
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len1028

cat.sum.len1032:                                  ; preds = %abort.dead1034, %cat.sum.len1028
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1030, i64 1)
  %sum1035 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1036 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1036, label %str_overflow_abort1038, label %concat.tot.len1037

str_overflow_abort1033:                           ; preds = %cat.sum.len1028
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1034:                                   ; No predecessors!
  br label %cat.sum.len1032

concat.tot.len1037:                               ; preds = %abort.dead1039, %cat.sum.len1032
  %arena.cur1040 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1040, i64 %sum1035)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.dst1041 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1041, ptr align 1 %cat.seg1026, i64 %cat.seg1024, i1 false)
  %cat.off = add i64 6, %cat.seg1024
  %cat.dst1042 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1042, ptr align 1 %cat.lit.data1027, i64 6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1030
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1043 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1043, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum1030, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %cat.lit.data1044 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %var.load1045 = load ptr, ptr %var.out, align 8
  %cat.seg1046 = getelementptr inbounds { i64, ptr }, ptr %var.load1045, i32 0, i32 0
  %cat.seg1047 = load i64, ptr %cat.seg1046, align 8
  %cat.seg1048 = and i64 %cat.seg1047, 281474976710655
  %cat.seg1049 = getelementptr inbounds { i64, ptr }, ptr %var.load1045, i32 0, i32 1
  %cat.seg1050 = load ptr, ptr %cat.seg1049, align 8
  %cat.lit.data1051 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %cat.sum.len1052 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1048)
  %sum1053 = extractvalue { i64, i1 } %cat.sum.len1052, 0
  %ovf1054 = extractvalue { i64, i1 } %cat.sum.len1052, 1
  br i1 %ovf1054, label %str_overflow_abort1056, label %cat.sum.len1055

str_overflow_abort1038:                           ; preds = %cat.sum.len1032
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1039:                                   ; No predecessors!
  br label %concat.tot.len1037

cat.sum.len1055:                                  ; preds = %abort.dead1057, %concat.tot.len1037
  %cat.sum.len1058 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1053, i64 6)
  %sum1059 = extractvalue { i64, i1 } %cat.sum.len1058, 0
  %ovf1060 = extractvalue { i64, i1 } %cat.sum.len1058, 1
  br i1 %ovf1060, label %str_overflow_abort1062, label %cat.sum.len1061

str_overflow_abort1056:                           ; preds = %concat.tot.len1037
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1057:                                   ; No predecessors!
  br label %cat.sum.len1055

cat.sum.len1061:                                  ; preds = %abort.dead1063, %cat.sum.len1055
  %concat.tot.len1064 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1059, i64 1)
  %sum1065 = extractvalue { i64, i1 } %concat.tot.len1064, 0
  %ovf1066 = extractvalue { i64, i1 } %concat.tot.len1064, 1
  br i1 %ovf1066, label %str_overflow_abort1068, label %concat.tot.len1067

str_overflow_abort1062:                           ; preds = %cat.sum.len1055
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1063:                                   ; No predecessors!
  br label %cat.sum.len1061

concat.tot.len1067:                               ; preds = %abort.dead1069, %cat.sum.len1061
  %arena.cur1070 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1071 = call ptr @dva_arena_alloc(ptr %arena.cur1070, i64 %sum1065)
  %cat.dst1072 = getelementptr i8, ptr %concat.buf1071, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1072, ptr align 1 %cat.lit.data1044, i64 6, i1 false)
  %cat.dst1073 = getelementptr i8, ptr %concat.buf1071, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1073, ptr align 1 %cat.seg1050, i64 %cat.seg1048, i1 false)
  %cat.off1074 = add i64 6, %cat.seg1048
  %cat.dst1075 = getelementptr i8, ptr %concat.buf1071, i64 %cat.off1074
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1075, ptr align 1 %cat.lit.data1051, i64 6, i1 false)
  %concat.nul1076 = getelementptr i8, ptr %concat.buf1071, i64 %sum1059
  store i8 0, ptr %concat.nul1076, align 1
  %arena.cur1077 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1078 = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 16)
  %str.build.len.gep1079 = getelementptr inbounds { i64, ptr }, ptr %concat.str1078, i32 0, i32 0
  store i64 %sum1059, ptr %str.build.len.gep1079, align 8
  %str.build.data.gep1080 = getelementptr inbounds { i64, ptr }, ptr %concat.str1078, i32 0, i32 1
  store ptr %concat.buf1071, ptr %str.build.data.gep1080, align 8
  %arena.cur1081 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1082 = call ptr @dva_arena_alloc(ptr %arena.cur1081, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1083 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1083, ptr align 1 %var.load1005, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1084 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1084, ptr align 1 %var.load1006, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1085 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1085, ptr align 1 %var.load1007, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1086 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1086, ptr align 1 %fld.gep1009, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1087 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1087, ptr align 1 %fld.gep1011, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1088 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 5
  store ptr %fld.load1014, ptr %rec.fld1088, align 8
  %rec.fld1089 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1089, ptr align 1 %fld.gep1016, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1090 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 7
  store ptr %var.load1017, ptr %rec.fld1090, align 8
  %rec.fld1091 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 8
  store ptr %fld.load1020, ptr %rec.fld1091, align 8
  %rec.fld1092 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 9
  store i1 %var.load1021, ptr %rec.fld1092, align 1
  %rec.fld1093 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 10
  store ptr %concat.str, ptr %rec.fld1093, align 8
  %rec.fld1094 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1082, i32 0, i32 11
  store ptr %concat.str1078, ptr %rec.fld1094, align 8
  br label %choice.exit1003

str_overflow_abort1068:                           ; preds = %cat.sum.len1061
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1069:                                   ; No predecessors!
  br label %concat.tot.len1067
}

declare i1 @"str::starts_with"(ptr, ptr) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

define internal i1 @"typedopt::#bare_branch"(ptr %0) #3 {
entry:
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %and.203.then, label %and.203.else

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

and.203.then:                                     ; preds = %choice.exit
  %var.load1 = load ptr, ptr %var.b, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %a.len.query4, 0
  br label %and.203.exit

and.203.else:                                     ; preds = %choice.exit
  br label %and.203.exit

and.203.exit:                                     ; preds = %and.203.else, %and.203.then
  %and.203.phi = phi i1 [ %cmptmp, %and.203.then ], [ %choice.res, %and.203.else ]
  br i1 %and.203.phi, label %and.204.then, label %and.204.else

and.204.then:                                     ; preds = %and.203.exit
  %var.load5 = load ptr, ptr %var.b, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load5, i32 0, i32 2
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %niche.ne.null = icmp ne ptr %fld.load7, null
  %nottmp = xor i1 %niche.ne.null, true
  br label %and.204.exit

and.204.else:                                     ; preds = %and.203.exit
  br label %and.204.exit

and.204.exit:                                     ; preds = %and.204.else, %and.204.then
  %and.204.phi = phi i1 [ %nottmp, %and.204.then ], [ %and.203.phi, %and.204.else ]
  br i1 %and.204.phi, label %and.205.then, label %and.205.else

and.205.then:                                     ; preds = %and.204.exit
  %var.load8 = load ptr, ptr %var.b, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %a.len.query11 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load10, i32 0, i32 0
  %a.len.query12 = load i64, ptr %a.len.query11, align 8
  %cmptmp13 = icmp eq i64 %a.len.query12, 0
  br label %and.205.exit

and.205.else:                                     ; preds = %and.204.exit
  br label %and.205.exit

and.205.exit:                                     ; preds = %and.205.else, %and.205.then
  %and.205.phi = phi i1 [ %cmptmp13, %and.205.then ], [ %and.204.phi, %and.205.else ]
  ret i1 %and.205.phi
}

define internal ptr @"typedopt::#stage_value"(ptr %0, ptr %1) #3 {
entry:
  %var.__ctor_arg_596 = alloca ptr, align 8
  %var.__ctor_arg_590 = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var._739 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.b738 = alloca ptr, align 8
  %loop.step.220 = alloca i64, align 8
  %loop.idx.220 = alloca i64, align 8
  %var.branches = alloca ptr, align 8
  %var.cond = alloca ptr, align 8
  %var.is_flag = alloca i1, align 1
  %var.p696 = alloca ptr, align 8
  %var._695 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._682 = alloca ptr, align 8
  %var.__ctor_arg_547 = alloca ptr, align 8
  %var.v624 = alloca ptr, align 8
  %var._623 = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var._605 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._583 = alloca ptr, align 8
  %var.__ctor_arg_518 = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._539 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._512 = alloca ptr, align 8
  %var.__ctor_arg_495 = alloca ptr, align 8
  %var.rhs = alloca ptr, align 8
  %var.lhs = alloca ptr, align 8
  %var.safe_op = alloca i1, align 1
  %var.safe_div = alloca i1, align 1
  %var.n = alloca i64, align 8
  %var._407 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var._376 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var._232 = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var.p0 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._102 = alloca ptr, align 8
  %var.es = alloca ptr, align 8
  %var._47 = alloca ptr, align 8
  %var._38 = alloca i64, align 8
  %var._22 = alloca ptr, align 8
  %var.scalar = alloca i1, align 1
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call i1 @"typedopt::#wide_int"(ptr %var.load)
  br i1 %call.res, label %or.208.then, label %or.208.else

or.208.then:                                      ; preds = %entry
  br label %or.208.exit

or.208.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

or.208.exit:                                      ; preds = %choice.exit, %or.208.then
  %or.208.phi = phi i1 [ %call.res, %or.208.then ], [ %choice.res9, %choice.exit ]
  store i1 %or.208.phi, ptr %var.scalar, align 1
  %var.load10 = load i1, ptr %var.scalar, align 1
  %nottmp = xor i1 %var.load10, true
  br i1 %nottmp, label %and.209.then, label %and.209.else

choice.exit:                                      ; preds = %choice.next, %choice.exit3
  %choice.res9 = phi i1 [ %choice.res, %choice.exit3 ], [ false, %choice.next ]
  br label %or.208.exit

choice.case:                                      ; preds = %or.208.else
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %tag.gep6 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id7 = load i64, ptr %tag.gep6, align 8
  %tag.match8 = icmp eq i64 %tag.id7, 26
  br i1 %tag.match8, label %choice.case4, label %choice.next5

choice.next:                                      ; preds = %or.208.else
  br label %choice.exit

choice.exit3:                                     ; preds = %choice.next5, %choice.case4
  %choice.res = phi i1 [ true, %choice.case4 ], [ false, %choice.next5 ]
  br label %choice.exit

choice.case4:                                     ; preds = %choice.case
  br label %choice.exit3

choice.next5:                                     ; preds = %choice.case
  br label %choice.exit3

and.209.then:                                     ; preds = %or.208.exit
  %var.load11 = load ptr, ptr %var.e, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load11, i32 0, i32 2
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %tag.id18 = load i64, ptr %tag.gep17, align 8
  %tag.match19 = icmp eq i64 %tag.id18, 4
  br i1 %tag.match19, label %choice.case15, label %choice.next16

and.209.else:                                     ; preds = %or.208.exit
  br label %and.209.exit

and.209.exit:                                     ; preds = %and.209.else, %choice.exit14
  %and.209.phi = phi i1 [ %nottmp24, %choice.exit14 ], [ %nottmp, %and.209.else ]
  br i1 %and.209.phi, label %choice.then, label %choice.exit25

choice.exit14:                                    ; preds = %choice.next16, %choice.case15
  %choice.res23 = phi i1 [ true, %choice.case15 ], [ false, %choice.next16 ]
  %nottmp24 = xor i1 %choice.res23, true
  br label %and.209.exit

choice.case15:                                    ; preds = %and.209.then
  %pay.gep20 = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %payload.ptr21 = load ptr, ptr %pay.gep20, align 8
  store ptr %payload.ptr21, ptr %var._22, align 8
  br label %choice.exit14

choice.next16:                                    ; preds = %and.209.then
  br label %choice.exit14

choice.then:                                      ; preds = %and.209.exit
  ret ptr null

choice.exit25:                                    ; preds = %ret.dead, %and.209.exit
  %var.load26 = load ptr, ptr %var.e, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load26, i32 0, i32 0
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %tag.gep32 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id33 = load i64, ptr %tag.gep32, align 8
  %tag.match34 = icmp eq i64 %tag.id33, 0
  %tag.match35 = icmp eq i64 %tag.id33, 4
  %tag.or = or i1 %tag.match34, %tag.match35
  br i1 %tag.or, label %choice.case30, label %choice.next31

ret.dead:                                         ; No predecessors!
  br label %choice.exit25

choice.exit29:                                    ; preds = %choice.next676, %a.after816, %choice.exit604, %choice.exit538, %choice.exit466, %choice.exit362, %choice.exit53, %pay.int.merge
  %choice.res852 = phi ptr [ %var.load39, %pay.int.merge ], [ %choice.res94, %choice.exit53 ], [ null, %choice.exit362 ], [ %choice.res504, %choice.exit466 ], [ %choice.res575, %choice.exit538 ], [ %choice.res674, %choice.exit604 ], [ %rec.alloc845, %a.after816 ], [ null, %choice.next676 ]
  ret ptr %choice.res852

choice.case30:                                    ; preds = %choice.exit25
  %pay.gep36 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr37 = load ptr, ptr %pay.gep36, align 8
  %pay.int.null = icmp eq ptr %payload.ptr37, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next31:                                    ; preds = %choice.exit25
  %tag.gep42 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id43 = load i64, ptr %tag.gep42, align 8
  %tag.match44 = icmp eq i64 %tag.id43, 17
  br i1 %tag.match44, label %choice.case40, label %choice.next41

pay.int.load:                                     ; preds = %choice.case30
  %pay.int.val = load i64, ptr %payload.ptr37, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case30
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._38, align 8
  %var.load39 = load ptr, ptr %var.e, align 8
  br label %choice.exit29

choice.case40:                                    ; preds = %choice.next31
  %pay.gep45 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr46 = load ptr, ptr %pay.gep45, align 8
  store ptr %payload.ptr46, ptr %var._47, align 8
  store ptr %payload.ptr46, ptr %var.es, align 8
  %var.load48 = load ptr, ptr %var.es, align 8
  %a.load = load ptr, ptr %var.es, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next41:                                    ; preds = %choice.next31
  %tag.gep97 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id98 = load i64, ptr %tag.gep97, align 8
  %tag.match99 = icmp eq i64 %tag.id98, 6
  br i1 %tag.match99, label %choice.case95, label %choice.next96

a.create:                                         ; preds = %choice.case40
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create49, ptr %var.es, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case40
  %a.load2 = load ptr, ptr %var.es, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query51 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %a.len.query51, 1
  br i1 %cmptmp, label %choice.then52, label %choice.else

choice.then52:                                    ; preds = %a.after
  %var.load54 = load ptr, ptr %var.s, align 8
  %var.load55 = load ptr, ptr %var.es, align 8
  %a.load56 = load ptr, ptr %var.es, align 8
  %a.null57 = icmp eq ptr %a.load56, null
  br i1 %a.null57, label %a.create58, label %a.after59

choice.else:                                      ; preds = %a.after
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else, %unwrap.pos.210
  %choice.res94 = phi ptr [ %call.res93, %unwrap.pos.210 ], [ null, %choice.else ]
  br label %choice.exit29

a.create58:                                       ; preds = %choice.then52
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 24)
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 128)
  %a.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 0
  store i64 0, ptr %a.len.gep64, align 8
  %a.data.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 1
  store ptr %a.buf63, ptr %a.data.gep65, align 8
  %a.cap.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 2
  store i64 16, ptr %a.cap.gep66, align 8
  store ptr %a.create61, ptr %var.es, align 8
  br label %a.after59

a.after59:                                        ; preds = %a.create58, %choice.then52
  %a.load267 = load ptr, ptr %var.es, align 8
  %a.rd.nonnull = icmp ne ptr %a.load267, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after59
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 0
  %a.rd.len68 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len68
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 1
  %a.rd.data69 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data69, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after59
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 169, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 53, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 56)
  %err.code.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 0
  store i64 4011, ptr %err.code.gep73, align 8
  %err.msg.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep74, align 8
  %err.file.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep75, align 8
  %err.line.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 3
  store i64 169, ptr %err.line.gep76, align 8
  %err.col.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 4
  store i64 53, ptr %err.col.gep77, align 8
  %err.ctx.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 5
  %err.ctx0.gep79 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep79, align 8
  %err.ctx1.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 1
  store i64 %a.rd.len68, ptr %err.ctx1.gep80, align 8
  %err.p2i81 = ptrtoint ptr %err.alloc72 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i81, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.210, label %unwrap.abort.210

unwrap.pos.210:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %call.res93 = call ptr @"typedopt::#stage_value"(ptr %var.load54, ptr %pay.ptr)
  br label %choice.exit53

unwrap.abort.210:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep82, align 8
  %err.msg.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep83, align 8
  %err.file.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep84, align 8
  %err.line.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep85, align 8
  %err.col.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep86, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len87 = load i64, ptr %err.msg.len, align 8
  %err.msg.len88 = and i64 %err.msg.len87, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len88 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data89 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len90 = load i64, ptr %err.file.len, align 8
  %err.file.len91 = and i64 %err.file.len90, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len91 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data92 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.210
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.210
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data89, i32 %err.file.len32, ptr %err.file.data92, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.case95:                                    ; preds = %choice.next41
  %pay.gep100 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr101 = load ptr, ptr %pay.gep100, align 8
  store ptr %payload.ptr101, ptr %var._102, align 8
  store ptr %payload.ptr101, ptr %var.v, align 8
  %var.load103 = load ptr, ptr %var.s, align 8
  %fld.gep104 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load103, i32 0, i32 5
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %a.rd.nonnull106 = icmp ne ptr %fld.load105, null
  br i1 %a.rd.nonnull106, label %a.rd.check107, label %a.rd.err.null109

choice.next96:                                    ; preds = %choice.next41
  %tag.gep371 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id372 = load i64, ptr %tag.gep371, align 8
  %tag.match373 = icmp eq i64 %tag.id372, 7
  br i1 %tag.match373, label %choice.case369, label %choice.next370

a.rd.check107:                                    ; preds = %choice.case95
  %a.rd.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load105, i32 0, i32 0
  %a.rd.len113 = load i64, ptr %a.rd.len112, align 8
  %a.rd.lt114 = icmp slt i64 0, %a.rd.len113
  %a.rd.bounds115 = and i1 true, %a.rd.lt114
  br i1 %a.rd.bounds115, label %a.rd.ok108, label %a.rd.err.oob110

a.rd.ok108:                                       ; preds = %a.rd.check107
  %a.rd.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load105, i32 0, i32 1
  %a.rd.data117 = load ptr, ptr %a.rd.data116, align 8
  %a.rd.elem.gep118 = getelementptr i64, ptr %a.rd.data117, i64 0
  %a.rd.elem119 = load i64, ptr %a.rd.elem.gep118, align 8
  br label %a.rd.done111

a.rd.err.null109:                                 ; preds = %choice.case95
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
  %err.code.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 0
  store i64 4011, ptr %err.code.gep122, align 8
  %err.msg.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep123, align 8
  %err.file.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep124, align 8
  %err.line.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 3
  store i64 0, ptr %err.line.gep125, align 8
  %err.col.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 4
  store i64 0, ptr %err.col.gep126, align 8
  %err.ctx.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 5
  %err.ctx0.gep128 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep127, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep128, align 8
  %err.ctx1.gep129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep127, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep129, align 8
  %err.p2i130 = ptrtoint ptr %err.alloc121 to i64
  br label %a.rd.done111

a.rd.err.oob110:                                  ; preds = %a.rd.check107
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 56)
  %err.code.gep133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 0
  store i64 4011, ptr %err.code.gep133, align 8
  %err.msg.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep134, align 8
  %err.file.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep135, align 8
  %err.line.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 3
  store i64 0, ptr %err.line.gep136, align 8
  %err.col.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 4
  store i64 0, ptr %err.col.gep137, align 8
  %err.ctx.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 5
  %err.ctx0.gep139 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep139, align 8
  %err.ctx1.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 1
  store i64 %a.rd.len113, ptr %err.ctx1.gep140, align 8
  %err.p2i141 = ptrtoint ptr %err.alloc132 to i64
  br label %a.rd.done111

a.rd.done111:                                     ; preds = %a.rd.err.oob110, %a.rd.err.null109, %a.rd.ok108
  %a.rd.tag142 = phi i1 [ true, %a.rd.ok108 ], [ false, %a.rd.err.null109 ], [ false, %a.rd.err.oob110 ]
  %a.rd.pay143 = phi i64 [ %a.rd.elem119, %a.rd.ok108 ], [ %err.p2i130, %a.rd.err.null109 ], [ %err.p2i141, %a.rd.err.oob110 ]
  %ram.tag144 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag142, 0
  %ram.pay145 = insertvalue { i1, i64 } %ram.tag144, i64 %a.rd.pay143, 1
  %unwrap.is_pos146 = extractvalue { i1, i64 } %ram.pay145, 0
  br i1 %unwrap.is_pos146, label %unwrap.pos.211, label %unwrap.abort.211

unwrap.pos.211:                                   ; preds = %a.rd.done111
  %unwrap.pay.pos178 = extractvalue { i1, i64 } %ram.pay145, 1
  %pay.ptr179 = inttoptr i64 %unwrap.pay.pos178 to ptr
  store ptr %pay.ptr179, ptr %var.p0, align 8
  %var.load180 = load ptr, ptr %var.s, align 8
  %fld.gep181 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load180, i32 0, i32 5
  %fld.load182 = load ptr, ptr %fld.gep181, align 8
  %a.rd.nonnull183 = icmp ne ptr %fld.load182, null
  br i1 %a.rd.nonnull183, label %a.rd.check184, label %a.rd.err.null186

unwrap.abort.211:                                 ; preds = %a.rd.done111
  %unwrap.pay.abort147 = extractvalue { i1, i64 } %ram.pay145, 1
  %err.ptr148 = inttoptr i64 %unwrap.pay.abort147 to ptr
  %err.code.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 0
  %err.code150 = load i64, ptr %err.code.gep149, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 1
  %err.msg.struct152 = load ptr, ptr %err.msg.gep151, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 2
  %err.file.struct154 = load ptr, ptr %err.file.gep153, align 8
  %err.line.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 3
  %err.line156 = load i64, ptr %err.line.gep155, align 8
  %err.col.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 4
  %err.col158 = load i64, ptr %err.col.gep157, align 8
  %err.msg.len159 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct152, i32 0, i32 0
  %err.msg.len160 = load i64, ptr %err.msg.len159, align 8
  %err.msg.len161 = and i64 %err.msg.len160, 281474976710655
  %err.msg.len32162 = trunc i64 %err.msg.len161 to i32
  %err.msg.data163 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct152, i32 0, i32 1
  %err.msg.data164 = load ptr, ptr %err.msg.data163, align 8
  %err.file.len165 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct154, i32 0, i32 0
  %err.file.len166 = load i64, ptr %err.file.len165, align 8
  %err.file.len167 = and i64 %err.file.len166, 281474976710655
  %err.file.len32168 = trunc i64 %err.file.len167 to i32
  %err.file.data169 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct154, i32 0, i32 1
  %err.file.data170 = load ptr, ptr %err.file.data169, align 8
  %err.thread.rec171 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread172 = icmp ne ptr %err.thread.rec171, null
  br i1 %err.is.thread172, label %err.thread173, label %err.normal174

err.thread173:                                    ; preds = %unwrap.abort.211
  %err.haserr.gep175 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec171, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep175, align 8
  %err.err.gep176 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec171, i32 0, i32 7
  store ptr %err.ptr148, ptr %err.err.gep176, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal174:                                    ; preds = %unwrap.abort.211
  %err.panic.printf177 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code150, i32 %err.msg.len32162, ptr %err.msg.data164, i32 %err.file.len32168, ptr %err.file.data170, i64 %err.line156, i64 %err.col158)
  call void @exit(i32 1)
  unreachable

a.rd.check184:                                    ; preds = %unwrap.pos.211
  %a.rd.len189 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load182, i32 0, i32 0
  %a.rd.len190 = load i64, ptr %a.rd.len189, align 8
  %a.rd.lt191 = icmp slt i64 1, %a.rd.len190
  %a.rd.bounds192 = and i1 true, %a.rd.lt191
  br i1 %a.rd.bounds192, label %a.rd.ok185, label %a.rd.err.oob187

a.rd.ok185:                                       ; preds = %a.rd.check184
  %a.rd.data193 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load182, i32 0, i32 1
  %a.rd.data194 = load ptr, ptr %a.rd.data193, align 8
  %a.rd.elem.gep195 = getelementptr i64, ptr %a.rd.data194, i64 1
  %a.rd.elem196 = load i64, ptr %a.rd.elem.gep195, align 8
  br label %a.rd.done188

a.rd.err.null186:                                 ; preds = %unwrap.pos.211
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 56)
  %err.code.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 0
  store i64 4011, ptr %err.code.gep199, align 8
  %err.msg.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep200, align 8
  %err.file.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep201, align 8
  %err.line.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 3
  store i64 0, ptr %err.line.gep202, align 8
  %err.col.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 4
  store i64 0, ptr %err.col.gep203, align 8
  %err.ctx.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 5
  %err.ctx0.gep205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep204, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep205, align 8
  %err.ctx1.gep206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep204, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep206, align 8
  %err.p2i207 = ptrtoint ptr %err.alloc198 to i64
  br label %a.rd.done188

a.rd.err.oob187:                                  ; preds = %a.rd.check184
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 56)
  %err.code.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 0
  store i64 4011, ptr %err.code.gep210, align 8
  %err.msg.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep211, align 8
  %err.file.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep212, align 8
  %err.line.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 3
  store i64 0, ptr %err.line.gep213, align 8
  %err.col.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 4
  store i64 0, ptr %err.col.gep214, align 8
  %err.ctx.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 5
  %err.ctx0.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep216, align 8
  %err.ctx1.gep217 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 1
  store i64 %a.rd.len190, ptr %err.ctx1.gep217, align 8
  %err.p2i218 = ptrtoint ptr %err.alloc209 to i64
  br label %a.rd.done188

a.rd.done188:                                     ; preds = %a.rd.err.oob187, %a.rd.err.null186, %a.rd.ok185
  %a.rd.tag219 = phi i1 [ true, %a.rd.ok185 ], [ false, %a.rd.err.null186 ], [ false, %a.rd.err.oob187 ]
  %a.rd.pay220 = phi i64 [ %a.rd.elem196, %a.rd.ok185 ], [ %err.p2i207, %a.rd.err.null186 ], [ %err.p2i218, %a.rd.err.oob187 ]
  %ram.tag221 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag219, 0
  %ram.pay222 = insertvalue { i1, i64 } %ram.tag221, i64 %a.rd.pay220, 1
  %ram.tag223 = extractvalue { i1, i64 } %ram.pay222, 0
  br i1 %ram.tag223, label %choice.then224, label %choice.else225

choice.then224:                                   ; preds = %a.rd.done188
  %ram.pay227 = extractvalue { i1, i64 } %ram.pay222, 1
  %pay.ptr228 = inttoptr i64 %ram.pay227 to ptr
  store ptr %pay.ptr228, ptr %var._229, align 8
  br label %choice.exit226

choice.else225:                                   ; preds = %a.rd.done188
  %ram.pay230 = extractvalue { i1, i64 } %ram.pay222, 1
  %pay.ptr231 = inttoptr i64 %ram.pay230 to ptr
  store ptr %pay.ptr231, ptr %var._232, align 8
  br label %choice.exit226

choice.exit226:                                   ; preds = %choice.else225, %choice.then224
  %choice.res233 = phi ptr [ %pay.ptr228, %choice.then224 ], [ @str.0.struct, %choice.else225 ]
  store ptr %choice.res233, ptr %var.p1, align 8
  %var.load234 = load ptr, ptr %var.v, align 8
  %fld.gep235 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load234, i32 0, i32 0
  %fld.load236 = load ptr, ptr %fld.gep235, align 8
  %var.load237 = load ptr, ptr %var.s, align 8
  %fld.gep238 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load237, i32 0, i32 8
  %fld.load239 = load ptr, ptr %fld.gep238, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load236, i32 0, i32 0
  %eq.lhs.len240 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len241 = and i64 %eq.lhs.len240, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load239, i32 0, i32 0
  %eq.rhs.len242 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len243 = and i64 %eq.rhs.len242, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len241, %eq.rhs.len243
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit226
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load236, i32 0, i32 1
  %eq.lhs.data244 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load239, i32 0, i32 1
  %eq.rhs.data245 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data244, ptr %eq.rhs.data245, i64 %eq.lhs.len241)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit226
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %and.212.then, label %and.212.else

and.212.then:                                     ; preds = %str.eq.merge
  %var.load246 = load ptr, ptr %var.s, align 8
  %fld.gep247 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load246, i32 0, i32 8
  %fld.load248 = load ptr, ptr %fld.gep247, align 8
  %eq.lhs.len249 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 0
  %eq.lhs.len250 = load i64, ptr %eq.lhs.len249, align 8
  %eq.lhs.len251 = and i64 %eq.lhs.len250, 281474976710655
  %eq.rhs.len252 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len253 = and i64 %eq.rhs.len252, 281474976710655
  %eq.len254 = icmp eq i64 %eq.lhs.len251, %eq.rhs.len253
  br i1 %eq.len254, label %str.eq.then255, label %str.eq.else256

and.212.else:                                     ; preds = %str.eq.merge
  br label %and.212.exit

and.212.exit:                                     ; preds = %and.212.else, %str.eq.merge257
  %and.212.phi = phi i1 [ %str.neq, %str.eq.merge257 ], [ %str.eq.result, %and.212.else ]
  br i1 %and.212.phi, label %choice.then264, label %choice.exit265

str.eq.then255:                                   ; preds = %and.212.then
  %eq.lhs.data258 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 1
  %eq.lhs.data259 = load ptr, ptr %eq.lhs.data258, align 8
  %eq.rhs.data260 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp261 = call i32 @memcmp(ptr %eq.lhs.data259, ptr %eq.rhs.data260, i64 %eq.lhs.len251)
  %eq.cmp.zero262 = icmp eq i32 %eq.memcmp261, 0
  br label %str.eq.merge257

str.eq.else256:                                   ; preds = %and.212.then
  br label %str.eq.merge257

str.eq.merge257:                                  ; preds = %str.eq.else256, %str.eq.then255
  %str.eq.result263 = phi i1 [ %eq.cmp.zero262, %str.eq.then255 ], [ false, %str.eq.else256 ]
  %str.neq = xor i1 %str.eq.result263, true
  br label %and.212.exit

choice.then264:                                   ; preds = %and.212.exit
  %var.load266 = load ptr, ptr %var.s, align 8
  %fld.gep267 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load266, i32 0, i32 7
  %fld.load268 = load ptr, ptr %fld.gep267, align 8
  %var.load269 = load ptr, ptr %var.e, align 8
  %call.res270 = call ptr @"typedopt::#read_var"(ptr %fld.load268, ptr %var.load269, i1 true)
  ret ptr %call.res270

choice.exit265:                                   ; preds = %ret.dead271, %and.212.exit
  %var.load272 = load ptr, ptr %var.v, align 8
  %fld.gep273 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load272, i32 0, i32 0
  %fld.load274 = load ptr, ptr %fld.gep273, align 8
  %var.load278 = load ptr, ptr %var.p0, align 8
  %eq.lhs.len279 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 0
  %eq.lhs.len280 = load i64, ptr %eq.lhs.len279, align 8
  %eq.lhs.len281 = and i64 %eq.lhs.len280, 281474976710655
  %eq.rhs.len282 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 0
  %eq.rhs.len283 = load i64, ptr %eq.rhs.len282, align 8
  %eq.rhs.len284 = and i64 %eq.rhs.len283, 281474976710655
  %eq.len285 = icmp eq i64 %eq.lhs.len281, %eq.rhs.len284
  br i1 %eq.len285, label %str.eq.then286, label %str.eq.else287

ret.dead271:                                      ; No predecessors!
  br label %choice.exit265

choice.exit275:                                   ; preds = %choice.next277, %choice.case276
  %choice.res311 = phi i1 [ true, %choice.case276 ], [ false, %choice.next277 ]
  br i1 %choice.res311, label %choice.then312, label %choice.exit313

choice.case276:                                   ; preds = %str.eq.merge304
  br label %choice.exit275

choice.next277:                                   ; preds = %str.eq.merge304
  br label %choice.exit275

str.eq.then286:                                   ; preds = %choice.exit265
  %eq.lhs.data289 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 1
  %eq.lhs.data290 = load ptr, ptr %eq.lhs.data289, align 8
  %eq.rhs.data291 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 1
  %eq.rhs.data292 = load ptr, ptr %eq.rhs.data291, align 8
  %eq.memcmp293 = call i32 @memcmp(ptr %eq.lhs.data290, ptr %eq.rhs.data292, i64 %eq.lhs.len281)
  %eq.cmp.zero294 = icmp eq i32 %eq.memcmp293, 0
  br label %str.eq.merge288

str.eq.else287:                                   ; preds = %choice.exit265
  br label %str.eq.merge288

str.eq.merge288:                                  ; preds = %str.eq.else287, %str.eq.then286
  %str.eq.result295 = phi i1 [ %eq.cmp.zero294, %str.eq.then286 ], [ false, %str.eq.else287 ]
  %eq.lhs.len296 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 0
  %eq.lhs.len297 = load i64, ptr %eq.lhs.len296, align 8
  %eq.lhs.len298 = and i64 %eq.lhs.len297, 281474976710655
  %eq.rhs.len299 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len300 = and i64 %eq.rhs.len299, 281474976710655
  %eq.len301 = icmp eq i64 %eq.lhs.len298, %eq.rhs.len300
  br i1 %eq.len301, label %str.eq.then302, label %str.eq.else303

str.eq.then302:                                   ; preds = %str.eq.merge288
  %eq.lhs.data305 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 1
  %eq.lhs.data306 = load ptr, ptr %eq.lhs.data305, align 8
  %eq.rhs.data307 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp308 = call i32 @memcmp(ptr %eq.lhs.data306, ptr %eq.rhs.data307, i64 %eq.lhs.len298)
  %eq.cmp.zero309 = icmp eq i32 %eq.memcmp308, 0
  br label %str.eq.merge304

str.eq.else303:                                   ; preds = %str.eq.merge288
  br label %str.eq.merge304

str.eq.merge304:                                  ; preds = %str.eq.else303, %str.eq.then302
  %str.eq.result310 = phi i1 [ %eq.cmp.zero309, %str.eq.then302 ], [ false, %str.eq.else303 ]
  %case.or = or i1 %str.eq.result295, %str.eq.result310
  br i1 %case.or, label %choice.case276, label %choice.next277

choice.then312:                                   ; preds = %choice.exit275
  %var.load314 = load ptr, ptr %var.s, align 8
  %fld.gep315 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load314, i32 0, i32 10
  %fld.load316 = load ptr, ptr %fld.gep315, align 8
  %var.load317 = load ptr, ptr %var.e, align 8
  %call.res318 = call ptr @"typedopt::#read_var"(ptr %fld.load316, ptr %var.load317, i1 false)
  ret ptr %call.res318

choice.exit313:                                   ; preds = %ret.dead319, %choice.exit275
  %var.load320 = load ptr, ptr %var.v, align 8
  %fld.gep321 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load320, i32 0, i32 0
  %fld.load322 = load ptr, ptr %fld.gep321, align 8
  %var.load326 = load ptr, ptr %var.p1, align 8
  %eq.lhs.len327 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 0
  %eq.lhs.len328 = load i64, ptr %eq.lhs.len327, align 8
  %eq.lhs.len329 = and i64 %eq.lhs.len328, 281474976710655
  %eq.rhs.len330 = getelementptr inbounds { i64, ptr }, ptr %var.load326, i32 0, i32 0
  %eq.rhs.len331 = load i64, ptr %eq.rhs.len330, align 8
  %eq.rhs.len332 = and i64 %eq.rhs.len331, 281474976710655
  %eq.len333 = icmp eq i64 %eq.lhs.len329, %eq.rhs.len332
  br i1 %eq.len333, label %str.eq.then334, label %str.eq.else335

ret.dead319:                                      ; No predecessors!
  br label %choice.exit313

choice.exit323:                                   ; preds = %choice.next325, %choice.case324
  %choice.res360 = phi i1 [ true, %choice.case324 ], [ false, %choice.next325 ]
  br i1 %choice.res360, label %choice.then361, label %choice.exit362

choice.case324:                                   ; preds = %str.eq.merge352
  br label %choice.exit323

choice.next325:                                   ; preds = %str.eq.merge352
  br label %choice.exit323

str.eq.then334:                                   ; preds = %choice.exit313
  %eq.lhs.data337 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 1
  %eq.lhs.data338 = load ptr, ptr %eq.lhs.data337, align 8
  %eq.rhs.data339 = getelementptr inbounds { i64, ptr }, ptr %var.load326, i32 0, i32 1
  %eq.rhs.data340 = load ptr, ptr %eq.rhs.data339, align 8
  %eq.memcmp341 = call i32 @memcmp(ptr %eq.lhs.data338, ptr %eq.rhs.data340, i64 %eq.lhs.len329)
  %eq.cmp.zero342 = icmp eq i32 %eq.memcmp341, 0
  br label %str.eq.merge336

str.eq.else335:                                   ; preds = %choice.exit313
  br label %str.eq.merge336

str.eq.merge336:                                  ; preds = %str.eq.else335, %str.eq.then334
  %str.eq.result343 = phi i1 [ %eq.cmp.zero342, %str.eq.then334 ], [ false, %str.eq.else335 ]
  %eq.lhs.len344 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 0
  %eq.lhs.len345 = load i64, ptr %eq.lhs.len344, align 8
  %eq.lhs.len346 = and i64 %eq.lhs.len345, 281474976710655
  %eq.rhs.len347 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len348 = and i64 %eq.rhs.len347, 281474976710655
  %eq.len349 = icmp eq i64 %eq.lhs.len346, %eq.rhs.len348
  br i1 %eq.len349, label %str.eq.then350, label %str.eq.else351

str.eq.then350:                                   ; preds = %str.eq.merge336
  %eq.lhs.data353 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 1
  %eq.lhs.data354 = load ptr, ptr %eq.lhs.data353, align 8
  %eq.rhs.data355 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp356 = call i32 @memcmp(ptr %eq.lhs.data354, ptr %eq.rhs.data355, i64 %eq.lhs.len346)
  %eq.cmp.zero357 = icmp eq i32 %eq.memcmp356, 0
  br label %str.eq.merge352

str.eq.else351:                                   ; preds = %str.eq.merge336
  br label %str.eq.merge352

str.eq.merge352:                                  ; preds = %str.eq.else351, %str.eq.then350
  %str.eq.result358 = phi i1 [ %eq.cmp.zero357, %str.eq.then350 ], [ false, %str.eq.else351 ]
  %case.or359 = or i1 %str.eq.result343, %str.eq.result358
  br i1 %case.or359, label %choice.case324, label %choice.next325

choice.then361:                                   ; preds = %choice.exit323
  %var.load363 = load ptr, ptr %var.s, align 8
  %fld.gep364 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load363, i32 0, i32 11
  %fld.load365 = load ptr, ptr %fld.gep364, align 8
  %var.load366 = load ptr, ptr %var.e, align 8
  %call.res367 = call ptr @"typedopt::#read_var"(ptr %fld.load365, ptr %var.load366, i1 true)
  ret ptr %call.res367

choice.exit362:                                   ; preds = %ret.dead368, %choice.exit323
  br label %choice.exit29

ret.dead368:                                      ; No predecessors!
  br label %choice.exit362

choice.case369:                                   ; preds = %choice.next96
  %pay.gep374 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr375 = load ptr, ptr %pay.gep374, align 8
  store ptr %payload.ptr375, ptr %var._376, align 8
  store ptr %payload.ptr375, ptr %var.b, align 8
  %var.load377 = load ptr, ptr %var.b, align 8
  %fld.gep378 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load377, i32 0, i32 0
  %fld.load379 = load ptr, ptr %fld.gep378, align 8
  %tag.gep383 = getelementptr inbounds { i64, ptr }, ptr %fld.load379, i32 0, i32 0
  %tag.id384 = load i64, ptr %tag.gep383, align 8
  %tag.match385 = icmp eq i64 %tag.id384, 3
  %tag.match386 = icmp eq i64 %tag.id384, 4
  %tag.or387 = or i1 %tag.match385, %tag.match386
  br i1 %tag.or387, label %choice.case381, label %choice.next382

choice.next370:                                   ; preds = %choice.next96
  %tag.gep507 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id508 = load i64, ptr %tag.gep507, align 8
  %tag.match509 = icmp eq i64 %tag.id508, 8
  br i1 %tag.match509, label %choice.case505, label %choice.next506

choice.exit380:                                   ; preds = %choice.next382, %choice.case381
  %choice.res388 = phi i1 [ true, %choice.case381 ], [ false, %choice.next382 ]
  br i1 %choice.res388, label %and.213.then, label %and.213.else

choice.case381:                                   ; preds = %choice.case369
  br label %choice.exit380

choice.next382:                                   ; preds = %choice.case369
  br label %choice.exit380

and.213.then:                                     ; preds = %choice.exit380
  %var.load389 = load ptr, ptr %var.b, align 8
  %fld.gep390 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load389, i32 0, i32 2
  %fld.gep391 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep390, i32 0, i32 0
  %fld.load392 = load ptr, ptr %fld.gep391, align 8
  %tag.gep396 = getelementptr inbounds { i64, ptr }, ptr %fld.load392, i32 0, i32 0
  %tag.id397 = load i64, ptr %tag.gep396, align 8
  %tag.match398 = icmp eq i64 %tag.id397, 0
  br i1 %tag.match398, label %choice.case394, label %choice.next395

and.213.else:                                     ; preds = %choice.exit380
  br label %and.213.exit

and.213.exit:                                     ; preds = %and.213.else, %choice.exit393
  %and.213.phi = phi i1 [ %choice.res410, %choice.exit393 ], [ %choice.res388, %and.213.else ]
  store i1 %and.213.phi, ptr %var.safe_div, align 1
  %var.load411 = load ptr, ptr %var.b, align 8
  %fld.gep412 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load411, i32 0, i32 0
  %fld.load413 = load ptr, ptr %fld.gep412, align 8
  %tag.gep417 = getelementptr inbounds { i64, ptr }, ptr %fld.load413, i32 0, i32 0
  %tag.id418 = load i64, ptr %tag.gep417, align 8
  %tag.match419 = icmp eq i64 %tag.id418, 0
  %tag.match420 = icmp eq i64 %tag.id418, 1
  %tag.or421 = or i1 %tag.match419, %tag.match420
  %tag.match422 = icmp eq i64 %tag.id418, 2
  %tag.or423 = or i1 %tag.or421, %tag.match422
  %tag.match424 = icmp eq i64 %tag.id418, 19
  %tag.or425 = or i1 %tag.or423, %tag.match424
  %tag.match426 = icmp eq i64 %tag.id418, 20
  %tag.or427 = or i1 %tag.or425, %tag.match426
  %tag.match428 = icmp eq i64 %tag.id418, 21
  %tag.or429 = or i1 %tag.or427, %tag.match428
  %tag.match430 = icmp eq i64 %tag.id418, 5
  %tag.or431 = or i1 %tag.or429, %tag.match430
  %tag.match432 = icmp eq i64 %tag.id418, 6
  %tag.or433 = or i1 %tag.or431, %tag.match432
  %tag.match434 = icmp eq i64 %tag.id418, 7
  %tag.or435 = or i1 %tag.or433, %tag.match434
  %tag.match436 = icmp eq i64 %tag.id418, 8
  %tag.or437 = or i1 %tag.or435, %tag.match436
  %tag.match438 = icmp eq i64 %tag.id418, 9
  %tag.or439 = or i1 %tag.or437, %tag.match438
  %tag.match440 = icmp eq i64 %tag.id418, 10
  %tag.or441 = or i1 %tag.or439, %tag.match440
  %tag.match442 = icmp eq i64 %tag.id418, 11
  %tag.or443 = or i1 %tag.or441, %tag.match442
  %tag.match444 = icmp eq i64 %tag.id418, 12
  %tag.or445 = or i1 %tag.or443, %tag.match444
  br i1 %tag.or445, label %choice.case415, label %choice.next416

choice.exit393:                                   ; preds = %choice.next395, %pay.int.merge404
  %choice.res410 = phi i1 [ %cmptmp409, %pay.int.merge404 ], [ false, %choice.next395 ]
  br label %and.213.exit

choice.case394:                                   ; preds = %and.213.then
  %pay.gep399 = getelementptr inbounds { i64, ptr }, ptr %fld.load392, i32 0, i32 1
  %payload.ptr400 = load ptr, ptr %pay.gep399, align 8
  %pay.int.null401 = icmp eq ptr %payload.ptr400, null
  br i1 %pay.int.null401, label %pay.int.nullbb403, label %pay.int.load402

choice.next395:                                   ; preds = %and.213.then
  br label %choice.exit393

pay.int.load402:                                  ; preds = %choice.case394
  %pay.int.val405 = load i64, ptr %payload.ptr400, align 8
  br label %pay.int.merge404

pay.int.nullbb403:                                ; preds = %choice.case394
  br label %pay.int.merge404

pay.int.merge404:                                 ; preds = %pay.int.nullbb403, %pay.int.load402
  %pay.int.phi406 = phi i64 [ %pay.int.val405, %pay.int.load402 ], [ 0, %pay.int.nullbb403 ]
  store i64 %pay.int.phi406, ptr %var._407, align 8
  store i64 %pay.int.phi406, ptr %var.n, align 8
  %var.load408 = load i64, ptr %var.n, align 8
  %cmptmp409 = icmp sgt i64 %var.load408, 0
  br label %choice.exit393

choice.exit414:                                   ; preds = %choice.next416, %choice.case415
  %choice.res446 = phi i1 [ true, %choice.case415 ], [ false, %choice.next416 ]
  store i1 %choice.res446, ptr %var.safe_op, align 1
  %var.load447 = load i1, ptr %var.safe_div, align 1
  br i1 %var.load447, label %or.214.then, label %or.214.else

choice.case415:                                   ; preds = %and.213.exit
  br label %choice.exit414

choice.next416:                                   ; preds = %and.213.exit
  br label %choice.exit414

or.214.then:                                      ; preds = %choice.exit414
  br label %or.214.exit

or.214.else:                                      ; preds = %choice.exit414
  %var.load448 = load i1, ptr %var.safe_op, align 1
  br label %or.214.exit

or.214.exit:                                      ; preds = %or.214.else, %or.214.then
  %or.214.phi = phi i1 [ %var.load447, %or.214.then ], [ %var.load448, %or.214.else ]
  %nottmp449 = xor i1 %or.214.phi, true
  br i1 %nottmp449, label %choice.then450, label %choice.exit451

choice.then450:                                   ; preds = %or.214.exit
  ret ptr null

choice.exit451:                                   ; preds = %ret.dead452, %or.214.exit
  %var.load453 = load ptr, ptr %var.s, align 8
  %var.load454 = load ptr, ptr %var.b, align 8
  %fld.gep455 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load454, i32 0, i32 1
  %call.res456 = call ptr @"typedopt::#stage_value"(ptr %var.load453, ptr %fld.gep455)
  store ptr %call.res456, ptr %var.lhs, align 8
  %var.load457 = load ptr, ptr %var.s, align 8
  %var.load458 = load ptr, ptr %var.b, align 8
  %fld.gep459 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load458, i32 0, i32 2
  %call.res460 = call ptr @"typedopt::#stage_value"(ptr %var.load457, ptr %fld.gep459)
  store ptr %call.res460, ptr %var.rhs, align 8
  %var.load461 = load ptr, ptr %var.lhs, align 8
  %niche.ne.null = icmp ne ptr %var.load461, null
  br i1 %niche.ne.null, label %and.215.then, label %and.215.else

ret.dead452:                                      ; No predecessors!
  br label %choice.exit451

and.215.then:                                     ; preds = %choice.exit451
  %var.load462 = load ptr, ptr %var.rhs, align 8
  %niche.ne.null463 = icmp ne ptr %var.load462, null
  br label %and.215.exit

and.215.else:                                     ; preds = %choice.exit451
  br label %and.215.exit

and.215.exit:                                     ; preds = %and.215.else, %and.215.then
  %and.215.phi = phi i1 [ %niche.ne.null463, %and.215.then ], [ %niche.ne.null, %and.215.else ]
  br i1 %and.215.phi, label %choice.then464, label %choice.else465

choice.then464:                                   ; preds = %and.215.exit
  %arena.cur467 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 16)
  %tag.gep468 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep468, align 8
  %pay.gep469 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load470 = load ptr, ptr %var.b, align 8
  %fld.gep471 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load470, i32 0, i32 0
  %fld.load472 = load ptr, ptr %fld.gep471, align 8
  %var.load473 = load ptr, ptr %var.lhs, align 8
  %unwrap.is_pos474 = icmp ne ptr %var.load473, null
  br i1 %unwrap.is_pos474, label %unwrap.pos.216, label %unwrap.abort.216

choice.else465:                                   ; preds = %and.215.exit
  br label %choice.exit466

choice.exit466:                                   ; preds = %choice.else465, %unwrap.pos.217
  %choice.res504 = phi ptr [ %rec.alloc497, %unwrap.pos.217 ], [ null, %choice.else465 ]
  br label %choice.exit29

unwrap.pos.216:                                   ; preds = %choice.then464
  %var.load475 = load ptr, ptr %var.rhs, align 8
  %unwrap.is_pos476 = icmp ne ptr %var.load475, null
  br i1 %unwrap.is_pos476, label %unwrap.pos.217, label %unwrap.abort.217

unwrap.abort.216:                                 ; preds = %choice.then464
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable

unwrap.pos.217:                                   ; preds = %unwrap.pos.216
  %arena.cur478 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur478, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load472, ptr %rec.fld, align 8
  %rec.fld479 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld479, ptr align 1 %var.load473, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld480 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld480, ptr align 1 %var.load475, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep469, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_495, align 8
  %var.load481 = load ptr, ptr %var.__ctor_arg_495, align 8
  %var.load482 = load ptr, ptr %var.e, align 8
  %fld.gep483 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load482, i32 0, i32 1
  %fld.load484 = load ptr, ptr %fld.gep483, align 8
  %var.load485 = load ptr, ptr %var.e, align 8
  %fld.gep486 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load485, i32 0, i32 2
  %fld.load487 = load ptr, ptr %fld.gep486, align 8
  %var.load488 = load ptr, ptr %var.e, align 8
  %fld.gep489 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load488, i32 0, i32 3
  %var.load490 = load ptr, ptr %var.e, align 8
  %fld.gep491 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load490, i32 0, i32 4
  %fld.load492 = load i64, ptr %fld.gep491, align 8
  %var.load493 = load ptr, ptr %var.e, align 8
  %fld.gep494 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load493, i32 0, i32 5
  %fld.load495 = load i64, ptr %fld.gep494, align 8
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld498 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 0
  store ptr %var.load481, ptr %rec.fld498, align 8
  %rec.fld499 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 1
  store ptr %fld.load484, ptr %rec.fld499, align 8
  %rec.fld500 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 2
  store ptr %fld.load487, ptr %rec.fld500, align 8
  %rec.fld501 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld501, ptr align 1 %fld.gep489, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld502 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 4
  store i64 %fld.load492, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc497, i32 0, i32 5
  store i64 %fld.load495, ptr %rec.fld503, align 8
  br label %choice.exit466

unwrap.abort.217:                                 ; preds = %unwrap.pos.216
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead477:                                    ; No predecessors!
  unreachable

choice.case505:                                   ; preds = %choice.next370
  %pay.gep510 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr511 = load ptr, ptr %pay.gep510, align 8
  store ptr %payload.ptr511, ptr %var._512, align 8
  store ptr %payload.ptr511, ptr %var.u, align 8
  %var.load513 = load ptr, ptr %var.u, align 8
  %fld.gep514 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load513, i32 0, i32 0
  %fld.load515 = load ptr, ptr %fld.gep514, align 8
  %tag.gep519 = getelementptr inbounds { i64, ptr }, ptr %fld.load515, i32 0, i32 0
  %tag.id520 = load i64, ptr %tag.gep519, align 8
  %tag.match521 = icmp eq i64 %tag.id520, 0
  %tag.match522 = icmp eq i64 %tag.id520, 8
  %tag.or523 = or i1 %tag.match521, %tag.match522
  %tag.match524 = icmp eq i64 %tag.id520, 1
  %tag.or525 = or i1 %tag.or523, %tag.match524
  br i1 %tag.or525, label %choice.case517, label %choice.next518

choice.next506:                                   ; preds = %choice.next370
  %tag.gep578 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id579 = load i64, ptr %tag.gep578, align 8
  %tag.match580 = icmp eq i64 %tag.id579, 21
  br i1 %tag.match580, label %choice.case576, label %choice.next577

choice.exit516:                                   ; preds = %choice.next518, %choice.case517
  %choice.res526 = phi i1 [ true, %choice.case517 ], [ false, %choice.next518 ]
  %nottmp527 = xor i1 %choice.res526, true
  br i1 %nottmp527, label %choice.then528, label %choice.exit529

choice.case517:                                   ; preds = %choice.case505
  br label %choice.exit516

choice.next518:                                   ; preds = %choice.case505
  br label %choice.exit516

choice.then528:                                   ; preds = %choice.exit516
  ret ptr null

choice.exit529:                                   ; preds = %ret.dead530, %choice.exit516
  %var.load531 = load ptr, ptr %var.s, align 8
  %var.load532 = load ptr, ptr %var.u, align 8
  %fld.gep533 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load532, i32 0, i32 1
  %call.res534 = call ptr @"typedopt::#stage_value"(ptr %var.load531, ptr %fld.gep533)
  %niche.ne.null535 = icmp ne ptr %call.res534, null
  br i1 %niche.ne.null535, label %choice.then536, label %choice.else537

ret.dead530:                                      ; No predecessors!
  br label %choice.exit529

choice.then536:                                   ; preds = %choice.exit529
  store ptr %call.res534, ptr %var._539, align 8
  store ptr %call.res534, ptr %var.arg, align 8
  %arena.cur540 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc541 = call ptr @dva_arena_alloc(ptr %arena.cur540, i64 16)
  %tag.gep542 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc541, i32 0, i32 0
  store i64 8, ptr %tag.gep542, align 8
  %pay.gep543 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc541, i32 0, i32 1
  %var.load544 = load ptr, ptr %var.u, align 8
  %fld.gep545 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load544, i32 0, i32 0
  %fld.load546 = load ptr, ptr %fld.gep545, align 8
  %var.load547 = load ptr, ptr %var.arg, align 8
  %arena.cur548 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc549 = call ptr @dva_arena_alloc(ptr %arena.cur548, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld550 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc549, i32 0, i32 0
  store ptr %fld.load546, ptr %rec.fld550, align 8
  %rec.fld551 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc549, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld551, ptr align 1 %var.load547, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc549, ptr %pay.gep543, align 8
  store ptr %enum.alloc541, ptr %var.__ctor_arg_518, align 8
  %var.load552 = load ptr, ptr %var.__ctor_arg_518, align 8
  %var.load553 = load ptr, ptr %var.e, align 8
  %fld.gep554 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load553, i32 0, i32 1
  %fld.load555 = load ptr, ptr %fld.gep554, align 8
  %var.load556 = load ptr, ptr %var.e, align 8
  %fld.gep557 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load556, i32 0, i32 2
  %fld.load558 = load ptr, ptr %fld.gep557, align 8
  %var.load559 = load ptr, ptr %var.e, align 8
  %fld.gep560 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load559, i32 0, i32 3
  %var.load561 = load ptr, ptr %var.e, align 8
  %fld.gep562 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load561, i32 0, i32 4
  %fld.load563 = load i64, ptr %fld.gep562, align 8
  %var.load564 = load ptr, ptr %var.e, align 8
  %fld.gep565 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load564, i32 0, i32 5
  %fld.load566 = load i64, ptr %fld.gep565, align 8
  %arena.cur567 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc568 = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld569 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 0
  store ptr %var.load552, ptr %rec.fld569, align 8
  %rec.fld570 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 1
  store ptr %fld.load555, ptr %rec.fld570, align 8
  %rec.fld571 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 2
  store ptr %fld.load558, ptr %rec.fld571, align 8
  %rec.fld572 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld572, ptr align 1 %fld.gep560, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld573 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 4
  store i64 %fld.load563, ptr %rec.fld573, align 8
  %rec.fld574 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc568, i32 0, i32 5
  store i64 %fld.load566, ptr %rec.fld574, align 8
  br label %choice.exit538

choice.else537:                                   ; preds = %choice.exit529
  br label %choice.exit538

choice.exit538:                                   ; preds = %choice.else537, %choice.then536
  %choice.res575 = phi ptr [ %rec.alloc568, %choice.then536 ], [ null, %choice.else537 ]
  br label %choice.exit29

choice.case576:                                   ; preds = %choice.next506
  %pay.gep581 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr582 = load ptr, ptr %pay.gep581, align 8
  store ptr %payload.ptr582, ptr %var._583, align 8
  store ptr %payload.ptr582, ptr %var.r, align 8
  %var.load584 = load ptr, ptr %var.r, align 8
  %fld.gep585 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load584, i32 0, i32 0
  %fld.load586 = load ptr, ptr %fld.gep585, align 8
  %tag.gep590 = getelementptr inbounds { i64, ptr }, ptr %fld.load586, i32 0, i32 0
  %tag.id591 = load i64, ptr %tag.gep590, align 8
  %tag.match592 = icmp eq i64 %tag.id591, 1
  br i1 %tag.match592, label %choice.case588, label %choice.next589

choice.next577:                                   ; preds = %choice.next506
  %tag.gep677 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %tag.id678 = load i64, ptr %tag.gep677, align 8
  %tag.match679 = icmp eq i64 %tag.id678, 15
  br i1 %tag.match679, label %choice.case675, label %choice.next676

choice.exit587:                                   ; preds = %choice.next589, %choice.case588
  %choice.res593 = phi i1 [ true, %choice.case588 ], [ false, %choice.next589 ]
  %nottmp594 = xor i1 %choice.res593, true
  br i1 %nottmp594, label %choice.then595, label %choice.exit596

choice.case588:                                   ; preds = %choice.case576
  br label %choice.exit587

choice.next589:                                   ; preds = %choice.case576
  br label %choice.exit587

choice.then595:                                   ; preds = %choice.exit587
  ret ptr null

choice.exit596:                                   ; preds = %ret.dead597, %choice.exit587
  %var.load598 = load ptr, ptr %var.r, align 8
  %fld.gep599 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load598, i32 0, i32 2
  %fld.load600 = load ptr, ptr %fld.gep599, align 8
  %niche.ne.null601 = icmp ne ptr %fld.load600, null
  br i1 %niche.ne.null601, label %choice.then602, label %choice.else603

ret.dead597:                                      ; No predecessors!
  br label %choice.exit596

choice.then602:                                   ; preds = %choice.exit596
  store ptr %fld.load600, ptr %var._605, align 8
  store ptr %fld.load600, ptr %var.value, align 8
  %var.load606 = load ptr, ptr %var.r, align 8
  %fld.gep607 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load606, i32 0, i32 1
  %fld.load608 = load i1, ptr %fld.gep607, align 1
  %nottmp609 = xor i1 %fld.load608, true
  br i1 %nottmp609, label %or.218.then, label %or.218.else

choice.else603:                                   ; preds = %choice.exit596
  %var.load665 = load ptr, ptr %var.r, align 8
  %fld.gep666 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load665, i32 0, i32 1
  %fld.load667 = load i1, ptr %fld.gep666, align 1
  %nottmp668 = xor i1 %fld.load667, true
  br i1 %nottmp668, label %choice.then669, label %choice.else670

choice.exit604:                                   ; preds = %choice.exit671, %choice.exit622
  %choice.res674 = phi ptr [ %choice.res664, %choice.exit622 ], [ %choice.res673, %choice.exit671 ]
  br label %choice.exit29

or.218.then:                                      ; preds = %choice.then602
  br label %or.218.exit

or.218.else:                                      ; preds = %choice.then602
  %var.load610 = load ptr, ptr %var.value, align 8
  %call.res611 = call i1 @"typedopt::#wide_int"(ptr %var.load610)
  %nottmp612 = xor i1 %call.res611, true
  br label %or.218.exit

or.218.exit:                                      ; preds = %or.218.else, %or.218.then
  %or.218.phi = phi i1 [ %nottmp609, %or.218.then ], [ %nottmp612, %or.218.else ]
  br i1 %or.218.phi, label %choice.then613, label %choice.exit614

choice.then613:                                   ; preds = %or.218.exit
  ret ptr null

choice.exit614:                                   ; preds = %ret.dead615, %or.218.exit
  %var.load616 = load ptr, ptr %var.s, align 8
  %var.load617 = load ptr, ptr %var.value, align 8
  %call.res618 = call ptr @"typedopt::#stage_value"(ptr %var.load616, ptr %var.load617)
  %niche.ne.null619 = icmp ne ptr %call.res618, null
  br i1 %niche.ne.null619, label %choice.then620, label %choice.else621

ret.dead615:                                      ; No predecessors!
  br label %choice.exit614

choice.then620:                                   ; preds = %choice.exit614
  store ptr %call.res618, ptr %var._623, align 8
  store ptr %call.res618, ptr %var.v624, align 8
  %arena.cur625 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc626 = call ptr @dva_arena_alloc(ptr %arena.cur625, i64 16)
  %tag.gep627 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc626, i32 0, i32 0
  store i64 21, ptr %tag.gep627, align 8
  %pay.gep628 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc626, i32 0, i32 1
  %var.load629 = load ptr, ptr %var.r, align 8
  %fld.gep630 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load629, i32 0, i32 0
  %fld.load631 = load ptr, ptr %fld.gep630, align 8
  %var.load632 = load ptr, ptr %var.r, align 8
  %fld.gep633 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load632, i32 0, i32 1
  %fld.load634 = load i1, ptr %fld.gep633, align 1
  %var.load635 = load ptr, ptr %var.v624, align 8
  %arena.cur636 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld638 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc637, i32 0, i32 0
  store ptr %fld.load631, ptr %rec.fld638, align 8
  %rec.fld639 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc637, i32 0, i32 1
  store i1 %fld.load634, ptr %rec.fld639, align 1
  %rec.fld640 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc637, i32 0, i32 2
  store ptr %var.load635, ptr %rec.fld640, align 8
  store ptr %rec.alloc637, ptr %pay.gep628, align 8
  store ptr %enum.alloc626, ptr %var.__ctor_arg_547, align 8
  %var.load641 = load ptr, ptr %var.__ctor_arg_547, align 8
  %var.load642 = load ptr, ptr %var.e, align 8
  %fld.gep643 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load642, i32 0, i32 1
  %fld.load644 = load ptr, ptr %fld.gep643, align 8
  %var.load645 = load ptr, ptr %var.e, align 8
  %fld.gep646 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load645, i32 0, i32 2
  %fld.load647 = load ptr, ptr %fld.gep646, align 8
  %var.load648 = load ptr, ptr %var.e, align 8
  %fld.gep649 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load648, i32 0, i32 3
  %var.load650 = load ptr, ptr %var.e, align 8
  %fld.gep651 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load650, i32 0, i32 4
  %fld.load652 = load i64, ptr %fld.gep651, align 8
  %var.load653 = load ptr, ptr %var.e, align 8
  %fld.gep654 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load653, i32 0, i32 5
  %fld.load655 = load i64, ptr %fld.gep654, align 8
  %arena.cur656 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc657 = call ptr @dva_arena_alloc(ptr %arena.cur656, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld658 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 0
  store ptr %var.load641, ptr %rec.fld658, align 8
  %rec.fld659 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 1
  store ptr %fld.load644, ptr %rec.fld659, align 8
  %rec.fld660 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 2
  store ptr %fld.load647, ptr %rec.fld660, align 8
  %rec.fld661 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld661, ptr align 1 %fld.gep649, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld662 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 4
  store i64 %fld.load652, ptr %rec.fld662, align 8
  %rec.fld663 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc657, i32 0, i32 5
  store i64 %fld.load655, ptr %rec.fld663, align 8
  br label %choice.exit622

choice.else621:                                   ; preds = %choice.exit614
  br label %choice.exit622

choice.exit622:                                   ; preds = %choice.else621, %choice.then620
  %choice.res664 = phi ptr [ %rec.alloc657, %choice.then620 ], [ null, %choice.else621 ]
  br label %choice.exit604

choice.then669:                                   ; preds = %choice.else603
  %var.load672 = load ptr, ptr %var.e, align 8
  br label %choice.exit671

choice.else670:                                   ; preds = %choice.else603
  br label %choice.exit671

choice.exit671:                                   ; preds = %choice.else670, %choice.then669
  %choice.res673 = phi ptr [ %var.load672, %choice.then669 ], [ null, %choice.else670 ]
  br label %choice.exit604

choice.case675:                                   ; preds = %choice.next577
  %pay.gep680 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr681 = load ptr, ptr %pay.gep680, align 8
  store ptr %payload.ptr681, ptr %var._682, align 8
  store ptr %payload.ptr681, ptr %var.c, align 8
  %var.load683 = load ptr, ptr %var.c, align 8
  %fld.gep684 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load683, i32 0, i32 0
  %fld.gep685 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep684, i32 0, i32 2
  %fld.load686 = load ptr, ptr %fld.gep685, align 8
  %tag.gep690 = getelementptr inbounds { i64, ptr }, ptr %fld.load686, i32 0, i32 0
  %tag.id691 = load i64, ptr %tag.gep690, align 8
  %tag.match692 = icmp eq i64 %tag.id691, 0
  br i1 %tag.match692, label %choice.case688, label %choice.next689

choice.next676:                                   ; preds = %choice.next577
  br label %choice.exit29

choice.exit687:                                   ; preds = %choice.next689, %choice.exit698
  %choice.res705 = phi i1 [ %choice.res704, %choice.exit698 ], [ false, %choice.next689 ]
  store i1 %choice.res705, ptr %var.is_flag, align 1
  %var.load706 = load i1, ptr %var.is_flag, align 1
  %nottmp707 = xor i1 %var.load706, true
  br i1 %nottmp707, label %or.219.then, label %or.219.else

choice.case688:                                   ; preds = %choice.case675
  %pay.gep693 = getelementptr inbounds { i64, ptr }, ptr %fld.load686, i32 0, i32 1
  %payload.ptr694 = load ptr, ptr %pay.gep693, align 8
  store ptr %payload.ptr694, ptr %var._695, align 8
  store ptr %payload.ptr694, ptr %var.p696, align 8
  %var.load697 = load ptr, ptr %var.p696, align 8
  %tag.gep701 = getelementptr inbounds { i64, ptr }, ptr %var.load697, i32 0, i32 0
  %tag.id702 = load i64, ptr %tag.gep701, align 8
  %tag.match703 = icmp eq i64 %tag.id702, 26
  br i1 %tag.match703, label %choice.case699, label %choice.next700

choice.next689:                                   ; preds = %choice.case675
  br label %choice.exit687

choice.exit698:                                   ; preds = %choice.next700, %choice.case699
  %choice.res704 = phi i1 [ true, %choice.case699 ], [ false, %choice.next700 ]
  br label %choice.exit687

choice.case699:                                   ; preds = %choice.case688
  br label %choice.exit698

choice.next700:                                   ; preds = %choice.case688
  br label %choice.exit698

or.219.then:                                      ; preds = %choice.exit687
  br label %or.219.exit

or.219.else:                                      ; preds = %choice.exit687
  %var.load708 = load ptr, ptr %var.c, align 8
  %fld.gep709 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load708, i32 0, i32 1
  %fld.load710 = load ptr, ptr %fld.gep709, align 8
  %a.len.query711 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load710, i32 0, i32 0
  %a.len.query712 = load i64, ptr %a.len.query711, align 8
  %cmptmp713 = icmp ne i64 %a.len.query712, 2
  br label %or.219.exit

or.219.exit:                                      ; preds = %or.219.else, %or.219.then
  %or.219.phi = phi i1 [ %nottmp707, %or.219.then ], [ %cmptmp713, %or.219.else ]
  br i1 %or.219.phi, label %choice.then714, label %choice.exit715

choice.then714:                                   ; preds = %or.219.exit
  ret ptr null

choice.exit715:                                   ; preds = %ret.dead716, %or.219.exit
  %var.load717 = load ptr, ptr %var.s, align 8
  %var.load718 = load ptr, ptr %var.c, align 8
  %fld.gep719 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load718, i32 0, i32 0
  %call.res720 = call ptr @"typedopt::#stage_value"(ptr %var.load717, ptr %fld.gep719)
  store ptr %call.res720, ptr %var.cond, align 8
  %var.load721 = load ptr, ptr %var.cond, align 8
  %niche.ne.null722 = icmp ne ptr %var.load721, null
  %nottmp723 = xor i1 %niche.ne.null722, true
  br i1 %nottmp723, label %choice.then724, label %choice.exit725

ret.dead716:                                      ; No predecessors!
  br label %choice.exit715

choice.then724:                                   ; preds = %choice.exit715
  ret ptr null

choice.exit725:                                   ; preds = %ret.dead726, %choice.exit715
  %arena.cur727 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur727, i64 24)
  %arena.cur728 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 128)
  %a.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep730, align 8
  %a.data.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf729, ptr %a.data.gep731, align 8
  %a.cap.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep732, align 8
  store ptr %a.new, ptr %var.branches, align 8
  %var.load733 = load ptr, ptr %var.c, align 8
  %fld.gep734 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load733, i32 0, i32 1
  %fld.load735 = load ptr, ptr %fld.gep734, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load735, i32 0, i32 0
  %arr.cycle.len736 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load735, i32 0, i32 1
  %arr.cycle.data737 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.220, align 8
  %cycle.prev.u = load ptr, ptr %var._682, align 8
  br label %loop.header.220

ret.dead726:                                      ; No predecessors!
  br label %choice.exit725

loop.header.220:                                  ; preds = %loop.latch.220, %choice.exit725
  %counter.load = load i64, ptr %loop.idx.220, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len736
  br i1 %loop.cond, label %loop.body.220, label %loop.exit.nat.220

loop.body.220:                                    ; preds = %loop.header.220
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.220, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data737, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._739, align 8
  store ptr %slot.i2p, ptr %var.b738, align 8
  %var.load740 = load ptr, ptr %var.b738, align 8
  %call.res741 = call i1 @"typedopt::#bare_branch"(ptr %var.load740)
  %nottmp742 = xor i1 %call.res741, true
  br i1 %nottmp742, label %or.221.then, label %or.221.else

loop.exit.nat.220:                                ; preds = %loop.header.220
  br label %loop.exit.220

loop.latch.220:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.220, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.220, align 8
  br label %loop.header.220

loop.exit.220:                                    ; preds = %loop.exit.nat.220
  store ptr %cycle.prev.u, ptr %var._682, align 8
  %arena.cur805 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc806 = call ptr @dva_arena_alloc(ptr %arena.cur805, i64 16)
  %tag.gep807 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc806, i32 0, i32 0
  store i64 15, ptr %tag.gep807, align 8
  %pay.gep808 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc806, i32 0, i32 1
  %var.load809 = load ptr, ptr %var.cond, align 8
  %unwrap.is_pos810 = icmp ne ptr %var.load809, null
  br i1 %unwrap.is_pos810, label %unwrap.pos.223, label %unwrap.abort.223

or.221.then:                                      ; preds = %loop.body.220
  br label %or.221.exit

or.221.else:                                      ; preds = %loop.body.220
  %var.load743 = load ptr, ptr %var.b738, align 8
  %fld.gep744 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load743, i32 0, i32 4
  %fld.load745 = load ptr, ptr %fld.gep744, align 8
  %a.len.query746 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load745, i32 0, i32 0
  %a.len.query747 = load i64, ptr %a.len.query746, align 8
  %cmptmp748 = icmp ne i64 %a.len.query747, 0
  br label %or.221.exit

or.221.exit:                                      ; preds = %or.221.else, %or.221.then
  %or.221.phi = phi i1 [ %nottmp742, %or.221.then ], [ %cmptmp748, %or.221.else ]
  br i1 %or.221.phi, label %choice.then749, label %choice.exit750

choice.then749:                                   ; preds = %or.221.exit
  ret ptr null

choice.exit750:                                   ; preds = %ret.dead751, %or.221.exit
  %var.load752 = load ptr, ptr %var.s, align 8
  %var.load753 = load ptr, ptr %var.b738, align 8
  %fld.gep754 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load753, i32 0, i32 5
  %call.res755 = call ptr @"typedopt::#stage_value"(ptr %var.load752, ptr %fld.gep754)
  store ptr %call.res755, ptr %var.body, align 8
  %var.load756 = load ptr, ptr %var.body, align 8
  %niche.ne.null757 = icmp ne ptr %var.load756, null
  %nottmp758 = xor i1 %niche.ne.null757, true
  br i1 %nottmp758, label %choice.then759, label %choice.exit760

ret.dead751:                                      ; No predecessors!
  br label %choice.exit750

choice.then759:                                   ; preds = %choice.exit750
  ret ptr null

choice.exit760:                                   ; preds = %ret.dead761, %choice.exit750
  %var.load762 = load ptr, ptr %var.body, align 8
  %unwrap.is_pos763 = icmp ne ptr %var.load762, null
  br i1 %unwrap.is_pos763, label %unwrap.pos.222, label %unwrap.abort.222

ret.dead761:                                      ; No predecessors!
  br label %choice.exit760

unwrap.pos.222:                                   ; preds = %choice.exit760
  store ptr %var.load762, ptr %var.__ctor_arg_590, align 8
  %var.load765 = load ptr, ptr %var.b738, align 8
  %fld.gep766 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load765, i32 0, i32 0
  %fld.load767 = load ptr, ptr %fld.gep766, align 8
  %var.load768 = load ptr, ptr %var.b738, align 8
  %fld.gep769 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load768, i32 0, i32 1
  %fld.load770 = load ptr, ptr %fld.gep769, align 8
  %var.load771 = load ptr, ptr %var.b738, align 8
  %fld.gep772 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load771, i32 0, i32 2
  %fld.load773 = load ptr, ptr %fld.gep772, align 8
  %var.load774 = load ptr, ptr %var.b738, align 8
  %fld.gep775 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load774, i32 0, i32 3
  %fld.load776 = load ptr, ptr %fld.gep775, align 8
  %var.load777 = load ptr, ptr %var.b738, align 8
  %fld.gep778 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load777, i32 0, i32 4
  %fld.load779 = load ptr, ptr %fld.gep778, align 8
  %var.load780 = load ptr, ptr %var.__ctor_arg_590, align 8
  %arena.cur781 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc782 = call ptr @dva_arena_alloc(ptr %arena.cur781, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld783 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 0
  store ptr %fld.load767, ptr %rec.fld783, align 8
  %rec.fld784 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 1
  store ptr %fld.load770, ptr %rec.fld784, align 8
  %rec.fld785 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 2
  store ptr %fld.load773, ptr %rec.fld785, align 8
  %rec.fld786 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 3
  store ptr %fld.load776, ptr %rec.fld786, align 8
  %rec.fld787 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 4
  store ptr %fld.load779, ptr %rec.fld787, align 8
  %rec.fld788 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld788, ptr align 1 %var.load780, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.load789 = load ptr, ptr %var.branches, align 8
  %a.null790 = icmp eq ptr %a.load789, null
  br i1 %a.null790, label %a.create791, label %a.after792

unwrap.abort.222:                                 ; preds = %choice.exit760
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead764:                                    ; No predecessors!
  unreachable

a.create791:                                      ; preds = %unwrap.pos.222
  %arena.cur793 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create794 = call ptr @dva_arena_alloc(ptr %arena.cur793, i64 24)
  %arena.cur795 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf796 = call ptr @dva_arena_alloc(ptr %arena.cur795, i64 128)
  %a.len.gep797 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create794, i32 0, i32 0
  store i64 0, ptr %a.len.gep797, align 8
  %a.data.gep798 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create794, i32 0, i32 1
  store ptr %a.buf796, ptr %a.data.gep798, align 8
  %a.cap.gep799 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create794, i32 0, i32 2
  store i64 16, ptr %a.cap.gep799, align 8
  store ptr %a.create794, ptr %var.branches, align 8
  br label %a.after792

a.after792:                                       ; preds = %a.create791, %unwrap.pos.222
  %a.load2800 = load ptr, ptr %var.branches, align 8
  br label %a.check

a.check:                                          ; preds = %a.after792
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2800, i32 0, i32 0
  %a.len801 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2800, i32 0, i32 2
  %a.cap802 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len801, %a.cap802
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2800)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2800, i32 0, i32 1
  %a.cur.data803 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2800, i32 0, i32 0
  %a.cur.len804 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data803, i64 %a.cur.len804
  %slot.p2i = ptrtoint ptr %rec.alloc782 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len804, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2800, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.220

unwrap.pos.223:                                   ; preds = %loop.exit.220
  %var.load812 = load ptr, ptr %var.branches, align 8
  %a.load813 = load ptr, ptr %var.branches, align 8
  %a.null814 = icmp eq ptr %a.load813, null
  br i1 %a.null814, label %a.create815, label %a.after816

unwrap.abort.223:                                 ; preds = %loop.exit.220
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead811:                                    ; No predecessors!
  unreachable

a.create815:                                      ; preds = %unwrap.pos.223
  %arena.cur817 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 24)
  %arena.cur819 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 128)
  %a.len.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 0
  store i64 0, ptr %a.len.gep821, align 8
  %a.data.gep822 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 1
  store ptr %a.buf820, ptr %a.data.gep822, align 8
  %a.cap.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 2
  store i64 16, ptr %a.cap.gep823, align 8
  store ptr %a.create818, ptr %var.branches, align 8
  br label %a.after816

a.after816:                                       ; preds = %a.create815, %unwrap.pos.223
  %a.load2824 = load ptr, ptr %var.branches, align 8
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld827 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc826, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld827, ptr align 1 %var.load809, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld828 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc826, i32 0, i32 1
  store ptr %a.load2824, ptr %rec.fld828, align 8
  store ptr %rec.alloc826, ptr %pay.gep808, align 8
  store ptr %enum.alloc806, ptr %var.__ctor_arg_596, align 8
  %var.load829 = load ptr, ptr %var.__ctor_arg_596, align 8
  %var.load830 = load ptr, ptr %var.e, align 8
  %fld.gep831 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load830, i32 0, i32 1
  %fld.load832 = load ptr, ptr %fld.gep831, align 8
  %var.load833 = load ptr, ptr %var.e, align 8
  %fld.gep834 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load833, i32 0, i32 2
  %fld.load835 = load ptr, ptr %fld.gep834, align 8
  %var.load836 = load ptr, ptr %var.e, align 8
  %fld.gep837 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load836, i32 0, i32 3
  %var.load838 = load ptr, ptr %var.e, align 8
  %fld.gep839 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load838, i32 0, i32 4
  %fld.load840 = load i64, ptr %fld.gep839, align 8
  %var.load841 = load ptr, ptr %var.e, align 8
  %fld.gep842 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load841, i32 0, i32 5
  %fld.load843 = load i64, ptr %fld.gep842, align 8
  %arena.cur844 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc845 = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld846 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 0
  store ptr %var.load829, ptr %rec.fld846, align 8
  %rec.fld847 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 1
  store ptr %fld.load832, ptr %rec.fld847, align 8
  %rec.fld848 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 2
  store ptr %fld.load835, ptr %rec.fld848, align 8
  %rec.fld849 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld849, ptr align 1 %fld.gep837, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld850 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 4
  store i64 %fld.load840, ptr %rec.fld850, align 8
  %rec.fld851 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc845, i32 0, i32 5
  store i64 %fld.load843, ptr %rec.fld851, align 8
  br label %choice.exit29
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_unwrap_abort_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @unwrap_abort_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal void @dva_array_grow(ptr %0) #3 {
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

a.cap25:                                          ; preds = %abort.dead, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal ptr @"typedopt::#replace_append"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #3 {
entry:
  %var.__ctor_arg_702 = alloca ptr, align 8
  %var.__ctor_arg_696 = alloca ptr, align 8
  %var.branches = alloca ptr, align 8
  %var.body514 = alloca ptr, align 8
  %var.cond = alloca ptr, align 8
  %var.rhs = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._371 = alloca ptr, align 8
  %var.a358 = alloca ptr, align 8
  %var._357 = alloca ptr, align 8
  %var.br = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._281 = alloca ptr, align 8
  %var.__ctor_arg_656 = alloca ptr, align 8
  %var.__ctor_arg_644 = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var.bump = alloca ptr, align 8
  %var.__ctor_arg_634 = alloca ptr, align 8
  %var.one = alloca ptr, align 8
  %var.idx = alloca ptr, align 8
  %var.next = alloca ptr, align 8
  %var._57 = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.payload = alloca i1, align 1
  %var.downstream = alloca ptr, align 8
  %var.next_stage = alloca ptr, align 8
  %var.step = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.step, align 8
  store ptr %2, ptr %var.next_stage, align 8
  store ptr %3, ptr %var.downstream, align 8
  store i1 %4, ptr %var.payload, align 1
  %var.load = load ptr, ptr %var.step, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next275, %a.after597, %choice.exit56
  %choice.res633 = phi ptr [ %choice.res273, %choice.exit56 ], [ %rec.alloc626, %a.after597 ], [ null, %choice.next275 ]
  ret ptr %choice.res633

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %fld.gep5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load4, i32 0, i32 7
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.next:                                      ; preds = %entry
  %tag.gep276 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id277 = load i64, ptr %tag.gep276, align 8
  %tag.match278 = icmp eq i64 %tag.id277, 15
  br i1 %tag.match278, label %choice.case274, label %choice.next275

str_ok:                                           ; preds = %tag.slow_check, %choice.case
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

tag.slow_check:                                   ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok12:                                         ; preds = %tag.slow_check17, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check17:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %eq.rhs.data19 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data19, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %or.224.then, label %or.224.else

or.224.then:                                      ; preds = %str.eq.merge
  br label %or.224.exit

or.224.else:                                      ; preds = %str.eq.merge
  %var.load20 = load ptr, ptr %var.a, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load i1, ptr %fld.gep21, align 1
  br label %or.224.exit

or.224.exit:                                      ; preds = %or.224.else, %or.224.then
  %or.224.phi = phi i1 [ %str.neq, %or.224.then ], [ %fld.load22, %or.224.else ]
  br i1 %or.224.phi, label %or.225.then, label %or.225.else

or.225.then:                                      ; preds = %or.224.exit
  br label %or.225.exit

or.225.else:                                      ; preds = %or.224.exit
  %var.load23 = load ptr, ptr %var.a, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load23, i32 0, i32 3
  %fld.load25 = load i1, ptr %fld.gep24, align 1
  br label %or.225.exit

or.225.exit:                                      ; preds = %or.225.else, %or.225.then
  %or.225.phi = phi i1 [ %or.224.phi, %or.225.then ], [ %fld.load25, %or.225.else ]
  br i1 %or.225.phi, label %or.226.then, label %or.226.else

or.226.then:                                      ; preds = %or.225.exit
  br label %or.226.exit

or.226.else:                                      ; preds = %or.225.exit
  %var.load26 = load ptr, ptr %var.a, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load26, i32 0, i32 4
  %fld.load28 = load i1, ptr %fld.gep27, align 1
  br label %or.226.exit

or.226.exit:                                      ; preds = %or.226.else, %or.226.then
  %or.226.phi = phi i1 [ %or.225.phi, %or.226.then ], [ %fld.load28, %or.226.else ]
  br i1 %or.226.phi, label %or.227.then, label %or.227.else

or.227.then:                                      ; preds = %or.226.exit
  br label %or.227.exit

or.227.else:                                      ; preds = %or.226.exit
  %var.load29 = load ptr, ptr %var.a, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load29, i32 0, i32 2
  %fld.load31 = load i1, ptr %fld.gep30, align 1
  %var.load32 = load ptr, ptr %var.s, align 8
  %fld.gep33 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load32, i32 0, i32 9
  %fld.load34 = load i1, ptr %fld.gep33, align 1
  %flag.cmp = icmp ne i1 %fld.load31, %fld.load34
  br label %or.227.exit

or.227.exit:                                      ; preds = %or.227.else, %or.227.then
  %or.227.phi = phi i1 [ %or.226.phi, %or.227.then ], [ %flag.cmp, %or.227.else ]
  br i1 %or.227.phi, label %or.228.then, label %or.228.else

or.228.then:                                      ; preds = %or.227.exit
  br label %or.228.exit

or.228.else:                                      ; preds = %or.227.exit
  %var.load35 = load ptr, ptr %var.a, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load35, i32 0, i32 5
  %call.res = call i1 @"typedopt::#wide_int"(ptr %fld.gep36)
  %nottmp = xor i1 %call.res, true
  br label %or.228.exit

or.228.exit:                                      ; preds = %or.228.else, %or.228.then
  %or.228.phi = phi i1 [ %or.227.phi, %or.228.then ], [ %nottmp, %or.228.else ]
  br i1 %or.228.phi, label %choice.then, label %choice.exit37

choice.then:                                      ; preds = %or.228.exit
  ret ptr null

choice.exit37:                                    ; preds = %ret.dead, %or.228.exit
  %var.load38 = load i1, ptr %var.payload, align 1
  br i1 %var.load38, label %choice.then39, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit37

choice.then39:                                    ; preds = %choice.exit37
  %var.load41 = load ptr, ptr %var.a, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load41, i32 0, i32 5
  br label %choice.exit40

choice.else:                                      ; preds = %choice.exit37
  %var.load43 = load ptr, ptr %var.s, align 8
  %var.load44 = load ptr, ptr %var.a, align 8
  %fld.gep45 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load44, i32 0, i32 5
  %call.res46 = call ptr @"typedopt::#stage_value"(ptr %var.load43, ptr %fld.gep45)
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else, %choice.then39
  %choice.res = phi ptr [ %fld.gep42, %choice.then39 ], [ %call.res46, %choice.else ]
  store ptr %choice.res, ptr %var.val, align 8
  %var.load47 = load ptr, ptr %var.val, align 8
  %niche.ne.null = icmp ne ptr %var.load47, null
  %nottmp48 = xor i1 %niche.ne.null, true
  br i1 %nottmp48, label %choice.then49, label %choice.exit50

choice.then49:                                    ; preds = %choice.exit40
  ret ptr null

choice.exit50:                                    ; preds = %ret.dead51, %choice.exit40
  %var.load52 = load ptr, ptr %var.next_stage, align 8
  %niche.ne.null53 = icmp ne ptr %var.load52, null
  br i1 %niche.ne.null53, label %choice.then54, label %choice.else55

ret.dead51:                                       ; No predecessors!
  br label %choice.exit50

choice.then54:                                    ; preds = %choice.exit50
  store ptr %var.load52, ptr %var._57, align 8
  store ptr %var.load52, ptr %var.next, align 8
  %var.load58 = load ptr, ptr %var.next, align 8
  %fld.gep59 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load58, i32 0, i32 11
  %fld.load60 = load ptr, ptr %fld.gep59, align 8
  %call.res61 = call ptr @"tast::mk_lit_int"(i64 0, i64 0, i64 0)
  %call.res62 = call ptr @"typedopt::#read_var"(ptr %fld.load60, ptr %call.res61, i1 true)
  store ptr %call.res62, ptr %var.idx, align 8
  %call.res63 = call ptr @"tast::mk_lit_int"(i64 1, i64 0, i64 0)
  store ptr %call.res63, ptr %var.one, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep64, align 8
  %pay.gep65 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %tag.gep68 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc67, i32 0, i32 0
  store i64 0, ptr %tag.gep68, align 8
  %pay.gep69 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc67, i32 0, i32 1
  store ptr null, ptr %pay.gep69, align 8
  %var.load70 = load ptr, ptr %var.idx, align 8
  %var.load71 = load ptr, ptr %var.one, align 8
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc67, ptr %rec.fld, align 8
  %rec.fld73 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld73, ptr align 1 %var.load70, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld74 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld74, ptr align 1 %var.load71, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep65, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_634, align 8
  %var.load75 = load ptr, ptr %var.__ctor_arg_634, align 8
  %var.load76 = load ptr, ptr %var.idx, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load76, i32 0, i32 1
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %var.load79 = load ptr, ptr %var.idx, align 8
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load79, i32 0, i32 2
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %var.load82 = load ptr, ptr %var.idx, align 8
  %fld.gep83 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load82, i32 0, i32 3
  %var.load84 = load ptr, ptr %var.idx, align 8
  %fld.gep85 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load84, i32 0, i32 4
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %var.load87 = load ptr, ptr %var.idx, align 8
  %fld.gep88 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load87, i32 0, i32 5
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld92 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 0
  store ptr %var.load75, ptr %rec.fld92, align 8
  %rec.fld93 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 1
  store ptr %fld.load78, ptr %rec.fld93, align 8
  %rec.fld94 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 2
  store ptr %fld.load81, ptr %rec.fld94, align 8
  %rec.fld95 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld95, ptr align 1 %fld.gep83, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld96 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 4
  store i64 %fld.load86, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc91, i32 0, i32 5
  store i64 %fld.load89, ptr %rec.fld97, align 8
  store ptr %rec.alloc91, ptr %var.bump, align 8
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.body, align 8
  %var.load100 = load ptr, ptr %var.next, align 8
  %fld.gep101 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load100, i32 0, i32 10
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %var.load103 = load ptr, ptr %var.val, align 8
  %unwrap.is_pos = icmp ne ptr %var.load103, null
  br i1 %unwrap.is_pos, label %unwrap.pos.229, label %unwrap.abort.229

choice.else55:                                    ; preds = %choice.exit50
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 16)
  %tag.gep222 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc221, i32 0, i32 0
  store i64 18, ptr %tag.gep222, align 8
  %pay.gep223 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc221, i32 0, i32 1
  %var.load224 = load ptr, ptr %var.a, align 8
  %fld.gep225 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load224, i32 0, i32 0
  %fld.load226 = load ptr, ptr %fld.gep225, align 8
  %var.load227 = load ptr, ptr %var.a, align 8
  %fld.gep228 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load227, i32 0, i32 1
  %fld.load229 = load i1, ptr %fld.gep228, align 1
  %var.load230 = load ptr, ptr %var.a, align 8
  %fld.gep231 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load230, i32 0, i32 2
  %fld.load232 = load i1, ptr %fld.gep231, align 1
  %var.load233 = load ptr, ptr %var.a, align 8
  %fld.gep234 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load233, i32 0, i32 3
  %fld.load235 = load i1, ptr %fld.gep234, align 1
  %var.load236 = load ptr, ptr %var.a, align 8
  %fld.gep237 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load236, i32 0, i32 4
  %fld.load238 = load i1, ptr %fld.gep237, align 1
  %var.load239 = load ptr, ptr %var.val, align 8
  %unwrap.is_pos240 = icmp ne ptr %var.load239, null
  br i1 %unwrap.is_pos240, label %unwrap.pos.231, label %unwrap.abort.231

choice.exit56:                                    ; preds = %unwrap.pos.231, %a.after188
  %choice.res273 = phi ptr [ %rec.alloc213, %a.after188 ], [ %rec.alloc266, %unwrap.pos.231 ]
  br label %choice.exit

unwrap.pos.229:                                   ; preds = %choice.then54
  %call.res104 = call ptr @"typedopt::#write_var"(ptr %fld.load102, i1 false, ptr %var.load103)
  %a.load = load ptr, ptr %var.body, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

unwrap.abort.229:                                 ; preds = %choice.then54
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable

a.create:                                         ; preds = %unwrap.pos.229
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 24)
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 128)
  %a.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 0
  store i64 0, ptr %a.len.gep109, align 8
  %a.data.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 1
  store ptr %a.buf108, ptr %a.data.gep110, align 8
  %a.cap.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep111, align 8
  store ptr %a.create106, ptr %var.body, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %unwrap.pos.229
  %a.load2 = load ptr, ptr %var.body, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len112 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len112, %a.cap113
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data114 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len115 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data114, i64 %a.cur.len115
  %slot.p2i = ptrtoint ptr %call.res104 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len115, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load116 = load ptr, ptr %var.downstream, align 8
  %unwrap.is_pos117 = icmp ne ptr %var.load116, null
  br i1 %unwrap.is_pos117, label %unwrap.pos.230, label %unwrap.abort.230

unwrap.pos.230:                                   ; preds = %a.store
  %a.load119 = load ptr, ptr %var.body, align 8
  %a.null120 = icmp eq ptr %a.load119, null
  br i1 %a.null120, label %a.create121, label %a.after122

unwrap.abort.230:                                 ; preds = %a.store
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead118:                                    ; No predecessors!
  unreachable

a.create121:                                      ; preds = %unwrap.pos.230
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 24)
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 128)
  %a.len.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 0
  store i64 0, ptr %a.len.gep127, align 8
  %a.data.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 1
  store ptr %a.buf126, ptr %a.data.gep128, align 8
  %a.cap.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 2
  store i64 16, ptr %a.cap.gep129, align 8
  store ptr %a.create124, ptr %var.body, align 8
  br label %a.after122

a.after122:                                       ; preds = %a.create121, %unwrap.pos.230
  %a.load2130 = load ptr, ptr %var.body, align 8
  br label %a.check131

a.check131:                                       ; preds = %a.after122
  %a.len134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  %a.len135 = load i64, ptr %a.len134, align 8
  %a.cap136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 2
  %a.cap137 = load i64, ptr %a.cap136, align 8
  %a.needs.grow138 = icmp eq i64 %a.len135, %a.cap137
  br i1 %a.needs.grow138, label %a.grow132, label %a.store133

a.grow132:                                        ; preds = %a.check131
  call void @dva_array_grow(ptr %a.load2130)
  br label %a.store133

a.store133:                                       ; preds = %a.grow132, %a.check131
  %a.cur.data139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 1
  %a.cur.data140 = load ptr, ptr %a.cur.data139, align 8
  %a.cur.len141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  %a.cur.len142 = load i64, ptr %a.cur.len141, align 8
  %a.elem.gep143 = getelementptr i64, ptr %a.cur.data140, i64 %a.cur.len142
  %slot.p2i144 = ptrtoint ptr %var.load116 to i64
  store i64 %slot.p2i144, ptr %a.elem.gep143, align 8
  %a.next.len145 = add i64 %a.cur.len142, 1
  %b.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2130, i32 0, i32 0
  store i64 %a.next.len145, ptr %b.len.gep146, align 8
  %var.load147 = load ptr, ptr %var.next, align 8
  %fld.gep148 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load147, i32 0, i32 11
  %fld.load149 = load ptr, ptr %fld.gep148, align 8
  %var.load150 = load ptr, ptr %var.bump, align 8
  %call.res151 = call ptr @"typedopt::#write_var"(ptr %fld.load149, i1 false, ptr %var.load150)
  %a.load152 = load ptr, ptr %var.body, align 8
  %a.null153 = icmp eq ptr %a.load152, null
  br i1 %a.null153, label %a.create154, label %a.after155

a.create154:                                      ; preds = %a.store133
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 24)
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 128)
  %a.len.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 0
  store i64 0, ptr %a.len.gep160, align 8
  %a.data.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 1
  store ptr %a.buf159, ptr %a.data.gep161, align 8
  %a.cap.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 2
  store i64 16, ptr %a.cap.gep162, align 8
  store ptr %a.create157, ptr %var.body, align 8
  br label %a.after155

a.after155:                                       ; preds = %a.create154, %a.store133
  %a.load2163 = load ptr, ptr %var.body, align 8
  br label %a.check164

a.check164:                                       ; preds = %a.after155
  %a.len167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2163, i32 0, i32 0
  %a.len168 = load i64, ptr %a.len167, align 8
  %a.cap169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2163, i32 0, i32 2
  %a.cap170 = load i64, ptr %a.cap169, align 8
  %a.needs.grow171 = icmp eq i64 %a.len168, %a.cap170
  br i1 %a.needs.grow171, label %a.grow165, label %a.store166

a.grow165:                                        ; preds = %a.check164
  call void @dva_array_grow(ptr %a.load2163)
  br label %a.store166

a.store166:                                       ; preds = %a.grow165, %a.check164
  %a.cur.data172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2163, i32 0, i32 1
  %a.cur.data173 = load ptr, ptr %a.cur.data172, align 8
  %a.cur.len174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2163, i32 0, i32 0
  %a.cur.len175 = load i64, ptr %a.cur.len174, align 8
  %a.elem.gep176 = getelementptr i64, ptr %a.cur.data173, i64 %a.cur.len175
  %slot.p2i177 = ptrtoint ptr %call.res151 to i64
  store i64 %slot.p2i177, ptr %a.elem.gep176, align 8
  %a.next.len178 = add i64 %a.cur.len175, 1
  %b.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2163, i32 0, i32 0
  store i64 %a.next.len178, ptr %b.len.gep179, align 8
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 16)
  %tag.gep182 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc181, i32 0, i32 0
  store i64 17, ptr %tag.gep182, align 8
  %pay.gep183 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc181, i32 0, i32 1
  %var.load184 = load ptr, ptr %var.body, align 8
  %a.load185 = load ptr, ptr %var.body, align 8
  %a.null186 = icmp eq ptr %a.load185, null
  br i1 %a.null186, label %a.create187, label %a.after188

a.create187:                                      ; preds = %a.store166
  %arena.cur189 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 24)
  %arena.cur191 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 128)
  %a.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 0
  store i64 0, ptr %a.len.gep193, align 8
  %a.data.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 1
  store ptr %a.buf192, ptr %a.data.gep194, align 8
  %a.cap.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 2
  store i64 16, ptr %a.cap.gep195, align 8
  store ptr %a.create190, ptr %var.body, align 8
  br label %a.after188

a.after188:                                       ; preds = %a.create187, %a.store166
  %a.load2196 = load ptr, ptr %var.body, align 8
  store ptr %a.load2196, ptr %pay.gep183, align 8
  store ptr %enum.alloc181, ptr %var.__ctor_arg_644, align 8
  %var.load197 = load ptr, ptr %var.__ctor_arg_644, align 8
  %var.load198 = load ptr, ptr %var.step, align 8
  %fld.gep199 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load198, i32 0, i32 1
  %fld.load200 = load ptr, ptr %fld.gep199, align 8
  %var.load201 = load ptr, ptr %var.step, align 8
  %fld.gep202 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load201, i32 0, i32 2
  %fld.load203 = load ptr, ptr %fld.gep202, align 8
  %var.load204 = load ptr, ptr %var.step, align 8
  %fld.gep205 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load204, i32 0, i32 3
  %var.load206 = load ptr, ptr %var.step, align 8
  %fld.gep207 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load206, i32 0, i32 4
  %fld.load208 = load i64, ptr %fld.gep207, align 8
  %var.load209 = load ptr, ptr %var.step, align 8
  %fld.gep210 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load209, i32 0, i32 5
  %fld.load211 = load i64, ptr %fld.gep210, align 8
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld214 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 0
  store ptr %var.load197, ptr %rec.fld214, align 8
  %rec.fld215 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 1
  store ptr %fld.load200, ptr %rec.fld215, align 8
  %rec.fld216 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 2
  store ptr %fld.load203, ptr %rec.fld216, align 8
  %rec.fld217 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld217, ptr align 1 %fld.gep205, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld218 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 4
  store i64 %fld.load208, ptr %rec.fld218, align 8
  %rec.fld219 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc213, i32 0, i32 5
  store i64 %fld.load211, ptr %rec.fld219, align 8
  br label %choice.exit56

unwrap.pos.231:                                   ; preds = %choice.else55
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld244 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 0
  store ptr %fld.load226, ptr %rec.fld244, align 8
  %rec.fld245 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 1
  store i1 %fld.load229, ptr %rec.fld245, align 1
  %rec.fld246 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 2
  store i1 %fld.load232, ptr %rec.fld246, align 1
  %rec.fld247 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 3
  store i1 %fld.load235, ptr %rec.fld247, align 1
  %rec.fld248 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 4
  store i1 %fld.load238, ptr %rec.fld248, align 1
  %rec.fld249 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc243, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld249, ptr align 1 %var.load239, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc243, ptr %pay.gep223, align 8
  store ptr %enum.alloc221, ptr %var.__ctor_arg_656, align 8
  %var.load250 = load ptr, ptr %var.__ctor_arg_656, align 8
  %var.load251 = load ptr, ptr %var.step, align 8
  %fld.gep252 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load251, i32 0, i32 1
  %fld.load253 = load ptr, ptr %fld.gep252, align 8
  %var.load254 = load ptr, ptr %var.step, align 8
  %fld.gep255 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load254, i32 0, i32 2
  %fld.load256 = load ptr, ptr %fld.gep255, align 8
  %var.load257 = load ptr, ptr %var.step, align 8
  %fld.gep258 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load257, i32 0, i32 3
  %var.load259 = load ptr, ptr %var.step, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load259, i32 0, i32 4
  %fld.load261 = load i64, ptr %fld.gep260, align 8
  %var.load262 = load ptr, ptr %var.step, align 8
  %fld.gep263 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load262, i32 0, i32 5
  %fld.load264 = load i64, ptr %fld.gep263, align 8
  %arena.cur265 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld267 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 0
  store ptr %var.load250, ptr %rec.fld267, align 8
  %rec.fld268 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 1
  store ptr %fld.load253, ptr %rec.fld268, align 8
  %rec.fld269 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 2
  store ptr %fld.load256, ptr %rec.fld269, align 8
  %rec.fld270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld270, ptr align 1 %fld.gep258, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld271 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 4
  store i64 %fld.load261, ptr %rec.fld271, align 8
  %rec.fld272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc266, i32 0, i32 5
  store i64 %fld.load264, ptr %rec.fld272, align 8
  br label %choice.exit56

unwrap.abort.231:                                 ; preds = %choice.else55
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead241:                                    ; No predecessors!
  unreachable

choice.case274:                                   ; preds = %choice.next
  %pay.gep279 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr280 = load ptr, ptr %pay.gep279, align 8
  store ptr %payload.ptr280, ptr %var._281, align 8
  store ptr %payload.ptr280, ptr %var.c, align 8
  %var.load282 = load i1, ptr %var.payload, align 1
  br i1 %var.load282, label %or.232.then, label %or.232.else

choice.next275:                                   ; preds = %choice.next
  br label %choice.exit

or.232.then:                                      ; preds = %choice.case274
  br label %or.232.exit

or.232.else:                                      ; preds = %choice.case274
  %var.load283 = load ptr, ptr %var.c, align 8
  %fld.gep284 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load283, i32 0, i32 1
  %fld.load285 = load ptr, ptr %fld.gep284, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load285, i32 0, i32 0
  %a.len.query286 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp ne i64 %a.len.query286, 1
  br label %or.232.exit

or.232.exit:                                      ; preds = %or.232.else, %or.232.then
  %or.232.phi = phi i1 [ %var.load282, %or.232.then ], [ %cmptmp, %or.232.else ]
  br i1 %or.232.phi, label %choice.then287, label %choice.exit288

choice.then287:                                   ; preds = %or.232.exit
  ret ptr null

choice.exit288:                                   ; preds = %ret.dead289, %or.232.exit
  %var.load290 = load ptr, ptr %var.c, align 8
  %fld.gep291 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load290, i32 0, i32 1
  %fld.load292 = load ptr, ptr %fld.gep291, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load292, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

ret.dead289:                                      ; No predecessors!
  br label %choice.exit288

a.rd.check:                                       ; preds = %choice.exit288
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load292, i32 0, i32 0
  %a.rd.len293 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len293
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load292, i32 0, i32 1
  %a.rd.data294 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data294, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.exit288
  %arena.cur295 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
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
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 56)
  %err.code.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 0
  store i64 4011, ptr %err.code.gep298, align 8
  %err.msg.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep299, align 8
  %err.file.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep300, align 8
  %err.line.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 3
  store i64 0, ptr %err.line.gep301, align 8
  %err.col.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 4
  store i64 0, ptr %err.col.gep302, align 8
  %err.ctx.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 5
  %err.ctx0.gep304 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep303, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep304, align 8
  %err.ctx1.gep305 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep303, i32 0, i32 1
  store i64 %a.rd.len293, ptr %err.ctx1.gep305, align 8
  %err.p2i306 = ptrtoint ptr %err.alloc297 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i306, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos307 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos307, label %unwrap.pos.233, label %unwrap.abort.233

unwrap.pos.233:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.br, align 8
  %var.load333 = load ptr, ptr %var.br, align 8
  %call.res334 = call i1 @"typedopt::#bare_branch"(ptr %var.load333)
  %nottmp335 = xor i1 %call.res334, true
  br i1 %nottmp335, label %or.234.then, label %or.234.else

unwrap.abort.233:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep308, align 8
  %err.msg.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep309, align 8
  %err.file.gep310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep310, align 8
  %err.line.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep311, align 8
  %err.col.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep312, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len313 = load i64, ptr %err.msg.len, align 8
  %err.msg.len314 = and i64 %err.msg.len313, 281474976710655
  %str.tag315 = lshr i64 %err.msg.len313, 48
  %tag.immortal317 = icmp eq i64 %str.tag315, 0
  %active.gen318 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current319 = icmp eq i64 %str.tag315, %active.gen318
  %tag.fast.ok320 = or i1 %tag.immortal317, %tag.current319
  br i1 %tag.fast.ok320, label %str_ok316, label %tag.slow_check321

str_ok316:                                        ; preds = %tag.slow_check321, %unwrap.abort.233
  %err.msg.len32 = trunc i64 %err.msg.len314 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data322 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len323 = load i64, ptr %err.file.len, align 8
  %err.file.len324 = and i64 %err.file.len323, 281474976710655
  %str.tag325 = lshr i64 %err.file.len323, 48
  %tag.immortal327 = icmp eq i64 %str.tag325, 0
  %active.gen328 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current329 = icmp eq i64 %str.tag325, %active.gen328
  %tag.fast.ok330 = or i1 %tag.immortal327, %tag.current329
  br i1 %tag.fast.ok330, label %str_ok326, label %tag.slow_check331

tag.slow_check321:                                ; preds = %unwrap.abort.233
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag315)
  br label %str_ok316

str_ok326:                                        ; preds = %tag.slow_check331, %str_ok316
  %err.file.len32 = trunc i64 %err.file.len324 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data332 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check331:                                ; preds = %str_ok316
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag325)
  br label %str_ok326

err.thread:                                       ; preds = %str_ok326
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok326
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data322, i32 %err.file.len32, ptr %err.file.data332, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

or.234.then:                                      ; preds = %unwrap.pos.233
  br label %or.234.exit

or.234.else:                                      ; preds = %unwrap.pos.233
  %var.load336 = load ptr, ptr %var.br, align 8
  %fld.gep337 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load336, i32 0, i32 4
  %fld.load338 = load ptr, ptr %fld.gep337, align 8
  %a.len.query339 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load338, i32 0, i32 0
  %a.len.query340 = load i64, ptr %a.len.query339, align 8
  %cmptmp341 = icmp ne i64 %a.len.query340, 1
  br label %or.234.exit

or.234.exit:                                      ; preds = %or.234.else, %or.234.then
  %or.234.phi = phi i1 [ %nottmp335, %or.234.then ], [ %cmptmp341, %or.234.else ]
  br i1 %or.234.phi, label %choice.then342, label %choice.exit343

choice.then342:                                   ; preds = %or.234.exit
  ret ptr null

choice.exit343:                                   ; preds = %ret.dead344, %or.234.exit
  %var.load345 = load ptr, ptr %var.br, align 8
  %fld.gep346 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load345, i32 0, i32 5
  %fld.gep347 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep346, i32 0, i32 0
  %fld.load348 = load ptr, ptr %fld.gep347, align 8
  %tag.gep352 = getelementptr inbounds { i64, ptr }, ptr %fld.load348, i32 0, i32 0
  %tag.id353 = load i64, ptr %tag.gep352, align 8
  %tag.match354 = icmp eq i64 %tag.id353, 18
  br i1 %tag.match354, label %choice.case350, label %choice.next351

ret.dead344:                                      ; No predecessors!
  br label %choice.exit343

choice.exit349:                                   ; preds = %ret.dead503, %choice.exit501
  %var.load504 = load ptr, ptr %var.s, align 8
  %var.load505 = load ptr, ptr %var.c, align 8
  %fld.gep506 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load505, i32 0, i32 0
  %call.res507 = call ptr @"typedopt::#stage_value"(ptr %var.load504, ptr %fld.gep506)
  store ptr %call.res507, ptr %var.cond, align 8
  %var.load508 = load ptr, ptr %var.s, align 8
  %var.load509 = load ptr, ptr %var.br, align 8
  %fld.gep510 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load509, i32 0, i32 5
  %var.load511 = load ptr, ptr %var.next_stage, align 8
  %var.load512 = load ptr, ptr %var.downstream, align 8
  %call.res513 = call ptr @"typedopt::#replace_append"(ptr %var.load508, ptr %fld.gep510, ptr %var.load511, ptr %var.load512, i1 true)
  store ptr %call.res513, ptr %var.body514, align 8
  %var.load515 = load ptr, ptr %var.cond, align 8
  %niche.ne.null516 = icmp ne ptr %var.load515, null
  %nottmp517 = xor i1 %niche.ne.null516, true
  br i1 %nottmp517, label %or.236.then, label %or.236.else

choice.case350:                                   ; preds = %choice.exit343
  %pay.gep355 = getelementptr inbounds { i64, ptr }, ptr %fld.load348, i32 0, i32 1
  %payload.ptr356 = load ptr, ptr %pay.gep355, align 8
  store ptr %payload.ptr356, ptr %var._357, align 8
  store ptr %payload.ptr356, ptr %var.a358, align 8
  %var.load359 = load ptr, ptr %var.a358, align 8
  %fld.gep360 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load359, i32 0, i32 5
  %fld.gep361 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep360, i32 0, i32 0
  %fld.load362 = load ptr, ptr %fld.gep361, align 8
  %tag.gep366 = getelementptr inbounds { i64, ptr }, ptr %fld.load362, i32 0, i32 0
  %tag.id367 = load i64, ptr %tag.gep366, align 8
  %tag.match368 = icmp eq i64 %tag.id367, 6
  br i1 %tag.match368, label %choice.case364, label %choice.next365

choice.next351:                                   ; preds = %choice.exit343
  ret ptr null

choice.exit363:                                   ; preds = %choice.next365, %choice.case364
  %choice.res375 = phi ptr [ %fld.load374, %choice.case364 ], [ @str.0.struct, %choice.next365 ]
  store ptr %choice.res375, ptr %var.rhs, align 8
  %var.load376 = load ptr, ptr %var.rhs, align 8
  %var.load377 = load ptr, ptr %var.br, align 8
  %fld.gep378 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load377, i32 0, i32 4
  %fld.load379 = load ptr, ptr %fld.gep378, align 8
  %a.rd.nonnull380 = icmp ne ptr %fld.load379, null
  br i1 %a.rd.nonnull380, label %a.rd.check381, label %a.rd.err.null383

choice.case364:                                   ; preds = %choice.case350
  %pay.gep369 = getelementptr inbounds { i64, ptr }, ptr %fld.load362, i32 0, i32 1
  %payload.ptr370 = load ptr, ptr %pay.gep369, align 8
  store ptr %payload.ptr370, ptr %var._371, align 8
  store ptr %payload.ptr370, ptr %var.v, align 8
  %var.load372 = load ptr, ptr %var.v, align 8
  %fld.gep373 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load372, i32 0, i32 0
  %fld.load374 = load ptr, ptr %fld.gep373, align 8
  br label %choice.exit363

choice.next365:                                   ; preds = %choice.case350
  br label %choice.exit363

a.rd.check381:                                    ; preds = %choice.exit363
  %a.rd.len386 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load379, i32 0, i32 0
  %a.rd.len387 = load i64, ptr %a.rd.len386, align 8
  %a.rd.lt388 = icmp slt i64 0, %a.rd.len387
  %a.rd.bounds389 = and i1 true, %a.rd.lt388
  br i1 %a.rd.bounds389, label %a.rd.ok382, label %a.rd.err.oob384

a.rd.ok382:                                       ; preds = %a.rd.check381
  %a.rd.data390 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load379, i32 0, i32 1
  %a.rd.data391 = load ptr, ptr %a.rd.data390, align 8
  %a.rd.elem.gep392 = getelementptr i64, ptr %a.rd.data391, i64 0
  %a.rd.elem393 = load i64, ptr %a.rd.elem.gep392, align 8
  br label %a.rd.done385

a.rd.err.null383:                                 ; preds = %choice.exit363
  %arena.cur394 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 56)
  %err.code.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 0
  store i64 4011, ptr %err.code.gep396, align 8
  %err.msg.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep397, align 8
  %err.file.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep398, align 8
  %err.line.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 3
  store i64 0, ptr %err.line.gep399, align 8
  %err.col.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 4
  store i64 0, ptr %err.col.gep400, align 8
  %err.ctx.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 5
  %err.ctx0.gep402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep402, align 8
  %err.ctx1.gep403 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep403, align 8
  %err.p2i404 = ptrtoint ptr %err.alloc395 to i64
  br label %a.rd.done385

a.rd.err.oob384:                                  ; preds = %a.rd.check381
  %arena.cur405 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc406 = call ptr @dva_arena_alloc(ptr %arena.cur405, i64 56)
  %err.code.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 0
  store i64 4011, ptr %err.code.gep407, align 8
  %err.msg.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep408, align 8
  %err.file.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep409, align 8
  %err.line.gep410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 3
  store i64 0, ptr %err.line.gep410, align 8
  %err.col.gep411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 4
  store i64 0, ptr %err.col.gep411, align 8
  %err.ctx.gep412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc406, i32 0, i32 5
  %err.ctx0.gep413 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep412, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep413, align 8
  %err.ctx1.gep414 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep412, i32 0, i32 1
  store i64 %a.rd.len387, ptr %err.ctx1.gep414, align 8
  %err.p2i415 = ptrtoint ptr %err.alloc406 to i64
  br label %a.rd.done385

a.rd.done385:                                     ; preds = %a.rd.err.oob384, %a.rd.err.null383, %a.rd.ok382
  %a.rd.tag416 = phi i1 [ true, %a.rd.ok382 ], [ false, %a.rd.err.null383 ], [ false, %a.rd.err.oob384 ]
  %a.rd.pay417 = phi i64 [ %a.rd.elem393, %a.rd.ok382 ], [ %err.p2i404, %a.rd.err.null383 ], [ %err.p2i415, %a.rd.err.oob384 ]
  %ram.tag418 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag416, 0
  %ram.pay419 = insertvalue { i1, i64 } %ram.tag418, i64 %a.rd.pay417, 1
  %unwrap.is_pos420 = extractvalue { i1, i64 } %ram.pay419, 0
  br i1 %unwrap.is_pos420, label %unwrap.pos.235, label %unwrap.abort.235

unwrap.pos.235:                                   ; preds = %a.rd.done385
  %unwrap.pay.pos466 = extractvalue { i1, i64 } %ram.pay419, 1
  %pay.ptr467 = inttoptr i64 %unwrap.pay.pos466 to ptr
  %eq.lhs.len468 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 0
  %eq.lhs.len469 = load i64, ptr %eq.lhs.len468, align 8
  %eq.lhs.len470 = and i64 %eq.lhs.len469, 281474976710655
  %str.tag471 = lshr i64 %eq.lhs.len469, 48
  %tag.immortal473 = icmp eq i64 %str.tag471, 0
  %active.gen474 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current475 = icmp eq i64 %str.tag471, %active.gen474
  %tag.fast.ok476 = or i1 %tag.immortal473, %tag.current475
  br i1 %tag.fast.ok476, label %str_ok472, label %tag.slow_check477

unwrap.abort.235:                                 ; preds = %a.rd.done385
  %unwrap.pay.abort421 = extractvalue { i1, i64 } %ram.pay419, 1
  %err.ptr422 = inttoptr i64 %unwrap.pay.abort421 to ptr
  %err.code.gep423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr422, i32 0, i32 0
  %err.code424 = load i64, ptr %err.code.gep423, align 8
  %err.msg.gep425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr422, i32 0, i32 1
  %err.msg.struct426 = load ptr, ptr %err.msg.gep425, align 8
  %err.file.gep427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr422, i32 0, i32 2
  %err.file.struct428 = load ptr, ptr %err.file.gep427, align 8
  %err.line.gep429 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr422, i32 0, i32 3
  %err.line430 = load i64, ptr %err.line.gep429, align 8
  %err.col.gep431 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr422, i32 0, i32 4
  %err.col432 = load i64, ptr %err.col.gep431, align 8
  %err.msg.len433 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct426, i32 0, i32 0
  %err.msg.len434 = load i64, ptr %err.msg.len433, align 8
  %err.msg.len435 = and i64 %err.msg.len434, 281474976710655
  %str.tag436 = lshr i64 %err.msg.len434, 48
  %tag.immortal438 = icmp eq i64 %str.tag436, 0
  %active.gen439 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current440 = icmp eq i64 %str.tag436, %active.gen439
  %tag.fast.ok441 = or i1 %tag.immortal438, %tag.current440
  br i1 %tag.fast.ok441, label %str_ok437, label %tag.slow_check442

str_ok437:                                        ; preds = %tag.slow_check442, %unwrap.abort.235
  %err.msg.len32443 = trunc i64 %err.msg.len435 to i32
  %err.msg.data444 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct426, i32 0, i32 1
  %err.msg.data445 = load ptr, ptr %err.msg.data444, align 8
  %err.file.len446 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct428, i32 0, i32 0
  %err.file.len447 = load i64, ptr %err.file.len446, align 8
  %err.file.len448 = and i64 %err.file.len447, 281474976710655
  %str.tag449 = lshr i64 %err.file.len447, 48
  %tag.immortal451 = icmp eq i64 %str.tag449, 0
  %active.gen452 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current453 = icmp eq i64 %str.tag449, %active.gen452
  %tag.fast.ok454 = or i1 %tag.immortal451, %tag.current453
  br i1 %tag.fast.ok454, label %str_ok450, label %tag.slow_check455

tag.slow_check442:                                ; preds = %unwrap.abort.235
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag436)
  br label %str_ok437

str_ok450:                                        ; preds = %tag.slow_check455, %str_ok437
  %err.file.len32456 = trunc i64 %err.file.len448 to i32
  %err.file.data457 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct428, i32 0, i32 1
  %err.file.data458 = load ptr, ptr %err.file.data457, align 8
  %err.thread.rec459 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread460 = icmp ne ptr %err.thread.rec459, null
  br i1 %err.is.thread460, label %err.thread461, label %err.normal462

tag.slow_check455:                                ; preds = %str_ok437
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag449)
  br label %str_ok450

err.thread461:                                    ; preds = %str_ok450
  %err.haserr.gep463 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep463, align 8
  %err.err.gep464 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 7
  store ptr %err.ptr422, ptr %err.err.gep464, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal462:                                    ; preds = %str_ok450
  %err.panic.printf465 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code424, i32 %err.msg.len32443, ptr %err.msg.data445, i32 %err.file.len32456, ptr %err.file.data458, i64 %err.line430, i64 %err.col432)
  call void @exit(i32 1)
  unreachable

str_ok472:                                        ; preds = %tag.slow_check477, %unwrap.pos.235
  %eq.rhs.len478 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr467, i32 0, i32 0
  %eq.rhs.len479 = load i64, ptr %eq.rhs.len478, align 8
  %eq.rhs.len480 = and i64 %eq.rhs.len479, 281474976710655
  %str.tag481 = lshr i64 %eq.rhs.len479, 48
  %tag.immortal483 = icmp eq i64 %str.tag481, 0
  %active.gen484 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current485 = icmp eq i64 %str.tag481, %active.gen484
  %tag.fast.ok486 = or i1 %tag.immortal483, %tag.current485
  br i1 %tag.fast.ok486, label %str_ok482, label %tag.slow_check487

tag.slow_check477:                                ; preds = %unwrap.pos.235
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag471)
  br label %str_ok472

str_ok482:                                        ; preds = %tag.slow_check487, %str_ok472
  %eq.len488 = icmp eq i64 %eq.lhs.len470, %eq.rhs.len480
  br i1 %eq.len488, label %str.eq.then489, label %str.eq.else490

tag.slow_check487:                                ; preds = %str_ok472
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag481)
  br label %str_ok482

str.eq.then489:                                   ; preds = %str_ok482
  %eq.lhs.data492 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 1
  %eq.lhs.data493 = load ptr, ptr %eq.lhs.data492, align 8
  %eq.rhs.data494 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr467, i32 0, i32 1
  %eq.rhs.data495 = load ptr, ptr %eq.rhs.data494, align 8
  %eq.memcmp496 = call i32 @memcmp(ptr %eq.lhs.data493, ptr %eq.rhs.data495, i64 %eq.lhs.len470)
  %eq.cmp.zero497 = icmp eq i32 %eq.memcmp496, 0
  br label %str.eq.merge491

str.eq.else490:                                   ; preds = %str_ok482
  br label %str.eq.merge491

str.eq.merge491:                                  ; preds = %str.eq.else490, %str.eq.then489
  %str.eq.result498 = phi i1 [ %eq.cmp.zero497, %str.eq.then489 ], [ false, %str.eq.else490 ]
  %str.neq499 = xor i1 %str.eq.result498, true
  br i1 %str.neq499, label %choice.then500, label %choice.exit501

choice.then500:                                   ; preds = %str.eq.merge491
  ret ptr null

choice.exit501:                                   ; preds = %ret.dead502, %str.eq.merge491
  br label %choice.exit349

ret.dead502:                                      ; No predecessors!
  br label %choice.exit501

ret.dead503:                                      ; No predecessors!
  br label %choice.exit349

or.236.then:                                      ; preds = %choice.exit349
  br label %or.236.exit

or.236.else:                                      ; preds = %choice.exit349
  %var.load518 = load ptr, ptr %var.body514, align 8
  %niche.ne.null519 = icmp ne ptr %var.load518, null
  %nottmp520 = xor i1 %niche.ne.null519, true
  br label %or.236.exit

or.236.exit:                                      ; preds = %or.236.else, %or.236.then
  %or.236.phi = phi i1 [ %nottmp517, %or.236.then ], [ %nottmp520, %or.236.else ]
  br i1 %or.236.phi, label %choice.then521, label %choice.exit522

choice.then521:                                   ; preds = %or.236.exit
  ret ptr null

choice.exit522:                                   ; preds = %ret.dead523, %or.236.exit
  %arena.cur524 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new525 = call ptr @dva_arena_alloc(ptr %arena.cur524, i64 24)
  %arena.cur526 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf527 = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 128)
  %a.len.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new525, i32 0, i32 0
  store i64 0, ptr %a.len.gep528, align 8
  %a.data.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new525, i32 0, i32 1
  store ptr %a.buf527, ptr %a.data.gep529, align 8
  %a.cap.gep530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new525, i32 0, i32 2
  store i64 16, ptr %a.cap.gep530, align 8
  store ptr %a.new525, ptr %var.branches, align 8
  %var.load531 = load ptr, ptr %var.body514, align 8
  %unwrap.is_pos532 = icmp ne ptr %var.load531, null
  br i1 %unwrap.is_pos532, label %unwrap.pos.237, label %unwrap.abort.237

ret.dead523:                                      ; No predecessors!
  br label %choice.exit522

unwrap.pos.237:                                   ; preds = %choice.exit522
  store ptr %var.load531, ptr %var.__ctor_arg_696, align 8
  %var.load534 = load ptr, ptr %var.br, align 8
  %fld.gep535 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load534, i32 0, i32 0
  %fld.load536 = load ptr, ptr %fld.gep535, align 8
  %var.load537 = load ptr, ptr %var.br, align 8
  %fld.gep538 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load537, i32 0, i32 1
  %fld.load539 = load ptr, ptr %fld.gep538, align 8
  %var.load540 = load ptr, ptr %var.br, align 8
  %fld.gep541 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load540, i32 0, i32 2
  %fld.load542 = load ptr, ptr %fld.gep541, align 8
  %var.load543 = load ptr, ptr %var.br, align 8
  %fld.gep544 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load543, i32 0, i32 3
  %fld.load545 = load ptr, ptr %fld.gep544, align 8
  %var.load546 = load ptr, ptr %var.br, align 8
  %fld.gep547 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load546, i32 0, i32 4
  %fld.load548 = load ptr, ptr %fld.gep547, align 8
  %var.load549 = load ptr, ptr %var.__ctor_arg_696, align 8
  %arena.cur550 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld552 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 0
  store ptr %fld.load536, ptr %rec.fld552, align 8
  %rec.fld553 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 1
  store ptr %fld.load539, ptr %rec.fld553, align 8
  %rec.fld554 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 2
  store ptr %fld.load542, ptr %rec.fld554, align 8
  %rec.fld555 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 3
  store ptr %fld.load545, ptr %rec.fld555, align 8
  %rec.fld556 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 4
  store ptr %fld.load548, ptr %rec.fld556, align 8
  %rec.fld557 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc551, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld557, ptr align 1 %var.load549, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.load558 = load ptr, ptr %var.branches, align 8
  %a.null559 = icmp eq ptr %a.load558, null
  br i1 %a.null559, label %a.create560, label %a.after561

unwrap.abort.237:                                 ; preds = %choice.exit522
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead533:                                    ; No predecessors!
  unreachable

a.create560:                                      ; preds = %unwrap.pos.237
  %arena.cur562 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 24)
  %arena.cur564 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 128)
  %a.len.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 0
  store i64 0, ptr %a.len.gep566, align 8
  %a.data.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 1
  store ptr %a.buf565, ptr %a.data.gep567, align 8
  %a.cap.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 2
  store i64 16, ptr %a.cap.gep568, align 8
  store ptr %a.create563, ptr %var.branches, align 8
  br label %a.after561

a.after561:                                       ; preds = %a.create560, %unwrap.pos.237
  %a.load2569 = load ptr, ptr %var.branches, align 8
  br label %a.check570

a.check570:                                       ; preds = %a.after561
  %a.len573 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 0
  %a.len574 = load i64, ptr %a.len573, align 8
  %a.cap575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 2
  %a.cap576 = load i64, ptr %a.cap575, align 8
  %a.needs.grow577 = icmp eq i64 %a.len574, %a.cap576
  br i1 %a.needs.grow577, label %a.grow571, label %a.store572

a.grow571:                                        ; preds = %a.check570
  call void @dva_array_grow(ptr %a.load2569)
  br label %a.store572

a.store572:                                       ; preds = %a.grow571, %a.check570
  %a.cur.data578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 1
  %a.cur.data579 = load ptr, ptr %a.cur.data578, align 8
  %a.cur.len580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 0
  %a.cur.len581 = load i64, ptr %a.cur.len580, align 8
  %a.elem.gep582 = getelementptr i64, ptr %a.cur.data579, i64 %a.cur.len581
  %slot.p2i583 = ptrtoint ptr %rec.alloc551 to i64
  store i64 %slot.p2i583, ptr %a.elem.gep582, align 8
  %a.next.len584 = add i64 %a.cur.len581, 1
  %b.len.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 0
  store i64 %a.next.len584, ptr %b.len.gep585, align 8
  %arena.cur586 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 16)
  %tag.gep588 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc587, i32 0, i32 0
  store i64 15, ptr %tag.gep588, align 8
  %pay.gep589 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc587, i32 0, i32 1
  %var.load590 = load ptr, ptr %var.cond, align 8
  %unwrap.is_pos591 = icmp ne ptr %var.load590, null
  br i1 %unwrap.is_pos591, label %unwrap.pos.238, label %unwrap.abort.238

unwrap.pos.238:                                   ; preds = %a.store572
  %var.load593 = load ptr, ptr %var.branches, align 8
  %a.load594 = load ptr, ptr %var.branches, align 8
  %a.null595 = icmp eq ptr %a.load594, null
  br i1 %a.null595, label %a.create596, label %a.after597

unwrap.abort.238:                                 ; preds = %a.store572
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead592:                                    ; No predecessors!
  unreachable

a.create596:                                      ; preds = %unwrap.pos.238
  %arena.cur598 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 24)
  %arena.cur600 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf601 = call ptr @dva_arena_alloc(ptr %arena.cur600, i64 128)
  %a.len.gep602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 0
  store i64 0, ptr %a.len.gep602, align 8
  %a.data.gep603 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 1
  store ptr %a.buf601, ptr %a.data.gep603, align 8
  %a.cap.gep604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 2
  store i64 16, ptr %a.cap.gep604, align 8
  store ptr %a.create599, ptr %var.branches, align 8
  br label %a.after597

a.after597:                                       ; preds = %a.create596, %unwrap.pos.238
  %a.load2605 = load ptr, ptr %var.branches, align 8
  %arena.cur606 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld608 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc607, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld608, ptr align 1 %var.load590, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld609 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc607, i32 0, i32 1
  store ptr %a.load2605, ptr %rec.fld609, align 8
  store ptr %rec.alloc607, ptr %pay.gep589, align 8
  store ptr %enum.alloc587, ptr %var.__ctor_arg_702, align 8
  %var.load610 = load ptr, ptr %var.__ctor_arg_702, align 8
  %var.load611 = load ptr, ptr %var.step, align 8
  %fld.gep612 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load611, i32 0, i32 1
  %fld.load613 = load ptr, ptr %fld.gep612, align 8
  %var.load614 = load ptr, ptr %var.step, align 8
  %fld.gep615 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load614, i32 0, i32 2
  %fld.load616 = load ptr, ptr %fld.gep615, align 8
  %var.load617 = load ptr, ptr %var.step, align 8
  %fld.gep618 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load617, i32 0, i32 3
  %var.load619 = load ptr, ptr %var.step, align 8
  %fld.gep620 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load619, i32 0, i32 4
  %fld.load621 = load i64, ptr %fld.gep620, align 8
  %var.load622 = load ptr, ptr %var.step, align 8
  %fld.gep623 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load622, i32 0, i32 5
  %fld.load624 = load i64, ptr %fld.gep623, align 8
  %arena.cur625 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc626 = call ptr @dva_arena_alloc(ptr %arena.cur625, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld627 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 0
  store ptr %var.load610, ptr %rec.fld627, align 8
  %rec.fld628 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 1
  store ptr %fld.load613, ptr %rec.fld628, align 8
  %rec.fld629 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 2
  store ptr %fld.load616, ptr %rec.fld629, align 8
  %rec.fld630 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld630, ptr align 1 %fld.gep618, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld631 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 4
  store i64 %fld.load621, ptr %rec.fld631, align 8
  %rec.fld632 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc626, i32 0, i32 5
  store i64 %fld.load624, ptr %rec.fld632, align 8
  br label %choice.exit
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #7 {
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
define internal void @dva_abort_stale_str_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare ptr @"tast::mk_lit_int"(i64, i64, i64) #3

define internal i1 @"typedopt::#fusion_source"(ptr %0) #3 {
entry:
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 7
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %or.240.exit, %choice.exit10
  %choice.res25 = phi i1 [ %choice.res18, %choice.exit10 ], [ %or.240.phi, %or.240.exit ]
  ret i1 %choice.res25

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %fld.gep2 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 24
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %var.load19 = load ptr, ptr %var.e, align 8
  %call.res20 = call i1 @"typedopt::#wide_int"(ptr %var.load19)
  br i1 %call.res20, label %or.240.then, label %or.240.else

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br i1 %choice.res, label %choice.then, label %choice.else

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

choice.then:                                      ; preds = %choice.exit4
  %var.load11 = load ptr, ptr %var.b, align 8
  %fld.gep12 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load11, i32 0, i32 1
  %call.res = call i1 @"typedopt::#wide_int"(ptr %fld.gep12)
  br i1 %call.res, label %and.239.then, label %and.239.else

choice.else:                                      ; preds = %choice.exit4
  %var.load16 = load ptr, ptr %var.e, align 8
  %call.res17 = call i1 @"typedopt::#wide_int"(ptr %var.load16)
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else, %and.239.exit
  %choice.res18 = phi i1 [ %and.239.phi, %and.239.exit ], [ %call.res17, %choice.else ]
  br label %choice.exit

and.239.then:                                     ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.b, align 8
  %fld.gep14 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load13, i32 0, i32 2
  %call.res15 = call i1 @"typedopt::#wide_int"(ptr %fld.gep14)
  br label %and.239.exit

and.239.else:                                     ; preds = %choice.then
  br label %and.239.exit

and.239.exit:                                     ; preds = %and.239.else, %and.239.then
  %and.239.phi = phi i1 [ %call.res15, %and.239.then ], [ %call.res, %and.239.else ]
  br label %choice.exit10

or.240.then:                                      ; preds = %choice.next
  br label %or.240.exit

or.240.else:                                      ; preds = %choice.next
  %var.load21 = load ptr, ptr %var.e, align 8
  %fld.gep22 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load21, i32 0, i32 2
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %call.res24 = call i1 @"typedopt::#int_array"(ptr %fld.load23)
  br label %or.240.exit

or.240.exit:                                      ; preds = %or.240.else, %or.240.then
  %or.240.phi = phi i1 [ %call.res20, %or.240.then ], [ %call.res24, %or.240.else ]
  br label %choice.exit
}

define internal i1 @"typedopt::#setup_has_no_bindings"(ptr %0) #3 {
entry:
  %var._60 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
  %loop.step.242 = alloca i64, align 8
  %loop.idx.242 = alloca i64, align 8
  %var.target = alloca ptr, align 8
  %var._50 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._45 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  %tag.match1 = icmp eq i64 %tag.id, 4
  %tag.or = or i1 %tag.match, %tag.match1
  %tag.match2 = icmp eq i64 %tag.id, 5
  %tag.or3 = or i1 %tag.or, %tag.match2
  %tag.match4 = icmp eq i64 %tag.id, 2
  %tag.or5 = or i1 %tag.or3, %tag.match4
  %tag.match6 = icmp eq i64 %tag.id, 1
  %tag.or7 = or i1 %tag.or5, %tag.match6
  %tag.match8 = icmp eq i64 %tag.id, 3
  %tag.or9 = or i1 %tag.or7, %tag.match8
  %tag.match10 = icmp eq i64 %tag.id, 6
  %tag.or11 = or i1 %tag.or9, %tag.match10
  %tag.match12 = icmp eq i64 %tag.id, 24
  %tag.or13 = or i1 %tag.or11, %tag.match12
  br i1 %tag.or13, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next39, %loop.exit.242, %choice.case27, %and.241.exit, %pay.int.merge
  %choice.res67 = phi i1 [ true, %pay.int.merge ], [ %and.241.phi, %and.241.exit ], [ %call.res37, %choice.case27 ], [ true, %loop.exit.242 ], [ false, %choice.next39 ]
  ret i1 %choice.res67

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %entry
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 7
  br i1 %tag.match18, label %choice.case14, label %choice.next15

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  br label %choice.exit

choice.case14:                                    ; preds = %choice.next
  %pay.gep19 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr20 = load ptr, ptr %pay.gep19, align 8
  store ptr %payload.ptr20, ptr %var._21, align 8
  store ptr %payload.ptr20, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.b, align 8
  %fld.gep23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load22, i32 0, i32 1
  %call.res = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep23)
  br i1 %call.res, label %and.241.then, label %and.241.else

choice.next15:                                    ; preds = %choice.next
  %tag.gep29 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id30 = load i64, ptr %tag.gep29, align 8
  %tag.match31 = icmp eq i64 %tag.id30, 8
  br i1 %tag.match31, label %choice.case27, label %choice.next28

and.241.then:                                     ; preds = %choice.case14
  %var.load24 = load ptr, ptr %var.b, align 8
  %fld.gep25 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load24, i32 0, i32 2
  %call.res26 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep25)
  br label %and.241.exit

and.241.else:                                     ; preds = %choice.case14
  br label %and.241.exit

and.241.exit:                                     ; preds = %and.241.else, %and.241.then
  %and.241.phi = phi i1 [ %call.res26, %and.241.then ], [ %call.res, %and.241.else ]
  br label %choice.exit

choice.case27:                                    ; preds = %choice.next15
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  store ptr %payload.ptr33, ptr %var._34, align 8
  store ptr %payload.ptr33, ptr %var.u, align 8
  %var.load35 = load ptr, ptr %var.u, align 8
  %fld.gep36 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load35, i32 0, i32 1
  %call.res37 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep36)
  br label %choice.exit

choice.next28:                                    ; preds = %choice.next15
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id41 = load i64, ptr %tag.gep40, align 8
  %tag.match42 = icmp eq i64 %tag.id41, 9
  br i1 %tag.match42, label %choice.case38, label %choice.next39

choice.case38:                                    ; preds = %choice.next28
  %pay.gep43 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr44 = load ptr, ptr %pay.gep43, align 8
  store ptr %payload.ptr44, ptr %var._45, align 8
  store ptr %payload.ptr44, ptr %var.c, align 8
  %var.load46 = load ptr, ptr %var.c, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load46, i32 0, i32 1
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %niche.ne.null = icmp ne ptr %fld.load48, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.next39:                                    ; preds = %choice.next28
  br label %choice.exit

choice.then:                                      ; preds = %choice.case38
  store ptr %fld.load48, ptr %var._50, align 8
  store ptr %fld.load48, ptr %var.target, align 8
  %var.load51 = load ptr, ptr %var.target, align 8
  %call.res52 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %var.load51)
  %nottmp = xor i1 %call.res52, true
  br label %choice.exit49

choice.else:                                      ; preds = %choice.case38
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %nottmp, %choice.then ], [ false, %choice.else ]
  br i1 %choice.res, label %choice.then53, label %choice.exit54

choice.then53:                                    ; preds = %choice.exit49
  ret i1 false

choice.exit54:                                    ; preds = %ret.dead, %choice.exit49
  %var.load55 = load ptr, ptr %var.c, align 8
  %fld.gep56 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load55, i32 0, i32 2
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load57, i32 0, i32 0
  %arr.cycle.len58 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load57, i32 0, i32 1
  %arr.cycle.data59 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.242, align 8
  %cycle.prev.u = load ptr, ptr %var._45, align 8
  br label %loop.header.242

ret.dead:                                         ; No predecessors!
  br label %choice.exit54

loop.header.242:                                  ; preds = %loop.latch.242, %choice.exit54
  %counter.load = load i64, ptr %loop.idx.242, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len58
  br i1 %loop.cond, label %loop.body.242, label %loop.exit.nat.242

loop.body.242:                                    ; preds = %loop.header.242
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.242, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data59, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._60, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load61 = load ptr, ptr %var.arg, align 8
  %call.res62 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %var.load61)
  %nottmp63 = xor i1 %call.res62, true
  br i1 %nottmp63, label %choice.then64, label %choice.exit65

loop.exit.nat.242:                                ; preds = %loop.header.242
  br label %loop.exit.242

loop.latch.242:                                   ; preds = %choice.exit65
  %step.val = load i64, ptr %loop.step.242, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.242, align 8
  br label %loop.header.242

loop.exit.242:                                    ; preds = %loop.exit.nat.242
  store ptr %cycle.prev.u, ptr %var._45, align 8
  br label %choice.exit

choice.then64:                                    ; preds = %loop.body.242
  ret i1 false

choice.exit65:                                    ; preds = %ret.dead66, %loop.body.242
  br label %loop.latch.242

ret.dead66:                                       ; No predecessors!
  br label %choice.exit65
}

define internal void @"typedopt::#collect_binders"(ptr %0, ptr %1) #3 {
entry:
  %var._167 = alloca ptr, align 8
  %var._i166 = alloca i64, align 8
  %loop.step.245 = alloca i64, align 8
  %loop.idx.245 = alloca i64, align 8
  %var._151 = alloca ptr, align 8
  %var._i150 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.244 = alloca i64, align 8
  %loop.idx.244 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._136 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.243 = alloca i64, align 8
  %loop.idx.243 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var.stage = alloca ptr, align 8
  store ptr %0, ptr %var.stage, align 8
  store ptr %1, ptr %var.names, align 8
  %var.load = load ptr, ptr %var.stage, align 8
  %fld.gep = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len3 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap4 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len3, %a.cap4
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data5 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len6 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data5, i64 %a.cur.len6
  %slot.p2i = ptrtoint ptr %fld.load to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len6, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load7 = load ptr, ptr %var.stage, align 8
  %fld.gep8 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load7, i32 0, i32 5
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load9, i32 0, i32 0
  %arr.cycle.len10 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load9, i32 0, i32 1
  %arr.cycle.data11 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.243, align 8
  br label %loop.header.243

loop.header.243:                                  ; preds = %loop.latch.243, %a.store
  %counter.load = load i64, ptr %loop.idx.243, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len10
  br i1 %loop.cond, label %loop.body.243, label %loop.exit.nat.243

loop.body.243:                                    ; preds = %loop.header.243
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.243, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data11, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.name, align 8
  %var.load12 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len14, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.243:                                ; preds = %loop.header.243
  br label %loop.exit.243

loop.latch.243:                                   ; preds = %choice.exit48
  %step.val = load i64, ptr %loop.step.243, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.243, align 8
  br label %loop.header.243

loop.exit.243:                                    ; preds = %loop.exit.nat.243
  %var.load78 = load ptr, ptr %var.stage, align 8
  %fld.gep79 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load78, i32 0, i32 8
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %eq.lhs.len81 = getelementptr inbounds { i64, ptr }, ptr %fld.load80, i32 0, i32 0
  %eq.lhs.len82 = load i64, ptr %eq.lhs.len81, align 8
  %eq.lhs.len83 = and i64 %eq.lhs.len82, 281474976710655
  %eq.rhs.len84 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len85 = and i64 %eq.rhs.len84, 281474976710655
  %eq.len86 = icmp eq i64 %eq.lhs.len83, %eq.rhs.len85
  br i1 %eq.len86, label %str.eq.then87, label %str.eq.else88

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit48

choice.case:                                      ; preds = %str.eq.merge40
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge40
  br label %choice.exit

str.eq.then:                                      ; preds = %loop.body.243
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len14)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.243
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len17, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %eq.rhs.len20 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len21 = and i64 %eq.rhs.len20, 281474976710655
  %eq.len22 = icmp eq i64 %eq.lhs.len19, %eq.rhs.len21
  br i1 %eq.len22, label %str.eq.then23, label %str.eq.else24

str.eq.then23:                                    ; preds = %str.eq.merge
  %eq.lhs.data26 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.lhs.data27 = load ptr, ptr %eq.lhs.data26, align 8
  %eq.rhs.data28 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp29 = call i32 @memcmp(ptr %eq.lhs.data27, ptr %eq.rhs.data28, i64 %eq.lhs.len19)
  %eq.cmp.zero30 = icmp eq i32 %eq.memcmp29, 0
  br label %str.eq.merge25

str.eq.else24:                                    ; preds = %str.eq.merge
  br label %str.eq.merge25

str.eq.merge25:                                   ; preds = %str.eq.else24, %str.eq.then23
  %str.eq.result31 = phi i1 [ %eq.cmp.zero30, %str.eq.then23 ], [ false, %str.eq.else24 ]
  %case.or = or i1 %str.eq.result, %str.eq.result31
  %eq.lhs.len32 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.lhs.len33 = load i64, ptr %eq.lhs.len32, align 8
  %eq.lhs.len34 = and i64 %eq.lhs.len33, 281474976710655
  %eq.rhs.len35 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len36 = and i64 %eq.rhs.len35, 281474976710655
  %eq.len37 = icmp eq i64 %eq.lhs.len34, %eq.rhs.len36
  br i1 %eq.len37, label %str.eq.then38, label %str.eq.else39

str.eq.then38:                                    ; preds = %str.eq.merge25
  %eq.lhs.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data41, align 8
  %eq.rhs.data43 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp44 = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data43, i64 %eq.lhs.len34)
  %eq.cmp.zero45 = icmp eq i32 %eq.memcmp44, 0
  br label %str.eq.merge40

str.eq.else39:                                    ; preds = %str.eq.merge25
  br label %str.eq.merge40

str.eq.merge40:                                   ; preds = %str.eq.else39, %str.eq.then38
  %str.eq.result46 = phi i1 [ %eq.cmp.zero45, %str.eq.then38 ], [ false, %str.eq.else39 ]
  %case.or47 = or i1 %case.or, %str.eq.result46
  br i1 %case.or47, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %a.load50 = load ptr, ptr %var.names, align 8
  %a.null51 = icmp eq ptr %a.load50, null
  br i1 %a.null51, label %a.create52, label %a.after53

choice.exit48:                                    ; preds = %a.store64, %choice.exit
  br label %loop.latch.243

a.create52:                                       ; preds = %choice.then
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 24)
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  %a.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 0
  store i64 0, ptr %a.len.gep58, align 8
  %a.data.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 1
  store ptr %a.buf57, ptr %a.data.gep59, align 8
  %a.cap.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 2
  store i64 16, ptr %a.cap.gep60, align 8
  store ptr %a.create55, ptr %var.names, align 8
  br label %a.after53

a.after53:                                        ; preds = %a.create52, %choice.then
  %a.load261 = load ptr, ptr %var.names, align 8
  br label %a.check62

a.check62:                                        ; preds = %a.after53
  %a.len65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  %a.len66 = load i64, ptr %a.len65, align 8
  %a.cap67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 2
  %a.cap68 = load i64, ptr %a.cap67, align 8
  %a.needs.grow69 = icmp eq i64 %a.len66, %a.cap68
  br i1 %a.needs.grow69, label %a.grow63, label %a.store64

a.grow63:                                         ; preds = %a.check62
  call void @dva_array_grow(ptr %a.load261)
  br label %a.store64

a.store64:                                        ; preds = %a.grow63, %a.check62
  %a.cur.data70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 1
  %a.cur.data71 = load ptr, ptr %a.cur.data70, align 8
  %a.cur.len72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  %a.cur.len73 = load i64, ptr %a.cur.len72, align 8
  %a.elem.gep74 = getelementptr i64, ptr %a.cur.data71, i64 %a.cur.len73
  %slot.p2i75 = ptrtoint ptr %var.load49 to i64
  store i64 %slot.p2i75, ptr %a.elem.gep74, align 8
  %a.next.len76 = add i64 %a.cur.len73, 1
  %b.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  store i64 %a.next.len76, ptr %b.len.gep77, align 8
  br label %choice.exit48

str.eq.then87:                                    ; preds = %loop.exit.243
  %eq.lhs.data90 = getelementptr inbounds { i64, ptr }, ptr %fld.load80, i32 0, i32 1
  %eq.lhs.data91 = load ptr, ptr %eq.lhs.data90, align 8
  %eq.rhs.data92 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp93 = call i32 @memcmp(ptr %eq.lhs.data91, ptr %eq.rhs.data92, i64 %eq.lhs.len83)
  %eq.cmp.zero94 = icmp eq i32 %eq.memcmp93, 0
  br label %str.eq.merge89

str.eq.else88:                                    ; preds = %loop.exit.243
  br label %str.eq.merge89

str.eq.merge89:                                   ; preds = %str.eq.else88, %str.eq.then87
  %str.eq.result95 = phi i1 [ %eq.cmp.zero94, %str.eq.then87 ], [ false, %str.eq.else88 ]
  %str.neq = xor i1 %str.eq.result95, true
  br i1 %str.neq, label %choice.then96, label %choice.exit97

choice.then96:                                    ; preds = %str.eq.merge89
  %var.load98 = load ptr, ptr %var.stage, align 8
  %fld.gep99 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load98, i32 0, i32 8
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %a.load101 = load ptr, ptr %var.names, align 8
  %a.null102 = icmp eq ptr %a.load101, null
  br i1 %a.null102, label %a.create103, label %a.after104

choice.exit97:                                    ; preds = %a.store115, %str.eq.merge89
  %var.load129 = load ptr, ptr %var.stage, align 8
  %fld.gep130 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load129, i32 0, i32 6
  %fld.gep131 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep130, i32 0, i32 0
  %fld.load132 = load ptr, ptr %fld.gep131, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load132, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 15
  br i1 %tag.match, label %choice.case134, label %choice.next135

a.create103:                                      ; preds = %choice.then96
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 24)
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 128)
  %a.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 0
  store i64 0, ptr %a.len.gep109, align 8
  %a.data.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 1
  store ptr %a.buf108, ptr %a.data.gep110, align 8
  %a.cap.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep111, align 8
  store ptr %a.create106, ptr %var.names, align 8
  br label %a.after104

a.after104:                                       ; preds = %a.create103, %choice.then96
  %a.load2112 = load ptr, ptr %var.names, align 8
  br label %a.check113

a.check113:                                       ; preds = %a.after104
  %a.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  %a.len117 = load i64, ptr %a.len116, align 8
  %a.cap118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 2
  %a.cap119 = load i64, ptr %a.cap118, align 8
  %a.needs.grow120 = icmp eq i64 %a.len117, %a.cap119
  br i1 %a.needs.grow120, label %a.grow114, label %a.store115

a.grow114:                                        ; preds = %a.check113
  call void @dva_array_grow(ptr %a.load2112)
  br label %a.store115

a.store115:                                       ; preds = %a.grow114, %a.check113
  %a.cur.data121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 1
  %a.cur.data122 = load ptr, ptr %a.cur.data121, align 8
  %a.cur.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  %a.cur.len124 = load i64, ptr %a.cur.len123, align 8
  %a.elem.gep125 = getelementptr i64, ptr %a.cur.data122, i64 %a.cur.len124
  %slot.p2i126 = ptrtoint ptr %fld.load100 to i64
  store i64 %slot.p2i126, ptr %a.elem.gep125, align 8
  %a.next.len127 = add i64 %a.cur.len124, 1
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  store i64 %a.next.len127, ptr %b.len.gep128, align 8
  br label %choice.exit97

choice.exit133:                                   ; preds = %choice.next135, %loop.exit.244
  ret void

choice.case134:                                   ; preds = %choice.exit97
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load132, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._136, align 8
  store ptr %payload.ptr, ptr %var.c, align 8
  %var.load137 = load ptr, ptr %var.c, align 8
  %fld.gep138 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load137, i32 0, i32 1
  %fld.load139 = load ptr, ptr %fld.gep138, align 8
  %arr.cycle.len140 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load139, i32 0, i32 0
  %arr.cycle.len141 = load i64, ptr %arr.cycle.len140, align 8
  %arr.cycle.data142 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load139, i32 0, i32 1
  %arr.cycle.data143 = load ptr, ptr %arr.cycle.data142, align 8
  store i64 0, ptr %loop.idx.244, align 8
  %cycle.prev.u = load ptr, ptr %var._136, align 8
  br label %loop.header.244

choice.next135:                                   ; preds = %choice.exit97
  br label %choice.exit133

loop.header.244:                                  ; preds = %loop.latch.244, %choice.case134
  %counter.load144 = load i64, ptr %loop.idx.244, align 8
  %loop.cond145 = icmp slt i64 %counter.load144, %arr.cycle.len141
  br i1 %loop.cond145, label %loop.body.244, label %loop.exit.nat.244

loop.body.244:                                    ; preds = %loop.header.244
  %loop.rel.i146 = sub i64 %counter.load144, 0
  store i64 1, ptr %loop.step.244, align 8
  %arr.elem.gep147 = getelementptr i64, ptr %arr.cycle.data143, i64 %counter.load144
  %arr.elem.raw148 = load i64, ptr %arr.elem.gep147, align 8
  %slot.i2p149 = inttoptr i64 %arr.elem.raw148 to ptr
  store i64 %loop.rel.i146, ptr %var._i150, align 8
  store ptr %slot.i2p149, ptr %var._151, align 8
  store ptr %slot.i2p149, ptr %var.br, align 8
  %var.load152 = load ptr, ptr %var.br, align 8
  %fld.gep153 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load152, i32 0, i32 4
  %fld.load154 = load ptr, ptr %fld.gep153, align 8
  %arr.cycle.len155 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load154, i32 0, i32 0
  %arr.cycle.len156 = load i64, ptr %arr.cycle.len155, align 8
  %arr.cycle.data157 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load154, i32 0, i32 1
  %arr.cycle.data158 = load ptr, ptr %arr.cycle.data157, align 8
  store i64 0, ptr %loop.idx.245, align 8
  %cycle.prev.u159 = load ptr, ptr %var._151, align 8
  %cycle.prev.i = load i64, ptr %var._i150, align 8
  br label %loop.header.245

loop.exit.nat.244:                                ; preds = %loop.header.244
  br label %loop.exit.244

loop.latch.244:                                   ; preds = %loop.exit.245
  %step.val199 = load i64, ptr %loop.step.244, align 8
  %loop.next200 = add i64 %counter.load144, %step.val199
  store i64 %loop.next200, ptr %loop.idx.244, align 8
  br label %loop.header.244

loop.exit.244:                                    ; preds = %loop.exit.nat.244
  store ptr %cycle.prev.u, ptr %var._136, align 8
  br label %choice.exit133

loop.header.245:                                  ; preds = %loop.latch.245, %loop.body.244
  %counter.load160 = load i64, ptr %loop.idx.245, align 8
  %loop.cond161 = icmp slt i64 %counter.load160, %arr.cycle.len156
  br i1 %loop.cond161, label %loop.body.245, label %loop.exit.nat.245

loop.body.245:                                    ; preds = %loop.header.245
  %loop.rel.i162 = sub i64 %counter.load160, 0
  store i64 1, ptr %loop.step.245, align 8
  %arr.elem.gep163 = getelementptr i64, ptr %arr.cycle.data158, i64 %counter.load160
  %arr.elem.raw164 = load i64, ptr %arr.elem.gep163, align 8
  %slot.i2p165 = inttoptr i64 %arr.elem.raw164 to ptr
  store i64 %loop.rel.i162, ptr %var._i166, align 8
  store ptr %slot.i2p165, ptr %var._167, align 8
  store ptr %slot.i2p165, ptr %var.name, align 8
  %var.load168 = load ptr, ptr %var.name, align 8
  %a.load169 = load ptr, ptr %var.names, align 8
  %a.null170 = icmp eq ptr %a.load169, null
  br i1 %a.null170, label %a.create171, label %a.after172

loop.exit.nat.245:                                ; preds = %loop.header.245
  br label %loop.exit.245

loop.latch.245:                                   ; preds = %a.store183
  %step.val197 = load i64, ptr %loop.step.245, align 8
  %loop.next198 = add i64 %counter.load160, %step.val197
  store i64 %loop.next198, ptr %loop.idx.245, align 8
  br label %loop.header.245

loop.exit.245:                                    ; preds = %loop.exit.nat.245
  store ptr %cycle.prev.u159, ptr %var._151, align 8
  store i64 %cycle.prev.i, ptr %var._i150, align 8
  br label %loop.latch.244

a.create171:                                      ; preds = %loop.body.245
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 24)
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 128)
  %a.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 0
  store i64 0, ptr %a.len.gep177, align 8
  %a.data.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 1
  store ptr %a.buf176, ptr %a.data.gep178, align 8
  %a.cap.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 2
  store i64 16, ptr %a.cap.gep179, align 8
  store ptr %a.create174, ptr %var.names, align 8
  br label %a.after172

a.after172:                                       ; preds = %a.create171, %loop.body.245
  %a.load2180 = load ptr, ptr %var.names, align 8
  br label %a.check181

a.check181:                                       ; preds = %a.after172
  %a.len184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  %a.len185 = load i64, ptr %a.len184, align 8
  %a.cap186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 2
  %a.cap187 = load i64, ptr %a.cap186, align 8
  %a.needs.grow188 = icmp eq i64 %a.len185, %a.cap187
  br i1 %a.needs.grow188, label %a.grow182, label %a.store183

a.grow182:                                        ; preds = %a.check181
  call void @dva_array_grow(ptr %a.load2180)
  br label %a.store183

a.store183:                                       ; preds = %a.grow182, %a.check181
  %a.cur.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 1
  %a.cur.data190 = load ptr, ptr %a.cur.data189, align 8
  %a.cur.len191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  %a.cur.len192 = load i64, ptr %a.cur.len191, align 8
  %a.elem.gep193 = getelementptr i64, ptr %a.cur.data190, i64 %a.cur.len192
  %slot.p2i194 = ptrtoint ptr %var.load168 to i64
  store i64 %slot.p2i194, ptr %a.elem.gep193, align 8
  %a.next.len195 = add i64 %a.cur.len192, 1
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  store i64 %a.next.len195, ptr %b.len.gep196, align 8
  br label %loop.latch.245
}

define internal ptr @"typedopt::#fuse_pipeline"(ptr %0) #3 {
entry:
  %var.fused = alloca ptr, align 8
  %var.__ctor_arg_830 = alloca ptr, align 8
  %var.__rec_upd_827 = alloca ptr, align 8
  %var.body_fn = alloca ptr, align 8
  %var.__ctor_arg_820 = alloca ptr, align 8
  %var.__rec_upd_819 = alloca ptr, align 8
  %var.params = alloca ptr, align 8
  %var.lower = alloca ptr, align 8
  %var.inner = alloca ptr, align 8
  %var.candidate = alloca ptr, align 8
  %var._61 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.248 = alloca i64, align 8
  %loop.idx.248 = alloca i64, align 8
  %"var.depth'" = alloca i64, align 8
  %var.binders = alloca ptr, align 8
  %var.prefix = alloca ptr, align 8
  %var.initial = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %"var.step'" = alloca ptr, align 8
  %"var.current'" = alloca ptr, align 8
  %var.outer = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#read_stage"(ptr %var.load)
  store ptr %call.res, ptr %var.outer, align 8
  %var.load1 = load ptr, ptr %var.outer, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  %nottmp = xor i1 %niche.ne.null, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load ptr, ptr %var.outer, align 8
  %unwrap.is_pos = icmp ne ptr %var.load2, null
  br i1 %unwrap.is_pos, label %unwrap.pos.247, label %unwrap.abort.247

ret.dead:                                         ; No predecessors!
  br label %choice.exit

unwrap.pos.247:                                   ; preds = %choice.exit
  store ptr %var.load2, ptr %"var.current'", align 8
  %var.load3 = load ptr, ptr %"var.current'", align 8
  %var.load4 = load ptr, ptr %"var.current'", align 8
  %fld.gep = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load4, i32 0, i32 6
  %call.res5 = call ptr @"typedopt::#replace_append"(ptr %var.load3, ptr %fld.gep, ptr null, ptr null, i1 false)
  store ptr %call.res5, ptr %"var.step'", align 8
  %var.load6 = load ptr, ptr %"var.step'", align 8
  %niche.ne.null7 = icmp ne ptr %var.load6, null
  %nottmp8 = xor i1 %niche.ne.null7, true
  br i1 %nottmp8, label %choice.then9, label %choice.exit10

unwrap.abort.247:                                 ; preds = %choice.exit
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable

choice.then9:                                     ; preds = %unwrap.pos.247
  ret ptr null

choice.exit10:                                    ; preds = %ret.dead11, %unwrap.pos.247
  %var.load12 = load ptr, ptr %"var.current'", align 8
  %fld.gep13 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load12, i32 0, i32 0
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep13, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep14, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

ret.dead11:                                       ; No predecessors!
  br label %choice.exit10

choice.exit15:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %fld.gep17, %choice.case ], [ %fld.gep19, %choice.next ]
  store ptr %choice.res, ptr %var.initial, align 8
  %var.load20 = load ptr, ptr %var.initial, align 8
  %call.res21 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %var.load20)
  %nottmp22 = xor i1 %call.res21, true
  br i1 %nottmp22, label %choice.then23, label %choice.exit24

choice.case:                                      ; preds = %choice.exit10
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load16 = load ptr, ptr %var.a, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load16, i32 0, i32 5
  br label %choice.exit15

choice.next:                                      ; preds = %choice.exit10
  %var.load18 = load ptr, ptr %"var.current'", align 8
  %fld.gep19 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load18, i32 0, i32 0
  br label %choice.exit15

choice.then23:                                    ; preds = %choice.exit15
  ret ptr null

choice.exit24:                                    ; preds = %ret.dead25, %choice.exit15
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.prefix, align 8
  %var.load27 = load ptr, ptr %"var.current'", align 8
  %fld.gep28 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load27, i32 0, i32 0
  %a.load = load ptr, ptr %var.prefix, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

ret.dead25:                                       ; No predecessors!
  br label %choice.exit24

a.create:                                         ; preds = %choice.exit24
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.prefix, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit24
  %a.load2 = load ptr, ptr %var.prefix, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len36 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap37 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len36, %a.cap37
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data38 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len39 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data38, i64 %a.cur.len39
  %slot.p2i = ptrtoint ptr %fld.gep28 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len39, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  %a.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 0
  store i64 0, ptr %a.len.gep44, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  store ptr %a.new41, ptr %var.binders, align 8
  %var.load47 = load ptr, ptr %"var.current'", align 8
  %var.load48 = load ptr, ptr %var.binders, align 8
  %a.load49 = load ptr, ptr %var.binders, align 8
  %a.null50 = icmp eq ptr %a.load49, null
  br i1 %a.null50, label %a.create51, label %a.after52

a.create51:                                       ; preds = %a.store
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 128)
  %a.len.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 0
  store i64 0, ptr %a.len.gep57, align 8
  %a.data.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 1
  store ptr %a.buf56, ptr %a.data.gep58, align 8
  %a.cap.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 2
  store i64 16, ptr %a.cap.gep59, align 8
  store ptr %a.create54, ptr %var.binders, align 8
  br label %a.after52

a.after52:                                        ; preds = %a.create51, %a.store
  %a.load260 = load ptr, ptr %var.binders, align 8
  call void @"typedopt::#collect_binders"(ptr %var.load47, ptr %a.load260)
  store i64 0, ptr %"var.depth'", align 8
  store i64 0, ptr %loop.idx.248, align 8
  br label %loop.header.248

loop.header.248:                                  ; preds = %loop.latch.248, %a.after52
  %counter.load = load i64, ptr %loop.idx.248, align 8
  br label %loop.body.248

loop.body.248:                                    ; preds = %loop.header.248
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.248, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._61, align 8
  %var.load62 = load ptr, ptr %"var.current'", align 8
  %fld.gep63 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load62, i32 0, i32 3
  %call.res64 = call ptr @"typedopt::#read_stage"(ptr %fld.gep63)
  store ptr %call.res64, ptr %var.candidate, align 8
  %var.load65 = load ptr, ptr %var.candidate, align 8
  %niche.ne.null66 = icmp ne ptr %var.load65, null
  %nottmp67 = xor i1 %niche.ne.null66, true
  br i1 %nottmp67, label %choice.then68, label %choice.exit69

loop.exit.nat.248:                                ; No predecessors!
  br label %loop.exit.248

loop.latch.248:                                   ; preds = %a.after128
  %step.val = load i64, ptr %loop.step.248, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.248, align 8
  br label %loop.header.248

loop.exit.248:                                    ; preds = %choice.then88, %choice.then77, %choice.then68, %loop.exit.nat.248
  %var.load140 = load i64, ptr %"var.depth'", align 8
  %cmptmp = icmp eq i64 %var.load140, 0
  br i1 %cmptmp, label %or.250.then, label %or.250.else

choice.then68:                                    ; preds = %loop.body.248
  br label %loop.exit.248

choice.exit69:                                    ; preds = %loop.body.248
  %var.load70 = load ptr, ptr %var.candidate, align 8
  %unwrap.is_pos71 = icmp ne ptr %var.load70, null
  br i1 %unwrap.is_pos71, label %unwrap.pos.249, label %unwrap.abort.249

unwrap.pos.249:                                   ; preds = %choice.exit69
  store ptr %var.load70, ptr %var.inner, align 8
  %var.load73 = load ptr, ptr %var.inner, align 8
  %fld.gep74 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load73, i32 0, i32 9
  %fld.load75 = load i1, ptr %fld.gep74, align 1
  %nottmp76 = xor i1 %fld.load75, true
  br i1 %nottmp76, label %choice.then77, label %choice.exit78

unwrap.abort.249:                                 ; preds = %choice.exit69
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  unreachable

choice.then77:                                    ; preds = %unwrap.pos.249
  br label %loop.exit.248

choice.exit78:                                    ; preds = %unwrap.pos.249
  %var.load79 = load ptr, ptr %var.inner, align 8
  %var.load80 = load ptr, ptr %var.inner, align 8
  %fld.gep81 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load80, i32 0, i32 6
  %var.load82 = load ptr, ptr %"var.current'", align 8
  %var.load83 = load ptr, ptr %"var.step'", align 8
  %call.res84 = call ptr @"typedopt::#replace_append"(ptr %var.load79, ptr %fld.gep81, ptr %var.load82, ptr %var.load83, i1 false)
  store ptr %call.res84, ptr %var.lower, align 8
  %var.load85 = load ptr, ptr %var.lower, align 8
  %niche.ne.null86 = icmp ne ptr %var.load85, null
  %nottmp87 = xor i1 %niche.ne.null86, true
  br i1 %nottmp87, label %choice.then88, label %choice.exit89

choice.then88:                                    ; preds = %choice.exit78
  br label %loop.exit.248

choice.exit89:                                    ; preds = %choice.exit78
  %var.load90 = load ptr, ptr %"var.current'", align 8
  %fld.gep91 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load90, i32 0, i32 11
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %call.res93 = call ptr @"tast::mk_lit_int"(i64 0, i64 0, i64 0)
  %call.res94 = call ptr @"typedopt::#write_var"(ptr %fld.load92, i1 true, ptr %call.res93)
  %a.load95 = load ptr, ptr %var.prefix, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

a.create97:                                       ; preds = %choice.exit89
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  store ptr %a.create100, ptr %var.prefix, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %choice.exit89
  %a.load2106 = load ptr, ptr %var.prefix, align 8
  br label %a.check107

a.check107:                                       ; preds = %a.after98
  %a.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.len111 = load i64, ptr %a.len110, align 8
  %a.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap112, align 8
  %a.needs.grow114 = icmp eq i64 %a.len111, %a.cap113
  br i1 %a.needs.grow114, label %a.grow108, label %a.store109

a.grow108:                                        ; preds = %a.check107
  call void @dva_array_grow(ptr %a.load2106)
  br label %a.store109

a.store109:                                       ; preds = %a.grow108, %a.check107
  %a.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %a.cur.data116 = load ptr, ptr %a.cur.data115, align 8
  %a.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.cur.len118 = load i64, ptr %a.cur.len117, align 8
  %a.elem.gep119 = getelementptr i64, ptr %a.cur.data116, i64 %a.cur.len118
  %slot.p2i120 = ptrtoint ptr %call.res94 to i64
  store i64 %slot.p2i120, ptr %a.elem.gep119, align 8
  %a.next.len121 = add i64 %a.cur.len118, 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  store i64 %a.next.len121, ptr %b.len.gep122, align 8
  %var.load123 = load ptr, ptr %var.inner, align 8
  %var.load124 = load ptr, ptr %var.binders, align 8
  %a.load125 = load ptr, ptr %var.binders, align 8
  %a.null126 = icmp eq ptr %a.load125, null
  br i1 %a.null126, label %a.create127, label %a.after128

a.create127:                                      ; preds = %a.store109
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 24)
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 128)
  %a.len.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 0
  store i64 0, ptr %a.len.gep133, align 8
  %a.data.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 1
  store ptr %a.buf132, ptr %a.data.gep134, align 8
  %a.cap.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 2
  store i64 16, ptr %a.cap.gep135, align 8
  store ptr %a.create130, ptr %var.binders, align 8
  br label %a.after128

a.after128:                                       ; preds = %a.create127, %a.store109
  %a.load2136 = load ptr, ptr %var.binders, align 8
  call void @"typedopt::#collect_binders"(ptr %var.load123, ptr %a.load2136)
  %var.load137 = load ptr, ptr %var.inner, align 8
  store ptr %var.load137, ptr %"var.current'", align 8
  %var.load138 = load ptr, ptr %var.lower, align 8
  store ptr %var.load138, ptr %"var.step'", align 8
  %var.load139 = load i64, ptr %"var.depth'", align 8
  %addtmp = add i64 %var.load139, 1
  store i64 %addtmp, ptr %"var.depth'", align 8
  br label %loop.latch.248

or.250.then:                                      ; preds = %loop.exit.248
  br label %or.250.exit

or.250.else:                                      ; preds = %loop.exit.248
  %var.load141 = load ptr, ptr %"var.current'", align 8
  %fld.gep142 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load141, i32 0, i32 3
  %call.res143 = call i1 @"typedopt::#fusion_source"(ptr %fld.gep142)
  %nottmp144 = xor i1 %call.res143, true
  br label %or.250.exit

or.250.exit:                                      ; preds = %or.250.else, %or.250.then
  %or.250.phi = phi i1 [ %cmptmp, %or.250.then ], [ %nottmp144, %or.250.else ]
  br i1 %or.250.phi, label %or.251.then, label %or.251.else

or.251.then:                                      ; preds = %or.250.exit
  br label %or.251.exit

or.251.else:                                      ; preds = %or.250.exit
  %var.load145 = load ptr, ptr %"var.current'", align 8
  %fld.gep146 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load145, i32 0, i32 3
  %call.res147 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep146)
  %nottmp148 = xor i1 %call.res147, true
  br label %or.251.exit

or.251.exit:                                      ; preds = %or.251.else, %or.251.then
  %or.251.phi = phi i1 [ %or.250.phi, %or.251.then ], [ %nottmp148, %or.251.else ]
  br i1 %or.251.phi, label %choice.then149, label %choice.exit150

choice.then149:                                   ; preds = %or.251.exit
  ret ptr null

choice.exit150:                                   ; preds = %ret.dead151, %or.251.exit
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 24)
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 128)
  %a.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 0
  store i64 0, ptr %a.len.gep156, align 8
  %a.data.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 1
  store ptr %a.buf155, ptr %a.data.gep157, align 8
  %a.cap.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep158, align 8
  store ptr %a.new153, ptr %var.params, align 8
  %var.load159 = load ptr, ptr %"var.current'", align 8
  %fld.gep160 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load159, i32 0, i32 10
  %fld.load161 = load ptr, ptr %fld.gep160, align 8
  %a.load162 = load ptr, ptr %var.params, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

ret.dead151:                                      ; No predecessors!
  br label %choice.exit150

a.create164:                                      ; preds = %choice.exit150
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 24)
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 128)
  %a.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 0
  store i64 0, ptr %a.len.gep170, align 8
  %a.data.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 1
  store ptr %a.buf169, ptr %a.data.gep171, align 8
  %a.cap.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep172, align 8
  store ptr %a.create167, ptr %var.params, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %choice.exit150
  %a.load2173 = load ptr, ptr %var.params, align 8
  br label %a.check174

a.check174:                                       ; preds = %a.after165
  %a.len177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.len178 = load i64, ptr %a.len177, align 8
  %a.cap179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 2
  %a.cap180 = load i64, ptr %a.cap179, align 8
  %a.needs.grow181 = icmp eq i64 %a.len178, %a.cap180
  br i1 %a.needs.grow181, label %a.grow175, label %a.store176

a.grow175:                                        ; preds = %a.check174
  call void @dva_array_grow(ptr %a.load2173)
  br label %a.store176

a.store176:                                       ; preds = %a.grow175, %a.check174
  %a.cur.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 1
  %a.cur.data183 = load ptr, ptr %a.cur.data182, align 8
  %a.cur.len184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.cur.len185 = load i64, ptr %a.cur.len184, align 8
  %a.elem.gep186 = getelementptr i64, ptr %a.cur.data183, i64 %a.cur.len185
  %slot.p2i187 = ptrtoint ptr %fld.load161 to i64
  store i64 %slot.p2i187, ptr %a.elem.gep186, align 8
  %a.next.len188 = add i64 %a.cur.len185, 1
  %b.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  store i64 %a.next.len188, ptr %b.len.gep189, align 8
  %var.load190 = load ptr, ptr %"var.current'", align 8
  %fld.gep191 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load190, i32 0, i32 11
  %fld.load192 = load ptr, ptr %fld.gep191, align 8
  %a.load193 = load ptr, ptr %var.params, align 8
  %a.null194 = icmp eq ptr %a.load193, null
  br i1 %a.null194, label %a.create195, label %a.after196

a.create195:                                      ; preds = %a.store176
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 24)
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 128)
  %a.len.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 0
  store i64 0, ptr %a.len.gep201, align 8
  %a.data.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 1
  store ptr %a.buf200, ptr %a.data.gep202, align 8
  %a.cap.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create198, i32 0, i32 2
  store i64 16, ptr %a.cap.gep203, align 8
  store ptr %a.create198, ptr %var.params, align 8
  br label %a.after196

a.after196:                                       ; preds = %a.create195, %a.store176
  %a.load2204 = load ptr, ptr %var.params, align 8
  br label %a.check205

a.check205:                                       ; preds = %a.after196
  %a.len208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 0
  %a.len209 = load i64, ptr %a.len208, align 8
  %a.cap210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 2
  %a.cap211 = load i64, ptr %a.cap210, align 8
  %a.needs.grow212 = icmp eq i64 %a.len209, %a.cap211
  br i1 %a.needs.grow212, label %a.grow206, label %a.store207

a.grow206:                                        ; preds = %a.check205
  call void @dva_array_grow(ptr %a.load2204)
  br label %a.store207

a.store207:                                       ; preds = %a.grow206, %a.check205
  %a.cur.data213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 1
  %a.cur.data214 = load ptr, ptr %a.cur.data213, align 8
  %a.cur.len215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 0
  %a.cur.len216 = load i64, ptr %a.cur.len215, align 8
  %a.elem.gep217 = getelementptr i64, ptr %a.cur.data214, i64 %a.cur.len216
  %slot.p2i218 = ptrtoint ptr %fld.load192 to i64
  store i64 %slot.p2i218, ptr %a.elem.gep217, align 8
  %a.next.len219 = add i64 %a.cur.len216, 1
  %b.len.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2204, i32 0, i32 0
  store i64 %a.next.len219, ptr %b.len.gep220, align 8
  %var.load221 = load ptr, ptr %"var.current'", align 8
  %fld.gep222 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load221, i32 0, i32 4
  store ptr %fld.gep222, ptr %var.__rec_upd_819, align 8
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 16)
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 16, ptr %tag.gep224, align 8
  %pay.gep225 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load226 = load ptr, ptr %var.params, align 8
  %a.load227 = load ptr, ptr %var.params, align 8
  %a.null228 = icmp eq ptr %a.load227, null
  br i1 %a.null228, label %a.create229, label %a.after230

a.create229:                                      ; preds = %a.store207
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 24)
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 128)
  %a.len.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 0
  store i64 0, ptr %a.len.gep235, align 8
  %a.data.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 1
  store ptr %a.buf234, ptr %a.data.gep236, align 8
  %a.cap.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create232, i32 0, i32 2
  store i64 16, ptr %a.cap.gep237, align 8
  store ptr %a.create232, ptr %var.params, align 8
  br label %a.after230

a.after230:                                       ; preds = %a.create229, %a.store207
  %a.load2238 = load ptr, ptr %var.params, align 8
  %var.load239 = load ptr, ptr %"var.step'", align 8
  %unwrap.is_pos240 = icmp ne ptr %var.load239, null
  br i1 %unwrap.is_pos240, label %unwrap.pos.252, label %unwrap.abort.252

unwrap.pos.252:                                   ; preds = %a.after230
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 24)
  %arena.cur244 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 128)
  %a.len.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new243, i32 0, i32 0
  store i64 0, ptr %a.len.gep246, align 8
  %a.data.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new243, i32 0, i32 1
  store ptr %a.buf245, ptr %a.data.gep247, align 8
  %a.cap.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep248, align 8
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2238, ptr %rec.fld, align 8
  %rec.fld250 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld250, ptr align 1 %var.load239, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld251 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.new243, ptr %rec.fld251, align 8
  store ptr %rec.alloc, ptr %pay.gep225, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_820, align 8
  %var.load252 = load ptr, ptr %var.__ctor_arg_820, align 8
  %var.load253 = load ptr, ptr %var.__rec_upd_819, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load253, i32 0, i32 1
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %var.load256 = load ptr, ptr %var.__rec_upd_819, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load256, i32 0, i32 2
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.__rec_upd_819, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load259, i32 0, i32 3
  %var.load261 = load ptr, ptr %var.__rec_upd_819, align 8
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load261, i32 0, i32 4
  %fld.load263 = load i64, ptr %fld.gep262, align 8
  %var.load264 = load ptr, ptr %var.__rec_upd_819, align 8
  %fld.gep265 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load264, i32 0, i32 5
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld269 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 0
  store ptr %var.load252, ptr %rec.fld269, align 8
  %rec.fld270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 1
  store ptr %fld.load255, ptr %rec.fld270, align 8
  %rec.fld271 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 2
  store ptr %fld.load258, ptr %rec.fld271, align 8
  %rec.fld272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld272, ptr align 1 %fld.gep260, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld273 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 4
  store i64 %fld.load263, ptr %rec.fld273, align 8
  %rec.fld274 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 5
  store i64 %fld.load266, ptr %rec.fld274, align 8
  store ptr %rec.alloc268, ptr %var.body_fn, align 8
  %var.load275 = load ptr, ptr %"var.current'", align 8
  %fld.gep276 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load275, i32 0, i32 1
  store ptr %fld.gep276, ptr %var.__rec_upd_827, align 8
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 16)
  %tag.gep279 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc278, i32 0, i32 0
  store i64 19, ptr %tag.gep279, align 8
  %pay.gep280 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc278, i32 0, i32 1
  %var.load281 = load ptr, ptr %"var.current'", align 8
  %fld.gep282 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load281, i32 0, i32 3
  %var.load283 = load ptr, ptr %var.body_fn, align 8
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld286 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld286, ptr align 1 %fld.gep282, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld287 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld287, ptr align 1 %var.load283, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld288 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 2
  store ptr null, ptr %rec.fld288, align 8
  %rec.fld289 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 3
  store i1 false, ptr %rec.fld289, align 1
  store ptr %rec.alloc285, ptr %pay.gep280, align 8
  store ptr %enum.alloc278, ptr %var.__ctor_arg_830, align 8
  %var.load290 = load ptr, ptr %var.__ctor_arg_830, align 8
  %var.load291 = load ptr, ptr %var.__rec_upd_827, align 8
  %fld.gep292 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load291, i32 0, i32 1
  %fld.load293 = load ptr, ptr %fld.gep292, align 8
  %var.load294 = load ptr, ptr %var.__rec_upd_827, align 8
  %fld.gep295 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load294, i32 0, i32 2
  %fld.load296 = load ptr, ptr %fld.gep295, align 8
  %var.load297 = load ptr, ptr %var.__rec_upd_827, align 8
  %fld.gep298 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load297, i32 0, i32 3
  %var.load299 = load ptr, ptr %var.__rec_upd_827, align 8
  %fld.gep300 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load299, i32 0, i32 4
  %fld.load301 = load i64, ptr %fld.gep300, align 8
  %var.load302 = load ptr, ptr %var.__rec_upd_827, align 8
  %fld.gep303 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load302, i32 0, i32 5
  %fld.load304 = load i64, ptr %fld.gep303, align 8
  %arena.cur305 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld307 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 0
  store ptr %var.load290, ptr %rec.fld307, align 8
  %rec.fld308 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 1
  store ptr %fld.load293, ptr %rec.fld308, align 8
  %rec.fld309 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 2
  store ptr %fld.load296, ptr %rec.fld309, align 8
  %rec.fld310 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld310, ptr align 1 %fld.gep298, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld311 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 4
  store i64 %fld.load301, ptr %rec.fld311, align 8
  %rec.fld312 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc306, i32 0, i32 5
  store i64 %fld.load304, ptr %rec.fld312, align 8
  store ptr %rec.alloc306, ptr %var.fused, align 8
  %var.load313 = load ptr, ptr %var.fused, align 8
  %a.load314 = load ptr, ptr %var.prefix, align 8
  %a.null315 = icmp eq ptr %a.load314, null
  br i1 %a.null315, label %a.create316, label %a.after317

unwrap.abort.252:                                 ; preds = %a.after230
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead241:                                    ; No predecessors!
  unreachable

a.create316:                                      ; preds = %unwrap.pos.252
  %arena.cur318 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 24)
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 128)
  %a.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 0
  store i64 0, ptr %a.len.gep322, align 8
  %a.data.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 1
  store ptr %a.buf321, ptr %a.data.gep323, align 8
  %a.cap.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 2
  store i64 16, ptr %a.cap.gep324, align 8
  store ptr %a.create319, ptr %var.prefix, align 8
  br label %a.after317

a.after317:                                       ; preds = %a.create316, %unwrap.pos.252
  %a.load2325 = load ptr, ptr %var.prefix, align 8
  br label %a.check326

a.check326:                                       ; preds = %a.after317
  %a.len329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2325, i32 0, i32 0
  %a.len330 = load i64, ptr %a.len329, align 8
  %a.cap331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2325, i32 0, i32 2
  %a.cap332 = load i64, ptr %a.cap331, align 8
  %a.needs.grow333 = icmp eq i64 %a.len330, %a.cap332
  br i1 %a.needs.grow333, label %a.grow327, label %a.store328

a.grow327:                                        ; preds = %a.check326
  call void @dva_array_grow(ptr %a.load2325)
  br label %a.store328

a.store328:                                       ; preds = %a.grow327, %a.check326
  %a.cur.data334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2325, i32 0, i32 1
  %a.cur.data335 = load ptr, ptr %a.cur.data334, align 8
  %a.cur.len336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2325, i32 0, i32 0
  %a.cur.len337 = load i64, ptr %a.cur.len336, align 8
  %a.elem.gep338 = getelementptr i64, ptr %a.cur.data335, i64 %a.cur.len337
  %slot.p2i339 = ptrtoint ptr %var.load313 to i64
  store i64 %slot.p2i339, ptr %a.elem.gep338, align 8
  %a.next.len340 = add i64 %a.cur.len337, 1
  %b.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2325, i32 0, i32 0
  store i64 %a.next.len340, ptr %b.len.gep341, align 8
  %var.load342 = load ptr, ptr %var.outer, align 8
  %unwrap.is_pos343 = icmp ne ptr %var.load342, null
  br i1 %unwrap.is_pos343, label %unwrap.pos.253, label %unwrap.abort.253

unwrap.pos.253:                                   ; preds = %a.store328
  %fld.gep345 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %var.load342, i32 0, i32 2
  %a.load346 = load ptr, ptr %var.prefix, align 8
  %a.null347 = icmp eq ptr %a.load346, null
  br i1 %a.null347, label %a.create348, label %a.after349

unwrap.abort.253:                                 ; preds = %a.store328
  call void @dva_abort_unwrap_abort_msg()
  unreachable

abort.dead344:                                    ; No predecessors!
  unreachable

a.create348:                                      ; preds = %unwrap.pos.253
  %arena.cur350 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 24)
  %arena.cur352 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 128)
  %a.len.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 0
  store i64 0, ptr %a.len.gep354, align 8
  %a.data.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 1
  store ptr %a.buf353, ptr %a.data.gep355, align 8
  %a.cap.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create351, i32 0, i32 2
  store i64 16, ptr %a.cap.gep356, align 8
  store ptr %a.create351, ptr %var.prefix, align 8
  br label %a.after349

a.after349:                                       ; preds = %a.create348, %unwrap.pos.253
  %a.load2357 = load ptr, ptr %var.prefix, align 8
  br label %a.check358

a.check358:                                       ; preds = %a.after349
  %a.len361 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2357, i32 0, i32 0
  %a.len362 = load i64, ptr %a.len361, align 8
  %a.cap363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2357, i32 0, i32 2
  %a.cap364 = load i64, ptr %a.cap363, align 8
  %a.needs.grow365 = icmp eq i64 %a.len362, %a.cap364
  br i1 %a.needs.grow365, label %a.grow359, label %a.store360

a.grow359:                                        ; preds = %a.check358
  call void @dva_array_grow(ptr %a.load2357)
  br label %a.store360

a.store360:                                       ; preds = %a.grow359, %a.check358
  %a.cur.data366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2357, i32 0, i32 1
  %a.cur.data367 = load ptr, ptr %a.cur.data366, align 8
  %a.cur.len368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2357, i32 0, i32 0
  %a.cur.len369 = load i64, ptr %a.cur.len368, align 8
  %a.elem.gep370 = getelementptr i64, ptr %a.cur.data367, i64 %a.cur.len369
  %slot.p2i371 = ptrtoint ptr %fld.gep345 to i64
  store i64 %slot.p2i371, ptr %a.elem.gep370, align 8
  %a.next.len372 = add i64 %a.cur.len369, 1
  %b.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2357, i32 0, i32 0
  store i64 %a.next.len372, ptr %b.len.gep373, align 8
  %var.load374 = load ptr, ptr %var.prefix, align 8
  %a.load375 = load ptr, ptr %var.prefix, align 8
  %a.null376 = icmp eq ptr %a.load375, null
  br i1 %a.null376, label %a.create377, label %a.after378

a.create377:                                      ; preds = %a.store360
  %arena.cur379 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 24)
  %arena.cur381 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 128)
  %a.len.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 0
  store i64 0, ptr %a.len.gep383, align 8
  %a.data.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 1
  store ptr %a.buf382, ptr %a.data.gep384, align 8
  %a.cap.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create380, i32 0, i32 2
  store i64 16, ptr %a.cap.gep385, align 8
  store ptr %a.create380, ptr %var.prefix, align 8
  br label %a.after378

a.after378:                                       ; preds = %a.create377, %a.store360
  %a.load2386 = load ptr, ptr %var.prefix, align 8
  %var.load387 = load ptr, ptr %var.binders, align 8
  %a.load388 = load ptr, ptr %var.binders, align 8
  %a.null389 = icmp eq ptr %a.load388, null
  br i1 %a.null389, label %a.create390, label %a.after391

a.create390:                                      ; preds = %a.after378
  %arena.cur392 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create393 = call ptr @dva_arena_alloc(ptr %arena.cur392, i64 24)
  %arena.cur394 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 128)
  %a.len.gep396 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create393, i32 0, i32 0
  store i64 0, ptr %a.len.gep396, align 8
  %a.data.gep397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create393, i32 0, i32 1
  store ptr %a.buf395, ptr %a.data.gep397, align 8
  %a.cap.gep398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create393, i32 0, i32 2
  store i64 16, ptr %a.cap.gep398, align 8
  store ptr %a.create393, ptr %var.binders, align 8
  br label %a.after391

a.after391:                                       ; preds = %a.create390, %a.after378
  %a.load2399 = load ptr, ptr %var.binders, align 8
  %arena.cur400 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld402 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc401, i32 0, i32 0
  store ptr %a.load2386, ptr %rec.fld402, align 8
  %rec.fld403 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc401, i32 0, i32 1
  store ptr %a.load2399, ptr %rec.fld403, align 8
  ret ptr %rec.alloc401
}

define internal ptr @"typedopt::#rewrite_list"(ptr %0, ptr %1) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.254 = alloca i64, align 8
  %loop.idx.254 = alloca i64, align 8
  %var._map_out_1112 = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.exprs, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var._map_out_1112, align 8
  %var.load = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 0, ptr %loop.idx.254, align 8
  br label %loop.header.254

loop.header.254:                                  ; preds = %loop.latch.254, %a.after
  %counter.load = load i64, ptr %loop.idx.254, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.254, label %loop.exit.nat.254

loop.body.254:                                    ; preds = %loop.header.254
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.254, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load11 = load ptr, ptr %var.ctx, align 8
  %var.load12 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load11, ptr %var.load12)
  %a.load13 = load ptr, ptr %var._map_out_1112, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

loop.exit.nat.254:                                ; preds = %loop.header.254
  br label %loop.exit.254

loop.latch.254:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.254, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.254, align 8
  br label %loop.header.254

loop.exit.254:                                    ; preds = %loop.exit.nat.254
  %var.load29 = load ptr, ptr %var._map_out_1112, align 8
  %a.load30 = load ptr, ptr %var._map_out_1112, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

a.create15:                                       ; preds = %loop.body.254
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var._map_out_1112, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %loop.body.254
  %a.load224 = load ptr, ptr %var._map_out_1112, align 8
  br label %a.check

a.check:                                          ; preds = %a.after16
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  %a.len25 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 2
  %a.cap26 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len25, %a.cap26
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load224)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 1
  %a.cur.data27 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  %a.cur.len28 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data27, i64 %a.cur.len28
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len28, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.254

a.create32:                                       ; preds = %loop.exit.254
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %var._map_out_1112, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %loop.exit.254
  %a.load241 = load ptr, ptr %var._map_out_1112, align 8
  ret ptr %a.load241
}

define internal ptr @"typedopt::#rewrite"(ptr %0, ptr %1) #3 {
entry:
  %var.__ctor_arg_1105 = alloca ptr, align 8
  %var.r814 = alloca ptr, align 8
  %var._813 = alloca ptr, align 8
  %var.__ctor_arg_1097 = alloca ptr, align 8
  %var.r766 = alloca ptr, align 8
  %var._765 = alloca ptr, align 8
  %var.__ctor_arg_1087 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._714 = alloca ptr, align 8
  %var.__ctor_arg_1076 = alloca ptr, align 8
  %var.body660 = alloca ptr, align 8
  %var.c649 = alloca ptr, align 8
  %var._648 = alloca ptr, align 8
  %var.__ctor_arg_1060 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._586 = alloca ptr, align 8
  %var.__ctor_arg_1046 = alloca ptr, align 8
  %var.b536 = alloca ptr, align 8
  %var._535 = alloca ptr, align 8
  %var.__ctor_arg_1038 = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var.l = alloca ptr, align 8
  %var._481 = alloca ptr, align 8
  %var.c463 = alloca ptr, align 8
  %var._462 = alloca ptr, align 8
  %var.__ctor_arg_1021 = alloca ptr, align 8
  %var.i412 = alloca ptr, align 8
  %var._411 = alloca ptr, align 8
  %var.__ctor_arg_1009 = alloca ptr, align 8
  %var.i = alloca ptr, align 8
  %var._366 = alloca ptr, align 8
  %var.__ctor_arg_999 = alloca ptr, align 8
  %var.m313 = alloca ptr, align 8
  %var._312 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._292 = alloca ptr, align 8
  %var.__ctor_arg_981 = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.__ctor_arg_977 = alloca ptr, align 8
  %var._195 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.255 = alloca i64, align 8
  %loop.idx.255 = alloca i64, align 8
  %var._map_out_974 = alloca ptr, align 8
  %var.fields = alloca ptr, align 8
  %var._182 = alloca ptr, align 8
  %var.__ctor_arg_967 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._131 = alloca ptr, align 8
  %var.__ctor_arg_956 = alloca ptr, align 8
  %var.__ctor_arg_949 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._62 = alloca i1, align 1
  %var.value = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 7
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next807, %choice.case806, %choice.case758, %choice.case707, %choice.case641, %choice.case579, %a.after546, %choice.case474, %choice.case455, %choice.case404, %choice.case359, %choice.case305, %choice.case285, %a.after253, %choice.case124, %choice.exit48, %choice.case
  %choice.res846 = phi ptr [ %call.res13, %choice.case ], [ %rec.alloc117, %choice.exit48 ], [ %rec.alloc168, %choice.case124 ], [ %rec.alloc278, %a.after253 ], [ %call.res304, %choice.case285 ], [ %rec.alloc352, %choice.case305 ], [ %rec.alloc397, %choice.case359 ], [ %rec.alloc448, %choice.case404 ], [ %call.res473, %choice.case455 ], [ %rec.alloc521, %choice.case474 ], [ %rec.alloc572, %a.after546 ], [ %rec.alloc634, %choice.case579 ], [ %rec.alloc700, %choice.case641 ], [ %rec.alloc751, %choice.case707 ], [ %rec.alloc799, %choice.case758 ], [ %rec.alloc838, %choice.case806 ], [ %var.load845, %choice.next807 ]
  ret ptr %choice.res846

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.ctx, align 8
  %var.load2 = load ptr, ptr %var.e, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %fld.gep4 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %var.load7 = load ptr, ptr %var.b, align 8
  %fld.gep8 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load7, i32 0, i32 1
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load6, ptr %fld.gep8)
  %var.load9 = load ptr, ptr %var.ctx, align 8
  %var.load10 = load ptr, ptr %var.b, align 8
  %fld.gep11 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load10, i32 0, i32 2
  %call.res12 = call ptr @"typedopt::#rewrite"(ptr %var.load9, ptr %fld.gep11)
  %call.res13 = call ptr @"typedopt::#simplify_bin"(ptr %var.load1, ptr %var.load2, ptr %fld.load5, ptr %call.res, ptr %call.res12)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 8
  br i1 %tag.match18, label %choice.case14, label %choice.next15

choice.case14:                                    ; preds = %choice.next
  %pay.gep19 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr20 = load ptr, ptr %pay.gep19, align 8
  store ptr %payload.ptr20, ptr %var._21, align 8
  store ptr %payload.ptr20, ptr %var.u, align 8
  %var.load22 = load ptr, ptr %var.u, align 8
  %fld.gep23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 3
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.next15:                                    ; preds = %choice.next
  %tag.gep126 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id127 = load i64, ptr %tag.gep126, align 8
  %tag.match128 = icmp eq i64 %tag.id127, 9
  br i1 %tag.match128, label %choice.case124, label %choice.next125

choice.exit25:                                    ; preds = %choice.next27, %choice.case26
  %choice.res = phi i1 [ true, %choice.case26 ], [ false, %choice.next27 ]
  br i1 %choice.res, label %choice.then, label %choice.exit31

choice.case26:                                    ; preds = %choice.case14
  br label %choice.exit25

choice.next27:                                    ; preds = %choice.case14
  br label %choice.exit25

choice.then:                                      ; preds = %choice.exit25
  %var.load32 = load ptr, ptr %var.e, align 8
  ret ptr %var.load32

choice.exit31:                                    ; preds = %ret.dead, %choice.exit25
  %var.load33 = load ptr, ptr %var.ctx, align 8
  %var.load34 = load ptr, ptr %var.u, align 8
  %fld.gep35 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load34, i32 0, i32 1
  %call.res36 = call ptr @"typedopt::#rewrite"(ptr %var.load33, ptr %fld.gep35)
  store ptr %call.res36, ptr %var.value, align 8
  %var.load37 = load ptr, ptr %var.u, align 8
  %fld.gep38 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load37, i32 0, i32 0
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  %tag.gep43 = getelementptr inbounds { i64, ptr }, ptr %fld.load39, i32 0, i32 0
  %tag.id44 = load i64, ptr %tag.gep43, align 8
  %tag.match45 = icmp eq i64 %tag.id44, 0
  br i1 %tag.match45, label %choice.case41, label %choice.next42

ret.dead:                                         ; No predecessors!
  br label %choice.exit31

choice.exit40:                                    ; preds = %choice.next42, %choice.case41
  %choice.res46 = phi i1 [ true, %choice.case41 ], [ false, %choice.next42 ]
  br i1 %choice.res46, label %choice.then47, label %choice.exit48

choice.case41:                                    ; preds = %choice.exit31
  br label %choice.exit40

choice.next42:                                    ; preds = %choice.exit31
  br label %choice.exit40

choice.then47:                                    ; preds = %choice.exit40
  %var.load49 = load ptr, ptr %var.ctx, align 8
  %var.load50 = load ptr, ptr %var.value, align 8
  %call.res51 = call ptr @"typedopt::#scalar_operand"(ptr %var.load49, ptr %var.load50)
  %fld.gep52 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 4
  br i1 %tag.match59, label %choice.case55, label %choice.next56

choice.exit48:                                    ; preds = %choice.exit54, %choice.exit40
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %tag.gep91 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 0
  store i64 8, ptr %tag.gep91, align 8
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 1
  %var.load93 = load ptr, ptr %var.u, align 8
  %fld.gep94 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %var.load96 = load ptr, ptr %var.value, align 8
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld99 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc98, i32 0, i32 0
  store ptr %fld.load95, ptr %rec.fld99, align 8
  %rec.fld100 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc98, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld100, ptr align 1 %var.load96, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc98, ptr %pay.gep92, align 8
  store ptr %enum.alloc90, ptr %var.__ctor_arg_956, align 8
  %var.load101 = load ptr, ptr %var.__ctor_arg_956, align 8
  %var.load102 = load ptr, ptr %var.e, align 8
  %fld.gep103 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load102, i32 0, i32 1
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %var.load105 = load ptr, ptr %var.e, align 8
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load105, i32 0, i32 2
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.e, align 8
  %fld.gep109 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load108, i32 0, i32 3
  %var.load110 = load ptr, ptr %var.e, align 8
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load110, i32 0, i32 4
  %fld.load112 = load i64, ptr %fld.gep111, align 8
  %var.load113 = load ptr, ptr %var.e, align 8
  %fld.gep114 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load113, i32 0, i32 5
  %fld.load115 = load i64, ptr %fld.gep114, align 8
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld118 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 0
  store ptr %var.load101, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 1
  store ptr %fld.load104, ptr %rec.fld119, align 8
  %rec.fld120 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 2
  store ptr %fld.load107, ptr %rec.fld120, align 8
  %rec.fld121 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld121, ptr align 1 %fld.gep109, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld122 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 4
  store i64 %fld.load112, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 5
  store i64 %fld.load115, ptr %rec.fld123, align 8
  br label %choice.exit

choice.exit54:                                    ; preds = %choice.next56, %ret.dead88
  br label %choice.exit48

choice.case55:                                    ; preds = %choice.then47
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr61 = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr61, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next56:                                    ; preds = %choice.then47
  br label %choice.exit54

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i1, ptr %payload.ptr61, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case55
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._62, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep63 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep63, align 8
  %pay.gep64 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load65 = load i1, ptr %var.flag, align 1
  %nottmp = xor i1 %var.load65, true
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %nottmp, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep64, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_949, align 8
  %var.load67 = load ptr, ptr %var.__ctor_arg_949, align 8
  %var.load68 = load ptr, ptr %var.e, align 8
  %fld.gep69 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load68, i32 0, i32 1
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %var.load71 = load ptr, ptr %var.e, align 8
  %fld.gep72 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load71, i32 0, i32 2
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  %var.load74 = load ptr, ptr %var.e, align 8
  %fld.gep75 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load74, i32 0, i32 3
  %var.load76 = load ptr, ptr %var.e, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load76, i32 0, i32 4
  %fld.load78 = load i64, ptr %fld.gep77, align 8
  %var.load79 = load ptr, ptr %var.e, align 8
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load79, i32 0, i32 5
  %fld.load81 = load i64, ptr %fld.gep80, align 8
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load67, ptr %rec.fld, align 8
  %rec.fld83 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load70, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load73, ptr %rec.fld84, align 8
  %rec.fld85 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld85, ptr align 1 %fld.gep75, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld86 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load78, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load81, ptr %rec.fld87, align 8
  ret ptr %rec.alloc

ret.dead88:                                       ; No predecessors!
  br label %choice.exit54

choice.case124:                                   ; preds = %choice.next15
  %pay.gep129 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr130 = load ptr, ptr %pay.gep129, align 8
  store ptr %payload.ptr130, ptr %var._131, align 8
  store ptr %payload.ptr130, ptr %var.c, align 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %tag.gep134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 0
  store i64 9, ptr %tag.gep134, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  %var.load136 = load ptr, ptr %var.c, align 8
  %fld.gep137 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load136, i32 0, i32 0
  %fld.load138 = load ptr, ptr %fld.gep137, align 8
  %var.load139 = load ptr, ptr %var.c, align 8
  %fld.gep140 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load139, i32 0, i32 1
  %fld.load141 = load ptr, ptr %fld.gep140, align 8
  %var.load142 = load ptr, ptr %var.ctx, align 8
  %var.load143 = load ptr, ptr %var.c, align 8
  %fld.gep144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load143, i32 0, i32 2
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %call.res146 = call ptr @"typedopt::#rewrite_list"(ptr %var.load142, ptr %fld.load145)
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld149 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 0
  store ptr %fld.load138, ptr %rec.fld149, align 8
  %rec.fld150 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 1
  store ptr %fld.load141, ptr %rec.fld150, align 8
  %rec.fld151 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 2
  store ptr %call.res146, ptr %rec.fld151, align 8
  store ptr %rec.alloc148, ptr %pay.gep135, align 8
  store ptr %enum.alloc133, ptr %var.__ctor_arg_967, align 8
  %var.load152 = load ptr, ptr %var.__ctor_arg_967, align 8
  %var.load153 = load ptr, ptr %var.e, align 8
  %fld.gep154 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load153, i32 0, i32 1
  %fld.load155 = load ptr, ptr %fld.gep154, align 8
  %var.load156 = load ptr, ptr %var.e, align 8
  %fld.gep157 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load156, i32 0, i32 2
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %var.load159 = load ptr, ptr %var.e, align 8
  %fld.gep160 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load159, i32 0, i32 3
  %var.load161 = load ptr, ptr %var.e, align 8
  %fld.gep162 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load161, i32 0, i32 4
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %var.load164 = load ptr, ptr %var.e, align 8
  %fld.gep165 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load164, i32 0, i32 5
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld169 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 0
  store ptr %var.load152, ptr %rec.fld169, align 8
  %rec.fld170 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 1
  store ptr %fld.load155, ptr %rec.fld170, align 8
  %rec.fld171 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 2
  store ptr %fld.load158, ptr %rec.fld171, align 8
  %rec.fld172 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld172, ptr align 1 %fld.gep160, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld173 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 4
  store i64 %fld.load163, ptr %rec.fld173, align 8
  %rec.fld174 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 5
  store i64 %fld.load166, ptr %rec.fld174, align 8
  br label %choice.exit

choice.next125:                                   ; preds = %choice.next15
  %tag.gep177 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id178 = load i64, ptr %tag.gep177, align 8
  %tag.match179 = icmp eq i64 %tag.id178, 10
  br i1 %tag.match179, label %choice.case175, label %choice.next176

choice.case175:                                   ; preds = %choice.next125
  %pay.gep180 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr181 = load ptr, ptr %pay.gep180, align 8
  store ptr %payload.ptr181, ptr %var._182, align 8
  store ptr %payload.ptr181, ptr %var.fields, align 8
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var._map_out_974, align 8
  %var.load185 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next176:                                   ; preds = %choice.next125
  %tag.gep287 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id288 = load i64, ptr %tag.gep287, align 8
  %tag.match289 = icmp eq i64 %tag.id288, 11
  br i1 %tag.match289, label %choice.case285, label %choice.next286

a.create:                                         ; preds = %choice.case175
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 24)
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 128)
  %a.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 0
  store i64 0, ptr %a.len.gep190, align 8
  %a.data.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 1
  store ptr %a.buf189, ptr %a.data.gep191, align 8
  %a.cap.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 2
  store i64 16, ptr %a.cap.gep192, align 8
  store ptr %a.create187, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case175
  %a.load2 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len193 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data194 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.255, align 8
  %cycle.prev.u = load ptr, ptr %var._182, align 8
  br label %loop.header.255

loop.header.255:                                  ; preds = %loop.latch.255, %a.after
  %counter.load = load i64, ptr %loop.idx.255, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len193
  br i1 %loop.cond, label %loop.body.255, label %loop.exit.nat.255

loop.body.255:                                    ; preds = %loop.header.255
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.255, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data194, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._195, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load196 = load ptr, ptr %var.ctx, align 8
  %var.load197 = load ptr, ptr %var.f, align 8
  %fld.gep198 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load197, i32 0, i32 1
  %call.res199 = call ptr @"typedopt::#rewrite"(ptr %var.load196, ptr %fld.gep198)
  store ptr %call.res199, ptr %var.__ctor_arg_977, align 8
  %var.load200 = load ptr, ptr %var.f, align 8
  %fld.gep201 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load200, i32 0, i32 0
  %fld.load202 = load ptr, ptr %fld.gep201, align 8
  %var.load203 = load ptr, ptr %var.__ctor_arg_977, align 8
  %var.load204 = load ptr, ptr %var.f, align 8
  %fld.gep205 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load204, i32 0, i32 2
  %fld.load206 = load i64, ptr %fld.gep205, align 8
  %var.load207 = load ptr, ptr %var.f, align 8
  %fld.gep208 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load207, i32 0, i32 3
  %fld.load209 = load ptr, ptr %fld.gep208, align 8
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld212 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 0
  store ptr %fld.load202, ptr %rec.fld212, align 8
  %rec.fld213 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld213, ptr align 1 %var.load203, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld214 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 2
  store i64 %fld.load206, ptr %rec.fld214, align 8
  %rec.fld215 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 3
  store ptr %fld.load209, ptr %rec.fld215, align 8
  %a.load216 = load ptr, ptr %var._map_out_974, align 8
  %a.null217 = icmp eq ptr %a.load216, null
  br i1 %a.null217, label %a.create218, label %a.after219

loop.exit.nat.255:                                ; preds = %loop.header.255
  br label %loop.exit.255

loop.latch.255:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.255, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.255, align 8
  br label %loop.header.255

loop.exit.255:                                    ; preds = %loop.exit.nat.255
  store ptr %cycle.prev.u, ptr %var._182, align 8
  %var.load232 = load ptr, ptr %var._map_out_974, align 8
  %a.load233 = load ptr, ptr %var._map_out_974, align 8
  %a.null234 = icmp eq ptr %a.load233, null
  br i1 %a.null234, label %a.create235, label %a.after236

a.create218:                                      ; preds = %loop.body.255
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 24)
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 128)
  %a.len.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 0
  store i64 0, ptr %a.len.gep224, align 8
  %a.data.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 1
  store ptr %a.buf223, ptr %a.data.gep225, align 8
  %a.cap.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 2
  store i64 16, ptr %a.cap.gep226, align 8
  store ptr %a.create221, ptr %var._map_out_974, align 8
  br label %a.after219

a.after219:                                       ; preds = %a.create218, %loop.body.255
  %a.load2227 = load ptr, ptr %var._map_out_974, align 8
  br label %a.check

a.check:                                          ; preds = %a.after219
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.len228 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 2
  %a.cap229 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len228, %a.cap229
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2227)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 1
  %a.cur.data230 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.cur.len231 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data230, i64 %a.cur.len231
  %slot.p2i = ptrtoint ptr %rec.alloc211 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len231, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.255

a.create235:                                      ; preds = %loop.exit.255
  %arena.cur237 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 24)
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 128)
  %a.len.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 0
  store i64 0, ptr %a.len.gep241, align 8
  %a.data.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 1
  store ptr %a.buf240, ptr %a.data.gep242, align 8
  %a.cap.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 2
  store i64 16, ptr %a.cap.gep243, align 8
  store ptr %a.create238, ptr %var._map_out_974, align 8
  br label %a.after236

a.after236:                                       ; preds = %a.create235, %loop.exit.255
  %a.load2244 = load ptr, ptr %var._map_out_974, align 8
  store ptr %a.load2244, ptr %var.out, align 8
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 16)
  %tag.gep247 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc246, i32 0, i32 0
  store i64 10, ptr %tag.gep247, align 8
  %pay.gep248 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc246, i32 0, i32 1
  %var.load249 = load ptr, ptr %var.out, align 8
  %a.load250 = load ptr, ptr %var.out, align 8
  %a.null251 = icmp eq ptr %a.load250, null
  br i1 %a.null251, label %a.create252, label %a.after253

a.create252:                                      ; preds = %a.after236
  %arena.cur254 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 24)
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 128)
  %a.len.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 0
  store i64 0, ptr %a.len.gep258, align 8
  %a.data.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 1
  store ptr %a.buf257, ptr %a.data.gep259, align 8
  %a.cap.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 2
  store i64 16, ptr %a.cap.gep260, align 8
  store ptr %a.create255, ptr %var.out, align 8
  br label %a.after253

a.after253:                                       ; preds = %a.create252, %a.after236
  %a.load2261 = load ptr, ptr %var.out, align 8
  store ptr %a.load2261, ptr %pay.gep248, align 8
  store ptr %enum.alloc246, ptr %var.__ctor_arg_981, align 8
  %var.load262 = load ptr, ptr %var.__ctor_arg_981, align 8
  %var.load263 = load ptr, ptr %var.e, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load263, i32 0, i32 1
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %var.load266 = load ptr, ptr %var.e, align 8
  %fld.gep267 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load266, i32 0, i32 2
  %fld.load268 = load ptr, ptr %fld.gep267, align 8
  %var.load269 = load ptr, ptr %var.e, align 8
  %fld.gep270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load269, i32 0, i32 3
  %var.load271 = load ptr, ptr %var.e, align 8
  %fld.gep272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load271, i32 0, i32 4
  %fld.load273 = load i64, ptr %fld.gep272, align 8
  %var.load274 = load ptr, ptr %var.e, align 8
  %fld.gep275 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load274, i32 0, i32 5
  %fld.load276 = load i64, ptr %fld.gep275, align 8
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld279 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 0
  store ptr %var.load262, ptr %rec.fld279, align 8
  %rec.fld280 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 1
  store ptr %fld.load265, ptr %rec.fld280, align 8
  %rec.fld281 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 2
  store ptr %fld.load268, ptr %rec.fld281, align 8
  %rec.fld282 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld282, ptr align 1 %fld.gep270, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld283 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 4
  store i64 %fld.load273, ptr %rec.fld283, align 8
  %rec.fld284 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 5
  store i64 %fld.load276, ptr %rec.fld284, align 8
  br label %choice.exit

choice.case285:                                   ; preds = %choice.next176
  %pay.gep290 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr291 = load ptr, ptr %pay.gep290, align 8
  store ptr %payload.ptr291, ptr %var._292, align 8
  store ptr %payload.ptr291, ptr %var.m, align 8
  %var.load293 = load ptr, ptr %var.e, align 8
  %var.load294 = load ptr, ptr %var.ctx, align 8
  %var.load295 = load ptr, ptr %var.m, align 8
  %fld.gep296 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load295, i32 0, i32 0
  %call.res297 = call ptr @"typedopt::#rewrite"(ptr %var.load294, ptr %fld.gep296)
  %var.load298 = load ptr, ptr %var.m, align 8
  %fld.gep299 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load298, i32 0, i32 1
  %fld.load300 = load ptr, ptr %fld.gep299, align 8
  %var.load301 = load ptr, ptr %var.m, align 8
  %fld.gep302 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load301, i32 0, i32 2
  %fld.load303 = load i64, ptr %fld.gep302, align 8
  %call.res304 = call ptr @"typedopt::#simplify_member"(ptr %var.load293, ptr %call.res297, ptr %fld.load300, i64 %fld.load303)
  br label %choice.exit

choice.next286:                                   ; preds = %choice.next176
  %tag.gep307 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id308 = load i64, ptr %tag.gep307, align 8
  %tag.match309 = icmp eq i64 %tag.id308, 12
  br i1 %tag.match309, label %choice.case305, label %choice.next306

choice.case305:                                   ; preds = %choice.next286
  %pay.gep310 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr311 = load ptr, ptr %pay.gep310, align 8
  store ptr %payload.ptr311, ptr %var._312, align 8
  store ptr %payload.ptr311, ptr %var.m313, align 8
  %arena.cur314 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 16)
  %tag.gep316 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc315, i32 0, i32 0
  store i64 12, ptr %tag.gep316, align 8
  %pay.gep317 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc315, i32 0, i32 1
  %var.load318 = load ptr, ptr %var.m313, align 8
  %fld.gep319 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load318, i32 0, i32 0
  %var.load320 = load ptr, ptr %var.m313, align 8
  %fld.gep321 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load320, i32 0, i32 1
  %fld.load322 = load ptr, ptr %fld.gep321, align 8
  %var.load323 = load ptr, ptr %var.m313, align 8
  %fld.gep324 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load323, i32 0, i32 2
  %fld.load325 = load i64, ptr %fld.gep324, align 8
  %var.load326 = load ptr, ptr %var.ctx, align 8
  %var.load327 = load ptr, ptr %var.m313, align 8
  %fld.gep328 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load327, i32 0, i32 3
  %call.res329 = call ptr @"typedopt::#rewrite"(ptr %var.load326, ptr %fld.gep328)
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld332 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld332, ptr align 1 %fld.gep319, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld333 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 1
  store ptr %fld.load322, ptr %rec.fld333, align 8
  %rec.fld334 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 2
  store i64 %fld.load325, ptr %rec.fld334, align 8
  %rec.fld335 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld335, ptr align 1 %call.res329, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc331, ptr %pay.gep317, align 8
  store ptr %enum.alloc315, ptr %var.__ctor_arg_999, align 8
  %var.load336 = load ptr, ptr %var.__ctor_arg_999, align 8
  %var.load337 = load ptr, ptr %var.e, align 8
  %fld.gep338 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load337, i32 0, i32 1
  %fld.load339 = load ptr, ptr %fld.gep338, align 8
  %var.load340 = load ptr, ptr %var.e, align 8
  %fld.gep341 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load340, i32 0, i32 2
  %fld.load342 = load ptr, ptr %fld.gep341, align 8
  %var.load343 = load ptr, ptr %var.e, align 8
  %fld.gep344 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load343, i32 0, i32 3
  %var.load345 = load ptr, ptr %var.e, align 8
  %fld.gep346 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load345, i32 0, i32 4
  %fld.load347 = load i64, ptr %fld.gep346, align 8
  %var.load348 = load ptr, ptr %var.e, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load348, i32 0, i32 5
  %fld.load350 = load i64, ptr %fld.gep349, align 8
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld353 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 0
  store ptr %var.load336, ptr %rec.fld353, align 8
  %rec.fld354 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 1
  store ptr %fld.load339, ptr %rec.fld354, align 8
  %rec.fld355 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 2
  store ptr %fld.load342, ptr %rec.fld355, align 8
  %rec.fld356 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld356, ptr align 1 %fld.gep344, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld357 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 4
  store i64 %fld.load347, ptr %rec.fld357, align 8
  %rec.fld358 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 5
  store i64 %fld.load350, ptr %rec.fld358, align 8
  br label %choice.exit

choice.next306:                                   ; preds = %choice.next286
  %tag.gep361 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id362 = load i64, ptr %tag.gep361, align 8
  %tag.match363 = icmp eq i64 %tag.id362, 13
  br i1 %tag.match363, label %choice.case359, label %choice.next360

choice.case359:                                   ; preds = %choice.next306
  %pay.gep364 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr365 = load ptr, ptr %pay.gep364, align 8
  store ptr %payload.ptr365, ptr %var._366, align 8
  store ptr %payload.ptr365, ptr %var.i, align 8
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 16)
  %tag.gep369 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 0
  store i64 13, ptr %tag.gep369, align 8
  %pay.gep370 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 1
  %var.load371 = load ptr, ptr %var.i, align 8
  %fld.gep372 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load371, i32 0, i32 0
  %var.load373 = load ptr, ptr %var.ctx, align 8
  %var.load374 = load ptr, ptr %var.i, align 8
  %fld.gep375 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load374, i32 0, i32 1
  %call.res376 = call ptr @"typedopt::#rewrite"(ptr %var.load373, ptr %fld.gep375)
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld379 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc378, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld379, ptr align 1 %fld.gep372, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld380 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc378, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld380, ptr align 1 %call.res376, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc378, ptr %pay.gep370, align 8
  store ptr %enum.alloc368, ptr %var.__ctor_arg_1009, align 8
  %var.load381 = load ptr, ptr %var.__ctor_arg_1009, align 8
  %var.load382 = load ptr, ptr %var.e, align 8
  %fld.gep383 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load382, i32 0, i32 1
  %fld.load384 = load ptr, ptr %fld.gep383, align 8
  %var.load385 = load ptr, ptr %var.e, align 8
  %fld.gep386 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load385, i32 0, i32 2
  %fld.load387 = load ptr, ptr %fld.gep386, align 8
  %var.load388 = load ptr, ptr %var.e, align 8
  %fld.gep389 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load388, i32 0, i32 3
  %var.load390 = load ptr, ptr %var.e, align 8
  %fld.gep391 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load390, i32 0, i32 4
  %fld.load392 = load i64, ptr %fld.gep391, align 8
  %var.load393 = load ptr, ptr %var.e, align 8
  %fld.gep394 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load393, i32 0, i32 5
  %fld.load395 = load i64, ptr %fld.gep394, align 8
  %arena.cur396 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld398 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 0
  store ptr %var.load381, ptr %rec.fld398, align 8
  %rec.fld399 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 1
  store ptr %fld.load384, ptr %rec.fld399, align 8
  %rec.fld400 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 2
  store ptr %fld.load387, ptr %rec.fld400, align 8
  %rec.fld401 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld401, ptr align 1 %fld.gep389, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld402 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 4
  store i64 %fld.load392, ptr %rec.fld402, align 8
  %rec.fld403 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 5
  store i64 %fld.load395, ptr %rec.fld403, align 8
  br label %choice.exit

choice.next360:                                   ; preds = %choice.next306
  %tag.gep406 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id407 = load i64, ptr %tag.gep406, align 8
  %tag.match408 = icmp eq i64 %tag.id407, 14
  br i1 %tag.match408, label %choice.case404, label %choice.next405

choice.case404:                                   ; preds = %choice.next360
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  store ptr %payload.ptr410, ptr %var._411, align 8
  store ptr %payload.ptr410, ptr %var.i412, align 8
  %arena.cur413 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 16)
  %tag.gep415 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc414, i32 0, i32 0
  store i64 14, ptr %tag.gep415, align 8
  %pay.gep416 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc414, i32 0, i32 1
  %var.load417 = load ptr, ptr %var.i412, align 8
  %fld.gep418 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load417, i32 0, i32 0
  %var.load419 = load ptr, ptr %var.ctx, align 8
  %var.load420 = load ptr, ptr %var.i412, align 8
  %fld.gep421 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load420, i32 0, i32 1
  %call.res422 = call ptr @"typedopt::#rewrite"(ptr %var.load419, ptr %fld.gep421)
  %var.load423 = load ptr, ptr %var.ctx, align 8
  %var.load424 = load ptr, ptr %var.i412, align 8
  %fld.gep425 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load424, i32 0, i32 2
  %call.res426 = call ptr @"typedopt::#rewrite"(ptr %var.load423, ptr %fld.gep425)
  %arena.cur427 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld429 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld429, ptr align 1 %fld.gep418, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld430 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld430, ptr align 1 %call.res422, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld431 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld431, ptr align 1 %call.res426, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc428, ptr %pay.gep416, align 8
  store ptr %enum.alloc414, ptr %var.__ctor_arg_1021, align 8
  %var.load432 = load ptr, ptr %var.__ctor_arg_1021, align 8
  %var.load433 = load ptr, ptr %var.e, align 8
  %fld.gep434 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load433, i32 0, i32 1
  %fld.load435 = load ptr, ptr %fld.gep434, align 8
  %var.load436 = load ptr, ptr %var.e, align 8
  %fld.gep437 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load436, i32 0, i32 2
  %fld.load438 = load ptr, ptr %fld.gep437, align 8
  %var.load439 = load ptr, ptr %var.e, align 8
  %fld.gep440 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load439, i32 0, i32 3
  %var.load441 = load ptr, ptr %var.e, align 8
  %fld.gep442 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load441, i32 0, i32 4
  %fld.load443 = load i64, ptr %fld.gep442, align 8
  %var.load444 = load ptr, ptr %var.e, align 8
  %fld.gep445 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load444, i32 0, i32 5
  %fld.load446 = load i64, ptr %fld.gep445, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld449 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 0
  store ptr %var.load432, ptr %rec.fld449, align 8
  %rec.fld450 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 1
  store ptr %fld.load435, ptr %rec.fld450, align 8
  %rec.fld451 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 2
  store ptr %fld.load438, ptr %rec.fld451, align 8
  %rec.fld452 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld452, ptr align 1 %fld.gep440, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld453 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 4
  store i64 %fld.load443, ptr %rec.fld453, align 8
  %rec.fld454 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 5
  store i64 %fld.load446, ptr %rec.fld454, align 8
  br label %choice.exit

choice.next405:                                   ; preds = %choice.next360
  %tag.gep457 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id458 = load i64, ptr %tag.gep457, align 8
  %tag.match459 = icmp eq i64 %tag.id458, 15
  br i1 %tag.match459, label %choice.case455, label %choice.next456

choice.case455:                                   ; preds = %choice.next405
  %pay.gep460 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr461 = load ptr, ptr %pay.gep460, align 8
  store ptr %payload.ptr461, ptr %var._462, align 8
  store ptr %payload.ptr461, ptr %var.c463, align 8
  %var.load464 = load ptr, ptr %var.ctx, align 8
  %var.load465 = load ptr, ptr %var.e, align 8
  %var.load466 = load ptr, ptr %var.ctx, align 8
  %var.load467 = load ptr, ptr %var.c463, align 8
  %fld.gep468 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load467, i32 0, i32 0
  %call.res469 = call ptr @"typedopt::#rewrite"(ptr %var.load466, ptr %fld.gep468)
  %var.load470 = load ptr, ptr %var.c463, align 8
  %fld.gep471 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load470, i32 0, i32 1
  %fld.load472 = load ptr, ptr %fld.gep471, align 8
  %call.res473 = call ptr @"typedopt::#simplify_choice"(ptr %var.load464, ptr %var.load465, ptr %call.res469, ptr %fld.load472)
  br label %choice.exit

choice.next456:                                   ; preds = %choice.next405
  %tag.gep476 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id477 = load i64, ptr %tag.gep476, align 8
  %tag.match478 = icmp eq i64 %tag.id477, 16
  br i1 %tag.match478, label %choice.case474, label %choice.next475

choice.case474:                                   ; preds = %choice.next456
  %pay.gep479 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr480 = load ptr, ptr %pay.gep479, align 8
  store ptr %payload.ptr480, ptr %var._481, align 8
  store ptr %payload.ptr480, ptr %var.l, align 8
  %arena.cur482 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld484 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc483, i32 0, i32 0
  store ptr null, ptr %rec.fld484, align 8
  %rec.fld485 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc483, i32 0, i32 1
  store i1 true, ptr %rec.fld485, align 1
  %var.load486 = load ptr, ptr %var.l, align 8
  %fld.gep487 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load486, i32 0, i32 1
  %call.res488 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc483, ptr %fld.gep487)
  store ptr %call.res488, ptr %var.body, align 8
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 16)
  %tag.gep491 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc490, i32 0, i32 0
  store i64 16, ptr %tag.gep491, align 8
  %pay.gep492 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc490, i32 0, i32 1
  %var.load493 = load ptr, ptr %var.l, align 8
  %fld.gep494 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load493, i32 0, i32 0
  %fld.load495 = load ptr, ptr %fld.gep494, align 8
  %var.load496 = load ptr, ptr %var.body, align 8
  %var.load497 = load ptr, ptr %var.l, align 8
  %fld.gep498 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load497, i32 0, i32 2
  %fld.load499 = load ptr, ptr %fld.gep498, align 8
  %arena.cur500 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc501 = call ptr @dva_arena_alloc(ptr %arena.cur500, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld502 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 0
  store ptr %fld.load495, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld503, ptr align 1 %var.load496, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld504 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 2
  store ptr %fld.load499, ptr %rec.fld504, align 8
  store ptr %rec.alloc501, ptr %pay.gep492, align 8
  store ptr %enum.alloc490, ptr %var.__ctor_arg_1038, align 8
  %var.load505 = load ptr, ptr %var.__ctor_arg_1038, align 8
  %var.load506 = load ptr, ptr %var.e, align 8
  %fld.gep507 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load506, i32 0, i32 1
  %fld.load508 = load ptr, ptr %fld.gep507, align 8
  %var.load509 = load ptr, ptr %var.e, align 8
  %fld.gep510 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load509, i32 0, i32 2
  %fld.load511 = load ptr, ptr %fld.gep510, align 8
  %var.load512 = load ptr, ptr %var.e, align 8
  %fld.gep513 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load512, i32 0, i32 3
  %var.load514 = load ptr, ptr %var.e, align 8
  %fld.gep515 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load514, i32 0, i32 4
  %fld.load516 = load i64, ptr %fld.gep515, align 8
  %var.load517 = load ptr, ptr %var.e, align 8
  %fld.gep518 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load517, i32 0, i32 5
  %fld.load519 = load i64, ptr %fld.gep518, align 8
  %arena.cur520 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld522 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 0
  store ptr %var.load505, ptr %rec.fld522, align 8
  %rec.fld523 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 1
  store ptr %fld.load508, ptr %rec.fld523, align 8
  %rec.fld524 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 2
  store ptr %fld.load511, ptr %rec.fld524, align 8
  %rec.fld525 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld525, ptr align 1 %fld.gep513, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld526 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 4
  store i64 %fld.load516, ptr %rec.fld526, align 8
  %rec.fld527 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 5
  store i64 %fld.load519, ptr %rec.fld527, align 8
  br label %choice.exit

choice.next475:                                   ; preds = %choice.next456
  %tag.gep530 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id531 = load i64, ptr %tag.gep530, align 8
  %tag.match532 = icmp eq i64 %tag.id531, 17
  br i1 %tag.match532, label %choice.case528, label %choice.next529

choice.case528:                                   ; preds = %choice.next475
  %pay.gep533 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr534 = load ptr, ptr %pay.gep533, align 8
  store ptr %payload.ptr534, ptr %var._535, align 8
  store ptr %payload.ptr534, ptr %var.b536, align 8
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 16)
  %tag.gep539 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc538, i32 0, i32 0
  store i64 17, ptr %tag.gep539, align 8
  %pay.gep540 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc538, i32 0, i32 1
  %var.load541 = load ptr, ptr %var.ctx, align 8
  %var.load542 = load ptr, ptr %var.b536, align 8
  %a.load543 = load ptr, ptr %var.b536, align 8
  %a.null544 = icmp eq ptr %a.load543, null
  br i1 %a.null544, label %a.create545, label %a.after546

choice.next529:                                   ; preds = %choice.next475
  %tag.gep581 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id582 = load i64, ptr %tag.gep581, align 8
  %tag.match583 = icmp eq i64 %tag.id582, 18
  br i1 %tag.match583, label %choice.case579, label %choice.next580

a.create545:                                      ; preds = %choice.case528
  %arena.cur547 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 24)
  %arena.cur549 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 128)
  %a.len.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 0
  store i64 0, ptr %a.len.gep551, align 8
  %a.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 1
  store ptr %a.buf550, ptr %a.data.gep552, align 8
  %a.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep553, align 8
  store ptr %a.create548, ptr %var.b536, align 8
  br label %a.after546

a.after546:                                       ; preds = %a.create545, %choice.case528
  %a.load2554 = load ptr, ptr %var.b536, align 8
  %call.res555 = call ptr @"typedopt::#rewrite_block"(ptr %var.load541, ptr %a.load2554)
  store ptr %call.res555, ptr %pay.gep540, align 8
  store ptr %enum.alloc538, ptr %var.__ctor_arg_1046, align 8
  %var.load556 = load ptr, ptr %var.__ctor_arg_1046, align 8
  %var.load557 = load ptr, ptr %var.e, align 8
  %fld.gep558 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load557, i32 0, i32 1
  %fld.load559 = load ptr, ptr %fld.gep558, align 8
  %var.load560 = load ptr, ptr %var.e, align 8
  %fld.gep561 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load560, i32 0, i32 2
  %fld.load562 = load ptr, ptr %fld.gep561, align 8
  %var.load563 = load ptr, ptr %var.e, align 8
  %fld.gep564 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load563, i32 0, i32 3
  %var.load565 = load ptr, ptr %var.e, align 8
  %fld.gep566 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load565, i32 0, i32 4
  %fld.load567 = load i64, ptr %fld.gep566, align 8
  %var.load568 = load ptr, ptr %var.e, align 8
  %fld.gep569 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load568, i32 0, i32 5
  %fld.load570 = load i64, ptr %fld.gep569, align 8
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld573 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 0
  store ptr %var.load556, ptr %rec.fld573, align 8
  %rec.fld574 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 1
  store ptr %fld.load559, ptr %rec.fld574, align 8
  %rec.fld575 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 2
  store ptr %fld.load562, ptr %rec.fld575, align 8
  %rec.fld576 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld576, ptr align 1 %fld.gep564, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld577 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 4
  store i64 %fld.load567, ptr %rec.fld577, align 8
  %rec.fld578 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 5
  store i64 %fld.load570, ptr %rec.fld578, align 8
  br label %choice.exit

choice.case579:                                   ; preds = %choice.next529
  %pay.gep584 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr585 = load ptr, ptr %pay.gep584, align 8
  store ptr %payload.ptr585, ptr %var._586, align 8
  store ptr %payload.ptr585, ptr %var.a, align 8
  %arena.cur587 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 16)
  %tag.gep589 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc588, i32 0, i32 0
  store i64 18, ptr %tag.gep589, align 8
  %pay.gep590 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc588, i32 0, i32 1
  %var.load591 = load ptr, ptr %var.a, align 8
  %fld.gep592 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load591, i32 0, i32 0
  %fld.load593 = load ptr, ptr %fld.gep592, align 8
  %var.load594 = load ptr, ptr %var.a, align 8
  %fld.gep595 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load594, i32 0, i32 1
  %fld.load596 = load i1, ptr %fld.gep595, align 1
  %var.load597 = load ptr, ptr %var.a, align 8
  %fld.gep598 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load597, i32 0, i32 2
  %fld.load599 = load i1, ptr %fld.gep598, align 1
  %var.load600 = load ptr, ptr %var.a, align 8
  %fld.gep601 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load600, i32 0, i32 3
  %fld.load602 = load i1, ptr %fld.gep601, align 1
  %var.load603 = load ptr, ptr %var.a, align 8
  %fld.gep604 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load603, i32 0, i32 4
  %fld.load605 = load i1, ptr %fld.gep604, align 1
  %var.load606 = load ptr, ptr %var.ctx, align 8
  %var.load607 = load ptr, ptr %var.a, align 8
  %fld.gep608 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load607, i32 0, i32 5
  %call.res609 = call ptr @"typedopt::#rewrite"(ptr %var.load606, ptr %fld.gep608)
  %arena.cur610 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld612 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 0
  store ptr %fld.load593, ptr %rec.fld612, align 8
  %rec.fld613 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 1
  store i1 %fld.load596, ptr %rec.fld613, align 1
  %rec.fld614 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 2
  store i1 %fld.load599, ptr %rec.fld614, align 1
  %rec.fld615 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 3
  store i1 %fld.load602, ptr %rec.fld615, align 1
  %rec.fld616 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 4
  store i1 %fld.load605, ptr %rec.fld616, align 1
  %rec.fld617 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld617, ptr align 1 %call.res609, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc611, ptr %pay.gep590, align 8
  store ptr %enum.alloc588, ptr %var.__ctor_arg_1060, align 8
  %var.load618 = load ptr, ptr %var.__ctor_arg_1060, align 8
  %var.load619 = load ptr, ptr %var.e, align 8
  %fld.gep620 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load619, i32 0, i32 1
  %fld.load621 = load ptr, ptr %fld.gep620, align 8
  %var.load622 = load ptr, ptr %var.e, align 8
  %fld.gep623 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load622, i32 0, i32 2
  %fld.load624 = load ptr, ptr %fld.gep623, align 8
  %var.load625 = load ptr, ptr %var.e, align 8
  %fld.gep626 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load625, i32 0, i32 3
  %var.load627 = load ptr, ptr %var.e, align 8
  %fld.gep628 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load627, i32 0, i32 4
  %fld.load629 = load i64, ptr %fld.gep628, align 8
  %var.load630 = load ptr, ptr %var.e, align 8
  %fld.gep631 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load630, i32 0, i32 5
  %fld.load632 = load i64, ptr %fld.gep631, align 8
  %arena.cur633 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc634 = call ptr @dva_arena_alloc(ptr %arena.cur633, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld635 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 0
  store ptr %var.load618, ptr %rec.fld635, align 8
  %rec.fld636 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 1
  store ptr %fld.load621, ptr %rec.fld636, align 8
  %rec.fld637 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 2
  store ptr %fld.load624, ptr %rec.fld637, align 8
  %rec.fld638 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld638, ptr align 1 %fld.gep626, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld639 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 4
  store i64 %fld.load629, ptr %rec.fld639, align 8
  %rec.fld640 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 5
  store i64 %fld.load632, ptr %rec.fld640, align 8
  br label %choice.exit

choice.next580:                                   ; preds = %choice.next529
  %tag.gep643 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id644 = load i64, ptr %tag.gep643, align 8
  %tag.match645 = icmp eq i64 %tag.id644, 19
  br i1 %tag.match645, label %choice.case641, label %choice.next642

choice.case641:                                   ; preds = %choice.next580
  %pay.gep646 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr647 = load ptr, ptr %pay.gep646, align 8
  store ptr %payload.ptr647, ptr %var._648, align 8
  store ptr %payload.ptr647, ptr %var.c649, align 8
  %var.load650 = load ptr, ptr %var.ctx, align 8
  %fld.gep651 = getelementptr inbounds { ptr, i1 }, ptr %var.load650, i32 0, i32 1
  %fld.load652 = load i1, ptr %fld.gep651, align 1
  %arena.cur653 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc654 = call ptr @dva_arena_alloc(ptr %arena.cur653, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld655 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc654, i32 0, i32 0
  store ptr null, ptr %rec.fld655, align 8
  %rec.fld656 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc654, i32 0, i32 1
  store i1 %fld.load652, ptr %rec.fld656, align 1
  %var.load657 = load ptr, ptr %var.c649, align 8
  %fld.gep658 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load657, i32 0, i32 1
  %call.res659 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc654, ptr %fld.gep658)
  store ptr %call.res659, ptr %var.body660, align 8
  %arena.cur661 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc662 = call ptr @dva_arena_alloc(ptr %arena.cur661, i64 16)
  %tag.gep663 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc662, i32 0, i32 0
  store i64 19, ptr %tag.gep663, align 8
  %pay.gep664 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc662, i32 0, i32 1
  %var.load665 = load ptr, ptr %var.ctx, align 8
  %var.load666 = load ptr, ptr %var.c649, align 8
  %fld.gep667 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load666, i32 0, i32 0
  %call.res668 = call ptr @"typedopt::#rewrite"(ptr %var.load665, ptr %fld.gep667)
  %var.load669 = load ptr, ptr %var.body660, align 8
  %var.load670 = load ptr, ptr %var.ctx, align 8
  %var.load671 = load ptr, ptr %var.c649, align 8
  %fld.gep672 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load671, i32 0, i32 2
  %fld.load673 = load ptr, ptr %fld.gep672, align 8
  %call.res674 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load670, ptr %fld.load673)
  %var.load675 = load ptr, ptr %var.c649, align 8
  %fld.gep676 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load675, i32 0, i32 3
  %fld.load677 = load i1, ptr %fld.gep676, align 1
  %arena.cur678 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld680 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld680, ptr align 1 %call.res668, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld681 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld681, ptr align 1 %var.load669, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld682 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 2
  store ptr %call.res674, ptr %rec.fld682, align 8
  %rec.fld683 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 3
  store i1 %fld.load677, ptr %rec.fld683, align 1
  store ptr %rec.alloc679, ptr %pay.gep664, align 8
  store ptr %enum.alloc662, ptr %var.__ctor_arg_1076, align 8
  %var.load684 = load ptr, ptr %var.__ctor_arg_1076, align 8
  %var.load685 = load ptr, ptr %var.e, align 8
  %fld.gep686 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load685, i32 0, i32 1
  %fld.load687 = load ptr, ptr %fld.gep686, align 8
  %var.load688 = load ptr, ptr %var.e, align 8
  %fld.gep689 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load688, i32 0, i32 2
  %fld.load690 = load ptr, ptr %fld.gep689, align 8
  %var.load691 = load ptr, ptr %var.e, align 8
  %fld.gep692 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load691, i32 0, i32 3
  %var.load693 = load ptr, ptr %var.e, align 8
  %fld.gep694 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load693, i32 0, i32 4
  %fld.load695 = load i64, ptr %fld.gep694, align 8
  %var.load696 = load ptr, ptr %var.e, align 8
  %fld.gep697 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load696, i32 0, i32 5
  %fld.load698 = load i64, ptr %fld.gep697, align 8
  %arena.cur699 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc700 = call ptr @dva_arena_alloc(ptr %arena.cur699, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld701 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 0
  store ptr %var.load684, ptr %rec.fld701, align 8
  %rec.fld702 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 1
  store ptr %fld.load687, ptr %rec.fld702, align 8
  %rec.fld703 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 2
  store ptr %fld.load690, ptr %rec.fld703, align 8
  %rec.fld704 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld704, ptr align 1 %fld.gep692, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld705 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 4
  store i64 %fld.load695, ptr %rec.fld705, align 8
  %rec.fld706 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 5
  store i64 %fld.load698, ptr %rec.fld706, align 8
  br label %choice.exit

choice.next642:                                   ; preds = %choice.next580
  %tag.gep709 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id710 = load i64, ptr %tag.gep709, align 8
  %tag.match711 = icmp eq i64 %tag.id710, 21
  br i1 %tag.match711, label %choice.case707, label %choice.next708

choice.case707:                                   ; preds = %choice.next642
  %pay.gep712 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr713 = load ptr, ptr %pay.gep712, align 8
  store ptr %payload.ptr713, ptr %var._714, align 8
  store ptr %payload.ptr713, ptr %var.r, align 8
  %arena.cur715 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc716 = call ptr @dva_arena_alloc(ptr %arena.cur715, i64 16)
  %tag.gep717 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc716, i32 0, i32 0
  store i64 21, ptr %tag.gep717, align 8
  %pay.gep718 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc716, i32 0, i32 1
  %var.load719 = load ptr, ptr %var.r, align 8
  %fld.gep720 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load719, i32 0, i32 0
  %fld.load721 = load ptr, ptr %fld.gep720, align 8
  %var.load722 = load ptr, ptr %var.r, align 8
  %fld.gep723 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load722, i32 0, i32 1
  %fld.load724 = load i1, ptr %fld.gep723, align 1
  %var.load725 = load ptr, ptr %var.ctx, align 8
  %var.load726 = load ptr, ptr %var.r, align 8
  %fld.gep727 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load726, i32 0, i32 2
  %fld.load728 = load ptr, ptr %fld.gep727, align 8
  %call.res729 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load725, ptr %fld.load728)
  %arena.cur730 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld732 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 0
  store ptr %fld.load721, ptr %rec.fld732, align 8
  %rec.fld733 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 1
  store i1 %fld.load724, ptr %rec.fld733, align 1
  %rec.fld734 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 2
  store ptr %call.res729, ptr %rec.fld734, align 8
  store ptr %rec.alloc731, ptr %pay.gep718, align 8
  store ptr %enum.alloc716, ptr %var.__ctor_arg_1087, align 8
  %var.load735 = load ptr, ptr %var.__ctor_arg_1087, align 8
  %var.load736 = load ptr, ptr %var.e, align 8
  %fld.gep737 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load736, i32 0, i32 1
  %fld.load738 = load ptr, ptr %fld.gep737, align 8
  %var.load739 = load ptr, ptr %var.e, align 8
  %fld.gep740 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load739, i32 0, i32 2
  %fld.load741 = load ptr, ptr %fld.gep740, align 8
  %var.load742 = load ptr, ptr %var.e, align 8
  %fld.gep743 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load742, i32 0, i32 3
  %var.load744 = load ptr, ptr %var.e, align 8
  %fld.gep745 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load744, i32 0, i32 4
  %fld.load746 = load i64, ptr %fld.gep745, align 8
  %var.load747 = load ptr, ptr %var.e, align 8
  %fld.gep748 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load747, i32 0, i32 5
  %fld.load749 = load i64, ptr %fld.gep748, align 8
  %arena.cur750 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc751 = call ptr @dva_arena_alloc(ptr %arena.cur750, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld752 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 0
  store ptr %var.load735, ptr %rec.fld752, align 8
  %rec.fld753 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 1
  store ptr %fld.load738, ptr %rec.fld753, align 8
  %rec.fld754 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 2
  store ptr %fld.load741, ptr %rec.fld754, align 8
  %rec.fld755 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld755, ptr align 1 %fld.gep743, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld756 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 4
  store i64 %fld.load746, ptr %rec.fld756, align 8
  %rec.fld757 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 5
  store i64 %fld.load749, ptr %rec.fld757, align 8
  br label %choice.exit

choice.next708:                                   ; preds = %choice.next642
  %tag.gep760 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id761 = load i64, ptr %tag.gep760, align 8
  %tag.match762 = icmp eq i64 %tag.id761, 22
  br i1 %tag.match762, label %choice.case758, label %choice.next759

choice.case758:                                   ; preds = %choice.next708
  %pay.gep763 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr764 = load ptr, ptr %pay.gep763, align 8
  store ptr %payload.ptr764, ptr %var._765, align 8
  store ptr %payload.ptr764, ptr %var.r766, align 8
  %arena.cur767 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 16)
  %tag.gep769 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc768, i32 0, i32 0
  store i64 22, ptr %tag.gep769, align 8
  %pay.gep770 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc768, i32 0, i32 1
  %var.load771 = load ptr, ptr %var.r766, align 8
  %fld.gep772 = getelementptr inbounds { ptr, ptr }, ptr %var.load771, i32 0, i32 0
  %fld.load773 = load ptr, ptr %fld.gep772, align 8
  %var.load774 = load ptr, ptr %var.ctx, align 8
  %var.load775 = load ptr, ptr %var.r766, align 8
  %fld.gep776 = getelementptr inbounds { ptr, ptr }, ptr %var.load775, i32 0, i32 1
  %fld.load777 = load ptr, ptr %fld.gep776, align 8
  %call.res778 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load774, ptr %fld.load777)
  %arena.cur779 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld781 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc780, i32 0, i32 0
  store ptr %fld.load773, ptr %rec.fld781, align 8
  %rec.fld782 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc780, i32 0, i32 1
  store ptr %call.res778, ptr %rec.fld782, align 8
  store ptr %rec.alloc780, ptr %pay.gep770, align 8
  store ptr %enum.alloc768, ptr %var.__ctor_arg_1097, align 8
  %var.load783 = load ptr, ptr %var.__ctor_arg_1097, align 8
  %var.load784 = load ptr, ptr %var.e, align 8
  %fld.gep785 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load784, i32 0, i32 1
  %fld.load786 = load ptr, ptr %fld.gep785, align 8
  %var.load787 = load ptr, ptr %var.e, align 8
  %fld.gep788 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load787, i32 0, i32 2
  %fld.load789 = load ptr, ptr %fld.gep788, align 8
  %var.load790 = load ptr, ptr %var.e, align 8
  %fld.gep791 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load790, i32 0, i32 3
  %var.load792 = load ptr, ptr %var.e, align 8
  %fld.gep793 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load792, i32 0, i32 4
  %fld.load794 = load i64, ptr %fld.gep793, align 8
  %var.load795 = load ptr, ptr %var.e, align 8
  %fld.gep796 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load795, i32 0, i32 5
  %fld.load797 = load i64, ptr %fld.gep796, align 8
  %arena.cur798 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld800 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 0
  store ptr %var.load783, ptr %rec.fld800, align 8
  %rec.fld801 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 1
  store ptr %fld.load786, ptr %rec.fld801, align 8
  %rec.fld802 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 2
  store ptr %fld.load789, ptr %rec.fld802, align 8
  %rec.fld803 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld803, ptr align 1 %fld.gep791, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld804 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 4
  store i64 %fld.load794, ptr %rec.fld804, align 8
  %rec.fld805 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 5
  store i64 %fld.load797, ptr %rec.fld805, align 8
  br label %choice.exit

choice.next759:                                   ; preds = %choice.next708
  %tag.gep808 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id809 = load i64, ptr %tag.gep808, align 8
  %tag.match810 = icmp eq i64 %tag.id809, 34
  br i1 %tag.match810, label %choice.case806, label %choice.next807

choice.case806:                                   ; preds = %choice.next759
  %pay.gep811 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr812 = load ptr, ptr %pay.gep811, align 8
  store ptr %payload.ptr812, ptr %var._813, align 8
  store ptr %payload.ptr812, ptr %var.r814, align 8
  %arena.cur815 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc816 = call ptr @dva_arena_alloc(ptr %arena.cur815, i64 16)
  %tag.gep817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc816, i32 0, i32 0
  store i64 34, ptr %tag.gep817, align 8
  %pay.gep818 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc816, i32 0, i32 1
  %var.load819 = load ptr, ptr %var.ctx, align 8
  %var.load820 = load ptr, ptr %var.r814, align 8
  %call.res821 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load819, ptr %var.load820)
  store ptr %call.res821, ptr %pay.gep818, align 8
  store ptr %enum.alloc816, ptr %var.__ctor_arg_1105, align 8
  %var.load822 = load ptr, ptr %var.__ctor_arg_1105, align 8
  %var.load823 = load ptr, ptr %var.e, align 8
  %fld.gep824 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load823, i32 0, i32 1
  %fld.load825 = load ptr, ptr %fld.gep824, align 8
  %var.load826 = load ptr, ptr %var.e, align 8
  %fld.gep827 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load826, i32 0, i32 2
  %fld.load828 = load ptr, ptr %fld.gep827, align 8
  %var.load829 = load ptr, ptr %var.e, align 8
  %fld.gep830 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load829, i32 0, i32 3
  %var.load831 = load ptr, ptr %var.e, align 8
  %fld.gep832 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load831, i32 0, i32 4
  %fld.load833 = load i64, ptr %fld.gep832, align 8
  %var.load834 = load ptr, ptr %var.e, align 8
  %fld.gep835 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load834, i32 0, i32 5
  %fld.load836 = load i64, ptr %fld.gep835, align 8
  %arena.cur837 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld839 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 0
  store ptr %var.load822, ptr %rec.fld839, align 8
  %rec.fld840 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 1
  store ptr %fld.load825, ptr %rec.fld840, align 8
  %rec.fld841 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 2
  store ptr %fld.load828, ptr %rec.fld841, align 8
  %rec.fld842 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld842, ptr align 1 %fld.gep830, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld843 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 4
  store i64 %fld.load833, ptr %rec.fld843, align 8
  %rec.fld844 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 5
  store i64 %fld.load836, ptr %rec.fld844, align 8
  br label %choice.exit

choice.next807:                                   ; preds = %choice.next759
  %var.load845 = load ptr, ptr %var.e, align 8
  br label %choice.exit
}

define internal ptr @"typedopt::#simplify_choice"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %var.take_yes = alloca i1, align 1
  %var.flag = alloca i1, align 1
  %var._322 = alloca i1, align 1
  %var.eligible = alloca i1, align 1
  %var.no = alloca ptr, align 8
  %var.yes = alloca ptr, align 8
  %var._124 = alloca i1, align 1
  %var.fallback = alloca ptr, align 8
  %var.__ctor_arg_878 = alloca ptr, align 8
  %var.__ctor_arg_872 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.256 = alloca i64, align 8
  %loop.idx.256 = alloca i64, align 8
  %var.branch_ctx = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.cond = alloca ptr, align 8
  %var.branches = alloca ptr, align 8
  %var.condition = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.orig, align 8
  store ptr %2, ptr %var.condition, align 8
  store ptr %3, ptr %var.branches, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.condition, align 8
  %call.res = call ptr @"typedopt::#scalar_operand"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.cond, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load3 = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld5, align 1
  store ptr %rec.alloc, ptr %var.branch_ctx, align 8
  %var.load6 = load ptr, ptr %var.branches, align 8
  %a.load = load ptr, ptr %var.branches, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep11, align 8
  %a.data.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf10, ptr %a.data.gep12, align 8
  %a.cap.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep13, align 8
  store ptr %a.create8, ptr %var.branches, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.branches, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len14 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data15 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.256, align 8
  br label %loop.header.256

loop.header.256:                                  ; preds = %loop.latch.256, %a.after
  %counter.load = load i64, ptr %loop.idx.256, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len14
  br i1 %loop.cond, label %loop.body.256, label %loop.exit.nat.256

loop.body.256:                                    ; preds = %loop.header.256
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.256, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data15, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.br, align 8
  %var.load16 = load ptr, ptr %var.branch_ctx, align 8
  %var.load17 = load ptr, ptr %var.br, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load17, i32 0, i32 5
  %call.res19 = call ptr @"typedopt::#rewrite"(ptr %var.load16, ptr %fld.gep18)
  store ptr %call.res19, ptr %var.__ctor_arg_872, align 8
  %var.load20 = load ptr, ptr %var.br, align 8
  %fld.gep21 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load20, i32 0, i32 0
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %var.load23 = load ptr, ptr %var.br, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.br, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %var.load29 = load ptr, ptr %var.br, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load29, i32 0, i32 3
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.br, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load32, i32 0, i32 4
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load ptr, ptr %var.__ctor_arg_872, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 0
  store ptr %fld.load22, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 1
  store ptr %fld.load25, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 2
  store ptr %fld.load28, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 3
  store ptr %fld.load31, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 4
  store ptr %fld.load34, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld43, ptr align 1 %var.load35, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.load44 = load ptr, ptr %var.out, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

loop.exit.nat.256:                                ; preds = %loop.header.256
  br label %loop.exit.256

loop.latch.256:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.256, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.256, align 8
  br label %loop.header.256

loop.exit.256:                                    ; preds = %loop.exit.nat.256
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 15, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load61 = load ptr, ptr %var.condition, align 8
  %var.load62 = load ptr, ptr %var.out, align 8
  %a.load63 = load ptr, ptr %var.out, align 8
  %a.null64 = icmp eq ptr %a.load63, null
  br i1 %a.null64, label %a.create65, label %a.after66

a.create46:                                       ; preds = %loop.body.256
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var.out, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %loop.body.256
  %a.load255 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after47
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.len56 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 2
  %a.cap57 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len56, %a.cap57
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load255)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 1
  %a.cur.data58 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.cur.len59 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data58, i64 %a.cur.len59
  %slot.p2i = ptrtoint ptr %rec.alloc37 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len59, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.256

a.create65:                                       ; preds = %loop.exit.256
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 128)
  %a.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 0
  store i64 0, ptr %a.len.gep71, align 8
  %a.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 1
  store ptr %a.buf70, ptr %a.data.gep72, align 8
  %a.cap.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 2
  store i64 16, ptr %a.cap.gep73, align 8
  store ptr %a.create68, ptr %var.out, align 8
  br label %a.after66

a.after66:                                        ; preds = %a.create65, %loop.exit.256
  %a.load274 = load ptr, ptr %var.out, align 8
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld77 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc76, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld77, ptr align 1 %var.load61, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld78 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc76, i32 0, i32 1
  store ptr %a.load274, ptr %rec.fld78, align 8
  store ptr %rec.alloc76, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_878, align 8
  %var.load79 = load ptr, ptr %var.__ctor_arg_878, align 8
  %var.load80 = load ptr, ptr %var.orig, align 8
  %fld.gep81 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load80, i32 0, i32 1
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %var.load83 = load ptr, ptr %var.orig, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load83, i32 0, i32 2
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.orig, align 8
  %fld.gep87 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load86, i32 0, i32 3
  %var.load88 = load ptr, ptr %var.orig, align 8
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load88, i32 0, i32 4
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %var.load91 = load ptr, ptr %var.orig, align 8
  %fld.gep92 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load91, i32 0, i32 5
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld96 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 0
  store ptr %var.load79, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 1
  store ptr %fld.load82, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 2
  store ptr %fld.load85, ptr %rec.fld98, align 8
  %rec.fld99 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld99, ptr align 1 %fld.gep87, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld100 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 4
  store i64 %fld.load90, ptr %rec.fld100, align 8
  %rec.fld101 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 5
  store i64 %fld.load93, ptr %rec.fld101, align 8
  store ptr %rec.alloc95, ptr %var.fallback, align 8
  %var.load102 = load ptr, ptr %var.ctx, align 8
  %fld.gep103 = getelementptr inbounds { ptr, i1 }, ptr %var.load102, i32 0, i32 1
  %fld.load104 = load i1, ptr %fld.gep103, align 1
  %nottmp = xor i1 %fld.load104, true
  br i1 %nottmp, label %or.257.then, label %or.257.else

or.257.then:                                      ; preds = %a.after66
  br label %or.257.exit

or.257.else:                                      ; preds = %a.after66
  %var.load105 = load ptr, ptr %var.out, align 8
  %a.load106 = load ptr, ptr %var.out, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

or.257.exit:                                      ; preds = %a.after109, %or.257.then
  %or.257.phi = phi i1 [ %nottmp, %or.257.then ], [ %cmptmp, %a.after109 ]
  br i1 %or.257.phi, label %or.258.then, label %or.258.else

a.create108:                                      ; preds = %or.257.else
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  %a.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 0
  store i64 0, ptr %a.len.gep114, align 8
  %a.data.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf113, ptr %a.data.gep115, align 8
  %a.cap.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep116, align 8
  store ptr %a.create111, ptr %var.out, align 8
  br label %a.after109

a.after109:                                       ; preds = %a.create108, %or.257.else
  %a.load2117 = load ptr, ptr %var.out, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.len.query118 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp ne i64 %a.len.query118, 2
  br label %or.257.exit

or.258.then:                                      ; preds = %or.257.exit
  br label %or.258.exit

or.258.else:                                      ; preds = %or.257.exit
  %var.load119 = load ptr, ptr %var.cond, align 8
  %fld.gep120 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load119, i32 0, i32 0
  %fld.load121 = load ptr, ptr %fld.gep120, align 8
  %tag.gep122 = getelementptr inbounds { i64, ptr }, ptr %fld.load121, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep122, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

or.258.exit:                                      ; preds = %choice.exit, %or.258.then
  %or.258.phi = phi i1 [ %or.257.phi, %or.258.then ], [ %nottmp125, %choice.exit ]
  br i1 %or.258.phi, label %choice.then, label %choice.exit126

choice.exit:                                      ; preds = %choice.next, %pay.int.merge
  %choice.res = phi i1 [ true, %pay.int.merge ], [ false, %choice.next ]
  %nottmp125 = xor i1 %choice.res, true
  br label %or.258.exit

choice.case:                                      ; preds = %or.258.else
  %pay.gep123 = getelementptr inbounds { i64, ptr }, ptr %fld.load121, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep123, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %or.258.else
  br label %choice.exit

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i1, ptr %payload.ptr, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._124, align 1
  br label %choice.exit

choice.then:                                      ; preds = %or.258.exit
  %var.load127 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load127

choice.exit126:                                   ; preds = %ret.dead, %or.258.exit
  %var.load128 = load ptr, ptr %var.out, align 8
  %a.load129 = load ptr, ptr %var.out, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

ret.dead:                                         ; No predecessors!
  br label %choice.exit126

a.create131:                                      ; preds = %choice.exit126
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.out, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %choice.exit126
  %a.load2140 = load ptr, ptr %var.out, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2140, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after132
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %a.rd.len141 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len141
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 1
  %a.rd.data142 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data142, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after132
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 358, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 19, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 56)
  %err.code.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 0
  store i64 4011, ptr %err.code.gep146, align 8
  %err.msg.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep147, align 8
  %err.file.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep148, align 8
  %err.line.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 3
  store i64 358, ptr %err.line.gep149, align 8
  %err.col.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 4
  store i64 19, ptr %err.col.gep150, align 8
  %err.ctx.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 5
  %err.ctx0.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep152, align 8
  %err.ctx1.gep153 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep153, align 8
  %err.p2i154 = ptrtoint ptr %err.alloc145 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i154, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.259, label %unwrap.abort.259

unwrap.pos.259:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.yes, align 8
  %var.load166 = load ptr, ptr %var.out, align 8
  %a.load167 = load ptr, ptr %var.out, align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

unwrap.abort.259:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep155, align 8
  %err.msg.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep156, align 8
  %err.file.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep157, align 8
  %err.line.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep158, align 8
  %err.col.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep159, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len160 = load i64, ptr %err.msg.len, align 8
  %err.msg.len161 = and i64 %err.msg.len160, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len161 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data162 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len163 = load i64, ptr %err.file.len, align 8
  %err.file.len164 = and i64 %err.file.len163, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len164 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data165 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.259
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.259
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data162, i32 %err.file.len32, ptr %err.file.data165, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create169:                                      ; preds = %unwrap.pos.259
  %arena.cur171 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %var.out, align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %unwrap.pos.259
  %a.load2178 = load ptr, ptr %var.out, align 8
  %a.rd.nonnull179 = icmp ne ptr %a.load2178, null
  br i1 %a.rd.nonnull179, label %a.rd.check180, label %a.rd.err.null182

a.rd.check180:                                    ; preds = %a.after170
  %a.rd.len185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 0
  %a.rd.len186 = load i64, ptr %a.rd.len185, align 8
  %a.rd.lt187 = icmp slt i64 1, %a.rd.len186
  %a.rd.bounds188 = and i1 true, %a.rd.lt187
  br i1 %a.rd.bounds188, label %a.rd.ok181, label %a.rd.err.oob183

a.rd.ok181:                                       ; preds = %a.rd.check180
  %a.rd.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 1
  %a.rd.data190 = load ptr, ptr %a.rd.data189, align 8
  %a.rd.elem.gep191 = getelementptr i64, ptr %a.rd.data190, i64 1
  %a.rd.elem192 = load i64, ptr %a.rd.elem.gep191, align 8
  br label %a.rd.done184

a.rd.err.null182:                                 ; preds = %a.after170
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 56)
  %err.code.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 0
  store i64 4011, ptr %err.code.gep195, align 8
  %err.msg.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep196, align 8
  %err.file.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep197, align 8
  %err.line.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 3
  store i64 359, ptr %err.line.gep198, align 8
  %err.col.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 4
  store i64 18, ptr %err.col.gep199, align 8
  %err.ctx.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 5
  %err.ctx0.gep201 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep201, align 8
  %err.ctx1.gep202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep202, align 8
  %err.p2i203 = ptrtoint ptr %err.alloc194 to i64
  br label %a.rd.done184

a.rd.err.oob183:                                  ; preds = %a.rd.check180
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  %err.code.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 0
  store i64 4011, ptr %err.code.gep206, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 359, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 18, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  %err.ctx0.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep212, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 %a.rd.len186, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done184

a.rd.done184:                                     ; preds = %a.rd.err.oob183, %a.rd.err.null182, %a.rd.ok181
  %a.rd.tag215 = phi i1 [ true, %a.rd.ok181 ], [ false, %a.rd.err.null182 ], [ false, %a.rd.err.oob183 ]
  %a.rd.pay216 = phi i64 [ %a.rd.elem192, %a.rd.ok181 ], [ %err.p2i203, %a.rd.err.null182 ], [ %err.p2i214, %a.rd.err.oob183 ]
  %ram.tag217 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag215, 0
  %ram.pay218 = insertvalue { i1, i64 } %ram.tag217, i64 %a.rd.pay216, 1
  %unwrap.is_pos219 = extractvalue { i1, i64 } %ram.pay218, 0
  br i1 %unwrap.is_pos219, label %unwrap.pos.260, label %unwrap.abort.260

unwrap.pos.260:                                   ; preds = %a.rd.done184
  %unwrap.pay.pos251 = extractvalue { i1, i64 } %ram.pay218, 1
  %pay.ptr252 = inttoptr i64 %unwrap.pay.pos251 to ptr
  store ptr %pay.ptr252, ptr %var.no, align 8
  %var.load253 = load ptr, ptr %var.yes, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load253, i32 0, i32 0
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %tag.gep259 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 0
  %tag.id260 = load i64, ptr %tag.gep259, align 8
  %tag.match261 = icmp eq i64 %tag.id260, 3
  br i1 %tag.match261, label %choice.case257, label %choice.next258

unwrap.abort.260:                                 ; preds = %a.rd.done184
  %unwrap.pay.abort220 = extractvalue { i1, i64 } %ram.pay218, 1
  %err.ptr221 = inttoptr i64 %unwrap.pay.abort220 to ptr
  %err.code.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 0
  %err.code223 = load i64, ptr %err.code.gep222, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 1
  %err.msg.struct225 = load ptr, ptr %err.msg.gep224, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 2
  %err.file.struct227 = load ptr, ptr %err.file.gep226, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 3
  %err.line229 = load i64, ptr %err.line.gep228, align 8
  %err.col.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 4
  %err.col231 = load i64, ptr %err.col.gep230, align 8
  %err.msg.len232 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 0
  %err.msg.len233 = load i64, ptr %err.msg.len232, align 8
  %err.msg.len234 = and i64 %err.msg.len233, 281474976710655
  %err.msg.len32235 = trunc i64 %err.msg.len234 to i32
  %err.msg.data236 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 1
  %err.msg.data237 = load ptr, ptr %err.msg.data236, align 8
  %err.file.len238 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 0
  %err.file.len239 = load i64, ptr %err.file.len238, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32241 = trunc i64 %err.file.len240 to i32
  %err.file.data242 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 1
  %err.file.data243 = load ptr, ptr %err.file.data242, align 8
  %err.thread.rec244 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread245 = icmp ne ptr %err.thread.rec244, null
  br i1 %err.is.thread245, label %err.thread246, label %err.normal247

err.thread246:                                    ; preds = %unwrap.abort.260
  %err.haserr.gep248 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep248, align 8
  %err.err.gep249 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 7
  store ptr %err.ptr221, ptr %err.err.gep249, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal247:                                    ; preds = %unwrap.abort.260
  %err.panic.printf250 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code223, i32 %err.msg.len32235, ptr %err.msg.data237, i32 %err.file.len32241, ptr %err.file.data243, i64 %err.line229, i64 %err.col231)
  call void @exit(i32 1)
  unreachable

choice.exit256:                                   ; preds = %choice.next258, %choice.case257
  %choice.res262 = phi i1 [ true, %choice.case257 ], [ false, %choice.next258 ]
  br i1 %choice.res262, label %and.261.then, label %and.261.else

choice.case257:                                   ; preds = %unwrap.pos.260
  br label %choice.exit256

choice.next258:                                   ; preds = %unwrap.pos.260
  br label %choice.exit256

and.261.then:                                     ; preds = %choice.exit256
  %var.load263 = load ptr, ptr %var.no, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load263, i32 0, i32 0
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %tag.gep269 = getelementptr inbounds { i64, ptr }, ptr %fld.load265, i32 0, i32 0
  %tag.id270 = load i64, ptr %tag.gep269, align 8
  %tag.match271 = icmp eq i64 %tag.id270, 3
  br i1 %tag.match271, label %choice.case267, label %choice.next268

and.261.else:                                     ; preds = %choice.exit256
  br label %and.261.exit

and.261.exit:                                     ; preds = %and.261.else, %choice.exit266
  %and.261.phi = phi i1 [ %choice.res272, %choice.exit266 ], [ %choice.res262, %and.261.else ]
  br i1 %and.261.phi, label %and.262.then, label %and.262.else

choice.exit266:                                   ; preds = %choice.next268, %choice.case267
  %choice.res272 = phi i1 [ true, %choice.case267 ], [ false, %choice.next268 ]
  br label %and.261.exit

choice.case267:                                   ; preds = %and.261.then
  br label %choice.exit266

choice.next268:                                   ; preds = %and.261.then
  br label %choice.exit266

and.262.then:                                     ; preds = %and.261.exit
  %var.load273 = load ptr, ptr %var.yes, align 8
  %fld.gep274 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load273, i32 0, i32 4
  %fld.load275 = load ptr, ptr %fld.gep274, align 8
  %a.len.query276 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load275, i32 0, i32 0
  %a.len.query277 = load i64, ptr %a.len.query276, align 8
  %cmptmp278 = icmp eq i64 %a.len.query277, 0
  br label %and.262.exit

and.262.else:                                     ; preds = %and.261.exit
  br label %and.262.exit

and.262.exit:                                     ; preds = %and.262.else, %and.262.then
  %and.262.phi = phi i1 [ %cmptmp278, %and.262.then ], [ %and.261.phi, %and.262.else ]
  br i1 %and.262.phi, label %and.263.then, label %and.263.else

and.263.then:                                     ; preds = %and.262.exit
  %var.load279 = load ptr, ptr %var.no, align 8
  %fld.gep280 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load279, i32 0, i32 4
  %fld.load281 = load ptr, ptr %fld.gep280, align 8
  %a.len.query282 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load281, i32 0, i32 0
  %a.len.query283 = load i64, ptr %a.len.query282, align 8
  %cmptmp284 = icmp eq i64 %a.len.query283, 0
  br label %and.263.exit

and.263.else:                                     ; preds = %and.262.exit
  br label %and.263.exit

and.263.exit:                                     ; preds = %and.263.else, %and.263.then
  %and.263.phi = phi i1 [ %cmptmp284, %and.263.then ], [ %and.262.phi, %and.263.else ]
  br i1 %and.263.phi, label %and.264.then, label %and.264.else

and.264.then:                                     ; preds = %and.263.exit
  %var.load285 = load ptr, ptr %var.yes, align 8
  %fld.gep286 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load285, i32 0, i32 5
  %call.res287 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep286)
  br label %and.264.exit

and.264.else:                                     ; preds = %and.263.exit
  br label %and.264.exit

and.264.exit:                                     ; preds = %and.264.else, %and.264.then
  %and.264.phi = phi i1 [ %call.res287, %and.264.then ], [ %and.263.phi, %and.264.else ]
  br i1 %and.264.phi, label %and.265.then, label %and.265.else

and.265.then:                                     ; preds = %and.264.exit
  %var.load288 = load ptr, ptr %var.no, align 8
  %fld.gep289 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load288, i32 0, i32 5
  %call.res290 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep289)
  br label %and.265.exit

and.265.else:                                     ; preds = %and.264.exit
  br label %and.265.exit

and.265.exit:                                     ; preds = %and.265.else, %and.265.then
  %and.265.phi = phi i1 [ %call.res290, %and.265.then ], [ %and.264.phi, %and.265.else ]
  br i1 %and.265.phi, label %and.266.then, label %and.266.else

and.266.then:                                     ; preds = %and.265.exit
  %var.load291 = load ptr, ptr %var.orig, align 8
  %var.load292 = load ptr, ptr %var.yes, align 8
  %fld.gep293 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load292, i32 0, i32 5
  %call.res294 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load291, ptr %fld.gep293)
  br label %and.266.exit

and.266.else:                                     ; preds = %and.265.exit
  br label %and.266.exit

and.266.exit:                                     ; preds = %and.266.else, %and.266.then
  %and.266.phi = phi i1 [ %call.res294, %and.266.then ], [ %and.265.phi, %and.266.else ]
  br i1 %and.266.phi, label %and.267.then, label %and.267.else

and.267.then:                                     ; preds = %and.266.exit
  %var.load295 = load ptr, ptr %var.orig, align 8
  %var.load296 = load ptr, ptr %var.no, align 8
  %fld.gep297 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load296, i32 0, i32 5
  %call.res298 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load295, ptr %fld.gep297)
  br label %and.267.exit

and.267.else:                                     ; preds = %and.266.exit
  br label %and.267.exit

and.267.exit:                                     ; preds = %and.267.else, %and.267.then
  %and.267.phi = phi i1 [ %call.res298, %and.267.then ], [ %and.266.phi, %and.267.else ]
  store i1 %and.267.phi, ptr %var.eligible, align 1
  %var.load299 = load i1, ptr %var.eligible, align 1
  %nottmp300 = xor i1 %var.load299, true
  br i1 %nottmp300, label %choice.then301, label %choice.exit302

choice.then301:                                   ; preds = %and.267.exit
  %var.load303 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load303

choice.exit302:                                   ; preds = %ret.dead304, %and.267.exit
  %var.load305 = load ptr, ptr %var.cond, align 8
  %fld.gep306 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load305, i32 0, i32 0
  %fld.load307 = load ptr, ptr %fld.gep306, align 8
  %tag.gep311 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 0
  %tag.id312 = load i64, ptr %tag.gep311, align 8
  %tag.match313 = icmp eq i64 %tag.id312, 4
  br i1 %tag.match313, label %choice.case309, label %choice.next310

ret.dead304:                                      ; No predecessors!
  br label %choice.exit302

choice.exit308:                                   ; preds = %choice.next310, %pay.int.merge319
  %choice.res324 = phi i1 [ %var.load323, %pay.int.merge319 ], [ false, %choice.next310 ]
  store i1 %choice.res324, ptr %var.take_yes, align 1
  %var.load325 = load ptr, ptr %var.orig, align 8
  %var.load326 = load i1, ptr %var.take_yes, align 1
  br i1 %var.load326, label %choice.then327, label %choice.else

choice.case309:                                   ; preds = %choice.exit302
  %pay.gep314 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 1
  %payload.ptr315 = load ptr, ptr %pay.gep314, align 8
  %pay.int.null316 = icmp eq ptr %payload.ptr315, null
  br i1 %pay.int.null316, label %pay.int.nullbb318, label %pay.int.load317

choice.next310:                                   ; preds = %choice.exit302
  br label %choice.exit308

pay.int.load317:                                  ; preds = %choice.case309
  %pay.int.val320 = load i1, ptr %payload.ptr315, align 1
  br label %pay.int.merge319

pay.int.nullbb318:                                ; preds = %choice.case309
  br label %pay.int.merge319

pay.int.merge319:                                 ; preds = %pay.int.nullbb318, %pay.int.load317
  %pay.int.phi321 = phi i1 [ %pay.int.val320, %pay.int.load317 ], [ false, %pay.int.nullbb318 ]
  store i1 %pay.int.phi321, ptr %var._322, align 1
  store i1 %pay.int.phi321, ptr %var.flag, align 1
  %var.load323 = load i1, ptr %var.flag, align 1
  br label %choice.exit308

choice.then327:                                   ; preds = %choice.exit308
  %var.load329 = load ptr, ptr %var.yes, align 8
  %fld.gep330 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load329, i32 0, i32 5
  br label %choice.exit328

choice.else:                                      ; preds = %choice.exit308
  %var.load331 = load ptr, ptr %var.no, align 8
  %fld.gep332 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load331, i32 0, i32 5
  br label %choice.exit328

choice.exit328:                                   ; preds = %choice.else, %choice.then327
  %choice.res333 = phi ptr [ %fld.gep330, %choice.then327 ], [ %fld.gep332, %choice.else ]
  %call.res334 = call ptr @"typedopt::#replace"(ptr %var.load325, ptr %choice.res333)
  ret ptr %call.res334
}

define internal ptr @"typedopt::#rewrite_block"(ptr %0, ptr %1) #3 {
entry:
  %var.eligible = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._36 = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.268 = alloca i64, align 8
  %loop.idx.268 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.local = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.exprs, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld1, align 1
  store ptr %rec.alloc, ptr %var.local, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load4 = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len12 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data13 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.268, align 8
  br label %loop.header.268

loop.header.268:                                  ; preds = %loop.latch.268, %a.after
  %counter.load = load i64, ptr %loop.idx.268, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len12
  br i1 %loop.cond, label %loop.body.268, label %loop.exit.nat.268

loop.body.268:                                    ; preds = %loop.header.268
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.268, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data13, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load14 = load ptr, ptr %var.local, align 8
  %var.load15 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load14, ptr %var.load15)
  store ptr %call.res, ptr %var.value, align 8
  %var.load16 = load ptr, ptr %var.value, align 8
  %a.load17 = load ptr, ptr %var.out, align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

loop.exit.nat.268:                                ; preds = %loop.header.268
  br label %loop.exit.268

loop.latch.268:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.268, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.268, align 8
  br label %loop.header.268

loop.exit.268:                                    ; preds = %loop.exit.nat.268
  %var.load79 = load ptr, ptr %var.out, align 8
  %a.load80 = load ptr, ptr %var.out, align 8
  %a.null81 = icmp eq ptr %a.load80, null
  br i1 %a.null81, label %a.create82, label %a.after83

a.create19:                                       ; preds = %loop.body.268
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %var.out, align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %loop.body.268
  %a.load228 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after20
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.len29 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 2
  %a.cap30 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len29, %a.cap30
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load228)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 1
  %a.cur.data31 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.cur.len32 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data31, i64 %a.cur.len32
  %slot.p2i = ptrtoint ptr %var.load16 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len32, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load33 = load ptr, ptr %var.value, align 8
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load33, i32 0, i32 0
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit63
  br label %loop.latch.268

choice.case:                                      ; preds = %a.store
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._36, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load37 = load ptr, ptr %var.ctx, align 8
  %fld.gep38 = getelementptr inbounds { ptr, i1 }, ptr %var.load37, i32 0, i32 1
  %fld.load39 = load i1, ptr %fld.gep38, align 1
  br i1 %fld.load39, label %and.269.then, label %and.269.else

choice.next:                                      ; preds = %a.store
  %var.load77 = load ptr, ptr %var.local, align 8
  %fld.gep78 = getelementptr inbounds { ptr, i1 }, ptr %var.load77, i32 0, i32 0
  store ptr null, ptr %fld.gep78, align 8
  br label %choice.exit

and.269.then:                                     ; preds = %choice.case
  %var.load40 = load ptr, ptr %var.a, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load i1, ptr %fld.gep41, align 1
  br i1 %fld.load42, label %or.270.then, label %or.270.else

and.269.else:                                     ; preds = %choice.case
  br label %and.269.exit

and.269.exit:                                     ; preds = %and.269.else, %or.272.exit
  %and.269.phi = phi i1 [ %nottmp, %or.272.exit ], [ %fld.load39, %and.269.else ]
  br i1 %and.269.phi, label %and.273.then, label %and.273.else

or.270.then:                                      ; preds = %and.269.then
  br label %or.270.exit

or.270.else:                                      ; preds = %and.269.then
  %var.load43 = load ptr, ptr %var.a, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load i1, ptr %fld.gep44, align 1
  br label %or.270.exit

or.270.exit:                                      ; preds = %or.270.else, %or.270.then
  %or.270.phi = phi i1 [ %fld.load42, %or.270.then ], [ %fld.load45, %or.270.else ]
  br i1 %or.270.phi, label %or.271.then, label %or.271.else

or.271.then:                                      ; preds = %or.270.exit
  br label %or.271.exit

or.271.else:                                      ; preds = %or.270.exit
  %var.load46 = load ptr, ptr %var.a, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load46, i32 0, i32 3
  %fld.load48 = load i1, ptr %fld.gep47, align 1
  br label %or.271.exit

or.271.exit:                                      ; preds = %or.271.else, %or.271.then
  %or.271.phi = phi i1 [ %or.270.phi, %or.271.then ], [ %fld.load48, %or.271.else ]
  br i1 %or.271.phi, label %or.272.then, label %or.272.else

or.272.then:                                      ; preds = %or.271.exit
  br label %or.272.exit

or.272.else:                                      ; preds = %or.271.exit
  %var.load49 = load ptr, ptr %var.a, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load49, i32 0, i32 4
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  br label %or.272.exit

or.272.exit:                                      ; preds = %or.272.else, %or.272.then
  %or.272.phi = phi i1 [ %or.271.phi, %or.272.then ], [ %fld.load51, %or.272.else ]
  %nottmp = xor i1 %or.272.phi, true
  br label %and.269.exit

and.273.then:                                     ; preds = %and.269.exit
  %var.load52 = load ptr, ptr %var.a, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load52, i32 0, i32 0
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 0
  %eq.lhs.len55 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len57 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len56, %eq.rhs.len57
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.273.else:                                     ; preds = %and.269.exit
  br label %and.273.exit

and.273.exit:                                     ; preds = %and.273.else, %str.eq.merge
  %and.273.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %and.269.phi, %and.273.else ]
  br i1 %and.273.phi, label %and.274.then, label %and.274.else

str.eq.then:                                      ; preds = %and.273.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data, i64 %eq.lhs.len56)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.273.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.273.exit

and.274.then:                                     ; preds = %and.273.exit
  %var.load59 = load ptr, ptr %var.a, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load59, i32 0, i32 5
  %call.res61 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep60)
  br label %and.274.exit

and.274.else:                                     ; preds = %and.273.exit
  br label %and.274.exit

and.274.exit:                                     ; preds = %and.274.else, %and.274.then
  %and.274.phi = phi i1 [ %call.res61, %and.274.then ], [ %and.273.phi, %and.274.else ]
  store i1 %and.274.phi, ptr %var.eligible, align 1
  %var.load62 = load i1, ptr %var.eligible, align 1
  br i1 %var.load62, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.274.exit
  %var.load64 = load ptr, ptr %var.local, align 8
  %var.load65 = load ptr, ptr %var.a, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load65, i32 0, i32 0
  %fld.load67 = load ptr, ptr %fld.gep66, align 8
  %var.load68 = load ptr, ptr %var.a, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load68, i32 0, i32 5
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld72 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc71, i32 0, i32 0
  store ptr %fld.load67, ptr %rec.fld72, align 8
  %rec.fld73 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc71, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld73, ptr align 1 %fld.gep69, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %fld.gep74 = getelementptr inbounds { ptr, i1 }, ptr %var.load64, i32 0, i32 0
  store ptr %rec.alloc71, ptr %fld.gep74, align 8
  br label %choice.exit63

choice.else:                                      ; preds = %and.274.exit
  %var.load75 = load ptr, ptr %var.local, align 8
  %fld.gep76 = getelementptr inbounds { ptr, i1 }, ptr %var.load75, i32 0, i32 0
  store ptr null, ptr %fld.gep76, align 8
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else, %choice.then
  br label %choice.exit

a.create82:                                       ; preds = %loop.exit.268
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 24)
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 128)
  %a.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 0
  store i64 0, ptr %a.len.gep88, align 8
  %a.data.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 1
  store ptr %a.buf87, ptr %a.data.gep89, align 8
  %a.cap.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 2
  store i64 16, ptr %a.cap.gep90, align 8
  store ptr %a.create85, ptr %var.out, align 8
  br label %a.after83

a.after83:                                        ; preds = %a.create82, %loop.exit.268
  %a.load291 = load ptr, ptr %var.out, align 8
  ret ptr %a.load291
}

define internal ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %1) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %niche.ne.null = icmp ne ptr %var.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.ctx, align 8
  %var.load2 = load ptr, ptr %var._, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ null, %choice.else ]
  ret ptr %choice.res
}

define internal ptr @"typedopt::#rewrite_stmt"(ptr %0, ptr %1) #3 {
entry:
  %var.b40 = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._12 = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.st, align 8
  %var.load = load ptr, ptr %var.st, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next33, %choice.case32, %choice.case5, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %enum.alloc14, %choice.case5 ], [ %enum.alloc42, %choice.case32 ], [ %var.load60, %choice.next33 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.e, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep1 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep1, align 8
  %pay.gep2 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load3 = load ptr, ptr %var.ctx, align 8
  %var.load4 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load3, ptr %var.load4)
  store ptr %call.res, ptr %pay.gep2, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 1
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  store ptr %payload.ptr11, ptr %var._12, align 8
  store ptr %payload.ptr11, ptr %var.b, align 8
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %tag.gep15 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 0
  store i64 1, ptr %tag.gep15, align 8
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 1
  %var.load17 = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load17, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load18 = load ptr, ptr %var.b, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load18, i32 0, i32 1
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %var.load21 = load ptr, ptr %var.ctx, align 8
  %var.load22 = load ptr, ptr %var.b, align 8
  %fld.gep23 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load22, i32 0, i32 2
  %call.res24 = call ptr @"typedopt::#rewrite"(ptr %var.load21, ptr %fld.gep23)
  %var.load25 = load ptr, ptr %var.b, align 8
  %fld.gep26 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load25, i32 0, i32 3
  %fld.load27 = load i1, ptr %fld.gep26, align 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load, ptr %rec.fld, align 8
  %rec.fld29 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load20, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld30, ptr align 1 %call.res24, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld31 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %fld.load27, ptr %rec.fld31, align 1
  store ptr %rec.alloc, ptr %pay.gep16, align 8
  br label %choice.exit

choice.next6:                                     ; preds = %choice.next
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 2
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next6
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.b40, align 8
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %tag.gep43 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc42, i32 0, i32 0
  store i64 2, ptr %tag.gep43, align 8
  %pay.gep44 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc42, i32 0, i32 1
  %var.load45 = load ptr, ptr %var.b40, align 8
  %fld.gep46 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load45, i32 0, i32 0
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %var.load48 = load ptr, ptr %var.b40, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load48, i32 0, i32 1
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %var.load51 = load ptr, ptr %var.ctx, align 8
  %var.load52 = load ptr, ptr %var.b40, align 8
  %fld.gep53 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load52, i32 0, i32 2
  %call.res54 = call ptr @"typedopt::#rewrite"(ptr %var.load51, ptr %fld.gep53)
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld57 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 0
  store ptr %fld.load47, ptr %rec.fld57, align 8
  %rec.fld58 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 1
  store ptr %fld.load50, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld59, ptr align 1 %call.res54, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc56, ptr %pay.gep44, align 8
  br label %choice.exit

choice.next33:                                    ; preds = %choice.next6
  %var.load60 = load ptr, ptr %var.st, align 8
  br label %choice.exit
}

define ptr @"typedopt::collection_fusion"(ptr %0) #3 {
entry:
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#fuse_pipeline"(ptr %var.load)
  ret ptr %call.res
}

define ptr @"typedopt::run"(ptr %0) #3 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.275 = alloca i64, align 8
  %loop.idx.275 = alloca i64, align 8
  %var._map_out_1131 = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  store ptr %0, ptr %var.prog, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld1, align 1
  store ptr %rec.alloc, ptr %var.ctx, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var._map_out_1131, align 8
  %var.load = load ptr, ptr %var.prog, align 8
  %a.load = load ptr, ptr %var.prog, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep8, align 8
  %a.data.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf7, ptr %a.data.gep9, align 8
  %a.cap.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep10, align 8
  store ptr %a.create5, ptr %var.prog, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.prog, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len11 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data12 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.275, align 8
  br label %loop.header.275

loop.header.275:                                  ; preds = %loop.latch.275, %a.after
  %counter.load = load i64, ptr %loop.idx.275, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len11
  br i1 %loop.cond, label %loop.body.275, label %loop.exit.nat.275

loop.body.275:                                    ; preds = %loop.header.275
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.275, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data12, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.st, align 8
  %var.load13 = load ptr, ptr %var.ctx, align 8
  %var.load14 = load ptr, ptr %var.st, align 8
  %call.res = call ptr @"typedopt::#rewrite_stmt"(ptr %var.load13, ptr %var.load14)
  %a.load15 = load ptr, ptr %var._map_out_1131, align 8
  %a.null16 = icmp eq ptr %a.load15, null
  br i1 %a.null16, label %a.create17, label %a.after18

loop.exit.nat.275:                                ; preds = %loop.header.275
  br label %loop.exit.275

loop.latch.275:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.275, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.275, align 8
  br label %loop.header.275

loop.exit.275:                                    ; preds = %loop.exit.nat.275
  %var.load31 = load ptr, ptr %var._map_out_1131, align 8
  %a.load32 = load ptr, ptr %var._map_out_1131, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

a.create17:                                       ; preds = %loop.body.275
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.create20, ptr %var._map_out_1131, align 8
  br label %a.after18

a.after18:                                        ; preds = %a.create17, %loop.body.275
  %a.load226 = load ptr, ptr %var._map_out_1131, align 8
  br label %a.check

a.check:                                          ; preds = %a.after18
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.len27 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 2
  %a.cap28 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len27, %a.cap28
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load226)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 1
  %a.cur.data29 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.cur.len30 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data29, i64 %a.cur.len30
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len30, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.275

a.create34:                                       ; preds = %loop.exit.275
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var._map_out_1131, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %loop.exit.275
  %a.load243 = load ptr, ptr %var._map_out_1131, align 8
  ret ptr %a.load243
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { cold noinline "nounwind" }
