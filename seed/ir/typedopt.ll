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
@expect.reason.180 = internal unnamed_addr constant [24 x i8] c"expect: missing fields\0A\00"
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
@expect.reason.185 = internal unnamed_addr constant [23 x i8] c"expect: missing parts\0A\00"
@expect.reason.187 = internal unnamed_addr constant [23 x i8] c"expect: missing parts\0A\00"
@expect.reason.189 = internal unnamed_addr constant [23 x i8] c"expect: missing parts\0A\00"
@str.4 = internal unnamed_addr constant [10 x i8] c"_map_out_\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.4 }
@str.5 = internal unnamed_addr constant [11 x i8] c"_fold_acc_\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c"_i\00"
@str.7 = internal unnamed_addr constant [2 x i8] c"_\00"
@expect.reason.201 = internal unnamed_addr constant [19 x i8] c"expect: missing b\0A\00"
@expect.reason.206 = internal unnamed_addr constant [19 x i8] c"expect: missing b\0A\00"
@str.8 = internal unnamed_addr constant [7 x i8] c"#pipe_\00"
@str.9 = internal unnamed_addr constant [7 x i8] c"_value\00"
@str.10 = internal unnamed_addr constant [7 x i8] c"_index\00"
@clo.const.11 = internal constant { ptr, ptr } { ptr @"typedopt::#read_stage", ptr null }
@"var.typedopt::#read_stage" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"typedopt::#bare_branch", ptr null }
@"var.typedopt::#bare_branch" = global ptr null
@expect.reason.216 = internal unnamed_addr constant [20 x i8] c"expect: missing es\0A\00"
@expect.reason.218 = internal unnamed_addr constant [24 x i8] c"expect: missing params\0A\00"
@unwrap_abort_msg = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@expect.reason.232 = internal unnamed_addr constant [22 x i8] c"expect: missing body\0A\00"
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@expect.reason.234 = internal unnamed_addr constant [22 x i8] c"expect: missing cond\0A\00"
@clo.const.13 = internal constant { ptr, ptr } { ptr @"typedopt::#stage_value", ptr null }
@"var.typedopt::#stage_value" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@expect.reason.241 = internal unnamed_addr constant [21 x i8] c"expect: missing val\0A\00"
@expect.reason.243 = internal unnamed_addr constant [28 x i8] c"expect: missing downstream\0A\00"
@expect.reason.245 = internal unnamed_addr constant [21 x i8] c"expect: missing val\0A\00"
@expect.reason.248 = internal unnamed_addr constant [26 x i8] c"expect: required payload\0A\00"
@expect.reason.251 = internal unnamed_addr constant [27 x i8] c"expect: missing bind vars\0A\00"
@expect.reason.254 = internal unnamed_addr constant [22 x i8] c"expect: missing body\0A\00"
@expect.reason.256 = internal unnamed_addr constant [22 x i8] c"expect: missing cond\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"typedopt::#replace_append", ptr null }
@"var.typedopt::#replace_append" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"typedopt::#fusion_source", ptr null }
@"var.typedopt::#fusion_source" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"typedopt::#setup_has_no_bindings", ptr null }
@"var.typedopt::#setup_has_no_bindings" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"typedopt::#collect_binders", ptr null }
@"var.typedopt::#collect_binders" = global ptr null
@expect.reason.265 = internal unnamed_addr constant [23 x i8] c"expect: missing outer\0A\00"
@expect.reason.268 = internal unnamed_addr constant [27 x i8] c"expect: missing candidate\0A\00"
@expect.reason.272 = internal unnamed_addr constant [22 x i8] c"expect: missing step\0A\00"
@clo.const.18 = internal constant { ptr, ptr } { ptr @"typedopt::#fuse_pipeline", ptr null }
@"var.typedopt::#fuse_pipeline" = global ptr null
@expect.reason.281 = internal unnamed_addr constant [21 x i8] c"expect: missing out\0A\00"
@expect.reason.283 = internal unnamed_addr constant [21 x i8] c"expect: missing out\0A\00"
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
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
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
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.case, %entry
  %choice.res8 = phi i1 [ false, %entry ], [ %., %choice.case ]
  ret i1 %choice.res8

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %tag.id6 = load i64, ptr %payload.ptr, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  %. = select i1 %tag.match7, i1 true, i1 false
  br label %choice.exit
}

define internal i1 @"typedopt::#scalar_literal"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 4, label %pay.int.merge
    i64 3, label %pay.int.merge
    i64 1, label %pay.int.merge
    i64 0, label %pay.int.merge
  ]

choice.exit:                                      ; preds = %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.case10, %choice.next21, %pay.int.merge, %entry
  %choice.res50 = phi i1 [ false, %entry ], [ false, %pay.int.merge ], [ false, %choice.next21 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ], [ true, %choice.case10 ]
  ret i1 %choice.res50

pay.int.merge:                                    ; preds = %entry, %entry, %entry, %entry
  %fld.gep7 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %tag.id13 = load i64, ptr %fld.load8, align 8
  %tag.match14 = icmp eq i64 %tag.id13, 0
  br i1 %tag.match14, label %choice.case10, label %choice.exit

choice.case10:                                    ; preds = %pay.int.merge
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  %tag.id23 = load i64, ptr %payload.ptr16, align 8
  switch i64 %tag.id23, label %choice.next21 [
    i64 27, label %choice.exit
    i64 12, label %choice.exit
    i64 11, label %choice.exit
    i64 10, label %choice.exit
    i64 9, label %choice.exit
    i64 8, label %choice.exit
    i64 7, label %choice.exit
    i64 6, label %choice.exit
    i64 5, label %choice.exit
    i64 4, label %choice.exit
    i64 3, label %choice.exit
    i64 2, label %choice.exit
    i64 1, label %choice.exit
  ]

choice.next21:                                    ; preds = %choice.case10
  br label %choice.exit
}

define internal i1 @"typedopt::#same_scalar_type"(ptr %0, ptr %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.case, %choice.case5, %entry
  %choice.res15 = phi i1 [ false, %entry ], [ %enum.tag.eq, %choice.case5 ], [ false, %choice.case ]
  ret i1 %choice.res15

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %tag.id8 = load i64, ptr %fld.load3, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 0
  br i1 %tag.match9, label %choice.case5, label %choice.exit

choice.case5:                                     ; preds = %choice.case
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  %enum.l.tag = load i64, ptr %payload.ptr, align 8
  %enum.r.tag = load i64, ptr %payload.ptr11, align 8
  %enum.tag.eq = icmp eq i64 %enum.l.tag, %enum.r.tag
  br label %choice.exit
}

define internal ptr @"typedopt::#replace"(ptr %0, ptr %1) #3 {
entry:
  %fld.load = load ptr, ptr %1, align 8
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load, ptr %rec.alloc, align 8
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
  %fld.load = load ptr, ptr %1, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %common.ret

common.ret:                                       ; preds = %choice.then27, %and.165.exit, %choice.exit4, %choice.case, %entry
  %common.ret.op = phi ptr [ %1, %entry ], [ %1, %choice.case ], [ %1, %choice.exit4 ], [ %call.res33, %choice.then27 ], [ %1, %and.165.exit ]
  ret ptr %common.ret.op

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i1 }, ptr %payload.ptr, i32 0, i32 2
  %fld.load3 = load i1, ptr %fld.gep2, align 1
  br i1 %fld.load3, label %common.ret, label %choice.exit4

choice.exit4:                                     ; preds = %choice.case
  %fld.load8 = load ptr, ptr %0, align 8
  %niche.ne.null = icmp ne ptr %fld.load8, null
  br i1 %niche.ne.null, label %choice.then9, label %common.ret

choice.then9:                                     ; preds = %choice.exit4
  %fld.load14 = load ptr, ptr %payload.ptr, align 8
  %fld.load17 = load ptr, ptr %fld.load8, align 8
  %eq.lhs.len18 = load i64, ptr %fld.load14, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %eq.rhs.len20 = load i64, ptr %fld.load17, align 8
  %eq.rhs.len21 = and i64 %eq.rhs.len20, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len19, %eq.rhs.len21
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

str.eq.then:                                      ; preds = %choice.then9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %eq.rhs.data23 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data23, i64 %eq.lhs.len19)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %choice.then9, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %choice.then9 ]
  br i1 %str.eq.result, label %and.165.then, label %and.165.exit

and.165.then:                                     ; preds = %str.eq.merge
  %fld.gep26 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %fld.load8, i32 0, i32 1
  %call.res = call i1 @"typedopt::#same_scalar_type"(ptr %1, ptr %fld.gep26)
  br label %and.165.exit

and.165.exit:                                     ; preds = %str.eq.merge, %and.165.then
  %and.165.phi = phi i1 [ %call.res, %and.165.then ], [ %str.eq.result, %str.eq.merge ]
  br i1 %and.165.phi, label %choice.then27, label %common.ret

choice.then27:                                    ; preds = %and.165.exit
  %fld.gep32 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %fld.load8, i32 0, i32 1
  %call.res33 = call ptr @"typedopt::#replace"(ptr %1, ptr %fld.gep32)
  br label %common.ret
}

declare i32 @memcmp(ptr, ptr, i64) #3

define internal ptr @"typedopt::#simplify_bin"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #3 {
entry:
  %call.res = call i1 @"typedopt::#is_int"(ptr %1)
  br i1 %call.res, label %and.166.then, label %and.166.exit

and.166.then:                                     ; preds = %entry
  %call.res2 = call i1 @"typedopt::#is_int"(ptr %3)
  br label %and.166.exit

and.166.exit:                                     ; preds = %entry, %and.166.then
  %and.166.phi = phi i1 [ %call.res2, %and.166.then ], [ %call.res, %entry ]
  br i1 %and.166.phi, label %and.167.then, label %and.167.exit

and.167.then:                                     ; preds = %and.166.exit
  %call.res4 = call i1 @"typedopt::#is_int"(ptr %4)
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.166.exit, %and.167.then
  %and.167.phi = phi i1 [ %call.res4, %and.167.then ], [ %and.166.phi, %and.166.exit ]
  br i1 %and.167.phi, label %and.168.then, label %and.168.exit

and.168.then:                                     ; preds = %and.167.exit
  %tag.id = load i64, ptr %2, align 8
  switch i64 %tag.id, label %choice.next [
    i64 21, label %and.168.exit
    i64 20, label %and.168.exit
    i64 19, label %and.168.exit
    i64 2, label %and.168.exit
    i64 1, label %and.168.exit
    i64 0, label %and.168.exit
  ]

and.168.exit:                                     ; preds = %and.168.then, %and.168.then, %and.168.then, %and.168.then, %and.168.then, %and.168.then, %choice.next, %and.167.exit
  %and.168.phi = phi i1 [ %and.167.phi, %and.167.exit ], [ false, %choice.next ], [ true, %and.168.then ], [ true, %and.168.then ], [ true, %and.168.then ], [ true, %and.168.then ], [ true, %and.168.then ], [ true, %and.168.then ]
  %nottmp = xor i1 %and.168.phi, true
  br i1 %nottmp, label %choice.then, label %choice.exit16

choice.next:                                      ; preds = %and.168.then
  br label %and.168.exit

common.ret:                                       ; preds = %choice.exit235, %choice.then234, %choice.exit126, %choice.then
  %common.ret.op = phi ptr [ %rec.alloc38, %choice.then ], [ %rec.alloc187, %choice.exit126 ], [ %call.res238, %choice.then234 ], [ %rec.alloc268, %choice.exit235 ]
  ret ptr %common.ret.op

choice.then:                                      ; preds = %and.168.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 7, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %2, ptr %rec.alloc, align 8
  %rec.fld22 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld22, ptr align 1 %3, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld23, ptr align 1 %4, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep32 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %fld.gep35 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc38, align 8
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
  br label %common.ret

choice.exit16:                                    ; preds = %and.168.exit
  %call.res47 = call ptr @"typedopt::#scalar_operand"(ptr %0, ptr %3)
  %call.res50 = call ptr @"typedopt::#scalar_operand"(ptr %0, ptr %4)
  %fld.load53 = load ptr, ptr %call.res50, align 8
  %tag.id58 = load i64, ptr %fld.load53, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 0
  br i1 %tag.match59, label %choice.case55, label %choice.exit54

choice.exit54:                                    ; preds = %pay.int.load, %choice.case55, %choice.exit16
  %choice.res62 = phi i64 [ 0, %choice.exit16 ], [ %pay.int.val, %pay.int.load ], [ 0, %choice.case55 ]
  %fld.load65 = load ptr, ptr %call.res50, align 8
  %tag.id70 = load i64, ptr %fld.load65, align 8
  %tag.match71 = icmp eq i64 %tag.id70, 0
  %spec.select = select i1 %tag.match71, i1 true, i1 false
  br i1 %spec.select, label %and.169.then, label %and.169.exit

choice.case55:                                    ; preds = %choice.exit16
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %choice.exit54, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %choice.exit54

and.169.then:                                     ; preds = %choice.exit54
  %fld.load85 = load ptr, ptr %call.res47, align 8
  %tag.id90 = load i64, ptr %fld.load85, align 8
  %tag.match91 = icmp eq i64 %tag.id90, 0
  %spec.select287 = select i1 %tag.match91, i1 true, i1 false
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.then, %choice.exit54
  %and.169.phi = phi i1 [ %spec.select, %choice.exit54 ], [ %spec.select287, %and.169.then ]
  br i1 %and.169.phi, label %choice.then102, label %choice.exit103

choice.then102:                                   ; preds = %and.169.exit
  %fld.load106 = load ptr, ptr %call.res47, align 8
  %tag.id111 = load i64, ptr %fld.load106, align 8
  %tag.match112 = icmp eq i64 %tag.id111, 0
  br i1 %tag.match112, label %choice.case108, label %choice.exit107

choice.exit103:                                   ; preds = %and.169.exit
  br i1 %spec.select, label %and.170.then, label %and.170.exit

choice.exit107:                                   ; preds = %pay.int.load116, %choice.case108, %choice.then102
  %choice.res124 = phi i64 [ 0, %choice.then102 ], [ %pay.int.val119, %pay.int.load116 ], [ 0, %choice.case108 ]
  %tag.id130 = load i64, ptr %2, align 8
  switch i64 %tag.id130, label %choice.next156 [
    i64 0, label %choice.case127
    i64 1, label %choice.case134
    i64 2, label %choice.case141
    i64 19, label %choice.case148
    i64 20, label %choice.case155
  ]

choice.case108:                                   ; preds = %choice.then102
  %pay.gep113 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %payload.ptr114 = load ptr, ptr %pay.gep113, align 8
  %pay.int.null115 = icmp eq ptr %payload.ptr114, null
  br i1 %pay.int.null115, label %choice.exit107, label %pay.int.load116

pay.int.load116:                                  ; preds = %choice.case108
  %pay.int.val119 = load i64, ptr %payload.ptr114, align 8
  br label %choice.exit107

choice.exit126:                                   ; preds = %choice.next156, %choice.case155, %choice.case148, %choice.case141, %choice.case134, %choice.case127
  %choice.res164 = phi i64 [ %addtmp, %choice.case127 ], [ %subtmp, %choice.case134 ], [ %multmp, %choice.case141 ], [ %bandtmp, %choice.case148 ], [ %bortmp, %choice.case155 ], [ %bxortmp, %choice.next156 ]
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 16)
  store i64 0, ptr %enum.alloc166, align 8
  %pay.gep168 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc166, i32 0, i32 1
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 8)
  store i64 %choice.res164, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep168, align 8
  %fld.gep173 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %fld.gep176 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load177 = load ptr, ptr %fld.gep176, align 8
  %fld.gep179 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep181 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load182 = load i64, ptr %fld.gep181, align 8
  %fld.gep184 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load185 = load i64, ptr %fld.gep184, align 8
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc166, ptr %rec.alloc187, align 8
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
  br label %common.ret

choice.case127:                                   ; preds = %choice.exit107
  %addtmp = add i64 %choice.res124, %choice.res62
  br label %choice.exit126

choice.case134:                                   ; preds = %choice.exit107
  %subtmp = sub i64 %choice.res124, %choice.res62
  br label %choice.exit126

choice.case141:                                   ; preds = %choice.exit107
  %multmp = mul i64 %choice.res124, %choice.res62
  br label %choice.exit126

choice.case148:                                   ; preds = %choice.exit107
  %bandtmp = and i64 %choice.res124, %choice.res62
  br label %choice.exit126

choice.case155:                                   ; preds = %choice.exit107
  %bortmp = or i64 %choice.res124, %choice.res62
  br label %choice.exit126

choice.next156:                                   ; preds = %choice.exit107
  %bxortmp = xor i64 %choice.res124, %choice.res62
  br label %choice.exit126

and.170.then:                                     ; preds = %choice.exit103
  %fld.load198 = load ptr, ptr %call.res47, align 8
  %tag.id203 = load i64, ptr %fld.load198, align 8
  %tag.match204 = icmp eq i64 %tag.id203, 6
  %spec.select288 = select i1 %tag.match204, i1 true, i1 false
  br label %and.170.exit

and.170.exit:                                     ; preds = %and.170.then, %choice.exit103
  %and.170.phi = phi i1 [ %spec.select, %choice.exit103 ], [ %spec.select288, %and.170.then ]
  br i1 %and.170.phi, label %and.171.then, label %and.171.exit

and.171.then:                                     ; preds = %and.170.exit
  %cmptmp = icmp eq i64 %choice.res62, 0
  br i1 %cmptmp, label %and.172.then, label %and.172.exit

and.171.exit:                                     ; preds = %and.174.then, %and.172.exit, %and.170.exit
  %and.171.phi = phi i1 [ %and.170.phi, %and.170.exit ], [ %and.172.phi, %and.172.exit ], [ %., %and.174.then ]
  br i1 %and.171.phi, label %choice.then234, label %choice.exit235

and.172.then:                                     ; preds = %and.171.then
  %tag.id215 = load i64, ptr %2, align 8
  switch i64 %tag.id215, label %choice.next213 [
    i64 21, label %and.172.exit
    i64 20, label %and.172.exit
    i64 1, label %and.172.exit
    i64 0, label %and.172.exit
  ]

and.172.exit:                                     ; preds = %and.172.then, %and.172.then, %and.172.then, %and.172.then, %choice.next213, %and.171.then
  %and.172.phi = phi i1 [ false, %and.171.then ], [ false, %choice.next213 ], [ true, %and.172.then ], [ true, %and.172.then ], [ true, %and.172.then ], [ true, %and.172.then ]
  br i1 %and.172.phi, label %and.171.exit, label %or.173.else

choice.next213:                                   ; preds = %and.172.then
  br label %and.172.exit

or.173.else:                                      ; preds = %and.172.exit
  %cmptmp225 = icmp eq i64 %choice.res62, 1
  br i1 %cmptmp225, label %and.174.then, label %choice.exit235

and.174.then:                                     ; preds = %or.173.else
  %tag.id231 = load i64, ptr %2, align 8
  %tag.match232 = icmp eq i64 %tag.id231, 2
  %. = select i1 %tag.match232, i1 true, i1 false
  br label %and.171.exit

choice.then234:                                   ; preds = %and.171.exit
  %call.res238 = call ptr @"typedopt::#replace"(ptr %1, ptr %call.res47)
  br label %common.ret

choice.exit235:                                   ; preds = %or.173.else, %and.171.exit
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 16)
  store i64 7, ptr %enum.alloc241, align 8
  %pay.gep243 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc241, i32 0, i32 1
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %2, ptr %rec.alloc248, align 8
  %rec.fld250 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld250, ptr align 1 %call.res47, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld251 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld251, ptr align 1 %call.res50, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc248, ptr %pay.gep243, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load263 = load i64, ptr %fld.gep262, align 8
  %fld.gep265 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc241, ptr %rec.alloc268, align 8
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
  br label %common.ret
}

define internal ptr @"typedopt::#simplify_member"(ptr %0, ptr %1, ptr %2, i64 %3) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 11, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc, ptr align 1 %1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld4 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %2, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %3, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc20, align 8
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
  %str.len28 = load i64, ptr %2, align 8
  %str.len29 = and i64 %str.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.175

loop.header.175:                                  ; preds = %choice.exit, %entry
  %loop.idx.175.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.175.0, %str.len29
  br i1 %loop.cond, label %loop.body.175, label %loop.exit.175

loop.body.175:                                    ; preds = %loop.header.175
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %loop.idx.175.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %common.ret, label %choice.exit

loop.exit.175:                                    ; preds = %loop.header.175
  %eq.lhs.len34 = load i64, ptr %2, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len35, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else

common.ret:                                       ; preds = %str.eq.merge129, %choice.then191, %unwrap.pos.179, %or.178.else, %a.after, %choice.exit72, %choice.exit56, %choice.exit39, %loop.body.175
  %common.ret.op = phi ptr [ %rec.alloc20, %loop.body.175 ], [ %rec.alloc20, %choice.exit39 ], [ %rec.alloc20, %choice.exit56 ], [ %rec.alloc20, %choice.exit72 ], [ %rec.alloc20, %a.after ], [ %rec.alloc20, %or.178.else ], [ %call.res196, %choice.then191 ], [ %rec.alloc20, %unwrap.pos.179 ], [ %rec.alloc20, %str.eq.merge129 ]
  ret ptr %common.ret.op

choice.exit:                                      ; preds = %loop.body.175
  %loop.next = add i64 %loop.idx.175.0, 1
  br label %loop.header.175

str.eq.then:                                      ; preds = %loop.exit.175
  %eq.lhs.data37 = load ptr, ptr %s.read.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr @str.0, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit39, label %choice.else

choice.else:                                      ; preds = %loop.exit.175, %str.eq.then
  %call.res42 = call { i1, i64 } @"str::parse_int"(ptr %2)
  %ram.tag = extractvalue { i1, i64 } %call.res42, 0
  %ram.pay = extractvalue { i1, i64 } %call.res42, 1
  %choice.res = select i1 %ram.tag, i64 %ram.pay, i64 -1
  br label %choice.exit39

choice.exit39:                                    ; preds = %str.eq.then, %choice.else
  %choice.res47 = phi i64 [ %choice.res, %choice.else ], [ %3, %str.eq.then ]
  %cmptmp = icmp slt i64 %choice.res47, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit50

choice.exit50:                                    ; preds = %choice.exit39
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %tag.id = load i64, ptr %fld.load55, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.exit56

choice.exit56:                                    ; preds = %and.176.then, %choice.case, %choice.exit50
  %choice.res68 = phi i1 [ false, %choice.exit50 ], [ %nottmp67, %and.176.then ], [ false, %choice.case ]
  %nottmp70 = xor i1 %choice.res68, true
  br i1 %nottmp70, label %common.ret, label %choice.exit72

choice.case:                                      ; preds = %choice.exit50
  %pay.gep58 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep58, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %payload.ptr, i32 0, i32 1
  %fld.load62 = load i1, ptr %fld.gep61, align 1
  %nottmp63 = xor i1 %fld.load62, true
  br i1 %nottmp63, label %and.176.then, label %choice.exit56

and.176.then:                                     ; preds = %choice.case
  %fld.gep65 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %payload.ptr, i32 0, i32 5
  %fld.load66 = load i1, ptr %fld.gep65, align 1
  %nottmp67 = xor i1 %fld.load66, true
  br label %choice.exit56

choice.exit72:                                    ; preds = %choice.exit56
  %fld.load77 = load ptr, ptr %1, align 8
  %tag.id82 = load i64, ptr %fld.load77, align 8
  %tag.match83 = icmp eq i64 %tag.id82, 10
  br i1 %tag.match83, label %choice.case79, label %common.ret

choice.case79:                                    ; preds = %choice.exit72
  %pay.gep84 = getelementptr inbounds { i64, ptr }, ptr %fld.load77, i32 0, i32 1
  %payload.ptr85 = load ptr, ptr %pay.gep84, align 8
  %a.null = icmp eq ptr %payload.ptr85, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case79
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  store i64 0, ptr %a.create90, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case79
  %var.fields.0 = phi ptr [ %a.create90, %a.create ], [ %payload.ptr85, %choice.case79 ]
  %a.len.query92 = load i64, ptr %var.fields.0, align 8
  %cmptmp93 = icmp sge i64 %choice.res47, %a.len.query92
  br i1 %cmptmp93, label %common.ret, label %a.after102

a.after102:                                       ; preds = %a.after
  %arr.cycle.len111 = load i64, ptr %var.fields.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fields.0, i32 0, i32 1
  %arr.cycle.data112 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.177

loop.header.177:                                  ; preds = %choice.exit141, %a.after102
  %loop.idx.177.0 = phi i64 [ 0, %a.after102 ], [ %loop.next145, %choice.exit141 ]
  %loop.cond114 = icmp slt i64 %loop.idx.177.0, %arr.cycle.len111
  br i1 %loop.cond114, label %loop.body.177, label %a.rd.check

loop.body.177:                                    ; preds = %loop.header.177
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data112, i64 %loop.idx.177.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.load120 = load ptr, ptr %slot.i2p, align 8
  %eq.lhs.len122 = load i64, ptr %fld.load120, align 8
  %eq.lhs.len123 = and i64 %eq.lhs.len122, 281474976710655
  %eq.len126 = icmp eq i64 %eq.lhs.len123, 0
  br i1 %eq.len126, label %str.eq.then127, label %str.eq.merge129

str.eq.then127:                                   ; preds = %loop.body.177
  %eq.lhs.data130 = getelementptr inbounds { i64, ptr }, ptr %fld.load120, i32 0, i32 1
  %eq.lhs.data131 = load ptr, ptr %eq.lhs.data130, align 8
  %eq.memcmp133 = call i32 @memcmp(ptr %eq.lhs.data131, ptr @str.0, i64 %eq.lhs.len123)
  %eq.cmp.zero134 = icmp eq i32 %eq.memcmp133, 0
  br label %str.eq.merge129

str.eq.merge129:                                  ; preds = %loop.body.177, %str.eq.then127
  %str.eq.result135 = phi i1 [ %eq.cmp.zero134, %str.eq.then127 ], [ false, %loop.body.177 ]
  %str.neq = xor i1 %str.eq.result135, true
  br i1 %str.neq, label %common.ret, label %or.178.else

or.178.else:                                      ; preds = %str.eq.merge129
  %fld.gep137 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %call.res138 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep137)
  %nottmp139 = xor i1 %call.res138, true
  br i1 %nottmp139, label %common.ret, label %choice.exit141

choice.exit141:                                   ; preds = %or.178.else
  %loop.next145 = add i64 %loop.idx.177.0, 1
  br label %loop.header.177

a.rd.check:                                       ; preds = %loop.header.177
  %a.rd.len160 = load i64, ptr %var.fields.0, align 8
  %a.rd.ge0 = icmp sge i64 %choice.res47, 0
  %a.rd.lt = icmp slt i64 %choice.res47, %a.rd.len160
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fields.0, i32 0, i32 1
  %a.rd.data161 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data161, i64 %choice.res47
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 56)
  store i64 4011, ptr %err.alloc164, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep166, align 8
  %err.file.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep167, align 8
  %err.line.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 3
  store i64 84, ptr %err.line.gep168, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 4
  store i64 37, ptr %err.col.gep169, align 8
  %err.ctx.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 5
  store i64 %choice.res47, ptr %err.ctx.gep170, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 1
  store i64 %a.rd.len160, ptr %err.ctx1.gep172, align 8
  %err.p2i173 = ptrtoint ptr %err.alloc164 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i173, %a.rd.err.oob ]
  %ram.tag174 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay175 = insertvalue { i1, i64 } %ram.tag174, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.179, label %unwrap.abort.179

unwrap.pos.179:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %fld.gep187 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %call.res190 = call i1 @"typedopt::#same_scalar_type"(ptr %0, ptr %fld.gep187)
  br i1 %call.res190, label %choice.then191, label %common.ret

unwrap.abort.179:                                 ; preds = %a.rd.done
  %4 = call i64 @write(i32 2, ptr @expect.reason.180, i64 23)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep177, align 8
  %err.file.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep178, align 8
  %err.line.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep179, align 8
  %err.col.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep180, align 8
  %err.msg.len181 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len182 = and i64 %err.msg.len181, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len182 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data183 = load ptr, ptr %err.msg.data, align 8
  %err.file.len184 = load i64, ptr %err.file.struct, align 8
  %err.file.len185 = and i64 %err.file.len184, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len185 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data186 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.179
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.179
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data183, i32 %err.file.len32, ptr %err.file.data186, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then191:                                   ; preds = %unwrap.pos.179
  %call.res196 = call ptr @"typedopt::#replace"(ptr %0, ptr %fld.gep187)
  br label %common.ret
}

declare i1 @"str::is_digit"(i64) #3

declare { i1, i64 } @"str::parse_int"(ptr) #3

declare i64 @write(i32, ptr, i64)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

define internal i1 @"typedopt::#wide_int"(ptr %0) #3 {
entry:
  %call.res = call i1 @"typedopt::#is_int"(ptr %0)
  br i1 %call.res, label %and.181.then, label %and.181.exit

and.181.then:                                     ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp eq i64 %fld.load, 8
  br label %and.181.exit

and.181.exit:                                     ; preds = %entry, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp, %and.181.then ], [ %call.res, %entry ]
  ret i1 %and.181.phi
}

define internal i1 @"typedopt::#int_array"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.case12, %and.182.then, %choice.case, %entry
  %choice.res29 = phi i1 [ false, %entry ], [ %., %choice.case ], [ false, %and.182.then ], [ %.30, %choice.case12 ]
  ret i1 %choice.res29

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load = load ptr, ptr %payload.ptr, align 8
  %tag.id6 = load i64, ptr %fld.load, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  %. = select i1 %tag.match7, i1 true, i1 false
  br i1 %., label %and.182.then, label %choice.exit

and.182.then:                                     ; preds = %choice.case
  %fld.gep9 = getelementptr inbounds { ptr, ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %tag.id15 = load i64, ptr %fld.load10, align 8
  %tag.match16 = icmp eq i64 %tag.id15, 0
  br i1 %tag.match16, label %choice.case12, label %choice.exit

choice.case12:                                    ; preds = %and.182.then
  %pay.gep17 = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %payload.ptr18 = load ptr, ptr %pay.gep17, align 8
  %tag.id25 = load i64, ptr %payload.ptr18, align 8
  %tag.match26 = icmp eq i64 %tag.id25, 1
  %.30 = select i1 %tag.match26, i1 true, i1 false
  br label %choice.exit
}

define internal ptr @"typedopt::#read_var"(ptr %0, ptr %1, i1 %2) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 6, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i1 }, ptr null, i32 1) to i64))
  store ptr %0, ptr %rec.alloc, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %2, ptr %rec.fld4, align 1
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %fld.gep16 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc19, align 8
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
  %call.res = call ptr @"tast::mk_lit_unit"(i64 0, i64 0)
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res, i32 0, i32 3
  %call.res9 = call ptr @"tast::mk_typed_assign"(ptr %0, i1 %1, i1 false, i1 false, i1 false, ptr %2, ptr %fld.load, ptr %fld.load6, ptr %fld.gep8, i64 0, i64 0)
  ret ptr %call.res9
}

declare ptr @"tast::mk_lit_unit"(i64, i64) #3

declare ptr @"tast::mk_typed_assign"(ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64) #3

define internal ptr @"typedopt::#read_stage"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 17
  %spec.select1090 = select i1 %tag.match, i1 true, i1 false
  %nottmp = xor i1 %spec.select1090, true
  br i1 %nottmp, label %common.ret, label %choice.exit1

common.ret:                                       ; preds = %choice.case382, %concat.tot.len1057, %choice.exit616, %or.204.exit, %a.after639, %or.199.exit, %choice.exit397, %or.197.else, %choice.exit376, %and.196.then, %and.194.exit, %choice.exit280, %str.eq.then, %a.after28, %entry
  %common.ret.op = phi ptr [ null, %entry ], [ null, %a.after28 ], [ null, %str.eq.then ], [ null, %choice.exit280 ], [ null, %and.194.exit ], [ null, %and.196.then ], [ null, %choice.exit376 ], [ null, %or.197.else ], [ null, %choice.exit397 ], [ null, %or.199.exit ], [ null, %a.after639 ], [ null, %or.204.exit ], [ %rec.alloc1072, %concat.tot.len1057 ], [ null, %choice.exit616 ], [ null, %choice.case382 ]
  ret ptr %common.ret.op

choice.exit1:                                     ; preds = %entry
  %fld.load4 = load ptr, ptr %0, align 8
  %tag.id9 = load i64, ptr %fld.load4, align 8
  %tag.match10 = icmp eq i64 %tag.id9, 17
  br i1 %tag.match10, label %choice.case6, label %choice.next7

choice.exit5:                                     ; preds = %choice.case6, %a.create, %choice.next7
  %choice.res23 = phi ptr [ %a.new, %choice.next7 ], [ %a.create15, %a.create ], [ %payload.ptr12, %choice.case6 ]
  %a.null26 = icmp eq ptr %choice.res23, null
  br i1 %a.null26, label %a.create27, label %a.after28

choice.case6:                                     ; preds = %choice.exit1
  %pay.gep11 = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 1
  %payload.ptr12 = load ptr, ptr %pay.gep11, align 8
  %a.null = icmp eq ptr %payload.ptr12, null
  br i1 %a.null, label %a.create, label %choice.exit5

choice.next7:                                     ; preds = %choice.exit1
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  store i64 0, ptr %a.new, align 8
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
  store i64 0, ptr %a.create15, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %choice.exit5

a.create27:                                       ; preds = %choice.exit5
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  store i64 0, ptr %a.create30, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  br label %a.after28

a.after28:                                        ; preds = %a.create27, %choice.exit5
  %var.parts.0 = phi ptr [ %a.create30, %a.create27 ], [ %choice.res23, %choice.exit5 ]
  %a.len.query37 = load i64, ptr %var.parts.0, align 8
  %cmptmp = icmp ne i64 %a.len.query37, 3
  br i1 %cmptmp, label %common.ret, label %a.rd.check

a.rd.check:                                       ; preds = %a.after28
  %a.rd.len54 = load i64, ptr %var.parts.0, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len54
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %a.rd.data55 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data55, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 56)
  store i64 4011, ptr %err.alloc58, align 8
  %err.msg.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep60, align 8
  %err.file.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep61, align 8
  %err.line.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 3
  store i64 118, ptr %err.line.gep62, align 8
  %err.col.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 4
  store i64 22, ptr %err.col.gep63, align 8
  %err.ctx.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc58, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep64, align 8
  %err.ctx1.gep66 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep64, i32 0, i32 1
  store i64 %a.rd.len54, ptr %err.ctx1.gep66, align 8
  %err.p2i67 = ptrtoint ptr %err.alloc58 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i67, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.184, label %unwrap.abort.184

unwrap.pos.184:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %a.rd.len99 = load i64, ptr %var.parts.0, align 8
  %a.rd.lt100 = icmp slt i64 1, %a.rd.len99
  br i1 %a.rd.lt100, label %a.rd.ok94, label %a.rd.err.oob96

unwrap.abort.184:                                 ; preds = %a.rd.done
  %1 = call i64 @write(i32 2, ptr @expect.reason.185, i64 22)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep69, align 8
  %err.file.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep70, align 8
  %err.line.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep71, align 8
  %err.col.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep72, align 8
  %err.msg.len73 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len74 = and i64 %err.msg.len73, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len74 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data75 = load ptr, ptr %err.msg.data, align 8
  %err.file.len76 = load i64, ptr %err.file.struct, align 8
  %err.file.len77 = and i64 %err.file.len76, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len77 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data78 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.184
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.184
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data75, i32 %err.file.len32, ptr %err.file.data78, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.rd.ok94:                                        ; preds = %unwrap.pos.184
  %a.rd.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %a.rd.data103 = load ptr, ptr %a.rd.data102, align 8
  %a.rd.elem.gep104 = getelementptr i64, ptr %a.rd.data103, i64 1
  %a.rd.elem105 = load i64, ptr %a.rd.elem.gep104, align 8
  br label %a.rd.done97

a.rd.err.oob96:                                   ; preds = %unwrap.pos.184
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 56)
  store i64 4011, ptr %err.alloc118, align 8
  %err.msg.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep120, align 8
  %err.file.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep121, align 8
  %err.line.gep122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 3
  store i64 119, ptr %err.line.gep122, align 8
  %err.col.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 4
  store i64 23, ptr %err.col.gep123, align 8
  %err.ctx.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc118, i32 0, i32 5
  store i64 1, ptr %err.ctx.gep124, align 8
  %err.ctx1.gep126 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep124, i32 0, i32 1
  store i64 %a.rd.len99, ptr %err.ctx1.gep126, align 8
  %err.p2i127 = ptrtoint ptr %err.alloc118 to i64
  br label %a.rd.done97

a.rd.done97:                                      ; preds = %a.rd.err.oob96, %a.rd.ok94
  %a.rd.tag128 = phi i1 [ true, %a.rd.ok94 ], [ false, %a.rd.err.oob96 ]
  %a.rd.pay129 = phi i64 [ %a.rd.elem105, %a.rd.ok94 ], [ %err.p2i127, %a.rd.err.oob96 ]
  %ram.tag130 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag128, 0
  %ram.pay131 = insertvalue { i1, i64 } %ram.tag130, i64 %a.rd.pay129, 1
  br i1 %a.rd.tag128, label %unwrap.pos.186, label %unwrap.abort.186

unwrap.pos.186:                                   ; preds = %a.rd.done97
  %pay.ptr165 = inttoptr i64 %a.rd.pay129 to ptr
  %a.rd.len186 = load i64, ptr %var.parts.0, align 8
  %a.rd.lt187 = icmp slt i64 2, %a.rd.len186
  br i1 %a.rd.lt187, label %a.rd.ok181, label %a.rd.err.oob183

unwrap.abort.186:                                 ; preds = %a.rd.done97
  %2 = call i64 @write(i32 2, ptr @expect.reason.187, i64 22)
  %err.ptr134 = inttoptr i64 %a.rd.pay129 to ptr
  %err.code136 = load i64, ptr %err.ptr134, align 8
  %err.msg.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 1
  %err.msg.struct138 = load ptr, ptr %err.msg.gep137, align 8
  %err.file.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 2
  %err.file.struct140 = load ptr, ptr %err.file.gep139, align 8
  %err.line.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 3
  %err.line142 = load i64, ptr %err.line.gep141, align 8
  %err.col.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr134, i32 0, i32 4
  %err.col144 = load i64, ptr %err.col.gep143, align 8
  %err.msg.len146 = load i64, ptr %err.msg.struct138, align 8
  %err.msg.len147 = and i64 %err.msg.len146, 281474976710655
  %err.msg.len32148 = trunc i64 %err.msg.len147 to i32
  %err.msg.data149 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct138, i32 0, i32 1
  %err.msg.data150 = load ptr, ptr %err.msg.data149, align 8
  %err.file.len152 = load i64, ptr %err.file.struct140, align 8
  %err.file.len153 = and i64 %err.file.len152, 281474976710655
  %err.file.len32154 = trunc i64 %err.file.len153 to i32
  %err.file.data155 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct140, i32 0, i32 1
  %err.file.data156 = load ptr, ptr %err.file.data155, align 8
  %err.thread.rec157 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread158 = icmp ne ptr %err.thread.rec157, null
  br i1 %err.is.thread158, label %err.thread159, label %err.normal160

err.thread159:                                    ; preds = %unwrap.abort.186
  %err.haserr.gep161 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec157, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep161, align 8
  %err.err.gep162 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec157, i32 0, i32 7
  store ptr %err.ptr134, ptr %err.err.gep162, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal160:                                    ; preds = %unwrap.abort.186
  %err.panic.printf163 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code136, i32 %err.msg.len32148, ptr %err.msg.data150, i32 %err.file.len32154, ptr %err.file.data156, i64 %err.line142, i64 %err.col144)
  call void @exit(i32 1)
  unreachable

a.rd.ok181:                                       ; preds = %unwrap.pos.186
  %a.rd.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %a.rd.data190 = load ptr, ptr %a.rd.data189, align 8
  %a.rd.elem.gep191 = getelementptr i64, ptr %a.rd.data190, i64 2
  %a.rd.elem192 = load i64, ptr %a.rd.elem.gep191, align 8
  br label %a.rd.done184

a.rd.err.oob183:                                  ; preds = %unwrap.pos.186
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  store i64 4011, ptr %err.alloc205, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 120, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 24, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  store i64 2, ptr %err.ctx.gep211, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 %a.rd.len186, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done184

a.rd.done184:                                     ; preds = %a.rd.err.oob183, %a.rd.ok181
  %a.rd.tag215 = phi i1 [ true, %a.rd.ok181 ], [ false, %a.rd.err.oob183 ]
  %a.rd.pay216 = phi i64 [ %a.rd.elem192, %a.rd.ok181 ], [ %err.p2i214, %a.rd.err.oob183 ]
  %ram.tag217 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag215, 0
  %ram.pay218 = insertvalue { i1, i64 } %ram.tag217, i64 %a.rd.pay216, 1
  br i1 %a.rd.tag215, label %unwrap.pos.188, label %unwrap.abort.188

unwrap.pos.188:                                   ; preds = %a.rd.done184
  %pay.ptr252 = inttoptr i64 %a.rd.pay216 to ptr
  %fld.load255 = load ptr, ptr %pay.ptr252, align 8
  %tag.id260 = load i64, ptr %fld.load255, align 8
  %tag.match261 = icmp eq i64 %tag.id260, 6
  br i1 %tag.match261, label %choice.case257, label %choice.exit256

unwrap.abort.188:                                 ; preds = %a.rd.done184
  %3 = call i64 @write(i32 2, ptr @expect.reason.189, i64 22)
  %err.ptr221 = inttoptr i64 %a.rd.pay216 to ptr
  %err.code223 = load i64, ptr %err.ptr221, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 1
  %err.msg.struct225 = load ptr, ptr %err.msg.gep224, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 2
  %err.file.struct227 = load ptr, ptr %err.file.gep226, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 3
  %err.line229 = load i64, ptr %err.line.gep228, align 8
  %err.col.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 4
  %err.col231 = load i64, ptr %err.col.gep230, align 8
  %err.msg.len233 = load i64, ptr %err.msg.struct225, align 8
  %err.msg.len234 = and i64 %err.msg.len233, 281474976710655
  %err.msg.len32235 = trunc i64 %err.msg.len234 to i32
  %err.msg.data236 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 1
  %err.msg.data237 = load ptr, ptr %err.msg.data236, align 8
  %err.file.len239 = load i64, ptr %err.file.struct227, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32241 = trunc i64 %err.file.len240 to i32
  %err.file.data242 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 1
  %err.file.data243 = load ptr, ptr %err.file.data242, align 8
  %err.thread.rec244 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread245 = icmp ne ptr %err.thread.rec244, null
  br i1 %err.is.thread245, label %err.thread246, label %err.normal247

err.thread246:                                    ; preds = %unwrap.abort.188
  %err.haserr.gep248 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep248, align 8
  %err.err.gep249 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 7
  store ptr %err.ptr221, ptr %err.err.gep249, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal247:                                    ; preds = %unwrap.abort.188
  %err.panic.printf250 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code223, i32 %err.msg.len32235, ptr %err.msg.data237, i32 %err.file.len32241, ptr %err.file.data243, i64 %err.line229, i64 %err.col231)
  call void @exit(i32 1)
  unreachable

choice.exit256:                                   ; preds = %unwrap.pos.188, %choice.case257
  %choice.res268 = phi ptr [ %fld.load267, %choice.case257 ], [ @str.0.struct, %unwrap.pos.188 ]
  %eq.lhs.len270 = load i64, ptr %choice.res268, align 8
  %eq.lhs.len271 = and i64 %eq.lhs.len270, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len271, 0
  br i1 %eq.len, label %str.eq.then, label %choice.exit275

choice.case257:                                   ; preds = %unwrap.pos.188
  %pay.gep262 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 1
  %payload.ptr263 = load ptr, ptr %pay.gep262, align 8
  %fld.load267 = load ptr, ptr %payload.ptr263, align 8
  br label %choice.exit256

str.eq.then:                                      ; preds = %choice.exit256
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res268, i32 0, i32 1
  %eq.lhs.data273 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data273, ptr @str.0, i64 %eq.lhs.len271)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %common.ret, label %choice.exit275

choice.exit275:                                   ; preds = %choice.exit256, %str.eq.then
  %fld.load279 = load ptr, ptr %pay.ptr, align 8
  %tag.id284 = load i64, ptr %fld.load279, align 8
  %tag.match285 = icmp eq i64 %tag.id284, 18
  br i1 %tag.match285, label %choice.case281, label %choice.exit280

choice.exit280:                                   ; preds = %or.193.exit, %and.190.exit, %choice.exit275
  %choice.res323 = phi i1 [ false, %choice.exit275 ], [ %nottmp322, %or.193.exit ], [ %and.190.phi, %and.190.exit ]
  %nottmp325 = xor i1 %choice.res323, true
  br i1 %nottmp325, label %common.ret, label %choice.exit327

choice.case281:                                   ; preds = %choice.exit275
  %pay.gep286 = getelementptr inbounds { i64, ptr }, ptr %fld.load279, i32 0, i32 1
  %payload.ptr287 = load ptr, ptr %pay.gep286, align 8
  %fld.load291 = load ptr, ptr %payload.ptr287, align 8
  %eq.lhs.len294 = load i64, ptr %fld.load291, align 8
  %eq.lhs.len295 = and i64 %eq.lhs.len294, 281474976710655
  %eq.rhs.len297 = load i64, ptr %choice.res268, align 8
  %eq.rhs.len298 = and i64 %eq.rhs.len297, 281474976710655
  %eq.len299 = icmp eq i64 %eq.lhs.len295, %eq.rhs.len298
  br i1 %eq.len299, label %str.eq.then300, label %str.eq.merge302

str.eq.then300:                                   ; preds = %choice.case281
  %eq.lhs.data303 = getelementptr inbounds { i64, ptr }, ptr %fld.load291, i32 0, i32 1
  %eq.lhs.data304 = load ptr, ptr %eq.lhs.data303, align 8
  %eq.rhs.data305 = getelementptr inbounds { i64, ptr }, ptr %choice.res268, i32 0, i32 1
  %eq.rhs.data306 = load ptr, ptr %eq.rhs.data305, align 8
  %eq.memcmp307 = call i32 @memcmp(ptr %eq.lhs.data304, ptr %eq.rhs.data306, i64 %eq.lhs.len295)
  %eq.cmp.zero308 = icmp eq i32 %eq.memcmp307, 0
  br label %str.eq.merge302

str.eq.merge302:                                  ; preds = %choice.case281, %str.eq.then300
  %str.eq.result309 = phi i1 [ %eq.cmp.zero308, %str.eq.then300 ], [ false, %choice.case281 ]
  br i1 %str.eq.result309, label %and.190.then, label %and.190.exit

and.190.then:                                     ; preds = %str.eq.merge302
  %fld.gep311 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr287, i32 0, i32 1
  %fld.load312 = load i1, ptr %fld.gep311, align 1
  br label %and.190.exit

and.190.exit:                                     ; preds = %str.eq.merge302, %and.190.then
  %and.190.phi = phi i1 [ %fld.load312, %and.190.then ], [ %str.eq.result309, %str.eq.merge302 ]
  br i1 %and.190.phi, label %and.191.then, label %choice.exit280

and.191.then:                                     ; preds = %and.190.exit
  %fld.gep314 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr287, i32 0, i32 2
  %fld.load315 = load i1, ptr %fld.gep314, align 1
  br i1 %fld.load315, label %or.192.exit, label %or.192.else

or.192.else:                                      ; preds = %and.191.then
  %fld.gep317 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr287, i32 0, i32 3
  %fld.load318 = load i1, ptr %fld.gep317, align 1
  br label %or.192.exit

or.192.exit:                                      ; preds = %and.191.then, %or.192.else
  %or.192.phi = phi i1 [ %fld.load318, %or.192.else ], [ %fld.load315, %and.191.then ]
  br i1 %or.192.phi, label %or.193.exit, label %or.193.else

or.193.else:                                      ; preds = %or.192.exit
  %fld.gep320 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr287, i32 0, i32 4
  %fld.load321 = load i1, ptr %fld.gep320, align 1
  br label %or.193.exit

or.193.exit:                                      ; preds = %or.192.exit, %or.193.else
  %or.193.phi = phi i1 [ %fld.load321, %or.193.else ], [ %or.192.phi, %or.192.exit ]
  %nottmp322 = xor i1 %or.193.phi, true
  br label %choice.exit280

choice.exit327:                                   ; preds = %choice.exit280
  %fld.load331 = load ptr, ptr %pay.ptr, align 8
  %tag.id336 = load i64, ptr %fld.load331, align 8
  %tag.match337 = icmp eq i64 %tag.id336, 18
  br i1 %tag.match337, label %choice.case333, label %choice.exit332

choice.exit332:                                   ; preds = %choice.exit327, %choice.case333
  %choice.res345 = phi ptr [ %fld.gep343, %choice.case333 ], [ %pay.ptr, %choice.exit327 ]
  %fld.gep347 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load348 = load ptr, ptr %fld.gep347, align 8
  %call.res = call i1 @"typedopt::#int_array"(ptr %fld.load348)
  br i1 %call.res, label %and.194.then, label %and.194.exit

choice.case333:                                   ; preds = %choice.exit327
  %pay.gep338 = getelementptr inbounds { i64, ptr }, ptr %fld.load331, i32 0, i32 1
  %payload.ptr339 = load ptr, ptr %pay.gep338, align 8
  %fld.gep343 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr339, i32 0, i32 5
  br label %choice.exit332

and.194.then:                                     ; preds = %choice.exit332
  %fld.load351 = load ptr, ptr %choice.res345, align 8
  %tag.id356 = load i64, ptr %fld.load351, align 8
  %tag.match357 = icmp eq i64 %tag.id356, 24
  %spec.select1091 = select i1 %tag.match357, i1 true, i1 false
  br label %and.194.exit

and.194.exit:                                     ; preds = %and.194.then, %choice.exit332
  %and.194.phi = phi i1 [ %call.res, %choice.exit332 ], [ %spec.select1091, %and.194.then ]
  %str.4.struct.str.5.struct = select i1 %and.194.phi, ptr @str.4.struct, ptr @str.5.struct
  %call.res368 = call i1 @"str::starts_with"(ptr %choice.res268, ptr %str.4.struct.str.5.struct)
  %nottmp369 = xor i1 %call.res368, true
  br i1 %nottmp369, label %common.ret, label %or.195.else

or.195.else:                                      ; preds = %and.194.exit
  %nottmp371 = xor i1 %and.194.phi, true
  br i1 %nottmp371, label %and.196.then, label %choice.exit376

and.196.then:                                     ; preds = %or.195.else
  %call.res373 = call i1 @"typedopt::#wide_int"(ptr %0)
  %nottmp374 = xor i1 %call.res373, true
  br i1 %nottmp374, label %common.ret, label %choice.exit376

choice.exit376:                                   ; preds = %or.195.else, %and.196.then
  %fld.load380 = load ptr, ptr %pay.ptr165, align 8
  %tag.id385 = load i64, ptr %fld.load380, align 8
  %tag.match386 = icmp eq i64 %tag.id385, 19
  br i1 %tag.match386, label %choice.case382, label %common.ret

choice.case382:                                   ; preds = %choice.exit376
  %pay.gep387 = getelementptr inbounds { i64, ptr }, ptr %fld.load380, i32 0, i32 1
  %payload.ptr388 = load ptr, ptr %pay.gep387, align 8
  %fld.gep391 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr388, i32 0, i32 2
  %fld.load392 = load ptr, ptr %fld.gep391, align 8
  %niche.ne.null = icmp ne ptr %fld.load392, null
  br i1 %niche.ne.null, label %common.ret, label %or.197.else

or.197.else:                                      ; preds = %choice.case382
  %fld.gep394 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr388, i32 0, i32 3
  %fld.load395 = load i1, ptr %fld.gep394, align 1
  br i1 %fld.load395, label %common.ret, label %choice.exit397

choice.exit397:                                   ; preds = %or.197.else
  %fld.gep400 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr388, i32 0, i32 1
  %fld.load402 = load ptr, ptr %fld.gep400, align 8
  %tag.id407 = load i64, ptr %fld.load402, align 8
  %tag.match408 = icmp eq i64 %tag.id407, 16
  br i1 %tag.match408, label %choice.case404, label %common.ret

choice.case404:                                   ; preds = %choice.exit397
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %fld.load402, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  %fld.load414 = load ptr, ptr %payload.ptr410, align 8
  %a.rd.nonnull415 = icmp ne ptr %fld.load414, null
  br i1 %a.rd.nonnull415, label %a.rd.check416, label %a.rd.err.null418

a.rd.check416:                                    ; preds = %choice.case404
  %a.rd.len422 = load i64, ptr %fld.load414, align 8
  %a.rd.lt423 = icmp slt i64 0, %a.rd.len422
  br i1 %a.rd.lt423, label %a.rd.ok417, label %a.rd.err.oob419

a.rd.ok417:                                       ; preds = %a.rd.check416
  %a.rd.data425 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load414, i32 0, i32 1
  %a.rd.data426 = load ptr, ptr %a.rd.data425, align 8
  %a.rd.elem428 = load i64, ptr %a.rd.data426, align 8
  br label %a.rd.done420

a.rd.err.null418:                                 ; preds = %choice.case404
  %arena.cur429 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc430 = call ptr @dva_arena_alloc(ptr %arena.cur429, i64 56)
  store i64 4011, ptr %err.alloc430, align 8
  %err.msg.gep432 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep432, align 8
  %err.file.gep433 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep433, align 8
  %err.line.gep434 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 3
  store i64 0, ptr %err.line.gep434, align 8
  %err.col.gep435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 4
  store i64 0, ptr %err.col.gep435, align 8
  %err.ctx.gep436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc430, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep436, align 8
  %err.ctx1.gep438 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep436, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep438, align 8
  %err.p2i439 = ptrtoint ptr %err.alloc430 to i64
  br label %a.rd.done420

a.rd.err.oob419:                                  ; preds = %a.rd.check416
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 56)
  store i64 4011, ptr %err.alloc441, align 8
  %err.msg.gep443 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep443, align 8
  %err.file.gep444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep444, align 8
  %err.line.gep445 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 3
  store i64 0, ptr %err.line.gep445, align 8
  %err.col.gep446 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 4
  store i64 0, ptr %err.col.gep446, align 8
  %err.ctx.gep447 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc441, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep447, align 8
  %err.ctx1.gep449 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep447, i32 0, i32 1
  store i64 %a.rd.len422, ptr %err.ctx1.gep449, align 8
  %err.p2i450 = ptrtoint ptr %err.alloc441 to i64
  br label %a.rd.done420

a.rd.done420:                                     ; preds = %a.rd.err.oob419, %a.rd.err.null418, %a.rd.ok417
  %a.rd.tag451 = phi i1 [ true, %a.rd.ok417 ], [ false, %a.rd.err.null418 ], [ false, %a.rd.err.oob419 ]
  %a.rd.pay452 = phi i64 [ %a.rd.elem428, %a.rd.ok417 ], [ %err.p2i439, %a.rd.err.null418 ], [ %err.p2i450, %a.rd.err.oob419 ]
  %ram.tag453 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag451, 0
  %ram.pay454 = insertvalue { i1, i64 } %ram.tag453, i64 %a.rd.pay452, 1
  %pay.ptr460 = inttoptr i64 %a.rd.pay452 to ptr
  %choice.res465 = select i1 %a.rd.tag451, ptr %pay.ptr460, ptr @str.0.struct
  %fld.load468 = load ptr, ptr %payload.ptr410, align 8
  %a.rd.nonnull469 = icmp ne ptr %fld.load468, null
  br i1 %a.rd.nonnull469, label %a.rd.check470, label %a.rd.err.null472

a.rd.check470:                                    ; preds = %a.rd.done420
  %a.rd.len476 = load i64, ptr %fld.load468, align 8
  %a.rd.lt477 = icmp slt i64 1, %a.rd.len476
  br i1 %a.rd.lt477, label %a.rd.ok471, label %a.rd.err.oob473

a.rd.ok471:                                       ; preds = %a.rd.check470
  %a.rd.data479 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load468, i32 0, i32 1
  %a.rd.data480 = load ptr, ptr %a.rd.data479, align 8
  %a.rd.elem.gep481 = getelementptr i64, ptr %a.rd.data480, i64 1
  %a.rd.elem482 = load i64, ptr %a.rd.elem.gep481, align 8
  br label %a.rd.done474

a.rd.err.null472:                                 ; preds = %a.rd.done420
  %arena.cur483 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 56)
  store i64 4011, ptr %err.alloc484, align 8
  %err.msg.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep486, align 8
  %err.file.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep487, align 8
  %err.line.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 3
  store i64 0, ptr %err.line.gep488, align 8
  %err.col.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 4
  store i64 0, ptr %err.col.gep489, align 8
  %err.ctx.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc484, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep490, align 8
  %err.ctx1.gep492 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep490, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep492, align 8
  %err.p2i493 = ptrtoint ptr %err.alloc484 to i64
  br label %a.rd.done474

a.rd.err.oob473:                                  ; preds = %a.rd.check470
  %arena.cur494 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc495 = call ptr @dva_arena_alloc(ptr %arena.cur494, i64 56)
  store i64 4011, ptr %err.alloc495, align 8
  %err.msg.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep497, align 8
  %err.file.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep498, align 8
  %err.line.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 3
  store i64 0, ptr %err.line.gep499, align 8
  %err.col.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 4
  store i64 0, ptr %err.col.gep500, align 8
  %err.ctx.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc495, i32 0, i32 5
  store i64 1, ptr %err.ctx.gep501, align 8
  %err.ctx1.gep503 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep501, i32 0, i32 1
  store i64 %a.rd.len476, ptr %err.ctx1.gep503, align 8
  %err.p2i504 = ptrtoint ptr %err.alloc495 to i64
  br label %a.rd.done474

a.rd.done474:                                     ; preds = %a.rd.err.oob473, %a.rd.err.null472, %a.rd.ok471
  %a.rd.tag505 = phi i1 [ true, %a.rd.ok471 ], [ false, %a.rd.err.null472 ], [ false, %a.rd.err.oob473 ]
  %a.rd.pay506 = phi i64 [ %a.rd.elem482, %a.rd.ok471 ], [ %err.p2i493, %a.rd.err.null472 ], [ %err.p2i504, %a.rd.err.oob473 ]
  %ram.tag507 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag505, 0
  %ram.pay508 = insertvalue { i1, i64 } %ram.tag507, i64 %a.rd.pay506, 1
  %pay.ptr514 = inttoptr i64 %a.rd.pay506 to ptr
  %choice.res519 = select i1 %a.rd.tag505, ptr %pay.ptr514, ptr @str.0.struct
  %eq.lhs.len525 = load i64, ptr %choice.res465, align 8
  %eq.lhs.len526 = and i64 %eq.lhs.len525, 281474976710655
  %eq.len529 = icmp eq i64 %eq.lhs.len526, 0
  br i1 %eq.len529, label %str.eq.then530, label %str.eq.merge532

str.eq.then530:                                   ; preds = %a.rd.done474
  %eq.lhs.data533 = getelementptr inbounds { i64, ptr }, ptr %choice.res465, i32 0, i32 1
  %eq.lhs.data534 = load ptr, ptr %eq.lhs.data533, align 8
  %eq.memcmp536 = call i32 @memcmp(ptr %eq.lhs.data534, ptr @str.0, i64 %eq.lhs.len526)
  %eq.cmp.zero537 = icmp eq i32 %eq.memcmp536, 0
  br label %str.eq.merge532

str.eq.merge532:                                  ; preds = %a.rd.done474, %str.eq.then530
  %str.eq.result538 = phi i1 [ %eq.cmp.zero537, %str.eq.then530 ], [ false, %a.rd.done474 ]
  %eq.lhs.len540 = load i64, ptr %choice.res465, align 8
  %eq.lhs.len541 = and i64 %eq.lhs.len540, 281474976710655
  %eq.len544 = icmp eq i64 %eq.lhs.len541, 2
  br i1 %eq.len544, label %str.eq.then545, label %str.eq.merge547

str.eq.then545:                                   ; preds = %str.eq.merge532
  %eq.lhs.data548 = getelementptr inbounds { i64, ptr }, ptr %choice.res465, i32 0, i32 1
  %eq.lhs.data549 = load ptr, ptr %eq.lhs.data548, align 8
  %eq.memcmp551 = call i32 @memcmp(ptr %eq.lhs.data549, ptr @str.6, i64 %eq.lhs.len541)
  %eq.cmp.zero552 = icmp eq i32 %eq.memcmp551, 0
  br label %str.eq.merge547

str.eq.merge547:                                  ; preds = %str.eq.merge532, %str.eq.then545
  %str.eq.result553 = phi i1 [ %eq.cmp.zero552, %str.eq.then545 ], [ false, %str.eq.merge532 ]
  %case.or = or i1 %str.eq.result538, %str.eq.result553
  %spec.select = select i1 %case.or, i1 true, i1 false
  br i1 %spec.select, label %or.198.exit, label %or.198.else

or.198.else:                                      ; preds = %str.eq.merge547
  %eq.lhs.len560 = load i64, ptr %choice.res519, align 8
  %eq.lhs.len561 = and i64 %eq.lhs.len560, 281474976710655
  %eq.len564 = icmp eq i64 %eq.lhs.len561, 1
  br i1 %eq.len564, label %str.eq.then565, label %str.eq.merge567

or.198.exit:                                      ; preds = %str.eq.merge582, %str.eq.merge547
  %or.198.phi = phi i1 [ %spec.select, %str.eq.merge547 ], [ %spec.select1088, %str.eq.merge582 ]
  br i1 %or.198.phi, label %or.199.exit, label %or.199.else

str.eq.then565:                                   ; preds = %or.198.else
  %eq.lhs.data568 = getelementptr inbounds { i64, ptr }, ptr %choice.res519, i32 0, i32 1
  %eq.lhs.data569 = load ptr, ptr %eq.lhs.data568, align 8
  %eq.memcmp571 = call i32 @memcmp(ptr %eq.lhs.data569, ptr @str.7, i64 %eq.lhs.len561)
  %eq.cmp.zero572 = icmp eq i32 %eq.memcmp571, 0
  br label %str.eq.merge567

str.eq.merge567:                                  ; preds = %or.198.else, %str.eq.then565
  %str.eq.result573 = phi i1 [ %eq.cmp.zero572, %str.eq.then565 ], [ false, %or.198.else ]
  %eq.lhs.len575 = load i64, ptr %choice.res519, align 8
  %eq.lhs.len576 = and i64 %eq.lhs.len575, 281474976710655
  %eq.len579 = icmp eq i64 %eq.lhs.len576, 2
  br i1 %eq.len579, label %str.eq.then580, label %str.eq.merge582

str.eq.then580:                                   ; preds = %str.eq.merge567
  %eq.lhs.data583 = getelementptr inbounds { i64, ptr }, ptr %choice.res519, i32 0, i32 1
  %eq.lhs.data584 = load ptr, ptr %eq.lhs.data583, align 8
  %eq.memcmp586 = call i32 @memcmp(ptr %eq.lhs.data584, ptr @str.6, i64 %eq.lhs.len576)
  %eq.cmp.zero587 = icmp eq i32 %eq.memcmp586, 0
  br label %str.eq.merge582

str.eq.merge582:                                  ; preds = %str.eq.merge567, %str.eq.then580
  %str.eq.result588 = phi i1 [ %eq.cmp.zero587, %str.eq.then580 ], [ false, %str.eq.merge567 ]
  %case.or589 = or i1 %str.eq.result573, %str.eq.result588
  %spec.select1088 = select i1 %case.or589, i1 true, i1 false
  br label %or.198.exit

or.199.else:                                      ; preds = %or.198.exit
  %eq.lhs.len594 = load i64, ptr %choice.res465, align 8
  %eq.lhs.len595 = and i64 %eq.lhs.len594, 281474976710655
  %eq.rhs.len597 = load i64, ptr %choice.res519, align 8
  %eq.rhs.len598 = and i64 %eq.rhs.len597, 281474976710655
  %eq.len599 = icmp eq i64 %eq.lhs.len595, %eq.rhs.len598
  br i1 %eq.len599, label %str.eq.then600, label %choice.exit611

or.199.exit:                                      ; preds = %str.eq.then600, %or.198.exit
  %or.199.phi = phi i1 [ %or.198.phi, %or.198.exit ], [ %eq.cmp.zero608, %str.eq.then600 ]
  br i1 %or.199.phi, label %common.ret, label %choice.exit611

str.eq.then600:                                   ; preds = %or.199.else
  %eq.lhs.data603 = getelementptr inbounds { i64, ptr }, ptr %choice.res465, i32 0, i32 1
  %eq.lhs.data604 = load ptr, ptr %eq.lhs.data603, align 8
  %eq.rhs.data605 = getelementptr inbounds { i64, ptr }, ptr %choice.res519, i32 0, i32 1
  %eq.rhs.data606 = load ptr, ptr %eq.rhs.data605, align 8
  %eq.memcmp607 = call i32 @memcmp(ptr %eq.lhs.data604, ptr %eq.rhs.data606, i64 %eq.lhs.len595)
  %eq.cmp.zero608 = icmp eq i32 %eq.memcmp607, 0
  br label %or.199.exit

choice.exit611:                                   ; preds = %or.199.else, %or.199.exit
  br i1 %and.194.phi, label %choice.then614, label %choice.else615

choice.then614:                                   ; preds = %choice.exit611
  %fld.gep618 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr410, i32 0, i32 1
  %arena.cur619 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc, ptr align 1 %fld.gep618, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld620 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %rec.fld620, align 8
  br label %choice.exit616

choice.else615:                                   ; preds = %choice.exit611
  %fld.gep622 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr410, i32 0, i32 1
  %fld.load624 = load ptr, ptr %fld.gep622, align 8
  %tag.id629 = load i64, ptr %fld.load624, align 8
  %tag.match630 = icmp eq i64 %tag.id629, 17
  br i1 %tag.match630, label %choice.case626, label %choice.exit616

choice.exit616:                                   ; preds = %choice.else615, %unwrap.pos.205, %choice.then614
  %choice.res988 = phi ptr [ %rec.alloc, %choice.then614 ], [ %rec.alloc984, %unwrap.pos.205 ], [ null, %choice.else615 ]
  %niche.ne.null990 = icmp ne ptr %choice.res988, null
  br i1 %niche.ne.null990, label %choice.then991, label %common.ret

choice.case626:                                   ; preds = %choice.else615
  %pay.gep631 = getelementptr inbounds { i64, ptr }, ptr %fld.load624, i32 0, i32 1
  %payload.ptr632 = load ptr, ptr %pay.gep631, align 8
  %a.null637 = icmp eq ptr %payload.ptr632, null
  br i1 %a.null637, label %a.create638, label %a.after639

a.create638:                                      ; preds = %choice.case626
  %arena.cur640 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 24)
  %arena.cur642 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf643 = call ptr @dva_arena_alloc(ptr %arena.cur642, i64 128)
  store i64 0, ptr %a.create641, align 8
  %a.data.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create641, i32 0, i32 1
  store ptr %a.buf643, ptr %a.data.gep645, align 8
  %a.cap.gep646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create641, i32 0, i32 2
  store i64 16, ptr %a.cap.gep646, align 8
  br label %a.after639

a.after639:                                       ; preds = %a.create638, %choice.case626
  %var.b634.0 = phi ptr [ %a.create641, %a.create638 ], [ %payload.ptr632, %choice.case626 ]
  %a.len.query649 = load i64, ptr %var.b634.0, align 8
  %cmptmp650 = icmp ne i64 %a.len.query649, 2
  br i1 %cmptmp650, label %common.ret, label %a.rd.check668

a.rd.check668:                                    ; preds = %a.after639
  %a.rd.len674 = load i64, ptr %var.b634.0, align 8
  %a.rd.lt675 = icmp slt i64 0, %a.rd.len674
  br i1 %a.rd.lt675, label %a.rd.ok669, label %a.rd.err.oob671

a.rd.ok669:                                       ; preds = %a.rd.check668
  %a.rd.data677 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.b634.0, i32 0, i32 1
  %a.rd.data678 = load ptr, ptr %a.rd.data677, align 8
  %a.rd.elem680 = load i64, ptr %a.rd.data678, align 8
  br label %a.rd.done672

a.rd.err.oob671:                                  ; preds = %a.rd.check668
  %arena.cur692 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc693 = call ptr @dva_arena_alloc(ptr %arena.cur692, i64 56)
  store i64 4011, ptr %err.alloc693, align 8
  %err.msg.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep695, align 8
  %err.file.gep696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep696, align 8
  %err.line.gep697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 3
  store i64 143, ptr %err.line.gep697, align 8
  %err.col.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 4
  store i64 42, ptr %err.col.gep698, align 8
  %err.ctx.gep699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep699, align 8
  %err.ctx1.gep701 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep699, i32 0, i32 1
  store i64 %a.rd.len674, ptr %err.ctx1.gep701, align 8
  %err.p2i702 = ptrtoint ptr %err.alloc693 to i64
  br label %a.rd.done672

a.rd.done672:                                     ; preds = %a.rd.err.oob671, %a.rd.ok669
  %a.rd.tag703 = phi i1 [ true, %a.rd.ok669 ], [ false, %a.rd.err.oob671 ]
  %a.rd.pay704 = phi i64 [ %a.rd.elem680, %a.rd.ok669 ], [ %err.p2i702, %a.rd.err.oob671 ]
  %ram.tag705 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag703, 0
  %ram.pay706 = insertvalue { i1, i64 } %ram.tag705, i64 %a.rd.pay704, 1
  br i1 %a.rd.tag703, label %unwrap.pos.200, label %unwrap.abort.200

unwrap.pos.200:                                   ; preds = %a.rd.done672
  %pay.ptr740 = inttoptr i64 %a.rd.pay704 to ptr
  %fld.load743 = load ptr, ptr %pay.ptr740, align 8
  %tag.id748 = load i64, ptr %fld.load743, align 8
  %tag.match749 = icmp eq i64 %tag.id748, 18
  br i1 %tag.match749, label %choice.case745, label %choice.exit744

unwrap.abort.200:                                 ; preds = %a.rd.done672
  %4 = call i64 @write(i32 2, ptr @expect.reason.201, i64 18)
  %err.ptr709 = inttoptr i64 %a.rd.pay704 to ptr
  %err.code711 = load i64, ptr %err.ptr709, align 8
  %err.msg.gep712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 1
  %err.msg.struct713 = load ptr, ptr %err.msg.gep712, align 8
  %err.file.gep714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 2
  %err.file.struct715 = load ptr, ptr %err.file.gep714, align 8
  %err.line.gep716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 3
  %err.line717 = load i64, ptr %err.line.gep716, align 8
  %err.col.gep718 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr709, i32 0, i32 4
  %err.col719 = load i64, ptr %err.col.gep718, align 8
  %err.msg.len721 = load i64, ptr %err.msg.struct713, align 8
  %err.msg.len722 = and i64 %err.msg.len721, 281474976710655
  %err.msg.len32723 = trunc i64 %err.msg.len722 to i32
  %err.msg.data724 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct713, i32 0, i32 1
  %err.msg.data725 = load ptr, ptr %err.msg.data724, align 8
  %err.file.len727 = load i64, ptr %err.file.struct715, align 8
  %err.file.len728 = and i64 %err.file.len727, 281474976710655
  %err.file.len32729 = trunc i64 %err.file.len728 to i32
  %err.file.data730 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct715, i32 0, i32 1
  %err.file.data731 = load ptr, ptr %err.file.data730, align 8
  %err.thread.rec732 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread733 = icmp ne ptr %err.thread.rec732, null
  br i1 %err.is.thread733, label %err.thread734, label %err.normal735

err.thread734:                                    ; preds = %unwrap.abort.200
  %err.haserr.gep736 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep736, align 8
  %err.err.gep737 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 7
  store ptr %err.ptr709, ptr %err.err.gep737, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal735:                                    ; preds = %unwrap.abort.200
  %err.panic.printf738 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code711, i32 %err.msg.len32723, ptr %err.msg.data725, i32 %err.file.len32729, ptr %err.file.data731, i64 %err.line717, i64 %err.col719)
  call void @exit(i32 1)
  unreachable

choice.exit744:                                   ; preds = %and.202.then, %choice.then794, %and.202.exit, %unwrap.pos.200
  %choice.res801 = phi ptr [ @str.0.struct, %unwrap.pos.200 ], [ %fld.load799, %choice.then794 ], [ @str.0.struct, %and.202.exit ], [ @str.0.struct, %and.202.then ]
  %eq.lhs.len807 = load i64, ptr %choice.res801, align 8
  %eq.lhs.len808 = and i64 %eq.lhs.len807, 281474976710655
  %eq.len811 = icmp eq i64 %eq.lhs.len808, 0
  br i1 %eq.len811, label %str.eq.then812, label %str.eq.merge814

choice.case745:                                   ; preds = %unwrap.pos.200
  %pay.gep750 = getelementptr inbounds { i64, ptr }, ptr %fld.load743, i32 0, i32 1
  %payload.ptr751 = load ptr, ptr %pay.gep750, align 8
  %fld.gep755 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr751, i32 0, i32 5
  %fld.load757 = load ptr, ptr %fld.gep755, align 8
  %tag.id762 = load i64, ptr %fld.load757, align 8
  %tag.match763 = icmp eq i64 %tag.id762, 6
  br i1 %tag.match763, label %choice.case759, label %choice.exit758

choice.exit758:                                   ; preds = %choice.case745, %choice.case759
  %choice.res771 = phi ptr [ %fld.load770, %choice.case759 ], [ @str.0.struct, %choice.case745 ]
  %fld.gep773 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr751, i32 0, i32 6
  %fld.load774 = load i1, ptr %fld.gep773, align 1
  br i1 %fld.load774, label %and.202.then, label %and.202.exit

choice.case759:                                   ; preds = %choice.case745
  %pay.gep764 = getelementptr inbounds { i64, ptr }, ptr %fld.load757, i32 0, i32 1
  %payload.ptr765 = load ptr, ptr %pay.gep764, align 8
  %fld.load770 = load ptr, ptr %payload.ptr765, align 8
  br label %choice.exit758

and.202.then:                                     ; preds = %choice.exit758
  %eq.lhs.len778 = load i64, ptr %choice.res771, align 8
  %eq.lhs.len779 = and i64 %eq.lhs.len778, 281474976710655
  %eq.rhs.len781 = load i64, ptr %choice.res268, align 8
  %eq.rhs.len782 = and i64 %eq.rhs.len781, 281474976710655
  %eq.len783 = icmp eq i64 %eq.lhs.len779, %eq.rhs.len782
  br i1 %eq.len783, label %str.eq.then784, label %choice.exit744

and.202.exit:                                     ; preds = %str.eq.then784, %choice.exit758
  %and.202.phi = phi i1 [ %fld.load774, %choice.exit758 ], [ %eq.cmp.zero792, %str.eq.then784 ]
  br i1 %and.202.phi, label %choice.then794, label %choice.exit744

str.eq.then784:                                   ; preds = %and.202.then
  %eq.lhs.data787 = getelementptr inbounds { i64, ptr }, ptr %choice.res771, i32 0, i32 1
  %eq.lhs.data788 = load ptr, ptr %eq.lhs.data787, align 8
  %eq.rhs.data789 = getelementptr inbounds { i64, ptr }, ptr %choice.res268, i32 0, i32 1
  %eq.rhs.data790 = load ptr, ptr %eq.rhs.data789, align 8
  %eq.memcmp791 = call i32 @memcmp(ptr %eq.lhs.data788, ptr %eq.rhs.data790, i64 %eq.lhs.len779)
  %eq.cmp.zero792 = icmp eq i32 %eq.memcmp791, 0
  br label %and.202.exit

choice.then794:                                   ; preds = %and.202.exit
  %fld.load799 = load ptr, ptr %payload.ptr751, align 8
  br label %choice.exit744

str.eq.then812:                                   ; preds = %choice.exit744
  %eq.lhs.data815 = getelementptr inbounds { i64, ptr }, ptr %choice.res801, i32 0, i32 1
  %eq.lhs.data816 = load ptr, ptr %eq.lhs.data815, align 8
  %eq.memcmp818 = call i32 @memcmp(ptr %eq.lhs.data816, ptr @str.0, i64 %eq.lhs.len808)
  %eq.cmp.zero819 = icmp eq i32 %eq.memcmp818, 0
  br label %str.eq.merge814

str.eq.merge814:                                  ; preds = %choice.exit744, %str.eq.then812
  %str.eq.result820 = phi i1 [ %eq.cmp.zero819, %str.eq.then812 ], [ false, %choice.exit744 ]
  %eq.lhs.len822 = load i64, ptr %choice.res801, align 8
  %eq.lhs.len823 = and i64 %eq.lhs.len822, 281474976710655
  %eq.len826 = icmp eq i64 %eq.lhs.len823, 1
  br i1 %eq.len826, label %str.eq.then827, label %str.eq.merge829

str.eq.then827:                                   ; preds = %str.eq.merge814
  %eq.lhs.data830 = getelementptr inbounds { i64, ptr }, ptr %choice.res801, i32 0, i32 1
  %eq.lhs.data831 = load ptr, ptr %eq.lhs.data830, align 8
  %eq.memcmp833 = call i32 @memcmp(ptr %eq.lhs.data831, ptr @str.7, i64 %eq.lhs.len823)
  %eq.cmp.zero834 = icmp eq i32 %eq.memcmp833, 0
  br label %str.eq.merge829

str.eq.merge829:                                  ; preds = %str.eq.merge814, %str.eq.then827
  %str.eq.result835 = phi i1 [ %eq.cmp.zero834, %str.eq.then827 ], [ false, %str.eq.merge814 ]
  %case.or836 = or i1 %str.eq.result820, %str.eq.result835
  %eq.lhs.len838 = load i64, ptr %choice.res801, align 8
  %eq.lhs.len839 = and i64 %eq.lhs.len838, 281474976710655
  %eq.len842 = icmp eq i64 %eq.lhs.len839, 2
  br i1 %eq.len842, label %str.eq.then843, label %str.eq.merge845

str.eq.then843:                                   ; preds = %str.eq.merge829
  %eq.lhs.data846 = getelementptr inbounds { i64, ptr }, ptr %choice.res801, i32 0, i32 1
  %eq.lhs.data847 = load ptr, ptr %eq.lhs.data846, align 8
  %eq.memcmp849 = call i32 @memcmp(ptr %eq.lhs.data847, ptr @str.6, i64 %eq.lhs.len839)
  %eq.cmp.zero850 = icmp eq i32 %eq.memcmp849, 0
  br label %str.eq.merge845

str.eq.merge845:                                  ; preds = %str.eq.merge829, %str.eq.then843
  %str.eq.result851 = phi i1 [ %eq.cmp.zero850, %str.eq.then843 ], [ false, %str.eq.merge829 ]
  %case.or852 = or i1 %case.or836, %str.eq.result851
  %spec.select1089 = select i1 %case.or852, i1 true, i1 false
  br i1 %spec.select1089, label %or.203.exit, label %or.203.else

or.203.else:                                      ; preds = %str.eq.merge845
  %eq.lhs.len857 = load i64, ptr %choice.res801, align 8
  %eq.lhs.len858 = and i64 %eq.lhs.len857, 281474976710655
  %eq.rhs.len860 = load i64, ptr %choice.res465, align 8
  %eq.rhs.len861 = and i64 %eq.rhs.len860, 281474976710655
  %eq.len862 = icmp eq i64 %eq.lhs.len858, %eq.rhs.len861
  br i1 %eq.len862, label %str.eq.then863, label %or.203.exit

or.203.exit:                                      ; preds = %str.eq.then863, %or.203.else, %str.eq.merge845
  %or.203.phi = phi i1 [ %spec.select1089, %str.eq.merge845 ], [ %eq.cmp.zero871, %str.eq.then863 ], [ false, %or.203.else ]
  br i1 %or.203.phi, label %or.204.exit, label %or.204.else

str.eq.then863:                                   ; preds = %or.203.else
  %eq.lhs.data866 = getelementptr inbounds { i64, ptr }, ptr %choice.res801, i32 0, i32 1
  %eq.lhs.data867 = load ptr, ptr %eq.lhs.data866, align 8
  %eq.rhs.data868 = getelementptr inbounds { i64, ptr }, ptr %choice.res465, i32 0, i32 1
  %eq.rhs.data869 = load ptr, ptr %eq.rhs.data868, align 8
  %eq.memcmp870 = call i32 @memcmp(ptr %eq.lhs.data867, ptr %eq.rhs.data869, i64 %eq.lhs.len858)
  %eq.cmp.zero871 = icmp eq i32 %eq.memcmp870, 0
  br label %or.203.exit

or.204.else:                                      ; preds = %or.203.exit
  %eq.lhs.len876 = load i64, ptr %choice.res801, align 8
  %eq.lhs.len877 = and i64 %eq.lhs.len876, 281474976710655
  %eq.rhs.len879 = load i64, ptr %choice.res519, align 8
  %eq.rhs.len880 = and i64 %eq.rhs.len879, 281474976710655
  %eq.len881 = icmp eq i64 %eq.lhs.len877, %eq.rhs.len880
  br i1 %eq.len881, label %str.eq.then882, label %a.rd.check909

or.204.exit:                                      ; preds = %str.eq.then882, %or.203.exit
  %or.204.phi = phi i1 [ %or.203.phi, %or.203.exit ], [ %eq.cmp.zero890, %str.eq.then882 ]
  br i1 %or.204.phi, label %common.ret, label %a.rd.check909

str.eq.then882:                                   ; preds = %or.204.else
  %eq.lhs.data885 = getelementptr inbounds { i64, ptr }, ptr %choice.res801, i32 0, i32 1
  %eq.lhs.data886 = load ptr, ptr %eq.lhs.data885, align 8
  %eq.rhs.data887 = getelementptr inbounds { i64, ptr }, ptr %choice.res519, i32 0, i32 1
  %eq.rhs.data888 = load ptr, ptr %eq.rhs.data887, align 8
  %eq.memcmp889 = call i32 @memcmp(ptr %eq.lhs.data886, ptr %eq.rhs.data888, i64 %eq.lhs.len877)
  %eq.cmp.zero890 = icmp eq i32 %eq.memcmp889, 0
  br label %or.204.exit

a.rd.check909:                                    ; preds = %or.204.else, %or.204.exit
  %a.rd.len915 = load i64, ptr %var.b634.0, align 8
  %a.rd.lt916 = icmp slt i64 1, %a.rd.len915
  br i1 %a.rd.lt916, label %a.rd.ok910, label %a.rd.err.oob912

a.rd.ok910:                                       ; preds = %a.rd.check909
  %a.rd.data918 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.b634.0, i32 0, i32 1
  %a.rd.data919 = load ptr, ptr %a.rd.data918, align 8
  %a.rd.elem.gep920 = getelementptr i64, ptr %a.rd.data919, i64 1
  %a.rd.elem921 = load i64, ptr %a.rd.elem.gep920, align 8
  br label %a.rd.done913

a.rd.err.oob912:                                  ; preds = %a.rd.check909
  %arena.cur933 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc934 = call ptr @dva_arena_alloc(ptr %arena.cur933, i64 56)
  store i64 4011, ptr %err.alloc934, align 8
  %err.msg.gep936 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc934, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep936, align 8
  %err.file.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc934, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep937, align 8
  %err.line.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc934, i32 0, i32 3
  store i64 150, ptr %err.line.gep938, align 8
  %err.col.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc934, i32 0, i32 4
  store i64 39, ptr %err.col.gep939, align 8
  %err.ctx.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc934, i32 0, i32 5
  store i64 1, ptr %err.ctx.gep940, align 8
  %err.ctx1.gep942 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep940, i32 0, i32 1
  store i64 %a.rd.len915, ptr %err.ctx1.gep942, align 8
  %err.p2i943 = ptrtoint ptr %err.alloc934 to i64
  br label %a.rd.done913

a.rd.done913:                                     ; preds = %a.rd.err.oob912, %a.rd.ok910
  %a.rd.tag944 = phi i1 [ true, %a.rd.ok910 ], [ false, %a.rd.err.oob912 ]
  %a.rd.pay945 = phi i64 [ %a.rd.elem921, %a.rd.ok910 ], [ %err.p2i943, %a.rd.err.oob912 ]
  %ram.tag946 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag944, 0
  %ram.pay947 = insertvalue { i1, i64 } %ram.tag946, i64 %a.rd.pay945, 1
  br i1 %a.rd.tag944, label %unwrap.pos.205, label %unwrap.abort.205

unwrap.pos.205:                                   ; preds = %a.rd.done913
  %pay.ptr981 = inttoptr i64 %a.rd.pay945 to ptr
  %arena.cur983 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc984 = call ptr @dva_arena_alloc(ptr %arena.cur983, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc984, ptr align 1 %pay.ptr981, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld986 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc984, i32 0, i32 1
  store ptr %choice.res801, ptr %rec.fld986, align 8
  br label %choice.exit616

unwrap.abort.205:                                 ; preds = %a.rd.done913
  %5 = call i64 @write(i32 2, ptr @expect.reason.206, i64 18)
  %err.ptr950 = inttoptr i64 %a.rd.pay945 to ptr
  %err.code952 = load i64, ptr %err.ptr950, align 8
  %err.msg.gep953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr950, i32 0, i32 1
  %err.msg.struct954 = load ptr, ptr %err.msg.gep953, align 8
  %err.file.gep955 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr950, i32 0, i32 2
  %err.file.struct956 = load ptr, ptr %err.file.gep955, align 8
  %err.line.gep957 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr950, i32 0, i32 3
  %err.line958 = load i64, ptr %err.line.gep957, align 8
  %err.col.gep959 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr950, i32 0, i32 4
  %err.col960 = load i64, ptr %err.col.gep959, align 8
  %err.msg.len962 = load i64, ptr %err.msg.struct954, align 8
  %err.msg.len963 = and i64 %err.msg.len962, 281474976710655
  %err.msg.len32964 = trunc i64 %err.msg.len963 to i32
  %err.msg.data965 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct954, i32 0, i32 1
  %err.msg.data966 = load ptr, ptr %err.msg.data965, align 8
  %err.file.len968 = load i64, ptr %err.file.struct956, align 8
  %err.file.len969 = and i64 %err.file.len968, 281474976710655
  %err.file.len32970 = trunc i64 %err.file.len969 to i32
  %err.file.data971 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct956, i32 0, i32 1
  %err.file.data972 = load ptr, ptr %err.file.data971, align 8
  %err.thread.rec973 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread974 = icmp ne ptr %err.thread.rec973, null
  br i1 %err.is.thread974, label %err.thread975, label %err.normal976

err.thread975:                                    ; preds = %unwrap.abort.205
  %err.haserr.gep977 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec973, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep977, align 8
  %err.err.gep978 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec973, i32 0, i32 7
  store ptr %err.ptr950, ptr %err.err.gep978, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal976:                                    ; preds = %unwrap.abort.205
  %err.panic.printf979 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code952, i32 %err.msg.len32964, ptr %err.msg.data966, i32 %err.file.len32970, ptr %err.file.data972, i64 %err.line958, i64 %err.col960)
  call void @exit(i32 1)
  unreachable

choice.then991:                                   ; preds = %choice.exit616
  %fld.load1004 = load ptr, ptr %payload.ptr410, align 8
  %fld.gep1009 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %choice.res988, i32 0, i32 1
  %fld.load1010 = load ptr, ptr %fld.gep1009, align 8
  %cat.seg1013 = load i64, ptr %choice.res268, align 8
  %cat.seg1014 = and i64 %cat.seg1013, 281474976710655
  %cat.seg1015 = getelementptr inbounds { i64, ptr }, ptr %choice.res268, i32 0, i32 1
  %cat.seg1016 = load ptr, ptr %cat.seg1015, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1014)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len1018

cat.sum.len1018:                                  ; preds = %choice.then991
  %cat.sum.len1019 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 6)
  %sum1020 = extractvalue { i64, i1 } %cat.sum.len1019, 0
  %ovf1021 = extractvalue { i64, i1 } %cat.sum.len1019, 1
  br i1 %ovf1021, label %str_overflow_abort1023, label %cat.sum.len1022

str_overflow_abort:                               ; preds = %choice.then991
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1022:                                  ; preds = %cat.sum.len1018
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1020, i64 1)
  %sum1025 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1026 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1026, label %str_overflow_abort1028, label %concat.tot.len1027

str_overflow_abort1023:                           ; preds = %cat.sum.len1018
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1027:                               ; preds = %cat.sum.len1022
  %arena.cur1030 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1030, i64 %sum1025)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.8, i64 6, i1 false)
  %cat.dst1031 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1031, ptr align 1 %cat.seg1016, i64 %cat.seg1014, i1 false)
  %cat.off = add i64 6, %cat.seg1014
  %cat.dst1032 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1032, ptr align 1 @str.9, i64 6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1020
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1033 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1033, i64 16)
  store i64 %sum1020, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %cat.seg1037 = load i64, ptr %choice.res268, align 8
  %cat.seg1038 = and i64 %cat.seg1037, 281474976710655
  %cat.seg1040 = load ptr, ptr %cat.seg1015, align 8
  %cat.sum.len1042 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1038)
  %sum1043 = extractvalue { i64, i1 } %cat.sum.len1042, 0
  %ovf1044 = extractvalue { i64, i1 } %cat.sum.len1042, 1
  br i1 %ovf1044, label %str_overflow_abort1046, label %cat.sum.len1045

str_overflow_abort1028:                           ; preds = %cat.sum.len1022
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1045:                                  ; preds = %concat.tot.len1027
  %cat.sum.len1048 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1043, i64 6)
  %sum1049 = extractvalue { i64, i1 } %cat.sum.len1048, 0
  %ovf1050 = extractvalue { i64, i1 } %cat.sum.len1048, 1
  br i1 %ovf1050, label %str_overflow_abort1052, label %cat.sum.len1051

str_overflow_abort1046:                           ; preds = %concat.tot.len1027
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1051:                                  ; preds = %cat.sum.len1045
  %concat.tot.len1054 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1049, i64 1)
  %sum1055 = extractvalue { i64, i1 } %concat.tot.len1054, 0
  %ovf1056 = extractvalue { i64, i1 } %concat.tot.len1054, 1
  br i1 %ovf1056, label %str_overflow_abort1058, label %concat.tot.len1057

str_overflow_abort1052:                           ; preds = %cat.sum.len1045
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1057:                               ; preds = %cat.sum.len1051
  %arena.cur1060 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1061 = call ptr @dva_arena_alloc(ptr %arena.cur1060, i64 %sum1055)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1061, ptr align 1 @str.8, i64 6, i1 false)
  %cat.dst1063 = getelementptr i8, ptr %concat.buf1061, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1063, ptr align 1 %cat.seg1040, i64 %cat.seg1038, i1 false)
  %cat.off1064 = add i64 6, %cat.seg1038
  %cat.dst1065 = getelementptr i8, ptr %concat.buf1061, i64 %cat.off1064
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1065, ptr align 1 @str.10, i64 6, i1 false)
  %concat.nul1066 = getelementptr i8, ptr %concat.buf1061, i64 %sum1049
  store i8 0, ptr %concat.nul1066, align 1
  %arena.cur1067 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1068 = call ptr @dva_arena_alloc(ptr %arena.cur1067, i64 16)
  store i64 %sum1049, ptr %concat.str1068, align 8
  %str.build.data.gep1070 = getelementptr inbounds { i64, ptr }, ptr %concat.str1068, i32 0, i32 1
  store ptr %concat.buf1061, ptr %str.build.data.gep1070, align 8
  %arena.cur1071 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1072 = call ptr @dva_arena_alloc(ptr %arena.cur1071, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc1072, ptr align 1 %pay.ptr, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1074 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1074, ptr align 1 %pay.ptr165, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1075 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1075, ptr align 1 %pay.ptr252, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1076 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1076, ptr align 1 %payload.ptr388, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1077 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1077, ptr align 1 %fld.gep400, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1078 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 5
  store ptr %fld.load1004, ptr %rec.fld1078, align 8
  %rec.fld1079 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld1079, ptr align 1 %choice.res988, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld1080 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 7
  store ptr %choice.res268, ptr %rec.fld1080, align 8
  %rec.fld1081 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 8
  store ptr %fld.load1010, ptr %rec.fld1081, align 8
  %rec.fld1082 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 9
  store i1 %and.194.phi, ptr %rec.fld1082, align 1
  %rec.fld1083 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 10
  store ptr %concat.str, ptr %rec.fld1083, align 8
  %rec.fld1084 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %rec.alloc1072, i32 0, i32 11
  store ptr %concat.str1068, ptr %rec.fld1084, align 8
  br label %common.ret

str_overflow_abort1058:                           ; preds = %cat.sum.len1051
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare i1 @"str::starts_with"(ptr, ptr) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

define internal i1 @"typedopt::#bare_branch"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  %. = select i1 %tag.match, i1 true, i1 false
  br i1 %., label %and.208.then, label %and.208.exit

and.208.then:                                     ; preds = %entry
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %0, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %a.len.query4 = load i64, ptr %fld.load3, align 8
  %cmptmp = icmp eq i64 %a.len.query4, 0
  br label %and.208.exit

and.208.exit:                                     ; preds = %entry, %and.208.then
  %and.208.phi = phi i1 [ %cmptmp, %and.208.then ], [ %., %entry ]
  br i1 %and.208.phi, label %and.209.then, label %and.209.exit

and.209.then:                                     ; preds = %and.208.exit
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %0, i32 0, i32 2
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %niche.ne.null = icmp ne ptr %fld.load7, null
  %nottmp = xor i1 %niche.ne.null, true
  br label %and.209.exit

and.209.exit:                                     ; preds = %and.208.exit, %and.209.then
  %and.209.phi = phi i1 [ %nottmp, %and.209.then ], [ %and.208.phi, %and.208.exit ]
  br i1 %and.209.phi, label %and.210.then, label %and.210.exit

and.210.then:                                     ; preds = %and.209.exit
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %0, i32 0, i32 3
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %a.len.query12 = load i64, ptr %fld.load10, align 8
  %cmptmp13 = icmp eq i64 %a.len.query12, 0
  br label %and.210.exit

and.210.exit:                                     ; preds = %and.209.exit, %and.210.then
  %and.210.phi = phi i1 [ %cmptmp13, %and.210.then ], [ %and.209.phi, %and.209.exit ]
  ret i1 %and.210.phi
}

define internal ptr @"typedopt::#stage_value"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call i1 @"typedopt::#wide_int"(ptr %1)
  br i1 %call.res, label %or.213.exit, label %or.213.else

or.213.else:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %or.213.exit

or.213.exit:                                      ; preds = %choice.case, %or.213.else, %entry
  %or.213.phi = phi i1 [ %call.res, %entry ], [ false, %or.213.else ], [ %., %choice.case ]
  %nottmp = xor i1 %or.213.phi, true
  br i1 %nottmp, label %and.214.then, label %choice.exit25

choice.case:                                      ; preds = %or.213.else
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %tag.id7 = load i64, ptr %payload.ptr, align 8
  %tag.match8 = icmp eq i64 %tag.id7, 27
  %. = select i1 %tag.match8, i1 true, i1 false
  br label %or.213.exit

and.214.then:                                     ; preds = %or.213.exit
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %tag.id18 = load i64, ptr %fld.load13, align 8
  %tag.match19 = icmp eq i64 %tag.id18, 4
  %spec.select = select i1 %tag.match19, i1 true, i1 false
  %nottmp24 = xor i1 %spec.select, true
  br i1 %nottmp24, label %common.ret, label %choice.exit25

common.ret:                                       ; preds = %loop.body.229, %choice.exit687, %choice.then602, %choice.exit750, %or.230.else, %choice.exit715, %or.228.else, %choice.then620, %choice.exit614, %or.227.else, %choice.else603, %choice.case576, %choice.exit25, %choice.exit25, %choice.then536, %choice.exit529, %choice.exit516, %choice.then464, %choice.exit451, %choice.exit414, %str.eq.merge352, %unwrap.pos.215, %a.after, %a.after816, %choice.next676, %and.214.then, %choice.then361, %choice.then312, %choice.then264
  %common.ret.op = phi ptr [ %call.res270, %choice.then264 ], [ %call.res318, %choice.then312 ], [ %call.res367, %choice.then361 ], [ null, %and.214.then ], [ %rec.alloc845, %a.after816 ], [ null, %choice.next676 ], [ %1, %choice.exit25 ], [ %1, %choice.exit25 ], [ %call.res93, %unwrap.pos.215 ], [ null, %a.after ], [ null, %str.eq.merge352 ], [ null, %choice.exit414 ], [ %rec.alloc497, %choice.then464 ], [ null, %choice.exit451 ], [ null, %choice.exit516 ], [ %rec.alloc568, %choice.then536 ], [ null, %choice.exit529 ], [ null, %choice.case576 ], [ %.854, %choice.else603 ], [ null, %or.227.else ], [ %rec.alloc657, %choice.then620 ], [ null, %choice.exit614 ], [ null, %or.228.else ], [ null, %choice.exit715 ], [ null, %or.230.else ], [ null, %choice.exit750 ], [ null, %choice.then602 ], [ null, %choice.exit687 ], [ null, %loop.body.229 ]
  ret ptr %common.ret.op

choice.exit25:                                    ; preds = %or.213.exit, %and.214.then
  %fld.load28 = load ptr, ptr %1, align 8
  %tag.id33 = load i64, ptr %fld.load28, align 8
  switch i64 %tag.id33, label %choice.next676 [
    i64 4, label %common.ret
    i64 0, label %common.ret
    i64 17, label %choice.case40
    i64 6, label %choice.case95
    i64 7, label %choice.case369
    i64 8, label %choice.case505
    i64 21, label %choice.case576
    i64 15, label %choice.case675
  ]

choice.case40:                                    ; preds = %choice.exit25
  %pay.gep45 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr46 = load ptr, ptr %pay.gep45, align 8
  %a.null = icmp eq ptr %payload.ptr46, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case40
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  store i64 0, ptr %a.create49, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case40
  %var.es.0 = phi ptr [ %a.create49, %a.create ], [ %payload.ptr46, %choice.case40 ]
  %a.len.query51 = load i64, ptr %var.es.0, align 8
  %cmptmp = icmp eq i64 %a.len.query51, 1
  br i1 %cmptmp, label %a.rd.check, label %common.ret

a.rd.check:                                       ; preds = %a.after
  %a.rd.len68 = load i64, ptr %var.es.0, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len68
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.es.0, i32 0, i32 1
  %a.rd.data69 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data69, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 56)
  store i64 4011, ptr %err.alloc72, align 8
  %err.msg.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep74, align 8
  %err.file.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep75, align 8
  %err.line.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 3
  store i64 169, ptr %err.line.gep76, align 8
  %err.col.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 4
  store i64 53, ptr %err.col.gep77, align 8
  %err.ctx.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep78, align 8
  %err.ctx1.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 1
  store i64 %a.rd.len68, ptr %err.ctx1.gep80, align 8
  %err.p2i81 = ptrtoint ptr %err.alloc72 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i81, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.215, label %unwrap.abort.215

unwrap.pos.215:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %call.res93 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %pay.ptr)
  br label %common.ret

unwrap.abort.215:                                 ; preds = %a.rd.done
  %2 = call i64 @write(i32 2, ptr @expect.reason.216, i64 19)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep83, align 8
  %err.file.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep84, align 8
  %err.line.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep85, align 8
  %err.col.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep86, align 8
  %err.msg.len87 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len88 = and i64 %err.msg.len87, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len88 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data89 = load ptr, ptr %err.msg.data, align 8
  %err.file.len90 = load i64, ptr %err.file.struct, align 8
  %err.file.len91 = and i64 %err.file.len90, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len91 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data92 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.215
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.215
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data89, i32 %err.file.len32, ptr %err.file.data92, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.case95:                                    ; preds = %choice.exit25
  %pay.gep100 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr101 = load ptr, ptr %pay.gep100, align 8
  %fld.gep104 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 5
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %a.rd.nonnull106 = icmp ne ptr %fld.load105, null
  br i1 %a.rd.nonnull106, label %a.rd.check107, label %a.rd.err.null109

a.rd.check107:                                    ; preds = %choice.case95
  %a.rd.len113 = load i64, ptr %fld.load105, align 8
  %a.rd.lt114 = icmp slt i64 0, %a.rd.len113
  br i1 %a.rd.lt114, label %a.rd.ok108, label %a.rd.err.oob110

a.rd.ok108:                                       ; preds = %a.rd.check107
  %a.rd.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load105, i32 0, i32 1
  %a.rd.data117 = load ptr, ptr %a.rd.data116, align 8
  %a.rd.elem119 = load i64, ptr %a.rd.data117, align 8
  br label %a.rd.done111

a.rd.err.null109:                                 ; preds = %choice.case95
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
  store i64 4011, ptr %err.alloc121, align 8
  %err.msg.gep123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep123, align 8
  %err.file.gep124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep124, align 8
  %err.line.gep125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 3
  store i64 0, ptr %err.line.gep125, align 8
  %err.col.gep126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 4
  store i64 0, ptr %err.col.gep126, align 8
  %err.ctx.gep127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc121, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep127, align 8
  %err.ctx1.gep129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep127, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep129, align 8
  %err.p2i130 = ptrtoint ptr %err.alloc121 to i64
  br label %a.rd.done111

a.rd.err.oob110:                                  ; preds = %a.rd.check107
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 56)
  store i64 4011, ptr %err.alloc132, align 8
  %err.msg.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep134, align 8
  %err.file.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep135, align 8
  %err.line.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 3
  store i64 0, ptr %err.line.gep136, align 8
  %err.col.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 4
  store i64 0, ptr %err.col.gep137, align 8
  %err.ctx.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep138, align 8
  %err.ctx1.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 1
  store i64 %a.rd.len113, ptr %err.ctx1.gep140, align 8
  %err.p2i141 = ptrtoint ptr %err.alloc132 to i64
  br label %a.rd.done111

a.rd.done111:                                     ; preds = %a.rd.err.oob110, %a.rd.err.null109, %a.rd.ok108
  %a.rd.tag142 = phi i1 [ true, %a.rd.ok108 ], [ false, %a.rd.err.null109 ], [ false, %a.rd.err.oob110 ]
  %a.rd.pay143 = phi i64 [ %a.rd.elem119, %a.rd.ok108 ], [ %err.p2i130, %a.rd.err.null109 ], [ %err.p2i141, %a.rd.err.oob110 ]
  %ram.tag144 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag142, 0
  %ram.pay145 = insertvalue { i1, i64 } %ram.tag144, i64 %a.rd.pay143, 1
  br i1 %a.rd.tag142, label %unwrap.pos.217, label %unwrap.abort.217

unwrap.pos.217:                                   ; preds = %a.rd.done111
  %pay.ptr179 = inttoptr i64 %a.rd.pay143 to ptr
  %fld.load182 = load ptr, ptr %fld.gep104, align 8
  %a.rd.nonnull183 = icmp ne ptr %fld.load182, null
  br i1 %a.rd.nonnull183, label %a.rd.check184, label %a.rd.err.null186

unwrap.abort.217:                                 ; preds = %a.rd.done111
  %3 = call i64 @write(i32 2, ptr @expect.reason.218, i64 23)
  %err.ptr148 = inttoptr i64 %a.rd.pay143 to ptr
  %err.code150 = load i64, ptr %err.ptr148, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 1
  %err.msg.struct152 = load ptr, ptr %err.msg.gep151, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 2
  %err.file.struct154 = load ptr, ptr %err.file.gep153, align 8
  %err.line.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 3
  %err.line156 = load i64, ptr %err.line.gep155, align 8
  %err.col.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr148, i32 0, i32 4
  %err.col158 = load i64, ptr %err.col.gep157, align 8
  %err.msg.len160 = load i64, ptr %err.msg.struct152, align 8
  %err.msg.len161 = and i64 %err.msg.len160, 281474976710655
  %err.msg.len32162 = trunc i64 %err.msg.len161 to i32
  %err.msg.data163 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct152, i32 0, i32 1
  %err.msg.data164 = load ptr, ptr %err.msg.data163, align 8
  %err.file.len166 = load i64, ptr %err.file.struct154, align 8
  %err.file.len167 = and i64 %err.file.len166, 281474976710655
  %err.file.len32168 = trunc i64 %err.file.len167 to i32
  %err.file.data169 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct154, i32 0, i32 1
  %err.file.data170 = load ptr, ptr %err.file.data169, align 8
  %err.thread.rec171 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread172 = icmp ne ptr %err.thread.rec171, null
  br i1 %err.is.thread172, label %err.thread173, label %err.normal174

err.thread173:                                    ; preds = %unwrap.abort.217
  %err.haserr.gep175 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec171, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep175, align 8
  %err.err.gep176 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec171, i32 0, i32 7
  store ptr %err.ptr148, ptr %err.err.gep176, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal174:                                    ; preds = %unwrap.abort.217
  %err.panic.printf177 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code150, i32 %err.msg.len32162, ptr %err.msg.data164, i32 %err.file.len32168, ptr %err.file.data170, i64 %err.line156, i64 %err.col158)
  call void @exit(i32 1)
  unreachable

a.rd.check184:                                    ; preds = %unwrap.pos.217
  %a.rd.len190 = load i64, ptr %fld.load182, align 8
  %a.rd.lt191 = icmp slt i64 1, %a.rd.len190
  br i1 %a.rd.lt191, label %a.rd.ok185, label %a.rd.err.oob187

a.rd.ok185:                                       ; preds = %a.rd.check184
  %a.rd.data193 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load182, i32 0, i32 1
  %a.rd.data194 = load ptr, ptr %a.rd.data193, align 8
  %a.rd.elem.gep195 = getelementptr i64, ptr %a.rd.data194, i64 1
  %a.rd.elem196 = load i64, ptr %a.rd.elem.gep195, align 8
  br label %a.rd.done188

a.rd.err.null186:                                 ; preds = %unwrap.pos.217
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 56)
  store i64 4011, ptr %err.alloc198, align 8
  %err.msg.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep200, align 8
  %err.file.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep201, align 8
  %err.line.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 3
  store i64 0, ptr %err.line.gep202, align 8
  %err.col.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 4
  store i64 0, ptr %err.col.gep203, align 8
  %err.ctx.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc198, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep204, align 8
  %err.ctx1.gep206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep204, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep206, align 8
  %err.p2i207 = ptrtoint ptr %err.alloc198 to i64
  br label %a.rd.done188

a.rd.err.oob187:                                  ; preds = %a.rd.check184
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 56)
  store i64 4011, ptr %err.alloc209, align 8
  %err.msg.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep211, align 8
  %err.file.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep212, align 8
  %err.line.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 3
  store i64 0, ptr %err.line.gep213, align 8
  %err.col.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 4
  store i64 0, ptr %err.col.gep214, align 8
  %err.ctx.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 5
  store i64 1, ptr %err.ctx.gep215, align 8
  %err.ctx1.gep217 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 1
  store i64 %a.rd.len190, ptr %err.ctx1.gep217, align 8
  %err.p2i218 = ptrtoint ptr %err.alloc209 to i64
  br label %a.rd.done188

a.rd.done188:                                     ; preds = %a.rd.err.oob187, %a.rd.err.null186, %a.rd.ok185
  %a.rd.tag219 = phi i1 [ true, %a.rd.ok185 ], [ false, %a.rd.err.null186 ], [ false, %a.rd.err.oob187 ]
  %a.rd.pay220 = phi i64 [ %a.rd.elem196, %a.rd.ok185 ], [ %err.p2i207, %a.rd.err.null186 ], [ %err.p2i218, %a.rd.err.oob187 ]
  %ram.tag221 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag219, 0
  %ram.pay222 = insertvalue { i1, i64 } %ram.tag221, i64 %a.rd.pay220, 1
  %pay.ptr228 = inttoptr i64 %a.rd.pay220 to ptr
  %choice.res233 = select i1 %a.rd.tag219, ptr %pay.ptr228, ptr @str.0.struct
  %fld.load236 = load ptr, ptr %payload.ptr101, align 8
  %fld.gep238 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 8
  %fld.load239 = load ptr, ptr %fld.gep238, align 8
  %eq.lhs.len240 = load i64, ptr %fld.load236, align 8
  %eq.lhs.len241 = and i64 %eq.lhs.len240, 281474976710655
  %eq.rhs.len242 = load i64, ptr %fld.load239, align 8
  %eq.rhs.len243 = and i64 %eq.rhs.len242, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len241, %eq.rhs.len243
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

str.eq.then:                                      ; preds = %a.rd.done188
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load236, i32 0, i32 1
  %eq.lhs.data244 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load239, i32 0, i32 1
  %eq.rhs.data245 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data244, ptr %eq.rhs.data245, i64 %eq.lhs.len241)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %a.rd.done188, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %a.rd.done188 ]
  br i1 %str.eq.result, label %and.219.then, label %and.219.exit

and.219.then:                                     ; preds = %str.eq.merge
  %fld.load248 = load ptr, ptr %fld.gep238, align 8
  %eq.lhs.len250 = load i64, ptr %fld.load248, align 8
  %eq.lhs.len251 = and i64 %eq.lhs.len250, 281474976710655
  %eq.len254 = icmp eq i64 %eq.lhs.len251, 0
  br i1 %eq.len254, label %str.eq.then255, label %str.eq.merge257

and.219.exit:                                     ; preds = %str.eq.merge, %str.eq.merge257
  %and.219.phi = phi i1 [ %str.neq, %str.eq.merge257 ], [ %str.eq.result, %str.eq.merge ]
  br i1 %and.219.phi, label %choice.then264, label %choice.exit265

str.eq.then255:                                   ; preds = %and.219.then
  %eq.lhs.data258 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 1
  %eq.lhs.data259 = load ptr, ptr %eq.lhs.data258, align 8
  %eq.memcmp261 = call i32 @memcmp(ptr %eq.lhs.data259, ptr @str.0, i64 %eq.lhs.len251)
  %eq.cmp.zero262 = icmp eq i32 %eq.memcmp261, 0
  br label %str.eq.merge257

str.eq.merge257:                                  ; preds = %and.219.then, %str.eq.then255
  %str.eq.result263 = phi i1 [ %eq.cmp.zero262, %str.eq.then255 ], [ false, %and.219.then ]
  %str.neq = xor i1 %str.eq.result263, true
  br label %and.219.exit

choice.then264:                                   ; preds = %and.219.exit
  %fld.gep267 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 7
  %fld.load268 = load ptr, ptr %fld.gep267, align 8
  %call.res270 = call ptr @"typedopt::#read_var"(ptr %fld.load268, ptr %1, i1 true)
  br label %common.ret

choice.exit265:                                   ; preds = %and.219.exit
  %fld.load274 = load ptr, ptr %payload.ptr101, align 8
  %eq.lhs.len280 = load i64, ptr %fld.load274, align 8
  %eq.lhs.len281 = and i64 %eq.lhs.len280, 281474976710655
  %eq.rhs.len283 = load i64, ptr %pay.ptr179, align 8
  %eq.rhs.len284 = and i64 %eq.rhs.len283, 281474976710655
  %eq.len285 = icmp eq i64 %eq.lhs.len281, %eq.rhs.len284
  br i1 %eq.len285, label %str.eq.then286, label %str.eq.merge288

str.eq.then286:                                   ; preds = %choice.exit265
  %eq.lhs.data289 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 1
  %eq.lhs.data290 = load ptr, ptr %eq.lhs.data289, align 8
  %eq.rhs.data291 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr179, i32 0, i32 1
  %eq.rhs.data292 = load ptr, ptr %eq.rhs.data291, align 8
  %eq.memcmp293 = call i32 @memcmp(ptr %eq.lhs.data290, ptr %eq.rhs.data292, i64 %eq.lhs.len281)
  %eq.cmp.zero294 = icmp eq i32 %eq.memcmp293, 0
  br label %str.eq.merge288

str.eq.merge288:                                  ; preds = %choice.exit265, %str.eq.then286
  %str.eq.result295 = phi i1 [ %eq.cmp.zero294, %str.eq.then286 ], [ false, %choice.exit265 ]
  %eq.lhs.len297 = load i64, ptr %fld.load274, align 8
  %eq.lhs.len298 = and i64 %eq.lhs.len297, 281474976710655
  %eq.len301 = icmp eq i64 %eq.lhs.len298, 1
  br i1 %eq.len301, label %str.eq.then302, label %str.eq.merge304

str.eq.then302:                                   ; preds = %str.eq.merge288
  %eq.lhs.data305 = getelementptr inbounds { i64, ptr }, ptr %fld.load274, i32 0, i32 1
  %eq.lhs.data306 = load ptr, ptr %eq.lhs.data305, align 8
  %eq.memcmp308 = call i32 @memcmp(ptr %eq.lhs.data306, ptr @str.7, i64 %eq.lhs.len298)
  %eq.cmp.zero309 = icmp eq i32 %eq.memcmp308, 0
  br label %str.eq.merge304

str.eq.merge304:                                  ; preds = %str.eq.merge288, %str.eq.then302
  %str.eq.result310 = phi i1 [ %eq.cmp.zero309, %str.eq.then302 ], [ false, %str.eq.merge288 ]
  %case.or = or i1 %str.eq.result295, %str.eq.result310
  br i1 %case.or, label %choice.then312, label %choice.exit313

choice.then312:                                   ; preds = %str.eq.merge304
  %fld.gep315 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 10
  %fld.load316 = load ptr, ptr %fld.gep315, align 8
  %call.res318 = call ptr @"typedopt::#read_var"(ptr %fld.load316, ptr %1, i1 false)
  br label %common.ret

choice.exit313:                                   ; preds = %str.eq.merge304
  %fld.load322 = load ptr, ptr %payload.ptr101, align 8
  %eq.lhs.len328 = load i64, ptr %fld.load322, align 8
  %eq.lhs.len329 = and i64 %eq.lhs.len328, 281474976710655
  %eq.rhs.len331 = load i64, ptr %choice.res233, align 8
  %eq.rhs.len332 = and i64 %eq.rhs.len331, 281474976710655
  %eq.len333 = icmp eq i64 %eq.lhs.len329, %eq.rhs.len332
  br i1 %eq.len333, label %str.eq.then334, label %str.eq.merge336

str.eq.then334:                                   ; preds = %choice.exit313
  %eq.lhs.data337 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 1
  %eq.lhs.data338 = load ptr, ptr %eq.lhs.data337, align 8
  %eq.rhs.data339 = getelementptr inbounds { i64, ptr }, ptr %choice.res233, i32 0, i32 1
  %eq.rhs.data340 = load ptr, ptr %eq.rhs.data339, align 8
  %eq.memcmp341 = call i32 @memcmp(ptr %eq.lhs.data338, ptr %eq.rhs.data340, i64 %eq.lhs.len329)
  %eq.cmp.zero342 = icmp eq i32 %eq.memcmp341, 0
  br label %str.eq.merge336

str.eq.merge336:                                  ; preds = %choice.exit313, %str.eq.then334
  %str.eq.result343 = phi i1 [ %eq.cmp.zero342, %str.eq.then334 ], [ false, %choice.exit313 ]
  %eq.lhs.len345 = load i64, ptr %fld.load322, align 8
  %eq.lhs.len346 = and i64 %eq.lhs.len345, 281474976710655
  %eq.len349 = icmp eq i64 %eq.lhs.len346, 2
  br i1 %eq.len349, label %str.eq.then350, label %str.eq.merge352

str.eq.then350:                                   ; preds = %str.eq.merge336
  %eq.lhs.data353 = getelementptr inbounds { i64, ptr }, ptr %fld.load322, i32 0, i32 1
  %eq.lhs.data354 = load ptr, ptr %eq.lhs.data353, align 8
  %eq.memcmp356 = call i32 @memcmp(ptr %eq.lhs.data354, ptr @str.6, i64 %eq.lhs.len346)
  %eq.cmp.zero357 = icmp eq i32 %eq.memcmp356, 0
  br label %str.eq.merge352

str.eq.merge352:                                  ; preds = %str.eq.merge336, %str.eq.then350
  %str.eq.result358 = phi i1 [ %eq.cmp.zero357, %str.eq.then350 ], [ false, %str.eq.merge336 ]
  %case.or359 = or i1 %str.eq.result343, %str.eq.result358
  br i1 %case.or359, label %choice.then361, label %common.ret

choice.then361:                                   ; preds = %str.eq.merge352
  %fld.gep364 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 11
  %fld.load365 = load ptr, ptr %fld.gep364, align 8
  %call.res367 = call ptr @"typedopt::#read_var"(ptr %fld.load365, ptr %1, i1 true)
  br label %common.ret

choice.case369:                                   ; preds = %choice.exit25
  %pay.gep374 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr375 = load ptr, ptr %pay.gep374, align 8
  %fld.load379 = load ptr, ptr %payload.ptr375, align 8
  %tag.id384 = load i64, ptr %fld.load379, align 8
  %4 = sub i64 %tag.id384, 3
  %switch.and = and i64 %4, -2
  %switch.selectcmp = icmp eq i64 %switch.and, 0
  %5 = select i1 %switch.selectcmp, i1 true, i1 false
  br i1 %5, label %and.220.then, label %and.220.exit

and.220.then:                                     ; preds = %choice.case369
  %fld.gep390 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr375, i32 0, i32 2
  %fld.load392 = load ptr, ptr %fld.gep390, align 8
  %tag.id397 = load i64, ptr %fld.load392, align 8
  %tag.match398 = icmp eq i64 %tag.id397, 0
  br i1 %tag.match398, label %choice.case394, label %and.220.exit

and.220.exit:                                     ; preds = %and.220.then, %pay.int.merge404, %choice.case369
  %and.220.phi = phi i1 [ %5, %choice.case369 ], [ %cmptmp409, %pay.int.merge404 ], [ false, %and.220.then ]
  %fld.load413 = load ptr, ptr %payload.ptr375, align 8
  %tag.id418 = load i64, ptr %fld.load413, align 8
  switch i64 %tag.id418, label %choice.next416 [
    i64 21, label %choice.exit414
    i64 20, label %choice.exit414
    i64 19, label %choice.exit414
    i64 12, label %choice.exit414
    i64 11, label %choice.exit414
    i64 10, label %choice.exit414
    i64 9, label %choice.exit414
    i64 8, label %choice.exit414
    i64 7, label %choice.exit414
    i64 6, label %choice.exit414
    i64 5, label %choice.exit414
    i64 2, label %choice.exit414
    i64 1, label %choice.exit414
    i64 0, label %choice.exit414
  ]

choice.case394:                                   ; preds = %and.220.then
  %pay.gep399 = getelementptr inbounds { i64, ptr }, ptr %fld.load392, i32 0, i32 1
  %payload.ptr400 = load ptr, ptr %pay.gep399, align 8
  %pay.int.null401 = icmp eq ptr %payload.ptr400, null
  br i1 %pay.int.null401, label %pay.int.merge404, label %pay.int.load402

pay.int.load402:                                  ; preds = %choice.case394
  %pay.int.val405 = load i64, ptr %payload.ptr400, align 8
  br label %pay.int.merge404

pay.int.merge404:                                 ; preds = %choice.case394, %pay.int.load402
  %pay.int.phi406 = phi i64 [ %pay.int.val405, %pay.int.load402 ], [ 0, %choice.case394 ]
  %cmptmp409 = icmp sgt i64 %pay.int.phi406, 0
  br label %and.220.exit

choice.exit414:                                   ; preds = %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %and.220.exit, %choice.next416
  %choice.res446 = phi i1 [ false, %choice.next416 ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ], [ true, %and.220.exit ]
  %and.220.phi.choice.res446 = select i1 %and.220.phi, i1 %and.220.phi, i1 %choice.res446
  %nottmp449 = xor i1 %and.220.phi.choice.res446, true
  br i1 %nottmp449, label %common.ret, label %choice.exit451

choice.next416:                                   ; preds = %and.220.exit
  br label %choice.exit414

choice.exit451:                                   ; preds = %choice.exit414
  %fld.gep455 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr375, i32 0, i32 1
  %call.res456 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.gep455)
  %fld.gep459 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr375, i32 0, i32 2
  %call.res460 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.gep459)
  %niche.ne.null = icmp ne ptr %call.res456, null
  %niche.ne.null463 = icmp ne ptr %call.res460, null
  %and.222.phi = select i1 %niche.ne.null, i1 %niche.ne.null463, i1 false
  br i1 %and.222.phi, label %choice.then464, label %common.ret

choice.then464:                                   ; preds = %choice.exit451
  %arena.cur467 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 16)
  store i64 7, ptr %enum.alloc, align 8
  %pay.gep469 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %fld.load472 = load ptr, ptr %payload.ptr375, align 8
  %arena.cur478 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur478, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load472, ptr %rec.alloc, align 8
  %rec.fld479 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld479, ptr align 1 %call.res456, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld480 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld480, ptr align 1 %call.res460, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep469, align 8
  %fld.gep483 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load484 = load ptr, ptr %fld.gep483, align 8
  %fld.gep486 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load487 = load ptr, ptr %fld.gep486, align 8
  %fld.gep489 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep491 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load492 = load i64, ptr %fld.gep491, align 8
  %fld.gep494 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load495 = load i64, ptr %fld.gep494, align 8
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc497, align 8
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
  br label %common.ret

choice.case505:                                   ; preds = %choice.exit25
  %pay.gep510 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr511 = load ptr, ptr %pay.gep510, align 8
  %fld.load515 = load ptr, ptr %payload.ptr511, align 8
  %tag.id520 = load i64, ptr %fld.load515, align 8
  switch i64 %tag.id520, label %choice.next518 [
    i64 8, label %choice.exit516
    i64 1, label %choice.exit516
    i64 0, label %choice.exit516
  ]

choice.exit516:                                   ; preds = %choice.case505, %choice.case505, %choice.case505, %choice.next518
  %choice.res526 = phi i1 [ false, %choice.next518 ], [ true, %choice.case505 ], [ true, %choice.case505 ], [ true, %choice.case505 ]
  %nottmp527 = xor i1 %choice.res526, true
  br i1 %nottmp527, label %common.ret, label %choice.exit529

choice.next518:                                   ; preds = %choice.case505
  br label %choice.exit516

choice.exit529:                                   ; preds = %choice.exit516
  %fld.gep533 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr511, i32 0, i32 1
  %call.res534 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.gep533)
  %niche.ne.null535 = icmp ne ptr %call.res534, null
  br i1 %niche.ne.null535, label %choice.then536, label %common.ret

choice.then536:                                   ; preds = %choice.exit529
  %arena.cur540 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc541 = call ptr @dva_arena_alloc(ptr %arena.cur540, i64 16)
  store i64 8, ptr %enum.alloc541, align 8
  %pay.gep543 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc541, i32 0, i32 1
  %fld.load546 = load ptr, ptr %payload.ptr511, align 8
  %arena.cur548 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc549 = call ptr @dva_arena_alloc(ptr %arena.cur548, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load546, ptr %rec.alloc549, align 8
  %rec.fld551 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc549, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld551, ptr align 1 %call.res534, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc549, ptr %pay.gep543, align 8
  %fld.gep554 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load555 = load ptr, ptr %fld.gep554, align 8
  %fld.gep557 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load558 = load ptr, ptr %fld.gep557, align 8
  %fld.gep560 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep562 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load563 = load i64, ptr %fld.gep562, align 8
  %fld.gep565 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load566 = load i64, ptr %fld.gep565, align 8
  %arena.cur567 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc568 = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc541, ptr %rec.alloc568, align 8
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
  br label %common.ret

choice.case576:                                   ; preds = %choice.exit25
  %pay.gep581 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr582 = load ptr, ptr %pay.gep581, align 8
  %fld.load586 = load ptr, ptr %payload.ptr582, align 8
  %tag.id591 = load i64, ptr %fld.load586, align 8
  %tag.match592 = icmp eq i64 %tag.id591, 1
  %.853 = select i1 %tag.match592, i1 true, i1 false
  %nottmp594 = xor i1 %.853, true
  br i1 %nottmp594, label %common.ret, label %choice.exit596

choice.exit596:                                   ; preds = %choice.case576
  %fld.gep599 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr582, i32 0, i32 2
  %fld.load600 = load ptr, ptr %fld.gep599, align 8
  %niche.ne.null601 = icmp ne ptr %fld.load600, null
  br i1 %niche.ne.null601, label %choice.then602, label %choice.else603

choice.then602:                                   ; preds = %choice.exit596
  %fld.gep607 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr582, i32 0, i32 1
  %fld.load608 = load i1, ptr %fld.gep607, align 1
  %nottmp609 = xor i1 %fld.load608, true
  br i1 %nottmp609, label %common.ret, label %or.227.else

choice.else603:                                   ; preds = %choice.exit596
  %fld.gep666 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr582, i32 0, i32 1
  %fld.load667 = load i1, ptr %fld.gep666, align 1
  %nottmp668 = xor i1 %fld.load667, true
  %.854 = select i1 %nottmp668, ptr %1, ptr null
  br label %common.ret

or.227.else:                                      ; preds = %choice.then602
  %call.res611 = call i1 @"typedopt::#wide_int"(ptr %fld.load600)
  %nottmp612 = xor i1 %call.res611, true
  br i1 %nottmp612, label %common.ret, label %choice.exit614

choice.exit614:                                   ; preds = %or.227.else
  %call.res618 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.load600)
  %niche.ne.null619 = icmp ne ptr %call.res618, null
  br i1 %niche.ne.null619, label %choice.then620, label %common.ret

choice.then620:                                   ; preds = %choice.exit614
  %arena.cur625 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc626 = call ptr @dva_arena_alloc(ptr %arena.cur625, i64 16)
  store i64 21, ptr %enum.alloc626, align 8
  %pay.gep628 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc626, i32 0, i32 1
  %fld.load631 = load ptr, ptr %payload.ptr582, align 8
  %fld.load634 = load i1, ptr %fld.gep607, align 1
  %arena.cur636 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load631, ptr %rec.alloc637, align 8
  %rec.fld639 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc637, i32 0, i32 1
  store i1 %fld.load634, ptr %rec.fld639, align 1
  %rec.fld640 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc637, i32 0, i32 2
  store ptr %call.res618, ptr %rec.fld640, align 8
  store ptr %rec.alloc637, ptr %pay.gep628, align 8
  %fld.gep643 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load644 = load ptr, ptr %fld.gep643, align 8
  %fld.gep646 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load647 = load ptr, ptr %fld.gep646, align 8
  %fld.gep649 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep651 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load652 = load i64, ptr %fld.gep651, align 8
  %fld.gep654 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load655 = load i64, ptr %fld.gep654, align 8
  %arena.cur656 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc657 = call ptr @dva_arena_alloc(ptr %arena.cur656, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc626, ptr %rec.alloc657, align 8
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
  br label %common.ret

choice.case675:                                   ; preds = %choice.exit25
  %pay.gep680 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %payload.ptr681 = load ptr, ptr %pay.gep680, align 8
  %fld.gep685 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %payload.ptr681, i32 0, i32 2
  %fld.load686 = load ptr, ptr %fld.gep685, align 8
  %tag.id691 = load i64, ptr %fld.load686, align 8
  %tag.match692 = icmp eq i64 %tag.id691, 0
  br i1 %tag.match692, label %choice.case688, label %choice.exit687

choice.next676:                                   ; preds = %choice.exit25
  br label %common.ret

choice.exit687:                                   ; preds = %choice.case688, %choice.case675
  %choice.res705 = phi i1 [ false, %choice.case675 ], [ %.855, %choice.case688 ]
  %nottmp707 = xor i1 %choice.res705, true
  br i1 %nottmp707, label %common.ret, label %or.228.else

choice.case688:                                   ; preds = %choice.case675
  %pay.gep693 = getelementptr inbounds { i64, ptr }, ptr %fld.load686, i32 0, i32 1
  %payload.ptr694 = load ptr, ptr %pay.gep693, align 8
  %tag.id702 = load i64, ptr %payload.ptr694, align 8
  %tag.match703 = icmp eq i64 %tag.id702, 27
  %.855 = select i1 %tag.match703, i1 true, i1 false
  br label %choice.exit687

or.228.else:                                      ; preds = %choice.exit687
  %fld.gep709 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr681, i32 0, i32 1
  %fld.load710 = load ptr, ptr %fld.gep709, align 8
  %a.len.query712 = load i64, ptr %fld.load710, align 8
  %cmptmp713 = icmp ne i64 %a.len.query712, 2
  br i1 %cmptmp713, label %common.ret, label %choice.exit715

choice.exit715:                                   ; preds = %or.228.else
  %call.res720 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %payload.ptr681)
  %niche.ne.null722 = icmp ne ptr %call.res720, null
  %nottmp723 = xor i1 %niche.ne.null722, true
  br i1 %nottmp723, label %common.ret, label %choice.exit725

choice.exit725:                                   ; preds = %choice.exit715
  %arena.cur727 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur727, i64 24)
  %arena.cur728 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf729, ptr %a.data.gep731, align 8
  %a.cap.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep732, align 8
  %fld.gep734 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr681, i32 0, i32 1
  %fld.load735 = load ptr, ptr %fld.gep734, align 8
  %arr.cycle.len736 = load i64, ptr %fld.load735, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load735, i32 0, i32 1
  %arr.cycle.data737 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.229

loop.header.229:                                  ; preds = %a.store, %choice.exit725
  %var.branches.0 = phi ptr [ %a.new, %choice.exit725 ], [ %var.branches.1, %a.store ]
  %loop.idx.229.0 = phi i64 [ 0, %choice.exit725 ], [ %loop.next, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.229.0, %arr.cycle.len736
  br i1 %loop.cond, label %loop.body.229, label %loop.exit.229

loop.body.229:                                    ; preds = %loop.header.229
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data737, i64 %loop.idx.229.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res741 = call i1 @"typedopt::#bare_branch"(ptr %slot.i2p)
  %nottmp742 = xor i1 %call.res741, true
  br i1 %nottmp742, label %common.ret, label %or.230.else

loop.exit.229:                                    ; preds = %loop.header.229
  %arena.cur805 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc806 = call ptr @dva_arena_alloc(ptr %arena.cur805, i64 16)
  store i64 15, ptr %enum.alloc806, align 8
  %pay.gep808 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc806, i32 0, i32 1
  br i1 %niche.ne.null722, label %a.after816, label %unwrap.abort.233

or.230.else:                                      ; preds = %loop.body.229
  %fld.gep744 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 4
  %fld.load745 = load ptr, ptr %fld.gep744, align 8
  %a.len.query747 = load i64, ptr %fld.load745, align 8
  %cmptmp748 = icmp ne i64 %a.len.query747, 0
  br i1 %cmptmp748, label %common.ret, label %choice.exit750

choice.exit750:                                   ; preds = %or.230.else
  %fld.gep754 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 5
  %call.res755 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.gep754)
  %niche.ne.null757 = icmp ne ptr %call.res755, null
  %nottmp758 = xor i1 %niche.ne.null757, true
  br i1 %nottmp758, label %common.ret, label %choice.exit760

choice.exit760:                                   ; preds = %choice.exit750
  br i1 %niche.ne.null757, label %unwrap.pos.231, label %unwrap.abort.231

unwrap.pos.231:                                   ; preds = %choice.exit760
  %fld.load767 = load ptr, ptr %slot.i2p, align 8
  %fld.gep769 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 1
  %fld.load770 = load ptr, ptr %fld.gep769, align 8
  %fld.gep772 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 2
  %fld.load773 = load ptr, ptr %fld.gep772, align 8
  %fld.gep775 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 3
  %fld.load776 = load ptr, ptr %fld.gep775, align 8
  %fld.gep778 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 4
  %fld.load779 = load ptr, ptr %fld.gep778, align 8
  %arena.cur781 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc782 = call ptr @dva_arena_alloc(ptr %arena.cur781, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load767, ptr %rec.alloc782, align 8
  %rec.fld784 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 1
  store ptr %fld.load770, ptr %rec.fld784, align 8
  %rec.fld785 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 2
  store ptr %fld.load773, ptr %rec.fld785, align 8
  %rec.fld786 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 3
  store ptr %fld.load776, ptr %rec.fld786, align 8
  %rec.fld787 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 4
  store ptr %fld.load779, ptr %rec.fld787, align 8
  %rec.fld788 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc782, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld788, ptr align 1 %call.res755, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.null790 = icmp eq ptr %var.branches.0, null
  br i1 %a.null790, label %a.create791, label %a.check

unwrap.abort.231:                                 ; preds = %choice.exit760
  %6 = call i64 @write(i32 2, ptr @expect.reason.232, i64 21)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.create791:                                      ; preds = %unwrap.pos.231
  %arena.cur793 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create794 = call ptr @dva_arena_alloc(ptr %arena.cur793, i64 24)
  %arena.cur795 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf796 = call ptr @dva_arena_alloc(ptr %arena.cur795, i64 128)
  store i64 0, ptr %a.create794, align 8
  %a.data.gep798 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create794, i32 0, i32 1
  store ptr %a.buf796, ptr %a.data.gep798, align 8
  %a.cap.gep799 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create794, i32 0, i32 2
  store i64 16, ptr %a.cap.gep799, align 8
  br label %a.check

a.check:                                          ; preds = %unwrap.pos.231, %a.create791
  %var.branches.1 = phi ptr [ %a.create794, %a.create791 ], [ %var.branches.0, %unwrap.pos.231 ]
  %a.len801 = load i64, ptr %var.branches.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.branches.1, i32 0, i32 2
  %a.cap802 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len801, %a.cap802
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.branches.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.branches.1, i32 0, i32 1
  %a.cur.data803 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len804 = load i64, ptr %var.branches.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data803, i64 %a.cur.len804
  %slot.p2i = ptrtoint ptr %rec.alloc782 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len804, 1
  store i64 %a.next.len, ptr %var.branches.1, align 8
  %loop.next = add i64 %loop.idx.229.0, 1
  br label %loop.header.229

unwrap.abort.233:                                 ; preds = %loop.exit.229
  %7 = call i64 @write(i32 2, ptr @expect.reason.234, i64 21)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.after816:                                       ; preds = %loop.exit.229
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc826, ptr align 1 %call.res720, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld828 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc826, i32 0, i32 1
  store ptr %var.branches.0, ptr %rec.fld828, align 8
  store ptr %rec.alloc826, ptr %pay.gep808, align 8
  %fld.gep831 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load832 = load ptr, ptr %fld.gep831, align 8
  %fld.gep834 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load835 = load ptr, ptr %fld.gep834, align 8
  %fld.gep837 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep839 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load840 = load i64, ptr %fld.gep839, align 8
  %fld.gep842 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load843 = load i64, ptr %fld.gep842, align 8
  %arena.cur844 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc845 = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc806, ptr %rec.alloc845, align 8
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
  br label %common.ret
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_unwrap_abort_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @unwrap_abort_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len1 = load i64, ptr %0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

a.grow.bytes8:                                    ; preds = %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  store ptr %a.new.buf, ptr %a.data, align 8
  store i64 %a.new.cap, ptr %a.cap, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

define internal ptr @"typedopt::#replace_append"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #3 {
entry:
  %fld.load = load ptr, ptr %1, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %common.ret [
    i64 18, label %choice.case
    i64 15, label %choice.case278
  ]

common.ret:                                       ; preds = %unwrap.pos.247, %choice.exit505, %str.eq.merge495, %choice.exit347, %or.249.else, %or.246.exit, %entry, %a.store166, %unwrap.pos.244, %choice.exit40, %or.239.exit, %a.after601
  %common.ret.op = phi ptr [ %rec.alloc630, %a.after601 ], [ null, %or.239.exit ], [ null, %choice.exit40 ], [ %rec.alloc213, %a.store166 ], [ %rec.alloc270, %unwrap.pos.244 ], [ null, %entry ], [ null, %or.246.exit ], [ null, %or.249.else ], [ null, %choice.exit347 ], [ null, %str.eq.merge495 ], [ null, %choice.exit505 ], [ null, %unwrap.pos.247 ]
  ret ptr %common.ret.op

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load3 = load ptr, ptr %payload.ptr, align 8
  %fld.gep5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 7
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %eq.lhs.len7 = load i64, ptr %fld.load3, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.case
  %eq.rhs.len9 = load i64, ptr %fld.load6, align 8
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
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

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

str.eq.merge:                                     ; preds = %str_ok12, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok12 ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %or.235.exit, label %or.235.else

or.235.else:                                      ; preds = %str.eq.merge
  %fld.gep21 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 1
  %fld.load22 = load i1, ptr %fld.gep21, align 1
  br label %or.235.exit

or.235.exit:                                      ; preds = %str.eq.merge, %or.235.else
  %or.235.phi = phi i1 [ %fld.load22, %or.235.else ], [ true, %str.eq.merge ]
  br i1 %or.235.phi, label %or.236.exit, label %or.236.else

or.236.else:                                      ; preds = %or.235.exit
  %fld.gep24 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 3
  %fld.load25 = load i1, ptr %fld.gep24, align 1
  br label %or.236.exit

or.236.exit:                                      ; preds = %or.235.exit, %or.236.else
  %or.236.phi = phi i1 [ %fld.load25, %or.236.else ], [ %or.235.phi, %or.235.exit ]
  br i1 %or.236.phi, label %or.237.exit, label %or.237.else

or.237.else:                                      ; preds = %or.236.exit
  %fld.gep27 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 4
  %fld.load28 = load i1, ptr %fld.gep27, align 1
  br label %or.237.exit

or.237.exit:                                      ; preds = %or.236.exit, %or.237.else
  %or.237.phi = phi i1 [ %fld.load28, %or.237.else ], [ %or.236.phi, %or.236.exit ]
  br i1 %or.237.phi, label %or.238.exit, label %or.238.else

or.238.else:                                      ; preds = %or.237.exit
  %fld.gep30 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 2
  %fld.load31 = load i1, ptr %fld.gep30, align 1
  %fld.gep33 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 9
  %fld.load34 = load i1, ptr %fld.gep33, align 1
  %flag.cmp = icmp ne i1 %fld.load31, %fld.load34
  br label %or.238.exit

or.238.exit:                                      ; preds = %or.237.exit, %or.238.else
  %or.238.phi = phi i1 [ %flag.cmp, %or.238.else ], [ %or.237.phi, %or.237.exit ]
  br i1 %or.238.phi, label %or.239.exit, label %or.239.else

or.239.else:                                      ; preds = %or.238.exit
  %fld.gep36 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  %call.res = call i1 @"typedopt::#wide_int"(ptr %fld.gep36)
  %nottmp = xor i1 %call.res, true
  br label %or.239.exit

or.239.exit:                                      ; preds = %or.238.exit, %or.239.else
  %or.239.phi = phi i1 [ %nottmp, %or.239.else ], [ %or.238.phi, %or.238.exit ]
  br i1 %or.239.phi, label %common.ret, label %choice.exit37

choice.exit37:                                    ; preds = %or.239.exit
  br i1 %4, label %choice.then39, label %choice.else

choice.then39:                                    ; preds = %choice.exit37
  %fld.gep42 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  br label %choice.exit40

choice.else:                                      ; preds = %choice.exit37
  %fld.gep45 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  %call.res46 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %fld.gep45)
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else, %choice.then39
  %choice.res = phi ptr [ %fld.gep42, %choice.then39 ], [ %call.res46, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  %nottmp48 = xor i1 %niche.ne.null, true
  br i1 %nottmp48, label %common.ret, label %choice.exit50

choice.exit50:                                    ; preds = %choice.exit40
  %niche.ne.null53 = icmp ne ptr %2, null
  br i1 %niche.ne.null53, label %choice.then54, label %choice.else55

choice.then54:                                    ; preds = %choice.exit50
  %fld.gep59 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %2, i32 0, i32 11
  %fld.load60 = load ptr, ptr %fld.gep59, align 8
  %call.res61 = call ptr @"tast::mk_lit_int"(i64 0, i64 0, i64 0)
  %call.res62 = call ptr @"typedopt::#read_var"(ptr %fld.load60, ptr %call.res61, i1 true)
  %call.res63 = call ptr @"tast::mk_lit_int"(i64 1, i64 0, i64 0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 7, ptr %enum.alloc, align 8
  %pay.gep65 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  store i64 0, ptr %enum.alloc67, align 8
  %pay.gep69 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc67, i32 0, i32 1
  store ptr null, ptr %pay.gep69, align 8
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %enum.alloc67, ptr %rec.alloc, align 8
  %rec.fld73 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld73, ptr align 1 %call.res62, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld74 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld74, ptr align 1 %call.res63, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep65, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res62, i32 0, i32 1
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res62, i32 0, i32 2
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %fld.gep83 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res62, i32 0, i32 3
  %fld.gep85 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res62, i32 0, i32 4
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %fld.gep88 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res62, i32 0, i32 5
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc91, align 8
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
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %fld.gep101 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %2, i32 0, i32 10
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  br i1 %niche.ne.null, label %unwrap.pos.240, label %unwrap.abort.240

choice.else55:                                    ; preds = %choice.exit50
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 16)
  store i64 18, ptr %enum.alloc221, align 8
  %pay.gep223 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc221, i32 0, i32 1
  %fld.load226 = load ptr, ptr %payload.ptr, align 8
  %fld.gep228 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 1
  %fld.load229 = load i1, ptr %fld.gep228, align 1
  %fld.gep231 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 2
  %fld.load232 = load i1, ptr %fld.gep231, align 1
  %fld.gep234 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 3
  %fld.load235 = load i1, ptr %fld.gep234, align 1
  %fld.gep237 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 4
  %fld.load238 = load i1, ptr %fld.gep237, align 1
  br i1 %niche.ne.null, label %unwrap.pos.244, label %unwrap.abort.244

unwrap.pos.240:                                   ; preds = %choice.then54
  %call.res104 = call ptr @"typedopt::#write_var"(ptr %fld.load102, i1 false, ptr %choice.res)
  %a.len112 = load i64, ptr %a.new, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len112, %a.cap113
  br i1 %a.needs.grow, label %a.grow, label %a.store

unwrap.abort.240:                                 ; preds = %choice.then54
  %5 = call i64 @write(i32 2, ptr @expect.reason.241, i64 20)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.grow:                                           ; preds = %unwrap.pos.240
  call void @dva_array_grow(ptr %a.new)
  br label %a.store

a.store:                                          ; preds = %a.grow, %unwrap.pos.240
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.cur.data114 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len115 = load i64, ptr %a.new, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data114, i64 %a.cur.len115
  %slot.p2i = ptrtoint ptr %call.res104 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len115, 1
  store i64 %a.next.len, ptr %a.new, align 8
  %unwrap.is_pos117 = icmp ne ptr %3, null
  br i1 %unwrap.is_pos117, label %a.check131, label %unwrap.abort.242

unwrap.abort.242:                                 ; preds = %a.store
  %6 = call i64 @write(i32 2, ptr @expect.reason.243, i64 27)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.check131:                                       ; preds = %a.store
  %a.len135 = load i64, ptr %a.new, align 8
  %a.cap136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  %a.cap137 = load i64, ptr %a.cap136, align 8
  %a.needs.grow138 = icmp eq i64 %a.len135, %a.cap137
  br i1 %a.needs.grow138, label %a.grow132, label %a.store133

a.grow132:                                        ; preds = %a.check131
  call void @dva_array_grow(ptr %a.new)
  br label %a.store133

a.store133:                                       ; preds = %a.grow132, %a.check131
  %a.cur.data139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.cur.data140 = load ptr, ptr %a.cur.data139, align 8
  %a.cur.len142 = load i64, ptr %a.new, align 8
  %a.elem.gep143 = getelementptr i64, ptr %a.cur.data140, i64 %a.cur.len142
  %slot.p2i144 = ptrtoint ptr %3 to i64
  store i64 %slot.p2i144, ptr %a.elem.gep143, align 8
  %a.next.len145 = add i64 %a.cur.len142, 1
  store i64 %a.next.len145, ptr %a.new, align 8
  %fld.load149 = load ptr, ptr %fld.gep59, align 8
  %call.res151 = call ptr @"typedopt::#write_var"(ptr %fld.load149, i1 false, ptr %rec.alloc91)
  %a.len168 = load i64, ptr %a.new, align 8
  %a.cap169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  %a.cap170 = load i64, ptr %a.cap169, align 8
  %a.needs.grow171 = icmp eq i64 %a.len168, %a.cap170
  br i1 %a.needs.grow171, label %a.grow165, label %a.store166

a.grow165:                                        ; preds = %a.store133
  call void @dva_array_grow(ptr %a.new)
  br label %a.store166

a.store166:                                       ; preds = %a.grow165, %a.store133
  %a.cur.data172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.cur.data173 = load ptr, ptr %a.cur.data172, align 8
  %a.cur.len175 = load i64, ptr %a.new, align 8
  %a.elem.gep176 = getelementptr i64, ptr %a.cur.data173, i64 %a.cur.len175
  %slot.p2i177 = ptrtoint ptr %call.res151 to i64
  store i64 %slot.p2i177, ptr %a.elem.gep176, align 8
  %a.next.len178 = add i64 %a.cur.len175, 1
  store i64 %a.next.len178, ptr %a.new, align 8
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 16)
  store i64 17, ptr %enum.alloc181, align 8
  %pay.gep183 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc181, i32 0, i32 1
  store ptr %a.new, ptr %pay.gep183, align 8
  %fld.gep199 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load200 = load ptr, ptr %fld.gep199, align 8
  %fld.gep202 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load203 = load ptr, ptr %fld.gep202, align 8
  %fld.gep205 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep207 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load208 = load i64, ptr %fld.gep207, align 8
  %fld.gep210 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load211 = load i64, ptr %fld.gep210, align 8
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc181, ptr %rec.alloc213, align 8
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
  br label %common.ret

unwrap.pos.244:                                   ; preds = %choice.else55
  %fld.gep243 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 6
  %fld.load244 = load i1, ptr %fld.gep243, align 1
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load226, ptr %rec.alloc246, align 8
  %rec.fld248 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 1
  store i1 %fld.load229, ptr %rec.fld248, align 1
  %rec.fld249 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 2
  store i1 %fld.load232, ptr %rec.fld249, align 1
  %rec.fld250 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 3
  store i1 %fld.load235, ptr %rec.fld250, align 1
  %rec.fld251 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 4
  store i1 %fld.load238, ptr %rec.fld251, align 1
  %rec.fld252 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld252, ptr align 1 %choice.res, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld253 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc246, i32 0, i32 6
  store i1 %fld.load244, ptr %rec.fld253, align 1
  store ptr %rec.alloc246, ptr %pay.gep223, align 8
  %fld.gep256 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load257 = load ptr, ptr %fld.gep256, align 8
  %fld.gep259 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load260 = load ptr, ptr %fld.gep259, align 8
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load265 = load i64, ptr %fld.gep264, align 8
  %fld.gep267 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load268 = load i64, ptr %fld.gep267, align 8
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc221, ptr %rec.alloc270, align 8
  %rec.fld272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc270, i32 0, i32 1
  store ptr %fld.load257, ptr %rec.fld272, align 8
  %rec.fld273 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc270, i32 0, i32 2
  store ptr %fld.load260, ptr %rec.fld273, align 8
  %rec.fld274 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc270, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld274, ptr align 1 %fld.gep262, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld275 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc270, i32 0, i32 4
  store i64 %fld.load265, ptr %rec.fld275, align 8
  %rec.fld276 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc270, i32 0, i32 5
  store i64 %fld.load268, ptr %rec.fld276, align 8
  br label %common.ret

unwrap.abort.244:                                 ; preds = %choice.else55
  %7 = call i64 @write(i32 2, ptr @expect.reason.245, i64 20)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

choice.case278:                                   ; preds = %entry
  %pay.gep283 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr284 = load ptr, ptr %pay.gep283, align 8
  br i1 %4, label %or.246.exit, label %or.246.else

or.246.else:                                      ; preds = %choice.case278
  %fld.gep288 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr284, i32 0, i32 1
  %fld.load289 = load ptr, ptr %fld.gep288, align 8
  %a.len.query290 = load i64, ptr %fld.load289, align 8
  %cmptmp = icmp ne i64 %a.len.query290, 1
  br label %or.246.exit

or.246.exit:                                      ; preds = %choice.case278, %or.246.else
  %or.246.phi = phi i1 [ %cmptmp, %or.246.else ], [ %4, %choice.case278 ]
  br i1 %or.246.phi, label %common.ret, label %choice.exit292

choice.exit292:                                   ; preds = %or.246.exit
  %fld.gep295 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr284, i32 0, i32 1
  %fld.load296 = load ptr, ptr %fld.gep295, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load296, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %choice.exit292
  %a.rd.len297 = load i64, ptr %fld.load296, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len297
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load296, i32 0, i32 1
  %a.rd.data298 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data298, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.exit292
  %arena.cur299 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 56)
  store i64 4011, ptr %err.alloc301, align 8
  %err.msg.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep303, align 8
  %err.file.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep304, align 8
  %err.line.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 3
  store i64 0, ptr %err.line.gep305, align 8
  %err.col.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 4
  store i64 0, ptr %err.col.gep306, align 8
  %err.ctx.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep307, align 8
  %err.ctx1.gep309 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep307, i32 0, i32 1
  store i64 %a.rd.len297, ptr %err.ctx1.gep309, align 8
  %err.p2i310 = ptrtoint ptr %err.alloc301 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i310, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.247, label %unwrap.abort.247

unwrap.pos.247:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %call.res338 = call i1 @"typedopt::#bare_branch"(ptr %pay.ptr)
  %nottmp339 = xor i1 %call.res338, true
  br i1 %nottmp339, label %common.ret, label %or.249.else

unwrap.abort.247:                                 ; preds = %a.rd.done
  %8 = call i64 @write(i32 2, ptr @expect.reason.248, i64 25)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep313, align 8
  %err.file.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep314, align 8
  %err.line.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep315, align 8
  %err.col.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep316, align 8
  %err.msg.len317 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len318 = and i64 %err.msg.len317, 281474976710655
  %str.tag319 = lshr i64 %err.msg.len317, 48
  %tag.immortal321 = icmp eq i64 %str.tag319, 0
  %active.gen322 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current323 = icmp eq i64 %str.tag319, %active.gen322
  %tag.fast.ok324 = or i1 %tag.immortal321, %tag.current323
  br i1 %tag.fast.ok324, label %str_ok320, label %tag.slow_check325

str_ok320:                                        ; preds = %tag.slow_check325, %unwrap.abort.247
  %err.msg.len32 = trunc i64 %err.msg.len318 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data326 = load ptr, ptr %err.msg.data, align 8
  %err.file.len327 = load i64, ptr %err.file.struct, align 8
  %err.file.len328 = and i64 %err.file.len327, 281474976710655
  %str.tag329 = lshr i64 %err.file.len327, 48
  %tag.immortal331 = icmp eq i64 %str.tag329, 0
  %active.gen332 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current333 = icmp eq i64 %str.tag329, %active.gen332
  %tag.fast.ok334 = or i1 %tag.immortal331, %tag.current333
  br i1 %tag.fast.ok334, label %str_ok330, label %tag.slow_check335

tag.slow_check325:                                ; preds = %unwrap.abort.247
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag319)
  br label %str_ok320

str_ok330:                                        ; preds = %tag.slow_check335, %str_ok320
  %err.file.len32 = trunc i64 %err.file.len328 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data336 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check335:                                ; preds = %str_ok320
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag329)
  br label %str_ok330

err.thread:                                       ; preds = %str_ok330
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok330
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data326, i32 %err.file.len32, ptr %err.file.data336, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

or.249.else:                                      ; preds = %unwrap.pos.247
  %fld.gep341 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %fld.load342 = load ptr, ptr %fld.gep341, align 8
  %a.len.query344 = load i64, ptr %fld.load342, align 8
  %cmptmp345 = icmp ne i64 %a.len.query344, 1
  br i1 %cmptmp345, label %common.ret, label %choice.exit347

choice.exit347:                                   ; preds = %or.249.else
  %fld.gep350 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 5
  %fld.load352 = load ptr, ptr %fld.gep350, align 8
  %tag.id357 = load i64, ptr %fld.load352, align 8
  %tag.match358 = icmp eq i64 %tag.id357, 18
  br i1 %tag.match358, label %choice.case354, label %common.ret

choice.case354:                                   ; preds = %choice.exit347
  %pay.gep359 = getelementptr inbounds { i64, ptr }, ptr %fld.load352, i32 0, i32 1
  %payload.ptr360 = load ptr, ptr %pay.gep359, align 8
  %fld.gep364 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr360, i32 0, i32 5
  %fld.load366 = load ptr, ptr %fld.gep364, align 8
  %tag.id371 = load i64, ptr %fld.load366, align 8
  %tag.match372 = icmp eq i64 %tag.id371, 6
  br i1 %tag.match372, label %choice.case368, label %choice.exit367

choice.exit367:                                   ; preds = %choice.case354, %choice.case368
  %choice.res379 = phi ptr [ %fld.load378, %choice.case368 ], [ @str.0.struct, %choice.case354 ]
  %fld.gep382 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %fld.load383 = load ptr, ptr %fld.gep382, align 8
  %a.rd.nonnull384 = icmp ne ptr %fld.load383, null
  br i1 %a.rd.nonnull384, label %a.rd.check385, label %a.rd.err.null387

choice.case368:                                   ; preds = %choice.case354
  %pay.gep373 = getelementptr inbounds { i64, ptr }, ptr %fld.load366, i32 0, i32 1
  %payload.ptr374 = load ptr, ptr %pay.gep373, align 8
  %fld.load378 = load ptr, ptr %payload.ptr374, align 8
  br label %choice.exit367

a.rd.check385:                                    ; preds = %choice.exit367
  %a.rd.len391 = load i64, ptr %fld.load383, align 8
  %a.rd.lt392 = icmp slt i64 0, %a.rd.len391
  br i1 %a.rd.lt392, label %a.rd.ok386, label %a.rd.err.oob388

a.rd.ok386:                                       ; preds = %a.rd.check385
  %a.rd.data394 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load383, i32 0, i32 1
  %a.rd.data395 = load ptr, ptr %a.rd.data394, align 8
  %a.rd.elem397 = load i64, ptr %a.rd.data395, align 8
  br label %a.rd.done389

a.rd.err.null387:                                 ; preds = %choice.exit367
  %arena.cur398 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc399 = call ptr @dva_arena_alloc(ptr %arena.cur398, i64 56)
  store i64 4011, ptr %err.alloc399, align 8
  %err.msg.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc399, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep401, align 8
  %err.file.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc399, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep402, align 8
  %err.line.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc399, i32 0, i32 3
  store i64 0, ptr %err.line.gep403, align 8
  %err.col.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc399, i32 0, i32 4
  store i64 0, ptr %err.col.gep404, align 8
  %err.ctx.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc399, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep405, align 8
  %err.ctx1.gep407 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep405, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep407, align 8
  %err.p2i408 = ptrtoint ptr %err.alloc399 to i64
  br label %a.rd.done389

a.rd.err.oob388:                                  ; preds = %a.rd.check385
  %arena.cur409 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc410 = call ptr @dva_arena_alloc(ptr %arena.cur409, i64 56)
  store i64 4011, ptr %err.alloc410, align 8
  %err.msg.gep412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc410, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep412, align 8
  %err.file.gep413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc410, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep413, align 8
  %err.line.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc410, i32 0, i32 3
  store i64 0, ptr %err.line.gep414, align 8
  %err.col.gep415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc410, i32 0, i32 4
  store i64 0, ptr %err.col.gep415, align 8
  %err.ctx.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc410, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep416, align 8
  %err.ctx1.gep418 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep416, i32 0, i32 1
  store i64 %a.rd.len391, ptr %err.ctx1.gep418, align 8
  %err.p2i419 = ptrtoint ptr %err.alloc410 to i64
  br label %a.rd.done389

a.rd.done389:                                     ; preds = %a.rd.err.oob388, %a.rd.err.null387, %a.rd.ok386
  %a.rd.tag420 = phi i1 [ true, %a.rd.ok386 ], [ false, %a.rd.err.null387 ], [ false, %a.rd.err.oob388 ]
  %a.rd.pay421 = phi i64 [ %a.rd.elem397, %a.rd.ok386 ], [ %err.p2i408, %a.rd.err.null387 ], [ %err.p2i419, %a.rd.err.oob388 ]
  %ram.tag422 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag420, 0
  %ram.pay423 = insertvalue { i1, i64 } %ram.tag422, i64 %a.rd.pay421, 1
  br i1 %a.rd.tag420, label %unwrap.pos.250, label %unwrap.abort.250

unwrap.pos.250:                                   ; preds = %a.rd.done389
  %pay.ptr471 = inttoptr i64 %a.rd.pay421 to ptr
  %eq.lhs.len473 = load i64, ptr %choice.res379, align 8
  %eq.lhs.len474 = and i64 %eq.lhs.len473, 281474976710655
  %str.tag475 = lshr i64 %eq.lhs.len473, 48
  %tag.immortal477 = icmp eq i64 %str.tag475, 0
  %active.gen478 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current479 = icmp eq i64 %str.tag475, %active.gen478
  %tag.fast.ok480 = or i1 %tag.immortal477, %tag.current479
  br i1 %tag.fast.ok480, label %str_ok476, label %tag.slow_check481

unwrap.abort.250:                                 ; preds = %a.rd.done389
  %9 = call i64 @write(i32 2, ptr @expect.reason.251, i64 26)
  %err.ptr426 = inttoptr i64 %a.rd.pay421 to ptr
  %err.code428 = load i64, ptr %err.ptr426, align 8
  %err.msg.gep429 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr426, i32 0, i32 1
  %err.msg.struct430 = load ptr, ptr %err.msg.gep429, align 8
  %err.file.gep431 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr426, i32 0, i32 2
  %err.file.struct432 = load ptr, ptr %err.file.gep431, align 8
  %err.line.gep433 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr426, i32 0, i32 3
  %err.line434 = load i64, ptr %err.line.gep433, align 8
  %err.col.gep435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr426, i32 0, i32 4
  %err.col436 = load i64, ptr %err.col.gep435, align 8
  %err.msg.len438 = load i64, ptr %err.msg.struct430, align 8
  %err.msg.len439 = and i64 %err.msg.len438, 281474976710655
  %str.tag440 = lshr i64 %err.msg.len438, 48
  %tag.immortal442 = icmp eq i64 %str.tag440, 0
  %active.gen443 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current444 = icmp eq i64 %str.tag440, %active.gen443
  %tag.fast.ok445 = or i1 %tag.immortal442, %tag.current444
  br i1 %tag.fast.ok445, label %str_ok441, label %tag.slow_check446

str_ok441:                                        ; preds = %tag.slow_check446, %unwrap.abort.250
  %err.msg.len32447 = trunc i64 %err.msg.len439 to i32
  %err.msg.data448 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct430, i32 0, i32 1
  %err.msg.data449 = load ptr, ptr %err.msg.data448, align 8
  %err.file.len451 = load i64, ptr %err.file.struct432, align 8
  %err.file.len452 = and i64 %err.file.len451, 281474976710655
  %str.tag453 = lshr i64 %err.file.len451, 48
  %tag.immortal455 = icmp eq i64 %str.tag453, 0
  %active.gen456 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current457 = icmp eq i64 %str.tag453, %active.gen456
  %tag.fast.ok458 = or i1 %tag.immortal455, %tag.current457
  br i1 %tag.fast.ok458, label %str_ok454, label %tag.slow_check459

tag.slow_check446:                                ; preds = %unwrap.abort.250
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag440)
  br label %str_ok441

str_ok454:                                        ; preds = %tag.slow_check459, %str_ok441
  %err.file.len32460 = trunc i64 %err.file.len452 to i32
  %err.file.data461 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct432, i32 0, i32 1
  %err.file.data462 = load ptr, ptr %err.file.data461, align 8
  %err.thread.rec463 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread464 = icmp ne ptr %err.thread.rec463, null
  br i1 %err.is.thread464, label %err.thread465, label %err.normal466

tag.slow_check459:                                ; preds = %str_ok441
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag453)
  br label %str_ok454

err.thread465:                                    ; preds = %str_ok454
  %err.haserr.gep467 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec463, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep467, align 8
  %err.err.gep468 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec463, i32 0, i32 7
  store ptr %err.ptr426, ptr %err.err.gep468, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal466:                                    ; preds = %str_ok454
  %err.panic.printf469 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code428, i32 %err.msg.len32447, ptr %err.msg.data449, i32 %err.file.len32460, ptr %err.file.data462, i64 %err.line434, i64 %err.col436)
  call void @exit(i32 1)
  unreachable

str_ok476:                                        ; preds = %tag.slow_check481, %unwrap.pos.250
  %eq.rhs.len483 = load i64, ptr %pay.ptr471, align 8
  %eq.rhs.len484 = and i64 %eq.rhs.len483, 281474976710655
  %str.tag485 = lshr i64 %eq.rhs.len483, 48
  %tag.immortal487 = icmp eq i64 %str.tag485, 0
  %active.gen488 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current489 = icmp eq i64 %str.tag485, %active.gen488
  %tag.fast.ok490 = or i1 %tag.immortal487, %tag.current489
  br i1 %tag.fast.ok490, label %str_ok486, label %tag.slow_check491

tag.slow_check481:                                ; preds = %unwrap.pos.250
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag475)
  br label %str_ok476

str_ok486:                                        ; preds = %tag.slow_check491, %str_ok476
  %eq.len492 = icmp eq i64 %eq.lhs.len474, %eq.rhs.len484
  br i1 %eq.len492, label %str.eq.then493, label %str.eq.merge495

tag.slow_check491:                                ; preds = %str_ok476
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag485)
  br label %str_ok486

str.eq.then493:                                   ; preds = %str_ok486
  %eq.lhs.data496 = getelementptr inbounds { i64, ptr }, ptr %choice.res379, i32 0, i32 1
  %eq.lhs.data497 = load ptr, ptr %eq.lhs.data496, align 8
  %eq.rhs.data498 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr471, i32 0, i32 1
  %eq.rhs.data499 = load ptr, ptr %eq.rhs.data498, align 8
  %eq.memcmp500 = call i32 @memcmp(ptr %eq.lhs.data497, ptr %eq.rhs.data499, i64 %eq.lhs.len474)
  %eq.cmp.zero501 = icmp eq i32 %eq.memcmp500, 0
  br label %str.eq.merge495

str.eq.merge495:                                  ; preds = %str_ok486, %str.eq.then493
  %str.eq.result502 = phi i1 [ %eq.cmp.zero501, %str.eq.then493 ], [ false, %str_ok486 ]
  %str.neq503 = xor i1 %str.eq.result502, true
  br i1 %str.neq503, label %common.ret, label %choice.exit505

choice.exit505:                                   ; preds = %str.eq.merge495
  %call.res511 = call ptr @"typedopt::#stage_value"(ptr %0, ptr %payload.ptr284)
  %call.res517 = call ptr @"typedopt::#replace_append"(ptr %0, ptr %fld.gep350, ptr %2, ptr %3, i1 true)
  %niche.ne.null520 = icmp ne ptr %call.res511, null
  %nottmp521 = xor i1 %niche.ne.null520, true
  %niche.ne.null523 = icmp ne ptr %call.res517, null
  %nottmp524 = xor i1 %niche.ne.null523, true
  %or.252.phi = select i1 %nottmp521, i1 true, i1 %nottmp524
  br i1 %or.252.phi, label %common.ret, label %choice.exit526

choice.exit526:                                   ; preds = %choice.exit505
  %arena.cur528 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 24)
  %arena.cur530 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf531 = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 128)
  store i64 0, ptr %a.new529, align 8
  %a.data.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new529, i32 0, i32 1
  store ptr %a.buf531, ptr %a.data.gep533, align 8
  %a.cap.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new529, i32 0, i32 2
  store i64 16, ptr %a.cap.gep534, align 8
  %unwrap.is_pos536 = icmp ne ptr %call.res517, null
  br i1 %unwrap.is_pos536, label %unwrap.pos.253, label %unwrap.abort.253

unwrap.pos.253:                                   ; preds = %choice.exit526
  %fld.load540 = load ptr, ptr %pay.ptr, align 8
  %fld.gep542 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %fld.load543 = load ptr, ptr %fld.gep542, align 8
  %fld.gep545 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %fld.load546 = load ptr, ptr %fld.gep545, align 8
  %fld.gep548 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %fld.load549 = load ptr, ptr %fld.gep548, align 8
  %fld.load552 = load ptr, ptr %fld.gep382, align 8
  %arena.cur554 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc555 = call ptr @dva_arena_alloc(ptr %arena.cur554, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load540, ptr %rec.alloc555, align 8
  %rec.fld557 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc555, i32 0, i32 1
  store ptr %fld.load543, ptr %rec.fld557, align 8
  %rec.fld558 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc555, i32 0, i32 2
  store ptr %fld.load546, ptr %rec.fld558, align 8
  %rec.fld559 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc555, i32 0, i32 3
  store ptr %fld.load549, ptr %rec.fld559, align 8
  %rec.fld560 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc555, i32 0, i32 4
  store ptr %fld.load552, ptr %rec.fld560, align 8
  %rec.fld561 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc555, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld561, ptr align 1 %call.res517, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.len578 = load i64, ptr %a.new529, align 8
  %a.cap579 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new529, i32 0, i32 2
  %a.cap580 = load i64, ptr %a.cap579, align 8
  %a.needs.grow581 = icmp eq i64 %a.len578, %a.cap580
  br i1 %a.needs.grow581, label %a.grow575, label %a.store576

unwrap.abort.253:                                 ; preds = %choice.exit526
  %10 = call i64 @write(i32 2, ptr @expect.reason.254, i64 21)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.grow575:                                        ; preds = %unwrap.pos.253
  call void @dva_array_grow(ptr %a.new529)
  br label %a.store576

a.store576:                                       ; preds = %a.grow575, %unwrap.pos.253
  %a.cur.data582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new529, i32 0, i32 1
  %a.cur.data583 = load ptr, ptr %a.cur.data582, align 8
  %a.cur.len585 = load i64, ptr %a.new529, align 8
  %a.elem.gep586 = getelementptr i64, ptr %a.cur.data583, i64 %a.cur.len585
  %slot.p2i587 = ptrtoint ptr %rec.alloc555 to i64
  store i64 %slot.p2i587, ptr %a.elem.gep586, align 8
  %a.next.len588 = add i64 %a.cur.len585, 1
  store i64 %a.next.len588, ptr %a.new529, align 8
  %arena.cur590 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc591 = call ptr @dva_arena_alloc(ptr %arena.cur590, i64 16)
  store i64 15, ptr %enum.alloc591, align 8
  %pay.gep593 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc591, i32 0, i32 1
  br i1 %niche.ne.null520, label %a.after601, label %unwrap.abort.255

unwrap.abort.255:                                 ; preds = %a.store576
  %11 = call i64 @write(i32 2, ptr @expect.reason.256, i64 21)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.after601:                                       ; preds = %a.store576
  %arena.cur610 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc611, ptr align 1 %call.res511, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld613 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc611, i32 0, i32 1
  store ptr %a.new529, ptr %rec.fld613, align 8
  store ptr %rec.alloc611, ptr %pay.gep593, align 8
  %fld.gep616 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load617 = load ptr, ptr %fld.gep616, align 8
  %fld.gep619 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load620 = load ptr, ptr %fld.gep619, align 8
  %fld.gep622 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep624 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load625 = load i64, ptr %fld.gep624, align 8
  %fld.gep627 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load628 = load i64, ptr %fld.gep627, align 8
  %arena.cur629 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc591, ptr %rec.alloc630, align 8
  %rec.fld632 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc630, i32 0, i32 1
  store ptr %fld.load617, ptr %rec.fld632, align 8
  %rec.fld633 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc630, i32 0, i32 2
  store ptr %fld.load620, ptr %rec.fld633, align 8
  %rec.fld634 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc630, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld634, ptr align 1 %fld.gep622, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld635 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc630, i32 0, i32 4
  store i64 %fld.load625, ptr %rec.fld635, align 8
  %rec.fld636 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc630, i32 0, i32 5
  store i64 %fld.load628, ptr %rec.fld636, align 8
  br label %common.ret
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

declare ptr @"tast::mk_lit_int"(i64, i64, i64) #3

define internal i1 @"typedopt::#fusion_source"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 7
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %or.258.else, %choice.next, %and.257.then, %choice.then, %choice.else
  %choice.res25 = phi i1 [ %call.res17, %choice.else ], [ %call.res15, %and.257.then ], [ %call.res, %choice.then ], [ %call.res24, %or.258.else ], [ %call.res20, %choice.next ]
  ret i1 %choice.res25

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load3 = load ptr, ptr %payload.ptr, align 8
  %tag.id8 = load i64, ptr %fld.load3, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 24
  %. = select i1 %tag.match9, i1 true, i1 false
  br i1 %., label %choice.then, label %choice.else

choice.next:                                      ; preds = %entry
  %call.res20 = call i1 @"typedopt::#wide_int"(ptr %0)
  br i1 %call.res20, label %choice.exit, label %or.258.else

choice.then:                                      ; preds = %choice.case
  %fld.gep12 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %call.res = call i1 @"typedopt::#wide_int"(ptr %fld.gep12)
  br i1 %call.res, label %and.257.then, label %choice.exit

choice.else:                                      ; preds = %choice.case
  %call.res17 = call i1 @"typedopt::#wide_int"(ptr %0)
  br label %choice.exit

and.257.then:                                     ; preds = %choice.then
  %fld.gep14 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %call.res15 = call i1 @"typedopt::#wide_int"(ptr %fld.gep14)
  br label %choice.exit

or.258.else:                                      ; preds = %choice.next
  %fld.gep22 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %call.res24 = call i1 @"typedopt::#int_array"(ptr %fld.load23)
  br label %choice.exit
}

define internal i1 @"typedopt::#setup_has_no_bindings"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %choice.next39 [
    i64 24, label %common.ret
    i64 6, label %common.ret
    i64 5, label %common.ret
    i64 4, label %common.ret
    i64 3, label %common.ret
    i64 2, label %common.ret
    i64 1, label %common.ret
    i64 0, label %common.ret
    i64 7, label %choice.case14
    i64 8, label %choice.case27
    i64 9, label %choice.case38
  ]

common.ret:                                       ; preds = %loop.body.260, %loop.header.260, %choice.then, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %and.259.then, %choice.case14, %choice.case27, %choice.next39
  %common.ret.op = phi i1 [ %call.res37, %choice.case27 ], [ false, %choice.next39 ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ %call.res26, %and.259.then ], [ %call.res, %choice.case14 ], [ false, %choice.then ], [ true, %loop.header.260 ], [ false, %loop.body.260 ]
  ret i1 %common.ret.op

choice.case14:                                    ; preds = %entry
  %pay.gep19 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr20 = load ptr, ptr %pay.gep19, align 8
  %fld.gep23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr20, i32 0, i32 1
  %call.res = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep23)
  br i1 %call.res, label %and.259.then, label %common.ret

and.259.then:                                     ; preds = %choice.case14
  %fld.gep25 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr20, i32 0, i32 2
  %call.res26 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep25)
  br label %common.ret

choice.case27:                                    ; preds = %entry
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  %fld.gep36 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr33, i32 0, i32 1
  %call.res37 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep36)
  br label %common.ret

choice.case38:                                    ; preds = %entry
  %pay.gep43 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr44 = load ptr, ptr %pay.gep43, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr44, i32 0, i32 1
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %niche.ne.null = icmp ne ptr %fld.load48, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit54

choice.next39:                                    ; preds = %entry
  br label %common.ret

choice.then:                                      ; preds = %choice.case38
  %call.res52 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.load48)
  %nottmp = xor i1 %call.res52, true
  br i1 %nottmp, label %common.ret, label %choice.exit54

choice.exit54:                                    ; preds = %choice.case38, %choice.then
  %fld.gep56 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr44, i32 0, i32 2
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %arr.cycle.len58 = load i64, ptr %fld.load57, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load57, i32 0, i32 1
  %arr.cycle.data59 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.260

loop.header.260:                                  ; preds = %choice.exit65, %choice.exit54
  %loop.idx.260.0 = phi i64 [ 0, %choice.exit54 ], [ %loop.next, %choice.exit65 ]
  %loop.cond = icmp slt i64 %loop.idx.260.0, %arr.cycle.len58
  br i1 %loop.cond, label %loop.body.260, label %common.ret

loop.body.260:                                    ; preds = %loop.header.260
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data59, i64 %loop.idx.260.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res62 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %slot.i2p)
  %nottmp63 = xor i1 %call.res62, true
  br i1 %nottmp63, label %common.ret, label %choice.exit65

choice.exit65:                                    ; preds = %loop.body.260
  %loop.next = add i64 %loop.idx.260.0, 1
  br label %loop.header.260
}

define internal void @"typedopt::#collect_binders"(ptr %0, ptr %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry, %a.create
  %var.names.0 = phi ptr [ %a.create1, %a.create ], [ %1, %entry ]
  %a.len3 = load i64, ptr %var.names.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.names.0, i32 0, i32 2
  %a.cap4 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len3, %a.cap4
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.names.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.names.0, i32 0, i32 1
  %a.cur.data5 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len6 = load i64, ptr %var.names.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data5, i64 %a.cur.len6
  %slot.p2i = ptrtoint ptr %fld.load to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len6, 1
  store i64 %a.next.len, ptr %var.names.0, align 8
  %fld.gep8 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %0, i32 0, i32 6
  %fld.load10 = load ptr, ptr %fld.gep8, align 8
  %tag.id = load i64, ptr %fld.load10, align 8
  %tag.match = icmp eq i64 %tag.id, 15
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %loop.header.261, %a.store
  ret void

choice.case:                                      ; preds = %a.store
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep12 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr, i32 0, i32 1
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %arr.cycle.len14 = load i64, ptr %fld.load13, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load13, i32 0, i32 1
  %arr.cycle.data15 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.261

loop.header.261:                                  ; preds = %loop.exit.262, %choice.case
  %loop.idx.261.0 = phi i64 [ 0, %choice.case ], [ %loop.next62, %loop.exit.262 ]
  %var.names.1 = phi ptr [ %var.names.0, %choice.case ], [ %var.names.2, %loop.exit.262 ]
  %loop.cond = icmp slt i64 %loop.idx.261.0, %arr.cycle.len14
  br i1 %loop.cond, label %loop.body.261, label %choice.exit

loop.body.261:                                    ; preds = %loop.header.261
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data15, i64 %loop.idx.261.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 4
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %arr.cycle.len21 = load i64, ptr %fld.load19, align 8
  %arr.cycle.data22 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %arr.cycle.data23 = load ptr, ptr %arr.cycle.data22, align 8
  br label %loop.header.262

loop.header.262:                                  ; preds = %a.store47, %loop.body.261
  %var.names.2 = phi ptr [ %var.names.1, %loop.body.261 ], [ %var.names.3, %a.store47 ]
  %loop.idx.262.0 = phi i64 [ 0, %loop.body.261 ], [ %loop.next, %a.store47 ]
  %loop.cond25 = icmp slt i64 %loop.idx.262.0, %arr.cycle.len21
  br i1 %loop.cond25, label %loop.body.262, label %loop.exit.262

loop.body.262:                                    ; preds = %loop.header.262
  %arr.elem.gep27 = getelementptr i64, ptr %arr.cycle.data23, i64 %loop.idx.262.0
  %arr.elem.raw28 = load i64, ptr %arr.elem.gep27, align 8
  %slot.i2p29 = inttoptr i64 %arr.elem.raw28 to ptr
  %a.null34 = icmp eq ptr %var.names.2, null
  br i1 %a.null34, label %a.create35, label %a.check45

loop.exit.262:                                    ; preds = %loop.header.262
  %loop.next62 = add i64 %loop.idx.261.0, 1
  br label %loop.header.261

a.create35:                                       ; preds = %loop.body.262
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 24)
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 128)
  store i64 0, ptr %a.create38, align 8
  %a.data.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 1
  store ptr %a.buf40, ptr %a.data.gep42, align 8
  %a.cap.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 2
  store i64 16, ptr %a.cap.gep43, align 8
  br label %a.check45

a.check45:                                        ; preds = %loop.body.262, %a.create35
  %var.names.3 = phi ptr [ %a.create38, %a.create35 ], [ %var.names.2, %loop.body.262 ]
  %a.len49 = load i64, ptr %var.names.3, align 8
  %a.cap50 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.names.3, i32 0, i32 2
  %a.cap51 = load i64, ptr %a.cap50, align 8
  %a.needs.grow52 = icmp eq i64 %a.len49, %a.cap51
  br i1 %a.needs.grow52, label %a.grow46, label %a.store47

a.grow46:                                         ; preds = %a.check45
  call void @dva_array_grow(ptr %var.names.3)
  br label %a.store47

a.store47:                                        ; preds = %a.grow46, %a.check45
  %a.cur.data53 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.names.3, i32 0, i32 1
  %a.cur.data54 = load ptr, ptr %a.cur.data53, align 8
  %a.cur.len56 = load i64, ptr %var.names.3, align 8
  %a.elem.gep57 = getelementptr i64, ptr %a.cur.data54, i64 %a.cur.len56
  store i64 %arr.elem.raw28, ptr %a.elem.gep57, align 8
  %a.next.len59 = add i64 %a.cur.len56, 1
  store i64 %a.next.len59, ptr %var.names.3, align 8
  %loop.next = add i64 %loop.idx.262.0, 1
  br label %loop.header.262
}

define internal ptr @"typedopt::#fuse_pipeline"(ptr %0) #3 {
entry:
  %call.res = call ptr @"typedopt::#read_stage"(ptr %0)
  %niche.ne.null = icmp ne ptr %call.res, null
  %nottmp = xor i1 %niche.ne.null, true
  br i1 %nottmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %or.270.exit, %choice.exit15, %unwrap.pos.264, %entry, %a.after391
  %common.ret.op = phi ptr [ %rec.alloc401, %a.after391 ], [ null, %entry ], [ null, %unwrap.pos.264 ], [ null, %choice.exit15 ], [ null, %or.270.exit ]
  ret ptr %common.ret.op

choice.exit:                                      ; preds = %entry
  br i1 %niche.ne.null, label %unwrap.pos.264, label %unwrap.abort.264

unwrap.pos.264:                                   ; preds = %choice.exit
  %fld.gep = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %call.res, i32 0, i32 6
  %call.res5 = call ptr @"typedopt::#replace_append"(ptr %call.res, ptr %fld.gep, ptr null, ptr null, i1 false)
  %niche.ne.null7 = icmp ne ptr %call.res5, null
  %nottmp8 = xor i1 %niche.ne.null7, true
  br i1 %nottmp8, label %common.ret, label %choice.exit10

unwrap.abort.264:                                 ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @expect.reason.265, i64 22)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

choice.exit10:                                    ; preds = %unwrap.pos.264
  %fld.load = load ptr, ptr %call.res, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.exit15

choice.exit15:                                    ; preds = %choice.exit10, %choice.case
  %choice.res = phi ptr [ %fld.gep17, %choice.case ], [ %call.res, %choice.exit10 ]
  %call.res21 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %choice.res)
  %nottmp22 = xor i1 %call.res21, true
  br i1 %nottmp22, label %common.ret, label %choice.exit24

choice.case:                                      ; preds = %choice.exit10
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  br label %choice.exit15

choice.exit24:                                    ; preds = %choice.exit15
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.len36 = load i64, ptr %a.new, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  %a.cap37 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len36, %a.cap37
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %choice.exit24
  call void @dva_array_grow(ptr %a.new)
  br label %a.store

a.store:                                          ; preds = %a.grow, %choice.exit24
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.cur.data38 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len39 = load i64, ptr %a.new, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data38, i64 %a.cur.len39
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len39, 1
  store i64 %a.next.len, ptr %a.new, align 8
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  store i64 0, ptr %a.new41, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  call void @"typedopt::#collect_binders"(ptr %call.res, ptr %a.new41)
  br label %loop.header.266

loop.header.266:                                  ; preds = %a.after128, %a.store
  %var.prefix.1 = phi ptr [ %a.new, %a.store ], [ %var.prefix.2, %a.after128 ]
  %var.binders.1 = phi ptr [ %a.new41, %a.store ], [ %var.binders.2, %a.after128 ]
  %"var.depth'.0" = phi i64 [ 0, %a.store ], [ %addtmp, %a.after128 ]
  %"var.step'.0" = phi ptr [ %call.res5, %a.store ], [ %call.res84, %a.after128 ]
  %"var.current'.0" = phi ptr [ %call.res, %a.store ], [ %call.res64, %a.after128 ]
  %loop.idx.266.0 = phi i64 [ 0, %a.store ], [ %loop.next, %a.after128 ]
  %fld.gep63 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 3
  %call.res64 = call ptr @"typedopt::#read_stage"(ptr %fld.gep63)
  %niche.ne.null66 = icmp ne ptr %call.res64, null
  %nottmp67 = xor i1 %niche.ne.null66, true
  br i1 %nottmp67, label %loop.exit.266, label %choice.exit69

loop.exit.266:                                    ; preds = %choice.exit78, %unwrap.pos.267, %loop.header.266
  %cmptmp = icmp eq i64 %"var.depth'.0", 0
  br i1 %cmptmp, label %or.269.exit, label %or.269.else

choice.exit69:                                    ; preds = %loop.header.266
  br i1 %niche.ne.null66, label %unwrap.pos.267, label %unwrap.abort.267

unwrap.pos.267:                                   ; preds = %choice.exit69
  %fld.gep74 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %call.res64, i32 0, i32 9
  %fld.load75 = load i1, ptr %fld.gep74, align 1
  %nottmp76 = xor i1 %fld.load75, true
  br i1 %nottmp76, label %loop.exit.266, label %choice.exit78

unwrap.abort.267:                                 ; preds = %choice.exit69
  %2 = call i64 @write(i32 2, ptr @expect.reason.268, i64 26)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

choice.exit78:                                    ; preds = %unwrap.pos.267
  %fld.gep81 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %call.res64, i32 0, i32 6
  %call.res84 = call ptr @"typedopt::#replace_append"(ptr %call.res64, ptr %fld.gep81, ptr %"var.current'.0", ptr %"var.step'.0", i1 false)
  %niche.ne.null86 = icmp ne ptr %call.res84, null
  %nottmp87 = xor i1 %niche.ne.null86, true
  br i1 %nottmp87, label %loop.exit.266, label %choice.exit89

choice.exit89:                                    ; preds = %choice.exit78
  %fld.gep91 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 11
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %call.res93 = call ptr @"tast::mk_lit_int"(i64 0, i64 0, i64 0)
  %call.res94 = call ptr @"typedopt::#write_var"(ptr %fld.load92, i1 true, ptr %call.res93)
  %a.null96 = icmp eq ptr %var.prefix.1, null
  br i1 %a.null96, label %a.create97, label %a.check107

a.create97:                                       ; preds = %choice.exit89
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  store i64 0, ptr %a.create100, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  br label %a.check107

a.check107:                                       ; preds = %choice.exit89, %a.create97
  %var.prefix.2 = phi ptr [ %a.create100, %a.create97 ], [ %var.prefix.1, %choice.exit89 ]
  %a.len111 = load i64, ptr %var.prefix.2, align 8
  %a.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.2, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap112, align 8
  %a.needs.grow114 = icmp eq i64 %a.len111, %a.cap113
  br i1 %a.needs.grow114, label %a.grow108, label %a.store109

a.grow108:                                        ; preds = %a.check107
  call void @dva_array_grow(ptr %var.prefix.2)
  br label %a.store109

a.store109:                                       ; preds = %a.grow108, %a.check107
  %a.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.2, i32 0, i32 1
  %a.cur.data116 = load ptr, ptr %a.cur.data115, align 8
  %a.cur.len118 = load i64, ptr %var.prefix.2, align 8
  %a.elem.gep119 = getelementptr i64, ptr %a.cur.data116, i64 %a.cur.len118
  %slot.p2i120 = ptrtoint ptr %call.res94 to i64
  store i64 %slot.p2i120, ptr %a.elem.gep119, align 8
  %a.next.len121 = add i64 %a.cur.len118, 1
  store i64 %a.next.len121, ptr %var.prefix.2, align 8
  %a.null126 = icmp eq ptr %var.binders.1, null
  br i1 %a.null126, label %a.create127, label %a.after128

a.create127:                                      ; preds = %a.store109
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 24)
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 128)
  store i64 0, ptr %a.create130, align 8
  %a.data.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 1
  store ptr %a.buf132, ptr %a.data.gep134, align 8
  %a.cap.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 2
  store i64 16, ptr %a.cap.gep135, align 8
  br label %a.after128

a.after128:                                       ; preds = %a.create127, %a.store109
  %var.binders.2 = phi ptr [ %a.create130, %a.create127 ], [ %var.binders.1, %a.store109 ]
  call void @"typedopt::#collect_binders"(ptr %call.res64, ptr %var.binders.2)
  %addtmp = add i64 %"var.depth'.0", 1
  %loop.next = add i64 %loop.idx.266.0, 1
  br label %loop.header.266

or.269.else:                                      ; preds = %loop.exit.266
  %call.res143 = call i1 @"typedopt::#fusion_source"(ptr %fld.gep63)
  %nottmp144 = xor i1 %call.res143, true
  br label %or.269.exit

or.269.exit:                                      ; preds = %loop.exit.266, %or.269.else
  %or.269.phi = phi i1 [ %nottmp144, %or.269.else ], [ true, %loop.exit.266 ]
  br i1 %or.269.phi, label %or.270.exit, label %or.270.else

or.270.else:                                      ; preds = %or.269.exit
  %call.res147 = call i1 @"typedopt::#setup_has_no_bindings"(ptr %fld.gep63)
  %nottmp148 = xor i1 %call.res147, true
  br label %or.270.exit

or.270.exit:                                      ; preds = %or.269.exit, %or.270.else
  %or.270.phi = phi i1 [ %nottmp148, %or.270.else ], [ %or.269.phi, %or.269.exit ]
  br i1 %or.270.phi, label %common.ret, label %choice.exit150

choice.exit150:                                   ; preds = %or.270.exit
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 24)
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 128)
  store i64 0, ptr %a.new153, align 8
  %a.data.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 1
  store ptr %a.buf155, ptr %a.data.gep157, align 8
  %a.cap.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep158, align 8
  %fld.gep160 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 10
  %fld.load161 = load ptr, ptr %fld.gep160, align 8
  %a.len178 = load i64, ptr %a.new153, align 8
  %a.cap179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 2
  %a.cap180 = load i64, ptr %a.cap179, align 8
  %a.needs.grow181 = icmp eq i64 %a.len178, %a.cap180
  br i1 %a.needs.grow181, label %a.grow175, label %a.store176

a.grow175:                                        ; preds = %choice.exit150
  call void @dva_array_grow(ptr %a.new153)
  br label %a.store176

a.store176:                                       ; preds = %a.grow175, %choice.exit150
  %a.cur.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 1
  %a.cur.data183 = load ptr, ptr %a.cur.data182, align 8
  %a.cur.len185 = load i64, ptr %a.new153, align 8
  %a.elem.gep186 = getelementptr i64, ptr %a.cur.data183, i64 %a.cur.len185
  %slot.p2i187 = ptrtoint ptr %fld.load161 to i64
  store i64 %slot.p2i187, ptr %a.elem.gep186, align 8
  %a.next.len188 = add i64 %a.cur.len185, 1
  store i64 %a.next.len188, ptr %a.new153, align 8
  %fld.gep191 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 11
  %fld.load192 = load ptr, ptr %fld.gep191, align 8
  %a.len209 = load i64, ptr %a.new153, align 8
  %a.cap210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 2
  %a.cap211 = load i64, ptr %a.cap210, align 8
  %a.needs.grow212 = icmp eq i64 %a.len209, %a.cap211
  br i1 %a.needs.grow212, label %a.grow206, label %a.store207

a.grow206:                                        ; preds = %a.store176
  call void @dva_array_grow(ptr %a.new153)
  br label %a.store207

a.store207:                                       ; preds = %a.grow206, %a.store176
  %a.cur.data213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new153, i32 0, i32 1
  %a.cur.data214 = load ptr, ptr %a.cur.data213, align 8
  %a.cur.len216 = load i64, ptr %a.new153, align 8
  %a.elem.gep217 = getelementptr i64, ptr %a.cur.data214, i64 %a.cur.len216
  %slot.p2i218 = ptrtoint ptr %fld.load192 to i64
  store i64 %slot.p2i218, ptr %a.elem.gep217, align 8
  %a.next.len219 = add i64 %a.cur.len216, 1
  store i64 %a.next.len219, ptr %a.new153, align 8
  %fld.gep222 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 4
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 16)
  store i64 16, ptr %enum.alloc, align 8
  %pay.gep225 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %unwrap.is_pos240 = icmp ne ptr %"var.step'.0", null
  br i1 %unwrap.is_pos240, label %unwrap.pos.271, label %unwrap.abort.271

unwrap.pos.271:                                   ; preds = %a.store207
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 24)
  %arena.cur244 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 128)
  store i64 0, ptr %a.new243, align 8
  %a.data.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new243, i32 0, i32 1
  store ptr %a.buf245, ptr %a.data.gep247, align 8
  %a.cap.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep248, align 8
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  store ptr %a.new153, ptr %rec.alloc, align 8
  %rec.fld250 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld250, ptr align 1 %"var.step'.0", i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld251 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.new243, ptr %rec.fld251, align 8
  store ptr %rec.alloc, ptr %pay.gep225, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep222, i32 0, i32 1
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep222, i32 0, i32 2
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep222, i32 0, i32 3
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep222, i32 0, i32 4
  %fld.load263 = load i64, ptr %fld.gep262, align 8
  %fld.gep265 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep222, i32 0, i32 5
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc268, align 8
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
  %fld.gep276 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %"var.current'.0", i32 0, i32 1
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 16)
  store i64 19, ptr %enum.alloc278, align 8
  %pay.gep280 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc278, i32 0, i32 1
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc285, ptr align 1 %fld.gep63, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld287 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld287, ptr align 1 %rec.alloc268, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld288 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 2
  store ptr null, ptr %rec.fld288, align 8
  %rec.fld289 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc285, i32 0, i32 3
  store i1 false, ptr %rec.fld289, align 1
  store ptr %rec.alloc285, ptr %pay.gep280, align 8
  %fld.gep292 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep276, i32 0, i32 1
  %fld.load293 = load ptr, ptr %fld.gep292, align 8
  %fld.gep295 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep276, i32 0, i32 2
  %fld.load296 = load ptr, ptr %fld.gep295, align 8
  %fld.gep298 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep276, i32 0, i32 3
  %fld.gep300 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep276, i32 0, i32 4
  %fld.load301 = load i64, ptr %fld.gep300, align 8
  %fld.gep303 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep276, i32 0, i32 5
  %fld.load304 = load i64, ptr %fld.gep303, align 8
  %arena.cur305 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc278, ptr %rec.alloc306, align 8
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
  %a.null315 = icmp eq ptr %var.prefix.1, null
  br i1 %a.null315, label %a.create316, label %a.check326

unwrap.abort.271:                                 ; preds = %a.store207
  %3 = call i64 @write(i32 2, ptr @expect.reason.272, i64 21)
  call void @dva_abort_unwrap_abort_msg()
  unreachable

a.create316:                                      ; preds = %unwrap.pos.271
  %arena.cur318 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 24)
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 128)
  store i64 0, ptr %a.create319, align 8
  %a.data.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 1
  store ptr %a.buf321, ptr %a.data.gep323, align 8
  %a.cap.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 2
  store i64 16, ptr %a.cap.gep324, align 8
  br label %a.check326

a.check326:                                       ; preds = %unwrap.pos.271, %a.create316
  %var.prefix.3 = phi ptr [ %a.create319, %a.create316 ], [ %var.prefix.1, %unwrap.pos.271 ]
  %a.len330 = load i64, ptr %var.prefix.3, align 8
  %a.cap331 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.3, i32 0, i32 2
  %a.cap332 = load i64, ptr %a.cap331, align 8
  %a.needs.grow333 = icmp eq i64 %a.len330, %a.cap332
  br i1 %a.needs.grow333, label %a.grow327, label %a.store328

a.grow327:                                        ; preds = %a.check326
  call void @dva_array_grow(ptr %var.prefix.3)
  br label %a.store328

a.store328:                                       ; preds = %a.grow327, %a.check326
  %a.cur.data334 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.3, i32 0, i32 1
  %a.cur.data335 = load ptr, ptr %a.cur.data334, align 8
  %a.cur.len337 = load i64, ptr %var.prefix.3, align 8
  %a.elem.gep338 = getelementptr i64, ptr %a.cur.data335, i64 %a.cur.len337
  %slot.p2i339 = ptrtoint ptr %rec.alloc306 to i64
  store i64 %slot.p2i339, ptr %a.elem.gep338, align 8
  %a.next.len340 = add i64 %a.cur.len337, 1
  store i64 %a.next.len340, ptr %var.prefix.3, align 8
  %fld.gep345 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, ptr, i1, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %a.len362 = load i64, ptr %var.prefix.3, align 8
  %a.cap363 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.3, i32 0, i32 2
  %a.cap364 = load i64, ptr %a.cap363, align 8
  %a.needs.grow365 = icmp eq i64 %a.len362, %a.cap364
  br i1 %a.needs.grow365, label %a.grow359, label %a.store360

a.grow359:                                        ; preds = %a.store328
  call void @dva_array_grow(ptr %var.prefix.3)
  br label %a.store360

a.store360:                                       ; preds = %a.grow359, %a.store328
  %a.cur.data366 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prefix.3, i32 0, i32 1
  %a.cur.data367 = load ptr, ptr %a.cur.data366, align 8
  %a.cur.len369 = load i64, ptr %var.prefix.3, align 8
  %a.elem.gep370 = getelementptr i64, ptr %a.cur.data367, i64 %a.cur.len369
  %slot.p2i371 = ptrtoint ptr %fld.gep345 to i64
  store i64 %slot.p2i371, ptr %a.elem.gep370, align 8
  %a.next.len372 = add i64 %a.cur.len369, 1
  store i64 %a.next.len372, ptr %var.prefix.3, align 8
  %a.null389 = icmp eq ptr %var.binders.1, null
  br i1 %a.null389, label %a.create390, label %a.after391

a.create390:                                      ; preds = %a.store360
  %arena.cur392 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create393 = call ptr @dva_arena_alloc(ptr %arena.cur392, i64 24)
  %arena.cur394 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 128)
  store i64 0, ptr %a.create393, align 8
  %a.data.gep397 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create393, i32 0, i32 1
  store ptr %a.buf395, ptr %a.data.gep397, align 8
  %a.cap.gep398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create393, i32 0, i32 2
  store i64 16, ptr %a.cap.gep398, align 8
  br label %a.after391

a.after391:                                       ; preds = %a.create390, %a.store360
  %var.binders.3 = phi ptr [ %a.create393, %a.create390 ], [ %var.binders.1, %a.store360 ]
  %arena.cur400 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %var.prefix.3, ptr %rec.alloc401, align 8
  %rec.fld403 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc401, i32 0, i32 1
  store ptr %var.binders.3, ptr %rec.fld403, align 8
  br label %common.ret
}

define internal ptr @"typedopt::#rewrite_list"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.exprs.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  %arr.cycle.len9 = load i64, ptr %var.exprs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.exprs.0, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.275

loop.header.275:                                  ; preds = %a.store, %a.after
  %var._map_out_1105.0 = phi ptr [ %a.new, %a.after ], [ %var._map_out_1105.1, %a.store ]
  %loop.idx.275.0 = phi i64 [ 0, %a.after ], [ %loop.next, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.275.0, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.275, label %a.after33

loop.body.275:                                    ; preds = %loop.header.275
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %loop.idx.275.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res = call ptr @"typedopt::#rewrite"(ptr %0, ptr %slot.i2p)
  %a.null14 = icmp eq ptr %var._map_out_1105.0, null
  br i1 %a.null14, label %a.create15, label %a.check

a.create15:                                       ; preds = %loop.body.275
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  store i64 0, ptr %a.create18, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.275, %a.create15
  %var._map_out_1105.1 = phi ptr [ %a.create18, %a.create15 ], [ %var._map_out_1105.0, %loop.body.275 ]
  %a.len25 = load i64, ptr %var._map_out_1105.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_1105.1, i32 0, i32 2
  %a.cap26 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len25, %a.cap26
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var._map_out_1105.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_1105.1, i32 0, i32 1
  %a.cur.data27 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len28 = load i64, ptr %var._map_out_1105.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data27, i64 %a.cur.len28
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len28, 1
  store i64 %a.next.len, ptr %var._map_out_1105.1, align 8
  %loop.next = add i64 %loop.idx.275.0, 1
  br label %loop.header.275

a.after33:                                        ; preds = %loop.header.275
  ret ptr %var._map_out_1105.0
}

define internal ptr @"typedopt::#rewrite"(ptr %0, ptr %1) #3 {
entry:
  %fld.load = load ptr, ptr %1, align 8
  %tag.id = load i64, ptr %fld.load, align 8
  switch i64 %tag.id, label %common.ret [
    i64 7, label %choice.case
    i64 8, label %choice.case14
    i64 9, label %choice.case124
    i64 10, label %choice.case175
    i64 11, label %choice.case285
    i64 12, label %choice.case305
    i64 13, label %choice.case359
    i64 14, label %choice.case404
    i64 15, label %choice.case455
    i64 16, label %choice.case474
    i64 17, label %choice.case528
    i64 18, label %choice.case579
    i64 19, label %choice.case645
    i64 21, label %choice.case712
    i64 22, label %choice.case763
    i64 34, label %choice.case811
  ]

common.ret:                                       ; preds = %entry, %choice.case14, %choice.case, %choice.exit48, %choice.case124, %a.after236, %choice.case285, %choice.case305, %choice.case359, %choice.case404, %choice.case455, %choice.case474, %a.after546, %choice.case579, %choice.case645, %choice.case712, %choice.case763, %choice.case811, %pay.int.merge
  %common.ret.op = phi ptr [ %rec.alloc, %pay.int.merge ], [ %call.res13, %choice.case ], [ %rec.alloc117, %choice.exit48 ], [ %rec.alloc168, %choice.case124 ], [ %rec.alloc278, %a.after236 ], [ %call.res304, %choice.case285 ], [ %rec.alloc352, %choice.case305 ], [ %rec.alloc397, %choice.case359 ], [ %rec.alloc448, %choice.case404 ], [ %call.res473, %choice.case455 ], [ %rec.alloc521, %choice.case474 ], [ %rec.alloc572, %a.after546 ], [ %rec.alloc638, %choice.case579 ], [ %rec.alloc705, %choice.case645 ], [ %rec.alloc756, %choice.case712 ], [ %rec.alloc804, %choice.case763 ], [ %rec.alloc843, %choice.case811 ], [ %1, %choice.case14 ], [ %1, %entry ]
  ret ptr %common.ret.op

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load5 = load ptr, ptr %payload.ptr, align 8
  %fld.gep8 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %call.res = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep8)
  %fld.gep11 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %call.res12 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep11)
  %call.res13 = call ptr @"typedopt::#simplify_bin"(ptr %0, ptr %1, ptr %fld.load5, ptr %call.res, ptr %call.res12)
  br label %common.ret

choice.case14:                                    ; preds = %entry
  %pay.gep19 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr20 = load ptr, ptr %pay.gep19, align 8
  %fld.load24 = load ptr, ptr %payload.ptr20, align 8
  %tag.id29 = load i64, ptr %fld.load24, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 3
  %. = select i1 %tag.match30, i1 true, i1 false
  br i1 %., label %common.ret, label %choice.exit31

choice.exit31:                                    ; preds = %choice.case14
  %fld.gep35 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr20, i32 0, i32 1
  %call.res36 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep35)
  %fld.load39 = load ptr, ptr %payload.ptr20, align 8
  %tag.id44 = load i64, ptr %fld.load39, align 8
  %tag.match45 = icmp eq i64 %tag.id44, 0
  %.852 = select i1 %tag.match45, i1 true, i1 false
  br i1 %.852, label %choice.then47, label %choice.exit48

choice.then47:                                    ; preds = %choice.exit31
  %call.res51 = call ptr @"typedopt::#scalar_operand"(ptr %0, ptr %call.res36)
  %fld.load53 = load ptr, ptr %call.res51, align 8
  %tag.id58 = load i64, ptr %fld.load53, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 4
  br i1 %tag.match59, label %choice.case55, label %choice.exit48

choice.exit48:                                    ; preds = %choice.then47, %choice.exit31
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  store i64 8, ptr %enum.alloc90, align 8
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 1
  %fld.load95 = load ptr, ptr %payload.ptr20, align 8
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load95, ptr %rec.alloc98, align 8
  %rec.fld100 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc98, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld100, ptr align 1 %call.res36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc98, ptr %pay.gep92, align 8
  %fld.gep103 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %fld.gep109 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load112 = load i64, ptr %fld.gep111, align 8
  %fld.gep114 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load115 = load i64, ptr %fld.gep114, align 8
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc90, ptr %rec.alloc117, align 8
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
  br label %common.ret

choice.case55:                                    ; preds = %choice.then47
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr61 = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr61, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i1, ptr %payload.ptr61, align 1
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case55, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %choice.case55 ]
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 4, ptr %enum.alloc, align 8
  %pay.gep64 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %nottmp = xor i1 %pay.int.phi, true
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %nottmp, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep64, align 8
  %fld.gep69 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %fld.gep72 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  %fld.gep75 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load78 = load i64, ptr %fld.gep77, align 8
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load81 = load i64, ptr %fld.gep80, align 8
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
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
  br label %common.ret

choice.case124:                                   ; preds = %entry
  %pay.gep129 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr130 = load ptr, ptr %pay.gep129, align 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  store i64 9, ptr %enum.alloc133, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  %fld.load138 = load ptr, ptr %payload.ptr130, align 8
  %fld.gep140 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr130, i32 0, i32 1
  %fld.load141 = load ptr, ptr %fld.gep140, align 8
  %fld.gep144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %payload.ptr130, i32 0, i32 2
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %call.res146 = call ptr @"typedopt::#rewrite_list"(ptr %0, ptr %fld.load145)
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load138, ptr %rec.alloc148, align 8
  %rec.fld150 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 1
  store ptr %fld.load141, ptr %rec.fld150, align 8
  %rec.fld151 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 2
  store ptr %call.res146, ptr %rec.fld151, align 8
  store ptr %rec.alloc148, ptr %pay.gep135, align 8
  %fld.gep154 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load155 = load ptr, ptr %fld.gep154, align 8
  %fld.gep157 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %fld.gep160 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep162 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %fld.gep165 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc133, ptr %rec.alloc168, align 8
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
  br label %common.ret

choice.case175:                                   ; preds = %entry
  %pay.gep180 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr181 = load ptr, ptr %pay.gep180, align 8
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %payload.ptr181, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.case175
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 24)
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 128)
  store i64 0, ptr %a.create187, align 8
  %a.data.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 1
  store ptr %a.buf189, ptr %a.data.gep191, align 8
  %a.cap.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 2
  store i64 16, ptr %a.cap.gep192, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case175
  %var.fields.0 = phi ptr [ %a.create187, %a.create ], [ %payload.ptr181, %choice.case175 ]
  %arr.cycle.len193 = load i64, ptr %var.fields.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fields.0, i32 0, i32 1
  %arr.cycle.data194 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.276

loop.header.276:                                  ; preds = %a.store, %a.after
  %var._map_out_966.0 = phi ptr [ %a.new, %a.after ], [ %var._map_out_966.1, %a.store ]
  %loop.idx.276.0 = phi i64 [ 0, %a.after ], [ %loop.next, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.276.0, %arr.cycle.len193
  br i1 %loop.cond, label %loop.body.276, label %a.after236

loop.body.276:                                    ; preds = %loop.header.276
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data194, i64 %loop.idx.276.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep198 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %call.res199 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep198)
  %fld.load202 = load ptr, ptr %slot.i2p, align 8
  %fld.gep205 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %slot.i2p, i32 0, i32 2
  %fld.load206 = load i64, ptr %fld.gep205, align 8
  %fld.gep208 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %slot.i2p, i32 0, i32 3
  %fld.load209 = load ptr, ptr %fld.gep208, align 8
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load202, ptr %rec.alloc211, align 8
  %rec.fld213 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld213, ptr align 1 %call.res199, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld214 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 2
  store i64 %fld.load206, ptr %rec.fld214, align 8
  %rec.fld215 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 3
  store ptr %fld.load209, ptr %rec.fld215, align 8
  %a.null217 = icmp eq ptr %var._map_out_966.0, null
  br i1 %a.null217, label %a.create218, label %a.check

a.create218:                                      ; preds = %loop.body.276
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 24)
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 128)
  store i64 0, ptr %a.create221, align 8
  %a.data.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 1
  store ptr %a.buf223, ptr %a.data.gep225, align 8
  %a.cap.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 2
  store i64 16, ptr %a.cap.gep226, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.276, %a.create218
  %var._map_out_966.1 = phi ptr [ %a.create221, %a.create218 ], [ %var._map_out_966.0, %loop.body.276 ]
  %a.len228 = load i64, ptr %var._map_out_966.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_966.1, i32 0, i32 2
  %a.cap229 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len228, %a.cap229
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var._map_out_966.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_966.1, i32 0, i32 1
  %a.cur.data230 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len231 = load i64, ptr %var._map_out_966.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data230, i64 %a.cur.len231
  %slot.p2i = ptrtoint ptr %rec.alloc211 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len231, 1
  store i64 %a.next.len, ptr %var._map_out_966.1, align 8
  %loop.next = add i64 %loop.idx.276.0, 1
  br label %loop.header.276

a.after236:                                       ; preds = %loop.header.276
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 16)
  store i64 10, ptr %enum.alloc246, align 8
  %pay.gep248 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc246, i32 0, i32 1
  store ptr %var._map_out_966.0, ptr %pay.gep248, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %fld.gep267 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load268 = load ptr, ptr %fld.gep267, align 8
  %fld.gep270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load273 = load i64, ptr %fld.gep272, align 8
  %fld.gep275 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load276 = load i64, ptr %fld.gep275, align 8
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc246, ptr %rec.alloc278, align 8
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
  br label %common.ret

choice.case285:                                   ; preds = %entry
  %pay.gep290 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr291 = load ptr, ptr %pay.gep290, align 8
  %call.res297 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %payload.ptr291)
  %fld.gep299 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %payload.ptr291, i32 0, i32 1
  %fld.load300 = load ptr, ptr %fld.gep299, align 8
  %fld.gep302 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %payload.ptr291, i32 0, i32 2
  %fld.load303 = load i64, ptr %fld.gep302, align 8
  %call.res304 = call ptr @"typedopt::#simplify_member"(ptr %1, ptr %call.res297, ptr %fld.load300, i64 %fld.load303)
  br label %common.ret

choice.case305:                                   ; preds = %entry
  %pay.gep310 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr311 = load ptr, ptr %pay.gep310, align 8
  %arena.cur314 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 16)
  store i64 12, ptr %enum.alloc315, align 8
  %pay.gep317 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc315, i32 0, i32 1
  %fld.gep321 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr311, i32 0, i32 1
  %fld.load322 = load ptr, ptr %fld.gep321, align 8
  %fld.gep324 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr311, i32 0, i32 2
  %fld.load325 = load i64, ptr %fld.gep324, align 8
  %fld.gep328 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr311, i32 0, i32 3
  %call.res329 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep328)
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc331, ptr align 1 %payload.ptr311, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld333 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 1
  store ptr %fld.load322, ptr %rec.fld333, align 8
  %rec.fld334 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 2
  store i64 %fld.load325, ptr %rec.fld334, align 8
  %rec.fld335 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld335, ptr align 1 %call.res329, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc331, ptr %pay.gep317, align 8
  %fld.gep338 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load339 = load ptr, ptr %fld.gep338, align 8
  %fld.gep341 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load342 = load ptr, ptr %fld.gep341, align 8
  %fld.gep344 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep346 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load347 = load i64, ptr %fld.gep346, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load350 = load i64, ptr %fld.gep349, align 8
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc315, ptr %rec.alloc352, align 8
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
  br label %common.ret

choice.case359:                                   ; preds = %entry
  %pay.gep364 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr365 = load ptr, ptr %pay.gep364, align 8
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 16)
  store i64 13, ptr %enum.alloc368, align 8
  %pay.gep370 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 1
  %fld.gep375 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr365, i32 0, i32 1
  %call.res376 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep375)
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc378, ptr align 1 %payload.ptr365, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld380 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc378, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld380, ptr align 1 %call.res376, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc378, ptr %pay.gep370, align 8
  %fld.gep383 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load384 = load ptr, ptr %fld.gep383, align 8
  %fld.gep386 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load387 = load ptr, ptr %fld.gep386, align 8
  %fld.gep389 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep391 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load392 = load i64, ptr %fld.gep391, align 8
  %fld.gep394 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load395 = load i64, ptr %fld.gep394, align 8
  %arena.cur396 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc368, ptr %rec.alloc397, align 8
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
  br label %common.ret

choice.case404:                                   ; preds = %entry
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  %arena.cur413 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 16)
  store i64 14, ptr %enum.alloc414, align 8
  %pay.gep416 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc414, i32 0, i32 1
  %fld.gep421 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr410, i32 0, i32 1
  %call.res422 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep421)
  %fld.gep425 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr410, i32 0, i32 2
  %call.res426 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep425)
  %arena.cur427 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc428, ptr align 1 %payload.ptr410, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld430 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld430, ptr align 1 %call.res422, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld431 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld431, ptr align 1 %call.res426, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc428, ptr %pay.gep416, align 8
  %fld.gep434 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load435 = load ptr, ptr %fld.gep434, align 8
  %fld.gep437 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load438 = load ptr, ptr %fld.gep437, align 8
  %fld.gep440 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep442 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load443 = load i64, ptr %fld.gep442, align 8
  %fld.gep445 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load446 = load i64, ptr %fld.gep445, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc414, ptr %rec.alloc448, align 8
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
  br label %common.ret

choice.case455:                                   ; preds = %entry
  %pay.gep460 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr461 = load ptr, ptr %pay.gep460, align 8
  %call.res469 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %payload.ptr461)
  %fld.gep471 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr461, i32 0, i32 1
  %fld.load472 = load ptr, ptr %fld.gep471, align 8
  %call.res473 = call ptr @"typedopt::#simplify_choice"(ptr %0, ptr %1, ptr %call.res469, ptr %fld.load472)
  br label %common.ret

choice.case474:                                   ; preds = %entry
  %pay.gep479 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr480 = load ptr, ptr %pay.gep479, align 8
  %arena.cur482 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  store ptr null, ptr %rec.alloc483, align 8
  %rec.fld485 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc483, i32 0, i32 1
  store i1 true, ptr %rec.fld485, align 1
  %fld.gep487 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr480, i32 0, i32 1
  %call.res488 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc483, ptr %fld.gep487)
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 16)
  store i64 16, ptr %enum.alloc490, align 8
  %pay.gep492 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc490, i32 0, i32 1
  %fld.load495 = load ptr, ptr %payload.ptr480, align 8
  %fld.gep498 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %payload.ptr480, i32 0, i32 2
  %fld.load499 = load ptr, ptr %fld.gep498, align 8
  %arena.cur500 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc501 = call ptr @dva_arena_alloc(ptr %arena.cur500, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load495, ptr %rec.alloc501, align 8
  %rec.fld503 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld503, ptr align 1 %call.res488, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld504 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 2
  store ptr %fld.load499, ptr %rec.fld504, align 8
  store ptr %rec.alloc501, ptr %pay.gep492, align 8
  %fld.gep507 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load508 = load ptr, ptr %fld.gep507, align 8
  %fld.gep510 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load511 = load ptr, ptr %fld.gep510, align 8
  %fld.gep513 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep515 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load516 = load i64, ptr %fld.gep515, align 8
  %fld.gep518 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load519 = load i64, ptr %fld.gep518, align 8
  %arena.cur520 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc490, ptr %rec.alloc521, align 8
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
  br label %common.ret

choice.case528:                                   ; preds = %entry
  %pay.gep533 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr534 = load ptr, ptr %pay.gep533, align 8
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 16)
  store i64 17, ptr %enum.alloc538, align 8
  %pay.gep540 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc538, i32 0, i32 1
  %a.null544 = icmp eq ptr %payload.ptr534, null
  br i1 %a.null544, label %a.create545, label %a.after546

a.create545:                                      ; preds = %choice.case528
  %arena.cur547 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 24)
  %arena.cur549 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 128)
  store i64 0, ptr %a.create548, align 8
  %a.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 1
  store ptr %a.buf550, ptr %a.data.gep552, align 8
  %a.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep553, align 8
  br label %a.after546

a.after546:                                       ; preds = %a.create545, %choice.case528
  %var.b536.0 = phi ptr [ %a.create548, %a.create545 ], [ %payload.ptr534, %choice.case528 ]
  %call.res555 = call ptr @"typedopt::#rewrite_block"(ptr %0, ptr %var.b536.0)
  store ptr %call.res555, ptr %pay.gep540, align 8
  %fld.gep558 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load559 = load ptr, ptr %fld.gep558, align 8
  %fld.gep561 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load562 = load ptr, ptr %fld.gep561, align 8
  %fld.gep564 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep566 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load567 = load i64, ptr %fld.gep566, align 8
  %fld.gep569 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load570 = load i64, ptr %fld.gep569, align 8
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc538, ptr %rec.alloc572, align 8
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
  br label %common.ret

choice.case579:                                   ; preds = %entry
  %pay.gep584 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr585 = load ptr, ptr %pay.gep584, align 8
  %arena.cur587 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 16)
  store i64 18, ptr %enum.alloc588, align 8
  %pay.gep590 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc588, i32 0, i32 1
  %fld.load593 = load ptr, ptr %payload.ptr585, align 8
  %fld.gep595 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 1
  %fld.load596 = load i1, ptr %fld.gep595, align 1
  %fld.gep598 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 2
  %fld.load599 = load i1, ptr %fld.gep598, align 1
  %fld.gep601 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 3
  %fld.load602 = load i1, ptr %fld.gep601, align 1
  %fld.gep604 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 4
  %fld.load605 = load i1, ptr %fld.gep604, align 1
  %fld.gep608 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 5
  %call.res609 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep608)
  %fld.gep611 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr585, i32 0, i32 6
  %fld.load612 = load i1, ptr %fld.gep611, align 1
  %arena.cur613 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load593, ptr %rec.alloc614, align 8
  %rec.fld616 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 1
  store i1 %fld.load596, ptr %rec.fld616, align 1
  %rec.fld617 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 2
  store i1 %fld.load599, ptr %rec.fld617, align 1
  %rec.fld618 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 3
  store i1 %fld.load602, ptr %rec.fld618, align 1
  %rec.fld619 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 4
  store i1 %fld.load605, ptr %rec.fld619, align 1
  %rec.fld620 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld620, ptr align 1 %call.res609, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld621 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc614, i32 0, i32 6
  store i1 %fld.load612, ptr %rec.fld621, align 1
  store ptr %rec.alloc614, ptr %pay.gep590, align 8
  %fld.gep624 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load625 = load ptr, ptr %fld.gep624, align 8
  %fld.gep627 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load628 = load ptr, ptr %fld.gep627, align 8
  %fld.gep630 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep632 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load633 = load i64, ptr %fld.gep632, align 8
  %fld.gep635 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load636 = load i64, ptr %fld.gep635, align 8
  %arena.cur637 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc638 = call ptr @dva_arena_alloc(ptr %arena.cur637, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc588, ptr %rec.alloc638, align 8
  %rec.fld640 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc638, i32 0, i32 1
  store ptr %fld.load625, ptr %rec.fld640, align 8
  %rec.fld641 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc638, i32 0, i32 2
  store ptr %fld.load628, ptr %rec.fld641, align 8
  %rec.fld642 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc638, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld642, ptr align 1 %fld.gep630, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld643 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc638, i32 0, i32 4
  store i64 %fld.load633, ptr %rec.fld643, align 8
  %rec.fld644 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc638, i32 0, i32 5
  store i64 %fld.load636, ptr %rec.fld644, align 8
  br label %common.ret

choice.case645:                                   ; preds = %entry
  %pay.gep650 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr651 = load ptr, ptr %pay.gep650, align 8
  %fld.gep655 = getelementptr inbounds { ptr, i1 }, ptr %0, i32 0, i32 1
  %fld.load656 = load i1, ptr %fld.gep655, align 1
  %arena.cur657 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  store ptr null, ptr %rec.alloc658, align 8
  %rec.fld660 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc658, i32 0, i32 1
  store i1 %fld.load656, ptr %rec.fld660, align 1
  %fld.gep663 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr651, i32 0, i32 1
  %call.res664 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc658, ptr %fld.gep663)
  %arena.cur666 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc667 = call ptr @dva_arena_alloc(ptr %arena.cur666, i64 16)
  store i64 19, ptr %enum.alloc667, align 8
  %pay.gep669 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc667, i32 0, i32 1
  %call.res673 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %payload.ptr651)
  %fld.gep677 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr651, i32 0, i32 2
  %fld.load678 = load ptr, ptr %fld.gep677, align 8
  %call.res679 = call ptr @"typedopt::#rewrite_optional"(ptr %rec.alloc658, ptr %fld.load678)
  %fld.gep681 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %payload.ptr651, i32 0, i32 3
  %fld.load682 = load i1, ptr %fld.gep681, align 1
  %arena.cur683 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc684 = call ptr @dva_arena_alloc(ptr %arena.cur683, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc684, ptr align 1 %call.res673, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld686 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld686, ptr align 1 %call.res664, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld687 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 2
  store ptr %call.res679, ptr %rec.fld687, align 8
  %rec.fld688 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc684, i32 0, i32 3
  store i1 %fld.load682, ptr %rec.fld688, align 1
  store ptr %rec.alloc684, ptr %pay.gep669, align 8
  %fld.gep691 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load692 = load ptr, ptr %fld.gep691, align 8
  %fld.gep694 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load695 = load ptr, ptr %fld.gep694, align 8
  %fld.gep697 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep699 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load700 = load i64, ptr %fld.gep699, align 8
  %fld.gep702 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load703 = load i64, ptr %fld.gep702, align 8
  %arena.cur704 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc705 = call ptr @dva_arena_alloc(ptr %arena.cur704, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc667, ptr %rec.alloc705, align 8
  %rec.fld707 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc705, i32 0, i32 1
  store ptr %fld.load692, ptr %rec.fld707, align 8
  %rec.fld708 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc705, i32 0, i32 2
  store ptr %fld.load695, ptr %rec.fld708, align 8
  %rec.fld709 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc705, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld709, ptr align 1 %fld.gep697, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld710 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc705, i32 0, i32 4
  store i64 %fld.load700, ptr %rec.fld710, align 8
  %rec.fld711 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc705, i32 0, i32 5
  store i64 %fld.load703, ptr %rec.fld711, align 8
  br label %common.ret

choice.case712:                                   ; preds = %entry
  %pay.gep717 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr718 = load ptr, ptr %pay.gep717, align 8
  %arena.cur720 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc721 = call ptr @dva_arena_alloc(ptr %arena.cur720, i64 16)
  store i64 21, ptr %enum.alloc721, align 8
  %pay.gep723 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc721, i32 0, i32 1
  %fld.load726 = load ptr, ptr %payload.ptr718, align 8
  %fld.gep728 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr718, i32 0, i32 1
  %fld.load729 = load i1, ptr %fld.gep728, align 1
  %fld.gep732 = getelementptr inbounds { ptr, i1, ptr }, ptr %payload.ptr718, i32 0, i32 2
  %fld.load733 = load ptr, ptr %fld.gep732, align 8
  %call.res734 = call ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %fld.load733)
  %arena.cur735 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc736 = call ptr @dva_arena_alloc(ptr %arena.cur735, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load726, ptr %rec.alloc736, align 8
  %rec.fld738 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc736, i32 0, i32 1
  store i1 %fld.load729, ptr %rec.fld738, align 1
  %rec.fld739 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc736, i32 0, i32 2
  store ptr %call.res734, ptr %rec.fld739, align 8
  store ptr %rec.alloc736, ptr %pay.gep723, align 8
  %fld.gep742 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load743 = load ptr, ptr %fld.gep742, align 8
  %fld.gep745 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load746 = load ptr, ptr %fld.gep745, align 8
  %fld.gep748 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep750 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load751 = load i64, ptr %fld.gep750, align 8
  %fld.gep753 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load754 = load i64, ptr %fld.gep753, align 8
  %arena.cur755 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc721, ptr %rec.alloc756, align 8
  %rec.fld758 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc756, i32 0, i32 1
  store ptr %fld.load743, ptr %rec.fld758, align 8
  %rec.fld759 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc756, i32 0, i32 2
  store ptr %fld.load746, ptr %rec.fld759, align 8
  %rec.fld760 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc756, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld760, ptr align 1 %fld.gep748, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld761 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc756, i32 0, i32 4
  store i64 %fld.load751, ptr %rec.fld761, align 8
  %rec.fld762 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc756, i32 0, i32 5
  store i64 %fld.load754, ptr %rec.fld762, align 8
  br label %common.ret

choice.case763:                                   ; preds = %entry
  %pay.gep768 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr769 = load ptr, ptr %pay.gep768, align 8
  %arena.cur772 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 16)
  store i64 22, ptr %enum.alloc773, align 8
  %pay.gep775 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc773, i32 0, i32 1
  %fld.load778 = load ptr, ptr %payload.ptr769, align 8
  %fld.gep781 = getelementptr inbounds { ptr, ptr }, ptr %payload.ptr769, i32 0, i32 1
  %fld.load782 = load ptr, ptr %fld.gep781, align 8
  %call.res783 = call ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %fld.load782)
  %arena.cur784 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc785 = call ptr @dva_arena_alloc(ptr %arena.cur784, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load778, ptr %rec.alloc785, align 8
  %rec.fld787 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc785, i32 0, i32 1
  store ptr %call.res783, ptr %rec.fld787, align 8
  store ptr %rec.alloc785, ptr %pay.gep775, align 8
  %fld.gep790 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load791 = load ptr, ptr %fld.gep790, align 8
  %fld.gep793 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load794 = load ptr, ptr %fld.gep793, align 8
  %fld.gep796 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep798 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load799 = load i64, ptr %fld.gep798, align 8
  %fld.gep801 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load802 = load i64, ptr %fld.gep801, align 8
  %arena.cur803 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc804 = call ptr @dva_arena_alloc(ptr %arena.cur803, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc773, ptr %rec.alloc804, align 8
  %rec.fld806 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc804, i32 0, i32 1
  store ptr %fld.load791, ptr %rec.fld806, align 8
  %rec.fld807 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc804, i32 0, i32 2
  store ptr %fld.load794, ptr %rec.fld807, align 8
  %rec.fld808 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc804, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld808, ptr align 1 %fld.gep796, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld809 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc804, i32 0, i32 4
  store i64 %fld.load799, ptr %rec.fld809, align 8
  %rec.fld810 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc804, i32 0, i32 5
  store i64 %fld.load802, ptr %rec.fld810, align 8
  br label %common.ret

choice.case811:                                   ; preds = %entry
  %pay.gep816 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr817 = load ptr, ptr %pay.gep816, align 8
  %arena.cur820 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc821 = call ptr @dva_arena_alloc(ptr %arena.cur820, i64 16)
  store i64 34, ptr %enum.alloc821, align 8
  %pay.gep823 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc821, i32 0, i32 1
  %call.res826 = call ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %payload.ptr817)
  store ptr %call.res826, ptr %pay.gep823, align 8
  %fld.gep829 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load830 = load ptr, ptr %fld.gep829, align 8
  %fld.gep832 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load833 = load ptr, ptr %fld.gep832, align 8
  %fld.gep835 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep837 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load838 = load i64, ptr %fld.gep837, align 8
  %fld.gep840 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load841 = load i64, ptr %fld.gep840, align 8
  %arena.cur842 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc843 = call ptr @dva_arena_alloc(ptr %arena.cur842, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc821, ptr %rec.alloc843, align 8
  %rec.fld845 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc843, i32 0, i32 1
  store ptr %fld.load830, ptr %rec.fld845, align 8
  %rec.fld846 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc843, i32 0, i32 2
  store ptr %fld.load833, ptr %rec.fld846, align 8
  %rec.fld847 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc843, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld847, ptr align 1 %fld.gep835, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld848 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc843, i32 0, i32 4
  store i64 %fld.load838, ptr %rec.fld848, align 8
  %rec.fld849 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc843, i32 0, i32 5
  store i64 %fld.load841, ptr %rec.fld849, align 8
  br label %common.ret
}

define internal ptr @"typedopt::#simplify_choice"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %call.res = call ptr @"typedopt::#scalar_operand"(ptr %0, ptr %2)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %0, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  store ptr null, ptr %rec.alloc, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld5, align 1
  %a.null = icmp eq ptr %3, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  store i64 0, ptr %a.create8, align 8
  %a.data.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf10, ptr %a.data.gep12, align 8
  %a.cap.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep13, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.branches.0 = phi ptr [ %a.create8, %a.create ], [ %3, %entry ]
  %arr.cycle.len14 = load i64, ptr %var.branches.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.branches.0, i32 0, i32 1
  %arr.cycle.data15 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.277

loop.header.277:                                  ; preds = %a.store, %a.after
  %var.out.0 = phi ptr [ %a.new, %a.after ], [ %var.out.1, %a.store ]
  %loop.idx.277.0 = phi i64 [ 0, %a.after ], [ %loop.next, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.277.0, %arr.cycle.len14
  br i1 %loop.cond, label %loop.body.277, label %loop.exit.277

loop.body.277:                                    ; preds = %loop.header.277
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data15, i64 %loop.idx.277.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 5
  %call.res19 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc, ptr %fld.gep18)
  %fld.load22 = load ptr, ptr %slot.i2p, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 3
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %slot.i2p, i32 0, i32 4
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load22, ptr %rec.alloc37, align 8
  %rec.fld39 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 1
  store ptr %fld.load25, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 2
  store ptr %fld.load28, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 3
  store ptr %fld.load31, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 4
  store ptr %fld.load34, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld43, ptr align 1 %call.res19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.null45 = icmp eq ptr %var.out.0, null
  br i1 %a.null45, label %a.create46, label %a.check

loop.exit.277:                                    ; preds = %loop.header.277
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  store i64 15, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc76, ptr align 1 %2, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld78 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc76, i32 0, i32 1
  store ptr %var.out.0, ptr %rec.fld78, align 8
  store ptr %rec.alloc76, ptr %pay.gep, align 8
  %fld.gep81 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %fld.gep87 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 3
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 4
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %fld.gep92 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %1, i32 0, i32 5
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc95, align 8
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
  %fld.load104 = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load104, true
  br i1 %nottmp, label %or.278.exit, label %a.after109

a.create46:                                       ; preds = %loop.body.277
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  store i64 0, ptr %a.create49, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.277, %a.create46
  %var.out.1 = phi ptr [ %a.create49, %a.create46 ], [ %var.out.0, %loop.body.277 ]
  %a.len56 = load i64, ptr %var.out.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 2
  %a.cap57 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len56, %a.cap57
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.out.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 1
  %a.cur.data58 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len59 = load i64, ptr %var.out.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data58, i64 %a.cur.len59
  %slot.p2i = ptrtoint ptr %rec.alloc37 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len59, 1
  store i64 %a.next.len, ptr %var.out.1, align 8
  %loop.next = add i64 %loop.idx.277.0, 1
  br label %loop.header.277

or.278.exit:                                      ; preds = %loop.exit.277, %a.after109
  %or.278.phi = phi i1 [ %cmptmp, %a.after109 ], [ true, %loop.exit.277 ]
  br i1 %or.278.phi, label %or.279.exit, label %or.279.else

a.after109:                                       ; preds = %loop.exit.277
  %a.len.query118 = load i64, ptr %var.out.0, align 8
  %cmptmp = icmp ne i64 %a.len.query118, 2
  br label %or.278.exit

or.279.else:                                      ; preds = %or.278.exit
  %fld.load121 = load ptr, ptr %call.res, align 8
  %tag.id = load i64, ptr %fld.load121, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  %spec.select = select i1 %tag.match, i1 true, i1 false
  %nottmp125 = xor i1 %spec.select, true
  br label %or.279.exit

or.279.exit:                                      ; preds = %or.278.exit, %or.279.else
  %or.279.phi = phi i1 [ %nottmp125, %or.279.else ], [ %or.278.phi, %or.278.exit ]
  br i1 %or.279.phi, label %common.ret, label %choice.exit126

common.ret:                                       ; preds = %and.290.exit, %or.279.exit, %choice.exit328
  %common.ret.op = phi ptr [ %call.res334, %choice.exit328 ], [ %rec.alloc95, %or.279.exit ], [ %rec.alloc95, %and.290.exit ]
  ret ptr %common.ret.op

choice.exit126:                                   ; preds = %or.279.exit
  %a.null130 = icmp eq ptr %var.out.0, null
  br i1 %a.null130, label %a.create131, label %a.rd.check

a.create131:                                      ; preds = %choice.exit126
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  store i64 0, ptr %a.create134, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  br label %a.rd.check

a.rd.check:                                       ; preds = %choice.exit126, %a.create131
  %var.out.5 = phi ptr [ %a.create134, %a.create131 ], [ %var.out.0, %choice.exit126 ]
  %a.rd.len141 = load i64, ptr %var.out.5, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len141
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.5, i32 0, i32 1
  %a.rd.data142 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data142, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 56)
  store i64 4011, ptr %err.alloc145, align 8
  %err.msg.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep147, align 8
  %err.file.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep148, align 8
  %err.line.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 3
  store i64 355, ptr %err.line.gep149, align 8
  %err.col.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 4
  store i64 19, ptr %err.col.gep150, align 8
  %err.ctx.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep151, align 8
  %err.ctx1.gep153 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep153, align 8
  %err.p2i154 = ptrtoint ptr %err.alloc145 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i154, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.280, label %unwrap.abort.280

unwrap.pos.280:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %a.rd.len186 = load i64, ptr %var.out.5, align 8
  %a.rd.lt187 = icmp slt i64 1, %a.rd.len186
  br i1 %a.rd.lt187, label %a.rd.ok181, label %a.rd.err.oob183

unwrap.abort.280:                                 ; preds = %a.rd.done
  %4 = call i64 @write(i32 2, ptr @expect.reason.281, i64 20)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep156, align 8
  %err.file.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep157, align 8
  %err.line.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep158, align 8
  %err.col.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep159, align 8
  %err.msg.len160 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len161 = and i64 %err.msg.len160, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len161 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data162 = load ptr, ptr %err.msg.data, align 8
  %err.file.len163 = load i64, ptr %err.file.struct, align 8
  %err.file.len164 = and i64 %err.file.len163, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len164 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data165 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.280
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.280
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data162, i32 %err.file.len32, ptr %err.file.data165, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.rd.ok181:                                       ; preds = %unwrap.pos.280
  %a.rd.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.5, i32 0, i32 1
  %a.rd.data190 = load ptr, ptr %a.rd.data189, align 8
  %a.rd.elem.gep191 = getelementptr i64, ptr %a.rd.data190, i64 1
  %a.rd.elem192 = load i64, ptr %a.rd.elem.gep191, align 8
  br label %a.rd.done184

a.rd.err.oob183:                                  ; preds = %unwrap.pos.280
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  store i64 4011, ptr %err.alloc205, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 356, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 18, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  store i64 1, ptr %err.ctx.gep211, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 %a.rd.len186, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done184

a.rd.done184:                                     ; preds = %a.rd.err.oob183, %a.rd.ok181
  %a.rd.tag215 = phi i1 [ true, %a.rd.ok181 ], [ false, %a.rd.err.oob183 ]
  %a.rd.pay216 = phi i64 [ %a.rd.elem192, %a.rd.ok181 ], [ %err.p2i214, %a.rd.err.oob183 ]
  %ram.tag217 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag215, 0
  %ram.pay218 = insertvalue { i1, i64 } %ram.tag217, i64 %a.rd.pay216, 1
  br i1 %a.rd.tag215, label %unwrap.pos.282, label %unwrap.abort.282

unwrap.pos.282:                                   ; preds = %a.rd.done184
  %pay.ptr252 = inttoptr i64 %a.rd.pay216 to ptr
  %fld.load255 = load ptr, ptr %pay.ptr, align 8
  %tag.id260 = load i64, ptr %fld.load255, align 8
  %tag.match261 = icmp eq i64 %tag.id260, 3
  %. = select i1 %tag.match261, i1 true, i1 false
  br i1 %., label %and.284.then, label %and.284.exit

unwrap.abort.282:                                 ; preds = %a.rd.done184
  %5 = call i64 @write(i32 2, ptr @expect.reason.283, i64 20)
  %err.ptr221 = inttoptr i64 %a.rd.pay216 to ptr
  %err.code223 = load i64, ptr %err.ptr221, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 1
  %err.msg.struct225 = load ptr, ptr %err.msg.gep224, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 2
  %err.file.struct227 = load ptr, ptr %err.file.gep226, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 3
  %err.line229 = load i64, ptr %err.line.gep228, align 8
  %err.col.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 4
  %err.col231 = load i64, ptr %err.col.gep230, align 8
  %err.msg.len233 = load i64, ptr %err.msg.struct225, align 8
  %err.msg.len234 = and i64 %err.msg.len233, 281474976710655
  %err.msg.len32235 = trunc i64 %err.msg.len234 to i32
  %err.msg.data236 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 1
  %err.msg.data237 = load ptr, ptr %err.msg.data236, align 8
  %err.file.len239 = load i64, ptr %err.file.struct227, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32241 = trunc i64 %err.file.len240 to i32
  %err.file.data242 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 1
  %err.file.data243 = load ptr, ptr %err.file.data242, align 8
  %err.thread.rec244 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread245 = icmp ne ptr %err.thread.rec244, null
  br i1 %err.is.thread245, label %err.thread246, label %err.normal247

err.thread246:                                    ; preds = %unwrap.abort.282
  %err.haserr.gep248 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep248, align 8
  %err.err.gep249 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 7
  store ptr %err.ptr221, ptr %err.err.gep249, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal247:                                    ; preds = %unwrap.abort.282
  %err.panic.printf250 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code223, i32 %err.msg.len32235, ptr %err.msg.data237, i32 %err.file.len32241, ptr %err.file.data243, i64 %err.line229, i64 %err.col231)
  call void @exit(i32 1)
  unreachable

and.284.then:                                     ; preds = %unwrap.pos.282
  %fld.load265 = load ptr, ptr %pay.ptr252, align 8
  %tag.id270 = load i64, ptr %fld.load265, align 8
  %tag.match271 = icmp eq i64 %tag.id270, 3
  %.335 = select i1 %tag.match271, i1 true, i1 false
  br label %and.284.exit

and.284.exit:                                     ; preds = %and.284.then, %unwrap.pos.282
  %and.284.phi = phi i1 [ %., %unwrap.pos.282 ], [ %.335, %and.284.then ]
  br i1 %and.284.phi, label %and.285.then, label %and.285.exit

and.285.then:                                     ; preds = %and.284.exit
  %fld.gep274 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %fld.load275 = load ptr, ptr %fld.gep274, align 8
  %a.len.query277 = load i64, ptr %fld.load275, align 8
  %cmptmp278 = icmp eq i64 %a.len.query277, 0
  br label %and.285.exit

and.285.exit:                                     ; preds = %and.284.exit, %and.285.then
  %and.285.phi = phi i1 [ %cmptmp278, %and.285.then ], [ %and.284.phi, %and.284.exit ]
  br i1 %and.285.phi, label %and.286.then, label %and.286.exit

and.286.then:                                     ; preds = %and.285.exit
  %fld.gep280 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr252, i32 0, i32 4
  %fld.load281 = load ptr, ptr %fld.gep280, align 8
  %a.len.query283 = load i64, ptr %fld.load281, align 8
  %cmptmp284 = icmp eq i64 %a.len.query283, 0
  br label %and.286.exit

and.286.exit:                                     ; preds = %and.285.exit, %and.286.then
  %and.286.phi = phi i1 [ %cmptmp284, %and.286.then ], [ %and.285.phi, %and.285.exit ]
  br i1 %and.286.phi, label %and.287.then, label %and.287.exit

and.287.then:                                     ; preds = %and.286.exit
  %fld.gep286 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 5
  %call.res287 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep286)
  br label %and.287.exit

and.287.exit:                                     ; preds = %and.286.exit, %and.287.then
  %and.287.phi = phi i1 [ %call.res287, %and.287.then ], [ %and.286.phi, %and.286.exit ]
  br i1 %and.287.phi, label %and.288.then, label %and.288.exit

and.288.then:                                     ; preds = %and.287.exit
  %fld.gep289 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr252, i32 0, i32 5
  %call.res290 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep289)
  br label %and.288.exit

and.288.exit:                                     ; preds = %and.287.exit, %and.288.then
  %and.288.phi = phi i1 [ %call.res290, %and.288.then ], [ %and.287.phi, %and.287.exit ]
  br i1 %and.288.phi, label %and.289.then, label %and.289.exit

and.289.then:                                     ; preds = %and.288.exit
  %fld.gep293 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 5
  %call.res294 = call i1 @"typedopt::#same_scalar_type"(ptr %1, ptr %fld.gep293)
  br label %and.289.exit

and.289.exit:                                     ; preds = %and.288.exit, %and.289.then
  %and.289.phi = phi i1 [ %call.res294, %and.289.then ], [ %and.288.phi, %and.288.exit ]
  br i1 %and.289.phi, label %and.290.then, label %and.290.exit

and.290.then:                                     ; preds = %and.289.exit
  %fld.gep297 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr252, i32 0, i32 5
  %call.res298 = call i1 @"typedopt::#same_scalar_type"(ptr %1, ptr %fld.gep297)
  br label %and.290.exit

and.290.exit:                                     ; preds = %and.289.exit, %and.290.then
  %and.290.phi = phi i1 [ %call.res298, %and.290.then ], [ %and.289.phi, %and.289.exit ]
  %nottmp300 = xor i1 %and.290.phi, true
  br i1 %nottmp300, label %common.ret, label %choice.exit302

choice.exit302:                                   ; preds = %and.290.exit
  %fld.load307 = load ptr, ptr %call.res, align 8
  %tag.id312 = load i64, ptr %fld.load307, align 8
  %tag.match313 = icmp eq i64 %tag.id312, 4
  br i1 %tag.match313, label %choice.case309, label %choice.else

choice.case309:                                   ; preds = %choice.exit302
  %pay.gep314 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 1
  %payload.ptr315 = load ptr, ptr %pay.gep314, align 8
  %pay.int.null316 = icmp eq ptr %payload.ptr315, null
  br i1 %pay.int.null316, label %choice.else, label %pay.int.load317

pay.int.load317:                                  ; preds = %choice.case309
  %pay.int.val320 = load i1, ptr %payload.ptr315, align 1
  br i1 %pay.int.val320, label %choice.then327, label %choice.else

choice.then327:                                   ; preds = %pay.int.load317
  %fld.gep330 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr, i32 0, i32 5
  br label %choice.exit328

choice.else:                                      ; preds = %choice.case309, %choice.exit302, %pay.int.load317
  %fld.gep332 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %pay.ptr252, i32 0, i32 5
  br label %choice.exit328

choice.exit328:                                   ; preds = %choice.else, %choice.then327
  %choice.res333 = phi ptr [ %fld.gep330, %choice.then327 ], [ %fld.gep332, %choice.else ]
  %call.res334 = call ptr @"typedopt::#replace"(ptr %1, ptr %choice.res333)
  br label %common.ret
}

define internal ptr @"typedopt::#rewrite_block"(ptr %0, ptr %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %0, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  store ptr null, ptr %rec.alloc, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld1, align 1
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  store i64 0, ptr %a.create6, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.exprs.0 = phi ptr [ %a.create6, %a.create ], [ %1, %entry ]
  %arr.cycle.len12 = load i64, ptr %var.exprs.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.exprs.0, i32 0, i32 1
  %arr.cycle.data13 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.291

loop.header.291:                                  ; preds = %choice.exit, %a.after
  %var.out.0 = phi ptr [ %a.new, %a.after ], [ %var.out.1, %choice.exit ]
  %loop.idx.291.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.291.0, %arr.cycle.len12
  br i1 %loop.cond, label %loop.body.291, label %a.after83

loop.body.291:                                    ; preds = %loop.header.291
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data13, i64 %loop.idx.291.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res = call ptr @"typedopt::#rewrite"(ptr %rec.alloc, ptr %slot.i2p)
  %a.null18 = icmp eq ptr %var.out.0, null
  br i1 %a.null18, label %a.create19, label %a.check

a.create19:                                       ; preds = %loop.body.291
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  store i64 0, ptr %a.create22, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.291, %a.create19
  %var.out.1 = phi ptr [ %a.create22, %a.create19 ], [ %var.out.0, %loop.body.291 ]
  %a.len29 = load i64, ptr %var.out.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 2
  %a.cap30 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len29, %a.cap30
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.out.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 1
  %a.cur.data31 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len32 = load i64, ptr %var.out.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data31, i64 %a.cur.len32
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len32, 1
  store i64 %a.next.len, ptr %var.out.1, align 8
  %fld.load35 = load ptr, ptr %call.res, align 8
  %tag.id = load i64, ptr %fld.load35, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.then, %choice.else, %choice.next
  %loop.next = add i64 %loop.idx.291.0, 1
  br label %loop.header.291

choice.case:                                      ; preds = %a.store
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.load39 = load i1, ptr %fld.gep, align 1
  br i1 %fld.load39, label %and.292.then, label %and.292.exit

choice.next:                                      ; preds = %a.store
  store ptr null, ptr %rec.alloc, align 8
  br label %choice.exit

and.292.then:                                     ; preds = %choice.case
  %fld.gep41 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 1
  %fld.load42 = load i1, ptr %fld.gep41, align 1
  br i1 %fld.load42, label %or.293.exit, label %or.293.else

and.292.exit:                                     ; preds = %choice.case, %or.295.exit
  %and.292.phi = phi i1 [ %nottmp, %or.295.exit ], [ %fld.load39, %choice.case ]
  br i1 %and.292.phi, label %and.296.then, label %and.296.exit

or.293.else:                                      ; preds = %and.292.then
  %fld.gep44 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 2
  %fld.load45 = load i1, ptr %fld.gep44, align 1
  br label %or.293.exit

or.293.exit:                                      ; preds = %and.292.then, %or.293.else
  %or.293.phi = phi i1 [ %fld.load45, %or.293.else ], [ %fld.load42, %and.292.then ]
  br i1 %or.293.phi, label %or.294.exit, label %or.294.else

or.294.else:                                      ; preds = %or.293.exit
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 3
  %fld.load48 = load i1, ptr %fld.gep47, align 1
  br label %or.294.exit

or.294.exit:                                      ; preds = %or.293.exit, %or.294.else
  %or.294.phi = phi i1 [ %fld.load48, %or.294.else ], [ %or.293.phi, %or.293.exit ]
  br i1 %or.294.phi, label %or.295.exit, label %or.295.else

or.295.else:                                      ; preds = %or.294.exit
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 4
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  br label %or.295.exit

or.295.exit:                                      ; preds = %or.294.exit, %or.295.else
  %or.295.phi = phi i1 [ %fld.load51, %or.295.else ], [ %or.294.phi, %or.294.exit ]
  %nottmp = xor i1 %or.295.phi, true
  br label %and.292.exit

and.296.then:                                     ; preds = %and.292.exit
  %fld.load54 = load ptr, ptr %payload.ptr, align 8
  %eq.lhs.len55 = load i64, ptr %fld.load54, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len56, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

and.296.exit:                                     ; preds = %and.292.exit, %str.eq.merge
  %and.296.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %and.292.phi, %and.292.exit ]
  br i1 %and.296.phi, label %and.297.then, label %and.297.exit

str.eq.then:                                      ; preds = %and.296.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data58, ptr @str.0, i64 %eq.lhs.len56)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %and.296.then, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %and.296.then ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.296.exit

and.297.then:                                     ; preds = %and.296.exit
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  %call.res61 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep60)
  br label %and.297.exit

and.297.exit:                                     ; preds = %and.296.exit, %and.297.then
  %and.297.phi = phi i1 [ %call.res61, %and.297.then ], [ %and.296.phi, %and.296.exit ]
  br i1 %and.297.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.297.exit
  %fld.load67 = load ptr, ptr %payload.ptr, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 5
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load67, ptr %rec.alloc71, align 8
  %rec.fld73 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc71, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld73, ptr align 1 %fld.gep69, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc71, ptr %rec.alloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.297.exit
  store ptr null, ptr %rec.alloc, align 8
  br label %choice.exit

a.after83:                                        ; preds = %loop.header.291
  ret ptr %var.out.0
}

define internal ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %1) #3 {
entry:
  %niche.ne.null = icmp ne ptr %1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res = call ptr @"typedopt::#rewrite"(ptr %0, ptr %1)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ null, %entry ]
  ret ptr %choice.res
}

define internal ptr @"typedopt::#rewrite_stmt"(ptr %0, ptr %1) #3 {
entry:
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case5
    i64 2, label %choice.case32
  ]

choice.exit:                                      ; preds = %entry, %choice.case32, %choice.case5, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %enum.alloc14, %choice.case5 ], [ %enum.alloc42, %choice.case32 ], [ %1, %entry ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep2 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %call.res = call ptr @"typedopt::#rewrite"(ptr %0, ptr %payload.ptr)
  store ptr %call.res, ptr %pay.gep2, align 8
  br label %choice.exit

choice.case5:                                     ; preds = %entry
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  store i64 1, ptr %enum.alloc14, align 8
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 1
  %fld.load = load ptr, ptr %payload.ptr11, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr11, i32 0, i32 1
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %fld.gep23 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr11, i32 0, i32 2
  %call.res24 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep23)
  %fld.gep26 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr11, i32 0, i32 3
  %fld.load27 = load i1, ptr %fld.gep26, align 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  store ptr %fld.load, ptr %rec.alloc, align 8
  %rec.fld29 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load20, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld30, ptr align 1 %call.res24, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld31 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %fld.load27, ptr %rec.fld31, align 1
  store ptr %rec.alloc, ptr %pay.gep16, align 8
  br label %choice.exit

choice.case32:                                    ; preds = %entry
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  store i64 2, ptr %enum.alloc42, align 8
  %pay.gep44 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc42, i32 0, i32 1
  %fld.load47 = load ptr, ptr %payload.ptr38, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr38, i32 0, i32 1
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %fld.gep53 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %payload.ptr38, i32 0, i32 2
  %call.res54 = call ptr @"typedopt::#rewrite"(ptr %0, ptr %fld.gep53)
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  store ptr %fld.load47, ptr %rec.alloc56, align 8
  %rec.fld58 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 1
  store ptr %fld.load50, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld59, ptr align 1 %call.res54, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc56, ptr %pay.gep44, align 8
  br label %choice.exit
}

define ptr @"typedopt::collection_fusion"(ptr %0) #3 {
entry:
  %call.res = call ptr @"typedopt::#fuse_pipeline"(ptr %0)
  ret ptr %call.res
}

define ptr @"typedopt::run"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  store ptr null, ptr %rec.alloc, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld1, align 1
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  store i64 0, ptr %a.create5, align 8
  %a.data.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf7, ptr %a.data.gep9, align 8
  %a.cap.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep10, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.prog.0 = phi ptr [ %a.create5, %a.create ], [ %0, %entry ]
  %arr.cycle.len11 = load i64, ptr %var.prog.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prog.0, i32 0, i32 1
  %arr.cycle.data12 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.298

loop.header.298:                                  ; preds = %a.store, %a.after
  %var._map_out_1124.0 = phi ptr [ %a.new, %a.after ], [ %var._map_out_1124.1, %a.store ]
  %loop.idx.298.0 = phi i64 [ 0, %a.after ], [ %loop.next, %a.store ]
  %loop.cond = icmp slt i64 %loop.idx.298.0, %arr.cycle.len11
  br i1 %loop.cond, label %loop.body.298, label %a.after35

loop.body.298:                                    ; preds = %loop.header.298
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data12, i64 %loop.idx.298.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res = call ptr @"typedopt::#rewrite_stmt"(ptr %rec.alloc, ptr %slot.i2p)
  %a.null16 = icmp eq ptr %var._map_out_1124.0, null
  br i1 %a.null16, label %a.create17, label %a.check

a.create17:                                       ; preds = %loop.body.298
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  store i64 0, ptr %a.create20, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.298, %a.create17
  %var._map_out_1124.1 = phi ptr [ %a.create20, %a.create17 ], [ %var._map_out_1124.0, %loop.body.298 ]
  %a.len27 = load i64, ptr %var._map_out_1124.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_1124.1, i32 0, i32 2
  %a.cap28 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len27, %a.cap28
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var._map_out_1124.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_1124.1, i32 0, i32 1
  %a.cur.data29 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len30 = load i64, ptr %var._map_out_1124.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data29, i64 %a.cur.len30
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len30, 1
  store i64 %a.next.len, ptr %var._map_out_1124.1, align 8
  %loop.next = add i64 %loop.idx.298.0, 1
  br label %loop.header.298

a.after35:                                        ; preds = %loop.header.298
  ret ptr %var._map_out_1124.0
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { cold noinline "nounwind" }
