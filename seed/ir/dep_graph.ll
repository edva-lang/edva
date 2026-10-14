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
@str.0 = internal unnamed_addr constant [6 x i8] c"<fwd>\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.0 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"dep_graph::is_fwd_assign", ptr null }
@"var.dep_graph::is_fwd_assign" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"dep_graph::copy_names", ptr null }
@"var.dep_graph::copy_names" = global ptr null
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [14 x i8] c"dep_graph.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@str.4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.4 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"dep_graph::has_name_at", ptr null }
@"var.dep_graph::has_name_at" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"dep_graph::has_name", ptr null }
@"var.dep_graph::has_name" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"dep_graph::name_is_qualified", ptr null }
@"var.dep_graph::name_is_qualified" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"dep_graph::decl_module_find", ptr null }
@"var.dep_graph::decl_module_find" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"dep_graph::decl_module", ptr null }
@"var.dep_graph::decl_module" = global ptr null
@str.5 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"dep_graph::resolve_dep_ref", ptr null }
@"var.dep_graph::resolve_dep_ref" = global ptr null
@str.7 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"dep_graph::collect_expr_refs", ptr null }
@"var.dep_graph::collect_expr_refs" = global ptr null
@str.8 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.8 }
@dva_thread_rec = external thread_local global ptr
@clo.const.9 = internal constant { ptr, ptr } { ptr @"dep_graph::find_node_idx", ptr null }
@"var.dep_graph::find_node_idx" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"dep_graph::node_has_dep", ptr null }
@"var.dep_graph::node_has_dep" = global ptr null
@str.9 = internal unnamed_addr constant [5 x i8] c"@ct0\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"dep_graph::is_generic_sig", ptr null }
@"var.dep_graph::is_generic_sig" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"dep_graph::build_dep_graph", ptr null }
@"var.dep_graph::build_dep_graph" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"dep_graph::init_tarjan_state", ptr null }
@"var.dep_graph::init_tarjan_state" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"dep_graph::push_stack", ptr null }
@"var.dep_graph::push_stack" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"dep_graph::pop_stack", ptr null }
@"var.dep_graph::pop_stack" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_dfs", ptr null }
@"var.dep_graph::tarjan_dfs" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_scc", ptr null }
@"var.dep_graph::tarjan_scc" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_dep_graph, ptr null }]

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

define internal void @__dva_global_init_dep_graph() #1 {
entry:
  store ptr @clo.const, ptr @"var.dep_graph::is_fwd_assign", align 8
  store ptr @clo.const.1, ptr @"var.dep_graph::copy_names", align 8
  store ptr @clo.const.2, ptr @"var.dep_graph::has_name_at", align 8
  store ptr @clo.const.3, ptr @"var.dep_graph::has_name", align 8
  store ptr @clo.const.4, ptr @"var.dep_graph::name_is_qualified", align 8
  store ptr @clo.const.5, ptr @"var.dep_graph::decl_module_find", align 8
  store ptr @clo.const.6, ptr @"var.dep_graph::decl_module", align 8
  store ptr @clo.const.7, ptr @"var.dep_graph::resolve_dep_ref", align 8
  store ptr @clo.const.8, ptr @"var.dep_graph::collect_expr_refs", align 8
  store ptr @clo.const.9, ptr @"var.dep_graph::find_node_idx", align 8
  store ptr @clo.const.10, ptr @"var.dep_graph::node_has_dep", align 8
  store ptr @clo.const.11, ptr @"var.dep_graph::is_generic_sig", align 8
  store ptr @clo.const.12, ptr @"var.dep_graph::build_dep_graph", align 8
  store ptr @clo.const.13, ptr @"var.dep_graph::init_tarjan_state", align 8
  store ptr @clo.const.14, ptr @"var.dep_graph::push_stack", align 8
  store ptr @clo.const.15, ptr @"var.dep_graph::pop_stack", align 8
  store ptr @clo.const.16, ptr @"var.dep_graph::tarjan_dfs", align 8
  store ptr @clo.const.17, ptr @"var.dep_graph::tarjan_scc", align 8
  ret void
}

define i1 @"dep_graph::is_fwd_assign"(ptr %0) #1 {
entry:
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %str.eq.merge
  %choice.res = phi i1 [ %str.eq.result, %str.eq.merge ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %str.tag5 = lshr i64 %eq.rhs.len, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale9:                                       ; preds = %str_gen_check7
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %choice.exit
}

define ptr @"dep_graph::copy_names"(ptr %0) #1 {
entry:
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  %var.load = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.copy.len3 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.copy.cap4 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.copy.data5 = load ptr, ptr %a.copy.data, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap4, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur7 = call ptr @dva_arena_current()
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len3, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data5, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len3, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap4, ptr %a.copy.cap.gep, align 8
  ret ptr %a.copy
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define i1 @"dep_graph::has_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var._27 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  store ptr %1, ptr %var.s, align 8
  store i64 %2, ptr %var.i, align 8
  store i64 %3, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit45, %choice.then
  %choice.res63 = phi i1 [ false, %choice.then ], [ %choice.res62, %choice.exit45 ]
  ret i1 %choice.res63

a.create:                                         ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.names, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.names, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur8 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 42, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 20, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 42, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 20, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  %err.ctx0.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep17, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i19, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag20 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay24 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay24 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit23

choice.else22:                                    ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr26 = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr26, ptr %var._27, align 8
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res = phi ptr [ %pay.ptr, %choice.then21 ], [ @str.4.struct, %choice.else22 ]
  %var.load28 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit23
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len32 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %str.tag34 = lshr i64 %eq.rhs.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check36:                                  ; preds = %str_ok
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

str.eq.then:                                      ; preds = %str_ok37
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data41 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data42 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data41, ptr %eq.rhs.data42, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok37
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then43, label %choice.else44

choice.then43:                                    ; preds = %str.eq.merge
  br label %choice.exit45

choice.else44:                                    ; preds = %str.eq.merge
  %var.load46 = load ptr, ptr %var.names, align 8
  %a.load47 = load ptr, ptr %var.names, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

choice.exit45:                                    ; preds = %a.after50, %choice.then43
  %choice.res62 = phi i1 [ true, %choice.then43 ], [ %call.res, %a.after50 ]
  br label %choice.exit

a.create49:                                       ; preds = %choice.else44
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
  store ptr %a.create52, ptr %var.names, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %choice.else44
  %a.load258 = load ptr, ptr %var.names, align 8
  %var.load59 = load ptr, ptr %var.s, align 8
  %var.load60 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load60, 1
  %var.load61 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load258, ptr %var.load59, i64 %addtmp, i64 %var.load61)
  br label %choice.exit45
}

define i1 @"dep_graph::has_name"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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
  %var.load3 = load ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.names, align 8
  %a.load5 = load ptr, ptr %var.names, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

a.create7:                                        ; preds = %a.after
  %arena.cur9 = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.create10, ptr %var.names, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %a.after
  %a.load216 = load ptr, ptr %var.names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.len.query17 = load i64, ptr %a.len.query, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load2, ptr %var.load3, i64 0, i64 %a.len.query17)
  ret i1 %call.res
}

define i1 @"dep_graph::name_is_qualified"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res47 = phi i1 [ %choice.res, %choice.exit43 ], [ false, %choice.else ]
  ret i1 %choice.res47

str_gen_check9:                                   ; preds = %choice.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp16, label %and.0.then, label %and.0.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.0.then:                                       ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.0.else:                                       ; preds = %idx_ok
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %idx_ok34
  %and.0.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp16, %and.0.else ]
  br i1 %and.0.phi, label %choice.then41, label %choice.else42

str_gen_check23:                                  ; preds = %and.0.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.0.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %addtmp31 = add i64 %var.load30, 1
  %idx.neg32 = icmp slt i64 %addtmp31, 0
  br i1 %idx.neg32, label %idx_oob35, label %idx_big_check33

str_stale25:                                      ; preds = %str_gen_check23
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check33:                                  ; preds = %str_ok24
  %idx.big36 = icmp sge i64 %addtmp31, %s.read.len20
  br i1 %idx.big36, label %idx_oob35, label %idx_ok34

idx_ok34:                                         ; preds = %idx_oob35, %idx_big_check33
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data29, i64 %addtmp31
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.0.exit

idx_oob35:                                        ; preds = %idx_big_check33, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok34

choice.then41:                                    ; preds = %and.0.exit
  br label %choice.exit43

choice.else42:                                    ; preds = %and.0.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load44, i64 %addtmp46)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i1 [ true, %choice.then41 ], [ %call.res, %choice.else42 ]
  br label %choice.exit
}

define i64 @"dep_graph::decl_module_find"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.last = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.last, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

choice.else:                                      ; preds = %str_ok
  %var.load53 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit43
  %choice.res54 = phi i64 [ %choice.res, %choice.exit43 ], [ %var.load53, %choice.else ]
  ret i64 %choice.res54

str_gen_check9:                                   ; preds = %choice.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp16, label %and.1.then, label %and.1.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.1.then:                                       ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.1.else:                                       ; preds = %idx_ok
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %idx_ok34
  %and.1.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %cmptmp16, %and.1.else ]
  br i1 %and.1.phi, label %choice.then41, label %choice.else42

str_gen_check23:                                  ; preds = %and.1.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.1.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %addtmp31 = add i64 %var.load30, 1
  %idx.neg32 = icmp slt i64 %addtmp31, 0
  br i1 %idx.neg32, label %idx_oob35, label %idx_big_check33

str_stale25:                                      ; preds = %str_gen_check23
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check33:                                  ; preds = %str_ok24
  %idx.big36 = icmp sge i64 %addtmp31, %s.read.len20
  br i1 %idx.big36, label %idx_oob35, label %idx_ok34

idx_ok34:                                         ; preds = %idx_oob35, %idx_big_check33
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data29, i64 %addtmp31
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp eq i64 %s.byte.val39, 58
  br label %and.1.exit

idx_oob35:                                        ; preds = %idx_big_check33, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok34

choice.then41:                                    ; preds = %and.1.exit
  %var.load44 = load ptr, ptr %var.name, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %addtmp46 = add i64 %var.load45, 2
  %var.load47 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load44, i64 %addtmp46, i64 %var.load47)
  br label %choice.exit43

choice.else42:                                    ; preds = %and.1.exit
  %var.load48 = load ptr, ptr %var.name, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %addtmp50 = add i64 %var.load49, 1
  %var.load51 = load i64, ptr %var.last, align 8
  %call.res52 = call i64 @"dep_graph::decl_module_find"(ptr %var.load48, i64 %addtmp50, i64 %var.load51)
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi i64 [ %call.res, %choice.then41 ], [ %call.res52, %choice.else42 ]
  br label %choice.exit
}

define ptr @"dep_graph::decl_module"(ptr %0, i64 %1) #1 {
entry:
  %var.last = alloca i64, align 8
  %var.ignored = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.ignored, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load, i64 0, i64 -1)
  store i64 %call.res, ptr %var.last, align 8
  %var.load1 = load i64, ptr %var.last, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %str_ok, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %str.view, %str_ok ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.last, align 8
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load6, 0
  %rel.end = add i64 %s.read.len4, %var.load6
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load6
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur7 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"dep_graph::resolve_dep_ref"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.ref = alloca ptr, align 8
  %var.mod = alloca ptr, align 8
  %var.defs = alloca ptr, align 8
  store ptr %0, ptr %var.defs, align 8
  store ptr %1, ptr %var.mod, align 8
  store ptr %2, ptr %var.ref, align 8
  %var.load = load ptr, ptr %var.defs, align 8
  %var.load1 = load ptr, ptr %var.ref, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %m.cap2 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 2
  %m.keys3 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 4
  %m.states4 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %mk.data5 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %mk.len6 = load i64, ptr %mk.len, align 8
  %mk.len7 = and i64 %mk.len6, 281474976710655
  %str.tag = lshr i64 %mk.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data5, i64 %mk.len7)
  %m.capm1 = sub i64 %m.cap2, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe8 = phi i64 [ 0, %str_ok ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe8, %m.cap2
  %m.mem.state.gep = getelementptr i8, ptr %m.states4, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys3, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen9 = load i64, ptr %mk.slen, align 8
  %mk.slen10 = and i64 %mk.slen9, 281474976710655
  %str.tag11 = lshr i64 %mk.slen9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe8, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check13:                                  ; preds = %m.mem.found
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %mk.nlen18 = load i64, ptr %mk.nlen, align 8
  %mk.nlen19 = and i64 %mk.nlen18, 281474976710655
  %str.tag20 = lshr i64 %mk.nlen18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

str_stale15:                                      ; preds = %str_gen_check13
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str_gen_check22:                                  ; preds = %str_ok14
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %str_ok14
  %mk.lenseq = icmp eq i64 %mk.slen10, %mk.nlen19
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale24:                                      ; preds = %str_gen_check22
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

mk.eq.then:                                       ; preds = %str_ok23
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata27 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %mk.ndata28 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata27, ptr %mk.ndata28, i64 %mk.nlen19)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok23
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load29 = load ptr, ptr %var.ref, align 8
  br label %choice.exit

choice.else:                                      ; preds = %m.mem.done
  %var.load30 = load ptr, ptr %var.mod, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %eq.lhs.len31 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.lhs.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.exit:                                      ; preds = %choice.exit52, %choice.then
  %choice.res532 = phi ptr [ %var.load29, %choice.then ], [ %choice.res531, %choice.exit52 ]
  ret ptr %choice.res532

str_gen_check35:                                  ; preds = %choice.else
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.else
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len40 = and i64 %eq.rhs.len, 281474976710655
  %str.tag41 = lshr i64 %eq.rhs.len, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str_gen_check43:                                  ; preds = %str_ok36
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %str_ok36
  %eq.len = icmp eq i64 %eq.lhs.len32, %eq.rhs.len40
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale45:                                      ; preds = %str_gen_check43
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

str.eq.then:                                      ; preds = %str_ok44
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %eq.lhs.data48 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data48, ptr %eq.rhs.data, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok44
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.2.then, label %and.2.else

and.2.then:                                       ; preds = %str.eq.merge
  %var.load49 = load ptr, ptr %var.ref, align 8
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load49, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.2.exit

and.2.else:                                       ; preds = %str.eq.merge
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %nottmp, %and.2.then ], [ %str.neq, %and.2.else ]
  br i1 %and.2.phi, label %choice.then50, label %choice.else51

choice.then50:                                    ; preds = %and.2.exit
  %var.load53 = load ptr, ptr %var.defs, align 8
  %var.load54 = load ptr, ptr %var.mod, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %concat.lhs55 = load i64, ptr %concat.lhs, align 8
  %concat.lhs56 = and i64 %concat.lhs55, 281474976710655
  %str.tag57 = lshr i64 %concat.lhs55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

choice.else51:                                    ; preds = %and.2.exit
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %choice.exit200
  %choice.res531 = phi ptr [ %choice.res530, %choice.exit200 ], [ @str.4.struct, %choice.else51 ]
  br label %choice.exit

str_gen_check59:                                  ; preds = %choice.then50
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %choice.then50
  %concat.lhs64 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %concat.lhs65 = load ptr, ptr %concat.lhs64, align 8
  %concat.rhs = load i64, ptr @str.5.struct, align 8
  %concat.rhs66 = and i64 %concat.rhs, 281474976710655
  %str.tag67 = lshr i64 %concat.rhs, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale61:                                      ; preds = %str_gen_check59
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str_gen_check69:                                  ; preds = %str_ok60
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok60
  %concat.rhs74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs56, i64 %concat.rhs66)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len75

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

concat.sum.len75:                                 ; preds = %str_overflow_abort, %str_ok70
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum76 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf77 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf77, label %str_overflow_abort79, label %concat.tot.len78

str_overflow_abort:                               ; preds = %str_ok70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len75

concat.tot.len78:                                 ; preds = %str_overflow_abort79, %concat.sum.len75
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs65, i64 %concat.lhs56, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs74, i64 %concat.rhs66, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur81 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load82 = load ptr, ptr %var.ref, align 8
  %concat.lhs83 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs84 = load i64, ptr %concat.lhs83, align 8
  %concat.lhs85 = and i64 %concat.lhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.lhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_overflow_abort79:                             ; preds = %concat.sum.len75
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len78

str_gen_check88:                                  ; preds = %concat.tot.len78
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %concat.tot.len78
  %concat.lhs93 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs94 = load ptr, ptr %concat.lhs93, align 8
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %concat.rhs96 = load i64, ptr %concat.rhs95, align 8
  %concat.rhs97 = and i64 %concat.rhs96, 281474976710655
  %str.tag98 = lshr i64 %concat.rhs96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_stale90:                                      ; preds = %str_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check100:                                 ; preds = %str_ok89
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %str.tag98)
  br i1 %tag.valid104, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %str_ok89
  %concat.rhs105 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %concat.rhs106 = load ptr, ptr %concat.rhs105, align 8
  %concat.sum.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs85, i64 %concat.rhs97)
  %sum108 = extractvalue { i64, i1 } %concat.sum.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.sum.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.sum.len110

str_stale102:                                     ; preds = %str_gen_check100
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

concat.sum.len110:                                ; preds = %str_overflow_abort111, %str_ok101
  %concat.tot.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum108, i64 1)
  %sum113 = extractvalue { i64, i1 } %concat.tot.len112, 0
  %ovf114 = extractvalue { i64, i1 } %concat.tot.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %concat.tot.len115

str_overflow_abort111:                            ; preds = %str_ok101
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len110

concat.tot.len115:                                ; preds = %str_overflow_abort116, %concat.sum.len110
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum113)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf118, ptr align 1 %concat.lhs94, i64 %concat.lhs85, i1 false)
  %concat.mid119 = getelementptr i8, ptr %concat.buf118, i64 %concat.lhs85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid119, ptr align 1 %concat.rhs106, i64 %concat.rhs97, i1 false)
  %concat.nul120 = getelementptr i8, ptr %concat.buf118, i64 %sum108
  store i8 0, ptr %concat.nul120, align 1
  %arena.cur121 = call ptr @dva_arena_current()
  %concat.str122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.build.len.gep123 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  store i64 %sum108, ptr %str.build.len.gep123, align 8
  %str.build.data.gep124 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  store ptr %concat.buf118, ptr %str.build.data.gep124, align 8
  %m.cap125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 1
  %m.cap126 = load i64, ptr %m.cap125, align 8
  %m.keys127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 2
  %m.keys128 = load ptr, ptr %m.keys127, align 8
  %m.states129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 4
  %m.states130 = load ptr, ptr %m.states129, align 8
  %mk.data131 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  %mk.data132 = load ptr, ptr %mk.data131, align 8
  %mk.len133 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  %mk.len134 = load i64, ptr %mk.len133, align 8
  %mk.len135 = and i64 %mk.len134, 281474976710655
  %str.tag136 = lshr i64 %mk.len134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

str_overflow_abort116:                            ; preds = %concat.sum.len110
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len115

str_gen_check138:                                 ; preds = %concat.tot.len115
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %concat.tot.len115
  %hash.str143 = call i64 @dva_hash_string(ptr %mk.data132, i64 %mk.len135)
  %m.capm1144 = sub i64 %m.cap126, 1
  %m.idx0145 = and i64 %hash.str143, %m.capm1144
  br label %m.mem.loop146

str_stale140:                                     ; preds = %str_gen_check138
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

m.mem.loop146:                                    ; preds = %m.mem.next149, %str_ok139
  %m.mem.idx152 = phi i64 [ %m.idx0145, %str_ok139 ], [ %m.mem.idx.next195, %m.mem.next149 ]
  %m.mem.probe153 = phi i64 [ 0, %str_ok139 ], [ %m.mem.probe.next196, %m.mem.next149 ]
  %m.mem.reached154 = icmp eq i64 %m.mem.probe153, %m.cap126
  %m.mem.state.gep155 = getelementptr i8, ptr %m.states130, i64 %m.mem.idx152
  %m.mem.state156 = load i8, ptr %m.mem.state.gep155, align 1
  %m.mem.is.empty157 = icmp eq i8 %m.mem.state156, 0
  %m.mem.stop158 = or i1 %m.mem.is.empty157, %m.mem.reached154
  br i1 %m.mem.stop158, label %m.mem.miss150, label %m.mem.probe147

m.mem.probe147:                                   ; preds = %m.mem.loop146
  %m.mem.is.tomb159 = icmp eq i8 %m.mem.state156, 2
  br i1 %m.mem.is.tomb159, label %m.mem.next149, label %m.mem.found148

m.mem.found148:                                   ; preds = %m.mem.probe147
  %m.mem.key.slot160 = getelementptr ptr, ptr %m.keys128, i64 %m.mem.idx152
  %mk.stored161 = load ptr, ptr %m.mem.key.slot160, align 8
  %mk.slen162 = getelementptr inbounds { i64, ptr }, ptr %mk.stored161, i32 0, i32 0
  %mk.slen163 = load i64, ptr %mk.slen162, align 8
  %mk.slen164 = and i64 %mk.slen163, 281474976710655
  %str.tag165 = lshr i64 %mk.slen163, 48
  %str.immortal166 = icmp eq i64 %str.tag165, 0
  br i1 %str.immortal166, label %str_ok168, label %str_gen_check167

m.mem.next149:                                    ; preds = %mk.eq.merge185, %m.mem.probe147
  %m.mem.idx.add194 = add i64 %m.mem.idx152, 1
  %m.mem.idx.next195 = and i64 %m.mem.idx.add194, %m.capm1144
  %m.mem.probe.next196 = add i64 %m.mem.probe153, 1
  br label %m.mem.loop146

m.mem.miss150:                                    ; preds = %m.mem.loop146
  br label %m.mem.done151

m.mem.done151:                                    ; preds = %m.mem.miss150, %m.mem.hit193
  %m.mem.res197 = phi i1 [ true, %m.mem.hit193 ], [ false, %m.mem.miss150 ]
  br i1 %m.mem.res197, label %choice.then198, label %choice.else199

str_gen_check167:                                 ; preds = %m.mem.found148
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid171 = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag165)
  br i1 %tag.valid171, label %str_ok168, label %str_stale169

str_ok168:                                        ; preds = %str_stale169, %str_gen_check167, %m.mem.found148
  %mk.nlen172 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  %mk.nlen173 = load i64, ptr %mk.nlen172, align 8
  %mk.nlen174 = and i64 %mk.nlen173, 281474976710655
  %str.tag175 = lshr i64 %mk.nlen173, 48
  %str.immortal176 = icmp eq i64 %str.tag175, 0
  br i1 %str.immortal176, label %str_ok178, label %str_gen_check177

str_stale169:                                     ; preds = %str_gen_check167
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok168

str_gen_check177:                                 ; preds = %str_ok168
  %arena.cur180 = call ptr @dva_arena_current()
  %tag.valid181 = call i1 @dva_arena_validate_tag(ptr %arena.cur180, i64 %str.tag175)
  br i1 %tag.valid181, label %str_ok178, label %str_stale179

str_ok178:                                        ; preds = %str_stale179, %str_gen_check177, %str_ok168
  %mk.lenseq182 = icmp eq i64 %mk.slen164, %mk.nlen174
  br i1 %mk.lenseq182, label %mk.eq.then183, label %mk.eq.else184

str_stale179:                                     ; preds = %str_gen_check177
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok178

mk.eq.then183:                                    ; preds = %str_ok178
  %mk.sdata186 = getelementptr inbounds { i64, ptr }, ptr %mk.stored161, i32 0, i32 1
  %mk.sdata187 = load ptr, ptr %mk.sdata186, align 8
  %mk.ndata188 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  %mk.ndata189 = load ptr, ptr %mk.ndata188, align 8
  %mk.memcmp190 = call i32 @memcmp(ptr %mk.sdata187, ptr %mk.ndata189, i64 %mk.nlen174)
  %mk.cmpeq191 = icmp eq i32 %mk.memcmp190, 0
  br label %mk.eq.merge185

mk.eq.else184:                                    ; preds = %str_ok178
  br label %mk.eq.merge185

mk.eq.merge185:                                   ; preds = %mk.eq.else184, %mk.eq.then183
  %mk.eq192 = phi i1 [ %mk.cmpeq191, %mk.eq.then183 ], [ false, %mk.eq.else184 ]
  br i1 %mk.eq192, label %m.mem.hit193, label %m.mem.next149

m.mem.hit193:                                     ; preds = %mk.eq.merge185
  br label %m.mem.done151

choice.then198:                                   ; preds = %m.mem.done151
  %var.load201 = load ptr, ptr %var.mod, align 8
  %concat.lhs202 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 0
  %concat.lhs203 = load i64, ptr %concat.lhs202, align 8
  %concat.lhs204 = and i64 %concat.lhs203, 281474976710655
  %str.tag205 = lshr i64 %concat.lhs203, 48
  %str.immortal206 = icmp eq i64 %str.tag205, 0
  br i1 %str.immortal206, label %str_ok208, label %str_gen_check207

choice.else199:                                   ; preds = %m.mem.done151
  %var.load285 = load ptr, ptr %var.defs, align 8
  %var.load286 = load ptr, ptr %var.mod, align 8
  %concat.lhs287 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 0
  %concat.lhs288 = load i64, ptr %concat.lhs287, align 8
  %concat.lhs289 = and i64 %concat.lhs288, 281474976710655
  %str.tag290 = lshr i64 %concat.lhs288, 48
  %str.immortal291 = icmp eq i64 %str.tag290, 0
  br i1 %str.immortal291, label %str_ok293, label %str_gen_check292

choice.exit200:                                   ; preds = %choice.exit445, %concat.tot.len275
  %choice.res530 = phi ptr [ %concat.str282, %concat.tot.len275 ], [ %choice.res, %choice.exit445 ]
  br label %choice.exit52

str_gen_check207:                                 ; preds = %choice.then198
  %arena.cur210 = call ptr @dva_arena_current()
  %tag.valid211 = call i1 @dva_arena_validate_tag(ptr %arena.cur210, i64 %str.tag205)
  br i1 %tag.valid211, label %str_ok208, label %str_stale209

str_ok208:                                        ; preds = %str_stale209, %str_gen_check207, %choice.then198
  %concat.lhs212 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 1
  %concat.lhs213 = load ptr, ptr %concat.lhs212, align 8
  %concat.rhs214 = load i64, ptr @str.5.struct, align 8
  %concat.rhs215 = and i64 %concat.rhs214, 281474976710655
  %str.tag216 = lshr i64 %concat.rhs214, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

str_stale209:                                     ; preds = %str_gen_check207
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok208

str_gen_check218:                                 ; preds = %str_ok208
  %arena.cur221 = call ptr @dva_arena_current()
  %tag.valid222 = call i1 @dva_arena_validate_tag(ptr %arena.cur221, i64 %str.tag216)
  br i1 %tag.valid222, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %str_ok208
  %concat.rhs223 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs204, i64 %concat.rhs215)
  %sum225 = extractvalue { i64, i1 } %concat.sum.len224, 0
  %ovf226 = extractvalue { i64, i1 } %concat.sum.len224, 1
  br i1 %ovf226, label %str_overflow_abort228, label %concat.sum.len227

str_stale220:                                     ; preds = %str_gen_check218
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

concat.sum.len227:                                ; preds = %str_overflow_abort228, %str_ok219
  %concat.tot.len229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum225, i64 1)
  %sum230 = extractvalue { i64, i1 } %concat.tot.len229, 0
  %ovf231 = extractvalue { i64, i1 } %concat.tot.len229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %concat.tot.len232

str_overflow_abort228:                            ; preds = %str_ok219
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len227

concat.tot.len232:                                ; preds = %str_overflow_abort233, %concat.sum.len227
  %arena.cur234 = call ptr @dva_arena_current()
  %concat.buf235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 %sum230)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf235, ptr align 1 %concat.lhs213, i64 %concat.lhs204, i1 false)
  %concat.mid236 = getelementptr i8, ptr %concat.buf235, i64 %concat.lhs204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid236, ptr align 1 %concat.rhs223, i64 %concat.rhs215, i1 false)
  %concat.nul237 = getelementptr i8, ptr %concat.buf235, i64 %sum225
  store i8 0, ptr %concat.nul237, align 1
  %arena.cur238 = call ptr @dva_arena_current()
  %concat.str239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 16)
  %str.build.len.gep240 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 0
  store i64 %sum225, ptr %str.build.len.gep240, align 8
  %str.build.data.gep241 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 1
  store ptr %concat.buf235, ptr %str.build.data.gep241, align 8
  %var.load242 = load ptr, ptr %var.ref, align 8
  %concat.lhs243 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 0
  %concat.lhs244 = load i64, ptr %concat.lhs243, align 8
  %concat.lhs245 = and i64 %concat.lhs244, 281474976710655
  %str.tag246 = lshr i64 %concat.lhs244, 48
  %str.immortal247 = icmp eq i64 %str.tag246, 0
  br i1 %str.immortal247, label %str_ok249, label %str_gen_check248

str_overflow_abort233:                            ; preds = %concat.sum.len227
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len232

str_gen_check248:                                 ; preds = %concat.tot.len232
  %arena.cur251 = call ptr @dva_arena_current()
  %tag.valid252 = call i1 @dva_arena_validate_tag(ptr %arena.cur251, i64 %str.tag246)
  br i1 %tag.valid252, label %str_ok249, label %str_stale250

str_ok249:                                        ; preds = %str_stale250, %str_gen_check248, %concat.tot.len232
  %concat.lhs253 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 1
  %concat.lhs254 = load ptr, ptr %concat.lhs253, align 8
  %concat.rhs255 = getelementptr inbounds { i64, ptr }, ptr %var.load242, i32 0, i32 0
  %concat.rhs256 = load i64, ptr %concat.rhs255, align 8
  %concat.rhs257 = and i64 %concat.rhs256, 281474976710655
  %str.tag258 = lshr i64 %concat.rhs256, 48
  %str.immortal259 = icmp eq i64 %str.tag258, 0
  br i1 %str.immortal259, label %str_ok261, label %str_gen_check260

str_stale250:                                     ; preds = %str_gen_check248
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok249

str_gen_check260:                                 ; preds = %str_ok249
  %arena.cur263 = call ptr @dva_arena_current()
  %tag.valid264 = call i1 @dva_arena_validate_tag(ptr %arena.cur263, i64 %str.tag258)
  br i1 %tag.valid264, label %str_ok261, label %str_stale262

str_ok261:                                        ; preds = %str_stale262, %str_gen_check260, %str_ok249
  %concat.rhs265 = getelementptr inbounds { i64, ptr }, ptr %var.load242, i32 0, i32 1
  %concat.rhs266 = load ptr, ptr %concat.rhs265, align 8
  %concat.sum.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs245, i64 %concat.rhs257)
  %sum268 = extractvalue { i64, i1 } %concat.sum.len267, 0
  %ovf269 = extractvalue { i64, i1 } %concat.sum.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %concat.sum.len270

str_stale262:                                     ; preds = %str_gen_check260
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok261

concat.sum.len270:                                ; preds = %str_overflow_abort271, %str_ok261
  %concat.tot.len272 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum268, i64 1)
  %sum273 = extractvalue { i64, i1 } %concat.tot.len272, 0
  %ovf274 = extractvalue { i64, i1 } %concat.tot.len272, 1
  br i1 %ovf274, label %str_overflow_abort276, label %concat.tot.len275

str_overflow_abort271:                            ; preds = %str_ok261
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len270

concat.tot.len275:                                ; preds = %str_overflow_abort276, %concat.sum.len270
  %arena.cur277 = call ptr @dva_arena_current()
  %concat.buf278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 %sum273)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf278, ptr align 1 %concat.lhs254, i64 %concat.lhs245, i1 false)
  %concat.mid279 = getelementptr i8, ptr %concat.buf278, i64 %concat.lhs245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid279, ptr align 1 %concat.rhs266, i64 %concat.rhs257, i1 false)
  %concat.nul280 = getelementptr i8, ptr %concat.buf278, i64 %sum268
  store i8 0, ptr %concat.nul280, align 1
  %arena.cur281 = call ptr @dva_arena_current()
  %concat.str282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 16)
  %str.build.len.gep283 = getelementptr inbounds { i64, ptr }, ptr %concat.str282, i32 0, i32 0
  store i64 %sum268, ptr %str.build.len.gep283, align 8
  %str.build.data.gep284 = getelementptr inbounds { i64, ptr }, ptr %concat.str282, i32 0, i32 1
  store ptr %concat.buf278, ptr %str.build.data.gep284, align 8
  br label %choice.exit200

str_overflow_abort276:                            ; preds = %concat.sum.len270
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len275

str_gen_check292:                                 ; preds = %choice.else199
  %arena.cur295 = call ptr @dva_arena_current()
  %tag.valid296 = call i1 @dva_arena_validate_tag(ptr %arena.cur295, i64 %str.tag290)
  br i1 %tag.valid296, label %str_ok293, label %str_stale294

str_ok293:                                        ; preds = %str_stale294, %str_gen_check292, %choice.else199
  %concat.lhs297 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 1
  %concat.lhs298 = load ptr, ptr %concat.lhs297, align 8
  %concat.rhs299 = load i64, ptr @str.6.struct, align 8
  %concat.rhs300 = and i64 %concat.rhs299, 281474976710655
  %str.tag301 = lshr i64 %concat.rhs299, 48
  %str.immortal302 = icmp eq i64 %str.tag301, 0
  br i1 %str.immortal302, label %str_ok304, label %str_gen_check303

str_stale294:                                     ; preds = %str_gen_check292
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok293

str_gen_check303:                                 ; preds = %str_ok293
  %arena.cur306 = call ptr @dva_arena_current()
  %tag.valid307 = call i1 @dva_arena_validate_tag(ptr %arena.cur306, i64 %str.tag301)
  br i1 %tag.valid307, label %str_ok304, label %str_stale305

str_ok304:                                        ; preds = %str_stale305, %str_gen_check303, %str_ok293
  %concat.rhs308 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs289, i64 %concat.rhs300)
  %sum310 = extractvalue { i64, i1 } %concat.sum.len309, 0
  %ovf311 = extractvalue { i64, i1 } %concat.sum.len309, 1
  br i1 %ovf311, label %str_overflow_abort313, label %concat.sum.len312

str_stale305:                                     ; preds = %str_gen_check303
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok304

concat.sum.len312:                                ; preds = %str_overflow_abort313, %str_ok304
  %concat.tot.len314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum310, i64 1)
  %sum315 = extractvalue { i64, i1 } %concat.tot.len314, 0
  %ovf316 = extractvalue { i64, i1 } %concat.tot.len314, 1
  br i1 %ovf316, label %str_overflow_abort318, label %concat.tot.len317

str_overflow_abort313:                            ; preds = %str_ok304
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len312

concat.tot.len317:                                ; preds = %str_overflow_abort318, %concat.sum.len312
  %arena.cur319 = call ptr @dva_arena_current()
  %concat.buf320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum315)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf320, ptr align 1 %concat.lhs298, i64 %concat.lhs289, i1 false)
  %concat.mid321 = getelementptr i8, ptr %concat.buf320, i64 %concat.lhs289
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid321, ptr align 1 %concat.rhs308, i64 %concat.rhs300, i1 false)
  %concat.nul322 = getelementptr i8, ptr %concat.buf320, i64 %sum310
  store i8 0, ptr %concat.nul322, align 1
  %arena.cur323 = call ptr @dva_arena_current()
  %concat.str324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 16)
  %str.build.len.gep325 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 0
  store i64 %sum310, ptr %str.build.len.gep325, align 8
  %str.build.data.gep326 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 1
  store ptr %concat.buf320, ptr %str.build.data.gep326, align 8
  %var.load327 = load ptr, ptr %var.ref, align 8
  %concat.lhs328 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 0
  %concat.lhs329 = load i64, ptr %concat.lhs328, align 8
  %concat.lhs330 = and i64 %concat.lhs329, 281474976710655
  %str.tag331 = lshr i64 %concat.lhs329, 48
  %str.immortal332 = icmp eq i64 %str.tag331, 0
  br i1 %str.immortal332, label %str_ok334, label %str_gen_check333

str_overflow_abort318:                            ; preds = %concat.sum.len312
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len317

str_gen_check333:                                 ; preds = %concat.tot.len317
  %arena.cur336 = call ptr @dva_arena_current()
  %tag.valid337 = call i1 @dva_arena_validate_tag(ptr %arena.cur336, i64 %str.tag331)
  br i1 %tag.valid337, label %str_ok334, label %str_stale335

str_ok334:                                        ; preds = %str_stale335, %str_gen_check333, %concat.tot.len317
  %concat.lhs338 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 1
  %concat.lhs339 = load ptr, ptr %concat.lhs338, align 8
  %concat.rhs340 = getelementptr inbounds { i64, ptr }, ptr %var.load327, i32 0, i32 0
  %concat.rhs341 = load i64, ptr %concat.rhs340, align 8
  %concat.rhs342 = and i64 %concat.rhs341, 281474976710655
  %str.tag343 = lshr i64 %concat.rhs341, 48
  %str.immortal344 = icmp eq i64 %str.tag343, 0
  br i1 %str.immortal344, label %str_ok346, label %str_gen_check345

str_stale335:                                     ; preds = %str_gen_check333
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok334

str_gen_check345:                                 ; preds = %str_ok334
  %arena.cur348 = call ptr @dva_arena_current()
  %tag.valid349 = call i1 @dva_arena_validate_tag(ptr %arena.cur348, i64 %str.tag343)
  br i1 %tag.valid349, label %str_ok346, label %str_stale347

str_ok346:                                        ; preds = %str_stale347, %str_gen_check345, %str_ok334
  %concat.rhs350 = getelementptr inbounds { i64, ptr }, ptr %var.load327, i32 0, i32 1
  %concat.rhs351 = load ptr, ptr %concat.rhs350, align 8
  %concat.sum.len352 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs330, i64 %concat.rhs342)
  %sum353 = extractvalue { i64, i1 } %concat.sum.len352, 0
  %ovf354 = extractvalue { i64, i1 } %concat.sum.len352, 1
  br i1 %ovf354, label %str_overflow_abort356, label %concat.sum.len355

str_stale347:                                     ; preds = %str_gen_check345
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok346

concat.sum.len355:                                ; preds = %str_overflow_abort356, %str_ok346
  %concat.tot.len357 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum353, i64 1)
  %sum358 = extractvalue { i64, i1 } %concat.tot.len357, 0
  %ovf359 = extractvalue { i64, i1 } %concat.tot.len357, 1
  br i1 %ovf359, label %str_overflow_abort361, label %concat.tot.len360

str_overflow_abort356:                            ; preds = %str_ok346
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len355

concat.tot.len360:                                ; preds = %str_overflow_abort361, %concat.sum.len355
  %arena.cur362 = call ptr @dva_arena_current()
  %concat.buf363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 %sum358)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf363, ptr align 1 %concat.lhs339, i64 %concat.lhs330, i1 false)
  %concat.mid364 = getelementptr i8, ptr %concat.buf363, i64 %concat.lhs330
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid364, ptr align 1 %concat.rhs351, i64 %concat.rhs342, i1 false)
  %concat.nul365 = getelementptr i8, ptr %concat.buf363, i64 %sum353
  store i8 0, ptr %concat.nul365, align 1
  %arena.cur366 = call ptr @dva_arena_current()
  %concat.str367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 16)
  %str.build.len.gep368 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  store i64 %sum353, ptr %str.build.len.gep368, align 8
  %str.build.data.gep369 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  store ptr %concat.buf363, ptr %str.build.data.gep369, align 8
  %m.cap370 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 1
  %m.cap371 = load i64, ptr %m.cap370, align 8
  %m.keys372 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 2
  %m.keys373 = load ptr, ptr %m.keys372, align 8
  %m.states374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 4
  %m.states375 = load ptr, ptr %m.states374, align 8
  %mk.data376 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  %mk.data377 = load ptr, ptr %mk.data376, align 8
  %mk.len378 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  %mk.len379 = load i64, ptr %mk.len378, align 8
  %mk.len380 = and i64 %mk.len379, 281474976710655
  %str.tag381 = lshr i64 %mk.len379, 48
  %str.immortal382 = icmp eq i64 %str.tag381, 0
  br i1 %str.immortal382, label %str_ok384, label %str_gen_check383

str_overflow_abort361:                            ; preds = %concat.sum.len355
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len360

str_gen_check383:                                 ; preds = %concat.tot.len360
  %arena.cur386 = call ptr @dva_arena_current()
  %tag.valid387 = call i1 @dva_arena_validate_tag(ptr %arena.cur386, i64 %str.tag381)
  br i1 %tag.valid387, label %str_ok384, label %str_stale385

str_ok384:                                        ; preds = %str_stale385, %str_gen_check383, %concat.tot.len360
  %hash.str388 = call i64 @dva_hash_string(ptr %mk.data377, i64 %mk.len380)
  %m.capm1389 = sub i64 %m.cap371, 1
  %m.idx0390 = and i64 %hash.str388, %m.capm1389
  br label %m.mem.loop391

str_stale385:                                     ; preds = %str_gen_check383
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok384

m.mem.loop391:                                    ; preds = %m.mem.next394, %str_ok384
  %m.mem.idx397 = phi i64 [ %m.idx0390, %str_ok384 ], [ %m.mem.idx.next440, %m.mem.next394 ]
  %m.mem.probe398 = phi i64 [ 0, %str_ok384 ], [ %m.mem.probe.next441, %m.mem.next394 ]
  %m.mem.reached399 = icmp eq i64 %m.mem.probe398, %m.cap371
  %m.mem.state.gep400 = getelementptr i8, ptr %m.states375, i64 %m.mem.idx397
  %m.mem.state401 = load i8, ptr %m.mem.state.gep400, align 1
  %m.mem.is.empty402 = icmp eq i8 %m.mem.state401, 0
  %m.mem.stop403 = or i1 %m.mem.is.empty402, %m.mem.reached399
  br i1 %m.mem.stop403, label %m.mem.miss395, label %m.mem.probe392

m.mem.probe392:                                   ; preds = %m.mem.loop391
  %m.mem.is.tomb404 = icmp eq i8 %m.mem.state401, 2
  br i1 %m.mem.is.tomb404, label %m.mem.next394, label %m.mem.found393

m.mem.found393:                                   ; preds = %m.mem.probe392
  %m.mem.key.slot405 = getelementptr ptr, ptr %m.keys373, i64 %m.mem.idx397
  %mk.stored406 = load ptr, ptr %m.mem.key.slot405, align 8
  %mk.slen407 = getelementptr inbounds { i64, ptr }, ptr %mk.stored406, i32 0, i32 0
  %mk.slen408 = load i64, ptr %mk.slen407, align 8
  %mk.slen409 = and i64 %mk.slen408, 281474976710655
  %str.tag410 = lshr i64 %mk.slen408, 48
  %str.immortal411 = icmp eq i64 %str.tag410, 0
  br i1 %str.immortal411, label %str_ok413, label %str_gen_check412

m.mem.next394:                                    ; preds = %mk.eq.merge430, %m.mem.probe392
  %m.mem.idx.add439 = add i64 %m.mem.idx397, 1
  %m.mem.idx.next440 = and i64 %m.mem.idx.add439, %m.capm1389
  %m.mem.probe.next441 = add i64 %m.mem.probe398, 1
  br label %m.mem.loop391

m.mem.miss395:                                    ; preds = %m.mem.loop391
  br label %m.mem.done396

m.mem.done396:                                    ; preds = %m.mem.miss395, %m.mem.hit438
  %m.mem.res442 = phi i1 [ true, %m.mem.hit438 ], [ false, %m.mem.miss395 ]
  br i1 %m.mem.res442, label %choice.then443, label %choice.else444

str_gen_check412:                                 ; preds = %m.mem.found393
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag410)
  br i1 %tag.valid416, label %str_ok413, label %str_stale414

str_ok413:                                        ; preds = %str_stale414, %str_gen_check412, %m.mem.found393
  %mk.nlen417 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  %mk.nlen418 = load i64, ptr %mk.nlen417, align 8
  %mk.nlen419 = and i64 %mk.nlen418, 281474976710655
  %str.tag420 = lshr i64 %mk.nlen418, 48
  %str.immortal421 = icmp eq i64 %str.tag420, 0
  br i1 %str.immortal421, label %str_ok423, label %str_gen_check422

str_stale414:                                     ; preds = %str_gen_check412
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok413

str_gen_check422:                                 ; preds = %str_ok413
  %arena.cur425 = call ptr @dva_arena_current()
  %tag.valid426 = call i1 @dva_arena_validate_tag(ptr %arena.cur425, i64 %str.tag420)
  br i1 %tag.valid426, label %str_ok423, label %str_stale424

str_ok423:                                        ; preds = %str_stale424, %str_gen_check422, %str_ok413
  %mk.lenseq427 = icmp eq i64 %mk.slen409, %mk.nlen419
  br i1 %mk.lenseq427, label %mk.eq.then428, label %mk.eq.else429

str_stale424:                                     ; preds = %str_gen_check422
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok423

mk.eq.then428:                                    ; preds = %str_ok423
  %mk.sdata431 = getelementptr inbounds { i64, ptr }, ptr %mk.stored406, i32 0, i32 1
  %mk.sdata432 = load ptr, ptr %mk.sdata431, align 8
  %mk.ndata433 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  %mk.ndata434 = load ptr, ptr %mk.ndata433, align 8
  %mk.memcmp435 = call i32 @memcmp(ptr %mk.sdata432, ptr %mk.ndata434, i64 %mk.nlen419)
  %mk.cmpeq436 = icmp eq i32 %mk.memcmp435, 0
  br label %mk.eq.merge430

mk.eq.else429:                                    ; preds = %str_ok423
  br label %mk.eq.merge430

mk.eq.merge430:                                   ; preds = %mk.eq.else429, %mk.eq.then428
  %mk.eq437 = phi i1 [ %mk.cmpeq436, %mk.eq.then428 ], [ false, %mk.eq.else429 ]
  br i1 %mk.eq437, label %m.mem.hit438, label %m.mem.next394

m.mem.hit438:                                     ; preds = %mk.eq.merge430
  br label %m.mem.done396

choice.then443:                                   ; preds = %m.mem.done396
  %var.load446 = load ptr, ptr %var.mod, align 8
  %concat.lhs447 = getelementptr inbounds { i64, ptr }, ptr %var.load446, i32 0, i32 0
  %concat.lhs448 = load i64, ptr %concat.lhs447, align 8
  %concat.lhs449 = and i64 %concat.lhs448, 281474976710655
  %str.tag450 = lshr i64 %concat.lhs448, 48
  %str.immortal451 = icmp eq i64 %str.tag450, 0
  br i1 %str.immortal451, label %str_ok453, label %str_gen_check452

choice.else444:                                   ; preds = %m.mem.done396
  br label %choice.exit445

choice.exit445:                                   ; preds = %choice.else444, %concat.tot.len520
  %choice.res = phi ptr [ %concat.str527, %concat.tot.len520 ], [ @str.4.struct, %choice.else444 ]
  br label %choice.exit200

str_gen_check452:                                 ; preds = %choice.then443
  %arena.cur455 = call ptr @dva_arena_current()
  %tag.valid456 = call i1 @dva_arena_validate_tag(ptr %arena.cur455, i64 %str.tag450)
  br i1 %tag.valid456, label %str_ok453, label %str_stale454

str_ok453:                                        ; preds = %str_stale454, %str_gen_check452, %choice.then443
  %concat.lhs457 = getelementptr inbounds { i64, ptr }, ptr %var.load446, i32 0, i32 1
  %concat.lhs458 = load ptr, ptr %concat.lhs457, align 8
  %concat.rhs459 = load i64, ptr @str.6.struct, align 8
  %concat.rhs460 = and i64 %concat.rhs459, 281474976710655
  %str.tag461 = lshr i64 %concat.rhs459, 48
  %str.immortal462 = icmp eq i64 %str.tag461, 0
  br i1 %str.immortal462, label %str_ok464, label %str_gen_check463

str_stale454:                                     ; preds = %str_gen_check452
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok453

str_gen_check463:                                 ; preds = %str_ok453
  %arena.cur466 = call ptr @dva_arena_current()
  %tag.valid467 = call i1 @dva_arena_validate_tag(ptr %arena.cur466, i64 %str.tag461)
  br i1 %tag.valid467, label %str_ok464, label %str_stale465

str_ok464:                                        ; preds = %str_stale465, %str_gen_check463, %str_ok453
  %concat.rhs468 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs449, i64 %concat.rhs460)
  %sum470 = extractvalue { i64, i1 } %concat.sum.len469, 0
  %ovf471 = extractvalue { i64, i1 } %concat.sum.len469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %concat.sum.len472

str_stale465:                                     ; preds = %str_gen_check463
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok464

concat.sum.len472:                                ; preds = %str_overflow_abort473, %str_ok464
  %concat.tot.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum470, i64 1)
  %sum475 = extractvalue { i64, i1 } %concat.tot.len474, 0
  %ovf476 = extractvalue { i64, i1 } %concat.tot.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %concat.tot.len477

str_overflow_abort473:                            ; preds = %str_ok464
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len472

concat.tot.len477:                                ; preds = %str_overflow_abort478, %concat.sum.len472
  %arena.cur479 = call ptr @dva_arena_current()
  %concat.buf480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 %sum475)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf480, ptr align 1 %concat.lhs458, i64 %concat.lhs449, i1 false)
  %concat.mid481 = getelementptr i8, ptr %concat.buf480, i64 %concat.lhs449
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid481, ptr align 1 %concat.rhs468, i64 %concat.rhs460, i1 false)
  %concat.nul482 = getelementptr i8, ptr %concat.buf480, i64 %sum470
  store i8 0, ptr %concat.nul482, align 1
  %arena.cur483 = call ptr @dva_arena_current()
  %concat.str484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 16)
  %str.build.len.gep485 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 0
  store i64 %sum470, ptr %str.build.len.gep485, align 8
  %str.build.data.gep486 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 1
  store ptr %concat.buf480, ptr %str.build.data.gep486, align 8
  %var.load487 = load ptr, ptr %var.ref, align 8
  %concat.lhs488 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 0
  %concat.lhs489 = load i64, ptr %concat.lhs488, align 8
  %concat.lhs490 = and i64 %concat.lhs489, 281474976710655
  %str.tag491 = lshr i64 %concat.lhs489, 48
  %str.immortal492 = icmp eq i64 %str.tag491, 0
  br i1 %str.immortal492, label %str_ok494, label %str_gen_check493

str_overflow_abort478:                            ; preds = %concat.sum.len472
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len477

str_gen_check493:                                 ; preds = %concat.tot.len477
  %arena.cur496 = call ptr @dva_arena_current()
  %tag.valid497 = call i1 @dva_arena_validate_tag(ptr %arena.cur496, i64 %str.tag491)
  br i1 %tag.valid497, label %str_ok494, label %str_stale495

str_ok494:                                        ; preds = %str_stale495, %str_gen_check493, %concat.tot.len477
  %concat.lhs498 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 1
  %concat.lhs499 = load ptr, ptr %concat.lhs498, align 8
  %concat.rhs500 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 0
  %concat.rhs501 = load i64, ptr %concat.rhs500, align 8
  %concat.rhs502 = and i64 %concat.rhs501, 281474976710655
  %str.tag503 = lshr i64 %concat.rhs501, 48
  %str.immortal504 = icmp eq i64 %str.tag503, 0
  br i1 %str.immortal504, label %str_ok506, label %str_gen_check505

str_stale495:                                     ; preds = %str_gen_check493
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok494

str_gen_check505:                                 ; preds = %str_ok494
  %arena.cur508 = call ptr @dva_arena_current()
  %tag.valid509 = call i1 @dva_arena_validate_tag(ptr %arena.cur508, i64 %str.tag503)
  br i1 %tag.valid509, label %str_ok506, label %str_stale507

str_ok506:                                        ; preds = %str_stale507, %str_gen_check505, %str_ok494
  %concat.rhs510 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 1
  %concat.rhs511 = load ptr, ptr %concat.rhs510, align 8
  %concat.sum.len512 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs490, i64 %concat.rhs502)
  %sum513 = extractvalue { i64, i1 } %concat.sum.len512, 0
  %ovf514 = extractvalue { i64, i1 } %concat.sum.len512, 1
  br i1 %ovf514, label %str_overflow_abort516, label %concat.sum.len515

str_stale507:                                     ; preds = %str_gen_check505
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok506

concat.sum.len515:                                ; preds = %str_overflow_abort516, %str_ok506
  %concat.tot.len517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum513, i64 1)
  %sum518 = extractvalue { i64, i1 } %concat.tot.len517, 0
  %ovf519 = extractvalue { i64, i1 } %concat.tot.len517, 1
  br i1 %ovf519, label %str_overflow_abort521, label %concat.tot.len520

str_overflow_abort516:                            ; preds = %str_ok506
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len515

concat.tot.len520:                                ; preds = %str_overflow_abort521, %concat.sum.len515
  %arena.cur522 = call ptr @dva_arena_current()
  %concat.buf523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %sum518)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf523, ptr align 1 %concat.lhs499, i64 %concat.lhs490, i1 false)
  %concat.mid524 = getelementptr i8, ptr %concat.buf523, i64 %concat.lhs490
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid524, ptr align 1 %concat.rhs511, i64 %concat.rhs502, i1 false)
  %concat.nul525 = getelementptr i8, ptr %concat.buf523, i64 %sum513
  store i8 0, ptr %concat.nul525, align 1
  %arena.cur526 = call ptr @dva_arena_current()
  %concat.str527 = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 16)
  %str.build.len.gep528 = getelementptr inbounds { i64, ptr }, ptr %concat.str527, i32 0, i32 0
  store i64 %sum513, ptr %str.build.len.gep528, align 8
  %str.build.data.gep529 = getelementptr inbounds { i64, ptr }, ptr %concat.str527, i32 0, i32 1
  store ptr %concat.buf523, ptr %str.build.data.gep529, align 8
  br label %choice.exit445

str_overflow_abort521:                            ; preds = %concat.sum.len515
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len520
}

define void @"dep_graph::collect_expr_refs"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.ud = alloca ptr, align 8
  %var._2115 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._2078 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._2041 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._2001 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1964 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1927 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1892 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1857 = alloca ptr, align 8
  %var.varg = alloca ptr, align 8
  %var._1813 = alloca ptr, align 8
  %var._1810 = alloca ptr, align 8
  %var._i1758 = alloca i64, align 8
  %var.i1754 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.v1748 = alloca ptr, align 8
  %var._1747 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1710 = alloca ptr, align 8
  %var.v1607 = alloca ptr, align 8
  %var._1606 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1555 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1489 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1423 = alloca ptr, align 8
  %var.a1357 = alloca ptr, align 8
  %var._1356 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1290 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1224 = alloca ptr, align 8
  %var.fld = alloca ptr, align 8
  %var._1173 = alloca ptr, align 8
  %var._1170 = alloca ptr, align 8
  %var._i1118 = alloca i64, align 8
  %var.i1114 = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._1108 = alloca ptr, align 8
  %var.cv = alloca ptr, align 8
  %var._1062 = alloca ptr, align 8
  %var._1059 = alloca ptr, align 8
  %var.k = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var.br = alloca ptr, align 8
  %var._806 = alloca ptr, align 8
  %var._803 = alloca ptr, align 8
  %var._i751 = alloca i64, align 8
  %var.i747 = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._712 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._580 = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var._563 = alloca ptr, align 8
  %var._560 = alloca ptr, align 8
  %var._i508 = alloca i64, align 8
  %var.i504 = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._484 = alloca ptr, align 8
  %var._i383 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._360 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._323 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._257 = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._218 = alloca ptr, align 8
  %var._215 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.refs = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.locals, align 8
  store ptr %2, ptr %var.refs, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next2109, %a.after2136, %a.after2099, %a.after2062, %a.after2025, %a.after1985, %a.after1948, %a.after1911, %a.after1876, %loop.exit.15, %a.after1731, %choice.exit1594, %a.after1539, %a.after1473, %a.after1407, %a.after1340, %a.after1274, %loop.exit.13, %loop.exit.10, %loop.exit.9, %a.after468, %a.after344, %a.after307, %loop.exit.7, %choice.exit34
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %entry
  %tag.gep54 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id55 = load i64, ptr %tag.gep54, align 8
  %tag.match56 = icmp eq i64 %tag.id55, 9
  br i1 %tag.match56, label %choice.case52, label %choice.next53

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %str.tag5 = lshr i64 %eq.rhs.len, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale9:                                       ; preds = %str_gen_check7
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.3.then, label %and.3.else

and.3.then:                                       ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.3.else:                                       ; preds = %str.eq.merge
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %a.after
  %and.3.phi = phi i1 [ %nottmp, %a.after ], [ %str.neq, %and.3.else ]
  br i1 %and.3.phi, label %and.4.then, label %and.4.else

a.create:                                         ; preds = %and.3.then
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create15, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.3.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load17 = load ptr, ptr %var.v, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %a.load2, ptr %var.load17)
  %nottmp = xor i1 %call.res, true
  br label %and.3.exit

and.4.then:                                       ; preds = %and.3.exit
  %var.load18 = load ptr, ptr %var.refs, align 8
  %a.load19 = load ptr, ptr %var.refs, align 8
  %a.null20 = icmp eq ptr %a.load19, null
  br i1 %a.null20, label %a.create21, label %a.after22

and.4.else:                                       ; preds = %and.3.exit
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %a.after22
  %and.4.phi = phi i1 [ %nottmp33, %a.after22 ], [ %and.3.phi, %and.4.else ]
  br i1 %and.4.phi, label %choice.then, label %choice.exit34

a.create21:                                       ; preds = %and.4.then
  %arena.cur23 = call ptr @dva_arena_current()
  %a.create24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = call ptr @dva_arena_current()
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  %a.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 0
  store i64 0, ptr %a.len.gep27, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  store ptr %a.create24, ptr %var.refs, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %and.4.then
  %a.load230 = load ptr, ptr %var.refs, align 8
  %var.load31 = load ptr, ptr %var.v, align 8
  %call.res32 = call i1 @"dep_graph::has_name"(ptr %a.load230, ptr %var.load31)
  %nottmp33 = xor i1 %call.res32, true
  br label %and.4.exit

choice.then:                                      ; preds = %and.4.exit
  %var.load35 = load ptr, ptr %var.v, align 8
  %a.load36 = load ptr, ptr %var.refs, align 8
  %a.null37 = icmp eq ptr %a.load36, null
  br i1 %a.null37, label %a.create38, label %a.after39

choice.exit34:                                    ; preds = %a.store, %and.4.exit
  br label %choice.exit

a.create38:                                       ; preds = %choice.then
  %arena.cur40 = call ptr @dva_arena_current()
  %a.create41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = call ptr @dva_arena_current()
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  %a.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 0
  store i64 0, ptr %a.len.gep44, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  store ptr %a.create41, ptr %var.refs, align 8
  br label %a.after39

a.after39:                                        ; preds = %a.create38, %choice.then
  %a.load247 = load ptr, ptr %var.refs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after39
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  %a.len48 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 2
  %a.cap49 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len48, %a.cap49
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load247)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 1
  %a.cur.data50 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  %a.cur.len51 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data50, i64 %a.cur.len51
  %a.elem.p2i = ptrtoint ptr %var.load35 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len51, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit34

choice.case52:                                    ; preds = %choice.next
  %pay.gep57 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr58 = load ptr, ptr %pay.gep57, align 8
  store ptr %payload.ptr58, ptr %var._59, align 8
  store ptr %payload.ptr58, ptr %var.c, align 8
  %var.load60 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len61 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len62 = load i64, ptr %eq.lhs.len61, align 8
  %eq.lhs.len63 = and i64 %eq.lhs.len62, 281474976710655
  %str.tag64 = lshr i64 %eq.lhs.len62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

choice.next53:                                    ; preds = %choice.next
  %tag.gep252 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id253 = load i64, ptr %tag.gep252, align 8
  %tag.match254 = icmp eq i64 %tag.id253, 5
  br i1 %tag.match254, label %choice.case250, label %choice.next251

str_gen_check66:                                  ; preds = %choice.case52
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %choice.case52
  %eq.rhs.len71 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %str.tag73 = lshr i64 %eq.rhs.len71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

str_stale68:                                      ; preds = %str_gen_check66
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str_gen_check75:                                  ; preds = %str_ok67
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %str_ok67
  %eq.len80 = icmp eq i64 %eq.lhs.len63, %eq.rhs.len72
  br i1 %eq.len80, label %str.eq.then81, label %str.eq.else82

str_stale77:                                      ; preds = %str_gen_check75
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

str.eq.then81:                                    ; preds = %str_ok76
  %eq.lhs.data84 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data85 = load ptr, ptr %eq.lhs.data84, align 8
  %eq.rhs.data86 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp87 = call i32 @memcmp(ptr %eq.lhs.data85, ptr %eq.rhs.data86, i64 %eq.lhs.len63)
  %eq.cmp.zero88 = icmp eq i32 %eq.memcmp87, 0
  br label %str.eq.merge83

str.eq.else82:                                    ; preds = %str_ok76
  br label %str.eq.merge83

str.eq.merge83:                                   ; preds = %str.eq.else82, %str.eq.then81
  %str.eq.result89 = phi i1 [ %eq.cmp.zero88, %str.eq.then81 ], [ false, %str.eq.else82 ]
  %str.neq90 = xor i1 %str.eq.result89, true
  br i1 %str.neq90, label %and.5.then, label %and.5.else

and.5.then:                                       ; preds = %str.eq.merge83
  %var.load91 = load ptr, ptr %var.locals, align 8
  %a.load92 = load ptr, ptr %var.locals, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

and.5.else:                                       ; preds = %str.eq.merge83
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %a.after95
  %and.5.phi = phi i1 [ %nottmp108, %a.after95 ], [ %str.neq90, %and.5.else ]
  br i1 %and.5.phi, label %and.6.then, label %and.6.else

a.create94:                                       ; preds = %and.5.then
  %arena.cur96 = call ptr @dva_arena_current()
  %a.create97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 24)
  %arena.cur98 = call ptr @dva_arena_current()
  %a.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 128)
  %a.len.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 0
  store i64 0, ptr %a.len.gep100, align 8
  %a.data.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 1
  store ptr %a.buf99, ptr %a.data.gep101, align 8
  %a.cap.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 2
  store i64 16, ptr %a.cap.gep102, align 8
  store ptr %a.create97, ptr %var.locals, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %and.5.then
  %a.load2103 = load ptr, ptr %var.locals, align 8
  %var.load104 = load ptr, ptr %var.c, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load104, i32 0, i32 0
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %call.res107 = call i1 @"dep_graph::has_name"(ptr %a.load2103, ptr %fld.load106)
  %nottmp108 = xor i1 %call.res107, true
  br label %and.5.exit

and.6.then:                                       ; preds = %and.5.exit
  %var.load109 = load ptr, ptr %var.refs, align 8
  %a.load110 = load ptr, ptr %var.refs, align 8
  %a.null111 = icmp eq ptr %a.load110, null
  br i1 %a.null111, label %a.create112, label %a.after113

and.6.else:                                       ; preds = %and.5.exit
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %a.after113
  %and.6.phi = phi i1 [ %nottmp126, %a.after113 ], [ %and.5.phi, %and.6.else ]
  br i1 %and.6.phi, label %choice.then127, label %choice.exit128

a.create112:                                      ; preds = %and.6.then
  %arena.cur114 = call ptr @dva_arena_current()
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = call ptr @dva_arena_current()
  %a.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 128)
  %a.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 0
  store i64 0, ptr %a.len.gep118, align 8
  %a.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 1
  store ptr %a.buf117, ptr %a.data.gep119, align 8
  %a.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 2
  store i64 16, ptr %a.cap.gep120, align 8
  store ptr %a.create115, ptr %var.refs, align 8
  br label %a.after113

a.after113:                                       ; preds = %a.create112, %and.6.then
  %a.load2121 = load ptr, ptr %var.refs, align 8
  %var.load122 = load ptr, ptr %var.c, align 8
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load122, i32 0, i32 0
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %call.res125 = call i1 @"dep_graph::has_name"(ptr %a.load2121, ptr %fld.load124)
  %nottmp126 = xor i1 %call.res125, true
  br label %and.6.exit

choice.then127:                                   ; preds = %and.6.exit
  %var.load129 = load ptr, ptr %var.c, align 8
  %fld.gep130 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load129, i32 0, i32 0
  %fld.load131 = load ptr, ptr %fld.gep130, align 8
  %a.load132 = load ptr, ptr %var.refs, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.exit128:                                   ; preds = %a.store146, %and.6.exit
  %var.load160 = load ptr, ptr %var.c, align 8
  %fld.gep161 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load160, i32 0, i32 1
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %var.load163 = load ptr, ptr %var.locals, align 8
  %a.load164 = load ptr, ptr %var.locals, align 8
  %a.null165 = icmp eq ptr %a.load164, null
  br i1 %a.null165, label %a.create166, label %a.after167

a.create134:                                      ; preds = %choice.then127
  %arena.cur136 = call ptr @dva_arena_current()
  %a.create137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = call ptr @dva_arena_current()
  %a.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 128)
  %a.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 0
  store i64 0, ptr %a.len.gep140, align 8
  %a.data.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 1
  store ptr %a.buf139, ptr %a.data.gep141, align 8
  %a.cap.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 2
  store i64 16, ptr %a.cap.gep142, align 8
  store ptr %a.create137, ptr %var.refs, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.then127
  %a.load2143 = load ptr, ptr %var.refs, align 8
  br label %a.check144

a.check144:                                       ; preds = %a.after135
  %a.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.len148 = load i64, ptr %a.len147, align 8
  %a.cap149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 2
  %a.cap150 = load i64, ptr %a.cap149, align 8
  %a.needs.grow151 = icmp eq i64 %a.len148, %a.cap150
  br i1 %a.needs.grow151, label %a.grow145, label %a.store146

a.grow145:                                        ; preds = %a.check144
  call void @dva_array_grow(ptr %a.load2143)
  br label %a.store146

a.store146:                                       ; preds = %a.grow145, %a.check144
  %a.cur.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 1
  %a.cur.data153 = load ptr, ptr %a.cur.data152, align 8
  %a.cur.len154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.cur.len155 = load i64, ptr %a.cur.len154, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.cur.data153, i64 %a.cur.len155
  %a.elem.p2i157 = ptrtoint ptr %fld.load131 to i64
  store i64 %a.elem.p2i157, ptr %a.elem.gep156, align 8
  %a.next.len158 = add i64 %a.cur.len155, 1
  %b.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  store i64 %a.next.len158, ptr %b.len.gep159, align 8
  br label %choice.exit128

a.create166:                                      ; preds = %choice.exit128
  %arena.cur168 = call ptr @dva_arena_current()
  %a.create169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 24)
  %arena.cur170 = call ptr @dva_arena_current()
  %a.buf171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 128)
  %a.len.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 0
  store i64 0, ptr %a.len.gep172, align 8
  %a.data.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 1
  store ptr %a.buf171, ptr %a.data.gep173, align 8
  %a.cap.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 2
  store i64 16, ptr %a.cap.gep174, align 8
  store ptr %a.create169, ptr %var.locals, align 8
  br label %a.after167

a.after167:                                       ; preds = %a.create166, %choice.exit128
  %a.load2175 = load ptr, ptr %var.locals, align 8
  %var.load176 = load ptr, ptr %var.refs, align 8
  %a.load177 = load ptr, ptr %var.refs, align 8
  %a.null178 = icmp eq ptr %a.load177, null
  br i1 %a.null178, label %a.create179, label %a.after180

a.create179:                                      ; preds = %a.after167
  %arena.cur181 = call ptr @dva_arena_current()
  %a.create182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 24)
  %arena.cur183 = call ptr @dva_arena_current()
  %a.buf184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 128)
  %a.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 0
  store i64 0, ptr %a.len.gep185, align 8
  %a.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 1
  store ptr %a.buf184, ptr %a.data.gep186, align 8
  %a.cap.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 2
  store i64 16, ptr %a.cap.gep187, align 8
  store ptr %a.create182, ptr %var.refs, align 8
  br label %a.after180

a.after180:                                       ; preds = %a.create179, %a.after167
  %a.load2188 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load162, ptr %a.load2175, ptr %a.load2188)
  %var.load189 = load ptr, ptr %var.c, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load189, i32 0, i32 2
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %a.len.query192 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %a.after180
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query192
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._59, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load193 = load ptr, ptr %var.c, align 8
  %fld.gep194 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load193, i32 0, i32 2
  %fld.load195 = load ptr, ptr %fld.gep194, align 8
  %var.load196 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load195, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %a.after241
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  br label %choice.exit

a.rd.check:                                       ; preds = %loop.body.7
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load195, i32 0, i32 0
  %a.rd.len197 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load196, 0
  %a.rd.lt = icmp slt i64 %var.load196, %a.rd.len197
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load195, i32 0, i32 1
  %a.rd.data198 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data198, i64 %var.load196
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.7
  %arena.cur199 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 56)
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
  %arena.cur200 = call ptr @dva_arena_current()
  %err.alloc201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 56)
  %err.code.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 0
  store i64 4011, ptr %err.code.gep202, align 8
  %err.msg.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep203, align 8
  %err.file.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep204, align 8
  %err.line.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 3
  store i64 0, ptr %err.line.gep205, align 8
  %err.col.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 4
  store i64 0, ptr %err.col.gep206, align 8
  %err.ctx.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 5
  %err.ctx0.gep208 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep207, i32 0, i32 0
  store i64 %var.load196, ptr %err.ctx0.gep208, align 8
  %err.ctx1.gep209 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep207, i32 0, i32 1
  store i64 %a.rd.len197, ptr %err.ctx1.gep209, align 8
  %err.p2i210 = ptrtoint ptr %err.alloc201 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i210, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag211 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag211, label %choice.then212, label %choice.else

choice.then212:                                   ; preds = %a.rd.done
  %ram.pay214 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay214 to ptr
  store ptr %pay.ptr, ptr %var._215, align 8
  br label %choice.exit213

choice.else:                                      ; preds = %a.rd.done
  %ram.pay216 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr217 = inttoptr i64 %ram.pay216 to ptr
  store ptr %pay.ptr217, ptr %var._218, align 8
  %arena.cur219 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 16)
  %tag.gep220 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep220, align 8
  %pay.gep221 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur222 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep221, align 8
  br label %choice.exit213

choice.exit213:                                   ; preds = %choice.else, %choice.then212
  %choice.res = phi ptr [ %pay.ptr, %choice.then212 ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.arg, align 8
  %var.load223 = load ptr, ptr %var.arg, align 8
  %var.load224 = load ptr, ptr %var.locals, align 8
  %a.load225 = load ptr, ptr %var.locals, align 8
  %a.null226 = icmp eq ptr %a.load225, null
  br i1 %a.null226, label %a.create227, label %a.after228

a.create227:                                      ; preds = %choice.exit213
  %arena.cur229 = call ptr @dva_arena_current()
  %a.create230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 24)
  %arena.cur231 = call ptr @dva_arena_current()
  %a.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 128)
  %a.len.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 0
  store i64 0, ptr %a.len.gep233, align 8
  %a.data.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 1
  store ptr %a.buf232, ptr %a.data.gep234, align 8
  %a.cap.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep235, align 8
  store ptr %a.create230, ptr %var.locals, align 8
  br label %a.after228

a.after228:                                       ; preds = %a.create227, %choice.exit213
  %a.load2236 = load ptr, ptr %var.locals, align 8
  %var.load237 = load ptr, ptr %var.refs, align 8
  %a.load238 = load ptr, ptr %var.refs, align 8
  %a.null239 = icmp eq ptr %a.load238, null
  br i1 %a.null239, label %a.create240, label %a.after241

a.create240:                                      ; preds = %a.after228
  %arena.cur242 = call ptr @dva_arena_current()
  %a.create243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 24)
  %arena.cur244 = call ptr @dva_arena_current()
  %a.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 128)
  %a.len.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 0
  store i64 0, ptr %a.len.gep246, align 8
  %a.data.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 1
  store ptr %a.buf245, ptr %a.data.gep247, align 8
  %a.cap.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep248, align 8
  store ptr %a.create243, ptr %var.refs, align 8
  br label %a.after241

a.after241:                                       ; preds = %a.create240, %a.after228
  %a.load2249 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load223, ptr %a.load2236, ptr %a.load2249)
  br label %loop.latch.7

choice.case250:                                   ; preds = %choice.next53
  %pay.gep255 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr256 = load ptr, ptr %pay.gep255, align 8
  store ptr %payload.ptr256, ptr %var._257, align 8
  store ptr %payload.ptr256, ptr %var.b, align 8
  %var.load258 = load ptr, ptr %var.b, align 8
  %fld.gep259 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load258, i32 0, i32 1
  %fld.load260 = load ptr, ptr %fld.gep259, align 8
  %var.load261 = load ptr, ptr %var.locals, align 8
  %a.load262 = load ptr, ptr %var.locals, align 8
  %a.null263 = icmp eq ptr %a.load262, null
  br i1 %a.null263, label %a.create264, label %a.after265

choice.next251:                                   ; preds = %choice.next53
  %tag.gep318 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id319 = load i64, ptr %tag.gep318, align 8
  %tag.match320 = icmp eq i64 %tag.id319, 24
  br i1 %tag.match320, label %choice.case316, label %choice.next317

a.create264:                                      ; preds = %choice.case250
  %arena.cur266 = call ptr @dva_arena_current()
  %a.create267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 24)
  %arena.cur268 = call ptr @dva_arena_current()
  %a.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 128)
  %a.len.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 0
  store i64 0, ptr %a.len.gep270, align 8
  %a.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 1
  store ptr %a.buf269, ptr %a.data.gep271, align 8
  %a.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep272, align 8
  store ptr %a.create267, ptr %var.locals, align 8
  br label %a.after265

a.after265:                                       ; preds = %a.create264, %choice.case250
  %a.load2273 = load ptr, ptr %var.locals, align 8
  %var.load274 = load ptr, ptr %var.refs, align 8
  %a.load275 = load ptr, ptr %var.refs, align 8
  %a.null276 = icmp eq ptr %a.load275, null
  br i1 %a.null276, label %a.create277, label %a.after278

a.create277:                                      ; preds = %a.after265
  %arena.cur279 = call ptr @dva_arena_current()
  %a.create280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 24)
  %arena.cur281 = call ptr @dva_arena_current()
  %a.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 128)
  %a.len.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 0
  store i64 0, ptr %a.len.gep283, align 8
  %a.data.gep284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 1
  store ptr %a.buf282, ptr %a.data.gep284, align 8
  %a.cap.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 2
  store i64 16, ptr %a.cap.gep285, align 8
  store ptr %a.create280, ptr %var.refs, align 8
  br label %a.after278

a.after278:                                       ; preds = %a.create277, %a.after265
  %a.load2286 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load260, ptr %a.load2273, ptr %a.load2286)
  %var.load287 = load ptr, ptr %var.b, align 8
  %fld.gep288 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load287, i32 0, i32 2
  %fld.load289 = load ptr, ptr %fld.gep288, align 8
  %var.load290 = load ptr, ptr %var.locals, align 8
  %a.load291 = load ptr, ptr %var.locals, align 8
  %a.null292 = icmp eq ptr %a.load291, null
  br i1 %a.null292, label %a.create293, label %a.after294

a.create293:                                      ; preds = %a.after278
  %arena.cur295 = call ptr @dva_arena_current()
  %a.create296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 24)
  %arena.cur297 = call ptr @dva_arena_current()
  %a.buf298 = call ptr @dva_arena_alloc(ptr %arena.cur297, i64 128)
  %a.len.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 0
  store i64 0, ptr %a.len.gep299, align 8
  %a.data.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 1
  store ptr %a.buf298, ptr %a.data.gep300, align 8
  %a.cap.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create296, i32 0, i32 2
  store i64 16, ptr %a.cap.gep301, align 8
  store ptr %a.create296, ptr %var.locals, align 8
  br label %a.after294

a.after294:                                       ; preds = %a.create293, %a.after278
  %a.load2302 = load ptr, ptr %var.locals, align 8
  %var.load303 = load ptr, ptr %var.refs, align 8
  %a.load304 = load ptr, ptr %var.refs, align 8
  %a.null305 = icmp eq ptr %a.load304, null
  br i1 %a.null305, label %a.create306, label %a.after307

a.create306:                                      ; preds = %a.after294
  %arena.cur308 = call ptr @dva_arena_current()
  %a.create309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 24)
  %arena.cur310 = call ptr @dva_arena_current()
  %a.buf311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 128)
  %a.len.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 0
  store i64 0, ptr %a.len.gep312, align 8
  %a.data.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 1
  store ptr %a.buf311, ptr %a.data.gep313, align 8
  %a.cap.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create309, i32 0, i32 2
  store i64 16, ptr %a.cap.gep314, align 8
  store ptr %a.create309, ptr %var.refs, align 8
  br label %a.after307

a.after307:                                       ; preds = %a.create306, %a.after294
  %a.load2315 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load289, ptr %a.load2302, ptr %a.load2315)
  br label %choice.exit

choice.case316:                                   ; preds = %choice.next251
  %pay.gep321 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr322 = load ptr, ptr %pay.gep321, align 8
  store ptr %payload.ptr322, ptr %var._323, align 8
  store ptr %payload.ptr322, ptr %var.u, align 8
  %var.load324 = load ptr, ptr %var.u, align 8
  %fld.gep325 = getelementptr inbounds { ptr, ptr }, ptr %var.load324, i32 0, i32 1
  %fld.load326 = load ptr, ptr %fld.gep325, align 8
  %var.load327 = load ptr, ptr %var.locals, align 8
  %a.load328 = load ptr, ptr %var.locals, align 8
  %a.null329 = icmp eq ptr %a.load328, null
  br i1 %a.null329, label %a.create330, label %a.after331

choice.next317:                                   ; preds = %choice.next251
  %tag.gep355 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id356 = load i64, ptr %tag.gep355, align 8
  %tag.match357 = icmp eq i64 %tag.id356, 14
  br i1 %tag.match357, label %choice.case353, label %choice.next354

a.create330:                                      ; preds = %choice.case316
  %arena.cur332 = call ptr @dva_arena_current()
  %a.create333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 24)
  %arena.cur334 = call ptr @dva_arena_current()
  %a.buf335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 128)
  %a.len.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 0
  store i64 0, ptr %a.len.gep336, align 8
  %a.data.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 1
  store ptr %a.buf335, ptr %a.data.gep337, align 8
  %a.cap.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 2
  store i64 16, ptr %a.cap.gep338, align 8
  store ptr %a.create333, ptr %var.locals, align 8
  br label %a.after331

a.after331:                                       ; preds = %a.create330, %choice.case316
  %a.load2339 = load ptr, ptr %var.locals, align 8
  %var.load340 = load ptr, ptr %var.refs, align 8
  %a.load341 = load ptr, ptr %var.refs, align 8
  %a.null342 = icmp eq ptr %a.load341, null
  br i1 %a.null342, label %a.create343, label %a.after344

a.create343:                                      ; preds = %a.after331
  %arena.cur345 = call ptr @dva_arena_current()
  %a.create346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 24)
  %arena.cur347 = call ptr @dva_arena_current()
  %a.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 128)
  %a.len.gep349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 0
  store i64 0, ptr %a.len.gep349, align 8
  %a.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 1
  store ptr %a.buf348, ptr %a.data.gep350, align 8
  %a.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep351, align 8
  store ptr %a.create346, ptr %var.refs, align 8
  br label %a.after344

a.after344:                                       ; preds = %a.create343, %a.after331
  %a.load2352 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load326, ptr %a.load2339, ptr %a.load2352)
  br label %choice.exit

choice.case353:                                   ; preds = %choice.next317
  %pay.gep358 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr359 = load ptr, ptr %pay.gep358, align 8
  store ptr %payload.ptr359, ptr %var._360, align 8
  store ptr %payload.ptr359, ptr %var.fe, align 8
  %var.load361 = load ptr, ptr %var.locals, align 8
  %a.load362 = load ptr, ptr %var.locals, align 8
  %a.null363 = icmp eq ptr %a.load362, null
  br i1 %a.null363, label %a.create364, label %a.after365

choice.next354:                                   ; preds = %choice.next317
  %tag.gep479 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id480 = load i64, ptr %tag.gep479, align 8
  %tag.match481 = icmp eq i64 %tag.id480, 8
  br i1 %tag.match481, label %choice.case477, label %choice.next478

a.create364:                                      ; preds = %choice.case353
  %arena.cur366 = call ptr @dva_arena_current()
  %a.create367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 24)
  %arena.cur368 = call ptr @dva_arena_current()
  %a.buf369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 128)
  %a.len.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create367, i32 0, i32 0
  store i64 0, ptr %a.len.gep370, align 8
  %a.data.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create367, i32 0, i32 1
  store ptr %a.buf369, ptr %a.data.gep371, align 8
  %a.cap.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create367, i32 0, i32 2
  store i64 16, ptr %a.cap.gep372, align 8
  store ptr %a.create367, ptr %var.locals, align 8
  br label %a.after365

a.after365:                                       ; preds = %a.create364, %choice.case353
  %a.load2373 = load ptr, ptr %var.locals, align 8
  %call.res374 = call ptr @"dep_graph::copy_names"(ptr %a.load2373)
  store ptr %call.res374, ptr %var.fn_locals, align 8
  %var.load375 = load ptr, ptr %var.fe, align 8
  %fld.gep376 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load375, i32 0, i32 0
  %fld.load377 = load ptr, ptr %fld.gep376, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load377, i32 0, i32 0
  %arr.cycle.len378 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load377, i32 0, i32 1
  %arr.cycle.data379 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after365
  %counter.load380 = load i64, ptr %loop.idx.8, align 8
  %loop.cond381 = icmp slt i64 %counter.load380, %arr.cycle.len378
  br i1 %loop.cond381, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i382 = sub i64 %counter.load380, 0
  store i64 1, ptr %loop.step.8, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data379, i64 %counter.load380
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i382, ptr %var._i383, align 8
  store ptr %arr.elem.ptr, ptr %var._360, align 8
  store ptr %arr.elem.ptr, ptr %var.p, align 8
  %var.load384 = load ptr, ptr %var.p, align 8
  %eq.lhs.len385 = getelementptr inbounds { i64, ptr }, ptr %var.load384, i32 0, i32 0
  %eq.lhs.len386 = load i64, ptr %eq.lhs.len385, align 8
  %eq.lhs.len387 = and i64 %eq.lhs.len386, 281474976710655
  %str.tag388 = lshr i64 %eq.lhs.len386, 48
  %str.immortal389 = icmp eq i64 %str.tag388, 0
  br i1 %str.immortal389, label %str_ok391, label %str_gen_check390

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit416
  %step.val446 = load i64, ptr %loop.step.8, align 8
  %loop.next447 = add i64 %counter.load380, %step.val446
  store i64 %loop.next447, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  %var.load448 = load ptr, ptr %var.fe, align 8
  %fld.gep449 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load448, i32 0, i32 2
  %fld.load450 = load ptr, ptr %fld.gep449, align 8
  %var.load451 = load ptr, ptr %var.fn_locals, align 8
  %a.load452 = load ptr, ptr %var.fn_locals, align 8
  %a.null453 = icmp eq ptr %a.load452, null
  br i1 %a.null453, label %a.create454, label %a.after455

str_gen_check390:                                 ; preds = %loop.body.8
  %arena.cur393 = call ptr @dva_arena_current()
  %tag.valid394 = call i1 @dva_arena_validate_tag(ptr %arena.cur393, i64 %str.tag388)
  br i1 %tag.valid394, label %str_ok391, label %str_stale392

str_ok391:                                        ; preds = %str_stale392, %str_gen_check390, %loop.body.8
  %eq.rhs.len395 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len396 = and i64 %eq.rhs.len395, 281474976710655
  %str.tag397 = lshr i64 %eq.rhs.len395, 48
  %str.immortal398 = icmp eq i64 %str.tag397, 0
  br i1 %str.immortal398, label %str_ok400, label %str_gen_check399

str_stale392:                                     ; preds = %str_gen_check390
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok391

str_gen_check399:                                 ; preds = %str_ok391
  %arena.cur402 = call ptr @dva_arena_current()
  %tag.valid403 = call i1 @dva_arena_validate_tag(ptr %arena.cur402, i64 %str.tag397)
  br i1 %tag.valid403, label %str_ok400, label %str_stale401

str_ok400:                                        ; preds = %str_stale401, %str_gen_check399, %str_ok391
  %eq.len404 = icmp eq i64 %eq.lhs.len387, %eq.rhs.len396
  br i1 %eq.len404, label %str.eq.then405, label %str.eq.else406

str_stale401:                                     ; preds = %str_gen_check399
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok400

str.eq.then405:                                   ; preds = %str_ok400
  %eq.lhs.data408 = getelementptr inbounds { i64, ptr }, ptr %var.load384, i32 0, i32 1
  %eq.lhs.data409 = load ptr, ptr %eq.lhs.data408, align 8
  %eq.rhs.data410 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp411 = call i32 @memcmp(ptr %eq.lhs.data409, ptr %eq.rhs.data410, i64 %eq.lhs.len387)
  %eq.cmp.zero412 = icmp eq i32 %eq.memcmp411, 0
  br label %str.eq.merge407

str.eq.else406:                                   ; preds = %str_ok400
  br label %str.eq.merge407

str.eq.merge407:                                  ; preds = %str.eq.else406, %str.eq.then405
  %str.eq.result413 = phi i1 [ %eq.cmp.zero412, %str.eq.then405 ], [ false, %str.eq.else406 ]
  %str.neq414 = xor i1 %str.eq.result413, true
  br i1 %str.neq414, label %choice.then415, label %choice.exit416

choice.then415:                                   ; preds = %str.eq.merge407
  %var.load417 = load ptr, ptr %var.p, align 8
  %a.load418 = load ptr, ptr %var.fn_locals, align 8
  %a.null419 = icmp eq ptr %a.load418, null
  br i1 %a.null419, label %a.create420, label %a.after421

choice.exit416:                                   ; preds = %a.store432, %str.eq.merge407
  br label %loop.latch.8

a.create420:                                      ; preds = %choice.then415
  %arena.cur422 = call ptr @dva_arena_current()
  %a.create423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 24)
  %arena.cur424 = call ptr @dva_arena_current()
  %a.buf425 = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 128)
  %a.len.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 0
  store i64 0, ptr %a.len.gep426, align 8
  %a.data.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 1
  store ptr %a.buf425, ptr %a.data.gep427, align 8
  %a.cap.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create423, i32 0, i32 2
  store i64 16, ptr %a.cap.gep428, align 8
  store ptr %a.create423, ptr %var.fn_locals, align 8
  br label %a.after421

a.after421:                                       ; preds = %a.create420, %choice.then415
  %a.load2429 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check430

a.check430:                                       ; preds = %a.after421
  %a.len433 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 0
  %a.len434 = load i64, ptr %a.len433, align 8
  %a.cap435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 2
  %a.cap436 = load i64, ptr %a.cap435, align 8
  %a.needs.grow437 = icmp eq i64 %a.len434, %a.cap436
  br i1 %a.needs.grow437, label %a.grow431, label %a.store432

a.grow431:                                        ; preds = %a.check430
  call void @dva_array_grow(ptr %a.load2429)
  br label %a.store432

a.store432:                                       ; preds = %a.grow431, %a.check430
  %a.cur.data438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 1
  %a.cur.data439 = load ptr, ptr %a.cur.data438, align 8
  %a.cur.len440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 0
  %a.cur.len441 = load i64, ptr %a.cur.len440, align 8
  %a.elem.gep442 = getelementptr i64, ptr %a.cur.data439, i64 %a.cur.len441
  %a.elem.p2i443 = ptrtoint ptr %var.load417 to i64
  store i64 %a.elem.p2i443, ptr %a.elem.gep442, align 8
  %a.next.len444 = add i64 %a.cur.len441, 1
  %b.len.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2429, i32 0, i32 0
  store i64 %a.next.len444, ptr %b.len.gep445, align 8
  br label %choice.exit416

a.create454:                                      ; preds = %loop.exit.8
  %arena.cur456 = call ptr @dva_arena_current()
  %a.create457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 24)
  %arena.cur458 = call ptr @dva_arena_current()
  %a.buf459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 128)
  %a.len.gep460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create457, i32 0, i32 0
  store i64 0, ptr %a.len.gep460, align 8
  %a.data.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create457, i32 0, i32 1
  store ptr %a.buf459, ptr %a.data.gep461, align 8
  %a.cap.gep462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create457, i32 0, i32 2
  store i64 16, ptr %a.cap.gep462, align 8
  store ptr %a.create457, ptr %var.fn_locals, align 8
  br label %a.after455

a.after455:                                       ; preds = %a.create454, %loop.exit.8
  %a.load2463 = load ptr, ptr %var.fn_locals, align 8
  %var.load464 = load ptr, ptr %var.refs, align 8
  %a.load465 = load ptr, ptr %var.refs, align 8
  %a.null466 = icmp eq ptr %a.load465, null
  br i1 %a.null466, label %a.create467, label %a.after468

a.create467:                                      ; preds = %a.after455
  %arena.cur469 = call ptr @dva_arena_current()
  %a.create470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %arena.cur471 = call ptr @dva_arena_current()
  %a.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 128)
  %a.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 0
  store i64 0, ptr %a.len.gep473, align 8
  %a.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 1
  store ptr %a.buf472, ptr %a.data.gep474, align 8
  %a.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep475, align 8
  store ptr %a.create470, ptr %var.refs, align 8
  br label %a.after468

a.after468:                                       ; preds = %a.create467, %a.after455
  %a.load2476 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load450, ptr %a.load2463, ptr %a.load2476)
  br label %choice.exit

choice.case477:                                   ; preds = %choice.next354
  %pay.gep482 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr483 = load ptr, ptr %pay.gep482, align 8
  store ptr %payload.ptr483, ptr %var._484, align 8
  store ptr %payload.ptr483, ptr %var.be, align 8
  %var.load485 = load ptr, ptr %var.locals, align 8
  %a.load486 = load ptr, ptr %var.locals, align 8
  %a.null487 = icmp eq ptr %a.load486, null
  br i1 %a.null487, label %a.create488, label %a.after489

choice.next478:                                   ; preds = %choice.next354
  %tag.gep707 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id708 = load i64, ptr %tag.gep707, align 8
  %tag.match709 = icmp eq i64 %tag.id708, 7
  br i1 %tag.match709, label %choice.case705, label %choice.next706

a.create488:                                      ; preds = %choice.case477
  %arena.cur490 = call ptr @dva_arena_current()
  %a.create491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 24)
  %arena.cur492 = call ptr @dva_arena_current()
  %a.buf493 = call ptr @dva_arena_alloc(ptr %arena.cur492, i64 128)
  %a.len.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 0
  store i64 0, ptr %a.len.gep494, align 8
  %a.data.gep495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 1
  store ptr %a.buf493, ptr %a.data.gep495, align 8
  %a.cap.gep496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create491, i32 0, i32 2
  store i64 16, ptr %a.cap.gep496, align 8
  store ptr %a.create491, ptr %var.locals, align 8
  br label %a.after489

a.after489:                                       ; preds = %a.create488, %choice.case477
  %a.load2497 = load ptr, ptr %var.locals, align 8
  %call.res498 = call ptr @"dep_graph::copy_names"(ptr %a.load2497)
  store ptr %call.res498, ptr %var.blk_locals, align 8
  %var.load499 = load ptr, ptr %var.be, align 8
  %fld.gep500 = getelementptr inbounds { ptr }, ptr %var.load499, i32 0, i32 0
  %fld.load501 = load ptr, ptr %fld.gep500, align 8
  %a.len.query502 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load501, i32 0, i32 0
  %a.len.query503 = load i64, ptr %a.len.query502, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after489
  %counter.load505 = load i64, ptr %loop.idx.9, align 8
  %loop.cond506 = icmp slt i64 %counter.load505, %a.len.query503
  br i1 %loop.cond506, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i507 = sub i64 %counter.load505, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i507, ptr %var._i508, align 8
  store i64 %counter.load505, ptr %var._484, align 8
  store i64 %counter.load505, ptr %var.i504, align 8
  %var.load509 = load ptr, ptr %var.be, align 8
  %fld.gep510 = getelementptr inbounds { ptr }, ptr %var.load509, i32 0, i32 0
  %fld.load511 = load ptr, ptr %fld.gep510, align 8
  %var.load512 = load i64, ptr %var.i504, align 8
  %a.rd.nonnull513 = icmp ne ptr %fld.load511, null
  br i1 %a.rd.nonnull513, label %a.rd.check514, label %a.rd.err.null516

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit572
  %step.val703 = load i64, ptr %loop.step.9, align 8
  %loop.next704 = add i64 %counter.load505, %step.val703
  store i64 %loop.next704, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  br label %choice.exit

a.rd.check514:                                    ; preds = %loop.body.9
  %a.rd.len519 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load511, i32 0, i32 0
  %a.rd.len520 = load i64, ptr %a.rd.len519, align 8
  %a.rd.ge0521 = icmp sge i64 %var.load512, 0
  %a.rd.lt522 = icmp slt i64 %var.load512, %a.rd.len520
  %a.rd.bounds523 = and i1 %a.rd.ge0521, %a.rd.lt522
  br i1 %a.rd.bounds523, label %a.rd.ok515, label %a.rd.err.oob517

a.rd.ok515:                                       ; preds = %a.rd.check514
  %a.rd.data524 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load511, i32 0, i32 1
  %a.rd.data525 = load ptr, ptr %a.rd.data524, align 8
  %a.rd.elem.gep526 = getelementptr i64, ptr %a.rd.data525, i64 %var.load512
  %a.rd.elem527 = load i64, ptr %a.rd.elem.gep526, align 8
  br label %a.rd.done518

a.rd.err.null516:                                 ; preds = %loop.body.9
  %arena.cur528 = call ptr @dva_arena_current()
  %err.alloc529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 56)
  %err.code.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 0
  store i64 4011, ptr %err.code.gep530, align 8
  %err.msg.gep531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep531, align 8
  %err.file.gep532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep532, align 8
  %err.line.gep533 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 3
  store i64 0, ptr %err.line.gep533, align 8
  %err.col.gep534 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 4
  store i64 0, ptr %err.col.gep534, align 8
  %err.ctx.gep535 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc529, i32 0, i32 5
  %err.ctx0.gep536 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep535, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep536, align 8
  %err.ctx1.gep537 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep535, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep537, align 8
  %err.p2i538 = ptrtoint ptr %err.alloc529 to i64
  br label %a.rd.done518

a.rd.err.oob517:                                  ; preds = %a.rd.check514
  %arena.cur539 = call ptr @dva_arena_current()
  %err.alloc540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 56)
  %err.code.gep541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 0
  store i64 4011, ptr %err.code.gep541, align 8
  %err.msg.gep542 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep542, align 8
  %err.file.gep543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep543, align 8
  %err.line.gep544 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 3
  store i64 0, ptr %err.line.gep544, align 8
  %err.col.gep545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 4
  store i64 0, ptr %err.col.gep545, align 8
  %err.ctx.gep546 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc540, i32 0, i32 5
  %err.ctx0.gep547 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep546, i32 0, i32 0
  store i64 %var.load512, ptr %err.ctx0.gep547, align 8
  %err.ctx1.gep548 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep546, i32 0, i32 1
  store i64 %a.rd.len520, ptr %err.ctx1.gep548, align 8
  %err.p2i549 = ptrtoint ptr %err.alloc540 to i64
  br label %a.rd.done518

a.rd.done518:                                     ; preds = %a.rd.err.oob517, %a.rd.err.null516, %a.rd.ok515
  %a.rd.tag550 = phi i1 [ true, %a.rd.ok515 ], [ false, %a.rd.err.null516 ], [ false, %a.rd.err.oob517 ]
  %a.rd.pay551 = phi i64 [ %a.rd.elem527, %a.rd.ok515 ], [ %err.p2i538, %a.rd.err.null516 ], [ %err.p2i549, %a.rd.err.oob517 ]
  %ram.tag552 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag550, 0
  %ram.pay553 = insertvalue { i1, i64 } %ram.tag552, i64 %a.rd.pay551, 1
  %ram.tag554 = extractvalue { i1, i64 } %ram.pay553, 0
  br i1 %ram.tag554, label %choice.then555, label %choice.else556

choice.then555:                                   ; preds = %a.rd.done518
  %ram.pay558 = extractvalue { i1, i64 } %ram.pay553, 1
  %pay.ptr559 = inttoptr i64 %ram.pay558 to ptr
  store ptr %pay.ptr559, ptr %var._560, align 8
  br label %choice.exit557

choice.else556:                                   ; preds = %a.rd.done518
  %ram.pay561 = extractvalue { i1, i64 } %ram.pay553, 1
  %pay.ptr562 = inttoptr i64 %ram.pay561 to ptr
  store ptr %pay.ptr562, ptr %var._563, align 8
  %arena.cur564 = call ptr @dva_arena_current()
  %enum.alloc565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 16)
  %tag.gep566 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc565, i32 0, i32 0
  store i64 0, ptr %tag.gep566, align 8
  %pay.gep567 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc565, i32 0, i32 1
  %arena.cur568 = call ptr @dva_arena_current()
  %enum.pay.alloc569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 8)
  store i64 0, ptr %enum.pay.alloc569, align 8
  store ptr %enum.pay.alloc569, ptr %pay.gep567, align 8
  br label %choice.exit557

choice.exit557:                                   ; preds = %choice.else556, %choice.then555
  %choice.res570 = phi ptr [ %pay.ptr559, %choice.then555 ], [ %enum.alloc565, %choice.else556 ]
  store ptr %choice.res570, ptr %var.st, align 8
  %var.load571 = load ptr, ptr %var.st, align 8
  %tag.gep575 = getelementptr inbounds { i64, ptr }, ptr %var.load571, i32 0, i32 0
  %tag.id576 = load i64, ptr %tag.gep575, align 8
  %tag.match577 = icmp eq i64 %tag.id576, 6
  br i1 %tag.match577, label %choice.case573, label %choice.next574

choice.exit572:                                   ; preds = %a.after694, %choice.exit644
  br label %loop.latch.9

choice.case573:                                   ; preds = %choice.exit557
  %pay.gep578 = getelementptr inbounds { i64, ptr }, ptr %var.load571, i32 0, i32 1
  %payload.ptr579 = load ptr, ptr %pay.gep578, align 8
  store ptr %payload.ptr579, ptr %var._580, align 8
  store ptr %payload.ptr579, ptr %var.a, align 8
  %var.load581 = load ptr, ptr %var.a, align 8
  %fld.gep582 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load581, i32 0, i32 5
  %fld.load583 = load ptr, ptr %fld.gep582, align 8
  %var.load584 = load ptr, ptr %var.blk_locals, align 8
  %a.load585 = load ptr, ptr %var.blk_locals, align 8
  %a.null586 = icmp eq ptr %a.load585, null
  br i1 %a.null586, label %a.create587, label %a.after588

choice.next574:                                   ; preds = %choice.exit557
  %var.load676 = load ptr, ptr %var.st, align 8
  %var.load677 = load ptr, ptr %var.blk_locals, align 8
  %a.load678 = load ptr, ptr %var.blk_locals, align 8
  %a.null679 = icmp eq ptr %a.load678, null
  br i1 %a.null679, label %a.create680, label %a.after681

a.create587:                                      ; preds = %choice.case573
  %arena.cur589 = call ptr @dva_arena_current()
  %a.create590 = call ptr @dva_arena_alloc(ptr %arena.cur589, i64 24)
  %arena.cur591 = call ptr @dva_arena_current()
  %a.buf592 = call ptr @dva_arena_alloc(ptr %arena.cur591, i64 128)
  %a.len.gep593 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create590, i32 0, i32 0
  store i64 0, ptr %a.len.gep593, align 8
  %a.data.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create590, i32 0, i32 1
  store ptr %a.buf592, ptr %a.data.gep594, align 8
  %a.cap.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create590, i32 0, i32 2
  store i64 16, ptr %a.cap.gep595, align 8
  store ptr %a.create590, ptr %var.blk_locals, align 8
  br label %a.after588

a.after588:                                       ; preds = %a.create587, %choice.case573
  %a.load2596 = load ptr, ptr %var.blk_locals, align 8
  %var.load597 = load ptr, ptr %var.refs, align 8
  %a.load598 = load ptr, ptr %var.refs, align 8
  %a.null599 = icmp eq ptr %a.load598, null
  br i1 %a.null599, label %a.create600, label %a.after601

a.create600:                                      ; preds = %a.after588
  %arena.cur602 = call ptr @dva_arena_current()
  %a.create603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 24)
  %arena.cur604 = call ptr @dva_arena_current()
  %a.buf605 = call ptr @dva_arena_alloc(ptr %arena.cur604, i64 128)
  %a.len.gep606 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 0
  store i64 0, ptr %a.len.gep606, align 8
  %a.data.gep607 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 1
  store ptr %a.buf605, ptr %a.data.gep607, align 8
  %a.cap.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create603, i32 0, i32 2
  store i64 16, ptr %a.cap.gep608, align 8
  store ptr %a.create603, ptr %var.refs, align 8
  br label %a.after601

a.after601:                                       ; preds = %a.create600, %a.after588
  %a.load2609 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load583, ptr %a.load2596, ptr %a.load2609)
  %var.load610 = load ptr, ptr %var.a, align 8
  %fld.gep611 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load610, i32 0, i32 0
  %fld.load612 = load ptr, ptr %fld.gep611, align 8
  %eq.lhs.len613 = getelementptr inbounds { i64, ptr }, ptr %fld.load612, i32 0, i32 0
  %eq.lhs.len614 = load i64, ptr %eq.lhs.len613, align 8
  %eq.lhs.len615 = and i64 %eq.lhs.len614, 281474976710655
  %str.tag616 = lshr i64 %eq.lhs.len614, 48
  %str.immortal617 = icmp eq i64 %str.tag616, 0
  br i1 %str.immortal617, label %str_ok619, label %str_gen_check618

str_gen_check618:                                 ; preds = %a.after601
  %arena.cur621 = call ptr @dva_arena_current()
  %tag.valid622 = call i1 @dva_arena_validate_tag(ptr %arena.cur621, i64 %str.tag616)
  br i1 %tag.valid622, label %str_ok619, label %str_stale620

str_ok619:                                        ; preds = %str_stale620, %str_gen_check618, %a.after601
  %eq.rhs.len623 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len624 = and i64 %eq.rhs.len623, 281474976710655
  %str.tag625 = lshr i64 %eq.rhs.len623, 48
  %str.immortal626 = icmp eq i64 %str.tag625, 0
  br i1 %str.immortal626, label %str_ok628, label %str_gen_check627

str_stale620:                                     ; preds = %str_gen_check618
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok619

str_gen_check627:                                 ; preds = %str_ok619
  %arena.cur630 = call ptr @dva_arena_current()
  %tag.valid631 = call i1 @dva_arena_validate_tag(ptr %arena.cur630, i64 %str.tag625)
  br i1 %tag.valid631, label %str_ok628, label %str_stale629

str_ok628:                                        ; preds = %str_stale629, %str_gen_check627, %str_ok619
  %eq.len632 = icmp eq i64 %eq.lhs.len615, %eq.rhs.len624
  br i1 %eq.len632, label %str.eq.then633, label %str.eq.else634

str_stale629:                                     ; preds = %str_gen_check627
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok628

str.eq.then633:                                   ; preds = %str_ok628
  %eq.lhs.data636 = getelementptr inbounds { i64, ptr }, ptr %fld.load612, i32 0, i32 1
  %eq.lhs.data637 = load ptr, ptr %eq.lhs.data636, align 8
  %eq.rhs.data638 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp639 = call i32 @memcmp(ptr %eq.lhs.data637, ptr %eq.rhs.data638, i64 %eq.lhs.len615)
  %eq.cmp.zero640 = icmp eq i32 %eq.memcmp639, 0
  br label %str.eq.merge635

str.eq.else634:                                   ; preds = %str_ok628
  br label %str.eq.merge635

str.eq.merge635:                                  ; preds = %str.eq.else634, %str.eq.then633
  %str.eq.result641 = phi i1 [ %eq.cmp.zero640, %str.eq.then633 ], [ false, %str.eq.else634 ]
  %str.neq642 = xor i1 %str.eq.result641, true
  br i1 %str.neq642, label %choice.then643, label %choice.exit644

choice.then643:                                   ; preds = %str.eq.merge635
  %var.load645 = load ptr, ptr %var.a, align 8
  %fld.gep646 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load645, i32 0, i32 0
  %fld.load647 = load ptr, ptr %fld.gep646, align 8
  %a.load648 = load ptr, ptr %var.blk_locals, align 8
  %a.null649 = icmp eq ptr %a.load648, null
  br i1 %a.null649, label %a.create650, label %a.after651

choice.exit644:                                   ; preds = %a.store662, %str.eq.merge635
  br label %choice.exit572

a.create650:                                      ; preds = %choice.then643
  %arena.cur652 = call ptr @dva_arena_current()
  %a.create653 = call ptr @dva_arena_alloc(ptr %arena.cur652, i64 24)
  %arena.cur654 = call ptr @dva_arena_current()
  %a.buf655 = call ptr @dva_arena_alloc(ptr %arena.cur654, i64 128)
  %a.len.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create653, i32 0, i32 0
  store i64 0, ptr %a.len.gep656, align 8
  %a.data.gep657 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create653, i32 0, i32 1
  store ptr %a.buf655, ptr %a.data.gep657, align 8
  %a.cap.gep658 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create653, i32 0, i32 2
  store i64 16, ptr %a.cap.gep658, align 8
  store ptr %a.create653, ptr %var.blk_locals, align 8
  br label %a.after651

a.after651:                                       ; preds = %a.create650, %choice.then643
  %a.load2659 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check660

a.check660:                                       ; preds = %a.after651
  %a.len663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2659, i32 0, i32 0
  %a.len664 = load i64, ptr %a.len663, align 8
  %a.cap665 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2659, i32 0, i32 2
  %a.cap666 = load i64, ptr %a.cap665, align 8
  %a.needs.grow667 = icmp eq i64 %a.len664, %a.cap666
  br i1 %a.needs.grow667, label %a.grow661, label %a.store662

a.grow661:                                        ; preds = %a.check660
  call void @dva_array_grow(ptr %a.load2659)
  br label %a.store662

a.store662:                                       ; preds = %a.grow661, %a.check660
  %a.cur.data668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2659, i32 0, i32 1
  %a.cur.data669 = load ptr, ptr %a.cur.data668, align 8
  %a.cur.len670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2659, i32 0, i32 0
  %a.cur.len671 = load i64, ptr %a.cur.len670, align 8
  %a.elem.gep672 = getelementptr i64, ptr %a.cur.data669, i64 %a.cur.len671
  %a.elem.p2i673 = ptrtoint ptr %fld.load647 to i64
  store i64 %a.elem.p2i673, ptr %a.elem.gep672, align 8
  %a.next.len674 = add i64 %a.cur.len671, 1
  %b.len.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2659, i32 0, i32 0
  store i64 %a.next.len674, ptr %b.len.gep675, align 8
  br label %choice.exit644

a.create680:                                      ; preds = %choice.next574
  %arena.cur682 = call ptr @dva_arena_current()
  %a.create683 = call ptr @dva_arena_alloc(ptr %arena.cur682, i64 24)
  %arena.cur684 = call ptr @dva_arena_current()
  %a.buf685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 128)
  %a.len.gep686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 0
  store i64 0, ptr %a.len.gep686, align 8
  %a.data.gep687 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 1
  store ptr %a.buf685, ptr %a.data.gep687, align 8
  %a.cap.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 2
  store i64 16, ptr %a.cap.gep688, align 8
  store ptr %a.create683, ptr %var.blk_locals, align 8
  br label %a.after681

a.after681:                                       ; preds = %a.create680, %choice.next574
  %a.load2689 = load ptr, ptr %var.blk_locals, align 8
  %var.load690 = load ptr, ptr %var.refs, align 8
  %a.load691 = load ptr, ptr %var.refs, align 8
  %a.null692 = icmp eq ptr %a.load691, null
  br i1 %a.null692, label %a.create693, label %a.after694

a.create693:                                      ; preds = %a.after681
  %arena.cur695 = call ptr @dva_arena_current()
  %a.create696 = call ptr @dva_arena_alloc(ptr %arena.cur695, i64 24)
  %arena.cur697 = call ptr @dva_arena_current()
  %a.buf698 = call ptr @dva_arena_alloc(ptr %arena.cur697, i64 128)
  %a.len.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 0
  store i64 0, ptr %a.len.gep699, align 8
  %a.data.gep700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 1
  store ptr %a.buf698, ptr %a.data.gep700, align 8
  %a.cap.gep701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create696, i32 0, i32 2
  store i64 16, ptr %a.cap.gep701, align 8
  store ptr %a.create696, ptr %var.refs, align 8
  br label %a.after694

a.after694:                                       ; preds = %a.create693, %a.after681
  %a.load2702 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load676, ptr %a.load2689, ptr %a.load2702)
  br label %choice.exit572

choice.case705:                                   ; preds = %choice.next478
  %pay.gep710 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr711 = load ptr, ptr %pay.gep710, align 8
  store ptr %payload.ptr711, ptr %var._712, align 8
  store ptr %payload.ptr711, ptr %var.ch, align 8
  %var.load713 = load ptr, ptr %var.ch, align 8
  %fld.gep714 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load713, i32 0, i32 0
  %fld.load715 = load ptr, ptr %fld.gep714, align 8
  %var.load716 = load ptr, ptr %var.locals, align 8
  %a.load717 = load ptr, ptr %var.locals, align 8
  %a.null718 = icmp eq ptr %a.load717, null
  br i1 %a.null718, label %a.create719, label %a.after720

choice.next706:                                   ; preds = %choice.next478
  %tag.gep1103 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1104 = load i64, ptr %tag.gep1103, align 8
  %tag.match1105 = icmp eq i64 %tag.id1104, 15
  br i1 %tag.match1105, label %choice.case1101, label %choice.next1102

a.create719:                                      ; preds = %choice.case705
  %arena.cur721 = call ptr @dva_arena_current()
  %a.create722 = call ptr @dva_arena_alloc(ptr %arena.cur721, i64 24)
  %arena.cur723 = call ptr @dva_arena_current()
  %a.buf724 = call ptr @dva_arena_alloc(ptr %arena.cur723, i64 128)
  %a.len.gep725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create722, i32 0, i32 0
  store i64 0, ptr %a.len.gep725, align 8
  %a.data.gep726 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create722, i32 0, i32 1
  store ptr %a.buf724, ptr %a.data.gep726, align 8
  %a.cap.gep727 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create722, i32 0, i32 2
  store i64 16, ptr %a.cap.gep727, align 8
  store ptr %a.create722, ptr %var.locals, align 8
  br label %a.after720

a.after720:                                       ; preds = %a.create719, %choice.case705
  %a.load2728 = load ptr, ptr %var.locals, align 8
  %var.load729 = load ptr, ptr %var.refs, align 8
  %a.load730 = load ptr, ptr %var.refs, align 8
  %a.null731 = icmp eq ptr %a.load730, null
  br i1 %a.null731, label %a.create732, label %a.after733

a.create732:                                      ; preds = %a.after720
  %arena.cur734 = call ptr @dva_arena_current()
  %a.create735 = call ptr @dva_arena_alloc(ptr %arena.cur734, i64 24)
  %arena.cur736 = call ptr @dva_arena_current()
  %a.buf737 = call ptr @dva_arena_alloc(ptr %arena.cur736, i64 128)
  %a.len.gep738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create735, i32 0, i32 0
  store i64 0, ptr %a.len.gep738, align 8
  %a.data.gep739 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create735, i32 0, i32 1
  store ptr %a.buf737, ptr %a.data.gep739, align 8
  %a.cap.gep740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create735, i32 0, i32 2
  store i64 16, ptr %a.cap.gep740, align 8
  store ptr %a.create735, ptr %var.refs, align 8
  br label %a.after733

a.after733:                                       ; preds = %a.create732, %a.after720
  %a.load2741 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load715, ptr %a.load2728, ptr %a.load2741)
  %var.load742 = load ptr, ptr %var.ch, align 8
  %fld.gep743 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load742, i32 0, i32 2
  %fld.load744 = load ptr, ptr %fld.gep743, align 8
  %a.len.query745 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load744, i32 0, i32 0
  %a.len.query746 = load i64, ptr %a.len.query745, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %a.after733
  %counter.load748 = load i64, ptr %loop.idx.10, align 8
  %loop.cond749 = icmp slt i64 %counter.load748, %a.len.query746
  br i1 %loop.cond749, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i750 = sub i64 %counter.load748, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i750, ptr %var._i751, align 8
  store i64 %counter.load748, ptr %var._712, align 8
  store i64 %counter.load748, ptr %var.i747, align 8
  %var.load752 = load ptr, ptr %var.ch, align 8
  %fld.gep753 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load752, i32 0, i32 2
  %fld.load754 = load ptr, ptr %fld.gep753, align 8
  %var.load755 = load i64, ptr %var.i747, align 8
  %a.rd.nonnull756 = icmp ne ptr %fld.load754, null
  br i1 %a.rd.nonnull756, label %a.rd.check757, label %a.rd.err.null759

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %loop.exit.12
  %step.val1099 = load i64, ptr %loop.step.10, align 8
  %loop.next1100 = add i64 %counter.load748, %step.val1099
  store i64 %loop.next1100, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  br label %choice.exit

a.rd.check757:                                    ; preds = %loop.body.10
  %a.rd.len762 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load754, i32 0, i32 0
  %a.rd.len763 = load i64, ptr %a.rd.len762, align 8
  %a.rd.ge0764 = icmp sge i64 %var.load755, 0
  %a.rd.lt765 = icmp slt i64 %var.load755, %a.rd.len763
  %a.rd.bounds766 = and i1 %a.rd.ge0764, %a.rd.lt765
  br i1 %a.rd.bounds766, label %a.rd.ok758, label %a.rd.err.oob760

a.rd.ok758:                                       ; preds = %a.rd.check757
  %a.rd.data767 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load754, i32 0, i32 1
  %a.rd.data768 = load ptr, ptr %a.rd.data767, align 8
  %a.rd.elem.gep769 = getelementptr i64, ptr %a.rd.data768, i64 %var.load755
  %a.rd.elem770 = load i64, ptr %a.rd.elem.gep769, align 8
  br label %a.rd.done761

a.rd.err.null759:                                 ; preds = %loop.body.10
  %arena.cur771 = call ptr @dva_arena_current()
  %err.alloc772 = call ptr @dva_arena_alloc(ptr %arena.cur771, i64 56)
  %err.code.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 0
  store i64 4011, ptr %err.code.gep773, align 8
  %err.msg.gep774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep774, align 8
  %err.file.gep775 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep775, align 8
  %err.line.gep776 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 3
  store i64 0, ptr %err.line.gep776, align 8
  %err.col.gep777 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 4
  store i64 0, ptr %err.col.gep777, align 8
  %err.ctx.gep778 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 5
  %err.ctx0.gep779 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep778, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep779, align 8
  %err.ctx1.gep780 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep778, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep780, align 8
  %err.p2i781 = ptrtoint ptr %err.alloc772 to i64
  br label %a.rd.done761

a.rd.err.oob760:                                  ; preds = %a.rd.check757
  %arena.cur782 = call ptr @dva_arena_current()
  %err.alloc783 = call ptr @dva_arena_alloc(ptr %arena.cur782, i64 56)
  %err.code.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 0
  store i64 4011, ptr %err.code.gep784, align 8
  %err.msg.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep785, align 8
  %err.file.gep786 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep786, align 8
  %err.line.gep787 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 3
  store i64 0, ptr %err.line.gep787, align 8
  %err.col.gep788 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 4
  store i64 0, ptr %err.col.gep788, align 8
  %err.ctx.gep789 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc783, i32 0, i32 5
  %err.ctx0.gep790 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep789, i32 0, i32 0
  store i64 %var.load755, ptr %err.ctx0.gep790, align 8
  %err.ctx1.gep791 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep789, i32 0, i32 1
  store i64 %a.rd.len763, ptr %err.ctx1.gep791, align 8
  %err.p2i792 = ptrtoint ptr %err.alloc783 to i64
  br label %a.rd.done761

a.rd.done761:                                     ; preds = %a.rd.err.oob760, %a.rd.err.null759, %a.rd.ok758
  %a.rd.tag793 = phi i1 [ true, %a.rd.ok758 ], [ false, %a.rd.err.null759 ], [ false, %a.rd.err.oob760 ]
  %a.rd.pay794 = phi i64 [ %a.rd.elem770, %a.rd.ok758 ], [ %err.p2i781, %a.rd.err.null759 ], [ %err.p2i792, %a.rd.err.oob760 ]
  %ram.tag795 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag793, 0
  %ram.pay796 = insertvalue { i1, i64 } %ram.tag795, i64 %a.rd.pay794, 1
  %ram.tag797 = extractvalue { i1, i64 } %ram.pay796, 0
  br i1 %ram.tag797, label %choice.then798, label %choice.else799

choice.then798:                                   ; preds = %a.rd.done761
  %ram.pay801 = extractvalue { i1, i64 } %ram.pay796, 1
  %pay.ptr802 = inttoptr i64 %ram.pay801 to ptr
  store ptr %pay.ptr802, ptr %var._803, align 8
  br label %choice.exit800

choice.else799:                                   ; preds = %a.rd.done761
  %ram.pay804 = extractvalue { i1, i64 } %ram.pay796, 1
  %pay.ptr805 = inttoptr i64 %ram.pay804 to ptr
  store ptr %pay.ptr805, ptr %var._806, align 8
  %arena.cur807 = call ptr @dva_arena_current()
  %enum.alloc808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 16)
  %tag.gep809 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc808, i32 0, i32 0
  store i64 3, ptr %tag.gep809, align 8
  %pay.gep810 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc808, i32 0, i32 1
  store ptr null, ptr %pay.gep810, align 8
  %arena.cur811 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur811, i64 24)
  %arena.cur812 = call ptr @dva_arena_current()
  %a.buf813 = call ptr @dva_arena_alloc(ptr %arena.cur812, i64 128)
  %a.len.gep814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep814, align 8
  %a.data.gep815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf813, ptr %a.data.gep815, align 8
  %a.cap.gep816 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep816, align 8
  %arena.cur817 = call ptr @dva_arena_current()
  %enum.alloc818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 16)
  %tag.gep819 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc818, i32 0, i32 0
  store i64 0, ptr %tag.gep819, align 8
  %pay.gep820 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc818, i32 0, i32 1
  %arena.cur821 = call ptr @dva_arena_current()
  %enum.pay.alloc822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 8)
  store i64 0, ptr %enum.pay.alloc822, align 8
  store ptr %enum.pay.alloc822, ptr %pay.gep820, align 8
  %arena.cur823 = call ptr @dva_arena_current()
  %a.new824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 24)
  %arena.cur825 = call ptr @dva_arena_current()
  %a.buf826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 128)
  %a.len.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new824, i32 0, i32 0
  store i64 0, ptr %a.len.gep827, align 8
  %a.data.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new824, i32 0, i32 1
  store ptr %a.buf826, ptr %a.data.gep828, align 8
  %a.cap.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new824, i32 0, i32 2
  store i64 16, ptr %a.cap.gep829, align 8
  %arena.cur830 = call ptr @dva_arena_current()
  %a.new831 = call ptr @dva_arena_alloc(ptr %arena.cur830, i64 24)
  %arena.cur832 = call ptr @dva_arena_current()
  %a.buf833 = call ptr @dva_arena_alloc(ptr %arena.cur832, i64 128)
  %a.len.gep834 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new831, i32 0, i32 0
  store i64 0, ptr %a.len.gep834, align 8
  %a.data.gep835 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new831, i32 0, i32 1
  store ptr %a.buf833, ptr %a.data.gep835, align 8
  %a.cap.gep836 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new831, i32 0, i32 2
  store i64 16, ptr %a.cap.gep836, align 8
  %arena.cur837 = call ptr @dva_arena_current()
  %enum.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 16)
  %tag.gep839 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc838, i32 0, i32 0
  store i64 0, ptr %tag.gep839, align 8
  %pay.gep840 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc838, i32 0, i32 1
  %arena.cur841 = call ptr @dva_arena_current()
  %enum.pay.alloc842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 8)
  store i64 0, ptr %enum.pay.alloc842, align 8
  store ptr %enum.pay.alloc842, ptr %pay.gep840, align 8
  %arena.cur843 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc808, ptr %rec.fld, align 8
  %rec.fld844 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new, ptr %rec.fld844, align 8
  %rec.fld845 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc818, ptr %rec.fld845, align 8
  %rec.fld846 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new824, ptr %rec.fld846, align 8
  %rec.fld847 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.new831, ptr %rec.fld847, align 8
  %rec.fld848 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld848, align 1
  %rec.fld849 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %enum.alloc838, ptr %rec.fld849, align 8
  br label %choice.exit800

choice.exit800:                                   ; preds = %choice.else799, %choice.then798
  %choice.res850 = phi ptr [ %pay.ptr802, %choice.then798 ], [ %rec.alloc, %choice.else799 ]
  store ptr %choice.res850, ptr %var.br, align 8
  %var.load851 = load ptr, ptr %var.locals, align 8
  %a.load852 = load ptr, ptr %var.locals, align 8
  %a.null853 = icmp eq ptr %a.load852, null
  br i1 %a.null853, label %a.create854, label %a.after855

a.create854:                                      ; preds = %choice.exit800
  %arena.cur856 = call ptr @dva_arena_current()
  %a.create857 = call ptr @dva_arena_alloc(ptr %arena.cur856, i64 24)
  %arena.cur858 = call ptr @dva_arena_current()
  %a.buf859 = call ptr @dva_arena_alloc(ptr %arena.cur858, i64 128)
  %a.len.gep860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 0
  store i64 0, ptr %a.len.gep860, align 8
  %a.data.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 1
  store ptr %a.buf859, ptr %a.data.gep861, align 8
  %a.cap.gep862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create857, i32 0, i32 2
  store i64 16, ptr %a.cap.gep862, align 8
  store ptr %a.create857, ptr %var.locals, align 8
  br label %a.after855

a.after855:                                       ; preds = %a.create854, %choice.exit800
  %a.load2863 = load ptr, ptr %var.locals, align 8
  %call.res864 = call ptr @"dep_graph::copy_names"(ptr %a.load2863)
  store ptr %call.res864, ptr %var.br_locals, align 8
  %var.load865 = load ptr, ptr %var.br, align 8
  %fld.gep866 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load865, i32 0, i32 4
  %fld.load867 = load ptr, ptr %fld.gep866, align 8
  %arr.cycle.len868 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load867, i32 0, i32 0
  %arr.cycle.len869 = load i64, ptr %arr.cycle.len868, align 8
  %arr.cycle.data870 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load867, i32 0, i32 1
  %arr.cycle.data871 = load ptr, ptr %arr.cycle.data870, align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after855
  %counter.load872 = load i64, ptr %loop.idx.11, align 8
  %loop.cond873 = icmp slt i64 %counter.load872, %arr.cycle.len869
  br i1 %loop.cond873, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i874 = sub i64 %counter.load872, 0
  store i64 1, ptr %loop.step.11, align 8
  %arr.elem.gep875 = getelementptr i64, ptr %arr.cycle.data871, i64 %counter.load872
  %arr.elem.raw876 = load i64, ptr %arr.elem.gep875, align 8
  %arr.elem.ptr877 = inttoptr i64 %arr.elem.raw876 to ptr
  store i64 %loop.rel.i874, ptr %var._i751, align 8
  store ptr %arr.elem.ptr877, ptr %var._712, align 8
  store ptr %arr.elem.ptr877, ptr %var.bv, align 8
  %var.load878 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len879 = getelementptr inbounds { i64, ptr }, ptr %var.load878, i32 0, i32 0
  %eq.lhs.len880 = load i64, ptr %eq.lhs.len879, align 8
  %eq.lhs.len881 = and i64 %eq.lhs.len880, 281474976710655
  %str.tag882 = lshr i64 %eq.lhs.len880, 48
  %str.immortal883 = icmp eq i64 %str.tag882, 0
  br i1 %str.immortal883, label %str_ok885, label %str_gen_check884

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit910
  %step.val940 = load i64, ptr %loop.step.11, align 8
  %loop.next941 = add i64 %counter.load872, %step.val940
  store i64 %loop.next941, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load942 = load ptr, ptr %var.br, align 8
  %fld.gep943 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load942, i32 0, i32 6
  %fld.load944 = load ptr, ptr %fld.gep943, align 8
  %var.load945 = load ptr, ptr %var.br_locals, align 8
  %a.load946 = load ptr, ptr %var.br_locals, align 8
  %a.null947 = icmp eq ptr %a.load946, null
  br i1 %a.null947, label %a.create948, label %a.after949

str_gen_check884:                                 ; preds = %loop.body.11
  %arena.cur887 = call ptr @dva_arena_current()
  %tag.valid888 = call i1 @dva_arena_validate_tag(ptr %arena.cur887, i64 %str.tag882)
  br i1 %tag.valid888, label %str_ok885, label %str_stale886

str_ok885:                                        ; preds = %str_stale886, %str_gen_check884, %loop.body.11
  %eq.rhs.len889 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len890 = and i64 %eq.rhs.len889, 281474976710655
  %str.tag891 = lshr i64 %eq.rhs.len889, 48
  %str.immortal892 = icmp eq i64 %str.tag891, 0
  br i1 %str.immortal892, label %str_ok894, label %str_gen_check893

str_stale886:                                     ; preds = %str_gen_check884
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok885

str_gen_check893:                                 ; preds = %str_ok885
  %arena.cur896 = call ptr @dva_arena_current()
  %tag.valid897 = call i1 @dva_arena_validate_tag(ptr %arena.cur896, i64 %str.tag891)
  br i1 %tag.valid897, label %str_ok894, label %str_stale895

str_ok894:                                        ; preds = %str_stale895, %str_gen_check893, %str_ok885
  %eq.len898 = icmp eq i64 %eq.lhs.len881, %eq.rhs.len890
  br i1 %eq.len898, label %str.eq.then899, label %str.eq.else900

str_stale895:                                     ; preds = %str_gen_check893
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok894

str.eq.then899:                                   ; preds = %str_ok894
  %eq.lhs.data902 = getelementptr inbounds { i64, ptr }, ptr %var.load878, i32 0, i32 1
  %eq.lhs.data903 = load ptr, ptr %eq.lhs.data902, align 8
  %eq.rhs.data904 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp905 = call i32 @memcmp(ptr %eq.lhs.data903, ptr %eq.rhs.data904, i64 %eq.lhs.len881)
  %eq.cmp.zero906 = icmp eq i32 %eq.memcmp905, 0
  br label %str.eq.merge901

str.eq.else900:                                   ; preds = %str_ok894
  br label %str.eq.merge901

str.eq.merge901:                                  ; preds = %str.eq.else900, %str.eq.then899
  %str.eq.result907 = phi i1 [ %eq.cmp.zero906, %str.eq.then899 ], [ false, %str.eq.else900 ]
  %str.neq908 = xor i1 %str.eq.result907, true
  br i1 %str.neq908, label %choice.then909, label %choice.exit910

choice.then909:                                   ; preds = %str.eq.merge901
  %var.load911 = load ptr, ptr %var.bv, align 8
  %a.load912 = load ptr, ptr %var.br_locals, align 8
  %a.null913 = icmp eq ptr %a.load912, null
  br i1 %a.null913, label %a.create914, label %a.after915

choice.exit910:                                   ; preds = %a.store926, %str.eq.merge901
  br label %loop.latch.11

a.create914:                                      ; preds = %choice.then909
  %arena.cur916 = call ptr @dva_arena_current()
  %a.create917 = call ptr @dva_arena_alloc(ptr %arena.cur916, i64 24)
  %arena.cur918 = call ptr @dva_arena_current()
  %a.buf919 = call ptr @dva_arena_alloc(ptr %arena.cur918, i64 128)
  %a.len.gep920 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create917, i32 0, i32 0
  store i64 0, ptr %a.len.gep920, align 8
  %a.data.gep921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create917, i32 0, i32 1
  store ptr %a.buf919, ptr %a.data.gep921, align 8
  %a.cap.gep922 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create917, i32 0, i32 2
  store i64 16, ptr %a.cap.gep922, align 8
  store ptr %a.create917, ptr %var.br_locals, align 8
  br label %a.after915

a.after915:                                       ; preds = %a.create914, %choice.then909
  %a.load2923 = load ptr, ptr %var.br_locals, align 8
  br label %a.check924

a.check924:                                       ; preds = %a.after915
  %a.len927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 0
  %a.len928 = load i64, ptr %a.len927, align 8
  %a.cap929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 2
  %a.cap930 = load i64, ptr %a.cap929, align 8
  %a.needs.grow931 = icmp eq i64 %a.len928, %a.cap930
  br i1 %a.needs.grow931, label %a.grow925, label %a.store926

a.grow925:                                        ; preds = %a.check924
  call void @dva_array_grow(ptr %a.load2923)
  br label %a.store926

a.store926:                                       ; preds = %a.grow925, %a.check924
  %a.cur.data932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 1
  %a.cur.data933 = load ptr, ptr %a.cur.data932, align 8
  %a.cur.len934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 0
  %a.cur.len935 = load i64, ptr %a.cur.len934, align 8
  %a.elem.gep936 = getelementptr i64, ptr %a.cur.data933, i64 %a.cur.len935
  %a.elem.p2i937 = ptrtoint ptr %var.load911 to i64
  store i64 %a.elem.p2i937, ptr %a.elem.gep936, align 8
  %a.next.len938 = add i64 %a.cur.len935, 1
  %b.len.gep939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 0
  store i64 %a.next.len938, ptr %b.len.gep939, align 8
  br label %choice.exit910

a.create948:                                      ; preds = %loop.exit.11
  %arena.cur950 = call ptr @dva_arena_current()
  %a.create951 = call ptr @dva_arena_alloc(ptr %arena.cur950, i64 24)
  %arena.cur952 = call ptr @dva_arena_current()
  %a.buf953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 128)
  %a.len.gep954 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create951, i32 0, i32 0
  store i64 0, ptr %a.len.gep954, align 8
  %a.data.gep955 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create951, i32 0, i32 1
  store ptr %a.buf953, ptr %a.data.gep955, align 8
  %a.cap.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create951, i32 0, i32 2
  store i64 16, ptr %a.cap.gep956, align 8
  store ptr %a.create951, ptr %var.br_locals, align 8
  br label %a.after949

a.after949:                                       ; preds = %a.create948, %loop.exit.11
  %a.load2957 = load ptr, ptr %var.br_locals, align 8
  %var.load958 = load ptr, ptr %var.refs, align 8
  %a.load959 = load ptr, ptr %var.refs, align 8
  %a.null960 = icmp eq ptr %a.load959, null
  br i1 %a.null960, label %a.create961, label %a.after962

a.create961:                                      ; preds = %a.after949
  %arena.cur963 = call ptr @dva_arena_current()
  %a.create964 = call ptr @dva_arena_alloc(ptr %arena.cur963, i64 24)
  %arena.cur965 = call ptr @dva_arena_current()
  %a.buf966 = call ptr @dva_arena_alloc(ptr %arena.cur965, i64 128)
  %a.len.gep967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 0
  store i64 0, ptr %a.len.gep967, align 8
  %a.data.gep968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 1
  store ptr %a.buf966, ptr %a.data.gep968, align 8
  %a.cap.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 2
  store i64 16, ptr %a.cap.gep969, align 8
  store ptr %a.create964, ptr %var.refs, align 8
  br label %a.after962

a.after962:                                       ; preds = %a.create961, %a.after949
  %a.load2970 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load944, ptr %a.load2957, ptr %a.load2970)
  %var.load971 = load ptr, ptr %var.br, align 8
  %fld.gep972 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load971, i32 0, i32 2
  %fld.load973 = load ptr, ptr %fld.gep972, align 8
  %var.load974 = load ptr, ptr %var.br_locals, align 8
  %a.load975 = load ptr, ptr %var.br_locals, align 8
  %a.null976 = icmp eq ptr %a.load975, null
  br i1 %a.null976, label %a.create977, label %a.after978

a.create977:                                      ; preds = %a.after962
  %arena.cur979 = call ptr @dva_arena_current()
  %a.create980 = call ptr @dva_arena_alloc(ptr %arena.cur979, i64 24)
  %arena.cur981 = call ptr @dva_arena_current()
  %a.buf982 = call ptr @dva_arena_alloc(ptr %arena.cur981, i64 128)
  %a.len.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create980, i32 0, i32 0
  store i64 0, ptr %a.len.gep983, align 8
  %a.data.gep984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create980, i32 0, i32 1
  store ptr %a.buf982, ptr %a.data.gep984, align 8
  %a.cap.gep985 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create980, i32 0, i32 2
  store i64 16, ptr %a.cap.gep985, align 8
  store ptr %a.create980, ptr %var.br_locals, align 8
  br label %a.after978

a.after978:                                       ; preds = %a.create977, %a.after962
  %a.load2986 = load ptr, ptr %var.br_locals, align 8
  %var.load987 = load ptr, ptr %var.refs, align 8
  %a.load988 = load ptr, ptr %var.refs, align 8
  %a.null989 = icmp eq ptr %a.load988, null
  br i1 %a.null989, label %a.create990, label %a.after991

a.create990:                                      ; preds = %a.after978
  %arena.cur992 = call ptr @dva_arena_current()
  %a.create993 = call ptr @dva_arena_alloc(ptr %arena.cur992, i64 24)
  %arena.cur994 = call ptr @dva_arena_current()
  %a.buf995 = call ptr @dva_arena_alloc(ptr %arena.cur994, i64 128)
  %a.len.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 0
  store i64 0, ptr %a.len.gep996, align 8
  %a.data.gep997 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 1
  store ptr %a.buf995, ptr %a.data.gep997, align 8
  %a.cap.gep998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 2
  store i64 16, ptr %a.cap.gep998, align 8
  store ptr %a.create993, ptr %var.refs, align 8
  br label %a.after991

a.after991:                                       ; preds = %a.create990, %a.after978
  %a.load2999 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load973, ptr %a.load2986, ptr %a.load2999)
  %var.load1000 = load ptr, ptr %var.br, align 8
  %fld.gep1001 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1000, i32 0, i32 1
  %fld.load1002 = load ptr, ptr %fld.gep1001, align 8
  %a.len.query1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1002, i32 0, i32 0
  %a.len.query1004 = load i64, ptr %a.len.query1003, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after991
  %counter.load1005 = load i64, ptr %loop.idx.12, align 8
  %loop.cond1006 = icmp slt i64 %counter.load1005, %a.len.query1004
  br i1 %loop.cond1006, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i1007 = sub i64 %counter.load1005, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i1007, ptr %var._i751, align 8
  store i64 %counter.load1005, ptr %var._712, align 8
  store i64 %counter.load1005, ptr %var.k, align 8
  %var.load1008 = load ptr, ptr %var.br, align 8
  %fld.gep1009 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1008, i32 0, i32 1
  %fld.load1010 = load ptr, ptr %fld.gep1009, align 8
  %var.load1011 = load i64, ptr %var.k, align 8
  %a.rd.nonnull1012 = icmp ne ptr %fld.load1010, null
  br i1 %a.rd.nonnull1012, label %a.rd.check1013, label %a.rd.err.null1015

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %a.after1088
  %step.val1097 = load i64, ptr %loop.step.12, align 8
  %loop.next1098 = add i64 %counter.load1005, %step.val1097
  store i64 %loop.next1098, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  br label %loop.latch.10

a.rd.check1013:                                   ; preds = %loop.body.12
  %a.rd.len1018 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1010, i32 0, i32 0
  %a.rd.len1019 = load i64, ptr %a.rd.len1018, align 8
  %a.rd.ge01020 = icmp sge i64 %var.load1011, 0
  %a.rd.lt1021 = icmp slt i64 %var.load1011, %a.rd.len1019
  %a.rd.bounds1022 = and i1 %a.rd.ge01020, %a.rd.lt1021
  br i1 %a.rd.bounds1022, label %a.rd.ok1014, label %a.rd.err.oob1016

a.rd.ok1014:                                      ; preds = %a.rd.check1013
  %a.rd.data1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1010, i32 0, i32 1
  %a.rd.data1024 = load ptr, ptr %a.rd.data1023, align 8
  %a.rd.elem.gep1025 = getelementptr i64, ptr %a.rd.data1024, i64 %var.load1011
  %a.rd.elem1026 = load i64, ptr %a.rd.elem.gep1025, align 8
  br label %a.rd.done1017

a.rd.err.null1015:                                ; preds = %loop.body.12
  %arena.cur1027 = call ptr @dva_arena_current()
  %err.alloc1028 = call ptr @dva_arena_alloc(ptr %arena.cur1027, i64 56)
  %err.code.gep1029 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1029, align 8
  %err.msg.gep1030 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1030, align 8
  %err.file.gep1031 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1031, align 8
  %err.line.gep1032 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 3
  store i64 0, ptr %err.line.gep1032, align 8
  %err.col.gep1033 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 4
  store i64 0, ptr %err.col.gep1033, align 8
  %err.ctx.gep1034 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1028, i32 0, i32 5
  %err.ctx0.gep1035 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1034, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1035, align 8
  %err.ctx1.gep1036 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1034, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1036, align 8
  %err.p2i1037 = ptrtoint ptr %err.alloc1028 to i64
  br label %a.rd.done1017

a.rd.err.oob1016:                                 ; preds = %a.rd.check1013
  %arena.cur1038 = call ptr @dva_arena_current()
  %err.alloc1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 56)
  %err.code.gep1040 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1040, align 8
  %err.msg.gep1041 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1041, align 8
  %err.file.gep1042 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1042, align 8
  %err.line.gep1043 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 3
  store i64 0, ptr %err.line.gep1043, align 8
  %err.col.gep1044 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 4
  store i64 0, ptr %err.col.gep1044, align 8
  %err.ctx.gep1045 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1039, i32 0, i32 5
  %err.ctx0.gep1046 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1045, i32 0, i32 0
  store i64 %var.load1011, ptr %err.ctx0.gep1046, align 8
  %err.ctx1.gep1047 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1045, i32 0, i32 1
  store i64 %a.rd.len1019, ptr %err.ctx1.gep1047, align 8
  %err.p2i1048 = ptrtoint ptr %err.alloc1039 to i64
  br label %a.rd.done1017

a.rd.done1017:                                    ; preds = %a.rd.err.oob1016, %a.rd.err.null1015, %a.rd.ok1014
  %a.rd.tag1049 = phi i1 [ true, %a.rd.ok1014 ], [ false, %a.rd.err.null1015 ], [ false, %a.rd.err.oob1016 ]
  %a.rd.pay1050 = phi i64 [ %a.rd.elem1026, %a.rd.ok1014 ], [ %err.p2i1037, %a.rd.err.null1015 ], [ %err.p2i1048, %a.rd.err.oob1016 ]
  %ram.tag1051 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1049, 0
  %ram.pay1052 = insertvalue { i1, i64 } %ram.tag1051, i64 %a.rd.pay1050, 1
  %ram.tag1053 = extractvalue { i1, i64 } %ram.pay1052, 0
  br i1 %ram.tag1053, label %choice.then1054, label %choice.else1055

choice.then1054:                                  ; preds = %a.rd.done1017
  %ram.pay1057 = extractvalue { i1, i64 } %ram.pay1052, 1
  %pay.ptr1058 = inttoptr i64 %ram.pay1057 to ptr
  store ptr %pay.ptr1058, ptr %var._1059, align 8
  br label %choice.exit1056

choice.else1055:                                  ; preds = %a.rd.done1017
  %ram.pay1060 = extractvalue { i1, i64 } %ram.pay1052, 1
  %pay.ptr1061 = inttoptr i64 %ram.pay1060 to ptr
  store ptr %pay.ptr1061, ptr %var._1062, align 8
  %arena.cur1063 = call ptr @dva_arena_current()
  %enum.alloc1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 16)
  %tag.gep1065 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1064, i32 0, i32 0
  store i64 0, ptr %tag.gep1065, align 8
  %pay.gep1066 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1064, i32 0, i32 1
  %arena.cur1067 = call ptr @dva_arena_current()
  %enum.pay.alloc1068 = call ptr @dva_arena_alloc(ptr %arena.cur1067, i64 8)
  store i64 0, ptr %enum.pay.alloc1068, align 8
  store ptr %enum.pay.alloc1068, ptr %pay.gep1066, align 8
  br label %choice.exit1056

choice.exit1056:                                  ; preds = %choice.else1055, %choice.then1054
  %choice.res1069 = phi ptr [ %pay.ptr1058, %choice.then1054 ], [ %enum.alloc1064, %choice.else1055 ]
  store ptr %choice.res1069, ptr %var.cv, align 8
  %var.load1070 = load ptr, ptr %var.cv, align 8
  %var.load1071 = load ptr, ptr %var.br_locals, align 8
  %a.load1072 = load ptr, ptr %var.br_locals, align 8
  %a.null1073 = icmp eq ptr %a.load1072, null
  br i1 %a.null1073, label %a.create1074, label %a.after1075

a.create1074:                                     ; preds = %choice.exit1056
  %arena.cur1076 = call ptr @dva_arena_current()
  %a.create1077 = call ptr @dva_arena_alloc(ptr %arena.cur1076, i64 24)
  %arena.cur1078 = call ptr @dva_arena_current()
  %a.buf1079 = call ptr @dva_arena_alloc(ptr %arena.cur1078, i64 128)
  %a.len.gep1080 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 0
  store i64 0, ptr %a.len.gep1080, align 8
  %a.data.gep1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 1
  store ptr %a.buf1079, ptr %a.data.gep1081, align 8
  %a.cap.gep1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1077, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1082, align 8
  store ptr %a.create1077, ptr %var.br_locals, align 8
  br label %a.after1075

a.after1075:                                      ; preds = %a.create1074, %choice.exit1056
  %a.load21083 = load ptr, ptr %var.br_locals, align 8
  %var.load1084 = load ptr, ptr %var.refs, align 8
  %a.load1085 = load ptr, ptr %var.refs, align 8
  %a.null1086 = icmp eq ptr %a.load1085, null
  br i1 %a.null1086, label %a.create1087, label %a.after1088

a.create1087:                                     ; preds = %a.after1075
  %arena.cur1089 = call ptr @dva_arena_current()
  %a.create1090 = call ptr @dva_arena_alloc(ptr %arena.cur1089, i64 24)
  %arena.cur1091 = call ptr @dva_arena_current()
  %a.buf1092 = call ptr @dva_arena_alloc(ptr %arena.cur1091, i64 128)
  %a.len.gep1093 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1090, i32 0, i32 0
  store i64 0, ptr %a.len.gep1093, align 8
  %a.data.gep1094 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1090, i32 0, i32 1
  store ptr %a.buf1092, ptr %a.data.gep1094, align 8
  %a.cap.gep1095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1090, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1095, align 8
  store ptr %a.create1090, ptr %var.refs, align 8
  br label %a.after1088

a.after1088:                                      ; preds = %a.create1087, %a.after1075
  %a.load21096 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1070, ptr %a.load21083, ptr %a.load21096)
  br label %loop.latch.12

choice.case1101:                                  ; preds = %choice.next706
  %pay.gep1106 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1107 = load ptr, ptr %pay.gep1106, align 8
  store ptr %payload.ptr1107, ptr %var._1108, align 8
  store ptr %payload.ptr1107, ptr %var.re, align 8
  %var.load1109 = load ptr, ptr %var.re, align 8
  %fld.gep1110 = getelementptr inbounds { ptr, i1 }, ptr %var.load1109, i32 0, i32 0
  %fld.load1111 = load ptr, ptr %fld.gep1110, align 8
  %a.len.query1112 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1111, i32 0, i32 0
  %a.len.query1113 = load i64, ptr %a.len.query1112, align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

choice.next1102:                                  ; preds = %choice.next706
  %tag.gep1219 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1220 = load i64, ptr %tag.gep1219, align 8
  %tag.match1221 = icmp eq i64 %tag.id1220, 16
  br i1 %tag.match1221, label %choice.case1217, label %choice.next1218

loop.header.13:                                   ; preds = %loop.latch.13, %choice.case1101
  %counter.load1115 = load i64, ptr %loop.idx.13, align 8
  %loop.cond1116 = icmp slt i64 %counter.load1115, %a.len.query1113
  br i1 %loop.cond1116, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i1117 = sub i64 %counter.load1115, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i1117, ptr %var._i1118, align 8
  store i64 %counter.load1115, ptr %var._1108, align 8
  store i64 %counter.load1115, ptr %var.i1114, align 8
  %var.load1119 = load ptr, ptr %var.re, align 8
  %fld.gep1120 = getelementptr inbounds { ptr, i1 }, ptr %var.load1119, i32 0, i32 0
  %fld.load1121 = load ptr, ptr %fld.gep1120, align 8
  %var.load1122 = load i64, ptr %var.i1114, align 8
  %a.rd.nonnull1123 = icmp ne ptr %fld.load1121, null
  br i1 %a.rd.nonnull1123, label %a.rd.check1124, label %a.rd.err.null1126

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %a.after1206
  %step.val1215 = load i64, ptr %loop.step.13, align 8
  %loop.next1216 = add i64 %counter.load1115, %step.val1215
  store i64 %loop.next1216, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  br label %choice.exit

a.rd.check1124:                                   ; preds = %loop.body.13
  %a.rd.len1129 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1121, i32 0, i32 0
  %a.rd.len1130 = load i64, ptr %a.rd.len1129, align 8
  %a.rd.ge01131 = icmp sge i64 %var.load1122, 0
  %a.rd.lt1132 = icmp slt i64 %var.load1122, %a.rd.len1130
  %a.rd.bounds1133 = and i1 %a.rd.ge01131, %a.rd.lt1132
  br i1 %a.rd.bounds1133, label %a.rd.ok1125, label %a.rd.err.oob1127

a.rd.ok1125:                                      ; preds = %a.rd.check1124
  %a.rd.data1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1121, i32 0, i32 1
  %a.rd.data1135 = load ptr, ptr %a.rd.data1134, align 8
  %a.rd.elem.gep1136 = getelementptr i64, ptr %a.rd.data1135, i64 %var.load1122
  %a.rd.elem1137 = load i64, ptr %a.rd.elem.gep1136, align 8
  br label %a.rd.done1128

a.rd.err.null1126:                                ; preds = %loop.body.13
  %arena.cur1138 = call ptr @dva_arena_current()
  %err.alloc1139 = call ptr @dva_arena_alloc(ptr %arena.cur1138, i64 56)
  %err.code.gep1140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1140, align 8
  %err.msg.gep1141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1141, align 8
  %err.file.gep1142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1142, align 8
  %err.line.gep1143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 3
  store i64 0, ptr %err.line.gep1143, align 8
  %err.col.gep1144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 4
  store i64 0, ptr %err.col.gep1144, align 8
  %err.ctx.gep1145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1139, i32 0, i32 5
  %err.ctx0.gep1146 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1145, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1146, align 8
  %err.ctx1.gep1147 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1145, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1147, align 8
  %err.p2i1148 = ptrtoint ptr %err.alloc1139 to i64
  br label %a.rd.done1128

a.rd.err.oob1127:                                 ; preds = %a.rd.check1124
  %arena.cur1149 = call ptr @dva_arena_current()
  %err.alloc1150 = call ptr @dva_arena_alloc(ptr %arena.cur1149, i64 56)
  %err.code.gep1151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1151, align 8
  %err.msg.gep1152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1152, align 8
  %err.file.gep1153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1153, align 8
  %err.line.gep1154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 3
  store i64 0, ptr %err.line.gep1154, align 8
  %err.col.gep1155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 4
  store i64 0, ptr %err.col.gep1155, align 8
  %err.ctx.gep1156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1150, i32 0, i32 5
  %err.ctx0.gep1157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1156, i32 0, i32 0
  store i64 %var.load1122, ptr %err.ctx0.gep1157, align 8
  %err.ctx1.gep1158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1156, i32 0, i32 1
  store i64 %a.rd.len1130, ptr %err.ctx1.gep1158, align 8
  %err.p2i1159 = ptrtoint ptr %err.alloc1150 to i64
  br label %a.rd.done1128

a.rd.done1128:                                    ; preds = %a.rd.err.oob1127, %a.rd.err.null1126, %a.rd.ok1125
  %a.rd.tag1160 = phi i1 [ true, %a.rd.ok1125 ], [ false, %a.rd.err.null1126 ], [ false, %a.rd.err.oob1127 ]
  %a.rd.pay1161 = phi i64 [ %a.rd.elem1137, %a.rd.ok1125 ], [ %err.p2i1148, %a.rd.err.null1126 ], [ %err.p2i1159, %a.rd.err.oob1127 ]
  %ram.tag1162 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1160, 0
  %ram.pay1163 = insertvalue { i1, i64 } %ram.tag1162, i64 %a.rd.pay1161, 1
  %ram.tag1164 = extractvalue { i1, i64 } %ram.pay1163, 0
  br i1 %ram.tag1164, label %choice.then1165, label %choice.else1166

choice.then1165:                                  ; preds = %a.rd.done1128
  %ram.pay1168 = extractvalue { i1, i64 } %ram.pay1163, 1
  %pay.ptr1169 = inttoptr i64 %ram.pay1168 to ptr
  store ptr %pay.ptr1169, ptr %var._1170, align 8
  br label %choice.exit1167

choice.else1166:                                  ; preds = %a.rd.done1128
  %ram.pay1171 = extractvalue { i1, i64 } %ram.pay1163, 1
  %pay.ptr1172 = inttoptr i64 %ram.pay1171 to ptr
  store ptr %pay.ptr1172, ptr %var._1173, align 8
  %arena.cur1174 = call ptr @dva_arena_current()
  %enum.alloc1175 = call ptr @dva_arena_alloc(ptr %arena.cur1174, i64 16)
  %tag.gep1176 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1175, i32 0, i32 0
  store i64 0, ptr %tag.gep1176, align 8
  %pay.gep1177 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1175, i32 0, i32 1
  %arena.cur1178 = call ptr @dva_arena_current()
  %enum.pay.alloc1179 = call ptr @dva_arena_alloc(ptr %arena.cur1178, i64 8)
  store i64 0, ptr %enum.pay.alloc1179, align 8
  store ptr %enum.pay.alloc1179, ptr %pay.gep1177, align 8
  %arena.cur1180 = call ptr @dva_arena_current()
  %rec.alloc1181 = call ptr @dva_arena_alloc(ptr %arena.cur1180, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1182 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1181, i32 0, i32 0
  store i1 false, ptr %rec.fld1182, align 1
  %rec.fld1183 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1181, i32 0, i32 1
  store ptr @str.4.struct, ptr %rec.fld1183, align 8
  %rec.fld1184 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1181, i32 0, i32 2
  store ptr %enum.alloc1175, ptr %rec.fld1184, align 8
  br label %choice.exit1167

choice.exit1167:                                  ; preds = %choice.else1166, %choice.then1165
  %choice.res1185 = phi ptr [ %pay.ptr1169, %choice.then1165 ], [ %rec.alloc1181, %choice.else1166 ]
  store ptr %choice.res1185, ptr %var.fld, align 8
  %var.load1186 = load ptr, ptr %var.fld, align 8
  %fld.gep1187 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1186, i32 0, i32 2
  %fld.load1188 = load ptr, ptr %fld.gep1187, align 8
  %var.load1189 = load ptr, ptr %var.locals, align 8
  %a.load1190 = load ptr, ptr %var.locals, align 8
  %a.null1191 = icmp eq ptr %a.load1190, null
  br i1 %a.null1191, label %a.create1192, label %a.after1193

a.create1192:                                     ; preds = %choice.exit1167
  %arena.cur1194 = call ptr @dva_arena_current()
  %a.create1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 24)
  %arena.cur1196 = call ptr @dva_arena_current()
  %a.buf1197 = call ptr @dva_arena_alloc(ptr %arena.cur1196, i64 128)
  %a.len.gep1198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1195, i32 0, i32 0
  store i64 0, ptr %a.len.gep1198, align 8
  %a.data.gep1199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1195, i32 0, i32 1
  store ptr %a.buf1197, ptr %a.data.gep1199, align 8
  %a.cap.gep1200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1195, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1200, align 8
  store ptr %a.create1195, ptr %var.locals, align 8
  br label %a.after1193

a.after1193:                                      ; preds = %a.create1192, %choice.exit1167
  %a.load21201 = load ptr, ptr %var.locals, align 8
  %var.load1202 = load ptr, ptr %var.refs, align 8
  %a.load1203 = load ptr, ptr %var.refs, align 8
  %a.null1204 = icmp eq ptr %a.load1203, null
  br i1 %a.null1204, label %a.create1205, label %a.after1206

a.create1205:                                     ; preds = %a.after1193
  %arena.cur1207 = call ptr @dva_arena_current()
  %a.create1208 = call ptr @dva_arena_alloc(ptr %arena.cur1207, i64 24)
  %arena.cur1209 = call ptr @dva_arena_current()
  %a.buf1210 = call ptr @dva_arena_alloc(ptr %arena.cur1209, i64 128)
  %a.len.gep1211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1208, i32 0, i32 0
  store i64 0, ptr %a.len.gep1211, align 8
  %a.data.gep1212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1208, i32 0, i32 1
  store ptr %a.buf1210, ptr %a.data.gep1212, align 8
  %a.cap.gep1213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1208, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1213, align 8
  store ptr %a.create1208, ptr %var.refs, align 8
  br label %a.after1206

a.after1206:                                      ; preds = %a.create1205, %a.after1193
  %a.load21214 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1188, ptr %a.load21201, ptr %a.load21214)
  br label %loop.latch.13

choice.case1217:                                  ; preds = %choice.next1102
  %pay.gep1222 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1223 = load ptr, ptr %pay.gep1222, align 8
  store ptr %payload.ptr1223, ptr %var._1224, align 8
  store ptr %payload.ptr1223, ptr %var.m, align 8
  %var.load1225 = load ptr, ptr %var.m, align 8
  %fld.gep1226 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1225, i32 0, i32 0
  %fld.load1227 = load ptr, ptr %fld.gep1226, align 8
  %var.load1228 = load ptr, ptr %var.locals, align 8
  %a.load1229 = load ptr, ptr %var.locals, align 8
  %a.null1230 = icmp eq ptr %a.load1229, null
  br i1 %a.null1230, label %a.create1231, label %a.after1232

choice.next1218:                                  ; preds = %choice.next1102
  %tag.gep1285 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1286 = load i64, ptr %tag.gep1285, align 8
  %tag.match1287 = icmp eq i64 %tag.id1286, 17
  br i1 %tag.match1287, label %choice.case1283, label %choice.next1284

a.create1231:                                     ; preds = %choice.case1217
  %arena.cur1233 = call ptr @dva_arena_current()
  %a.create1234 = call ptr @dva_arena_alloc(ptr %arena.cur1233, i64 24)
  %arena.cur1235 = call ptr @dva_arena_current()
  %a.buf1236 = call ptr @dva_arena_alloc(ptr %arena.cur1235, i64 128)
  %a.len.gep1237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 0
  store i64 0, ptr %a.len.gep1237, align 8
  %a.data.gep1238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 1
  store ptr %a.buf1236, ptr %a.data.gep1238, align 8
  %a.cap.gep1239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1239, align 8
  store ptr %a.create1234, ptr %var.locals, align 8
  br label %a.after1232

a.after1232:                                      ; preds = %a.create1231, %choice.case1217
  %a.load21240 = load ptr, ptr %var.locals, align 8
  %var.load1241 = load ptr, ptr %var.refs, align 8
  %a.load1242 = load ptr, ptr %var.refs, align 8
  %a.null1243 = icmp eq ptr %a.load1242, null
  br i1 %a.null1243, label %a.create1244, label %a.after1245

a.create1244:                                     ; preds = %a.after1232
  %arena.cur1246 = call ptr @dva_arena_current()
  %a.create1247 = call ptr @dva_arena_alloc(ptr %arena.cur1246, i64 24)
  %arena.cur1248 = call ptr @dva_arena_current()
  %a.buf1249 = call ptr @dva_arena_alloc(ptr %arena.cur1248, i64 128)
  %a.len.gep1250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1247, i32 0, i32 0
  store i64 0, ptr %a.len.gep1250, align 8
  %a.data.gep1251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1247, i32 0, i32 1
  store ptr %a.buf1249, ptr %a.data.gep1251, align 8
  %a.cap.gep1252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1247, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1252, align 8
  store ptr %a.create1247, ptr %var.refs, align 8
  br label %a.after1245

a.after1245:                                      ; preds = %a.create1244, %a.after1232
  %a.load21253 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1227, ptr %a.load21240, ptr %a.load21253)
  %var.load1254 = load ptr, ptr %var.m, align 8
  %fld.gep1255 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1254, i32 0, i32 3
  %fld.load1256 = load ptr, ptr %fld.gep1255, align 8
  %var.load1257 = load ptr, ptr %var.locals, align 8
  %a.load1258 = load ptr, ptr %var.locals, align 8
  %a.null1259 = icmp eq ptr %a.load1258, null
  br i1 %a.null1259, label %a.create1260, label %a.after1261

a.create1260:                                     ; preds = %a.after1245
  %arena.cur1262 = call ptr @dva_arena_current()
  %a.create1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 24)
  %arena.cur1264 = call ptr @dva_arena_current()
  %a.buf1265 = call ptr @dva_arena_alloc(ptr %arena.cur1264, i64 128)
  %a.len.gep1266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 0
  store i64 0, ptr %a.len.gep1266, align 8
  %a.data.gep1267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 1
  store ptr %a.buf1265, ptr %a.data.gep1267, align 8
  %a.cap.gep1268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1263, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1268, align 8
  store ptr %a.create1263, ptr %var.locals, align 8
  br label %a.after1261

a.after1261:                                      ; preds = %a.create1260, %a.after1245
  %a.load21269 = load ptr, ptr %var.locals, align 8
  %var.load1270 = load ptr, ptr %var.refs, align 8
  %a.load1271 = load ptr, ptr %var.refs, align 8
  %a.null1272 = icmp eq ptr %a.load1271, null
  br i1 %a.null1272, label %a.create1273, label %a.after1274

a.create1273:                                     ; preds = %a.after1261
  %arena.cur1275 = call ptr @dva_arena_current()
  %a.create1276 = call ptr @dva_arena_alloc(ptr %arena.cur1275, i64 24)
  %arena.cur1277 = call ptr @dva_arena_current()
  %a.buf1278 = call ptr @dva_arena_alloc(ptr %arena.cur1277, i64 128)
  %a.len.gep1279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1276, i32 0, i32 0
  store i64 0, ptr %a.len.gep1279, align 8
  %a.data.gep1280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1276, i32 0, i32 1
  store ptr %a.buf1278, ptr %a.data.gep1280, align 8
  %a.cap.gep1281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1276, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1281, align 8
  store ptr %a.create1276, ptr %var.refs, align 8
  br label %a.after1274

a.after1274:                                      ; preds = %a.create1273, %a.after1261
  %a.load21282 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1256, ptr %a.load21269, ptr %a.load21282)
  br label %choice.exit

choice.case1283:                                  ; preds = %choice.next1218
  %pay.gep1288 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1289 = load ptr, ptr %pay.gep1288, align 8
  store ptr %payload.ptr1289, ptr %var._1290, align 8
  store ptr %payload.ptr1289, ptr %var.ka, align 8
  %var.load1291 = load ptr, ptr %var.ka, align 8
  %fld.gep1292 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1291, i32 0, i32 0
  %fld.load1293 = load ptr, ptr %fld.gep1292, align 8
  %var.load1294 = load ptr, ptr %var.locals, align 8
  %a.load1295 = load ptr, ptr %var.locals, align 8
  %a.null1296 = icmp eq ptr %a.load1295, null
  br i1 %a.null1296, label %a.create1297, label %a.after1298

choice.next1284:                                  ; preds = %choice.next1218
  %tag.gep1351 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1352 = load i64, ptr %tag.gep1351, align 8
  %tag.match1353 = icmp eq i64 %tag.id1352, 6
  br i1 %tag.match1353, label %choice.case1349, label %choice.next1350

a.create1297:                                     ; preds = %choice.case1283
  %arena.cur1299 = call ptr @dva_arena_current()
  %a.create1300 = call ptr @dva_arena_alloc(ptr %arena.cur1299, i64 24)
  %arena.cur1301 = call ptr @dva_arena_current()
  %a.buf1302 = call ptr @dva_arena_alloc(ptr %arena.cur1301, i64 128)
  %a.len.gep1303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 0
  store i64 0, ptr %a.len.gep1303, align 8
  %a.data.gep1304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 1
  store ptr %a.buf1302, ptr %a.data.gep1304, align 8
  %a.cap.gep1305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1305, align 8
  store ptr %a.create1300, ptr %var.locals, align 8
  br label %a.after1298

a.after1298:                                      ; preds = %a.create1297, %choice.case1283
  %a.load21306 = load ptr, ptr %var.locals, align 8
  %var.load1307 = load ptr, ptr %var.refs, align 8
  %a.load1308 = load ptr, ptr %var.refs, align 8
  %a.null1309 = icmp eq ptr %a.load1308, null
  br i1 %a.null1309, label %a.create1310, label %a.after1311

a.create1310:                                     ; preds = %a.after1298
  %arena.cur1312 = call ptr @dva_arena_current()
  %a.create1313 = call ptr @dva_arena_alloc(ptr %arena.cur1312, i64 24)
  %arena.cur1314 = call ptr @dva_arena_current()
  %a.buf1315 = call ptr @dva_arena_alloc(ptr %arena.cur1314, i64 128)
  %a.len.gep1316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 0
  store i64 0, ptr %a.len.gep1316, align 8
  %a.data.gep1317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 1
  store ptr %a.buf1315, ptr %a.data.gep1317, align 8
  %a.cap.gep1318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1318, align 8
  store ptr %a.create1313, ptr %var.refs, align 8
  br label %a.after1311

a.after1311:                                      ; preds = %a.create1310, %a.after1298
  %a.load21319 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1293, ptr %a.load21306, ptr %a.load21319)
  %var.load1320 = load ptr, ptr %var.ka, align 8
  %fld.gep1321 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1320, i32 0, i32 1
  %fld.load1322 = load ptr, ptr %fld.gep1321, align 8
  %var.load1323 = load ptr, ptr %var.locals, align 8
  %a.load1324 = load ptr, ptr %var.locals, align 8
  %a.null1325 = icmp eq ptr %a.load1324, null
  br i1 %a.null1325, label %a.create1326, label %a.after1327

a.create1326:                                     ; preds = %a.after1311
  %arena.cur1328 = call ptr @dva_arena_current()
  %a.create1329 = call ptr @dva_arena_alloc(ptr %arena.cur1328, i64 24)
  %arena.cur1330 = call ptr @dva_arena_current()
  %a.buf1331 = call ptr @dva_arena_alloc(ptr %arena.cur1330, i64 128)
  %a.len.gep1332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1329, i32 0, i32 0
  store i64 0, ptr %a.len.gep1332, align 8
  %a.data.gep1333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1329, i32 0, i32 1
  store ptr %a.buf1331, ptr %a.data.gep1333, align 8
  %a.cap.gep1334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1329, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1334, align 8
  store ptr %a.create1329, ptr %var.locals, align 8
  br label %a.after1327

a.after1327:                                      ; preds = %a.create1326, %a.after1311
  %a.load21335 = load ptr, ptr %var.locals, align 8
  %var.load1336 = load ptr, ptr %var.refs, align 8
  %a.load1337 = load ptr, ptr %var.refs, align 8
  %a.null1338 = icmp eq ptr %a.load1337, null
  br i1 %a.null1338, label %a.create1339, label %a.after1340

a.create1339:                                     ; preds = %a.after1327
  %arena.cur1341 = call ptr @dva_arena_current()
  %a.create1342 = call ptr @dva_arena_alloc(ptr %arena.cur1341, i64 24)
  %arena.cur1343 = call ptr @dva_arena_current()
  %a.buf1344 = call ptr @dva_arena_alloc(ptr %arena.cur1343, i64 128)
  %a.len.gep1345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1342, i32 0, i32 0
  store i64 0, ptr %a.len.gep1345, align 8
  %a.data.gep1346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1342, i32 0, i32 1
  store ptr %a.buf1344, ptr %a.data.gep1346, align 8
  %a.cap.gep1347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1342, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1347, align 8
  store ptr %a.create1342, ptr %var.refs, align 8
  br label %a.after1340

a.after1340:                                      ; preds = %a.create1339, %a.after1327
  %a.load21348 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1322, ptr %a.load21335, ptr %a.load21348)
  br label %choice.exit

choice.case1349:                                  ; preds = %choice.next1284
  %pay.gep1354 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1355 = load ptr, ptr %pay.gep1354, align 8
  store ptr %payload.ptr1355, ptr %var._1356, align 8
  store ptr %payload.ptr1355, ptr %var.a1357, align 8
  %var.load1358 = load ptr, ptr %var.a1357, align 8
  %fld.gep1359 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1358, i32 0, i32 5
  %fld.load1360 = load ptr, ptr %fld.gep1359, align 8
  %var.load1361 = load ptr, ptr %var.locals, align 8
  %a.load1362 = load ptr, ptr %var.locals, align 8
  %a.null1363 = icmp eq ptr %a.load1362, null
  br i1 %a.null1363, label %a.create1364, label %a.after1365

choice.next1350:                                  ; preds = %choice.next1284
  %tag.gep1418 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1419 = load i64, ptr %tag.gep1418, align 8
  %tag.match1420 = icmp eq i64 %tag.id1419, 12
  br i1 %tag.match1420, label %choice.case1416, label %choice.next1417

a.create1364:                                     ; preds = %choice.case1349
  %arena.cur1366 = call ptr @dva_arena_current()
  %a.create1367 = call ptr @dva_arena_alloc(ptr %arena.cur1366, i64 24)
  %arena.cur1368 = call ptr @dva_arena_current()
  %a.buf1369 = call ptr @dva_arena_alloc(ptr %arena.cur1368, i64 128)
  %a.len.gep1370 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1367, i32 0, i32 0
  store i64 0, ptr %a.len.gep1370, align 8
  %a.data.gep1371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1367, i32 0, i32 1
  store ptr %a.buf1369, ptr %a.data.gep1371, align 8
  %a.cap.gep1372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1367, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1372, align 8
  store ptr %a.create1367, ptr %var.locals, align 8
  br label %a.after1365

a.after1365:                                      ; preds = %a.create1364, %choice.case1349
  %a.load21373 = load ptr, ptr %var.locals, align 8
  %var.load1374 = load ptr, ptr %var.refs, align 8
  %a.load1375 = load ptr, ptr %var.refs, align 8
  %a.null1376 = icmp eq ptr %a.load1375, null
  br i1 %a.null1376, label %a.create1377, label %a.after1378

a.create1377:                                     ; preds = %a.after1365
  %arena.cur1379 = call ptr @dva_arena_current()
  %a.create1380 = call ptr @dva_arena_alloc(ptr %arena.cur1379, i64 24)
  %arena.cur1381 = call ptr @dva_arena_current()
  %a.buf1382 = call ptr @dva_arena_alloc(ptr %arena.cur1381, i64 128)
  %a.len.gep1383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1380, i32 0, i32 0
  store i64 0, ptr %a.len.gep1383, align 8
  %a.data.gep1384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1380, i32 0, i32 1
  store ptr %a.buf1382, ptr %a.data.gep1384, align 8
  %a.cap.gep1385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1380, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1385, align 8
  store ptr %a.create1380, ptr %var.refs, align 8
  br label %a.after1378

a.after1378:                                      ; preds = %a.create1377, %a.after1365
  %a.load21386 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1360, ptr %a.load21373, ptr %a.load21386)
  %var.load1387 = load ptr, ptr %var.a1357, align 8
  %fld.gep1388 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1387, i32 0, i32 6
  %fld.load1389 = load ptr, ptr %fld.gep1388, align 8
  %var.load1390 = load ptr, ptr %var.locals, align 8
  %a.load1391 = load ptr, ptr %var.locals, align 8
  %a.null1392 = icmp eq ptr %a.load1391, null
  br i1 %a.null1392, label %a.create1393, label %a.after1394

a.create1393:                                     ; preds = %a.after1378
  %arena.cur1395 = call ptr @dva_arena_current()
  %a.create1396 = call ptr @dva_arena_alloc(ptr %arena.cur1395, i64 24)
  %arena.cur1397 = call ptr @dva_arena_current()
  %a.buf1398 = call ptr @dva_arena_alloc(ptr %arena.cur1397, i64 128)
  %a.len.gep1399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 0
  store i64 0, ptr %a.len.gep1399, align 8
  %a.data.gep1400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 1
  store ptr %a.buf1398, ptr %a.data.gep1400, align 8
  %a.cap.gep1401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1396, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1401, align 8
  store ptr %a.create1396, ptr %var.locals, align 8
  br label %a.after1394

a.after1394:                                      ; preds = %a.create1393, %a.after1378
  %a.load21402 = load ptr, ptr %var.locals, align 8
  %var.load1403 = load ptr, ptr %var.refs, align 8
  %a.load1404 = load ptr, ptr %var.refs, align 8
  %a.null1405 = icmp eq ptr %a.load1404, null
  br i1 %a.null1405, label %a.create1406, label %a.after1407

a.create1406:                                     ; preds = %a.after1394
  %arena.cur1408 = call ptr @dva_arena_current()
  %a.create1409 = call ptr @dva_arena_alloc(ptr %arena.cur1408, i64 24)
  %arena.cur1410 = call ptr @dva_arena_current()
  %a.buf1411 = call ptr @dva_arena_alloc(ptr %arena.cur1410, i64 128)
  %a.len.gep1412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 0
  store i64 0, ptr %a.len.gep1412, align 8
  %a.data.gep1413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 1
  store ptr %a.buf1411, ptr %a.data.gep1413, align 8
  %a.cap.gep1414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1409, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1414, align 8
  store ptr %a.create1409, ptr %var.refs, align 8
  br label %a.after1407

a.after1407:                                      ; preds = %a.create1406, %a.after1394
  %a.load21415 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1389, ptr %a.load21402, ptr %a.load21415)
  br label %choice.exit

choice.case1416:                                  ; preds = %choice.next1350
  %pay.gep1421 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1422 = load ptr, ptr %pay.gep1421, align 8
  store ptr %payload.ptr1422, ptr %var._1423, align 8
  store ptr %payload.ptr1422, ptr %var.cy, align 8
  %var.load1424 = load ptr, ptr %var.cy, align 8
  %fld.gep1425 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1424, i32 0, i32 0
  %fld.load1426 = load ptr, ptr %fld.gep1425, align 8
  %var.load1427 = load ptr, ptr %var.locals, align 8
  %a.load1428 = load ptr, ptr %var.locals, align 8
  %a.null1429 = icmp eq ptr %a.load1428, null
  br i1 %a.null1429, label %a.create1430, label %a.after1431

choice.next1417:                                  ; preds = %choice.next1350
  %tag.gep1484 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1485 = load i64, ptr %tag.gep1484, align 8
  %tag.match1486 = icmp eq i64 %tag.id1485, 11
  br i1 %tag.match1486, label %choice.case1482, label %choice.next1483

a.create1430:                                     ; preds = %choice.case1416
  %arena.cur1432 = call ptr @dva_arena_current()
  %a.create1433 = call ptr @dva_arena_alloc(ptr %arena.cur1432, i64 24)
  %arena.cur1434 = call ptr @dva_arena_current()
  %a.buf1435 = call ptr @dva_arena_alloc(ptr %arena.cur1434, i64 128)
  %a.len.gep1436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 0
  store i64 0, ptr %a.len.gep1436, align 8
  %a.data.gep1437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 1
  store ptr %a.buf1435, ptr %a.data.gep1437, align 8
  %a.cap.gep1438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1438, align 8
  store ptr %a.create1433, ptr %var.locals, align 8
  br label %a.after1431

a.after1431:                                      ; preds = %a.create1430, %choice.case1416
  %a.load21439 = load ptr, ptr %var.locals, align 8
  %var.load1440 = load ptr, ptr %var.refs, align 8
  %a.load1441 = load ptr, ptr %var.refs, align 8
  %a.null1442 = icmp eq ptr %a.load1441, null
  br i1 %a.null1442, label %a.create1443, label %a.after1444

a.create1443:                                     ; preds = %a.after1431
  %arena.cur1445 = call ptr @dva_arena_current()
  %a.create1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 24)
  %arena.cur1447 = call ptr @dva_arena_current()
  %a.buf1448 = call ptr @dva_arena_alloc(ptr %arena.cur1447, i64 128)
  %a.len.gep1449 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1446, i32 0, i32 0
  store i64 0, ptr %a.len.gep1449, align 8
  %a.data.gep1450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1446, i32 0, i32 1
  store ptr %a.buf1448, ptr %a.data.gep1450, align 8
  %a.cap.gep1451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1446, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1451, align 8
  store ptr %a.create1446, ptr %var.refs, align 8
  br label %a.after1444

a.after1444:                                      ; preds = %a.create1443, %a.after1431
  %a.load21452 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1426, ptr %a.load21439, ptr %a.load21452)
  %var.load1453 = load ptr, ptr %var.cy, align 8
  %fld.gep1454 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1453, i32 0, i32 1
  %fld.load1455 = load ptr, ptr %fld.gep1454, align 8
  %var.load1456 = load ptr, ptr %var.locals, align 8
  %a.load1457 = load ptr, ptr %var.locals, align 8
  %a.null1458 = icmp eq ptr %a.load1457, null
  br i1 %a.null1458, label %a.create1459, label %a.after1460

a.create1459:                                     ; preds = %a.after1444
  %arena.cur1461 = call ptr @dva_arena_current()
  %a.create1462 = call ptr @dva_arena_alloc(ptr %arena.cur1461, i64 24)
  %arena.cur1463 = call ptr @dva_arena_current()
  %a.buf1464 = call ptr @dva_arena_alloc(ptr %arena.cur1463, i64 128)
  %a.len.gep1465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1462, i32 0, i32 0
  store i64 0, ptr %a.len.gep1465, align 8
  %a.data.gep1466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1462, i32 0, i32 1
  store ptr %a.buf1464, ptr %a.data.gep1466, align 8
  %a.cap.gep1467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1462, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1467, align 8
  store ptr %a.create1462, ptr %var.locals, align 8
  br label %a.after1460

a.after1460:                                      ; preds = %a.create1459, %a.after1444
  %a.load21468 = load ptr, ptr %var.locals, align 8
  %var.load1469 = load ptr, ptr %var.refs, align 8
  %a.load1470 = load ptr, ptr %var.refs, align 8
  %a.null1471 = icmp eq ptr %a.load1470, null
  br i1 %a.null1471, label %a.create1472, label %a.after1473

a.create1472:                                     ; preds = %a.after1460
  %arena.cur1474 = call ptr @dva_arena_current()
  %a.create1475 = call ptr @dva_arena_alloc(ptr %arena.cur1474, i64 24)
  %arena.cur1476 = call ptr @dva_arena_current()
  %a.buf1477 = call ptr @dva_arena_alloc(ptr %arena.cur1476, i64 128)
  %a.len.gep1478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1475, i32 0, i32 0
  store i64 0, ptr %a.len.gep1478, align 8
  %a.data.gep1479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1475, i32 0, i32 1
  store ptr %a.buf1477, ptr %a.data.gep1479, align 8
  %a.cap.gep1480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1475, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1480, align 8
  store ptr %a.create1475, ptr %var.refs, align 8
  br label %a.after1473

a.after1473:                                      ; preds = %a.create1472, %a.after1460
  %a.load21481 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1455, ptr %a.load21468, ptr %a.load21481)
  br label %choice.exit

choice.case1482:                                  ; preds = %choice.next1417
  %pay.gep1487 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1488 = load ptr, ptr %pay.gep1487, align 8
  store ptr %payload.ptr1488, ptr %var._1489, align 8
  store ptr %payload.ptr1488, ptr %var.ce, align 8
  %var.load1490 = load ptr, ptr %var.ce, align 8
  %fld.gep1491 = getelementptr inbounds { ptr, ptr }, ptr %var.load1490, i32 0, i32 0
  %fld.load1492 = load ptr, ptr %fld.gep1491, align 8
  %var.load1493 = load ptr, ptr %var.locals, align 8
  %a.load1494 = load ptr, ptr %var.locals, align 8
  %a.null1495 = icmp eq ptr %a.load1494, null
  br i1 %a.null1495, label %a.create1496, label %a.after1497

choice.next1483:                                  ; preds = %choice.next1417
  %tag.gep1550 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1551 = load i64, ptr %tag.gep1550, align 8
  %tag.match1552 = icmp eq i64 %tag.id1551, 13
  br i1 %tag.match1552, label %choice.case1548, label %choice.next1549

a.create1496:                                     ; preds = %choice.case1482
  %arena.cur1498 = call ptr @dva_arena_current()
  %a.create1499 = call ptr @dva_arena_alloc(ptr %arena.cur1498, i64 24)
  %arena.cur1500 = call ptr @dva_arena_current()
  %a.buf1501 = call ptr @dva_arena_alloc(ptr %arena.cur1500, i64 128)
  %a.len.gep1502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1499, i32 0, i32 0
  store i64 0, ptr %a.len.gep1502, align 8
  %a.data.gep1503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1499, i32 0, i32 1
  store ptr %a.buf1501, ptr %a.data.gep1503, align 8
  %a.cap.gep1504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1499, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1504, align 8
  store ptr %a.create1499, ptr %var.locals, align 8
  br label %a.after1497

a.after1497:                                      ; preds = %a.create1496, %choice.case1482
  %a.load21505 = load ptr, ptr %var.locals, align 8
  %var.load1506 = load ptr, ptr %var.refs, align 8
  %a.load1507 = load ptr, ptr %var.refs, align 8
  %a.null1508 = icmp eq ptr %a.load1507, null
  br i1 %a.null1508, label %a.create1509, label %a.after1510

a.create1509:                                     ; preds = %a.after1497
  %arena.cur1511 = call ptr @dva_arena_current()
  %a.create1512 = call ptr @dva_arena_alloc(ptr %arena.cur1511, i64 24)
  %arena.cur1513 = call ptr @dva_arena_current()
  %a.buf1514 = call ptr @dva_arena_alloc(ptr %arena.cur1513, i64 128)
  %a.len.gep1515 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 0
  store i64 0, ptr %a.len.gep1515, align 8
  %a.data.gep1516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 1
  store ptr %a.buf1514, ptr %a.data.gep1516, align 8
  %a.cap.gep1517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1512, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1517, align 8
  store ptr %a.create1512, ptr %var.refs, align 8
  br label %a.after1510

a.after1510:                                      ; preds = %a.create1509, %a.after1497
  %a.load21518 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1492, ptr %a.load21505, ptr %a.load21518)
  %var.load1519 = load ptr, ptr %var.ce, align 8
  %fld.gep1520 = getelementptr inbounds { ptr, ptr }, ptr %var.load1519, i32 0, i32 1
  %fld.load1521 = load ptr, ptr %fld.gep1520, align 8
  %var.load1522 = load ptr, ptr %var.locals, align 8
  %a.load1523 = load ptr, ptr %var.locals, align 8
  %a.null1524 = icmp eq ptr %a.load1523, null
  br i1 %a.null1524, label %a.create1525, label %a.after1526

a.create1525:                                     ; preds = %a.after1510
  %arena.cur1527 = call ptr @dva_arena_current()
  %a.create1528 = call ptr @dva_arena_alloc(ptr %arena.cur1527, i64 24)
  %arena.cur1529 = call ptr @dva_arena_current()
  %a.buf1530 = call ptr @dva_arena_alloc(ptr %arena.cur1529, i64 128)
  %a.len.gep1531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1528, i32 0, i32 0
  store i64 0, ptr %a.len.gep1531, align 8
  %a.data.gep1532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1528, i32 0, i32 1
  store ptr %a.buf1530, ptr %a.data.gep1532, align 8
  %a.cap.gep1533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1528, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1533, align 8
  store ptr %a.create1528, ptr %var.locals, align 8
  br label %a.after1526

a.after1526:                                      ; preds = %a.create1525, %a.after1510
  %a.load21534 = load ptr, ptr %var.locals, align 8
  %var.load1535 = load ptr, ptr %var.refs, align 8
  %a.load1536 = load ptr, ptr %var.refs, align 8
  %a.null1537 = icmp eq ptr %a.load1536, null
  br i1 %a.null1537, label %a.create1538, label %a.after1539

a.create1538:                                     ; preds = %a.after1526
  %arena.cur1540 = call ptr @dva_arena_current()
  %a.create1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 24)
  %arena.cur1542 = call ptr @dva_arena_current()
  %a.buf1543 = call ptr @dva_arena_alloc(ptr %arena.cur1542, i64 128)
  %a.len.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 0
  store i64 0, ptr %a.len.gep1544, align 8
  %a.data.gep1545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 1
  store ptr %a.buf1543, ptr %a.data.gep1545, align 8
  %a.cap.gep1546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1546, align 8
  store ptr %a.create1541, ptr %var.refs, align 8
  br label %a.after1539

a.after1539:                                      ; preds = %a.create1538, %a.after1526
  %a.load21547 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1521, ptr %a.load21534, ptr %a.load21547)
  br label %choice.exit

choice.case1548:                                  ; preds = %choice.next1483
  %pay.gep1553 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1554 = load ptr, ptr %pay.gep1553, align 8
  store ptr %payload.ptr1554, ptr %var._1555, align 8
  store ptr %payload.ptr1554, ptr %var.r, align 8
  %var.load1556 = load ptr, ptr %var.r, align 8
  %fld.gep1557 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1556, i32 0, i32 0
  %fld.load1558 = load i1, ptr %fld.gep1557, align 1
  br i1 %fld.load1558, label %choice.then1559, label %choice.exit1560

choice.next1549:                                  ; preds = %choice.next1483
  %tag.gep1705 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1706 = load i64, ptr %tag.gep1705, align 8
  %tag.match1707 = icmp eq i64 %tag.id1706, 36
  br i1 %tag.match1707, label %choice.case1703, label %choice.next1704

choice.then1559:                                  ; preds = %choice.case1548
  %var.load1561 = load ptr, ptr %var.r, align 8
  %fld.gep1562 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1561, i32 0, i32 2
  %fld.load1563 = load ptr, ptr %fld.gep1562, align 8
  %var.load1564 = load ptr, ptr %var.locals, align 8
  %a.load1565 = load ptr, ptr %var.locals, align 8
  %a.null1566 = icmp eq ptr %a.load1565, null
  br i1 %a.null1566, label %a.create1567, label %a.after1568

choice.exit1560:                                  ; preds = %a.after1581, %choice.case1548
  %var.load1590 = load ptr, ptr %var.r, align 8
  %fld.gep1591 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1590, i32 0, i32 1
  %fld.load1592 = load i1, ptr %fld.gep1591, align 1
  br i1 %fld.load1592, label %choice.then1593, label %choice.exit1594

a.create1567:                                     ; preds = %choice.then1559
  %arena.cur1569 = call ptr @dva_arena_current()
  %a.create1570 = call ptr @dva_arena_alloc(ptr %arena.cur1569, i64 24)
  %arena.cur1571 = call ptr @dva_arena_current()
  %a.buf1572 = call ptr @dva_arena_alloc(ptr %arena.cur1571, i64 128)
  %a.len.gep1573 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 0
  store i64 0, ptr %a.len.gep1573, align 8
  %a.data.gep1574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 1
  store ptr %a.buf1572, ptr %a.data.gep1574, align 8
  %a.cap.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1575, align 8
  store ptr %a.create1570, ptr %var.locals, align 8
  br label %a.after1568

a.after1568:                                      ; preds = %a.create1567, %choice.then1559
  %a.load21576 = load ptr, ptr %var.locals, align 8
  %var.load1577 = load ptr, ptr %var.refs, align 8
  %a.load1578 = load ptr, ptr %var.refs, align 8
  %a.null1579 = icmp eq ptr %a.load1578, null
  br i1 %a.null1579, label %a.create1580, label %a.after1581

a.create1580:                                     ; preds = %a.after1568
  %arena.cur1582 = call ptr @dva_arena_current()
  %a.create1583 = call ptr @dva_arena_alloc(ptr %arena.cur1582, i64 24)
  %arena.cur1584 = call ptr @dva_arena_current()
  %a.buf1585 = call ptr @dva_arena_alloc(ptr %arena.cur1584, i64 128)
  %a.len.gep1586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1583, i32 0, i32 0
  store i64 0, ptr %a.len.gep1586, align 8
  %a.data.gep1587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1583, i32 0, i32 1
  store ptr %a.buf1585, ptr %a.data.gep1587, align 8
  %a.cap.gep1588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1583, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1588, align 8
  store ptr %a.create1583, ptr %var.refs, align 8
  br label %a.after1581

a.after1581:                                      ; preds = %a.create1580, %a.after1568
  %a.load21589 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1563, ptr %a.load21576, ptr %a.load21589)
  br label %choice.exit1560

choice.then1593:                                  ; preds = %choice.exit1560
  %var.load1595 = load ptr, ptr %var.r, align 8
  %fld.gep1596 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1595, i32 0, i32 3
  %fld.load1597 = load ptr, ptr %fld.gep1596, align 8
  %tag.gep1601 = getelementptr inbounds { i64, ptr }, ptr %fld.load1597, i32 0, i32 0
  %tag.id1602 = load i64, ptr %tag.gep1601, align 8
  %tag.match1603 = icmp eq i64 %tag.id1602, 3
  br i1 %tag.match1603, label %choice.case1599, label %choice.next1600

choice.exit1594:                                  ; preds = %choice.exit1598, %choice.exit1560
  br label %choice.exit

choice.exit1598:                                  ; preds = %a.after1694, %choice.exit1644
  br label %choice.exit1594

choice.case1599:                                  ; preds = %choice.then1593
  %pay.gep1604 = getelementptr inbounds { i64, ptr }, ptr %fld.load1597, i32 0, i32 1
  %payload.ptr1605 = load ptr, ptr %pay.gep1604, align 8
  store ptr %payload.ptr1605, ptr %var._1606, align 8
  store ptr %payload.ptr1605, ptr %var.v1607, align 8
  %var.load1608 = load ptr, ptr %var.v1607, align 8
  %eq.lhs.len1609 = getelementptr inbounds { i64, ptr }, ptr %var.load1608, i32 0, i32 0
  %eq.lhs.len1610 = load i64, ptr %eq.lhs.len1609, align 8
  %eq.lhs.len1611 = and i64 %eq.lhs.len1610, 281474976710655
  %str.tag1612 = lshr i64 %eq.lhs.len1610, 48
  %str.immortal1613 = icmp eq i64 %str.tag1612, 0
  br i1 %str.immortal1613, label %str_ok1615, label %str_gen_check1614

choice.next1600:                                  ; preds = %choice.then1593
  %var.load1674 = load ptr, ptr %var.r, align 8
  %fld.gep1675 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1674, i32 0, i32 3
  %fld.load1676 = load ptr, ptr %fld.gep1675, align 8
  %var.load1677 = load ptr, ptr %var.locals, align 8
  %a.load1678 = load ptr, ptr %var.locals, align 8
  %a.null1679 = icmp eq ptr %a.load1678, null
  br i1 %a.null1679, label %a.create1680, label %a.after1681

str_gen_check1614:                                ; preds = %choice.case1599
  %arena.cur1617 = call ptr @dva_arena_current()
  %tag.valid1618 = call i1 @dva_arena_validate_tag(ptr %arena.cur1617, i64 %str.tag1612)
  br i1 %tag.valid1618, label %str_ok1615, label %str_stale1616

str_ok1615:                                       ; preds = %str_stale1616, %str_gen_check1614, %choice.case1599
  %eq.rhs.len1619 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1620 = and i64 %eq.rhs.len1619, 281474976710655
  %str.tag1621 = lshr i64 %eq.rhs.len1619, 48
  %str.immortal1622 = icmp eq i64 %str.tag1621, 0
  br i1 %str.immortal1622, label %str_ok1624, label %str_gen_check1623

str_stale1616:                                    ; preds = %str_gen_check1614
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1615

str_gen_check1623:                                ; preds = %str_ok1615
  %arena.cur1626 = call ptr @dva_arena_current()
  %tag.valid1627 = call i1 @dva_arena_validate_tag(ptr %arena.cur1626, i64 %str.tag1621)
  br i1 %tag.valid1627, label %str_ok1624, label %str_stale1625

str_ok1624:                                       ; preds = %str_stale1625, %str_gen_check1623, %str_ok1615
  %eq.len1628 = icmp eq i64 %eq.lhs.len1611, %eq.rhs.len1620
  br i1 %eq.len1628, label %str.eq.then1629, label %str.eq.else1630

str_stale1625:                                    ; preds = %str_gen_check1623
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1624

str.eq.then1629:                                  ; preds = %str_ok1624
  %eq.lhs.data1632 = getelementptr inbounds { i64, ptr }, ptr %var.load1608, i32 0, i32 1
  %eq.lhs.data1633 = load ptr, ptr %eq.lhs.data1632, align 8
  %eq.rhs.data1634 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1635 = call i32 @memcmp(ptr %eq.lhs.data1633, ptr %eq.rhs.data1634, i64 %eq.lhs.len1611)
  %eq.cmp.zero1636 = icmp eq i32 %eq.memcmp1635, 0
  br label %str.eq.merge1631

str.eq.else1630:                                  ; preds = %str_ok1624
  br label %str.eq.merge1631

str.eq.merge1631:                                 ; preds = %str.eq.else1630, %str.eq.then1629
  %str.eq.result1637 = phi i1 [ %eq.cmp.zero1636, %str.eq.then1629 ], [ false, %str.eq.else1630 ]
  br i1 %str.eq.result1637, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %str.eq.merge1631
  %var.load1638 = load ptr, ptr %var.r, align 8
  %fld.gep1639 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1638, i32 0, i32 0
  %fld.load1640 = load i1, ptr %fld.gep1639, align 1
  %nottmp1641 = xor i1 %fld.load1640, true
  br label %and.14.exit

and.14.else:                                      ; preds = %str.eq.merge1631
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %nottmp1641, %and.14.then ], [ %str.eq.result1637, %and.14.else ]
  %nottmp1642 = xor i1 %and.14.phi, true
  br i1 %nottmp1642, label %choice.then1643, label %choice.exit1644

choice.then1643:                                  ; preds = %and.14.exit
  %var.load1645 = load ptr, ptr %var.r, align 8
  %fld.gep1646 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1645, i32 0, i32 3
  %fld.load1647 = load ptr, ptr %fld.gep1646, align 8
  %var.load1648 = load ptr, ptr %var.locals, align 8
  %a.load1649 = load ptr, ptr %var.locals, align 8
  %a.null1650 = icmp eq ptr %a.load1649, null
  br i1 %a.null1650, label %a.create1651, label %a.after1652

choice.exit1644:                                  ; preds = %a.after1665, %and.14.exit
  br label %choice.exit1598

a.create1651:                                     ; preds = %choice.then1643
  %arena.cur1653 = call ptr @dva_arena_current()
  %a.create1654 = call ptr @dva_arena_alloc(ptr %arena.cur1653, i64 24)
  %arena.cur1655 = call ptr @dva_arena_current()
  %a.buf1656 = call ptr @dva_arena_alloc(ptr %arena.cur1655, i64 128)
  %a.len.gep1657 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1654, i32 0, i32 0
  store i64 0, ptr %a.len.gep1657, align 8
  %a.data.gep1658 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1654, i32 0, i32 1
  store ptr %a.buf1656, ptr %a.data.gep1658, align 8
  %a.cap.gep1659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1654, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1659, align 8
  store ptr %a.create1654, ptr %var.locals, align 8
  br label %a.after1652

a.after1652:                                      ; preds = %a.create1651, %choice.then1643
  %a.load21660 = load ptr, ptr %var.locals, align 8
  %var.load1661 = load ptr, ptr %var.refs, align 8
  %a.load1662 = load ptr, ptr %var.refs, align 8
  %a.null1663 = icmp eq ptr %a.load1662, null
  br i1 %a.null1663, label %a.create1664, label %a.after1665

a.create1664:                                     ; preds = %a.after1652
  %arena.cur1666 = call ptr @dva_arena_current()
  %a.create1667 = call ptr @dva_arena_alloc(ptr %arena.cur1666, i64 24)
  %arena.cur1668 = call ptr @dva_arena_current()
  %a.buf1669 = call ptr @dva_arena_alloc(ptr %arena.cur1668, i64 128)
  %a.len.gep1670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1667, i32 0, i32 0
  store i64 0, ptr %a.len.gep1670, align 8
  %a.data.gep1671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1667, i32 0, i32 1
  store ptr %a.buf1669, ptr %a.data.gep1671, align 8
  %a.cap.gep1672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1667, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1672, align 8
  store ptr %a.create1667, ptr %var.refs, align 8
  br label %a.after1665

a.after1665:                                      ; preds = %a.create1664, %a.after1652
  %a.load21673 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1647, ptr %a.load21660, ptr %a.load21673)
  br label %choice.exit1644

a.create1680:                                     ; preds = %choice.next1600
  %arena.cur1682 = call ptr @dva_arena_current()
  %a.create1683 = call ptr @dva_arena_alloc(ptr %arena.cur1682, i64 24)
  %arena.cur1684 = call ptr @dva_arena_current()
  %a.buf1685 = call ptr @dva_arena_alloc(ptr %arena.cur1684, i64 128)
  %a.len.gep1686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1683, i32 0, i32 0
  store i64 0, ptr %a.len.gep1686, align 8
  %a.data.gep1687 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1683, i32 0, i32 1
  store ptr %a.buf1685, ptr %a.data.gep1687, align 8
  %a.cap.gep1688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1683, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1688, align 8
  store ptr %a.create1683, ptr %var.locals, align 8
  br label %a.after1681

a.after1681:                                      ; preds = %a.create1680, %choice.next1600
  %a.load21689 = load ptr, ptr %var.locals, align 8
  %var.load1690 = load ptr, ptr %var.refs, align 8
  %a.load1691 = load ptr, ptr %var.refs, align 8
  %a.null1692 = icmp eq ptr %a.load1691, null
  br i1 %a.null1692, label %a.create1693, label %a.after1694

a.create1693:                                     ; preds = %a.after1681
  %arena.cur1695 = call ptr @dva_arena_current()
  %a.create1696 = call ptr @dva_arena_alloc(ptr %arena.cur1695, i64 24)
  %arena.cur1697 = call ptr @dva_arena_current()
  %a.buf1698 = call ptr @dva_arena_alloc(ptr %arena.cur1697, i64 128)
  %a.len.gep1699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 0
  store i64 0, ptr %a.len.gep1699, align 8
  %a.data.gep1700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 1
  store ptr %a.buf1698, ptr %a.data.gep1700, align 8
  %a.cap.gep1701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1696, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1701, align 8
  store ptr %a.create1696, ptr %var.refs, align 8
  br label %a.after1694

a.after1694:                                      ; preds = %a.create1693, %a.after1681
  %a.load21702 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1676, ptr %a.load21689, ptr %a.load21702)
  br label %choice.exit1598

choice.case1703:                                  ; preds = %choice.next1549
  %pay.gep1708 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1709 = load ptr, ptr %pay.gep1708, align 8
  store ptr %payload.ptr1709, ptr %var._1710, align 8
  store ptr %payload.ptr1709, ptr %var.na, align 8
  %var.load1711 = load ptr, ptr %var.na, align 8
  %fld.gep1712 = getelementptr inbounds { ptr, ptr }, ptr %var.load1711, i32 0, i32 1
  %fld.load1713 = load ptr, ptr %fld.gep1712, align 8
  %var.load1714 = load ptr, ptr %var.locals, align 8
  %a.load1715 = load ptr, ptr %var.locals, align 8
  %a.null1716 = icmp eq ptr %a.load1715, null
  br i1 %a.null1716, label %a.create1717, label %a.after1718

choice.next1704:                                  ; preds = %choice.next1549
  %tag.gep1742 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1743 = load i64, ptr %tag.gep1742, align 8
  %tag.match1744 = icmp eq i64 %tag.id1743, 18
  br i1 %tag.match1744, label %choice.case1740, label %choice.next1741

a.create1717:                                     ; preds = %choice.case1703
  %arena.cur1719 = call ptr @dva_arena_current()
  %a.create1720 = call ptr @dva_arena_alloc(ptr %arena.cur1719, i64 24)
  %arena.cur1721 = call ptr @dva_arena_current()
  %a.buf1722 = call ptr @dva_arena_alloc(ptr %arena.cur1721, i64 128)
  %a.len.gep1723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1720, i32 0, i32 0
  store i64 0, ptr %a.len.gep1723, align 8
  %a.data.gep1724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1720, i32 0, i32 1
  store ptr %a.buf1722, ptr %a.data.gep1724, align 8
  %a.cap.gep1725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1720, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1725, align 8
  store ptr %a.create1720, ptr %var.locals, align 8
  br label %a.after1718

a.after1718:                                      ; preds = %a.create1717, %choice.case1703
  %a.load21726 = load ptr, ptr %var.locals, align 8
  %var.load1727 = load ptr, ptr %var.refs, align 8
  %a.load1728 = load ptr, ptr %var.refs, align 8
  %a.null1729 = icmp eq ptr %a.load1728, null
  br i1 %a.null1729, label %a.create1730, label %a.after1731

a.create1730:                                     ; preds = %a.after1718
  %arena.cur1732 = call ptr @dva_arena_current()
  %a.create1733 = call ptr @dva_arena_alloc(ptr %arena.cur1732, i64 24)
  %arena.cur1734 = call ptr @dva_arena_current()
  %a.buf1735 = call ptr @dva_arena_alloc(ptr %arena.cur1734, i64 128)
  %a.len.gep1736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1733, i32 0, i32 0
  store i64 0, ptr %a.len.gep1736, align 8
  %a.data.gep1737 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1733, i32 0, i32 1
  store ptr %a.buf1735, ptr %a.data.gep1737, align 8
  %a.cap.gep1738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1733, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1738, align 8
  store ptr %a.create1733, ptr %var.refs, align 8
  br label %a.after1731

a.after1731:                                      ; preds = %a.create1730, %a.after1718
  %a.load21739 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1713, ptr %a.load21726, ptr %a.load21739)
  br label %choice.exit

choice.case1740:                                  ; preds = %choice.next1704
  %pay.gep1745 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1746 = load ptr, ptr %pay.gep1745, align 8
  store ptr %payload.ptr1746, ptr %var._1747, align 8
  store ptr %payload.ptr1746, ptr %var.v1748, align 8
  %var.load1749 = load ptr, ptr %var.v1748, align 8
  %fld.gep1750 = getelementptr inbounds { ptr, ptr }, ptr %var.load1749, i32 0, i32 1
  %fld.load1751 = load ptr, ptr %fld.gep1750, align 8
  %a.len.query1752 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1751, i32 0, i32 0
  %a.len.query1753 = load i64, ptr %a.len.query1752, align 8
  store i64 0, ptr %loop.idx.15, align 8
  br label %loop.header.15

choice.next1741:                                  ; preds = %choice.next1704
  %tag.gep1852 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1853 = load i64, ptr %tag.gep1852, align 8
  %tag.match1854 = icmp eq i64 %tag.id1853, 25
  br i1 %tag.match1854, label %choice.case1850, label %choice.next1851

loop.header.15:                                   ; preds = %loop.latch.15, %choice.case1740
  %counter.load1755 = load i64, ptr %loop.idx.15, align 8
  %loop.cond1756 = icmp slt i64 %counter.load1755, %a.len.query1753
  br i1 %loop.cond1756, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i1757 = sub i64 %counter.load1755, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i1757, ptr %var._i1758, align 8
  store i64 %counter.load1755, ptr %var._1747, align 8
  store i64 %counter.load1755, ptr %var.i1754, align 8
  %var.load1759 = load ptr, ptr %var.v1748, align 8
  %fld.gep1760 = getelementptr inbounds { ptr, ptr }, ptr %var.load1759, i32 0, i32 1
  %fld.load1761 = load ptr, ptr %fld.gep1760, align 8
  %var.load1762 = load i64, ptr %var.i1754, align 8
  %a.rd.nonnull1763 = icmp ne ptr %fld.load1761, null
  br i1 %a.rd.nonnull1763, label %a.rd.check1764, label %a.rd.err.null1766

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %a.after1839
  %step.val1848 = load i64, ptr %loop.step.15, align 8
  %loop.next1849 = add i64 %counter.load1755, %step.val1848
  store i64 %loop.next1849, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit

a.rd.check1764:                                   ; preds = %loop.body.15
  %a.rd.len1769 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1761, i32 0, i32 0
  %a.rd.len1770 = load i64, ptr %a.rd.len1769, align 8
  %a.rd.ge01771 = icmp sge i64 %var.load1762, 0
  %a.rd.lt1772 = icmp slt i64 %var.load1762, %a.rd.len1770
  %a.rd.bounds1773 = and i1 %a.rd.ge01771, %a.rd.lt1772
  br i1 %a.rd.bounds1773, label %a.rd.ok1765, label %a.rd.err.oob1767

a.rd.ok1765:                                      ; preds = %a.rd.check1764
  %a.rd.data1774 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1761, i32 0, i32 1
  %a.rd.data1775 = load ptr, ptr %a.rd.data1774, align 8
  %a.rd.elem.gep1776 = getelementptr i64, ptr %a.rd.data1775, i64 %var.load1762
  %a.rd.elem1777 = load i64, ptr %a.rd.elem.gep1776, align 8
  br label %a.rd.done1768

a.rd.err.null1766:                                ; preds = %loop.body.15
  %arena.cur1778 = call ptr @dva_arena_current()
  %err.alloc1779 = call ptr @dva_arena_alloc(ptr %arena.cur1778, i64 56)
  %err.code.gep1780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1780, align 8
  %err.msg.gep1781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1781, align 8
  %err.file.gep1782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1782, align 8
  %err.line.gep1783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 3
  store i64 0, ptr %err.line.gep1783, align 8
  %err.col.gep1784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 4
  store i64 0, ptr %err.col.gep1784, align 8
  %err.ctx.gep1785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 5
  %err.ctx0.gep1786 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1785, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1786, align 8
  %err.ctx1.gep1787 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1785, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1787, align 8
  %err.p2i1788 = ptrtoint ptr %err.alloc1779 to i64
  br label %a.rd.done1768

a.rd.err.oob1767:                                 ; preds = %a.rd.check1764
  %arena.cur1789 = call ptr @dva_arena_current()
  %err.alloc1790 = call ptr @dva_arena_alloc(ptr %arena.cur1789, i64 56)
  %err.code.gep1791 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1791, align 8
  %err.msg.gep1792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1792, align 8
  %err.file.gep1793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1793, align 8
  %err.line.gep1794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 3
  store i64 0, ptr %err.line.gep1794, align 8
  %err.col.gep1795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 4
  store i64 0, ptr %err.col.gep1795, align 8
  %err.ctx.gep1796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1790, i32 0, i32 5
  %err.ctx0.gep1797 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1796, i32 0, i32 0
  store i64 %var.load1762, ptr %err.ctx0.gep1797, align 8
  %err.ctx1.gep1798 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1796, i32 0, i32 1
  store i64 %a.rd.len1770, ptr %err.ctx1.gep1798, align 8
  %err.p2i1799 = ptrtoint ptr %err.alloc1790 to i64
  br label %a.rd.done1768

a.rd.done1768:                                    ; preds = %a.rd.err.oob1767, %a.rd.err.null1766, %a.rd.ok1765
  %a.rd.tag1800 = phi i1 [ true, %a.rd.ok1765 ], [ false, %a.rd.err.null1766 ], [ false, %a.rd.err.oob1767 ]
  %a.rd.pay1801 = phi i64 [ %a.rd.elem1777, %a.rd.ok1765 ], [ %err.p2i1788, %a.rd.err.null1766 ], [ %err.p2i1799, %a.rd.err.oob1767 ]
  %ram.tag1802 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1800, 0
  %ram.pay1803 = insertvalue { i1, i64 } %ram.tag1802, i64 %a.rd.pay1801, 1
  %ram.tag1804 = extractvalue { i1, i64 } %ram.pay1803, 0
  br i1 %ram.tag1804, label %choice.then1805, label %choice.else1806

choice.then1805:                                  ; preds = %a.rd.done1768
  %ram.pay1808 = extractvalue { i1, i64 } %ram.pay1803, 1
  %pay.ptr1809 = inttoptr i64 %ram.pay1808 to ptr
  store ptr %pay.ptr1809, ptr %var._1810, align 8
  br label %choice.exit1807

choice.else1806:                                  ; preds = %a.rd.done1768
  %ram.pay1811 = extractvalue { i1, i64 } %ram.pay1803, 1
  %pay.ptr1812 = inttoptr i64 %ram.pay1811 to ptr
  store ptr %pay.ptr1812, ptr %var._1813, align 8
  %arena.cur1814 = call ptr @dva_arena_current()
  %enum.alloc1815 = call ptr @dva_arena_alloc(ptr %arena.cur1814, i64 16)
  %tag.gep1816 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1815, i32 0, i32 0
  store i64 0, ptr %tag.gep1816, align 8
  %pay.gep1817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1815, i32 0, i32 1
  %arena.cur1818 = call ptr @dva_arena_current()
  %enum.pay.alloc1819 = call ptr @dva_arena_alloc(ptr %arena.cur1818, i64 8)
  store i64 0, ptr %enum.pay.alloc1819, align 8
  store ptr %enum.pay.alloc1819, ptr %pay.gep1817, align 8
  br label %choice.exit1807

choice.exit1807:                                  ; preds = %choice.else1806, %choice.then1805
  %choice.res1820 = phi ptr [ %pay.ptr1809, %choice.then1805 ], [ %enum.alloc1815, %choice.else1806 ]
  store ptr %choice.res1820, ptr %var.varg, align 8
  %var.load1821 = load ptr, ptr %var.varg, align 8
  %var.load1822 = load ptr, ptr %var.locals, align 8
  %a.load1823 = load ptr, ptr %var.locals, align 8
  %a.null1824 = icmp eq ptr %a.load1823, null
  br i1 %a.null1824, label %a.create1825, label %a.after1826

a.create1825:                                     ; preds = %choice.exit1807
  %arena.cur1827 = call ptr @dva_arena_current()
  %a.create1828 = call ptr @dva_arena_alloc(ptr %arena.cur1827, i64 24)
  %arena.cur1829 = call ptr @dva_arena_current()
  %a.buf1830 = call ptr @dva_arena_alloc(ptr %arena.cur1829, i64 128)
  %a.len.gep1831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1828, i32 0, i32 0
  store i64 0, ptr %a.len.gep1831, align 8
  %a.data.gep1832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1828, i32 0, i32 1
  store ptr %a.buf1830, ptr %a.data.gep1832, align 8
  %a.cap.gep1833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1828, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1833, align 8
  store ptr %a.create1828, ptr %var.locals, align 8
  br label %a.after1826

a.after1826:                                      ; preds = %a.create1825, %choice.exit1807
  %a.load21834 = load ptr, ptr %var.locals, align 8
  %var.load1835 = load ptr, ptr %var.refs, align 8
  %a.load1836 = load ptr, ptr %var.refs, align 8
  %a.null1837 = icmp eq ptr %a.load1836, null
  br i1 %a.null1837, label %a.create1838, label %a.after1839

a.create1838:                                     ; preds = %a.after1826
  %arena.cur1840 = call ptr @dva_arena_current()
  %a.create1841 = call ptr @dva_arena_alloc(ptr %arena.cur1840, i64 24)
  %arena.cur1842 = call ptr @dva_arena_current()
  %a.buf1843 = call ptr @dva_arena_alloc(ptr %arena.cur1842, i64 128)
  %a.len.gep1844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 0
  store i64 0, ptr %a.len.gep1844, align 8
  %a.data.gep1845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 1
  store ptr %a.buf1843, ptr %a.data.gep1845, align 8
  %a.cap.gep1846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1846, align 8
  store ptr %a.create1841, ptr %var.refs, align 8
  br label %a.after1839

a.after1839:                                      ; preds = %a.create1838, %a.after1826
  %a.load21847 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1821, ptr %a.load21834, ptr %a.load21847)
  br label %loop.latch.15

choice.case1850:                                  ; preds = %choice.next1741
  %pay.gep1855 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1856 = load ptr, ptr %pay.gep1855, align 8
  store ptr %payload.ptr1856, ptr %var._1857, align 8
  store ptr %payload.ptr1856, ptr %var.cp, align 8
  %var.load1858 = load ptr, ptr %var.cp, align 8
  %var.load1859 = load ptr, ptr %var.locals, align 8
  %a.load1860 = load ptr, ptr %var.locals, align 8
  %a.null1861 = icmp eq ptr %a.load1860, null
  br i1 %a.null1861, label %a.create1862, label %a.after1863

choice.next1851:                                  ; preds = %choice.next1741
  %tag.gep1887 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1888 = load i64, ptr %tag.gep1887, align 8
  %tag.match1889 = icmp eq i64 %tag.id1888, 27
  br i1 %tag.match1889, label %choice.case1885, label %choice.next1886

a.create1862:                                     ; preds = %choice.case1850
  %arena.cur1864 = call ptr @dva_arena_current()
  %a.create1865 = call ptr @dva_arena_alloc(ptr %arena.cur1864, i64 24)
  %arena.cur1866 = call ptr @dva_arena_current()
  %a.buf1867 = call ptr @dva_arena_alloc(ptr %arena.cur1866, i64 128)
  %a.len.gep1868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1865, i32 0, i32 0
  store i64 0, ptr %a.len.gep1868, align 8
  %a.data.gep1869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1865, i32 0, i32 1
  store ptr %a.buf1867, ptr %a.data.gep1869, align 8
  %a.cap.gep1870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1865, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1870, align 8
  store ptr %a.create1865, ptr %var.locals, align 8
  br label %a.after1863

a.after1863:                                      ; preds = %a.create1862, %choice.case1850
  %a.load21871 = load ptr, ptr %var.locals, align 8
  %var.load1872 = load ptr, ptr %var.refs, align 8
  %a.load1873 = load ptr, ptr %var.refs, align 8
  %a.null1874 = icmp eq ptr %a.load1873, null
  br i1 %a.null1874, label %a.create1875, label %a.after1876

a.create1875:                                     ; preds = %a.after1863
  %arena.cur1877 = call ptr @dva_arena_current()
  %a.create1878 = call ptr @dva_arena_alloc(ptr %arena.cur1877, i64 24)
  %arena.cur1879 = call ptr @dva_arena_current()
  %a.buf1880 = call ptr @dva_arena_alloc(ptr %arena.cur1879, i64 128)
  %a.len.gep1881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 0
  store i64 0, ptr %a.len.gep1881, align 8
  %a.data.gep1882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 1
  store ptr %a.buf1880, ptr %a.data.gep1882, align 8
  %a.cap.gep1883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1878, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1883, align 8
  store ptr %a.create1878, ptr %var.refs, align 8
  br label %a.after1876

a.after1876:                                      ; preds = %a.create1875, %a.after1863
  %a.load21884 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1858, ptr %a.load21871, ptr %a.load21884)
  br label %choice.exit

choice.case1885:                                  ; preds = %choice.next1851
  %pay.gep1890 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1891 = load ptr, ptr %pay.gep1890, align 8
  store ptr %payload.ptr1891, ptr %var._1892, align 8
  store ptr %payload.ptr1891, ptr %var.bc, align 8
  %var.load1893 = load ptr, ptr %var.bc, align 8
  %var.load1894 = load ptr, ptr %var.locals, align 8
  %a.load1895 = load ptr, ptr %var.locals, align 8
  %a.null1896 = icmp eq ptr %a.load1895, null
  br i1 %a.null1896, label %a.create1897, label %a.after1898

choice.next1886:                                  ; preds = %choice.next1851
  %tag.gep1922 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1923 = load i64, ptr %tag.gep1922, align 8
  %tag.match1924 = icmp eq i64 %tag.id1923, 22
  br i1 %tag.match1924, label %choice.case1920, label %choice.next1921

a.create1897:                                     ; preds = %choice.case1885
  %arena.cur1899 = call ptr @dva_arena_current()
  %a.create1900 = call ptr @dva_arena_alloc(ptr %arena.cur1899, i64 24)
  %arena.cur1901 = call ptr @dva_arena_current()
  %a.buf1902 = call ptr @dva_arena_alloc(ptr %arena.cur1901, i64 128)
  %a.len.gep1903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1900, i32 0, i32 0
  store i64 0, ptr %a.len.gep1903, align 8
  %a.data.gep1904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1900, i32 0, i32 1
  store ptr %a.buf1902, ptr %a.data.gep1904, align 8
  %a.cap.gep1905 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1900, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1905, align 8
  store ptr %a.create1900, ptr %var.locals, align 8
  br label %a.after1898

a.after1898:                                      ; preds = %a.create1897, %choice.case1885
  %a.load21906 = load ptr, ptr %var.locals, align 8
  %var.load1907 = load ptr, ptr %var.refs, align 8
  %a.load1908 = load ptr, ptr %var.refs, align 8
  %a.null1909 = icmp eq ptr %a.load1908, null
  br i1 %a.null1909, label %a.create1910, label %a.after1911

a.create1910:                                     ; preds = %a.after1898
  %arena.cur1912 = call ptr @dva_arena_current()
  %a.create1913 = call ptr @dva_arena_alloc(ptr %arena.cur1912, i64 24)
  %arena.cur1914 = call ptr @dva_arena_current()
  %a.buf1915 = call ptr @dva_arena_alloc(ptr %arena.cur1914, i64 128)
  %a.len.gep1916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1913, i32 0, i32 0
  store i64 0, ptr %a.len.gep1916, align 8
  %a.data.gep1917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1913, i32 0, i32 1
  store ptr %a.buf1915, ptr %a.data.gep1917, align 8
  %a.cap.gep1918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1913, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1918, align 8
  store ptr %a.create1913, ptr %var.refs, align 8
  br label %a.after1911

a.after1911:                                      ; preds = %a.create1910, %a.after1898
  %a.load21919 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1893, ptr %a.load21906, ptr %a.load21919)
  br label %choice.exit

choice.case1920:                                  ; preds = %choice.next1886
  %pay.gep1925 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1926 = load ptr, ptr %pay.gep1925, align 8
  store ptr %payload.ptr1926, ptr %var._1927, align 8
  store ptr %payload.ptr1926, ptr %var.tc, align 8
  %var.load1928 = load ptr, ptr %var.tc, align 8
  %fld.gep1929 = getelementptr inbounds { ptr, ptr }, ptr %var.load1928, i32 0, i32 1
  %fld.load1930 = load ptr, ptr %fld.gep1929, align 8
  %var.load1931 = load ptr, ptr %var.locals, align 8
  %a.load1932 = load ptr, ptr %var.locals, align 8
  %a.null1933 = icmp eq ptr %a.load1932, null
  br i1 %a.null1933, label %a.create1934, label %a.after1935

choice.next1921:                                  ; preds = %choice.next1886
  %tag.gep1959 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1960 = load i64, ptr %tag.gep1959, align 8
  %tag.match1961 = icmp eq i64 %tag.id1960, 30
  br i1 %tag.match1961, label %choice.case1957, label %choice.next1958

a.create1934:                                     ; preds = %choice.case1920
  %arena.cur1936 = call ptr @dva_arena_current()
  %a.create1937 = call ptr @dva_arena_alloc(ptr %arena.cur1936, i64 24)
  %arena.cur1938 = call ptr @dva_arena_current()
  %a.buf1939 = call ptr @dva_arena_alloc(ptr %arena.cur1938, i64 128)
  %a.len.gep1940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 0
  store i64 0, ptr %a.len.gep1940, align 8
  %a.data.gep1941 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 1
  store ptr %a.buf1939, ptr %a.data.gep1941, align 8
  %a.cap.gep1942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1937, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1942, align 8
  store ptr %a.create1937, ptr %var.locals, align 8
  br label %a.after1935

a.after1935:                                      ; preds = %a.create1934, %choice.case1920
  %a.load21943 = load ptr, ptr %var.locals, align 8
  %var.load1944 = load ptr, ptr %var.refs, align 8
  %a.load1945 = load ptr, ptr %var.refs, align 8
  %a.null1946 = icmp eq ptr %a.load1945, null
  br i1 %a.null1946, label %a.create1947, label %a.after1948

a.create1947:                                     ; preds = %a.after1935
  %arena.cur1949 = call ptr @dva_arena_current()
  %a.create1950 = call ptr @dva_arena_alloc(ptr %arena.cur1949, i64 24)
  %arena.cur1951 = call ptr @dva_arena_current()
  %a.buf1952 = call ptr @dva_arena_alloc(ptr %arena.cur1951, i64 128)
  %a.len.gep1953 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1950, i32 0, i32 0
  store i64 0, ptr %a.len.gep1953, align 8
  %a.data.gep1954 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1950, i32 0, i32 1
  store ptr %a.buf1952, ptr %a.data.gep1954, align 8
  %a.cap.gep1955 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1950, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1955, align 8
  store ptr %a.create1950, ptr %var.refs, align 8
  br label %a.after1948

a.after1948:                                      ; preds = %a.create1947, %a.after1935
  %a.load21956 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1930, ptr %a.load21943, ptr %a.load21956)
  br label %choice.exit

choice.case1957:                                  ; preds = %choice.next1921
  %pay.gep1962 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1963 = load ptr, ptr %pay.gep1962, align 8
  store ptr %payload.ptr1963, ptr %var._1964, align 8
  store ptr %payload.ptr1963, ptr %var.ct, align 8
  %var.load1965 = load ptr, ptr %var.ct, align 8
  %fld.gep1966 = getelementptr inbounds { ptr }, ptr %var.load1965, i32 0, i32 0
  %fld.load1967 = load ptr, ptr %fld.gep1966, align 8
  %var.load1968 = load ptr, ptr %var.locals, align 8
  %a.load1969 = load ptr, ptr %var.locals, align 8
  %a.null1970 = icmp eq ptr %a.load1969, null
  br i1 %a.null1970, label %a.create1971, label %a.after1972

choice.next1958:                                  ; preds = %choice.next1921
  %tag.gep1996 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1997 = load i64, ptr %tag.gep1996, align 8
  %tag.match1998 = icmp eq i64 %tag.id1997, 31
  br i1 %tag.match1998, label %choice.case1994, label %choice.next1995

a.create1971:                                     ; preds = %choice.case1957
  %arena.cur1973 = call ptr @dva_arena_current()
  %a.create1974 = call ptr @dva_arena_alloc(ptr %arena.cur1973, i64 24)
  %arena.cur1975 = call ptr @dva_arena_current()
  %a.buf1976 = call ptr @dva_arena_alloc(ptr %arena.cur1975, i64 128)
  %a.len.gep1977 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1974, i32 0, i32 0
  store i64 0, ptr %a.len.gep1977, align 8
  %a.data.gep1978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1974, i32 0, i32 1
  store ptr %a.buf1976, ptr %a.data.gep1978, align 8
  %a.cap.gep1979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1974, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1979, align 8
  store ptr %a.create1974, ptr %var.locals, align 8
  br label %a.after1972

a.after1972:                                      ; preds = %a.create1971, %choice.case1957
  %a.load21980 = load ptr, ptr %var.locals, align 8
  %var.load1981 = load ptr, ptr %var.refs, align 8
  %a.load1982 = load ptr, ptr %var.refs, align 8
  %a.null1983 = icmp eq ptr %a.load1982, null
  br i1 %a.null1983, label %a.create1984, label %a.after1985

a.create1984:                                     ; preds = %a.after1972
  %arena.cur1986 = call ptr @dva_arena_current()
  %a.create1987 = call ptr @dva_arena_alloc(ptr %arena.cur1986, i64 24)
  %arena.cur1988 = call ptr @dva_arena_current()
  %a.buf1989 = call ptr @dva_arena_alloc(ptr %arena.cur1988, i64 128)
  %a.len.gep1990 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 0
  store i64 0, ptr %a.len.gep1990, align 8
  %a.data.gep1991 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 1
  store ptr %a.buf1989, ptr %a.data.gep1991, align 8
  %a.cap.gep1992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1987, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1992, align 8
  store ptr %a.create1987, ptr %var.refs, align 8
  br label %a.after1985

a.after1985:                                      ; preds = %a.create1984, %a.after1972
  %a.load21993 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1967, ptr %a.load21980, ptr %a.load21993)
  br label %choice.exit

choice.case1994:                                  ; preds = %choice.next1958
  %pay.gep1999 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2000 = load ptr, ptr %pay.gep1999, align 8
  store ptr %payload.ptr2000, ptr %var._2001, align 8
  store ptr %payload.ptr2000, ptr %var.sp, align 8
  %arena.cur2002 = call ptr @dva_arena_current()
  %enum.alloc2003 = call ptr @dva_arena_alloc(ptr %arena.cur2002, i64 16)
  %tag.gep2004 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2003, i32 0, i32 0
  store i64 9, ptr %tag.gep2004, align 8
  %pay.gep2005 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2003, i32 0, i32 1
  %var.load2006 = load ptr, ptr %var.sp, align 8
  %fld.gep2007 = getelementptr inbounds { { ptr, ptr, ptr, i64, i64 } }, ptr %var.load2006, i32 0, i32 0
  store ptr %fld.gep2007, ptr %pay.gep2005, align 8
  %var.load2008 = load ptr, ptr %var.locals, align 8
  %a.load2009 = load ptr, ptr %var.locals, align 8
  %a.null2010 = icmp eq ptr %a.load2009, null
  br i1 %a.null2010, label %a.create2011, label %a.after2012

choice.next1995:                                  ; preds = %choice.next1958
  %tag.gep2036 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2037 = load i64, ptr %tag.gep2036, align 8
  %tag.match2038 = icmp eq i64 %tag.id2037, 32
  br i1 %tag.match2038, label %choice.case2034, label %choice.next2035

a.create2011:                                     ; preds = %choice.case1994
  %arena.cur2013 = call ptr @dva_arena_current()
  %a.create2014 = call ptr @dva_arena_alloc(ptr %arena.cur2013, i64 24)
  %arena.cur2015 = call ptr @dva_arena_current()
  %a.buf2016 = call ptr @dva_arena_alloc(ptr %arena.cur2015, i64 128)
  %a.len.gep2017 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 0
  store i64 0, ptr %a.len.gep2017, align 8
  %a.data.gep2018 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 1
  store ptr %a.buf2016, ptr %a.data.gep2018, align 8
  %a.cap.gep2019 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2014, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2019, align 8
  store ptr %a.create2014, ptr %var.locals, align 8
  br label %a.after2012

a.after2012:                                      ; preds = %a.create2011, %choice.case1994
  %a.load22020 = load ptr, ptr %var.locals, align 8
  %var.load2021 = load ptr, ptr %var.refs, align 8
  %a.load2022 = load ptr, ptr %var.refs, align 8
  %a.null2023 = icmp eq ptr %a.load2022, null
  br i1 %a.null2023, label %a.create2024, label %a.after2025

a.create2024:                                     ; preds = %a.after2012
  %arena.cur2026 = call ptr @dva_arena_current()
  %a.create2027 = call ptr @dva_arena_alloc(ptr %arena.cur2026, i64 24)
  %arena.cur2028 = call ptr @dva_arena_current()
  %a.buf2029 = call ptr @dva_arena_alloc(ptr %arena.cur2028, i64 128)
  %a.len.gep2030 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2027, i32 0, i32 0
  store i64 0, ptr %a.len.gep2030, align 8
  %a.data.gep2031 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2027, i32 0, i32 1
  store ptr %a.buf2029, ptr %a.data.gep2031, align 8
  %a.cap.gep2032 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2027, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2032, align 8
  store ptr %a.create2027, ptr %var.refs, align 8
  br label %a.after2025

a.after2025:                                      ; preds = %a.create2024, %a.after2012
  %a.load22033 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc2003, ptr %a.load22020, ptr %a.load22033)
  br label %choice.exit

choice.case2034:                                  ; preds = %choice.next1995
  %pay.gep2039 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2040 = load ptr, ptr %pay.gep2039, align 8
  store ptr %payload.ptr2040, ptr %var._2041, align 8
  store ptr %payload.ptr2040, ptr %var.jn, align 8
  %var.load2042 = load ptr, ptr %var.jn, align 8
  %fld.gep2043 = getelementptr inbounds { ptr }, ptr %var.load2042, i32 0, i32 0
  %fld.load2044 = load ptr, ptr %fld.gep2043, align 8
  %var.load2045 = load ptr, ptr %var.locals, align 8
  %a.load2046 = load ptr, ptr %var.locals, align 8
  %a.null2047 = icmp eq ptr %a.load2046, null
  br i1 %a.null2047, label %a.create2048, label %a.after2049

choice.next2035:                                  ; preds = %choice.next1995
  %tag.gep2073 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2074 = load i64, ptr %tag.gep2073, align 8
  %tag.match2075 = icmp eq i64 %tag.id2074, 33
  br i1 %tag.match2075, label %choice.case2071, label %choice.next2072

a.create2048:                                     ; preds = %choice.case2034
  %arena.cur2050 = call ptr @dva_arena_current()
  %a.create2051 = call ptr @dva_arena_alloc(ptr %arena.cur2050, i64 24)
  %arena.cur2052 = call ptr @dva_arena_current()
  %a.buf2053 = call ptr @dva_arena_alloc(ptr %arena.cur2052, i64 128)
  %a.len.gep2054 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2051, i32 0, i32 0
  store i64 0, ptr %a.len.gep2054, align 8
  %a.data.gep2055 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2051, i32 0, i32 1
  store ptr %a.buf2053, ptr %a.data.gep2055, align 8
  %a.cap.gep2056 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2051, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2056, align 8
  store ptr %a.create2051, ptr %var.locals, align 8
  br label %a.after2049

a.after2049:                                      ; preds = %a.create2048, %choice.case2034
  %a.load22057 = load ptr, ptr %var.locals, align 8
  %var.load2058 = load ptr, ptr %var.refs, align 8
  %a.load2059 = load ptr, ptr %var.refs, align 8
  %a.null2060 = icmp eq ptr %a.load2059, null
  br i1 %a.null2060, label %a.create2061, label %a.after2062

a.create2061:                                     ; preds = %a.after2049
  %arena.cur2063 = call ptr @dva_arena_current()
  %a.create2064 = call ptr @dva_arena_alloc(ptr %arena.cur2063, i64 24)
  %arena.cur2065 = call ptr @dva_arena_current()
  %a.buf2066 = call ptr @dva_arena_alloc(ptr %arena.cur2065, i64 128)
  %a.len.gep2067 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2064, i32 0, i32 0
  store i64 0, ptr %a.len.gep2067, align 8
  %a.data.gep2068 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2064, i32 0, i32 1
  store ptr %a.buf2066, ptr %a.data.gep2068, align 8
  %a.cap.gep2069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2064, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2069, align 8
  store ptr %a.create2064, ptr %var.refs, align 8
  br label %a.after2062

a.after2062:                                      ; preds = %a.create2061, %a.after2049
  %a.load22070 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2044, ptr %a.load22057, ptr %a.load22070)
  br label %choice.exit

choice.case2071:                                  ; preds = %choice.next2035
  %pay.gep2076 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2077 = load ptr, ptr %pay.gep2076, align 8
  store ptr %payload.ptr2077, ptr %var._2078, align 8
  store ptr %payload.ptr2077, ptr %var.ex, align 8
  %var.load2079 = load ptr, ptr %var.ex, align 8
  %fld.gep2080 = getelementptr inbounds { ptr }, ptr %var.load2079, i32 0, i32 0
  %fld.load2081 = load ptr, ptr %fld.gep2080, align 8
  %var.load2082 = load ptr, ptr %var.locals, align 8
  %a.load2083 = load ptr, ptr %var.locals, align 8
  %a.null2084 = icmp eq ptr %a.load2083, null
  br i1 %a.null2084, label %a.create2085, label %a.after2086

choice.next2072:                                  ; preds = %choice.next2035
  %tag.gep2110 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2111 = load i64, ptr %tag.gep2110, align 8
  %tag.match2112 = icmp eq i64 %tag.id2111, 38
  br i1 %tag.match2112, label %choice.case2108, label %choice.next2109

a.create2085:                                     ; preds = %choice.case2071
  %arena.cur2087 = call ptr @dva_arena_current()
  %a.create2088 = call ptr @dva_arena_alloc(ptr %arena.cur2087, i64 24)
  %arena.cur2089 = call ptr @dva_arena_current()
  %a.buf2090 = call ptr @dva_arena_alloc(ptr %arena.cur2089, i64 128)
  %a.len.gep2091 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2088, i32 0, i32 0
  store i64 0, ptr %a.len.gep2091, align 8
  %a.data.gep2092 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2088, i32 0, i32 1
  store ptr %a.buf2090, ptr %a.data.gep2092, align 8
  %a.cap.gep2093 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2088, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2093, align 8
  store ptr %a.create2088, ptr %var.locals, align 8
  br label %a.after2086

a.after2086:                                      ; preds = %a.create2085, %choice.case2071
  %a.load22094 = load ptr, ptr %var.locals, align 8
  %var.load2095 = load ptr, ptr %var.refs, align 8
  %a.load2096 = load ptr, ptr %var.refs, align 8
  %a.null2097 = icmp eq ptr %a.load2096, null
  br i1 %a.null2097, label %a.create2098, label %a.after2099

a.create2098:                                     ; preds = %a.after2086
  %arena.cur2100 = call ptr @dva_arena_current()
  %a.create2101 = call ptr @dva_arena_alloc(ptr %arena.cur2100, i64 24)
  %arena.cur2102 = call ptr @dva_arena_current()
  %a.buf2103 = call ptr @dva_arena_alloc(ptr %arena.cur2102, i64 128)
  %a.len.gep2104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2101, i32 0, i32 0
  store i64 0, ptr %a.len.gep2104, align 8
  %a.data.gep2105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2101, i32 0, i32 1
  store ptr %a.buf2103, ptr %a.data.gep2105, align 8
  %a.cap.gep2106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2101, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2106, align 8
  store ptr %a.create2101, ptr %var.refs, align 8
  br label %a.after2099

a.after2099:                                      ; preds = %a.create2098, %a.after2086
  %a.load22107 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2081, ptr %a.load22094, ptr %a.load22107)
  br label %choice.exit

choice.case2108:                                  ; preds = %choice.next2072
  %pay.gep2113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2114 = load ptr, ptr %pay.gep2113, align 8
  store ptr %payload.ptr2114, ptr %var._2115, align 8
  store ptr %payload.ptr2114, ptr %var.ud, align 8
  %var.load2116 = load ptr, ptr %var.ud, align 8
  %fld.gep2117 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2116, i32 0, i32 1
  %fld.load2118 = load ptr, ptr %fld.gep2117, align 8
  %var.load2119 = load ptr, ptr %var.locals, align 8
  %a.load2120 = load ptr, ptr %var.locals, align 8
  %a.null2121 = icmp eq ptr %a.load2120, null
  br i1 %a.null2121, label %a.create2122, label %a.after2123

choice.next2109:                                  ; preds = %choice.next2072
  br label %choice.exit

a.create2122:                                     ; preds = %choice.case2108
  %arena.cur2124 = call ptr @dva_arena_current()
  %a.create2125 = call ptr @dva_arena_alloc(ptr %arena.cur2124, i64 24)
  %arena.cur2126 = call ptr @dva_arena_current()
  %a.buf2127 = call ptr @dva_arena_alloc(ptr %arena.cur2126, i64 128)
  %a.len.gep2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 0
  store i64 0, ptr %a.len.gep2128, align 8
  %a.data.gep2129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 1
  store ptr %a.buf2127, ptr %a.data.gep2129, align 8
  %a.cap.gep2130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2125, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2130, align 8
  store ptr %a.create2125, ptr %var.locals, align 8
  br label %a.after2123

a.after2123:                                      ; preds = %a.create2122, %choice.case2108
  %a.load22131 = load ptr, ptr %var.locals, align 8
  %var.load2132 = load ptr, ptr %var.refs, align 8
  %a.load2133 = load ptr, ptr %var.refs, align 8
  %a.null2134 = icmp eq ptr %a.load2133, null
  br i1 %a.null2134, label %a.create2135, label %a.after2136

a.create2135:                                     ; preds = %a.after2123
  %arena.cur2137 = call ptr @dva_arena_current()
  %a.create2138 = call ptr @dva_arena_alloc(ptr %arena.cur2137, i64 24)
  %arena.cur2139 = call ptr @dva_arena_current()
  %a.buf2140 = call ptr @dva_arena_alloc(ptr %arena.cur2139, i64 128)
  %a.len.gep2141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2138, i32 0, i32 0
  store i64 0, ptr %a.len.gep2141, align 8
  %a.data.gep2142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2138, i32 0, i32 1
  store ptr %a.buf2140, ptr %a.data.gep2142, align 8
  %a.cap.gep2143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2143, align 8
  store ptr %a.create2138, ptr %var.refs, align 8
  br label %a.after2136

a.after2136:                                      ; preds = %a.create2135, %a.after2123
  %a.load22144 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2118, ptr %a.load22131, ptr %a.load22144)
  br label %choice.exit
}

define internal void @dva_array_grow(ptr %0) #1 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = mul i64 %a.cap2, 2
  %a.cap.small = icmp slt i64 %a.cap24, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %a.cap24
  %a.grow.bytes = mul i64 %a.new.cap, 8
  %a.grow.bytes1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.grow.bytes, i64 1)
  %sum = extractvalue { i64, i1 } %a.grow.bytes1, 0
  %ovf = extractvalue { i64, i1 } %a.grow.bytes1, 1
  br i1 %ovf, label %str_overflow_abort, label %a.grow.bytes15

a.grow.bytes15:                                   ; preds = %str_overflow_abort, %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %a.copy.bytes = mul i64 %a.len1, 8
  %a.copy.bytes1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.copy.bytes, i64 1)
  %sum6 = extractvalue { i64, i1 } %a.copy.bytes1, 0
  %ovf7 = extractvalue { i64, i1 } %a.copy.bytes1, 1
  br i1 %ovf7, label %str_overflow_abort9, label %a.copy.bytes18

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.grow.bytes15

a.copy.bytes18:                                   ; preds = %str_overflow_abort9, %a.grow.bytes15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %sum6, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

str_overflow_abort9:                              ; preds = %a.grow.bytes15
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.copy.bytes18
}

define i64 @"dep_graph::find_node_idx"(ptr %0, ptr %1) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.indices = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.graph, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.indices, align 8
  %var.load1 = load ptr, ptr %var.indices, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap3 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys4 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states5 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data6 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len7 = load i64, ptr %mk.len, align 8
  %mk.len8 = and i64 %mk.len7, 281474976710655
  %str.tag = lshr i64 %mk.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data6, i64 %mk.len8)
  %m.capm1 = sub i64 %m.cap3, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe9 = phi i64 [ 0, %str_ok ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe9, %m.cap3
  %m.mem.state.gep = getelementptr i8, ptr %m.states5, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys4, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen10 = load i64, ptr %mk.slen, align 8
  %mk.slen11 = and i64 %mk.slen10, 281474976710655
  %str.tag12 = lshr i64 %mk.slen10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe9, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check14:                                  ; preds = %m.mem.found
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen19 = load i64, ptr %mk.nlen, align 8
  %mk.nlen20 = and i64 %mk.nlen19, 281474976710655
  %str.tag21 = lshr i64 %mk.nlen19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str_gen_check23:                                  ; preds = %str_ok15
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %str_ok15
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen20
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

mk.eq.then:                                       ; preds = %str_ok24
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata28 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata29 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata28, ptr %mk.ndata29, i64 %mk.nlen20)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok24
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load30 = load ptr, ptr %var.indices, align 8
  %var.load31 = load ptr, ptr %var.name, align 8
  %m.cap32 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 1
  %m.cap33 = load i64, ptr %m.cap32, align 8
  %m.keys34 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 2
  %m.keys35 = load ptr, ptr %m.keys34, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 3
  %m.vals36 = load ptr, ptr %m.vals, align 8
  %m.states37 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 4
  %m.states38 = load ptr, ptr %m.states37, align 8
  %mk.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %mk.data40 = load ptr, ptr %mk.data39, align 8
  %mk.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %mk.len42 = load i64, ptr %mk.len41, align 8
  %mk.len43 = and i64 %mk.len42, 281474976710655
  %str.tag44 = lshr i64 %mk.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit91
  %choice.res123 = phi i64 [ %var.load122, %choice.exit91 ], [ -1, %choice.else ]
  ret i64 %choice.res123

str_gen_check46:                                  ; preds = %choice.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %choice.then
  %hash.str51 = call i64 @dva_hash_string(ptr %mk.data40, i64 %mk.len43)
  %m.capm152 = sub i64 %m.cap33, 1
  %m.idx053 = and i64 %hash.str51, %m.capm152
  br label %m.rd.loop

str_stale48:                                      ; preds = %str_gen_check46
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

m.rd.loop:                                        ; preds = %m.rd.next, %str_ok47
  %m.rd.idx = phi i64 [ %m.idx053, %str_ok47 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe54 = phi i64 [ 0, %str_ok47 ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe54, %m.cap33
  %m.rd.state.gep = getelementptr i8, ptr %m.states38, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr ptr, ptr %m.keys35, i64 %m.rd.idx
  %mk.stored55 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen56 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 0
  %mk.slen57 = load i64, ptr %mk.slen56, align 8
  %mk.slen58 = and i64 %mk.slen57, 281474976710655
  %str.tag59 = lshr i64 %mk.slen57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

m.rd.next:                                        ; preds = %mk.eq.merge79, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm152
  %m.rd.probe.next = add i64 %m.rd.probe54, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur87 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4013, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
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
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.val, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  %ram.tag88 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag88, label %choice.then89, label %choice.else90

str_gen_check61:                                  ; preds = %m.rd.found
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %m.rd.found
  %mk.nlen66 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %mk.nlen67 = load i64, ptr %mk.nlen66, align 8
  %mk.nlen68 = and i64 %mk.nlen67, 281474976710655
  %str.tag69 = lshr i64 %mk.nlen67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

str_stale63:                                      ; preds = %str_gen_check61
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check71:                                  ; preds = %str_ok62
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %str_ok62
  %mk.lenseq76 = icmp eq i64 %mk.slen58, %mk.nlen68
  br i1 %mk.lenseq76, label %mk.eq.then77, label %mk.eq.else78

str_stale73:                                      ; preds = %str_gen_check71
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

mk.eq.then77:                                     ; preds = %str_ok72
  %mk.sdata80 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 1
  %mk.sdata81 = load ptr, ptr %mk.sdata80, align 8
  %mk.ndata82 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %mk.ndata83 = load ptr, ptr %mk.ndata82, align 8
  %mk.memcmp84 = call i32 @memcmp(ptr %mk.sdata81, ptr %mk.ndata83, i64 %mk.nlen68)
  %mk.cmpeq85 = icmp eq i32 %mk.memcmp84, 0
  br label %mk.eq.merge79

mk.eq.else78:                                     ; preds = %str_ok72
  br label %mk.eq.merge79

mk.eq.merge79:                                    ; preds = %mk.eq.else78, %mk.eq.then77
  %mk.eq86 = phi i1 [ %mk.cmpeq85, %mk.eq.then77 ], [ false, %mk.eq.else78 ]
  br i1 %mk.eq86, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.merge79
  %m.rd.val.slot = getelementptr i64, ptr %m.vals36, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay92, ptr %var._, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %m.rd.done
  %ram.pay93 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay93 to ptr
  store ptr %pay.ptr, ptr %var._94, align 8
  store ptr %pay.ptr, ptr %var._95, align 8
  store ptr %pay.ptr, ptr %var._96, align 8
  %err.code.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep97, align 8
  %err.msg.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep98, align 8
  %err.file.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep99, align 8
  %err.line.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep100, align 8
  %err.col.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep101, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len102 = load i64, ptr %err.msg.len, align 8
  %err.msg.len103 = and i64 %err.msg.len102, 281474976710655
  %str.tag104 = lshr i64 %err.msg.len102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

choice.exit91:                                    ; preds = %err.abort, %choice.then89
  %choice.res = phi i64 [ %ram.pay92, %choice.then89 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load122 = load i64, ptr %var.idx, align 8
  br label %choice.exit

str_gen_check106:                                 ; preds = %choice.else90
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %choice.else90
  %err.msg.len32 = trunc i64 %err.msg.len103 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data111 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len112 = load i64, ptr %err.file.len, align 8
  %err.file.len113 = and i64 %err.file.len112, 281474976710655
  %str.tag114 = lshr i64 %err.file.len112, 48
  %str.immortal115 = icmp eq i64 %str.tag114, 0
  br i1 %str.immortal115, label %str_ok117, label %str_gen_check116

str_stale108:                                     ; preds = %str_gen_check106
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check116:                                 ; preds = %str_ok107
  %arena.cur119 = call ptr @dva_arena_current()
  %tag.valid120 = call i1 @dva_arena_validate_tag(ptr %arena.cur119, i64 %str.tag114)
  br i1 %tag.valid120, label %str_ok117, label %str_stale118

str_ok117:                                        ; preds = %str_stale118, %str_gen_check116, %str_ok107
  %err.file.len32 = trunc i64 %err.file.len113 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data121 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale118:                                     ; preds = %str_gen_check116
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok117

err.thread:                                       ; preds = %str_ok117
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok117
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data111, i32 %err.file.len32, ptr %err.file.data121, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit91
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

define i1 @"dep_graph::node_has_dep"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.node = alloca ptr, align 8
  store ptr %0, ptr %var.node, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.node, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %fld.load, ptr %var.load1)
  ret i1 %call.res
}

define i1 @"dep_graph::is_generic_sig"(ptr %0) #1 {
entry:
  %var.is_ti = alloca i1, align 1
  %var.f = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.is_ct = alloca i1, align 1
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
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
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.16.then, label %and.16.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.16.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 7
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

and.16.else:                                      ; preds = %str_ok
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %str.eq.merge
  %and.16.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.16.else ]
  store i1 %and.16.phi, ptr %var.is_ct, align 1
  %var.load35 = load ptr, ptr %var.a, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 8
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str_gen_check10:                                  ; preds = %and.16.then
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %and.16.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len7, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len7
  %final.start = select i1 %start.gt.len, i64 %s.read.len7, i64 %c.start.0
  %rel.end = add i64 %s.read.len7, 4
  %norm.end = select i1 false, i64 %rel.end, i64 4
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len7
  %final.end = select i1 %end.gt.len, i64 %s.read.len7, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur16 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str_gen_check21:                                  ; preds = %str_ok11
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %str_ok11
  %eq.rhs.len = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %str.tag27 = lshr i64 %eq.rhs.len, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

str_gen_check29:                                  ; preds = %str_ok22
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok22
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str.eq.then:                                      ; preds = %str_ok30
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok30
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.16.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp42, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load43 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load43, label %or.17.then, label %or.17.else

choice.case:                                      ; preds = %and.16.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load38 = load ptr, ptr %var.f, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load38, i32 0, i32 4
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load40, i32 0, i32 0
  %a.len.query41 = load i64, ptr %a.len.query, align 8
  %cmptmp42 = icmp sgt i64 %a.len.query41, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.16.exit
  br label %choice.exit

or.17.then:                                       ; preds = %choice.exit
  br label %or.17.exit

or.17.else:                                       ; preds = %choice.exit
  %var.load44 = load i1, ptr %var.is_ti, align 1
  br label %or.17.exit

or.17.exit:                                       ; preds = %or.17.else, %or.17.then
  %or.17.phi = phi i1 [ %var.load43, %or.17.then ], [ %var.load44, %or.17.else ]
  ret i1 %or.17.phi
}

define ptr @"dep_graph::build_dep_graph"(ptr %0) #1 {
entry:
  %var.known = alloca i1, align 1
  %var.node_indices = alloca ptr, align 8
  %var.target_ref = alloca ptr, align 8
  %var.ref_name = alloca ptr, align 8
  %loop.step.31 = alloca i64, align 8
  %loop.idx.31 = alloca i64, align 8
  %var.mod2 = alloca ptr, align 8
  %var.filtered_deps = alloca ptr, align 8
  %var.raw_refs = alloca ptr, align 8
  %var.name2 = alloca ptr, align 8
  %var.is_gen2 = alloca i1, align 1
  %var.is_fwd2 = alloca i1, align 1
  %var.a2 = alloca ptr, align 8
  %var._842 = alloca ptr, align 8
  %var.st2 = alloca ptr, align 8
  %var._825 = alloca ptr, align 8
  %var._822 = alloca ptr, align 8
  %var._760 = alloca i64, align 8
  %var._i759 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._387 = alloca ptr, align 8
  %var.st1 = alloca ptr, align 8
  %var._370 = alloca ptr, align 8
  %var._367 = alloca ptr, align 8
  %var._305 = alloca i64, align 8
  %var._i304 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var._87 = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var.stk = alloca ptr, align 8
  %var._70 = alloca ptr, align 8
  %var._67 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var.gen_names = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  %var.nodes = alloca ptr, align 8
  %var.stmts = alloca ptr, align 8
  store ptr %0, ptr %var.stmts, align 8
  store ptr null, ptr %var.nodes, align 8
  %var.load = load ptr, ptr %var.nodes, align 8
  %a.load = load ptr, ptr %var.nodes, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr %var.nodes, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.nodes, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 48)
  %arena.cur4 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 64)
  %arena.cur5 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 64)
  %arena.cur6 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states, i8 0, i64 8, i1 false)
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 1
  store i64 8, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 2
  store ptr %m.keys, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 3
  store ptr %m.vals, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 4
  store ptr %m.states, ptr %m.states.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %m.new, ptr %rec.fld8, align 8
  store ptr %rec.alloc, ptr %var.graph, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %m.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 48)
  %arena.cur11 = call ptr @dva_arena_current()
  %m.keys12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 64)
  %arena.cur13 = call ptr @dva_arena_current()
  %m.vals14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 64)
  %arena.cur15 = call ptr @dva_arena_current()
  %m.states16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states16, i8 0, i64 8, i1 false)
  %m.count.gep17 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 0
  store i64 0, ptr %m.count.gep17, align 8
  %m.cap.gep18 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 1
  store i64 8, ptr %m.cap.gep18, align 8
  %m.keys.gep19 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 2
  store ptr %m.keys12, ptr %m.keys.gep19, align 8
  %m.vals.gep20 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 3
  store ptr %m.vals14, ptr %m.vals.gep20, align 8
  %m.states.gep21 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 4
  store ptr %m.states16, ptr %m.states.gep21, align 8
  %m.tombs.gep22 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep22, align 8
  store ptr %m.new10, ptr %var.gen_names, align 8
  %var.load23 = load ptr, ptr %var.stmts, align 8
  %a.load24 = load ptr, ptr %var.stmts, align 8
  %a.null25 = icmp eq ptr %a.load24, null
  br i1 %a.null25, label %a.create26, label %a.after27

a.create26:                                       ; preds = %a.after
  %arena.cur28 = call ptr @dva_arena_current()
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 24)
  %arena.cur30 = call ptr @dva_arena_current()
  %a.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 128)
  %a.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 0
  store i64 0, ptr %a.len.gep32, align 8
  %a.data.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 1
  store ptr %a.buf31, ptr %a.data.gep33, align 8
  %a.cap.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 2
  store i64 16, ptr %a.cap.gep34, align 8
  store ptr %a.create29, ptr %var.stmts, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %a.after
  %a.load235 = load ptr, ptr %var.stmts, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  %a.len.query36 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %a.after27
  %counter.load = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query36
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load37 = load ptr, ptr %var.stmts, align 8
  %a.load38 = load ptr, ptr %var.stmts, align 8
  %a.null39 = icmp eq ptr %a.load38, null
  br i1 %a.null39, label %a.create40, label %a.after41

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %choice.exit74
  %step.val = load i64, ptr %loop.step.18, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %arena.cur272 = call ptr @dva_arena_current()
  %m.new273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 48)
  %arena.cur274 = call ptr @dva_arena_current()
  %m.keys275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 64)
  %arena.cur276 = call ptr @dva_arena_current()
  %m.vals277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 64)
  %arena.cur278 = call ptr @dva_arena_current()
  %m.states279 = call ptr @dva_arena_alloc(ptr %arena.cur278, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states279, i8 0, i64 8, i1 false)
  %m.count.gep280 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 0
  store i64 0, ptr %m.count.gep280, align 8
  %m.cap.gep281 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 1
  store i64 8, ptr %m.cap.gep281, align 8
  %m.keys.gep282 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 2
  store ptr %m.keys275, ptr %m.keys.gep282, align 8
  %m.vals.gep283 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 3
  store ptr %m.vals277, ptr %m.vals.gep283, align 8
  %m.states.gep284 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 4
  store ptr %m.states279, ptr %m.states.gep284, align 8
  %m.tombs.gep285 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new273, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep285, align 8
  store ptr %m.new273, ptr %var.def_names, align 8
  %var.load286 = load ptr, ptr %var.stmts, align 8
  %a.load287 = load ptr, ptr %var.stmts, align 8
  %a.null288 = icmp eq ptr %a.load287, null
  br i1 %a.null288, label %a.create289, label %a.after290

a.create40:                                       ; preds = %loop.body.18
  %arena.cur42 = call ptr @dva_arena_current()
  %a.create43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 24)
  %arena.cur44 = call ptr @dva_arena_current()
  %a.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 128)
  %a.len.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 0
  store i64 0, ptr %a.len.gep46, align 8
  %a.data.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 1
  store ptr %a.buf45, ptr %a.data.gep47, align 8
  %a.cap.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 2
  store i64 16, ptr %a.cap.gep48, align 8
  store ptr %a.create43, ptr %var.stmts, align 8
  br label %a.after41

a.after41:                                        ; preds = %a.create40, %loop.body.18
  %a.load249 = load ptr, ptr %var.stmts, align 8
  %var.load50 = load i64, ptr %var.k, align 8
  %a.rd.nonnull = icmp ne ptr %a.load249, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after41
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load249, i32 0, i32 0
  %a.rd.len51 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load50, 0
  %a.rd.lt = icmp slt i64 %var.load50, %a.rd.len51
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load249, i32 0, i32 1
  %a.rd.data52 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data52, i64 %var.load50
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after41
  %arena.cur53 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 211, ptr %err.line.gep, align 8
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
  %arena.cur54 = call ptr @dva_arena_current()
  %err.alloc55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 56)
  %err.code.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 0
  store i64 4011, ptr %err.code.gep56, align 8
  %err.msg.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep57, align 8
  %err.file.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep58, align 8
  %err.line.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 3
  store i64 211, ptr %err.line.gep59, align 8
  %err.col.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 4
  store i64 22, ptr %err.col.gep60, align 8
  %err.ctx.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 5
  %err.ctx0.gep62 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 0
  store i64 %var.load50, ptr %err.ctx0.gep62, align 8
  %err.ctx1.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 1
  store i64 %a.rd.len51, ptr %err.ctx1.gep63, align 8
  %err.p2i64 = ptrtoint ptr %err.alloc55 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i64, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag65 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag65, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay66 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay66 to ptr
  store ptr %pay.ptr, ptr %var._67, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay68 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr69 = inttoptr i64 %ram.pay68 to ptr
  store ptr %pay.ptr69, ptr %var._70, align 8
  %arena.cur71 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur72 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.stk, align 8
  %var.load73 = load ptr, ptr %var.stk, align 8
  %tag.gep75 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep75, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit74:                                    ; preds = %choice.next, %choice.exit113
  br label %loop.latch.18

choice.case:                                      ; preds = %choice.exit
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr, ptr %var._77, align 8
  store ptr %payload.ptr, ptr %var.ak, align 8
  %var.load78 = load ptr, ptr %var.ak, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load78, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep82 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id83 = load i64, ptr %tag.gep82, align 8
  %tag.match84 = icmp eq i64 %tag.id83, 14
  br i1 %tag.match84, label %choice.case80, label %choice.next81

choice.next:                                      ; preds = %choice.exit
  br label %choice.exit74

choice.exit79:                                    ; preds = %choice.next81, %choice.case80
  %choice.res93 = phi i1 [ %cmptmp, %choice.case80 ], [ false, %choice.next81 ]
  store i1 %choice.res93, ptr %var.is_fe, align 1
  %var.load94 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load94)
  br i1 %call.res, label %or.19.then, label %or.19.else

choice.case80:                                    ; preds = %choice.case
  %pay.gep85 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr86 = load ptr, ptr %pay.gep85, align 8
  store ptr %payload.ptr86, ptr %var._87, align 8
  store ptr %payload.ptr86, ptr %var.fek, align 8
  %var.load88 = load ptr, ptr %var.fek, align 8
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load88, i32 0, i32 1
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %a.len.query91 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load90, i32 0, i32 0
  %a.len.query92 = load i64, ptr %a.len.query91, align 8
  %cmptmp = icmp sgt i64 %a.len.query92, 0
  br label %choice.exit79

choice.next81:                                    ; preds = %choice.case
  br label %choice.exit79

or.19.then:                                       ; preds = %choice.exit79
  br label %or.19.exit

or.19.else:                                       ; preds = %choice.exit79
  %var.load95 = load i1, ptr %var.is_fe, align 1
  br label %or.19.exit

or.19.exit:                                       ; preds = %or.19.else, %or.19.then
  %or.19.phi = phi i1 [ %call.res, %or.19.then ], [ %var.load95, %or.19.else ]
  store i1 %or.19.phi, ptr %var.is_gen, align 1
  %var.load96 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load96, label %and.20.then, label %and.20.else

and.20.then:                                      ; preds = %or.19.exit
  %var.load97 = load ptr, ptr %var.ak, align 8
  %fld.gep98 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load97, i32 0, i32 0
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load99, i32 0, i32 0
  %eq.lhs.len100 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len101 = and i64 %eq.lhs.len100, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len100, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.20.else:                                      ; preds = %or.19.exit
  br label %and.20.exit

and.20.exit:                                      ; preds = %and.20.else, %str.eq.merge
  %and.20.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load96, %and.20.else ]
  br i1 %and.20.phi, label %choice.then112, label %choice.exit113

str_gen_check:                                    ; preds = %and.20.then
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.20.then
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len103 = and i64 %eq.rhs.len, 281474976710655
  %str.tag104 = lshr i64 %eq.rhs.len, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check106:                                 ; preds = %str_ok
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len101, %eq.rhs.len103
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale108:                                     ; preds = %str_gen_check106
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str.eq.then:                                      ; preds = %str_ok107
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load99, i32 0, i32 1
  %eq.lhs.data111 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data111, ptr %eq.rhs.data, i64 %eq.lhs.len101)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok107
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.20.exit

choice.then112:                                   ; preds = %and.20.exit
  %var.load114 = load ptr, ptr %var.gen_names, align 8
  %var.load115 = load ptr, ptr %var.ak, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load115, i32 0, i32 0
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count118 = load i64, ptr %m.count, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap119 = load i64, ptr %m.cap, align 8
  %m.tombs = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.tombs120 = load i64, ptr %m.tombs, align 8
  %m.occupied = add i64 %m.count118, %m.tombs120
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap119, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins

choice.exit113:                                   ; preds = %m.done209, %and.20.exit
  br label %choice.exit74

m.grow:                                           ; preds = %choice.then112
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.old.cap121 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.old.keys122 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.old.vals123 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.old.states124 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap121, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.live.cnt125 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt125, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap121
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap121
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur126 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur127 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 %m.gv.bytes)
  %arena.cur128 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep129, align 8
  %m.keys.gep130 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep130, align 8
  %m.vals.gep131 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep131, align 8
  %m.states.gep132 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep132, align 8
  %m.count.gep133 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 0, ptr %m.count.gep133, align 8
  %m.tombs.gep134 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep134, align 8
  br label %m.re.loop

m.ins:                                            ; preds = %m.re.done, %choice.then112
  %m.cap179 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap180 = load i64, ptr %m.cap179, align 8
  %m.keys181 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.keys182 = load ptr, ptr %m.keys181, align 8
  %m.vals183 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.vals184 = load ptr, ptr %m.vals183, align 8
  %m.states185 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.states186 = load ptr, ptr %m.states185, align 8
  %mk.data187 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.data188 = load ptr, ptr %mk.data187, align 8
  %mk.len189 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.len190 = load i64, ptr %mk.len189, align 8
  %mk.len191 = and i64 %mk.len190, 281474976710655
  %str.tag192 = lshr i64 %mk.len190, 48
  %str.immortal193 = icmp eq i64 %str.tag192, 0
  br i1 %str.immortal193, label %str_ok195, label %str_gen_check194

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap121
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states124, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  br label %m.ins

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys122, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals123, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap135 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %m.cap136 = load i64, ptr %m.cap135, align 8
  %m.keys137 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 2
  %m.keys138 = load ptr, ptr %m.keys137, align 8
  %m.vals139 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 3
  %m.vals140 = load ptr, ptr %m.vals139, align 8
  %m.states141 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 4
  %m.states142 = load ptr, ptr %m.states141, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data143 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len144 = load i64, ptr %mk.len, align 8
  %mk.len145 = and i64 %mk.len144, 281474976710655
  %str.tag146 = lshr i64 %mk.len144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

str_gen_check148:                                 ; preds = %m.re.ins
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %m.re.ins
  %hash.str = call i64 @dva_hash_string(ptr %mk.data143, i64 %mk.len145)
  %m.capm1 = sub i64 %m.cap136, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale150:                                     ; preds = %str_gen_check148
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

m.loop:                                           ; preds = %m.next, %str_ok149
  %m.idx = phi i64 [ %m.idx0, %str_ok149 ], [ %m.idx.next, %m.next ]
  %m.tomb153 = phi i64 [ -1, %str_ok149 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok149 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap136
  %m.state.gep = getelementptr i8, ptr %m.states142, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb153, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb153, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys138, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen154 = load i64, ptr %mk.slen, align 8
  %mk.slen155 = and i64 %mk.slen154, 281474976710655
  %str.tag156 = lshr i64 %mk.slen154, 48
  %str.immortal157 = icmp eq i64 %str.tag156, 0
  br i1 %str.immortal157, label %str_ok159, label %str_gen_check158

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals140, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb153, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.use.tomb = icmp ne i64 %m.tomb153, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb153, i64 %m.idx
  %m.key.slot174 = getelementptr ptr, ptr %m.keys138, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot174, align 8
  %m.val.slot175 = getelementptr i64, ptr %m.vals140, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot175, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states142, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count177 = load i64, ptr %m.count176, align 8
  %m.count.next = add i64 %m.count177, 1
  %m.count.gep178 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep178, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done

m.done:                                           ; preds = %m.empty, %m.overwrite
  br label %m.re.cont

str_gen_check158:                                 ; preds = %m.found
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag156)
  br i1 %tag.valid162, label %str_ok159, label %str_stale160

str_ok159:                                        ; preds = %str_stale160, %str_gen_check158, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen163 = load i64, ptr %mk.nlen, align 8
  %mk.nlen164 = and i64 %mk.nlen163, 281474976710655
  %str.tag165 = lshr i64 %mk.nlen163, 48
  %str.immortal166 = icmp eq i64 %str.tag165, 0
  br i1 %str.immortal166, label %str_ok168, label %str_gen_check167

str_stale160:                                     ; preds = %str_gen_check158
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok159

str_gen_check167:                                 ; preds = %str_ok159
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid171 = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag165)
  br i1 %tag.valid171, label %str_ok168, label %str_stale169

str_ok168:                                        ; preds = %str_stale169, %str_gen_check167, %str_ok159
  %mk.lenseq = icmp eq i64 %mk.slen155, %mk.nlen164
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale169:                                     ; preds = %str_gen_check167
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok168

mk.eq.then:                                       ; preds = %str_ok168
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata172 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata173 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata172, ptr %mk.ndata173, i64 %mk.nlen164)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok168
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

str_gen_check194:                                 ; preds = %m.ins
  %arena.cur197 = call ptr @dva_arena_current()
  %tag.valid198 = call i1 @dva_arena_validate_tag(ptr %arena.cur197, i64 %str.tag192)
  br i1 %tag.valid198, label %str_ok195, label %str_stale196

str_ok195:                                        ; preds = %str_stale196, %str_gen_check194, %m.ins
  %hash.str199 = call i64 @dva_hash_string(ptr %mk.data188, i64 %mk.len191)
  %m.capm1200 = sub i64 %m.cap180, 1
  %m.idx0201 = and i64 %hash.str199, %m.capm1200
  br label %m.loop202

str_stale196:                                     ; preds = %str_gen_check194
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok195

m.loop202:                                        ; preds = %m.next207, %str_ok195
  %m.idx210 = phi i64 [ %m.idx0201, %str_ok195 ], [ %m.idx.next257, %m.next207 ]
  %m.tomb211 = phi i64 [ -1, %str_ok195 ], [ %m.next.tomb255, %m.next207 ]
  %m.probe212 = phi i64 [ 0, %str_ok195 ], [ %m.probe.next258, %m.next207 ]
  %m.reached.cap213 = icmp eq i64 %m.probe212, %m.cap180
  %m.state.gep214 = getelementptr i8, ptr %m.states186, i64 %m.idx210
  %m.state215 = load i8, ptr %m.state.gep214, align 1
  %m.is.empty216 = icmp eq i8 %m.state215, 0
  %m.stop217 = or i1 %m.is.empty216, %m.reached.cap213
  br i1 %m.stop217, label %m.empty208, label %m.check.tomb203

m.check.tomb203:                                  ; preds = %m.loop202
  %m.is.tomb218 = icmp eq i8 %m.state215, 2
  br i1 %m.is.tomb218, label %m.tomb204, label %m.found205

m.tomb204:                                        ; preds = %m.check.tomb203
  %m.has.tomb219 = icmp ne i64 %m.tomb211, -1
  %m.tomb.sel220 = select i1 %m.has.tomb219, i64 %m.tomb211, i64 %m.idx210
  br label %m.next207

m.found205:                                       ; preds = %m.check.tomb203
  %m.key.slot221 = getelementptr ptr, ptr %m.keys182, i64 %m.idx210
  %mk.stored222 = load ptr, ptr %m.key.slot221, align 8
  %mk.slen223 = getelementptr inbounds { i64, ptr }, ptr %mk.stored222, i32 0, i32 0
  %mk.slen224 = load i64, ptr %mk.slen223, align 8
  %mk.slen225 = and i64 %mk.slen224, 281474976710655
  %str.tag226 = lshr i64 %mk.slen224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

m.overwrite206:                                   ; preds = %mk.eq.merge246
  %m.val.slot254 = getelementptr i64, ptr %m.vals184, i64 %m.idx210
  store i64 1, ptr %m.val.slot254, align 8
  br label %m.done209

m.next207:                                        ; preds = %mk.eq.merge246, %m.tomb204
  %m.next.tomb255 = phi i64 [ %m.tomb.sel220, %m.tomb204 ], [ %m.tomb211, %mk.eq.merge246 ]
  %m.idx.add256 = add i64 %m.idx210, 1
  %m.idx.next257 = and i64 %m.idx.add256, %m.capm1200
  %m.probe.next258 = add i64 %m.probe212, 1
  br label %m.loop202

m.empty208:                                       ; preds = %m.loop202
  %m.use.tomb259 = icmp ne i64 %m.tomb211, -1
  %m.ins.idx260 = select i1 %m.use.tomb259, i64 %m.tomb211, i64 %m.idx210
  %m.key.slot261 = getelementptr ptr, ptr %m.keys182, i64 %m.ins.idx260
  store ptr %fld.load117, ptr %m.key.slot261, align 8
  %m.val.slot262 = getelementptr i64, ptr %m.vals184, i64 %m.ins.idx260
  store i64 1, ptr %m.val.slot262, align 8
  %m.ins.state.slot263 = getelementptr i8, ptr %m.states186, i64 %m.ins.idx260
  store i8 1, ptr %m.ins.state.slot263, align 1
  %m.count264 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %m.count265 = load i64, ptr %m.count264, align 8
  %m.count.next266 = add i64 %m.count265, 1
  %m.count.gep267 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 0
  store i64 %m.count.next266, ptr %m.count.gep267, align 8
  %m.ins.tombs.p268 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load114, i32 0, i32 5
  %m.ins.tombs269 = load i64, ptr %m.ins.tombs.p268, align 8
  %m.tomb.dec270 = select i1 %m.use.tomb259, i64 1, i64 0
  %m.ins.tombs.next271 = sub i64 %m.ins.tombs269, %m.tomb.dec270
  store i64 %m.ins.tombs.next271, ptr %m.ins.tombs.p268, align 8
  br label %m.done209

m.done209:                                        ; preds = %m.empty208, %m.overwrite206
  br label %choice.exit113

str_gen_check228:                                 ; preds = %m.found205
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %m.found205
  %mk.nlen233 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %mk.nlen234 = load i64, ptr %mk.nlen233, align 8
  %mk.nlen235 = and i64 %mk.nlen234, 281474976710655
  %str.tag236 = lshr i64 %mk.nlen234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

str_stale230:                                     ; preds = %str_gen_check228
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

str_gen_check238:                                 ; preds = %str_ok229
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %str_ok229
  %mk.lenseq243 = icmp eq i64 %mk.slen225, %mk.nlen235
  br i1 %mk.lenseq243, label %mk.eq.then244, label %mk.eq.else245

str_stale240:                                     ; preds = %str_gen_check238
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

mk.eq.then244:                                    ; preds = %str_ok239
  %mk.sdata247 = getelementptr inbounds { i64, ptr }, ptr %mk.stored222, i32 0, i32 1
  %mk.sdata248 = load ptr, ptr %mk.sdata247, align 8
  %mk.ndata249 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %mk.ndata250 = load ptr, ptr %mk.ndata249, align 8
  %mk.memcmp251 = call i32 @memcmp(ptr %mk.sdata248, ptr %mk.ndata250, i64 %mk.nlen235)
  %mk.cmpeq252 = icmp eq i32 %mk.memcmp251, 0
  br label %mk.eq.merge246

mk.eq.else245:                                    ; preds = %str_ok239
  br label %mk.eq.merge246

mk.eq.merge246:                                   ; preds = %mk.eq.else245, %mk.eq.then244
  %mk.eq253 = phi i1 [ %mk.cmpeq252, %mk.eq.then244 ], [ false, %mk.eq.else245 ]
  br i1 %mk.eq253, label %m.overwrite206, label %m.next207

a.create289:                                      ; preds = %loop.exit.18
  %arena.cur291 = call ptr @dva_arena_current()
  %a.create292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 24)
  %arena.cur293 = call ptr @dva_arena_current()
  %a.buf294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 128)
  %a.len.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 0
  store i64 0, ptr %a.len.gep295, align 8
  %a.data.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 1
  store ptr %a.buf294, ptr %a.data.gep296, align 8
  %a.cap.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 2
  store i64 16, ptr %a.cap.gep297, align 8
  store ptr %a.create292, ptr %var.stmts, align 8
  br label %a.after290

a.after290:                                       ; preds = %a.create289, %loop.exit.18
  %a.load2298 = load ptr, ptr %var.stmts, align 8
  %a.len.query299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2298, i32 0, i32 0
  %a.len.query300 = load i64, ptr %a.len.query299, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after290
  %counter.load301 = load i64, ptr %loop.idx.21, align 8
  %loop.cond302 = icmp slt i64 %counter.load301, %a.len.query300
  br i1 %loop.cond302, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i303 = sub i64 %counter.load301, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i303, ptr %var._i304, align 8
  store i64 %counter.load301, ptr %var._305, align 8
  store i64 %counter.load301, ptr %var.i, align 8
  %var.load306 = load ptr, ptr %var.stmts, align 8
  %a.load307 = load ptr, ptr %var.stmts, align 8
  %a.null308 = icmp eq ptr %a.load307, null
  br i1 %a.null308, label %a.create309, label %a.after310

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit379
  %step.val739 = load i64, ptr %loop.step.21, align 8
  %loop.next740 = add i64 %counter.load301, %step.val739
  store i64 %loop.next740, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load741 = load ptr, ptr %var.stmts, align 8
  %a.load742 = load ptr, ptr %var.stmts, align 8
  %a.null743 = icmp eq ptr %a.load742, null
  br i1 %a.null743, label %a.create744, label %a.after745

a.create309:                                      ; preds = %loop.body.21
  %arena.cur311 = call ptr @dva_arena_current()
  %a.create312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 24)
  %arena.cur313 = call ptr @dva_arena_current()
  %a.buf314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 128)
  %a.len.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 0
  store i64 0, ptr %a.len.gep315, align 8
  %a.data.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 1
  store ptr %a.buf314, ptr %a.data.gep316, align 8
  %a.cap.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 2
  store i64 16, ptr %a.cap.gep317, align 8
  store ptr %a.create312, ptr %var.stmts, align 8
  br label %a.after310

a.after310:                                       ; preds = %a.create309, %loop.body.21
  %a.load2318 = load ptr, ptr %var.stmts, align 8
  %var.load319 = load i64, ptr %var.i, align 8
  %a.rd.nonnull320 = icmp ne ptr %a.load2318, null
  br i1 %a.rd.nonnull320, label %a.rd.check321, label %a.rd.err.null323

a.rd.check321:                                    ; preds = %a.after310
  %a.rd.len326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2318, i32 0, i32 0
  %a.rd.len327 = load i64, ptr %a.rd.len326, align 8
  %a.rd.ge0328 = icmp sge i64 %var.load319, 0
  %a.rd.lt329 = icmp slt i64 %var.load319, %a.rd.len327
  %a.rd.bounds330 = and i1 %a.rd.ge0328, %a.rd.lt329
  br i1 %a.rd.bounds330, label %a.rd.ok322, label %a.rd.err.oob324

a.rd.ok322:                                       ; preds = %a.rd.check321
  %a.rd.data331 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2318, i32 0, i32 1
  %a.rd.data332 = load ptr, ptr %a.rd.data331, align 8
  %a.rd.elem.gep333 = getelementptr i64, ptr %a.rd.data332, i64 %var.load319
  %a.rd.elem334 = load i64, ptr %a.rd.elem.gep333, align 8
  br label %a.rd.done325

a.rd.err.null323:                                 ; preds = %a.after310
  %arena.cur335 = call ptr @dva_arena_current()
  %err.alloc336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 56)
  %err.code.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 0
  store i64 4011, ptr %err.code.gep337, align 8
  %err.msg.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep338, align 8
  %err.file.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep339, align 8
  %err.line.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 3
  store i64 219, ptr %err.line.gep340, align 8
  %err.col.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 4
  store i64 22, ptr %err.col.gep341, align 8
  %err.ctx.gep342 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 5
  %err.ctx0.gep343 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep342, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep343, align 8
  %err.ctx1.gep344 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep342, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep344, align 8
  %err.p2i345 = ptrtoint ptr %err.alloc336 to i64
  br label %a.rd.done325

a.rd.err.oob324:                                  ; preds = %a.rd.check321
  %arena.cur346 = call ptr @dva_arena_current()
  %err.alloc347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 56)
  %err.code.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 0
  store i64 4011, ptr %err.code.gep348, align 8
  %err.msg.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep349, align 8
  %err.file.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep350, align 8
  %err.line.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 3
  store i64 219, ptr %err.line.gep351, align 8
  %err.col.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 4
  store i64 22, ptr %err.col.gep352, align 8
  %err.ctx.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 5
  %err.ctx0.gep354 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep353, i32 0, i32 0
  store i64 %var.load319, ptr %err.ctx0.gep354, align 8
  %err.ctx1.gep355 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep353, i32 0, i32 1
  store i64 %a.rd.len327, ptr %err.ctx1.gep355, align 8
  %err.p2i356 = ptrtoint ptr %err.alloc347 to i64
  br label %a.rd.done325

a.rd.done325:                                     ; preds = %a.rd.err.oob324, %a.rd.err.null323, %a.rd.ok322
  %a.rd.tag357 = phi i1 [ true, %a.rd.ok322 ], [ false, %a.rd.err.null323 ], [ false, %a.rd.err.oob324 ]
  %a.rd.pay358 = phi i64 [ %a.rd.elem334, %a.rd.ok322 ], [ %err.p2i345, %a.rd.err.null323 ], [ %err.p2i356, %a.rd.err.oob324 ]
  %ram.tag359 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag357, 0
  %ram.pay360 = insertvalue { i1, i64 } %ram.tag359, i64 %a.rd.pay358, 1
  %ram.tag361 = extractvalue { i1, i64 } %ram.pay360, 0
  br i1 %ram.tag361, label %choice.then362, label %choice.else363

choice.then362:                                   ; preds = %a.rd.done325
  %ram.pay365 = extractvalue { i1, i64 } %ram.pay360, 1
  %pay.ptr366 = inttoptr i64 %ram.pay365 to ptr
  store ptr %pay.ptr366, ptr %var._367, align 8
  br label %choice.exit364

choice.else363:                                   ; preds = %a.rd.done325
  %ram.pay368 = extractvalue { i1, i64 } %ram.pay360, 1
  %pay.ptr369 = inttoptr i64 %ram.pay368 to ptr
  store ptr %pay.ptr369, ptr %var._370, align 8
  %arena.cur371 = call ptr @dva_arena_current()
  %enum.alloc372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 16)
  %tag.gep373 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc372, i32 0, i32 0
  store i64 0, ptr %tag.gep373, align 8
  %pay.gep374 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc372, i32 0, i32 1
  %arena.cur375 = call ptr @dva_arena_current()
  %enum.pay.alloc376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 8)
  store i64 0, ptr %enum.pay.alloc376, align 8
  store ptr %enum.pay.alloc376, ptr %pay.gep374, align 8
  br label %choice.exit364

choice.exit364:                                   ; preds = %choice.else363, %choice.then362
  %choice.res377 = phi ptr [ %pay.ptr366, %choice.then362 ], [ %enum.alloc372, %choice.else363 ]
  store ptr %choice.res377, ptr %var.st1, align 8
  %var.load378 = load ptr, ptr %var.st1, align 8
  %tag.gep382 = getelementptr inbounds { i64, ptr }, ptr %var.load378, i32 0, i32 0
  %tag.id383 = load i64, ptr %tag.gep382, align 8
  %tag.match384 = icmp eq i64 %tag.id383, 6
  br i1 %tag.match384, label %choice.case380, label %choice.next381

choice.exit379:                                   ; preds = %choice.next381, %choice.exit494
  br label %loop.latch.21

choice.case380:                                   ; preds = %choice.exit364
  %pay.gep385 = getelementptr inbounds { i64, ptr }, ptr %var.load378, i32 0, i32 1
  %payload.ptr386 = load ptr, ptr %pay.gep385, align 8
  store ptr %payload.ptr386, ptr %var._387, align 8
  store ptr %payload.ptr386, ptr %var.a1, align 8
  %var.load388 = load ptr, ptr %var.a1, align 8
  %call.res389 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load388)
  store i1 %call.res389, ptr %var.is_fwd1, align 1
  %var.load390 = load ptr, ptr %var.gen_names, align 8
  %var.load391 = load ptr, ptr %var.a1, align 8
  %fld.gep392 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load391, i32 0, i32 0
  %fld.load393 = load ptr, ptr %fld.gep392, align 8
  %m.cap394 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load390, i32 0, i32 1
  %m.cap395 = load i64, ptr %m.cap394, align 8
  %m.keys396 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load390, i32 0, i32 2
  %m.keys397 = load ptr, ptr %m.keys396, align 8
  %m.states398 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load390, i32 0, i32 4
  %m.states399 = load ptr, ptr %m.states398, align 8
  %mk.data400 = getelementptr inbounds { i64, ptr }, ptr %fld.load393, i32 0, i32 1
  %mk.data401 = load ptr, ptr %mk.data400, align 8
  %mk.len402 = getelementptr inbounds { i64, ptr }, ptr %fld.load393, i32 0, i32 0
  %mk.len403 = load i64, ptr %mk.len402, align 8
  %mk.len404 = and i64 %mk.len403, 281474976710655
  %str.tag405 = lshr i64 %mk.len403, 48
  %str.immortal406 = icmp eq i64 %str.tag405, 0
  br i1 %str.immortal406, label %str_ok408, label %str_gen_check407

choice.next381:                                   ; preds = %choice.exit364
  br label %choice.exit379

str_gen_check407:                                 ; preds = %choice.case380
  %arena.cur410 = call ptr @dva_arena_current()
  %tag.valid411 = call i1 @dva_arena_validate_tag(ptr %arena.cur410, i64 %str.tag405)
  br i1 %tag.valid411, label %str_ok408, label %str_stale409

str_ok408:                                        ; preds = %str_stale409, %str_gen_check407, %choice.case380
  %hash.str412 = call i64 @dva_hash_string(ptr %mk.data401, i64 %mk.len404)
  %m.capm1413 = sub i64 %m.cap395, 1
  %m.idx0414 = and i64 %hash.str412, %m.capm1413
  br label %m.mem.loop

str_stale409:                                     ; preds = %str_gen_check407
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok408

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok408
  %m.mem.idx = phi i64 [ %m.idx0414, %str_ok408 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe415 = phi i64 [ 0, %str_ok408 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe415, %m.cap395
  %m.mem.state.gep = getelementptr i8, ptr %m.states399, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys397, i64 %m.mem.idx
  %mk.stored416 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen417 = getelementptr inbounds { i64, ptr }, ptr %mk.stored416, i32 0, i32 0
  %mk.slen418 = load i64, ptr %mk.slen417, align 8
  %mk.slen419 = and i64 %mk.slen418, 281474976710655
  %str.tag420 = lshr i64 %mk.slen418, 48
  %str.immortal421 = icmp eq i64 %str.tag420, 0
  br i1 %str.immortal421, label %str_ok423, label %str_gen_check422

m.mem.next:                                       ; preds = %mk.eq.merge440, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1413
  %m.mem.probe.next = add i64 %m.mem.probe415, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load448 = load ptr, ptr %var.a1, align 8
  %fld.gep449 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load448, i32 0, i32 0
  %fld.load450 = load ptr, ptr %fld.gep449, align 8
  store ptr %fld.load450, ptr %var.name1, align 8
  %var.load451 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load451, true
  br i1 %nottmp, label %and.22.then, label %and.22.else

str_gen_check422:                                 ; preds = %m.mem.found
  %arena.cur425 = call ptr @dva_arena_current()
  %tag.valid426 = call i1 @dva_arena_validate_tag(ptr %arena.cur425, i64 %str.tag420)
  br i1 %tag.valid426, label %str_ok423, label %str_stale424

str_ok423:                                        ; preds = %str_stale424, %str_gen_check422, %m.mem.found
  %mk.nlen427 = getelementptr inbounds { i64, ptr }, ptr %fld.load393, i32 0, i32 0
  %mk.nlen428 = load i64, ptr %mk.nlen427, align 8
  %mk.nlen429 = and i64 %mk.nlen428, 281474976710655
  %str.tag430 = lshr i64 %mk.nlen428, 48
  %str.immortal431 = icmp eq i64 %str.tag430, 0
  br i1 %str.immortal431, label %str_ok433, label %str_gen_check432

str_stale424:                                     ; preds = %str_gen_check422
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok423

str_gen_check432:                                 ; preds = %str_ok423
  %arena.cur435 = call ptr @dva_arena_current()
  %tag.valid436 = call i1 @dva_arena_validate_tag(ptr %arena.cur435, i64 %str.tag430)
  br i1 %tag.valid436, label %str_ok433, label %str_stale434

str_ok433:                                        ; preds = %str_stale434, %str_gen_check432, %str_ok423
  %mk.lenseq437 = icmp eq i64 %mk.slen419, %mk.nlen429
  br i1 %mk.lenseq437, label %mk.eq.then438, label %mk.eq.else439

str_stale434:                                     ; preds = %str_gen_check432
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok433

mk.eq.then438:                                    ; preds = %str_ok433
  %mk.sdata441 = getelementptr inbounds { i64, ptr }, ptr %mk.stored416, i32 0, i32 1
  %mk.sdata442 = load ptr, ptr %mk.sdata441, align 8
  %mk.ndata443 = getelementptr inbounds { i64, ptr }, ptr %fld.load393, i32 0, i32 1
  %mk.ndata444 = load ptr, ptr %mk.ndata443, align 8
  %mk.memcmp445 = call i32 @memcmp(ptr %mk.sdata442, ptr %mk.ndata444, i64 %mk.nlen429)
  %mk.cmpeq446 = icmp eq i32 %mk.memcmp445, 0
  br label %mk.eq.merge440

mk.eq.else439:                                    ; preds = %str_ok433
  br label %mk.eq.merge440

mk.eq.merge440:                                   ; preds = %mk.eq.else439, %mk.eq.then438
  %mk.eq447 = phi i1 [ %mk.cmpeq446, %mk.eq.then438 ], [ false, %mk.eq.else439 ]
  br i1 %mk.eq447, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge440
  br label %m.mem.done

and.22.then:                                      ; preds = %m.mem.done
  %var.load452 = load i1, ptr %var.is_gen1, align 1
  %nottmp453 = xor i1 %var.load452, true
  br label %and.22.exit

and.22.else:                                      ; preds = %m.mem.done
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %nottmp453, %and.22.then ], [ %nottmp, %and.22.else ]
  br i1 %and.22.phi, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %and.22.exit
  %var.load454 = load ptr, ptr %var.a1, align 8
  %fld.gep455 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load454, i32 0, i32 2
  %fld.load456 = load i1, ptr %fld.gep455, align 1
  %nottmp457 = xor i1 %fld.load456, true
  br label %and.23.exit

and.23.else:                                      ; preds = %and.22.exit
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp457, %and.23.then ], [ %and.22.phi, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

and.24.then:                                      ; preds = %and.23.exit
  %var.load458 = load ptr, ptr %var.a1, align 8
  %fld.gep459 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load458, i32 0, i32 4
  %fld.load460 = load i1, ptr %fld.gep459, align 1
  %nottmp461 = xor i1 %fld.load460, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp461, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %and.24.exit
  %var.load462 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len463 = getelementptr inbounds { i64, ptr }, ptr %var.load462, i32 0, i32 0
  %eq.lhs.len464 = load i64, ptr %eq.lhs.len463, align 8
  %eq.lhs.len465 = and i64 %eq.lhs.len464, 281474976710655
  %str.tag466 = lshr i64 %eq.lhs.len464, 48
  %str.immortal467 = icmp eq i64 %str.tag466, 0
  br i1 %str.immortal467, label %str_ok469, label %str_gen_check468

and.25.else:                                      ; preds = %and.24.exit
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %str.eq.merge485
  %and.25.phi = phi i1 [ %str.neq492, %str.eq.merge485 ], [ %and.24.phi, %and.25.else ]
  br i1 %and.25.phi, label %choice.then493, label %choice.exit494

str_gen_check468:                                 ; preds = %and.25.then
  %arena.cur471 = call ptr @dva_arena_current()
  %tag.valid472 = call i1 @dva_arena_validate_tag(ptr %arena.cur471, i64 %str.tag466)
  br i1 %tag.valid472, label %str_ok469, label %str_stale470

str_ok469:                                        ; preds = %str_stale470, %str_gen_check468, %and.25.then
  %eq.rhs.len473 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len474 = and i64 %eq.rhs.len473, 281474976710655
  %str.tag475 = lshr i64 %eq.rhs.len473, 48
  %str.immortal476 = icmp eq i64 %str.tag475, 0
  br i1 %str.immortal476, label %str_ok478, label %str_gen_check477

str_stale470:                                     ; preds = %str_gen_check468
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok469

str_gen_check477:                                 ; preds = %str_ok469
  %arena.cur480 = call ptr @dva_arena_current()
  %tag.valid481 = call i1 @dva_arena_validate_tag(ptr %arena.cur480, i64 %str.tag475)
  br i1 %tag.valid481, label %str_ok478, label %str_stale479

str_ok478:                                        ; preds = %str_stale479, %str_gen_check477, %str_ok469
  %eq.len482 = icmp eq i64 %eq.lhs.len465, %eq.rhs.len474
  br i1 %eq.len482, label %str.eq.then483, label %str.eq.else484

str_stale479:                                     ; preds = %str_gen_check477
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok478

str.eq.then483:                                   ; preds = %str_ok478
  %eq.lhs.data486 = getelementptr inbounds { i64, ptr }, ptr %var.load462, i32 0, i32 1
  %eq.lhs.data487 = load ptr, ptr %eq.lhs.data486, align 8
  %eq.rhs.data488 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp489 = call i32 @memcmp(ptr %eq.lhs.data487, ptr %eq.rhs.data488, i64 %eq.lhs.len465)
  %eq.cmp.zero490 = icmp eq i32 %eq.memcmp489, 0
  br label %str.eq.merge485

str.eq.else484:                                   ; preds = %str_ok478
  br label %str.eq.merge485

str.eq.merge485:                                  ; preds = %str.eq.else484, %str.eq.then483
  %str.eq.result491 = phi i1 [ %eq.cmp.zero490, %str.eq.then483 ], [ false, %str.eq.else484 ]
  %str.neq492 = xor i1 %str.eq.result491, true
  br label %and.25.exit

choice.then493:                                   ; preds = %and.25.exit
  %var.load495 = load ptr, ptr %var.def_names, align 8
  %var.load496 = load ptr, ptr %var.name1, align 8
  %m.count497 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  %m.count498 = load i64, ptr %m.count497, align 8
  %m.cap499 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 1
  %m.cap500 = load i64, ptr %m.cap499, align 8
  %m.tombs501 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 5
  %m.tombs502 = load i64, ptr %m.tombs501, align 8
  %m.occupied503 = add i64 %m.count498, %m.tombs502
  %m.c.plus504 = add i64 %m.occupied503, 1
  %m.c.lhs505 = mul i64 %m.c.plus504, 4
  %m.c.rhs506 = mul i64 %m.cap500, 3
  %m.need.grow507 = icmp sgt i64 %m.c.lhs505, %m.c.rhs506
  br i1 %m.need.grow507, label %m.grow508, label %m.ins509

choice.exit494:                                   ; preds = %m.done676, %and.25.exit
  br label %choice.exit379

m.grow508:                                        ; preds = %choice.then493
  %m.old.cap510 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 1
  %m.old.cap511 = load i64, ptr %m.old.cap510, align 8
  %m.old.keys512 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 2
  %m.old.keys513 = load ptr, ptr %m.old.keys512, align 8
  %m.old.vals514 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 3
  %m.old.vals515 = load ptr, ptr %m.old.vals514, align 8
  %m.old.states516 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 4
  %m.old.states517 = load ptr, ptr %m.old.states516, align 8
  %m.double.cap518 = mul i64 %m.old.cap511, 2
  %m.live.cnt519 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  %m.live.cnt520 = load i64, ptr %m.live.cnt519, align 8
  %m.live.x2521 = mul i64 %m.live.cnt520, 2
  %m.should.double522 = icmp sgt i64 %m.live.x2521, %m.old.cap511
  %m.new.cap523 = select i1 %m.should.double522, i64 %m.double.cap518, i64 %m.old.cap511
  %m.gk.bytes524 = mul i64 %m.new.cap523, 8
  %arena.cur525 = call ptr @dva_arena_current()
  %m.gk526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %m.gk.bytes524)
  %m.gv.bytes527 = mul i64 %m.new.cap523, 8
  %arena.cur528 = call ptr @dva_arena_current()
  %m.gv529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 %m.gv.bytes527)
  %arena.cur530 = call ptr @dva_arena_current()
  %m.gs531 = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 %m.new.cap523)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs531, i8 0, i64 %m.new.cap523, i1 false)
  %m.cap.gep532 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 1
  store i64 %m.new.cap523, ptr %m.cap.gep532, align 8
  %m.keys.gep533 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 2
  store ptr %m.gk526, ptr %m.keys.gep533, align 8
  %m.vals.gep534 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 3
  store ptr %m.gv529, ptr %m.vals.gep534, align 8
  %m.states.gep535 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 4
  store ptr %m.gs531, ptr %m.states.gep535, align 8
  %m.count.gep536 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  store i64 0, ptr %m.count.gep536, align 8
  %m.tombs.gep537 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep537, align 8
  br label %m.re.loop538

m.ins509:                                         ; preds = %m.re.done541, %choice.then493
  %m.cap646 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 1
  %m.cap647 = load i64, ptr %m.cap646, align 8
  %m.keys648 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 2
  %m.keys649 = load ptr, ptr %m.keys648, align 8
  %m.vals650 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 3
  %m.vals651 = load ptr, ptr %m.vals650, align 8
  %m.states652 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 4
  %m.states653 = load ptr, ptr %m.states652, align 8
  %mk.data654 = getelementptr inbounds { i64, ptr }, ptr %var.load496, i32 0, i32 1
  %mk.data655 = load ptr, ptr %mk.data654, align 8
  %mk.len656 = getelementptr inbounds { i64, ptr }, ptr %var.load496, i32 0, i32 0
  %mk.len657 = load i64, ptr %mk.len656, align 8
  %mk.len658 = and i64 %mk.len657, 281474976710655
  %str.tag659 = lshr i64 %mk.len657, 48
  %str.immortal660 = icmp eq i64 %str.tag659, 0
  br i1 %str.immortal660, label %str_ok662, label %str_gen_check661

m.re.loop538:                                     ; preds = %m.re.cont540, %m.grow508
  %m.re.i542 = phi i64 [ 0, %m.grow508 ], [ %m.re.i.next645, %m.re.cont540 ]
  %m.re.lt543 = icmp slt i64 %m.re.i542, %m.old.cap511
  br i1 %m.re.lt543, label %m.re.body539, label %m.re.done541

m.re.body539:                                     ; preds = %m.re.loop538
  %m.re.state.gep544 = getelementptr i8, ptr %m.old.states517, i64 %m.re.i542
  %m.re.state545 = load i8, ptr %m.re.state.gep544, align 1
  %m.re.occ546 = icmp eq i8 %m.re.state545, 1
  br i1 %m.re.occ546, label %m.re.ins547, label %m.re.cont540

m.re.cont540:                                     ; preds = %m.done582, %m.re.body539
  %m.re.i.next645 = add i64 %m.re.i542, 1
  br label %m.re.loop538

m.re.done541:                                     ; preds = %m.re.loop538
  br label %m.ins509

m.re.ins547:                                      ; preds = %m.re.body539
  %m.re.key.slot548 = getelementptr ptr, ptr %m.old.keys513, i64 %m.re.i542
  %m.re.val.slot549 = getelementptr i64, ptr %m.old.vals515, i64 %m.re.i542
  %m.re.key550 = load ptr, ptr %m.re.key.slot548, align 8
  %m.re.val551 = load i64, ptr %m.re.val.slot549, align 8
  %m.cap552 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 1
  %m.cap553 = load i64, ptr %m.cap552, align 8
  %m.keys554 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 2
  %m.keys555 = load ptr, ptr %m.keys554, align 8
  %m.vals556 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 3
  %m.vals557 = load ptr, ptr %m.vals556, align 8
  %m.states558 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 4
  %m.states559 = load ptr, ptr %m.states558, align 8
  %mk.data560 = getelementptr inbounds { i64, ptr }, ptr %m.re.key550, i32 0, i32 1
  %mk.data561 = load ptr, ptr %mk.data560, align 8
  %mk.len562 = getelementptr inbounds { i64, ptr }, ptr %m.re.key550, i32 0, i32 0
  %mk.len563 = load i64, ptr %mk.len562, align 8
  %mk.len564 = and i64 %mk.len563, 281474976710655
  %str.tag565 = lshr i64 %mk.len563, 48
  %str.immortal566 = icmp eq i64 %str.tag565, 0
  br i1 %str.immortal566, label %str_ok568, label %str_gen_check567

str_gen_check567:                                 ; preds = %m.re.ins547
  %arena.cur570 = call ptr @dva_arena_current()
  %tag.valid571 = call i1 @dva_arena_validate_tag(ptr %arena.cur570, i64 %str.tag565)
  br i1 %tag.valid571, label %str_ok568, label %str_stale569

str_ok568:                                        ; preds = %str_stale569, %str_gen_check567, %m.re.ins547
  %hash.str572 = call i64 @dva_hash_string(ptr %mk.data561, i64 %mk.len564)
  %m.capm1573 = sub i64 %m.cap553, 1
  %m.idx0574 = and i64 %hash.str572, %m.capm1573
  br label %m.loop575

str_stale569:                                     ; preds = %str_gen_check567
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok568

m.loop575:                                        ; preds = %m.next580, %str_ok568
  %m.idx583 = phi i64 [ %m.idx0574, %str_ok568 ], [ %m.idx.next630, %m.next580 ]
  %m.tomb584 = phi i64 [ -1, %str_ok568 ], [ %m.next.tomb628, %m.next580 ]
  %m.probe585 = phi i64 [ 0, %str_ok568 ], [ %m.probe.next631, %m.next580 ]
  %m.reached.cap586 = icmp eq i64 %m.probe585, %m.cap553
  %m.state.gep587 = getelementptr i8, ptr %m.states559, i64 %m.idx583
  %m.state588 = load i8, ptr %m.state.gep587, align 1
  %m.is.empty589 = icmp eq i8 %m.state588, 0
  %m.stop590 = or i1 %m.is.empty589, %m.reached.cap586
  br i1 %m.stop590, label %m.empty581, label %m.check.tomb576

m.check.tomb576:                                  ; preds = %m.loop575
  %m.is.tomb591 = icmp eq i8 %m.state588, 2
  br i1 %m.is.tomb591, label %m.tomb577, label %m.found578

m.tomb577:                                        ; preds = %m.check.tomb576
  %m.has.tomb592 = icmp ne i64 %m.tomb584, -1
  %m.tomb.sel593 = select i1 %m.has.tomb592, i64 %m.tomb584, i64 %m.idx583
  br label %m.next580

m.found578:                                       ; preds = %m.check.tomb576
  %m.key.slot594 = getelementptr ptr, ptr %m.keys555, i64 %m.idx583
  %mk.stored595 = load ptr, ptr %m.key.slot594, align 8
  %mk.slen596 = getelementptr inbounds { i64, ptr }, ptr %mk.stored595, i32 0, i32 0
  %mk.slen597 = load i64, ptr %mk.slen596, align 8
  %mk.slen598 = and i64 %mk.slen597, 281474976710655
  %str.tag599 = lshr i64 %mk.slen597, 48
  %str.immortal600 = icmp eq i64 %str.tag599, 0
  br i1 %str.immortal600, label %str_ok602, label %str_gen_check601

m.overwrite579:                                   ; preds = %mk.eq.merge619
  %m.val.slot627 = getelementptr i64, ptr %m.vals557, i64 %m.idx583
  store i64 %m.re.val551, ptr %m.val.slot627, align 8
  br label %m.done582

m.next580:                                        ; preds = %mk.eq.merge619, %m.tomb577
  %m.next.tomb628 = phi i64 [ %m.tomb.sel593, %m.tomb577 ], [ %m.tomb584, %mk.eq.merge619 ]
  %m.idx.add629 = add i64 %m.idx583, 1
  %m.idx.next630 = and i64 %m.idx.add629, %m.capm1573
  %m.probe.next631 = add i64 %m.probe585, 1
  br label %m.loop575

m.empty581:                                       ; preds = %m.loop575
  %m.use.tomb632 = icmp ne i64 %m.tomb584, -1
  %m.ins.idx633 = select i1 %m.use.tomb632, i64 %m.tomb584, i64 %m.idx583
  %m.key.slot634 = getelementptr ptr, ptr %m.keys555, i64 %m.ins.idx633
  store ptr %m.re.key550, ptr %m.key.slot634, align 8
  %m.val.slot635 = getelementptr i64, ptr %m.vals557, i64 %m.ins.idx633
  store i64 %m.re.val551, ptr %m.val.slot635, align 8
  %m.ins.state.slot636 = getelementptr i8, ptr %m.states559, i64 %m.ins.idx633
  store i8 1, ptr %m.ins.state.slot636, align 1
  %m.count637 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  %m.count638 = load i64, ptr %m.count637, align 8
  %m.count.next639 = add i64 %m.count638, 1
  %m.count.gep640 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  store i64 %m.count.next639, ptr %m.count.gep640, align 8
  %m.ins.tombs.p641 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 5
  %m.ins.tombs642 = load i64, ptr %m.ins.tombs.p641, align 8
  %m.tomb.dec643 = select i1 %m.use.tomb632, i64 1, i64 0
  %m.ins.tombs.next644 = sub i64 %m.ins.tombs642, %m.tomb.dec643
  store i64 %m.ins.tombs.next644, ptr %m.ins.tombs.p641, align 8
  br label %m.done582

m.done582:                                        ; preds = %m.empty581, %m.overwrite579
  br label %m.re.cont540

str_gen_check601:                                 ; preds = %m.found578
  %arena.cur604 = call ptr @dva_arena_current()
  %tag.valid605 = call i1 @dva_arena_validate_tag(ptr %arena.cur604, i64 %str.tag599)
  br i1 %tag.valid605, label %str_ok602, label %str_stale603

str_ok602:                                        ; preds = %str_stale603, %str_gen_check601, %m.found578
  %mk.nlen606 = getelementptr inbounds { i64, ptr }, ptr %m.re.key550, i32 0, i32 0
  %mk.nlen607 = load i64, ptr %mk.nlen606, align 8
  %mk.nlen608 = and i64 %mk.nlen607, 281474976710655
  %str.tag609 = lshr i64 %mk.nlen607, 48
  %str.immortal610 = icmp eq i64 %str.tag609, 0
  br i1 %str.immortal610, label %str_ok612, label %str_gen_check611

str_stale603:                                     ; preds = %str_gen_check601
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok602

str_gen_check611:                                 ; preds = %str_ok602
  %arena.cur614 = call ptr @dva_arena_current()
  %tag.valid615 = call i1 @dva_arena_validate_tag(ptr %arena.cur614, i64 %str.tag609)
  br i1 %tag.valid615, label %str_ok612, label %str_stale613

str_ok612:                                        ; preds = %str_stale613, %str_gen_check611, %str_ok602
  %mk.lenseq616 = icmp eq i64 %mk.slen598, %mk.nlen608
  br i1 %mk.lenseq616, label %mk.eq.then617, label %mk.eq.else618

str_stale613:                                     ; preds = %str_gen_check611
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok612

mk.eq.then617:                                    ; preds = %str_ok612
  %mk.sdata620 = getelementptr inbounds { i64, ptr }, ptr %mk.stored595, i32 0, i32 1
  %mk.sdata621 = load ptr, ptr %mk.sdata620, align 8
  %mk.ndata622 = getelementptr inbounds { i64, ptr }, ptr %m.re.key550, i32 0, i32 1
  %mk.ndata623 = load ptr, ptr %mk.ndata622, align 8
  %mk.memcmp624 = call i32 @memcmp(ptr %mk.sdata621, ptr %mk.ndata623, i64 %mk.nlen608)
  %mk.cmpeq625 = icmp eq i32 %mk.memcmp624, 0
  br label %mk.eq.merge619

mk.eq.else618:                                    ; preds = %str_ok612
  br label %mk.eq.merge619

mk.eq.merge619:                                   ; preds = %mk.eq.else618, %mk.eq.then617
  %mk.eq626 = phi i1 [ %mk.cmpeq625, %mk.eq.then617 ], [ false, %mk.eq.else618 ]
  br i1 %mk.eq626, label %m.overwrite579, label %m.next580

str_gen_check661:                                 ; preds = %m.ins509
  %arena.cur664 = call ptr @dva_arena_current()
  %tag.valid665 = call i1 @dva_arena_validate_tag(ptr %arena.cur664, i64 %str.tag659)
  br i1 %tag.valid665, label %str_ok662, label %str_stale663

str_ok662:                                        ; preds = %str_stale663, %str_gen_check661, %m.ins509
  %hash.str666 = call i64 @dva_hash_string(ptr %mk.data655, i64 %mk.len658)
  %m.capm1667 = sub i64 %m.cap647, 1
  %m.idx0668 = and i64 %hash.str666, %m.capm1667
  br label %m.loop669

str_stale663:                                     ; preds = %str_gen_check661
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok662

m.loop669:                                        ; preds = %m.next674, %str_ok662
  %m.idx677 = phi i64 [ %m.idx0668, %str_ok662 ], [ %m.idx.next724, %m.next674 ]
  %m.tomb678 = phi i64 [ -1, %str_ok662 ], [ %m.next.tomb722, %m.next674 ]
  %m.probe679 = phi i64 [ 0, %str_ok662 ], [ %m.probe.next725, %m.next674 ]
  %m.reached.cap680 = icmp eq i64 %m.probe679, %m.cap647
  %m.state.gep681 = getelementptr i8, ptr %m.states653, i64 %m.idx677
  %m.state682 = load i8, ptr %m.state.gep681, align 1
  %m.is.empty683 = icmp eq i8 %m.state682, 0
  %m.stop684 = or i1 %m.is.empty683, %m.reached.cap680
  br i1 %m.stop684, label %m.empty675, label %m.check.tomb670

m.check.tomb670:                                  ; preds = %m.loop669
  %m.is.tomb685 = icmp eq i8 %m.state682, 2
  br i1 %m.is.tomb685, label %m.tomb671, label %m.found672

m.tomb671:                                        ; preds = %m.check.tomb670
  %m.has.tomb686 = icmp ne i64 %m.tomb678, -1
  %m.tomb.sel687 = select i1 %m.has.tomb686, i64 %m.tomb678, i64 %m.idx677
  br label %m.next674

m.found672:                                       ; preds = %m.check.tomb670
  %m.key.slot688 = getelementptr ptr, ptr %m.keys649, i64 %m.idx677
  %mk.stored689 = load ptr, ptr %m.key.slot688, align 8
  %mk.slen690 = getelementptr inbounds { i64, ptr }, ptr %mk.stored689, i32 0, i32 0
  %mk.slen691 = load i64, ptr %mk.slen690, align 8
  %mk.slen692 = and i64 %mk.slen691, 281474976710655
  %str.tag693 = lshr i64 %mk.slen691, 48
  %str.immortal694 = icmp eq i64 %str.tag693, 0
  br i1 %str.immortal694, label %str_ok696, label %str_gen_check695

m.overwrite673:                                   ; preds = %mk.eq.merge713
  %m.val.slot721 = getelementptr i64, ptr %m.vals651, i64 %m.idx677
  store i64 1, ptr %m.val.slot721, align 8
  br label %m.done676

m.next674:                                        ; preds = %mk.eq.merge713, %m.tomb671
  %m.next.tomb722 = phi i64 [ %m.tomb.sel687, %m.tomb671 ], [ %m.tomb678, %mk.eq.merge713 ]
  %m.idx.add723 = add i64 %m.idx677, 1
  %m.idx.next724 = and i64 %m.idx.add723, %m.capm1667
  %m.probe.next725 = add i64 %m.probe679, 1
  br label %m.loop669

m.empty675:                                       ; preds = %m.loop669
  %m.use.tomb726 = icmp ne i64 %m.tomb678, -1
  %m.ins.idx727 = select i1 %m.use.tomb726, i64 %m.tomb678, i64 %m.idx677
  %m.key.slot728 = getelementptr ptr, ptr %m.keys649, i64 %m.ins.idx727
  store ptr %var.load496, ptr %m.key.slot728, align 8
  %m.val.slot729 = getelementptr i64, ptr %m.vals651, i64 %m.ins.idx727
  store i64 1, ptr %m.val.slot729, align 8
  %m.ins.state.slot730 = getelementptr i8, ptr %m.states653, i64 %m.ins.idx727
  store i8 1, ptr %m.ins.state.slot730, align 1
  %m.count731 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  %m.count732 = load i64, ptr %m.count731, align 8
  %m.count.next733 = add i64 %m.count732, 1
  %m.count.gep734 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 0
  store i64 %m.count.next733, ptr %m.count.gep734, align 8
  %m.ins.tombs.p735 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load495, i32 0, i32 5
  %m.ins.tombs736 = load i64, ptr %m.ins.tombs.p735, align 8
  %m.tomb.dec737 = select i1 %m.use.tomb726, i64 1, i64 0
  %m.ins.tombs.next738 = sub i64 %m.ins.tombs736, %m.tomb.dec737
  store i64 %m.ins.tombs.next738, ptr %m.ins.tombs.p735, align 8
  br label %m.done676

m.done676:                                        ; preds = %m.empty675, %m.overwrite673
  br label %choice.exit494

str_gen_check695:                                 ; preds = %m.found672
  %arena.cur698 = call ptr @dva_arena_current()
  %tag.valid699 = call i1 @dva_arena_validate_tag(ptr %arena.cur698, i64 %str.tag693)
  br i1 %tag.valid699, label %str_ok696, label %str_stale697

str_ok696:                                        ; preds = %str_stale697, %str_gen_check695, %m.found672
  %mk.nlen700 = getelementptr inbounds { i64, ptr }, ptr %var.load496, i32 0, i32 0
  %mk.nlen701 = load i64, ptr %mk.nlen700, align 8
  %mk.nlen702 = and i64 %mk.nlen701, 281474976710655
  %str.tag703 = lshr i64 %mk.nlen701, 48
  %str.immortal704 = icmp eq i64 %str.tag703, 0
  br i1 %str.immortal704, label %str_ok706, label %str_gen_check705

str_stale697:                                     ; preds = %str_gen_check695
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok696

str_gen_check705:                                 ; preds = %str_ok696
  %arena.cur708 = call ptr @dva_arena_current()
  %tag.valid709 = call i1 @dva_arena_validate_tag(ptr %arena.cur708, i64 %str.tag703)
  br i1 %tag.valid709, label %str_ok706, label %str_stale707

str_ok706:                                        ; preds = %str_stale707, %str_gen_check705, %str_ok696
  %mk.lenseq710 = icmp eq i64 %mk.slen692, %mk.nlen702
  br i1 %mk.lenseq710, label %mk.eq.then711, label %mk.eq.else712

str_stale707:                                     ; preds = %str_gen_check705
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok706

mk.eq.then711:                                    ; preds = %str_ok706
  %mk.sdata714 = getelementptr inbounds { i64, ptr }, ptr %mk.stored689, i32 0, i32 1
  %mk.sdata715 = load ptr, ptr %mk.sdata714, align 8
  %mk.ndata716 = getelementptr inbounds { i64, ptr }, ptr %var.load496, i32 0, i32 1
  %mk.ndata717 = load ptr, ptr %mk.ndata716, align 8
  %mk.memcmp718 = call i32 @memcmp(ptr %mk.sdata715, ptr %mk.ndata717, i64 %mk.nlen702)
  %mk.cmpeq719 = icmp eq i32 %mk.memcmp718, 0
  br label %mk.eq.merge713

mk.eq.else712:                                    ; preds = %str_ok706
  br label %mk.eq.merge713

mk.eq.merge713:                                   ; preds = %mk.eq.else712, %mk.eq.then711
  %mk.eq720 = phi i1 [ %mk.cmpeq719, %mk.eq.then711 ], [ false, %mk.eq.else712 ]
  br i1 %mk.eq720, label %m.overwrite673, label %m.next674

a.create744:                                      ; preds = %loop.exit.21
  %arena.cur746 = call ptr @dva_arena_current()
  %a.create747 = call ptr @dva_arena_alloc(ptr %arena.cur746, i64 24)
  %arena.cur748 = call ptr @dva_arena_current()
  %a.buf749 = call ptr @dva_arena_alloc(ptr %arena.cur748, i64 128)
  %a.len.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create747, i32 0, i32 0
  store i64 0, ptr %a.len.gep750, align 8
  %a.data.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create747, i32 0, i32 1
  store ptr %a.buf749, ptr %a.data.gep751, align 8
  %a.cap.gep752 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create747, i32 0, i32 2
  store i64 16, ptr %a.cap.gep752, align 8
  store ptr %a.create747, ptr %var.stmts, align 8
  br label %a.after745

a.after745:                                       ; preds = %a.create744, %loop.exit.21
  %a.load2753 = load ptr, ptr %var.stmts, align 8
  %a.len.query754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2753, i32 0, i32 0
  %a.len.query755 = load i64, ptr %a.len.query754, align 8
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %a.after745
  %counter.load756 = load i64, ptr %loop.idx.26, align 8
  %loop.cond757 = icmp slt i64 %counter.load756, %a.len.query755
  br i1 %loop.cond757, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i758 = sub i64 %counter.load756, 0
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i758, ptr %var._i759, align 8
  store i64 %counter.load756, ptr %var._760, align 8
  store i64 %counter.load756, ptr %var.j, align 8
  %var.load761 = load ptr, ptr %var.stmts, align 8
  %a.load762 = load ptr, ptr %var.stmts, align 8
  %a.null763 = icmp eq ptr %a.load762, null
  br i1 %a.null763, label %a.create764, label %a.after765

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit834
  %step.val1467 = load i64, ptr %loop.step.26, align 8
  %loop.next1468 = add i64 %counter.load756, %step.val1467
  store i64 %loop.next1468, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  %var.load1469 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1469

a.create764:                                      ; preds = %loop.body.26
  %arena.cur766 = call ptr @dva_arena_current()
  %a.create767 = call ptr @dva_arena_alloc(ptr %arena.cur766, i64 24)
  %arena.cur768 = call ptr @dva_arena_current()
  %a.buf769 = call ptr @dva_arena_alloc(ptr %arena.cur768, i64 128)
  %a.len.gep770 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 0
  store i64 0, ptr %a.len.gep770, align 8
  %a.data.gep771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 1
  store ptr %a.buf769, ptr %a.data.gep771, align 8
  %a.cap.gep772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create767, i32 0, i32 2
  store i64 16, ptr %a.cap.gep772, align 8
  store ptr %a.create767, ptr %var.stmts, align 8
  br label %a.after765

a.after765:                                       ; preds = %a.create764, %loop.body.26
  %a.load2773 = load ptr, ptr %var.stmts, align 8
  %var.load774 = load i64, ptr %var.j, align 8
  %a.rd.nonnull775 = icmp ne ptr %a.load2773, null
  br i1 %a.rd.nonnull775, label %a.rd.check776, label %a.rd.err.null778

a.rd.check776:                                    ; preds = %a.after765
  %a.rd.len781 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 0
  %a.rd.len782 = load i64, ptr %a.rd.len781, align 8
  %a.rd.ge0783 = icmp sge i64 %var.load774, 0
  %a.rd.lt784 = icmp slt i64 %var.load774, %a.rd.len782
  %a.rd.bounds785 = and i1 %a.rd.ge0783, %a.rd.lt784
  br i1 %a.rd.bounds785, label %a.rd.ok777, label %a.rd.err.oob779

a.rd.ok777:                                       ; preds = %a.rd.check776
  %a.rd.data786 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2773, i32 0, i32 1
  %a.rd.data787 = load ptr, ptr %a.rd.data786, align 8
  %a.rd.elem.gep788 = getelementptr i64, ptr %a.rd.data787, i64 %var.load774
  %a.rd.elem789 = load i64, ptr %a.rd.elem.gep788, align 8
  br label %a.rd.done780

a.rd.err.null778:                                 ; preds = %a.after765
  %arena.cur790 = call ptr @dva_arena_current()
  %err.alloc791 = call ptr @dva_arena_alloc(ptr %arena.cur790, i64 56)
  %err.code.gep792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 0
  store i64 4011, ptr %err.code.gep792, align 8
  %err.msg.gep793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep793, align 8
  %err.file.gep794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep794, align 8
  %err.line.gep795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 3
  store i64 229, ptr %err.line.gep795, align 8
  %err.col.gep796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 4
  store i64 22, ptr %err.col.gep796, align 8
  %err.ctx.gep797 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc791, i32 0, i32 5
  %err.ctx0.gep798 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep797, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep798, align 8
  %err.ctx1.gep799 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep797, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep799, align 8
  %err.p2i800 = ptrtoint ptr %err.alloc791 to i64
  br label %a.rd.done780

a.rd.err.oob779:                                  ; preds = %a.rd.check776
  %arena.cur801 = call ptr @dva_arena_current()
  %err.alloc802 = call ptr @dva_arena_alloc(ptr %arena.cur801, i64 56)
  %err.code.gep803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 0
  store i64 4011, ptr %err.code.gep803, align 8
  %err.msg.gep804 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep804, align 8
  %err.file.gep805 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep805, align 8
  %err.line.gep806 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 3
  store i64 229, ptr %err.line.gep806, align 8
  %err.col.gep807 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 4
  store i64 22, ptr %err.col.gep807, align 8
  %err.ctx.gep808 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc802, i32 0, i32 5
  %err.ctx0.gep809 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep808, i32 0, i32 0
  store i64 %var.load774, ptr %err.ctx0.gep809, align 8
  %err.ctx1.gep810 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep808, i32 0, i32 1
  store i64 %a.rd.len782, ptr %err.ctx1.gep810, align 8
  %err.p2i811 = ptrtoint ptr %err.alloc802 to i64
  br label %a.rd.done780

a.rd.done780:                                     ; preds = %a.rd.err.oob779, %a.rd.err.null778, %a.rd.ok777
  %a.rd.tag812 = phi i1 [ true, %a.rd.ok777 ], [ false, %a.rd.err.null778 ], [ false, %a.rd.err.oob779 ]
  %a.rd.pay813 = phi i64 [ %a.rd.elem789, %a.rd.ok777 ], [ %err.p2i800, %a.rd.err.null778 ], [ %err.p2i811, %a.rd.err.oob779 ]
  %ram.tag814 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag812, 0
  %ram.pay815 = insertvalue { i1, i64 } %ram.tag814, i64 %a.rd.pay813, 1
  %ram.tag816 = extractvalue { i1, i64 } %ram.pay815, 0
  br i1 %ram.tag816, label %choice.then817, label %choice.else818

choice.then817:                                   ; preds = %a.rd.done780
  %ram.pay820 = extractvalue { i1, i64 } %ram.pay815, 1
  %pay.ptr821 = inttoptr i64 %ram.pay820 to ptr
  store ptr %pay.ptr821, ptr %var._822, align 8
  br label %choice.exit819

choice.else818:                                   ; preds = %a.rd.done780
  %ram.pay823 = extractvalue { i1, i64 } %ram.pay815, 1
  %pay.ptr824 = inttoptr i64 %ram.pay823 to ptr
  store ptr %pay.ptr824, ptr %var._825, align 8
  %arena.cur826 = call ptr @dva_arena_current()
  %enum.alloc827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 16)
  %tag.gep828 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc827, i32 0, i32 0
  store i64 0, ptr %tag.gep828, align 8
  %pay.gep829 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc827, i32 0, i32 1
  %arena.cur830 = call ptr @dva_arena_current()
  %enum.pay.alloc831 = call ptr @dva_arena_alloc(ptr %arena.cur830, i64 8)
  store i64 0, ptr %enum.pay.alloc831, align 8
  store ptr %enum.pay.alloc831, ptr %pay.gep829, align 8
  br label %choice.exit819

choice.exit819:                                   ; preds = %choice.else818, %choice.then817
  %choice.res832 = phi ptr [ %pay.ptr821, %choice.then817 ], [ %enum.alloc827, %choice.else818 ]
  store ptr %choice.res832, ptr %var.st2, align 8
  %var.load833 = load ptr, ptr %var.st2, align 8
  %tag.gep837 = getelementptr inbounds { i64, ptr }, ptr %var.load833, i32 0, i32 0
  %tag.id838 = load i64, ptr %tag.gep837, align 8
  %tag.match839 = icmp eq i64 %tag.id838, 6
  br i1 %tag.match839, label %choice.case835, label %choice.next836

choice.exit834:                                   ; preds = %choice.next836, %choice.exit969
  br label %loop.latch.26

choice.case835:                                   ; preds = %choice.exit819
  %pay.gep840 = getelementptr inbounds { i64, ptr }, ptr %var.load833, i32 0, i32 1
  %payload.ptr841 = load ptr, ptr %pay.gep840, align 8
  store ptr %payload.ptr841, ptr %var._842, align 8
  store ptr %payload.ptr841, ptr %var.a2, align 8
  %var.load843 = load ptr, ptr %var.a2, align 8
  %call.res844 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load843)
  store i1 %call.res844, ptr %var.is_fwd2, align 1
  %var.load845 = load ptr, ptr %var.gen_names, align 8
  %var.load846 = load ptr, ptr %var.a2, align 8
  %fld.gep847 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load846, i32 0, i32 0
  %fld.load848 = load ptr, ptr %fld.gep847, align 8
  %m.cap849 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load845, i32 0, i32 1
  %m.cap850 = load i64, ptr %m.cap849, align 8
  %m.keys851 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load845, i32 0, i32 2
  %m.keys852 = load ptr, ptr %m.keys851, align 8
  %m.states853 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load845, i32 0, i32 4
  %m.states854 = load ptr, ptr %m.states853, align 8
  %mk.data855 = getelementptr inbounds { i64, ptr }, ptr %fld.load848, i32 0, i32 1
  %mk.data856 = load ptr, ptr %mk.data855, align 8
  %mk.len857 = getelementptr inbounds { i64, ptr }, ptr %fld.load848, i32 0, i32 0
  %mk.len858 = load i64, ptr %mk.len857, align 8
  %mk.len859 = and i64 %mk.len858, 281474976710655
  %str.tag860 = lshr i64 %mk.len858, 48
  %str.immortal861 = icmp eq i64 %str.tag860, 0
  br i1 %str.immortal861, label %str_ok863, label %str_gen_check862

choice.next836:                                   ; preds = %choice.exit819
  br label %choice.exit834

str_gen_check862:                                 ; preds = %choice.case835
  %arena.cur865 = call ptr @dva_arena_current()
  %tag.valid866 = call i1 @dva_arena_validate_tag(ptr %arena.cur865, i64 %str.tag860)
  br i1 %tag.valid866, label %str_ok863, label %str_stale864

str_ok863:                                        ; preds = %str_stale864, %str_gen_check862, %choice.case835
  %hash.str867 = call i64 @dva_hash_string(ptr %mk.data856, i64 %mk.len859)
  %m.capm1868 = sub i64 %m.cap850, 1
  %m.idx0869 = and i64 %hash.str867, %m.capm1868
  br label %m.mem.loop870

str_stale864:                                     ; preds = %str_gen_check862
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok863

m.mem.loop870:                                    ; preds = %m.mem.next873, %str_ok863
  %m.mem.idx876 = phi i64 [ %m.idx0869, %str_ok863 ], [ %m.mem.idx.next919, %m.mem.next873 ]
  %m.mem.probe877 = phi i64 [ 0, %str_ok863 ], [ %m.mem.probe.next920, %m.mem.next873 ]
  %m.mem.reached878 = icmp eq i64 %m.mem.probe877, %m.cap850
  %m.mem.state.gep879 = getelementptr i8, ptr %m.states854, i64 %m.mem.idx876
  %m.mem.state880 = load i8, ptr %m.mem.state.gep879, align 1
  %m.mem.is.empty881 = icmp eq i8 %m.mem.state880, 0
  %m.mem.stop882 = or i1 %m.mem.is.empty881, %m.mem.reached878
  br i1 %m.mem.stop882, label %m.mem.miss874, label %m.mem.probe871

m.mem.probe871:                                   ; preds = %m.mem.loop870
  %m.mem.is.tomb883 = icmp eq i8 %m.mem.state880, 2
  br i1 %m.mem.is.tomb883, label %m.mem.next873, label %m.mem.found872

m.mem.found872:                                   ; preds = %m.mem.probe871
  %m.mem.key.slot884 = getelementptr ptr, ptr %m.keys852, i64 %m.mem.idx876
  %mk.stored885 = load ptr, ptr %m.mem.key.slot884, align 8
  %mk.slen886 = getelementptr inbounds { i64, ptr }, ptr %mk.stored885, i32 0, i32 0
  %mk.slen887 = load i64, ptr %mk.slen886, align 8
  %mk.slen888 = and i64 %mk.slen887, 281474976710655
  %str.tag889 = lshr i64 %mk.slen887, 48
  %str.immortal890 = icmp eq i64 %str.tag889, 0
  br i1 %str.immortal890, label %str_ok892, label %str_gen_check891

m.mem.next873:                                    ; preds = %mk.eq.merge909, %m.mem.probe871
  %m.mem.idx.add918 = add i64 %m.mem.idx876, 1
  %m.mem.idx.next919 = and i64 %m.mem.idx.add918, %m.capm1868
  %m.mem.probe.next920 = add i64 %m.mem.probe877, 1
  br label %m.mem.loop870

m.mem.miss874:                                    ; preds = %m.mem.loop870
  br label %m.mem.done875

m.mem.done875:                                    ; preds = %m.mem.miss874, %m.mem.hit917
  %m.mem.res921 = phi i1 [ true, %m.mem.hit917 ], [ false, %m.mem.miss874 ]
  store i1 %m.mem.res921, ptr %var.is_gen2, align 1
  %var.load922 = load ptr, ptr %var.a2, align 8
  %fld.gep923 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load922, i32 0, i32 0
  %fld.load924 = load ptr, ptr %fld.gep923, align 8
  store ptr %fld.load924, ptr %var.name2, align 8
  %var.load925 = load i1, ptr %var.is_fwd2, align 1
  %nottmp926 = xor i1 %var.load925, true
  br i1 %nottmp926, label %and.27.then, label %and.27.else

str_gen_check891:                                 ; preds = %m.mem.found872
  %arena.cur894 = call ptr @dva_arena_current()
  %tag.valid895 = call i1 @dva_arena_validate_tag(ptr %arena.cur894, i64 %str.tag889)
  br i1 %tag.valid895, label %str_ok892, label %str_stale893

str_ok892:                                        ; preds = %str_stale893, %str_gen_check891, %m.mem.found872
  %mk.nlen896 = getelementptr inbounds { i64, ptr }, ptr %fld.load848, i32 0, i32 0
  %mk.nlen897 = load i64, ptr %mk.nlen896, align 8
  %mk.nlen898 = and i64 %mk.nlen897, 281474976710655
  %str.tag899 = lshr i64 %mk.nlen897, 48
  %str.immortal900 = icmp eq i64 %str.tag899, 0
  br i1 %str.immortal900, label %str_ok902, label %str_gen_check901

str_stale893:                                     ; preds = %str_gen_check891
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok892

str_gen_check901:                                 ; preds = %str_ok892
  %arena.cur904 = call ptr @dva_arena_current()
  %tag.valid905 = call i1 @dva_arena_validate_tag(ptr %arena.cur904, i64 %str.tag899)
  br i1 %tag.valid905, label %str_ok902, label %str_stale903

str_ok902:                                        ; preds = %str_stale903, %str_gen_check901, %str_ok892
  %mk.lenseq906 = icmp eq i64 %mk.slen888, %mk.nlen898
  br i1 %mk.lenseq906, label %mk.eq.then907, label %mk.eq.else908

str_stale903:                                     ; preds = %str_gen_check901
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok902

mk.eq.then907:                                    ; preds = %str_ok902
  %mk.sdata910 = getelementptr inbounds { i64, ptr }, ptr %mk.stored885, i32 0, i32 1
  %mk.sdata911 = load ptr, ptr %mk.sdata910, align 8
  %mk.ndata912 = getelementptr inbounds { i64, ptr }, ptr %fld.load848, i32 0, i32 1
  %mk.ndata913 = load ptr, ptr %mk.ndata912, align 8
  %mk.memcmp914 = call i32 @memcmp(ptr %mk.sdata911, ptr %mk.ndata913, i64 %mk.nlen898)
  %mk.cmpeq915 = icmp eq i32 %mk.memcmp914, 0
  br label %mk.eq.merge909

mk.eq.else908:                                    ; preds = %str_ok902
  br label %mk.eq.merge909

mk.eq.merge909:                                   ; preds = %mk.eq.else908, %mk.eq.then907
  %mk.eq916 = phi i1 [ %mk.cmpeq915, %mk.eq.then907 ], [ false, %mk.eq.else908 ]
  br i1 %mk.eq916, label %m.mem.hit917, label %m.mem.next873

m.mem.hit917:                                     ; preds = %mk.eq.merge909
  br label %m.mem.done875

and.27.then:                                      ; preds = %m.mem.done875
  %var.load927 = load i1, ptr %var.is_gen2, align 1
  %nottmp928 = xor i1 %var.load927, true
  br label %and.27.exit

and.27.else:                                      ; preds = %m.mem.done875
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp928, %and.27.then ], [ %nottmp926, %and.27.else ]
  br i1 %and.27.phi, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %and.27.exit
  %var.load929 = load ptr, ptr %var.a2, align 8
  %fld.gep930 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load929, i32 0, i32 2
  %fld.load931 = load i1, ptr %fld.gep930, align 1
  %nottmp932 = xor i1 %fld.load931, true
  br label %and.28.exit

and.28.else:                                      ; preds = %and.27.exit
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp932, %and.28.then ], [ %and.27.phi, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load933 = load ptr, ptr %var.a2, align 8
  %fld.gep934 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load933, i32 0, i32 4
  %fld.load935 = load i1, ptr %fld.gep934, align 1
  %nottmp936 = xor i1 %fld.load935, true
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp936, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load937 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len938 = getelementptr inbounds { i64, ptr }, ptr %var.load937, i32 0, i32 0
  %eq.lhs.len939 = load i64, ptr %eq.lhs.len938, align 8
  %eq.lhs.len940 = and i64 %eq.lhs.len939, 281474976710655
  %str.tag941 = lshr i64 %eq.lhs.len939, 48
  %str.immortal942 = icmp eq i64 %str.tag941, 0
  br i1 %str.immortal942, label %str_ok944, label %str_gen_check943

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %str.eq.merge960
  %and.30.phi = phi i1 [ %str.neq967, %str.eq.merge960 ], [ %and.29.phi, %and.30.else ]
  br i1 %and.30.phi, label %choice.then968, label %choice.exit969

str_gen_check943:                                 ; preds = %and.30.then
  %arena.cur946 = call ptr @dva_arena_current()
  %tag.valid947 = call i1 @dva_arena_validate_tag(ptr %arena.cur946, i64 %str.tag941)
  br i1 %tag.valid947, label %str_ok944, label %str_stale945

str_ok944:                                        ; preds = %str_stale945, %str_gen_check943, %and.30.then
  %eq.rhs.len948 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len949 = and i64 %eq.rhs.len948, 281474976710655
  %str.tag950 = lshr i64 %eq.rhs.len948, 48
  %str.immortal951 = icmp eq i64 %str.tag950, 0
  br i1 %str.immortal951, label %str_ok953, label %str_gen_check952

str_stale945:                                     ; preds = %str_gen_check943
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok944

str_gen_check952:                                 ; preds = %str_ok944
  %arena.cur955 = call ptr @dva_arena_current()
  %tag.valid956 = call i1 @dva_arena_validate_tag(ptr %arena.cur955, i64 %str.tag950)
  br i1 %tag.valid956, label %str_ok953, label %str_stale954

str_ok953:                                        ; preds = %str_stale954, %str_gen_check952, %str_ok944
  %eq.len957 = icmp eq i64 %eq.lhs.len940, %eq.rhs.len949
  br i1 %eq.len957, label %str.eq.then958, label %str.eq.else959

str_stale954:                                     ; preds = %str_gen_check952
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok953

str.eq.then958:                                   ; preds = %str_ok953
  %eq.lhs.data961 = getelementptr inbounds { i64, ptr }, ptr %var.load937, i32 0, i32 1
  %eq.lhs.data962 = load ptr, ptr %eq.lhs.data961, align 8
  %eq.rhs.data963 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp964 = call i32 @memcmp(ptr %eq.lhs.data962, ptr %eq.rhs.data963, i64 %eq.lhs.len940)
  %eq.cmp.zero965 = icmp eq i32 %eq.memcmp964, 0
  br label %str.eq.merge960

str.eq.else959:                                   ; preds = %str_ok953
  br label %str.eq.merge960

str.eq.merge960:                                  ; preds = %str.eq.else959, %str.eq.then958
  %str.eq.result966 = phi i1 [ %eq.cmp.zero965, %str.eq.then958 ], [ false, %str.eq.else959 ]
  %str.neq967 = xor i1 %str.eq.result966, true
  br label %and.30.exit

choice.then968:                                   ; preds = %and.30.exit
  %arena.cur970 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 24)
  %arena.cur971 = call ptr @dva_arena_current()
  %a.buf972 = call ptr @dva_arena_alloc(ptr %arena.cur971, i64 128)
  %a.len.gep973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep973, align 8
  %a.data.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf972, ptr %a.data.gep974, align 8
  %a.cap.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep975, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load976 = load ptr, ptr %var.a2, align 8
  %fld.gep977 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load976, i32 0, i32 5
  %fld.load978 = load ptr, ptr %fld.gep977, align 8
  %arena.cur979 = call ptr @dva_arena_current()
  %a.new980 = call ptr @dva_arena_alloc(ptr %arena.cur979, i64 24)
  %arena.cur981 = call ptr @dva_arena_current()
  %a.buf982 = call ptr @dva_arena_alloc(ptr %arena.cur981, i64 128)
  %a.len.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new980, i32 0, i32 0
  store i64 0, ptr %a.len.gep983, align 8
  %a.data.gep984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new980, i32 0, i32 1
  store ptr %a.buf982, ptr %a.data.gep984, align 8
  %a.cap.gep985 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new980, i32 0, i32 2
  store i64 16, ptr %a.cap.gep985, align 8
  %var.load986 = load ptr, ptr %var.raw_refs, align 8
  %a.load987 = load ptr, ptr %var.raw_refs, align 8
  %a.null988 = icmp eq ptr %a.load987, null
  br i1 %a.null988, label %a.create989, label %a.after990

choice.exit969:                                   ; preds = %a.store1453, %and.30.exit
  br label %choice.exit834

a.create989:                                      ; preds = %choice.then968
  %arena.cur991 = call ptr @dva_arena_current()
  %a.create992 = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 24)
  %arena.cur993 = call ptr @dva_arena_current()
  %a.buf994 = call ptr @dva_arena_alloc(ptr %arena.cur993, i64 128)
  %a.len.gep995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create992, i32 0, i32 0
  store i64 0, ptr %a.len.gep995, align 8
  %a.data.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create992, i32 0, i32 1
  store ptr %a.buf994, ptr %a.data.gep996, align 8
  %a.cap.gep997 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create992, i32 0, i32 2
  store i64 16, ptr %a.cap.gep997, align 8
  store ptr %a.create992, ptr %var.raw_refs, align 8
  br label %a.after990

a.after990:                                       ; preds = %a.create989, %choice.then968
  %a.load2998 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load978, ptr %a.new980, ptr %a.load2998)
  %arena.cur999 = call ptr @dva_arena_current()
  %a.new1000 = call ptr @dva_arena_alloc(ptr %arena.cur999, i64 24)
  %arena.cur1001 = call ptr @dva_arena_current()
  %a.buf1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 128)
  %a.len.gep1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1000, i32 0, i32 0
  store i64 0, ptr %a.len.gep1003, align 8
  %a.data.gep1004 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1000, i32 0, i32 1
  store ptr %a.buf1002, ptr %a.data.gep1004, align 8
  %a.cap.gep1005 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1000, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1005, align 8
  store ptr %a.new1000, ptr %var.filtered_deps, align 8
  %var.load1006 = load ptr, ptr %var.name2, align 8
  %call.res1007 = call ptr @"dep_graph::decl_module"(ptr %var.load1006, i64 0)
  store ptr %call.res1007, ptr %var.mod2, align 8
  %var.load1008 = load ptr, ptr %var.raw_refs, align 8
  %a.load1009 = load ptr, ptr %var.raw_refs, align 8
  %a.null1010 = icmp eq ptr %a.load1009, null
  br i1 %a.null1010, label %a.create1011, label %a.after1012

a.create1011:                                     ; preds = %a.after990
  %arena.cur1013 = call ptr @dva_arena_current()
  %a.create1014 = call ptr @dva_arena_alloc(ptr %arena.cur1013, i64 24)
  %arena.cur1015 = call ptr @dva_arena_current()
  %a.buf1016 = call ptr @dva_arena_alloc(ptr %arena.cur1015, i64 128)
  %a.len.gep1017 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1014, i32 0, i32 0
  store i64 0, ptr %a.len.gep1017, align 8
  %a.data.gep1018 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1014, i32 0, i32 1
  store ptr %a.buf1016, ptr %a.data.gep1018, align 8
  %a.cap.gep1019 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1014, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1019, align 8
  store ptr %a.create1014, ptr %var.raw_refs, align 8
  br label %a.after1012

a.after1012:                                      ; preds = %a.create1011, %a.after990
  %a.load21020 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21020, i32 0, i32 0
  %arr.cycle.len1021 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21020, i32 0, i32 1
  %arr.cycle.data1022 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after1012
  %counter.load1023 = load i64, ptr %loop.idx.31, align 8
  %loop.cond1024 = icmp slt i64 %counter.load1023, %arr.cycle.len1021
  br i1 %loop.cond1024, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i1025 = sub i64 %counter.load1023, 0
  store i64 1, ptr %loop.step.31, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data1022, i64 %counter.load1023
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i1025, ptr %var._i759, align 8
  store ptr %arr.elem.ptr, ptr %var._842, align 8
  store ptr %arr.elem.ptr, ptr %var.ref_name, align 8
  %var.load1026 = load ptr, ptr %var.def_names, align 8
  %var.load1027 = load ptr, ptr %var.mod2, align 8
  %var.load1028 = load ptr, ptr %var.ref_name, align 8
  %call.res1029 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load1026, ptr %var.load1027, ptr %var.load1028)
  store ptr %call.res1029, ptr %var.target_ref, align 8
  %var.load1030 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len1031 = getelementptr inbounds { i64, ptr }, ptr %var.load1030, i32 0, i32 0
  %eq.lhs.len1032 = load i64, ptr %eq.lhs.len1031, align 8
  %eq.lhs.len1033 = and i64 %eq.lhs.len1032, 281474976710655
  %str.tag1034 = lshr i64 %eq.lhs.len1032, 48
  %str.immortal1035 = icmp eq i64 %str.tag1034, 0
  br i1 %str.immortal1035, label %str_ok1037, label %str_gen_check1036

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit1078
  %step.val1096 = load i64, ptr %loop.step.31, align 8
  %loop.next1097 = add i64 %counter.load1023, %step.val1096
  store i64 %loop.next1097, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load1098 = load ptr, ptr %var.graph, align 8
  %fld.gep1099 = getelementptr inbounds { ptr, ptr }, ptr %var.load1098, i32 0, i32 1
  %fld.load1100 = load ptr, ptr %fld.gep1099, align 8
  store ptr %fld.load1100, ptr %var.node_indices, align 8
  %var.load1101 = load ptr, ptr %var.node_indices, align 8
  %var.load1102 = load ptr, ptr %var.name2, align 8
  %m.cap1103 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1101, i32 0, i32 1
  %m.cap1104 = load i64, ptr %m.cap1103, align 8
  %m.keys1105 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1101, i32 0, i32 2
  %m.keys1106 = load ptr, ptr %m.keys1105, align 8
  %m.states1107 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1101, i32 0, i32 4
  %m.states1108 = load ptr, ptr %m.states1107, align 8
  %mk.data1109 = getelementptr inbounds { i64, ptr }, ptr %var.load1102, i32 0, i32 1
  %mk.data1110 = load ptr, ptr %mk.data1109, align 8
  %mk.len1111 = getelementptr inbounds { i64, ptr }, ptr %var.load1102, i32 0, i32 0
  %mk.len1112 = load i64, ptr %mk.len1111, align 8
  %mk.len1113 = and i64 %mk.len1112, 281474976710655
  %str.tag1114 = lshr i64 %mk.len1112, 48
  %str.immortal1115 = icmp eq i64 %str.tag1114, 0
  br i1 %str.immortal1115, label %str_ok1117, label %str_gen_check1116

str_gen_check1036:                                ; preds = %loop.body.31
  %arena.cur1039 = call ptr @dva_arena_current()
  %tag.valid1040 = call i1 @dva_arena_validate_tag(ptr %arena.cur1039, i64 %str.tag1034)
  br i1 %tag.valid1040, label %str_ok1037, label %str_stale1038

str_ok1037:                                       ; preds = %str_stale1038, %str_gen_check1036, %loop.body.31
  %eq.rhs.len1041 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1042 = and i64 %eq.rhs.len1041, 281474976710655
  %str.tag1043 = lshr i64 %eq.rhs.len1041, 48
  %str.immortal1044 = icmp eq i64 %str.tag1043, 0
  br i1 %str.immortal1044, label %str_ok1046, label %str_gen_check1045

str_stale1038:                                    ; preds = %str_gen_check1036
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1037

str_gen_check1045:                                ; preds = %str_ok1037
  %arena.cur1048 = call ptr @dva_arena_current()
  %tag.valid1049 = call i1 @dva_arena_validate_tag(ptr %arena.cur1048, i64 %str.tag1043)
  br i1 %tag.valid1049, label %str_ok1046, label %str_stale1047

str_ok1046:                                       ; preds = %str_stale1047, %str_gen_check1045, %str_ok1037
  %eq.len1050 = icmp eq i64 %eq.lhs.len1033, %eq.rhs.len1042
  br i1 %eq.len1050, label %str.eq.then1051, label %str.eq.else1052

str_stale1047:                                    ; preds = %str_gen_check1045
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1046

str.eq.then1051:                                  ; preds = %str_ok1046
  %eq.lhs.data1054 = getelementptr inbounds { i64, ptr }, ptr %var.load1030, i32 0, i32 1
  %eq.lhs.data1055 = load ptr, ptr %eq.lhs.data1054, align 8
  %eq.rhs.data1056 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1057 = call i32 @memcmp(ptr %eq.lhs.data1055, ptr %eq.rhs.data1056, i64 %eq.lhs.len1033)
  %eq.cmp.zero1058 = icmp eq i32 %eq.memcmp1057, 0
  br label %str.eq.merge1053

str.eq.else1052:                                  ; preds = %str_ok1046
  br label %str.eq.merge1053

str.eq.merge1053:                                 ; preds = %str.eq.else1052, %str.eq.then1051
  %str.eq.result1059 = phi i1 [ %eq.cmp.zero1058, %str.eq.then1051 ], [ false, %str.eq.else1052 ]
  %str.neq1060 = xor i1 %str.eq.result1059, true
  br i1 %str.neq1060, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge1053
  %var.load1061 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1062 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1063 = icmp eq ptr %a.load1062, null
  br i1 %a.null1063, label %a.create1064, label %a.after1065

and.32.else:                                      ; preds = %str.eq.merge1053
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after1065
  %and.32.phi = phi i1 [ %nottmp1076, %a.after1065 ], [ %str.neq1060, %and.32.else ]
  br i1 %and.32.phi, label %choice.then1077, label %choice.exit1078

a.create1064:                                     ; preds = %and.32.then
  %arena.cur1066 = call ptr @dva_arena_current()
  %a.create1067 = call ptr @dva_arena_alloc(ptr %arena.cur1066, i64 24)
  %arena.cur1068 = call ptr @dva_arena_current()
  %a.buf1069 = call ptr @dva_arena_alloc(ptr %arena.cur1068, i64 128)
  %a.len.gep1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1067, i32 0, i32 0
  store i64 0, ptr %a.len.gep1070, align 8
  %a.data.gep1071 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1067, i32 0, i32 1
  store ptr %a.buf1069, ptr %a.data.gep1071, align 8
  %a.cap.gep1072 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1067, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1072, align 8
  store ptr %a.create1067, ptr %var.filtered_deps, align 8
  br label %a.after1065

a.after1065:                                      ; preds = %a.create1064, %and.32.then
  %a.load21073 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1074 = load ptr, ptr %var.target_ref, align 8
  %call.res1075 = call i1 @"dep_graph::has_name"(ptr %a.load21073, ptr %var.load1074)
  %nottmp1076 = xor i1 %call.res1075, true
  br label %and.32.exit

choice.then1077:                                  ; preds = %and.32.exit
  %var.load1079 = load ptr, ptr %var.target_ref, align 8
  %a.load1080 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1081 = icmp eq ptr %a.load1080, null
  br i1 %a.null1081, label %a.create1082, label %a.after1083

choice.exit1078:                                  ; preds = %a.store, %and.32.exit
  br label %loop.latch.31

a.create1082:                                     ; preds = %choice.then1077
  %arena.cur1084 = call ptr @dva_arena_current()
  %a.create1085 = call ptr @dva_arena_alloc(ptr %arena.cur1084, i64 24)
  %arena.cur1086 = call ptr @dva_arena_current()
  %a.buf1087 = call ptr @dva_arena_alloc(ptr %arena.cur1086, i64 128)
  %a.len.gep1088 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1085, i32 0, i32 0
  store i64 0, ptr %a.len.gep1088, align 8
  %a.data.gep1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1085, i32 0, i32 1
  store ptr %a.buf1087, ptr %a.data.gep1089, align 8
  %a.cap.gep1090 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1085, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1090, align 8
  store ptr %a.create1085, ptr %var.filtered_deps, align 8
  br label %a.after1083

a.after1083:                                      ; preds = %a.create1082, %choice.then1077
  %a.load21091 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1083
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21091, i32 0, i32 0
  %a.len1092 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21091, i32 0, i32 2
  %a.cap1093 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1092, %a.cap1093
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21091)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21091, i32 0, i32 1
  %a.cur.data1094 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21091, i32 0, i32 0
  %a.cur.len1095 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1094, i64 %a.cur.len1095
  %a.elem.p2i = ptrtoint ptr %var.load1079 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1095, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21091, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1078

str_gen_check1116:                                ; preds = %loop.exit.31
  %arena.cur1119 = call ptr @dva_arena_current()
  %tag.valid1120 = call i1 @dva_arena_validate_tag(ptr %arena.cur1119, i64 %str.tag1114)
  br i1 %tag.valid1120, label %str_ok1117, label %str_stale1118

str_ok1117:                                       ; preds = %str_stale1118, %str_gen_check1116, %loop.exit.31
  %hash.str1121 = call i64 @dva_hash_string(ptr %mk.data1110, i64 %mk.len1113)
  %m.capm11122 = sub i64 %m.cap1104, 1
  %m.idx01123 = and i64 %hash.str1121, %m.capm11122
  br label %m.mem.loop1124

str_stale1118:                                    ; preds = %str_gen_check1116
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1117

m.mem.loop1124:                                   ; preds = %m.mem.next1127, %str_ok1117
  %m.mem.idx1130 = phi i64 [ %m.idx01123, %str_ok1117 ], [ %m.mem.idx.next1173, %m.mem.next1127 ]
  %m.mem.probe1131 = phi i64 [ 0, %str_ok1117 ], [ %m.mem.probe.next1174, %m.mem.next1127 ]
  %m.mem.reached1132 = icmp eq i64 %m.mem.probe1131, %m.cap1104
  %m.mem.state.gep1133 = getelementptr i8, ptr %m.states1108, i64 %m.mem.idx1130
  %m.mem.state1134 = load i8, ptr %m.mem.state.gep1133, align 1
  %m.mem.is.empty1135 = icmp eq i8 %m.mem.state1134, 0
  %m.mem.stop1136 = or i1 %m.mem.is.empty1135, %m.mem.reached1132
  br i1 %m.mem.stop1136, label %m.mem.miss1128, label %m.mem.probe1125

m.mem.probe1125:                                  ; preds = %m.mem.loop1124
  %m.mem.is.tomb1137 = icmp eq i8 %m.mem.state1134, 2
  br i1 %m.mem.is.tomb1137, label %m.mem.next1127, label %m.mem.found1126

m.mem.found1126:                                  ; preds = %m.mem.probe1125
  %m.mem.key.slot1138 = getelementptr ptr, ptr %m.keys1106, i64 %m.mem.idx1130
  %mk.stored1139 = load ptr, ptr %m.mem.key.slot1138, align 8
  %mk.slen1140 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1139, i32 0, i32 0
  %mk.slen1141 = load i64, ptr %mk.slen1140, align 8
  %mk.slen1142 = and i64 %mk.slen1141, 281474976710655
  %str.tag1143 = lshr i64 %mk.slen1141, 48
  %str.immortal1144 = icmp eq i64 %str.tag1143, 0
  br i1 %str.immortal1144, label %str_ok1146, label %str_gen_check1145

m.mem.next1127:                                   ; preds = %mk.eq.merge1163, %m.mem.probe1125
  %m.mem.idx.add1172 = add i64 %m.mem.idx1130, 1
  %m.mem.idx.next1173 = and i64 %m.mem.idx.add1172, %m.capm11122
  %m.mem.probe.next1174 = add i64 %m.mem.probe1131, 1
  br label %m.mem.loop1124

m.mem.miss1128:                                   ; preds = %m.mem.loop1124
  br label %m.mem.done1129

m.mem.done1129:                                   ; preds = %m.mem.miss1128, %m.mem.hit1171
  %m.mem.res1175 = phi i1 [ true, %m.mem.hit1171 ], [ false, %m.mem.miss1128 ]
  store i1 %m.mem.res1175, ptr %var.known, align 1
  %var.load1176 = load i1, ptr %var.known, align 1
  %nottmp1177 = xor i1 %var.load1176, true
  br i1 %nottmp1177, label %choice.then1178, label %choice.exit1179

str_gen_check1145:                                ; preds = %m.mem.found1126
  %arena.cur1148 = call ptr @dva_arena_current()
  %tag.valid1149 = call i1 @dva_arena_validate_tag(ptr %arena.cur1148, i64 %str.tag1143)
  br i1 %tag.valid1149, label %str_ok1146, label %str_stale1147

str_ok1146:                                       ; preds = %str_stale1147, %str_gen_check1145, %m.mem.found1126
  %mk.nlen1150 = getelementptr inbounds { i64, ptr }, ptr %var.load1102, i32 0, i32 0
  %mk.nlen1151 = load i64, ptr %mk.nlen1150, align 8
  %mk.nlen1152 = and i64 %mk.nlen1151, 281474976710655
  %str.tag1153 = lshr i64 %mk.nlen1151, 48
  %str.immortal1154 = icmp eq i64 %str.tag1153, 0
  br i1 %str.immortal1154, label %str_ok1156, label %str_gen_check1155

str_stale1147:                                    ; preds = %str_gen_check1145
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1146

str_gen_check1155:                                ; preds = %str_ok1146
  %arena.cur1158 = call ptr @dva_arena_current()
  %tag.valid1159 = call i1 @dva_arena_validate_tag(ptr %arena.cur1158, i64 %str.tag1153)
  br i1 %tag.valid1159, label %str_ok1156, label %str_stale1157

str_ok1156:                                       ; preds = %str_stale1157, %str_gen_check1155, %str_ok1146
  %mk.lenseq1160 = icmp eq i64 %mk.slen1142, %mk.nlen1152
  br i1 %mk.lenseq1160, label %mk.eq.then1161, label %mk.eq.else1162

str_stale1157:                                    ; preds = %str_gen_check1155
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1156

mk.eq.then1161:                                   ; preds = %str_ok1156
  %mk.sdata1164 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1139, i32 0, i32 1
  %mk.sdata1165 = load ptr, ptr %mk.sdata1164, align 8
  %mk.ndata1166 = getelementptr inbounds { i64, ptr }, ptr %var.load1102, i32 0, i32 1
  %mk.ndata1167 = load ptr, ptr %mk.ndata1166, align 8
  %mk.memcmp1168 = call i32 @memcmp(ptr %mk.sdata1165, ptr %mk.ndata1167, i64 %mk.nlen1152)
  %mk.cmpeq1169 = icmp eq i32 %mk.memcmp1168, 0
  br label %mk.eq.merge1163

mk.eq.else1162:                                   ; preds = %str_ok1156
  br label %mk.eq.merge1163

mk.eq.merge1163:                                  ; preds = %mk.eq.else1162, %mk.eq.then1161
  %mk.eq1170 = phi i1 [ %mk.cmpeq1169, %mk.eq.then1161 ], [ false, %mk.eq.else1162 ]
  br i1 %mk.eq1170, label %m.mem.hit1171, label %m.mem.next1127

m.mem.hit1171:                                    ; preds = %mk.eq.merge1163
  br label %m.mem.done1129

choice.then1178:                                  ; preds = %m.mem.done1129
  %var.load1180 = load ptr, ptr %var.node_indices, align 8
  %var.load1181 = load ptr, ptr %var.name2, align 8
  %var.load1182 = load ptr, ptr %var.graph, align 8
  %fld.gep1183 = getelementptr inbounds { ptr, ptr }, ptr %var.load1182, i32 0, i32 0
  %fld.load1184 = load ptr, ptr %fld.gep1183, align 8
  %a.len.query1185 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1184, i32 0, i32 0
  %a.len.query1186 = load i64, ptr %a.len.query1185, align 8
  %m.count1187 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  %m.count1188 = load i64, ptr %m.count1187, align 8
  %m.cap1189 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 1
  %m.cap1190 = load i64, ptr %m.cap1189, align 8
  %m.tombs1191 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 5
  %m.tombs1192 = load i64, ptr %m.tombs1191, align 8
  %m.occupied1193 = add i64 %m.count1188, %m.tombs1192
  %m.c.plus1194 = add i64 %m.occupied1193, 1
  %m.c.lhs1195 = mul i64 %m.c.plus1194, 4
  %m.c.rhs1196 = mul i64 %m.cap1190, 3
  %m.need.grow1197 = icmp sgt i64 %m.c.lhs1195, %m.c.rhs1196
  br i1 %m.need.grow1197, label %m.grow1198, label %m.ins1199

choice.exit1179:                                  ; preds = %m.done1366, %m.mem.done1129
  %var.load1429 = load ptr, ptr %var.graph, align 8
  %var.load1430 = load ptr, ptr %var.name2, align 8
  %var.load1431 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1432 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1433 = icmp eq ptr %a.load1432, null
  br i1 %a.null1433, label %a.create1434, label %a.after1435

m.grow1198:                                       ; preds = %choice.then1178
  %m.old.cap1200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 1
  %m.old.cap1201 = load i64, ptr %m.old.cap1200, align 8
  %m.old.keys1202 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 2
  %m.old.keys1203 = load ptr, ptr %m.old.keys1202, align 8
  %m.old.vals1204 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 3
  %m.old.vals1205 = load ptr, ptr %m.old.vals1204, align 8
  %m.old.states1206 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 4
  %m.old.states1207 = load ptr, ptr %m.old.states1206, align 8
  %m.double.cap1208 = mul i64 %m.old.cap1201, 2
  %m.live.cnt1209 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  %m.live.cnt1210 = load i64, ptr %m.live.cnt1209, align 8
  %m.live.x21211 = mul i64 %m.live.cnt1210, 2
  %m.should.double1212 = icmp sgt i64 %m.live.x21211, %m.old.cap1201
  %m.new.cap1213 = select i1 %m.should.double1212, i64 %m.double.cap1208, i64 %m.old.cap1201
  %m.gk.bytes1214 = mul i64 %m.new.cap1213, 8
  %arena.cur1215 = call ptr @dva_arena_current()
  %m.gk1216 = call ptr @dva_arena_alloc(ptr %arena.cur1215, i64 %m.gk.bytes1214)
  %m.gv.bytes1217 = mul i64 %m.new.cap1213, 8
  %arena.cur1218 = call ptr @dva_arena_current()
  %m.gv1219 = call ptr @dva_arena_alloc(ptr %arena.cur1218, i64 %m.gv.bytes1217)
  %arena.cur1220 = call ptr @dva_arena_current()
  %m.gs1221 = call ptr @dva_arena_alloc(ptr %arena.cur1220, i64 %m.new.cap1213)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1221, i8 0, i64 %m.new.cap1213, i1 false)
  %m.cap.gep1222 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 1
  store i64 %m.new.cap1213, ptr %m.cap.gep1222, align 8
  %m.keys.gep1223 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 2
  store ptr %m.gk1216, ptr %m.keys.gep1223, align 8
  %m.vals.gep1224 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 3
  store ptr %m.gv1219, ptr %m.vals.gep1224, align 8
  %m.states.gep1225 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 4
  store ptr %m.gs1221, ptr %m.states.gep1225, align 8
  %m.count.gep1226 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  store i64 0, ptr %m.count.gep1226, align 8
  %m.tombs.gep1227 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1227, align 8
  br label %m.re.loop1228

m.ins1199:                                        ; preds = %m.re.done1231, %choice.then1178
  %m.cap1336 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 1
  %m.cap1337 = load i64, ptr %m.cap1336, align 8
  %m.keys1338 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 2
  %m.keys1339 = load ptr, ptr %m.keys1338, align 8
  %m.vals1340 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 3
  %m.vals1341 = load ptr, ptr %m.vals1340, align 8
  %m.states1342 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 4
  %m.states1343 = load ptr, ptr %m.states1342, align 8
  %mk.data1344 = getelementptr inbounds { i64, ptr }, ptr %var.load1181, i32 0, i32 1
  %mk.data1345 = load ptr, ptr %mk.data1344, align 8
  %mk.len1346 = getelementptr inbounds { i64, ptr }, ptr %var.load1181, i32 0, i32 0
  %mk.len1347 = load i64, ptr %mk.len1346, align 8
  %mk.len1348 = and i64 %mk.len1347, 281474976710655
  %str.tag1349 = lshr i64 %mk.len1347, 48
  %str.immortal1350 = icmp eq i64 %str.tag1349, 0
  br i1 %str.immortal1350, label %str_ok1352, label %str_gen_check1351

m.re.loop1228:                                    ; preds = %m.re.cont1230, %m.grow1198
  %m.re.i1232 = phi i64 [ 0, %m.grow1198 ], [ %m.re.i.next1335, %m.re.cont1230 ]
  %m.re.lt1233 = icmp slt i64 %m.re.i1232, %m.old.cap1201
  br i1 %m.re.lt1233, label %m.re.body1229, label %m.re.done1231

m.re.body1229:                                    ; preds = %m.re.loop1228
  %m.re.state.gep1234 = getelementptr i8, ptr %m.old.states1207, i64 %m.re.i1232
  %m.re.state1235 = load i8, ptr %m.re.state.gep1234, align 1
  %m.re.occ1236 = icmp eq i8 %m.re.state1235, 1
  br i1 %m.re.occ1236, label %m.re.ins1237, label %m.re.cont1230

m.re.cont1230:                                    ; preds = %m.done1272, %m.re.body1229
  %m.re.i.next1335 = add i64 %m.re.i1232, 1
  br label %m.re.loop1228

m.re.done1231:                                    ; preds = %m.re.loop1228
  br label %m.ins1199

m.re.ins1237:                                     ; preds = %m.re.body1229
  %m.re.key.slot1238 = getelementptr ptr, ptr %m.old.keys1203, i64 %m.re.i1232
  %m.re.val.slot1239 = getelementptr i64, ptr %m.old.vals1205, i64 %m.re.i1232
  %m.re.key1240 = load ptr, ptr %m.re.key.slot1238, align 8
  %m.re.val1241 = load i64, ptr %m.re.val.slot1239, align 8
  %m.cap1242 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 1
  %m.cap1243 = load i64, ptr %m.cap1242, align 8
  %m.keys1244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 2
  %m.keys1245 = load ptr, ptr %m.keys1244, align 8
  %m.vals1246 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 3
  %m.vals1247 = load ptr, ptr %m.vals1246, align 8
  %m.states1248 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 4
  %m.states1249 = load ptr, ptr %m.states1248, align 8
  %mk.data1250 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1240, i32 0, i32 1
  %mk.data1251 = load ptr, ptr %mk.data1250, align 8
  %mk.len1252 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1240, i32 0, i32 0
  %mk.len1253 = load i64, ptr %mk.len1252, align 8
  %mk.len1254 = and i64 %mk.len1253, 281474976710655
  %str.tag1255 = lshr i64 %mk.len1253, 48
  %str.immortal1256 = icmp eq i64 %str.tag1255, 0
  br i1 %str.immortal1256, label %str_ok1258, label %str_gen_check1257

str_gen_check1257:                                ; preds = %m.re.ins1237
  %arena.cur1260 = call ptr @dva_arena_current()
  %tag.valid1261 = call i1 @dva_arena_validate_tag(ptr %arena.cur1260, i64 %str.tag1255)
  br i1 %tag.valid1261, label %str_ok1258, label %str_stale1259

str_ok1258:                                       ; preds = %str_stale1259, %str_gen_check1257, %m.re.ins1237
  %hash.str1262 = call i64 @dva_hash_string(ptr %mk.data1251, i64 %mk.len1254)
  %m.capm11263 = sub i64 %m.cap1243, 1
  %m.idx01264 = and i64 %hash.str1262, %m.capm11263
  br label %m.loop1265

str_stale1259:                                    ; preds = %str_gen_check1257
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1258

m.loop1265:                                       ; preds = %m.next1270, %str_ok1258
  %m.idx1273 = phi i64 [ %m.idx01264, %str_ok1258 ], [ %m.idx.next1320, %m.next1270 ]
  %m.tomb1274 = phi i64 [ -1, %str_ok1258 ], [ %m.next.tomb1318, %m.next1270 ]
  %m.probe1275 = phi i64 [ 0, %str_ok1258 ], [ %m.probe.next1321, %m.next1270 ]
  %m.reached.cap1276 = icmp eq i64 %m.probe1275, %m.cap1243
  %m.state.gep1277 = getelementptr i8, ptr %m.states1249, i64 %m.idx1273
  %m.state1278 = load i8, ptr %m.state.gep1277, align 1
  %m.is.empty1279 = icmp eq i8 %m.state1278, 0
  %m.stop1280 = or i1 %m.is.empty1279, %m.reached.cap1276
  br i1 %m.stop1280, label %m.empty1271, label %m.check.tomb1266

m.check.tomb1266:                                 ; preds = %m.loop1265
  %m.is.tomb1281 = icmp eq i8 %m.state1278, 2
  br i1 %m.is.tomb1281, label %m.tomb1267, label %m.found1268

m.tomb1267:                                       ; preds = %m.check.tomb1266
  %m.has.tomb1282 = icmp ne i64 %m.tomb1274, -1
  %m.tomb.sel1283 = select i1 %m.has.tomb1282, i64 %m.tomb1274, i64 %m.idx1273
  br label %m.next1270

m.found1268:                                      ; preds = %m.check.tomb1266
  %m.key.slot1284 = getelementptr ptr, ptr %m.keys1245, i64 %m.idx1273
  %mk.stored1285 = load ptr, ptr %m.key.slot1284, align 8
  %mk.slen1286 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1285, i32 0, i32 0
  %mk.slen1287 = load i64, ptr %mk.slen1286, align 8
  %mk.slen1288 = and i64 %mk.slen1287, 281474976710655
  %str.tag1289 = lshr i64 %mk.slen1287, 48
  %str.immortal1290 = icmp eq i64 %str.tag1289, 0
  br i1 %str.immortal1290, label %str_ok1292, label %str_gen_check1291

m.overwrite1269:                                  ; preds = %mk.eq.merge1309
  %m.val.slot1317 = getelementptr i64, ptr %m.vals1247, i64 %m.idx1273
  store i64 %m.re.val1241, ptr %m.val.slot1317, align 8
  br label %m.done1272

m.next1270:                                       ; preds = %mk.eq.merge1309, %m.tomb1267
  %m.next.tomb1318 = phi i64 [ %m.tomb.sel1283, %m.tomb1267 ], [ %m.tomb1274, %mk.eq.merge1309 ]
  %m.idx.add1319 = add i64 %m.idx1273, 1
  %m.idx.next1320 = and i64 %m.idx.add1319, %m.capm11263
  %m.probe.next1321 = add i64 %m.probe1275, 1
  br label %m.loop1265

m.empty1271:                                      ; preds = %m.loop1265
  %m.use.tomb1322 = icmp ne i64 %m.tomb1274, -1
  %m.ins.idx1323 = select i1 %m.use.tomb1322, i64 %m.tomb1274, i64 %m.idx1273
  %m.key.slot1324 = getelementptr ptr, ptr %m.keys1245, i64 %m.ins.idx1323
  store ptr %m.re.key1240, ptr %m.key.slot1324, align 8
  %m.val.slot1325 = getelementptr i64, ptr %m.vals1247, i64 %m.ins.idx1323
  store i64 %m.re.val1241, ptr %m.val.slot1325, align 8
  %m.ins.state.slot1326 = getelementptr i8, ptr %m.states1249, i64 %m.ins.idx1323
  store i8 1, ptr %m.ins.state.slot1326, align 1
  %m.count1327 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  %m.count1328 = load i64, ptr %m.count1327, align 8
  %m.count.next1329 = add i64 %m.count1328, 1
  %m.count.gep1330 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  store i64 %m.count.next1329, ptr %m.count.gep1330, align 8
  %m.ins.tombs.p1331 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 5
  %m.ins.tombs1332 = load i64, ptr %m.ins.tombs.p1331, align 8
  %m.tomb.dec1333 = select i1 %m.use.tomb1322, i64 1, i64 0
  %m.ins.tombs.next1334 = sub i64 %m.ins.tombs1332, %m.tomb.dec1333
  store i64 %m.ins.tombs.next1334, ptr %m.ins.tombs.p1331, align 8
  br label %m.done1272

m.done1272:                                       ; preds = %m.empty1271, %m.overwrite1269
  br label %m.re.cont1230

str_gen_check1291:                                ; preds = %m.found1268
  %arena.cur1294 = call ptr @dva_arena_current()
  %tag.valid1295 = call i1 @dva_arena_validate_tag(ptr %arena.cur1294, i64 %str.tag1289)
  br i1 %tag.valid1295, label %str_ok1292, label %str_stale1293

str_ok1292:                                       ; preds = %str_stale1293, %str_gen_check1291, %m.found1268
  %mk.nlen1296 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1240, i32 0, i32 0
  %mk.nlen1297 = load i64, ptr %mk.nlen1296, align 8
  %mk.nlen1298 = and i64 %mk.nlen1297, 281474976710655
  %str.tag1299 = lshr i64 %mk.nlen1297, 48
  %str.immortal1300 = icmp eq i64 %str.tag1299, 0
  br i1 %str.immortal1300, label %str_ok1302, label %str_gen_check1301

str_stale1293:                                    ; preds = %str_gen_check1291
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1292

str_gen_check1301:                                ; preds = %str_ok1292
  %arena.cur1304 = call ptr @dva_arena_current()
  %tag.valid1305 = call i1 @dva_arena_validate_tag(ptr %arena.cur1304, i64 %str.tag1299)
  br i1 %tag.valid1305, label %str_ok1302, label %str_stale1303

str_ok1302:                                       ; preds = %str_stale1303, %str_gen_check1301, %str_ok1292
  %mk.lenseq1306 = icmp eq i64 %mk.slen1288, %mk.nlen1298
  br i1 %mk.lenseq1306, label %mk.eq.then1307, label %mk.eq.else1308

str_stale1303:                                    ; preds = %str_gen_check1301
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1302

mk.eq.then1307:                                   ; preds = %str_ok1302
  %mk.sdata1310 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1285, i32 0, i32 1
  %mk.sdata1311 = load ptr, ptr %mk.sdata1310, align 8
  %mk.ndata1312 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1240, i32 0, i32 1
  %mk.ndata1313 = load ptr, ptr %mk.ndata1312, align 8
  %mk.memcmp1314 = call i32 @memcmp(ptr %mk.sdata1311, ptr %mk.ndata1313, i64 %mk.nlen1298)
  %mk.cmpeq1315 = icmp eq i32 %mk.memcmp1314, 0
  br label %mk.eq.merge1309

mk.eq.else1308:                                   ; preds = %str_ok1302
  br label %mk.eq.merge1309

mk.eq.merge1309:                                  ; preds = %mk.eq.else1308, %mk.eq.then1307
  %mk.eq1316 = phi i1 [ %mk.cmpeq1315, %mk.eq.then1307 ], [ false, %mk.eq.else1308 ]
  br i1 %mk.eq1316, label %m.overwrite1269, label %m.next1270

str_gen_check1351:                                ; preds = %m.ins1199
  %arena.cur1354 = call ptr @dva_arena_current()
  %tag.valid1355 = call i1 @dva_arena_validate_tag(ptr %arena.cur1354, i64 %str.tag1349)
  br i1 %tag.valid1355, label %str_ok1352, label %str_stale1353

str_ok1352:                                       ; preds = %str_stale1353, %str_gen_check1351, %m.ins1199
  %hash.str1356 = call i64 @dva_hash_string(ptr %mk.data1345, i64 %mk.len1348)
  %m.capm11357 = sub i64 %m.cap1337, 1
  %m.idx01358 = and i64 %hash.str1356, %m.capm11357
  br label %m.loop1359

str_stale1353:                                    ; preds = %str_gen_check1351
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1352

m.loop1359:                                       ; preds = %m.next1364, %str_ok1352
  %m.idx1367 = phi i64 [ %m.idx01358, %str_ok1352 ], [ %m.idx.next1414, %m.next1364 ]
  %m.tomb1368 = phi i64 [ -1, %str_ok1352 ], [ %m.next.tomb1412, %m.next1364 ]
  %m.probe1369 = phi i64 [ 0, %str_ok1352 ], [ %m.probe.next1415, %m.next1364 ]
  %m.reached.cap1370 = icmp eq i64 %m.probe1369, %m.cap1337
  %m.state.gep1371 = getelementptr i8, ptr %m.states1343, i64 %m.idx1367
  %m.state1372 = load i8, ptr %m.state.gep1371, align 1
  %m.is.empty1373 = icmp eq i8 %m.state1372, 0
  %m.stop1374 = or i1 %m.is.empty1373, %m.reached.cap1370
  br i1 %m.stop1374, label %m.empty1365, label %m.check.tomb1360

m.check.tomb1360:                                 ; preds = %m.loop1359
  %m.is.tomb1375 = icmp eq i8 %m.state1372, 2
  br i1 %m.is.tomb1375, label %m.tomb1361, label %m.found1362

m.tomb1361:                                       ; preds = %m.check.tomb1360
  %m.has.tomb1376 = icmp ne i64 %m.tomb1368, -1
  %m.tomb.sel1377 = select i1 %m.has.tomb1376, i64 %m.tomb1368, i64 %m.idx1367
  br label %m.next1364

m.found1362:                                      ; preds = %m.check.tomb1360
  %m.key.slot1378 = getelementptr ptr, ptr %m.keys1339, i64 %m.idx1367
  %mk.stored1379 = load ptr, ptr %m.key.slot1378, align 8
  %mk.slen1380 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1379, i32 0, i32 0
  %mk.slen1381 = load i64, ptr %mk.slen1380, align 8
  %mk.slen1382 = and i64 %mk.slen1381, 281474976710655
  %str.tag1383 = lshr i64 %mk.slen1381, 48
  %str.immortal1384 = icmp eq i64 %str.tag1383, 0
  br i1 %str.immortal1384, label %str_ok1386, label %str_gen_check1385

m.overwrite1363:                                  ; preds = %mk.eq.merge1403
  %m.val.slot1411 = getelementptr i64, ptr %m.vals1341, i64 %m.idx1367
  store i64 %a.len.query1186, ptr %m.val.slot1411, align 8
  br label %m.done1366

m.next1364:                                       ; preds = %mk.eq.merge1403, %m.tomb1361
  %m.next.tomb1412 = phi i64 [ %m.tomb.sel1377, %m.tomb1361 ], [ %m.tomb1368, %mk.eq.merge1403 ]
  %m.idx.add1413 = add i64 %m.idx1367, 1
  %m.idx.next1414 = and i64 %m.idx.add1413, %m.capm11357
  %m.probe.next1415 = add i64 %m.probe1369, 1
  br label %m.loop1359

m.empty1365:                                      ; preds = %m.loop1359
  %m.use.tomb1416 = icmp ne i64 %m.tomb1368, -1
  %m.ins.idx1417 = select i1 %m.use.tomb1416, i64 %m.tomb1368, i64 %m.idx1367
  %m.key.slot1418 = getelementptr ptr, ptr %m.keys1339, i64 %m.ins.idx1417
  store ptr %var.load1181, ptr %m.key.slot1418, align 8
  %m.val.slot1419 = getelementptr i64, ptr %m.vals1341, i64 %m.ins.idx1417
  store i64 %a.len.query1186, ptr %m.val.slot1419, align 8
  %m.ins.state.slot1420 = getelementptr i8, ptr %m.states1343, i64 %m.ins.idx1417
  store i8 1, ptr %m.ins.state.slot1420, align 1
  %m.count1421 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  %m.count1422 = load i64, ptr %m.count1421, align 8
  %m.count.next1423 = add i64 %m.count1422, 1
  %m.count.gep1424 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 0
  store i64 %m.count.next1423, ptr %m.count.gep1424, align 8
  %m.ins.tombs.p1425 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1180, i32 0, i32 5
  %m.ins.tombs1426 = load i64, ptr %m.ins.tombs.p1425, align 8
  %m.tomb.dec1427 = select i1 %m.use.tomb1416, i64 1, i64 0
  %m.ins.tombs.next1428 = sub i64 %m.ins.tombs1426, %m.tomb.dec1427
  store i64 %m.ins.tombs.next1428, ptr %m.ins.tombs.p1425, align 8
  br label %m.done1366

m.done1366:                                       ; preds = %m.empty1365, %m.overwrite1363
  br label %choice.exit1179

str_gen_check1385:                                ; preds = %m.found1362
  %arena.cur1388 = call ptr @dva_arena_current()
  %tag.valid1389 = call i1 @dva_arena_validate_tag(ptr %arena.cur1388, i64 %str.tag1383)
  br i1 %tag.valid1389, label %str_ok1386, label %str_stale1387

str_ok1386:                                       ; preds = %str_stale1387, %str_gen_check1385, %m.found1362
  %mk.nlen1390 = getelementptr inbounds { i64, ptr }, ptr %var.load1181, i32 0, i32 0
  %mk.nlen1391 = load i64, ptr %mk.nlen1390, align 8
  %mk.nlen1392 = and i64 %mk.nlen1391, 281474976710655
  %str.tag1393 = lshr i64 %mk.nlen1391, 48
  %str.immortal1394 = icmp eq i64 %str.tag1393, 0
  br i1 %str.immortal1394, label %str_ok1396, label %str_gen_check1395

str_stale1387:                                    ; preds = %str_gen_check1385
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1386

str_gen_check1395:                                ; preds = %str_ok1386
  %arena.cur1398 = call ptr @dva_arena_current()
  %tag.valid1399 = call i1 @dva_arena_validate_tag(ptr %arena.cur1398, i64 %str.tag1393)
  br i1 %tag.valid1399, label %str_ok1396, label %str_stale1397

str_ok1396:                                       ; preds = %str_stale1397, %str_gen_check1395, %str_ok1386
  %mk.lenseq1400 = icmp eq i64 %mk.slen1382, %mk.nlen1392
  br i1 %mk.lenseq1400, label %mk.eq.then1401, label %mk.eq.else1402

str_stale1397:                                    ; preds = %str_gen_check1395
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1396

mk.eq.then1401:                                   ; preds = %str_ok1396
  %mk.sdata1404 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1379, i32 0, i32 1
  %mk.sdata1405 = load ptr, ptr %mk.sdata1404, align 8
  %mk.ndata1406 = getelementptr inbounds { i64, ptr }, ptr %var.load1181, i32 0, i32 1
  %mk.ndata1407 = load ptr, ptr %mk.ndata1406, align 8
  %mk.memcmp1408 = call i32 @memcmp(ptr %mk.sdata1405, ptr %mk.ndata1407, i64 %mk.nlen1392)
  %mk.cmpeq1409 = icmp eq i32 %mk.memcmp1408, 0
  br label %mk.eq.merge1403

mk.eq.else1402:                                   ; preds = %str_ok1396
  br label %mk.eq.merge1403

mk.eq.merge1403:                                  ; preds = %mk.eq.else1402, %mk.eq.then1401
  %mk.eq1410 = phi i1 [ %mk.cmpeq1409, %mk.eq.then1401 ], [ false, %mk.eq.else1402 ]
  br i1 %mk.eq1410, label %m.overwrite1363, label %m.next1364

a.create1434:                                     ; preds = %choice.exit1179
  %arena.cur1436 = call ptr @dva_arena_current()
  %a.create1437 = call ptr @dva_arena_alloc(ptr %arena.cur1436, i64 24)
  %arena.cur1438 = call ptr @dva_arena_current()
  %a.buf1439 = call ptr @dva_arena_alloc(ptr %arena.cur1438, i64 128)
  %a.len.gep1440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 0
  store i64 0, ptr %a.len.gep1440, align 8
  %a.data.gep1441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 1
  store ptr %a.buf1439, ptr %a.data.gep1441, align 8
  %a.cap.gep1442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1442, align 8
  store ptr %a.create1437, ptr %var.filtered_deps, align 8
  br label %a.after1435

a.after1435:                                      ; preds = %a.create1434, %choice.exit1179
  %a.load21443 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1444 = load i64, ptr %var.j, align 8
  %arena.cur1445 = call ptr @dva_arena_current()
  %rec.alloc1446 = call ptr @dva_arena_alloc(ptr %arena.cur1445, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1447 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1446, i32 0, i32 0
  store ptr %var.load1430, ptr %rec.fld1447, align 8
  %rec.fld1448 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1446, i32 0, i32 1
  store ptr %a.load21443, ptr %rec.fld1448, align 8
  %rec.fld1449 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1446, i32 0, i32 2
  store i64 %var.load1444, ptr %rec.fld1449, align 8
  %fld.gep1450 = getelementptr inbounds { ptr, ptr }, ptr %var.load1429, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1450, align 8
  br label %a.check1451

a.check1451:                                      ; preds = %a.after1435
  %a.len1454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1455 = load i64, ptr %a.len1454, align 8
  %a.cap1456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1457 = load i64, ptr %a.cap1456, align 8
  %a.needs.grow1458 = icmp eq i64 %a.len1455, %a.cap1457
  br i1 %a.needs.grow1458, label %a.grow1452, label %a.store1453

a.grow1452:                                       ; preds = %a.check1451
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1453

a.store1453:                                      ; preds = %a.grow1452, %a.check1451
  %a.cur.data1459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1460 = load ptr, ptr %a.cur.data1459, align 8
  %a.cur.len1461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1462 = load i64, ptr %a.cur.len1461, align 8
  %a.elem.gep1463 = getelementptr i64, ptr %a.cur.data1460, i64 %a.cur.len1462
  %a.elem.p2i1464 = ptrtoint ptr %rec.alloc1446 to i64
  store i64 %a.elem.p2i1464, ptr %a.elem.gep1463, align 8
  %a.next.len1465 = add i64 %a.cur.len1462, 1
  %b.len.gep1466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1465, ptr %b.len.gep1466, align 8
  br label %choice.exit969
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"dep_graph::init_tarjan_state"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.33 = alloca i64, align 8
  %loop.idx.33 = alloca i64, align 8
  %var.sccs = alloca ptr, align 8
  %var.counter = alloca ptr, align 8
  %var.stack_ptr = alloca ptr, align 8
  %var.stack = alloca ptr, align 8
  %var.on_stack = alloca ptr, align 8
  %var.lowlinks = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  store ptr null, ptr %var.indices, align 8
  store ptr null, ptr %var.lowlinks, align 8
  store ptr null, ptr %var.on_stack, align 8
  store ptr null, ptr %var.stack, align 8
  store ptr null, ptr %var.stack_ptr, align 8
  %a.load = load ptr, ptr %var.stack_ptr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr %var.stack_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.stack_ptr, align 8
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
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len6, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  store ptr null, ptr %var.counter, align 8
  %a.load7 = load ptr, ptr %var.counter, align 8
  %a.null8 = icmp eq ptr %a.load7, null
  br i1 %a.null8, label %a.create9, label %a.after10

a.create9:                                        ; preds = %a.store
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep15, align 8
  %a.data.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf14, ptr %a.data.gep16, align 8
  %a.cap.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep17, align 8
  store ptr %a.create12, ptr %var.counter, align 8
  br label %a.after10

a.after10:                                        ; preds = %a.create9, %a.store
  %a.load218 = load ptr, ptr %var.counter, align 8
  br label %a.check19

a.check19:                                        ; preds = %a.after10
  %a.len22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len22, align 8
  %a.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap24, align 8
  %a.needs.grow26 = icmp eq i64 %a.len23, %a.cap25
  br i1 %a.needs.grow26, label %a.grow20, label %a.store21

a.grow20:                                         ; preds = %a.check19
  call void @dva_array_grow(ptr %a.load218)
  br label %a.store21

a.store21:                                        ; preds = %a.grow20, %a.check19
  %a.cur.data27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 1
  %a.cur.data28 = load ptr, ptr %a.cur.data27, align 8
  %a.cur.len29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  %a.cur.len30 = load i64, ptr %a.cur.len29, align 8
  %a.elem.gep31 = getelementptr i64, ptr %a.cur.data28, i64 %a.cur.len30
  store i64 0, ptr %a.elem.gep31, align 8
  %a.next.len32 = add i64 %a.cur.len30, 1
  %b.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  store i64 %a.next.len32, ptr %b.len.gep33, align 8
  store ptr null, ptr %var.sccs, align 8
  %var.load = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.header.33:                                   ; preds = %loop.latch.33, %a.store21
  %counter.load = load i64, ptr %loop.idx.33, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.33, label %loop.exit.nat.33

loop.body.33:                                     ; preds = %loop.header.33
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.33, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %a.load34 = load ptr, ptr %var.indices, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

loop.exit.nat.33:                                 ; preds = %loop.header.33
  br label %loop.exit.33

loop.latch.33:                                    ; preds = %a.store102
  %step.val = load i64, ptr %loop.step.33, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.exit.33:                                     ; preds = %loop.exit.nat.33
  %var.load115 = load ptr, ptr %var.indices, align 8
  %a.load116 = load ptr, ptr %var.indices, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

a.create36:                                       ; preds = %loop.body.33
  %arena.cur38 = call ptr @dva_arena_current()
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = call ptr @dva_arena_current()
  %a.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  %a.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 0
  store i64 0, ptr %a.len.gep42, align 8
  %a.data.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf41, ptr %a.data.gep43, align 8
  %a.cap.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep44, align 8
  store ptr %a.create39, ptr %var.indices, align 8
  br label %a.after37

a.after37:                                        ; preds = %a.create36, %loop.body.33
  %a.load245 = load ptr, ptr %var.indices, align 8
  br label %a.check46

a.check46:                                        ; preds = %a.after37
  %a.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.len50 = load i64, ptr %a.len49, align 8
  %a.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 2
  %a.cap52 = load i64, ptr %a.cap51, align 8
  %a.needs.grow53 = icmp eq i64 %a.len50, %a.cap52
  br i1 %a.needs.grow53, label %a.grow47, label %a.store48

a.grow47:                                         ; preds = %a.check46
  call void @dva_array_grow(ptr %a.load245)
  br label %a.store48

a.store48:                                        ; preds = %a.grow47, %a.check46
  %a.cur.data54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 1
  %a.cur.data55 = load ptr, ptr %a.cur.data54, align 8
  %a.cur.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.cur.len57 = load i64, ptr %a.cur.len56, align 8
  %a.elem.gep58 = getelementptr i64, ptr %a.cur.data55, i64 %a.cur.len57
  store i64 -1, ptr %a.elem.gep58, align 8
  %a.next.len59 = add i64 %a.cur.len57, 1
  %b.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  store i64 %a.next.len59, ptr %b.len.gep60, align 8
  %a.load61 = load ptr, ptr %var.lowlinks, align 8
  %a.null62 = icmp eq ptr %a.load61, null
  br i1 %a.null62, label %a.create63, label %a.after64

a.create63:                                       ; preds = %a.store48
  %arena.cur65 = call ptr @dva_arena_current()
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = call ptr @dva_arena_current()
  %a.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 128)
  %a.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 0
  store i64 0, ptr %a.len.gep69, align 8
  %a.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 1
  store ptr %a.buf68, ptr %a.data.gep70, align 8
  %a.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 2
  store i64 16, ptr %a.cap.gep71, align 8
  store ptr %a.create66, ptr %var.lowlinks, align 8
  br label %a.after64

a.after64:                                        ; preds = %a.create63, %a.store48
  %a.load272 = load ptr, ptr %var.lowlinks, align 8
  br label %a.check73

a.check73:                                        ; preds = %a.after64
  %a.len76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  %a.len77 = load i64, ptr %a.len76, align 8
  %a.cap78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 2
  %a.cap79 = load i64, ptr %a.cap78, align 8
  %a.needs.grow80 = icmp eq i64 %a.len77, %a.cap79
  br i1 %a.needs.grow80, label %a.grow74, label %a.store75

a.grow74:                                         ; preds = %a.check73
  call void @dva_array_grow(ptr %a.load272)
  br label %a.store75

a.store75:                                        ; preds = %a.grow74, %a.check73
  %a.cur.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 1
  %a.cur.data82 = load ptr, ptr %a.cur.data81, align 8
  %a.cur.len83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  %a.cur.len84 = load i64, ptr %a.cur.len83, align 8
  %a.elem.gep85 = getelementptr i64, ptr %a.cur.data82, i64 %a.cur.len84
  store i64 0, ptr %a.elem.gep85, align 8
  %a.next.len86 = add i64 %a.cur.len84, 1
  %b.len.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  store i64 %a.next.len86, ptr %b.len.gep87, align 8
  %a.load88 = load ptr, ptr %var.on_stack, align 8
  %a.null89 = icmp eq ptr %a.load88, null
  br i1 %a.null89, label %a.create90, label %a.after91

a.create90:                                       ; preds = %a.store75
  %arena.cur92 = call ptr @dva_arena_current()
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = call ptr @dva_arena_current()
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  store ptr %a.create93, ptr %var.on_stack, align 8
  br label %a.after91

a.after91:                                        ; preds = %a.create90, %a.store75
  %a.load299 = load ptr, ptr %var.on_stack, align 8
  br label %a.check100

a.check100:                                       ; preds = %a.after91
  %a.len103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.len104 = load i64, ptr %a.len103, align 8
  %a.cap105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 2
  %a.cap106 = load i64, ptr %a.cap105, align 8
  %a.needs.grow107 = icmp eq i64 %a.len104, %a.cap106
  br i1 %a.needs.grow107, label %a.grow101, label %a.store102

a.grow101:                                        ; preds = %a.check100
  call void @dva_array_grow(ptr %a.load299)
  br label %a.store102

a.store102:                                       ; preds = %a.grow101, %a.check100
  %a.cur.data108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 1
  %a.cur.data109 = load ptr, ptr %a.cur.data108, align 8
  %a.cur.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.cur.len111 = load i64, ptr %a.cur.len110, align 8
  %a.elem.gep112 = getelementptr i64, ptr %a.cur.data109, i64 %a.cur.len111
  store i1 false, ptr %a.elem.gep112, align 1
  %a.next.len113 = add i64 %a.cur.len111, 1
  %b.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  store i64 %a.next.len113, ptr %b.len.gep114, align 8
  br label %loop.latch.33

a.create118:                                      ; preds = %loop.exit.33
  %arena.cur120 = call ptr @dva_arena_current()
  %a.create121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 24)
  %arena.cur122 = call ptr @dva_arena_current()
  %a.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 128)
  %a.len.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 0
  store i64 0, ptr %a.len.gep124, align 8
  %a.data.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 1
  store ptr %a.buf123, ptr %a.data.gep125, align 8
  %a.cap.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 2
  store i64 16, ptr %a.cap.gep126, align 8
  store ptr %a.create121, ptr %var.indices, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %loop.exit.33
  %a.load2127 = load ptr, ptr %var.indices, align 8
  %var.load128 = load ptr, ptr %var.lowlinks, align 8
  %a.load129 = load ptr, ptr %var.lowlinks, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

a.create131:                                      ; preds = %a.after119
  %arena.cur133 = call ptr @dva_arena_current()
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = call ptr @dva_arena_current()
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.lowlinks, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.after119
  %a.load2140 = load ptr, ptr %var.lowlinks, align 8
  %var.load141 = load ptr, ptr %var.on_stack, align 8
  %a.load142 = load ptr, ptr %var.on_stack, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

a.create144:                                      ; preds = %a.after132
  %arena.cur146 = call ptr @dva_arena_current()
  %a.create147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = call ptr @dva_arena_current()
  %a.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 128)
  %a.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 0
  store i64 0, ptr %a.len.gep150, align 8
  %a.data.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 1
  store ptr %a.buf149, ptr %a.data.gep151, align 8
  %a.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 2
  store i64 16, ptr %a.cap.gep152, align 8
  store ptr %a.create147, ptr %var.on_stack, align 8
  br label %a.after145

a.after145:                                       ; preds = %a.create144, %a.after132
  %a.load2153 = load ptr, ptr %var.on_stack, align 8
  %var.load154 = load ptr, ptr %var.stack, align 8
  %a.load155 = load ptr, ptr %var.stack, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

a.create157:                                      ; preds = %a.after145
  %arena.cur159 = call ptr @dva_arena_current()
  %a.create160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %arena.cur161 = call ptr @dva_arena_current()
  %a.buf162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 128)
  %a.len.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 0
  store i64 0, ptr %a.len.gep163, align 8
  %a.data.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 1
  store ptr %a.buf162, ptr %a.data.gep164, align 8
  %a.cap.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep165, align 8
  store ptr %a.create160, ptr %var.stack, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %a.after145
  %a.load2166 = load ptr, ptr %var.stack, align 8
  %var.load167 = load ptr, ptr %var.stack_ptr, align 8
  %a.load168 = load ptr, ptr %var.stack_ptr, align 8
  %a.null169 = icmp eq ptr %a.load168, null
  br i1 %a.null169, label %a.create170, label %a.after171

a.create170:                                      ; preds = %a.after158
  %arena.cur172 = call ptr @dva_arena_current()
  %a.create173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 24)
  %arena.cur174 = call ptr @dva_arena_current()
  %a.buf175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 128)
  %a.len.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 0
  store i64 0, ptr %a.len.gep176, align 8
  %a.data.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 1
  store ptr %a.buf175, ptr %a.data.gep177, align 8
  %a.cap.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 2
  store i64 16, ptr %a.cap.gep178, align 8
  store ptr %a.create173, ptr %var.stack_ptr, align 8
  br label %a.after171

a.after171:                                       ; preds = %a.create170, %a.after158
  %a.load2179 = load ptr, ptr %var.stack_ptr, align 8
  %var.load180 = load ptr, ptr %var.counter, align 8
  %a.load181 = load ptr, ptr %var.counter, align 8
  %a.null182 = icmp eq ptr %a.load181, null
  br i1 %a.null182, label %a.create183, label %a.after184

a.create183:                                      ; preds = %a.after171
  %arena.cur185 = call ptr @dva_arena_current()
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = call ptr @dva_arena_current()
  %a.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 128)
  %a.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 0
  store i64 0, ptr %a.len.gep189, align 8
  %a.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 1
  store ptr %a.buf188, ptr %a.data.gep190, align 8
  %a.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 2
  store i64 16, ptr %a.cap.gep191, align 8
  store ptr %a.create186, ptr %var.counter, align 8
  br label %a.after184

a.after184:                                       ; preds = %a.create183, %a.after171
  %a.load2192 = load ptr, ptr %var.counter, align 8
  %var.load193 = load ptr, ptr %var.sccs, align 8
  %a.load194 = load ptr, ptr %var.sccs, align 8
  %a.null195 = icmp eq ptr %a.load194, null
  br i1 %a.null195, label %a.create196, label %a.after197

a.create196:                                      ; preds = %a.after184
  %arena.cur198 = call ptr @dva_arena_current()
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = call ptr @dva_arena_current()
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.create199, ptr %var.sccs, align 8
  br label %a.after197

a.after197:                                       ; preds = %a.create196, %a.after184
  %a.load2205 = load ptr, ptr %var.sccs, align 8
  %arena.cur206 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2127, ptr %rec.fld, align 8
  %rec.fld207 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2140, ptr %rec.fld207, align 8
  %rec.fld208 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2153, ptr %rec.fld208, align 8
  %rec.fld209 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.load2166, ptr %rec.fld209, align 8
  %rec.fld210 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.load2179, ptr %rec.fld210, align 8
  %rec.fld211 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %a.load2192, ptr %rec.fld211, align 8
  %rec.fld212 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.load2205, ptr %rec.fld212, align 8
  ret ptr %rec.alloc
}

define void @"dep_graph::push_stack"(ptr %0, i64 %1) #1 {
entry:
  %var._173 = alloca ptr, align 8
  %var._172 = alloca ptr, align 8
  %var._171 = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.stk = alloca ptr, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var.u = alloca i64, align 8
  %var.state = alloca ptr, align 8
  store ptr %0, ptr %var.state, align 8
  store i64 %1, ptr %var.u, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.s_ptr, align 8
  %var.load1 = load ptr, ptr %var.s_ptr, align 8
  %a.load = load ptr, ptr %var.s_ptr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.s_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len4
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 271, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 17, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur7 = call ptr @dva_arena_current()
  %err.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 56)
  %err.code.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 0
  store i64 4011, ptr %err.code.gep9, align 8
  %err.msg.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep10, align 8
  %err.file.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep11, align 8
  %err.line.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 3
  store i64 271, ptr %err.line.gep12, align 8
  %err.col.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 4
  store i64 17, ptr %err.col.gep13, align 8
  %err.ctx.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 5
  %err.ctx0.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep15, align 8
  %err.ctx1.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep16, align 8
  %err.p2i17 = ptrtoint ptr %err.alloc8 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i17, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.34, label %unwrap.abort.34

unwrap.pos.34:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load37 = load ptr, ptr %var.state, align 8
  %fld.gep38 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load37, i32 0, i32 3
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  store ptr %fld.load39, ptr %var.stk, align 8
  %var.load40 = load i64, ptr %var.sp, align 8
  %var.load41 = load ptr, ptr %var.stk, align 8
  %a.load42 = load ptr, ptr %var.stk, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

unwrap.abort.34:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep22, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len23 = load i64, ptr %err.msg.len, align 8
  %err.msg.len24 = and i64 %err.msg.len23, 281474976710655
  %str.tag = lshr i64 %err.msg.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.34
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.34
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check31:                                  ; preds = %str_ok
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data36 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale33:                                      ; preds = %str_gen_check31
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

err.thread:                                       ; preds = %str_ok32
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok32
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data36, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create44:                                       ; preds = %unwrap.pos.34
  %arena.cur46 = call ptr @dva_arena_current()
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = call ptr @dva_arena_current()
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr %var.stk, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %unwrap.pos.34
  %a.load253 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.len.query54 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load40, %a.len.query54
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after45
  %var.load55 = load ptr, ptr %var.stk, align 8
  %a.load56 = load ptr, ptr %var.stk, align 8
  %a.null57 = icmp eq ptr %a.load56, null
  br i1 %a.null57, label %a.create58, label %a.after59

choice.else:                                      ; preds = %a.after45
  %var.load122 = load i64, ptr %var.u, align 8
  %a.load123 = load ptr, ptr %var.stk, align 8
  %a.null124 = icmp eq ptr %a.load123, null
  br i1 %a.null124, label %a.create125, label %a.after126

choice.exit:                                      ; preds = %a.store, %choice.exit76
  %var.load140 = load ptr, ptr %var.s_ptr, align 8
  %a.load141 = load ptr, ptr %var.s_ptr, align 8
  %a.null142 = icmp eq ptr %a.load141, null
  br i1 %a.null142, label %a.create143, label %a.after144

a.create58:                                       ; preds = %choice.then
  %arena.cur60 = call ptr @dva_arena_current()
  %a.create61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 24)
  %arena.cur62 = call ptr @dva_arena_current()
  %a.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 128)
  %a.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 0
  store i64 0, ptr %a.len.gep64, align 8
  %a.data.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 1
  store ptr %a.buf63, ptr %a.data.gep65, align 8
  %a.cap.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 2
  store i64 16, ptr %a.cap.gep66, align 8
  store ptr %a.create61, ptr %var.stk, align 8
  br label %a.after59

a.after59:                                        ; preds = %a.create58, %choice.then
  %a.load267 = load ptr, ptr %var.stk, align 8
  %var.load68 = load i64, ptr %var.sp, align 8
  %var.load69 = load i64, ptr %var.u, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 1
  %a.wr.data70 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data70, i64 %var.load68
  store i64 %var.load69, ptr %a.elem.gep, align 8
  %arena.cur71 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep72 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep72, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep73 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep73, align 8
  br i1 %is.pos, label %choice.then74, label %choice.else75

choice.then74:                                    ; preds = %a.after59
  br label %choice.exit76

choice.else75:                                    ; preds = %a.after59
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._77, align 8
  store ptr %payload.ptr, ptr %var._78, align 8
  %err.code.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code80 = load i64, ptr %err.code.gep79, align 8
  %err.msg.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct82 = load ptr, ptr %err.msg.gep81, align 8
  %err.file.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct84 = load ptr, ptr %err.file.gep83, align 8
  %err.line.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line86 = load i64, ptr %err.line.gep85, align 8
  %err.col.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col88 = load i64, ptr %err.col.gep87, align 8
  %err.msg.len89 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct82, i32 0, i32 0
  %err.msg.len90 = load i64, ptr %err.msg.len89, align 8
  %err.msg.len91 = and i64 %err.msg.len90, 281474976710655
  %str.tag92 = lshr i64 %err.msg.len90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

choice.exit76:                                    ; preds = %err.abort, %choice.then74
  br label %choice.exit

str_gen_check94:                                  ; preds = %choice.else75
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %choice.else75
  %err.msg.len3299 = trunc i64 %err.msg.len91 to i32
  %err.msg.data100 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct82, i32 0, i32 1
  %err.msg.data101 = load ptr, ptr %err.msg.data100, align 8
  %err.file.len102 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct84, i32 0, i32 0
  %err.file.len103 = load i64, ptr %err.file.len102, align 8
  %err.file.len104 = and i64 %err.file.len103, 281474976710655
  %str.tag105 = lshr i64 %err.file.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_stale96:                                      ; preds = %str_gen_check94
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

str_gen_check107:                                 ; preds = %str_ok95
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %str_ok95
  %err.file.len32112 = trunc i64 %err.file.len104 to i32
  %err.file.data113 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct84, i32 0, i32 1
  %err.file.data114 = load ptr, ptr %err.file.data113, align 8
  %err.thread.rec115 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread116 = icmp ne ptr %err.thread.rec115, null
  br i1 %err.is.thread116, label %err.thread117, label %err.normal118

str_stale109:                                     ; preds = %str_gen_check107
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

err.thread117:                                    ; preds = %str_ok108
  %err.haserr.gep119 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec115, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep119, align 8
  %err.err.gep120 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec115, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep120, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal118:                                    ; preds = %str_ok108
  %err.panic.printf121 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code80, i32 %err.msg.len3299, ptr %err.msg.data101, i32 %err.file.len32112, ptr %err.file.data114, i64 %err.line86, i64 %err.col88)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit76

a.create125:                                      ; preds = %choice.else
  %arena.cur127 = call ptr @dva_arena_current()
  %a.create128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 24)
  %arena.cur129 = call ptr @dva_arena_current()
  %a.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 128)
  %a.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 0
  store i64 0, ptr %a.len.gep131, align 8
  %a.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 1
  store ptr %a.buf130, ptr %a.data.gep132, align 8
  %a.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep133, align 8
  store ptr %a.create128, ptr %var.stk, align 8
  br label %a.after126

a.after126:                                       ; preds = %a.create125, %choice.else
  %a.load2134 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after126
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  %a.len135 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 2
  %a.cap136 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len135, %a.cap136
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2134)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 1
  %a.cur.data137 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  %a.cur.len138 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep139 = getelementptr i64, ptr %a.cur.data137, i64 %a.cur.len138
  store i64 %var.load122, ptr %a.elem.gep139, align 8
  %a.next.len = add i64 %a.cur.len138, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create143:                                      ; preds = %choice.exit
  %arena.cur145 = call ptr @dva_arena_current()
  %a.create146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %arena.cur147 = call ptr @dva_arena_current()
  %a.buf148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 128)
  %a.len.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 0
  store i64 0, ptr %a.len.gep149, align 8
  %a.data.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 1
  store ptr %a.buf148, ptr %a.data.gep150, align 8
  %a.cap.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 2
  store i64 16, ptr %a.cap.gep151, align 8
  store ptr %a.create146, ptr %var.s_ptr, align 8
  br label %a.after144

a.after144:                                       ; preds = %a.create143, %choice.exit
  %a.load2152 = load ptr, ptr %var.s_ptr, align 8
  %var.load153 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load153, 1
  %a.wr.data154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 1
  %a.wr.data155 = load ptr, ptr %a.wr.data154, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.wr.data155, i64 0
  store i64 %addtmp, ptr %a.elem.gep156, align 8
  %arena.cur157 = call ptr @dva_arena_current()
  %a.wr.succ158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %tag.gep159 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ158, i32 0, i32 0
  store i64 1, ptr %tag.gep159, align 8
  %pay.gep160 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ158, i32 0, i32 1
  store ptr null, ptr %pay.gep160, align 8
  %tag.gep161 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ158, i32 0, i32 0
  %tag.id162 = load i64, ptr %tag.gep161, align 8
  %tag.eq.one163 = icmp eq i64 %tag.id162, 1
  %tag.eq.two164 = icmp eq i64 %tag.id162, 2
  %is.pos165 = or i1 %tag.eq.one163, %tag.eq.two164
  %pay.gep166 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ158, i32 0, i32 1
  %payload.ptr167 = load ptr, ptr %pay.gep166, align 8
  br i1 %is.pos165, label %choice.then168, label %choice.else169

choice.then168:                                   ; preds = %a.after144
  br label %choice.exit170

choice.else169:                                   ; preds = %a.after144
  store ptr %payload.ptr167, ptr %var._171, align 8
  store ptr %payload.ptr167, ptr %var._172, align 8
  store ptr %payload.ptr167, ptr %var._173, align 8
  %err.code.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr167, i32 0, i32 0
  %err.code175 = load i64, ptr %err.code.gep174, align 8
  %err.msg.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr167, i32 0, i32 1
  %err.msg.struct177 = load ptr, ptr %err.msg.gep176, align 8
  %err.file.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr167, i32 0, i32 2
  %err.file.struct179 = load ptr, ptr %err.file.gep178, align 8
  %err.line.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr167, i32 0, i32 3
  %err.line181 = load i64, ptr %err.line.gep180, align 8
  %err.col.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr167, i32 0, i32 4
  %err.col183 = load i64, ptr %err.col.gep182, align 8
  %err.msg.len184 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct177, i32 0, i32 0
  %err.msg.len185 = load i64, ptr %err.msg.len184, align 8
  %err.msg.len186 = and i64 %err.msg.len185, 281474976710655
  %str.tag187 = lshr i64 %err.msg.len185, 48
  %str.immortal188 = icmp eq i64 %str.tag187, 0
  br i1 %str.immortal188, label %str_ok190, label %str_gen_check189

choice.exit170:                                   ; preds = %err.abort217, %choice.then168
  ret void

str_gen_check189:                                 ; preds = %choice.else169
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %str.tag187)
  br i1 %tag.valid193, label %str_ok190, label %str_stale191

str_ok190:                                        ; preds = %str_stale191, %str_gen_check189, %choice.else169
  %err.msg.len32194 = trunc i64 %err.msg.len186 to i32
  %err.msg.data195 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct177, i32 0, i32 1
  %err.msg.data196 = load ptr, ptr %err.msg.data195, align 8
  %err.file.len197 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct179, i32 0, i32 0
  %err.file.len198 = load i64, ptr %err.file.len197, align 8
  %err.file.len199 = and i64 %err.file.len198, 281474976710655
  %str.tag200 = lshr i64 %err.file.len198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

str_stale191:                                     ; preds = %str_gen_check189
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok190

str_gen_check202:                                 ; preds = %str_ok190
  %arena.cur205 = call ptr @dva_arena_current()
  %tag.valid206 = call i1 @dva_arena_validate_tag(ptr %arena.cur205, i64 %str.tag200)
  br i1 %tag.valid206, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %str_ok190
  %err.file.len32207 = trunc i64 %err.file.len199 to i32
  %err.file.data208 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct179, i32 0, i32 1
  %err.file.data209 = load ptr, ptr %err.file.data208, align 8
  %err.thread.rec210 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread211 = icmp ne ptr %err.thread.rec210, null
  br i1 %err.is.thread211, label %err.thread212, label %err.normal213

str_stale204:                                     ; preds = %str_gen_check202
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

err.thread212:                                    ; preds = %str_ok203
  %err.haserr.gep214 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec210, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep214, align 8
  %err.err.gep215 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec210, i32 0, i32 7
  store ptr %payload.ptr167, ptr %err.err.gep215, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal213:                                    ; preds = %str_ok203
  %err.panic.printf216 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code175, i32 %err.msg.len32194, ptr %err.msg.data196, i32 %err.file.len32207, ptr %err.file.data209, i64 %err.line181, i64 %err.col183)
  call void @exit(i32 1)
  unreachable

err.abort217:                                     ; No predecessors!
  br label %choice.exit170
}

define i64 @"dep_graph::pop_stack"(ptr %0) #1 {
entry:
  %var.stk = alloca ptr, align 8
  %var._61 = alloca ptr, align 8
  %var._60 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.new_sp = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var.state = alloca ptr, align 8
  store ptr %0, ptr %var.state, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.s_ptr, align 8
  %var.load1 = load ptr, ptr %var.s_ptr, align 8
  %a.load = load ptr, ptr %var.s_ptr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.s_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len4
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 282, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 17, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur7 = call ptr @dva_arena_current()
  %err.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 56)
  %err.code.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 0
  store i64 4011, ptr %err.code.gep9, align 8
  %err.msg.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep10, align 8
  %err.file.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep11, align 8
  %err.line.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 3
  store i64 282, ptr %err.line.gep12, align 8
  %err.col.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 4
  store i64 17, ptr %err.col.gep13, align 8
  %err.ctx.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 5
  %err.ctx0.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep15, align 8
  %err.ctx1.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep16, align 8
  %err.p2i17 = ptrtoint ptr %err.alloc8 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i17, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.35, label %unwrap.abort.35

unwrap.pos.35:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load37 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load37, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

unwrap.abort.35:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep22, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len23 = load i64, ptr %err.msg.len, align 8
  %err.msg.len24 = and i64 %err.msg.len23, 281474976710655
  %str.tag = lshr i64 %err.msg.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.35
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.35
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check31:                                  ; preds = %str_ok
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data36 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale33:                                      ; preds = %str_gen_check31
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

err.thread:                                       ; preds = %str_ok32
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok32
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data36, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.35
  %var.load38 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load38, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.35
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load39 = load ptr, ptr %var.s_ptr, align 8
  %a.load40 = load ptr, ptr %var.s_ptr, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

a.create42:                                       ; preds = %choice.exit
  %arena.cur44 = call ptr @dva_arena_current()
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = call ptr @dva_arena_current()
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.s_ptr, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %choice.exit
  %a.load251 = load ptr, ptr %var.s_ptr, align 8
  %var.load52 = load i64, ptr %var.new_sp, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 1
  %a.wr.data53 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data53, i64 0
  store i64 %var.load52, ptr %a.elem.gep, align 8
  %arena.cur54 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep55 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep55, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep56 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep56, align 8
  br i1 %is.pos, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %a.after43
  br label %choice.exit59

choice.else58:                                    ; preds = %a.after43
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._60, align 8
  store ptr %payload.ptr, ptr %var._61, align 8
  %err.code.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code63 = load i64, ptr %err.code.gep62, align 8
  %err.msg.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct65 = load ptr, ptr %err.msg.gep64, align 8
  %err.file.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct67 = load ptr, ptr %err.file.gep66, align 8
  %err.line.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line69 = load i64, ptr %err.line.gep68, align 8
  %err.col.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col71 = load i64, ptr %err.col.gep70, align 8
  %err.msg.len72 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct65, i32 0, i32 0
  %err.msg.len73 = load i64, ptr %err.msg.len72, align 8
  %err.msg.len74 = and i64 %err.msg.len73, 281474976710655
  %str.tag75 = lshr i64 %err.msg.len73, 48
  %str.immortal76 = icmp eq i64 %str.tag75, 0
  br i1 %str.immortal76, label %str_ok78, label %str_gen_check77

choice.exit59:                                    ; preds = %err.abort, %choice.then57
  %var.load105 = load ptr, ptr %var.state, align 8
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load105, i32 0, i32 3
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  store ptr %fld.load107, ptr %var.stk, align 8
  %var.load108 = load ptr, ptr %var.stk, align 8
  %a.load109 = load ptr, ptr %var.stk, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

str_gen_check77:                                  ; preds = %choice.else58
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag75)
  br i1 %tag.valid81, label %str_ok78, label %str_stale79

str_ok78:                                         ; preds = %str_stale79, %str_gen_check77, %choice.else58
  %err.msg.len3282 = trunc i64 %err.msg.len74 to i32
  %err.msg.data83 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct65, i32 0, i32 1
  %err.msg.data84 = load ptr, ptr %err.msg.data83, align 8
  %err.file.len85 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct67, i32 0, i32 0
  %err.file.len86 = load i64, ptr %err.file.len85, align 8
  %err.file.len87 = and i64 %err.file.len86, 281474976710655
  %str.tag88 = lshr i64 %err.file.len86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

str_stale79:                                      ; preds = %str_gen_check77
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok78

str_gen_check90:                                  ; preds = %str_ok78
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %str_ok78
  %err.file.len3295 = trunc i64 %err.file.len87 to i32
  %err.file.data96 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct67, i32 0, i32 1
  %err.file.data97 = load ptr, ptr %err.file.data96, align 8
  %err.thread.rec98 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread99 = icmp ne ptr %err.thread.rec98, null
  br i1 %err.is.thread99, label %err.thread100, label %err.normal101

str_stale92:                                      ; preds = %str_gen_check90
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

err.thread100:                                    ; preds = %str_ok91
  %err.haserr.gep102 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec98, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep102, align 8
  %err.err.gep103 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec98, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep103, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal101:                                    ; preds = %str_ok91
  %err.panic.printf104 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code63, i32 %err.msg.len3282, ptr %err.msg.data84, i32 %err.file.len3295, ptr %err.file.data97, i64 %err.line69, i64 %err.col71)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit59

a.create111:                                      ; preds = %choice.exit59
  %arena.cur113 = call ptr @dva_arena_current()
  %a.create114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 24)
  %arena.cur115 = call ptr @dva_arena_current()
  %a.buf116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 0
  store i64 0, ptr %a.len.gep117, align 8
  %a.data.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 1
  store ptr %a.buf116, ptr %a.data.gep118, align 8
  %a.cap.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep119, align 8
  store ptr %a.create114, ptr %var.stk, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %choice.exit59
  %a.load2120 = load ptr, ptr %var.stk, align 8
  %var.load121 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull122 = icmp ne ptr %a.load2120, null
  br i1 %a.rd.nonnull122, label %a.rd.check123, label %a.rd.err.null125

a.rd.check123:                                    ; preds = %a.after112
  %a.rd.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 0
  %a.rd.len129 = load i64, ptr %a.rd.len128, align 8
  %a.rd.ge0 = icmp sge i64 %var.load121, 0
  %a.rd.lt130 = icmp slt i64 %var.load121, %a.rd.len129
  %a.rd.bounds131 = and i1 %a.rd.ge0, %a.rd.lt130
  br i1 %a.rd.bounds131, label %a.rd.ok124, label %a.rd.err.oob126

a.rd.ok124:                                       ; preds = %a.rd.check123
  %a.rd.data132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 1
  %a.rd.data133 = load ptr, ptr %a.rd.data132, align 8
  %a.rd.elem.gep134 = getelementptr i64, ptr %a.rd.data133, i64 %var.load121
  %a.rd.elem135 = load i64, ptr %a.rd.elem.gep134, align 8
  br label %a.rd.done127

a.rd.err.null125:                                 ; preds = %a.after112
  %arena.cur136 = call ptr @dva_arena_current()
  %err.alloc137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 56)
  %err.code.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 0
  store i64 4011, ptr %err.code.gep138, align 8
  %err.msg.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep139, align 8
  %err.file.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep140, align 8
  %err.line.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 3
  store i64 286, ptr %err.line.gep141, align 8
  %err.col.gep142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 4
  store i64 15, ptr %err.col.gep142, align 8
  %err.ctx.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc137, i32 0, i32 5
  %err.ctx0.gep144 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep143, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep144, align 8
  %err.ctx1.gep145 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep143, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep145, align 8
  %err.p2i146 = ptrtoint ptr %err.alloc137 to i64
  br label %a.rd.done127

a.rd.err.oob126:                                  ; preds = %a.rd.check123
  %arena.cur147 = call ptr @dva_arena_current()
  %err.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 56)
  %err.code.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 0
  store i64 4011, ptr %err.code.gep149, align 8
  %err.msg.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep150, align 8
  %err.file.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep151, align 8
  %err.line.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 3
  store i64 286, ptr %err.line.gep152, align 8
  %err.col.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 4
  store i64 15, ptr %err.col.gep153, align 8
  %err.ctx.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 5
  %err.ctx0.gep155 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep154, i32 0, i32 0
  store i64 %var.load121, ptr %err.ctx0.gep155, align 8
  %err.ctx1.gep156 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep154, i32 0, i32 1
  store i64 %a.rd.len129, ptr %err.ctx1.gep156, align 8
  %err.p2i157 = ptrtoint ptr %err.alloc148 to i64
  br label %a.rd.done127

a.rd.done127:                                     ; preds = %a.rd.err.oob126, %a.rd.err.null125, %a.rd.ok124
  %a.rd.tag158 = phi i1 [ true, %a.rd.ok124 ], [ false, %a.rd.err.null125 ], [ false, %a.rd.err.oob126 ]
  %a.rd.pay159 = phi i64 [ %a.rd.elem135, %a.rd.ok124 ], [ %err.p2i146, %a.rd.err.null125 ], [ %err.p2i157, %a.rd.err.oob126 ]
  %ram.tag160 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag158, 0
  %ram.pay161 = insertvalue { i1, i64 } %ram.tag160, i64 %a.rd.pay159, 1
  %unwrap.is_pos162 = extractvalue { i1, i64 } %ram.pay161, 0
  br i1 %unwrap.is_pos162, label %unwrap.pos.36, label %unwrap.abort.36

unwrap.pos.36:                                    ; preds = %a.rd.done127
  %unwrap.pay.pos208 = extractvalue { i1, i64 } %ram.pay161, 1
  ret i64 %unwrap.pay.pos208

unwrap.abort.36:                                  ; preds = %a.rd.done127
  %unwrap.pay.abort163 = extractvalue { i1, i64 } %ram.pay161, 1
  %err.ptr164 = inttoptr i64 %unwrap.pay.abort163 to ptr
  %err.code.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr164, i32 0, i32 0
  %err.code166 = load i64, ptr %err.code.gep165, align 8
  %err.msg.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr164, i32 0, i32 1
  %err.msg.struct168 = load ptr, ptr %err.msg.gep167, align 8
  %err.file.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr164, i32 0, i32 2
  %err.file.struct170 = load ptr, ptr %err.file.gep169, align 8
  %err.line.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr164, i32 0, i32 3
  %err.line172 = load i64, ptr %err.line.gep171, align 8
  %err.col.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr164, i32 0, i32 4
  %err.col174 = load i64, ptr %err.col.gep173, align 8
  %err.msg.len175 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct168, i32 0, i32 0
  %err.msg.len176 = load i64, ptr %err.msg.len175, align 8
  %err.msg.len177 = and i64 %err.msg.len176, 281474976710655
  %str.tag178 = lshr i64 %err.msg.len176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_gen_check180:                                 ; preds = %unwrap.abort.36
  %arena.cur183 = call ptr @dva_arena_current()
  %tag.valid184 = call i1 @dva_arena_validate_tag(ptr %arena.cur183, i64 %str.tag178)
  br i1 %tag.valid184, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %unwrap.abort.36
  %err.msg.len32185 = trunc i64 %err.msg.len177 to i32
  %err.msg.data186 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct168, i32 0, i32 1
  %err.msg.data187 = load ptr, ptr %err.msg.data186, align 8
  %err.file.len188 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct170, i32 0, i32 0
  %err.file.len189 = load i64, ptr %err.file.len188, align 8
  %err.file.len190 = and i64 %err.file.len189, 281474976710655
  %str.tag191 = lshr i64 %err.file.len189, 48
  %str.immortal192 = icmp eq i64 %str.tag191, 0
  br i1 %str.immortal192, label %str_ok194, label %str_gen_check193

str_stale182:                                     ; preds = %str_gen_check180
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

str_gen_check193:                                 ; preds = %str_ok181
  %arena.cur196 = call ptr @dva_arena_current()
  %tag.valid197 = call i1 @dva_arena_validate_tag(ptr %arena.cur196, i64 %str.tag191)
  br i1 %tag.valid197, label %str_ok194, label %str_stale195

str_ok194:                                        ; preds = %str_stale195, %str_gen_check193, %str_ok181
  %err.file.len32198 = trunc i64 %err.file.len190 to i32
  %err.file.data199 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct170, i32 0, i32 1
  %err.file.data200 = load ptr, ptr %err.file.data199, align 8
  %err.thread.rec201 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread202 = icmp ne ptr %err.thread.rec201, null
  br i1 %err.is.thread202, label %err.thread203, label %err.normal204

str_stale195:                                     ; preds = %str_gen_check193
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok194

err.thread203:                                    ; preds = %str_ok194
  %err.haserr.gep205 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec201, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep205, align 8
  %err.err.gep206 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec201, i32 0, i32 7
  store ptr %err.ptr164, ptr %err.err.gep206, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal204:                                    ; preds = %str_ok194
  %err.panic.printf207 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code166, i32 %err.msg.len32185, ptr %err.msg.data187, i32 %err.file.len32198, ptr %err.file.data200, i64 %err.line172, i64 %err.col174)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1318 = alloca ptr, align 8
  %var._1317 = alloca ptr, align 8
  %var._1316 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1175 = alloca i64, align 8
  %var._i1174 = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var._1154 = alloca ptr, align 8
  %var._1151 = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1089 = alloca ptr, align 8
  %var._1086 = alloca i64, align 8
  %var._981 = alloca ptr, align 8
  %var._980 = alloca ptr, align 8
  %var._979 = alloca ptr, align 8
  %var.min_idx = alloca i64, align 8
  %var.idx_v = alloca i64, align 8
  %var._936 = alloca ptr, align 8
  %var._933 = alloca i64, align 8
  %var.lu2 = alloca i64, align 8
  %var._871 = alloca ptr, align 8
  %var._868 = alloca i64, align 8
  %var.v_on = alloca i1, align 1
  %var._803 = alloca ptr, align 8
  %var._800 = alloca i1, align 1
  %var._695 = alloca ptr, align 8
  %var._694 = alloca ptr, align 8
  %var._693 = alloca ptr, align 8
  %var.min_v = alloca i64, align 8
  %var.low_v = alloca i64, align 8
  %var._650 = alloca ptr, align 8
  %var._647 = alloca i64, align 8
  %var.lu1 = alloca i64, align 8
  %var._585 = alloca ptr, align 8
  %var._582 = alloca i64, align 8
  %var.v_idx = alloca i64, align 8
  %var._513 = alloca ptr, align 8
  %var._510 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._444 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._303 = alloca ptr, align 8
  %var._302 = alloca ptr, align 8
  %var._301 = alloca ptr, align 8
  %var._223 = alloca ptr, align 8
  %var._222 = alloca ptr, align 8
  %var._221 = alloca ptr, align 8
  %var._145 = alloca ptr, align 8
  %var._144 = alloca ptr, align 8
  %var._143 = alloca ptr, align 8
  %var._67 = alloca ptr, align 8
  %var._66 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.cnt = alloca i64, align 8
  %var.s_cnt = alloca ptr, align 8
  %var.ons = alloca ptr, align 8
  %var.lows = alloca ptr, align 8
  %var.idxs = alloca ptr, align 8
  %var.u = alloca i64, align 8
  %var.state = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  store ptr %1, ptr %var.state, align 8
  store i64 %2, ptr %var.u, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.idxs, align 8
  %var.load1 = load ptr, ptr %var.state, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  store ptr %fld.load3, ptr %var.lows, align 8
  %var.load4 = load ptr, ptr %var.state, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.ons, align 8
  %var.load7 = load ptr, ptr %var.state, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load7, i32 0, i32 5
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  store ptr %fld.load9, ptr %var.s_cnt, align 8
  %var.load10 = load ptr, ptr %var.s_cnt, align 8
  %a.load = load ptr, ptr %var.s_cnt, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur12 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create11, ptr %var.s_cnt, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_cnt, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len13
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur15 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 294, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 18, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur16 = call ptr @dva_arena_current()
  %err.alloc17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 56)
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 0
  store i64 4011, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 3
  store i64 294, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 4
  store i64 18, ptr %err.col.gep22, align 8
  %err.ctx.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 5
  %err.ctx0.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep24, align 8
  %err.ctx1.gep25 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep25, align 8
  %err.p2i26 = ptrtoint ptr %err.alloc17 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i26, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.37, label %unwrap.abort.37

unwrap.pos.37:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.cnt, align 8
  %var.load47 = load ptr, ptr %var.idxs, align 8
  %a.load48 = load ptr, ptr %var.idxs, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

unwrap.abort.37:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep27, align 8
  %err.msg.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep28, align 8
  %err.file.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep29, align 8
  %err.line.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep30, align 8
  %err.col.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep31, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len32 = load i64, ptr %err.msg.len, align 8
  %err.msg.len33 = and i64 %err.msg.len32, 281474976710655
  %str.tag = lshr i64 %err.msg.len32, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.37
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.37
  %err.msg.len3235 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data36 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len37 = load i64, ptr %err.file.len, align 8
  %err.file.len38 = and i64 %err.file.len37, 281474976710655
  %str.tag39 = lshr i64 %err.file.len37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check41:                                  ; preds = %str_ok
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok
  %err.file.len32 = trunc i64 %err.file.len38 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data46 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale43:                                      ; preds = %str_gen_check41
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

err.thread:                                       ; preds = %str_ok42
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok42
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3235, ptr %err.msg.data36, i32 %err.file.len32, ptr %err.file.data46, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create50:                                       ; preds = %unwrap.pos.37
  %arena.cur52 = call ptr @dva_arena_current()
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.create53, ptr %var.idxs, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %unwrap.pos.37
  %a.load259 = load ptr, ptr %var.idxs, align 8
  %var.load60 = load i64, ptr %var.u, align 8
  %var.load61 = load i64, ptr %var.cnt, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 1
  %a.wr.data62 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data62, i64 %var.load60
  store i64 %var.load61, ptr %a.elem.gep, align 8
  %arena.cur63 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep64, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep65 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep65, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after51
  br label %choice.exit

choice.else:                                      ; preds = %a.after51
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._66, align 8
  store ptr %payload.ptr, ptr %var._67, align 8
  %err.code.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code69 = load i64, ptr %err.code.gep68, align 8
  %err.msg.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct71 = load ptr, ptr %err.msg.gep70, align 8
  %err.file.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct73 = load ptr, ptr %err.file.gep72, align 8
  %err.line.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line75 = load i64, ptr %err.line.gep74, align 8
  %err.col.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col77 = load i64, ptr %err.col.gep76, align 8
  %err.msg.len78 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct71, i32 0, i32 0
  %err.msg.len79 = load i64, ptr %err.msg.len78, align 8
  %err.msg.len80 = and i64 %err.msg.len79, 281474976710655
  %str.tag81 = lshr i64 %err.msg.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load111 = load ptr, ptr %var.lows, align 8
  %a.load112 = load ptr, ptr %var.lows, align 8
  %a.null113 = icmp eq ptr %a.load112, null
  br i1 %a.null113, label %a.create114, label %a.after115

str_gen_check83:                                  ; preds = %choice.else
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %choice.else
  %err.msg.len3288 = trunc i64 %err.msg.len80 to i32
  %err.msg.data89 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct71, i32 0, i32 1
  %err.msg.data90 = load ptr, ptr %err.msg.data89, align 8
  %err.file.len91 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct73, i32 0, i32 0
  %err.file.len92 = load i64, ptr %err.file.len91, align 8
  %err.file.len93 = and i64 %err.file.len92, 281474976710655
  %str.tag94 = lshr i64 %err.file.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

str_stale85:                                      ; preds = %str_gen_check83
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check96:                                  ; preds = %str_ok84
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %str_ok84
  %err.file.len32101 = trunc i64 %err.file.len93 to i32
  %err.file.data102 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct73, i32 0, i32 1
  %err.file.data103 = load ptr, ptr %err.file.data102, align 8
  %err.thread.rec104 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread105 = icmp ne ptr %err.thread.rec104, null
  br i1 %err.is.thread105, label %err.thread106, label %err.normal107

str_stale98:                                      ; preds = %str_gen_check96
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

err.thread106:                                    ; preds = %str_ok97
  %err.haserr.gep108 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec104, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep108, align 8
  %err.err.gep109 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec104, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep109, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal107:                                    ; preds = %str_ok97
  %err.panic.printf110 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code69, i32 %err.msg.len3288, ptr %err.msg.data90, i32 %err.file.len32101, ptr %err.file.data103, i64 %err.line75, i64 %err.col77)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create114:                                      ; preds = %choice.exit
  %arena.cur116 = call ptr @dva_arena_current()
  %a.create117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 24)
  %arena.cur118 = call ptr @dva_arena_current()
  %a.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 128)
  %a.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 0
  store i64 0, ptr %a.len.gep120, align 8
  %a.data.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 1
  store ptr %a.buf119, ptr %a.data.gep121, align 8
  %a.cap.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep122, align 8
  store ptr %a.create117, ptr %var.lows, align 8
  br label %a.after115

a.after115:                                       ; preds = %a.create114, %choice.exit
  %a.load2123 = load ptr, ptr %var.lows, align 8
  %var.load124 = load i64, ptr %var.u, align 8
  %var.load125 = load i64, ptr %var.cnt, align 8
  %a.wr.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 1
  %a.wr.data127 = load ptr, ptr %a.wr.data126, align 8
  %a.elem.gep128 = getelementptr i64, ptr %a.wr.data127, i64 %var.load124
  store i64 %var.load125, ptr %a.elem.gep128, align 8
  %arena.cur129 = call ptr @dva_arena_current()
  %a.wr.succ130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 16)
  %tag.gep131 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ130, i32 0, i32 0
  store i64 1, ptr %tag.gep131, align 8
  %pay.gep132 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ130, i32 0, i32 1
  store ptr null, ptr %pay.gep132, align 8
  %tag.gep133 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ130, i32 0, i32 0
  %tag.id134 = load i64, ptr %tag.gep133, align 8
  %tag.eq.one135 = icmp eq i64 %tag.id134, 1
  %tag.eq.two136 = icmp eq i64 %tag.id134, 2
  %is.pos137 = or i1 %tag.eq.one135, %tag.eq.two136
  %pay.gep138 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ130, i32 0, i32 1
  %payload.ptr139 = load ptr, ptr %pay.gep138, align 8
  br i1 %is.pos137, label %choice.then140, label %choice.else141

choice.then140:                                   ; preds = %a.after115
  br label %choice.exit142

choice.else141:                                   ; preds = %a.after115
  store ptr %payload.ptr139, ptr %var._143, align 8
  store ptr %payload.ptr139, ptr %var._144, align 8
  store ptr %payload.ptr139, ptr %var._145, align 8
  %err.code.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr139, i32 0, i32 0
  %err.code147 = load i64, ptr %err.code.gep146, align 8
  %err.msg.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr139, i32 0, i32 1
  %err.msg.struct149 = load ptr, ptr %err.msg.gep148, align 8
  %err.file.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr139, i32 0, i32 2
  %err.file.struct151 = load ptr, ptr %err.file.gep150, align 8
  %err.line.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr139, i32 0, i32 3
  %err.line153 = load i64, ptr %err.line.gep152, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr139, i32 0, i32 4
  %err.col155 = load i64, ptr %err.col.gep154, align 8
  %err.msg.len156 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct149, i32 0, i32 0
  %err.msg.len157 = load i64, ptr %err.msg.len156, align 8
  %err.msg.len158 = and i64 %err.msg.len157, 281474976710655
  %str.tag159 = lshr i64 %err.msg.len157, 48
  %str.immortal160 = icmp eq i64 %str.tag159, 0
  br i1 %str.immortal160, label %str_ok162, label %str_gen_check161

choice.exit142:                                   ; preds = %err.abort189, %choice.then140
  %var.load190 = load ptr, ptr %var.s_cnt, align 8
  %a.load191 = load ptr, ptr %var.s_cnt, align 8
  %a.null192 = icmp eq ptr %a.load191, null
  br i1 %a.null192, label %a.create193, label %a.after194

str_gen_check161:                                 ; preds = %choice.else141
  %arena.cur164 = call ptr @dva_arena_current()
  %tag.valid165 = call i1 @dva_arena_validate_tag(ptr %arena.cur164, i64 %str.tag159)
  br i1 %tag.valid165, label %str_ok162, label %str_stale163

str_ok162:                                        ; preds = %str_stale163, %str_gen_check161, %choice.else141
  %err.msg.len32166 = trunc i64 %err.msg.len158 to i32
  %err.msg.data167 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct149, i32 0, i32 1
  %err.msg.data168 = load ptr, ptr %err.msg.data167, align 8
  %err.file.len169 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct151, i32 0, i32 0
  %err.file.len170 = load i64, ptr %err.file.len169, align 8
  %err.file.len171 = and i64 %err.file.len170, 281474976710655
  %str.tag172 = lshr i64 %err.file.len170, 48
  %str.immortal173 = icmp eq i64 %str.tag172, 0
  br i1 %str.immortal173, label %str_ok175, label %str_gen_check174

str_stale163:                                     ; preds = %str_gen_check161
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok162

str_gen_check174:                                 ; preds = %str_ok162
  %arena.cur177 = call ptr @dva_arena_current()
  %tag.valid178 = call i1 @dva_arena_validate_tag(ptr %arena.cur177, i64 %str.tag172)
  br i1 %tag.valid178, label %str_ok175, label %str_stale176

str_ok175:                                        ; preds = %str_stale176, %str_gen_check174, %str_ok162
  %err.file.len32179 = trunc i64 %err.file.len171 to i32
  %err.file.data180 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct151, i32 0, i32 1
  %err.file.data181 = load ptr, ptr %err.file.data180, align 8
  %err.thread.rec182 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread183 = icmp ne ptr %err.thread.rec182, null
  br i1 %err.is.thread183, label %err.thread184, label %err.normal185

str_stale176:                                     ; preds = %str_gen_check174
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok175

err.thread184:                                    ; preds = %str_ok175
  %err.haserr.gep186 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec182, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep186, align 8
  %err.err.gep187 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec182, i32 0, i32 7
  store ptr %payload.ptr139, ptr %err.err.gep187, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal185:                                    ; preds = %str_ok175
  %err.panic.printf188 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code147, i32 %err.msg.len32166, ptr %err.msg.data168, i32 %err.file.len32179, ptr %err.file.data181, i64 %err.line153, i64 %err.col155)
  call void @exit(i32 1)
  unreachable

err.abort189:                                     ; No predecessors!
  br label %choice.exit142

a.create193:                                      ; preds = %choice.exit142
  %arena.cur195 = call ptr @dva_arena_current()
  %a.create196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 24)
  %arena.cur197 = call ptr @dva_arena_current()
  %a.buf198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 128)
  %a.len.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 0
  store i64 0, ptr %a.len.gep199, align 8
  %a.data.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 1
  store ptr %a.buf198, ptr %a.data.gep200, align 8
  %a.cap.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create196, i32 0, i32 2
  store i64 16, ptr %a.cap.gep201, align 8
  store ptr %a.create196, ptr %var.s_cnt, align 8
  br label %a.after194

a.after194:                                       ; preds = %a.create193, %choice.exit142
  %a.load2202 = load ptr, ptr %var.s_cnt, align 8
  %var.load203 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load203, 1
  %a.wr.data204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2202, i32 0, i32 1
  %a.wr.data205 = load ptr, ptr %a.wr.data204, align 8
  %a.elem.gep206 = getelementptr i64, ptr %a.wr.data205, i64 0
  store i64 %addtmp, ptr %a.elem.gep206, align 8
  %arena.cur207 = call ptr @dva_arena_current()
  %a.wr.succ208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 16)
  %tag.gep209 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ208, i32 0, i32 0
  store i64 1, ptr %tag.gep209, align 8
  %pay.gep210 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ208, i32 0, i32 1
  store ptr null, ptr %pay.gep210, align 8
  %tag.gep211 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ208, i32 0, i32 0
  %tag.id212 = load i64, ptr %tag.gep211, align 8
  %tag.eq.one213 = icmp eq i64 %tag.id212, 1
  %tag.eq.two214 = icmp eq i64 %tag.id212, 2
  %is.pos215 = or i1 %tag.eq.one213, %tag.eq.two214
  %pay.gep216 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ208, i32 0, i32 1
  %payload.ptr217 = load ptr, ptr %pay.gep216, align 8
  br i1 %is.pos215, label %choice.then218, label %choice.else219

choice.then218:                                   ; preds = %a.after194
  br label %choice.exit220

choice.else219:                                   ; preds = %a.after194
  store ptr %payload.ptr217, ptr %var._221, align 8
  store ptr %payload.ptr217, ptr %var._222, align 8
  store ptr %payload.ptr217, ptr %var._223, align 8
  %err.code.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr217, i32 0, i32 0
  %err.code225 = load i64, ptr %err.code.gep224, align 8
  %err.msg.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr217, i32 0, i32 1
  %err.msg.struct227 = load ptr, ptr %err.msg.gep226, align 8
  %err.file.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr217, i32 0, i32 2
  %err.file.struct229 = load ptr, ptr %err.file.gep228, align 8
  %err.line.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr217, i32 0, i32 3
  %err.line231 = load i64, ptr %err.line.gep230, align 8
  %err.col.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr217, i32 0, i32 4
  %err.col233 = load i64, ptr %err.col.gep232, align 8
  %err.msg.len234 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct227, i32 0, i32 0
  %err.msg.len235 = load i64, ptr %err.msg.len234, align 8
  %err.msg.len236 = and i64 %err.msg.len235, 281474976710655
  %str.tag237 = lshr i64 %err.msg.len235, 48
  %str.immortal238 = icmp eq i64 %str.tag237, 0
  br i1 %str.immortal238, label %str_ok240, label %str_gen_check239

choice.exit220:                                   ; preds = %err.abort267, %choice.then218
  %var.load268 = load ptr, ptr %var.state, align 8
  %var.load269 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load268, i64 %var.load269)
  %var.load270 = load ptr, ptr %var.ons, align 8
  %a.load271 = load ptr, ptr %var.ons, align 8
  %a.null272 = icmp eq ptr %a.load271, null
  br i1 %a.null272, label %a.create273, label %a.after274

str_gen_check239:                                 ; preds = %choice.else219
  %arena.cur242 = call ptr @dva_arena_current()
  %tag.valid243 = call i1 @dva_arena_validate_tag(ptr %arena.cur242, i64 %str.tag237)
  br i1 %tag.valid243, label %str_ok240, label %str_stale241

str_ok240:                                        ; preds = %str_stale241, %str_gen_check239, %choice.else219
  %err.msg.len32244 = trunc i64 %err.msg.len236 to i32
  %err.msg.data245 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct227, i32 0, i32 1
  %err.msg.data246 = load ptr, ptr %err.msg.data245, align 8
  %err.file.len247 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct229, i32 0, i32 0
  %err.file.len248 = load i64, ptr %err.file.len247, align 8
  %err.file.len249 = and i64 %err.file.len248, 281474976710655
  %str.tag250 = lshr i64 %err.file.len248, 48
  %str.immortal251 = icmp eq i64 %str.tag250, 0
  br i1 %str.immortal251, label %str_ok253, label %str_gen_check252

str_stale241:                                     ; preds = %str_gen_check239
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok240

str_gen_check252:                                 ; preds = %str_ok240
  %arena.cur255 = call ptr @dva_arena_current()
  %tag.valid256 = call i1 @dva_arena_validate_tag(ptr %arena.cur255, i64 %str.tag250)
  br i1 %tag.valid256, label %str_ok253, label %str_stale254

str_ok253:                                        ; preds = %str_stale254, %str_gen_check252, %str_ok240
  %err.file.len32257 = trunc i64 %err.file.len249 to i32
  %err.file.data258 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct229, i32 0, i32 1
  %err.file.data259 = load ptr, ptr %err.file.data258, align 8
  %err.thread.rec260 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread261 = icmp ne ptr %err.thread.rec260, null
  br i1 %err.is.thread261, label %err.thread262, label %err.normal263

str_stale254:                                     ; preds = %str_gen_check252
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok253

err.thread262:                                    ; preds = %str_ok253
  %err.haserr.gep264 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec260, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep264, align 8
  %err.err.gep265 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec260, i32 0, i32 7
  store ptr %payload.ptr217, ptr %err.err.gep265, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal263:                                    ; preds = %str_ok253
  %err.panic.printf266 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code225, i32 %err.msg.len32244, ptr %err.msg.data246, i32 %err.file.len32257, ptr %err.file.data259, i64 %err.line231, i64 %err.col233)
  call void @exit(i32 1)
  unreachable

err.abort267:                                     ; No predecessors!
  br label %choice.exit220

a.create273:                                      ; preds = %choice.exit220
  %arena.cur275 = call ptr @dva_arena_current()
  %a.create276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 24)
  %arena.cur277 = call ptr @dva_arena_current()
  %a.buf278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 128)
  %a.len.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create276, i32 0, i32 0
  store i64 0, ptr %a.len.gep279, align 8
  %a.data.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create276, i32 0, i32 1
  store ptr %a.buf278, ptr %a.data.gep280, align 8
  %a.cap.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create276, i32 0, i32 2
  store i64 16, ptr %a.cap.gep281, align 8
  store ptr %a.create276, ptr %var.ons, align 8
  br label %a.after274

a.after274:                                       ; preds = %a.create273, %choice.exit220
  %a.load2282 = load ptr, ptr %var.ons, align 8
  %var.load283 = load i64, ptr %var.u, align 8
  %a.wr.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2282, i32 0, i32 1
  %a.wr.data285 = load ptr, ptr %a.wr.data284, align 8
  %a.elem.gep286 = getelementptr i64, ptr %a.wr.data285, i64 %var.load283
  store i64 1, ptr %a.elem.gep286, align 8
  %arena.cur287 = call ptr @dva_arena_current()
  %a.wr.succ288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %tag.gep289 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ288, i32 0, i32 0
  store i64 1, ptr %tag.gep289, align 8
  %pay.gep290 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ288, i32 0, i32 1
  store ptr null, ptr %pay.gep290, align 8
  %tag.gep291 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ288, i32 0, i32 0
  %tag.id292 = load i64, ptr %tag.gep291, align 8
  %tag.eq.one293 = icmp eq i64 %tag.id292, 1
  %tag.eq.two294 = icmp eq i64 %tag.id292, 2
  %is.pos295 = or i1 %tag.eq.one293, %tag.eq.two294
  %pay.gep296 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ288, i32 0, i32 1
  %payload.ptr297 = load ptr, ptr %pay.gep296, align 8
  br i1 %is.pos295, label %choice.then298, label %choice.else299

choice.then298:                                   ; preds = %a.after274
  br label %choice.exit300

choice.else299:                                   ; preds = %a.after274
  store ptr %payload.ptr297, ptr %var._301, align 8
  store ptr %payload.ptr297, ptr %var._302, align 8
  store ptr %payload.ptr297, ptr %var._303, align 8
  %err.code.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr297, i32 0, i32 0
  %err.code305 = load i64, ptr %err.code.gep304, align 8
  %err.msg.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr297, i32 0, i32 1
  %err.msg.struct307 = load ptr, ptr %err.msg.gep306, align 8
  %err.file.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr297, i32 0, i32 2
  %err.file.struct309 = load ptr, ptr %err.file.gep308, align 8
  %err.line.gep310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr297, i32 0, i32 3
  %err.line311 = load i64, ptr %err.line.gep310, align 8
  %err.col.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr297, i32 0, i32 4
  %err.col313 = load i64, ptr %err.col.gep312, align 8
  %err.msg.len314 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct307, i32 0, i32 0
  %err.msg.len315 = load i64, ptr %err.msg.len314, align 8
  %err.msg.len316 = and i64 %err.msg.len315, 281474976710655
  %str.tag317 = lshr i64 %err.msg.len315, 48
  %str.immortal318 = icmp eq i64 %str.tag317, 0
  br i1 %str.immortal318, label %str_ok320, label %str_gen_check319

choice.exit300:                                   ; preds = %err.abort347, %choice.then298
  %var.load348 = load ptr, ptr %var.graph, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr }, ptr %var.load348, i32 0, i32 0
  %fld.load350 = load ptr, ptr %fld.gep349, align 8
  %var.load351 = load i64, ptr %var.u, align 8
  %a.rd.nonnull352 = icmp ne ptr %fld.load350, null
  br i1 %a.rd.nonnull352, label %a.rd.check353, label %a.rd.err.null355

str_gen_check319:                                 ; preds = %choice.else299
  %arena.cur322 = call ptr @dva_arena_current()
  %tag.valid323 = call i1 @dva_arena_validate_tag(ptr %arena.cur322, i64 %str.tag317)
  br i1 %tag.valid323, label %str_ok320, label %str_stale321

str_ok320:                                        ; preds = %str_stale321, %str_gen_check319, %choice.else299
  %err.msg.len32324 = trunc i64 %err.msg.len316 to i32
  %err.msg.data325 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct307, i32 0, i32 1
  %err.msg.data326 = load ptr, ptr %err.msg.data325, align 8
  %err.file.len327 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct309, i32 0, i32 0
  %err.file.len328 = load i64, ptr %err.file.len327, align 8
  %err.file.len329 = and i64 %err.file.len328, 281474976710655
  %str.tag330 = lshr i64 %err.file.len328, 48
  %str.immortal331 = icmp eq i64 %str.tag330, 0
  br i1 %str.immortal331, label %str_ok333, label %str_gen_check332

str_stale321:                                     ; preds = %str_gen_check319
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok320

str_gen_check332:                                 ; preds = %str_ok320
  %arena.cur335 = call ptr @dva_arena_current()
  %tag.valid336 = call i1 @dva_arena_validate_tag(ptr %arena.cur335, i64 %str.tag330)
  br i1 %tag.valid336, label %str_ok333, label %str_stale334

str_ok333:                                        ; preds = %str_stale334, %str_gen_check332, %str_ok320
  %err.file.len32337 = trunc i64 %err.file.len329 to i32
  %err.file.data338 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct309, i32 0, i32 1
  %err.file.data339 = load ptr, ptr %err.file.data338, align 8
  %err.thread.rec340 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread341 = icmp ne ptr %err.thread.rec340, null
  br i1 %err.is.thread341, label %err.thread342, label %err.normal343

str_stale334:                                     ; preds = %str_gen_check332
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok333

err.thread342:                                    ; preds = %str_ok333
  %err.haserr.gep344 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec340, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep344, align 8
  %err.err.gep345 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec340, i32 0, i32 7
  store ptr %payload.ptr297, ptr %err.err.gep345, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal343:                                    ; preds = %str_ok333
  %err.panic.printf346 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code305, i32 %err.msg.len32324, ptr %err.msg.data326, i32 %err.file.len32337, ptr %err.file.data339, i64 %err.line311, i64 %err.col313)
  call void @exit(i32 1)
  unreachable

err.abort347:                                     ; No predecessors!
  br label %choice.exit300

a.rd.check353:                                    ; preds = %choice.exit300
  %a.rd.len358 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 0
  %a.rd.len359 = load i64, ptr %a.rd.len358, align 8
  %a.rd.ge0 = icmp sge i64 %var.load351, 0
  %a.rd.lt360 = icmp slt i64 %var.load351, %a.rd.len359
  %a.rd.bounds361 = and i1 %a.rd.ge0, %a.rd.lt360
  br i1 %a.rd.bounds361, label %a.rd.ok354, label %a.rd.err.oob356

a.rd.ok354:                                       ; preds = %a.rd.check353
  %a.rd.data362 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 1
  %a.rd.data363 = load ptr, ptr %a.rd.data362, align 8
  %a.rd.elem.gep364 = getelementptr i64, ptr %a.rd.data363, i64 %var.load351
  %a.rd.elem365 = load i64, ptr %a.rd.elem.gep364, align 8
  br label %a.rd.done357

a.rd.err.null355:                                 ; preds = %choice.exit300
  %arena.cur366 = call ptr @dva_arena_current()
  %err.alloc367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 56)
  %err.code.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 0
  store i64 4011, ptr %err.code.gep368, align 8
  %err.msg.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep369, align 8
  %err.file.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep370, align 8
  %err.line.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 3
  store i64 0, ptr %err.line.gep371, align 8
  %err.col.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 4
  store i64 0, ptr %err.col.gep372, align 8
  %err.ctx.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc367, i32 0, i32 5
  %err.ctx0.gep374 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep373, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep374, align 8
  %err.ctx1.gep375 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep373, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep375, align 8
  %err.p2i376 = ptrtoint ptr %err.alloc367 to i64
  br label %a.rd.done357

a.rd.err.oob356:                                  ; preds = %a.rd.check353
  %arena.cur377 = call ptr @dva_arena_current()
  %err.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 56)
  %err.code.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 0
  store i64 4011, ptr %err.code.gep379, align 8
  %err.msg.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep380, align 8
  %err.file.gep381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep381, align 8
  %err.line.gep382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 3
  store i64 0, ptr %err.line.gep382, align 8
  %err.col.gep383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 4
  store i64 0, ptr %err.col.gep383, align 8
  %err.ctx.gep384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 5
  %err.ctx0.gep385 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep384, i32 0, i32 0
  store i64 %var.load351, ptr %err.ctx0.gep385, align 8
  %err.ctx1.gep386 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep384, i32 0, i32 1
  store i64 %a.rd.len359, ptr %err.ctx1.gep386, align 8
  %err.p2i387 = ptrtoint ptr %err.alloc378 to i64
  br label %a.rd.done357

a.rd.done357:                                     ; preds = %a.rd.err.oob356, %a.rd.err.null355, %a.rd.ok354
  %a.rd.tag388 = phi i1 [ true, %a.rd.ok354 ], [ false, %a.rd.err.null355 ], [ false, %a.rd.err.oob356 ]
  %a.rd.pay389 = phi i64 [ %a.rd.elem365, %a.rd.ok354 ], [ %err.p2i376, %a.rd.err.null355 ], [ %err.p2i387, %a.rd.err.oob356 ]
  %ram.tag390 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag388, 0
  %ram.pay391 = insertvalue { i1, i64 } %ram.tag390, i64 %a.rd.pay389, 1
  %unwrap.is_pos392 = extractvalue { i1, i64 } %ram.pay391, 0
  br i1 %unwrap.is_pos392, label %unwrap.pos.38, label %unwrap.abort.38

unwrap.pos.38:                                    ; preds = %a.rd.done357
  %unwrap.pay.pos438 = extractvalue { i1, i64 } %ram.pay391, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos438 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load439 = load ptr, ptr %var.u_node, align 8
  %fld.gep440 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load439, i32 0, i32 1
  %fld.load441 = load ptr, ptr %fld.gep440, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load441, i32 0, i32 0
  %arr.cycle.len442 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load441, i32 0, i32 1
  %arr.cycle.data443 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

unwrap.abort.38:                                  ; preds = %a.rd.done357
  %unwrap.pay.abort393 = extractvalue { i1, i64 } %ram.pay391, 1
  %err.ptr394 = inttoptr i64 %unwrap.pay.abort393 to ptr
  %err.code.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr394, i32 0, i32 0
  %err.code396 = load i64, ptr %err.code.gep395, align 8
  %err.msg.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr394, i32 0, i32 1
  %err.msg.struct398 = load ptr, ptr %err.msg.gep397, align 8
  %err.file.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr394, i32 0, i32 2
  %err.file.struct400 = load ptr, ptr %err.file.gep399, align 8
  %err.line.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr394, i32 0, i32 3
  %err.line402 = load i64, ptr %err.line.gep401, align 8
  %err.col.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr394, i32 0, i32 4
  %err.col404 = load i64, ptr %err.col.gep403, align 8
  %err.msg.len405 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct398, i32 0, i32 0
  %err.msg.len406 = load i64, ptr %err.msg.len405, align 8
  %err.msg.len407 = and i64 %err.msg.len406, 281474976710655
  %str.tag408 = lshr i64 %err.msg.len406, 48
  %str.immortal409 = icmp eq i64 %str.tag408, 0
  br i1 %str.immortal409, label %str_ok411, label %str_gen_check410

str_gen_check410:                                 ; preds = %unwrap.abort.38
  %arena.cur413 = call ptr @dva_arena_current()
  %tag.valid414 = call i1 @dva_arena_validate_tag(ptr %arena.cur413, i64 %str.tag408)
  br i1 %tag.valid414, label %str_ok411, label %str_stale412

str_ok411:                                        ; preds = %str_stale412, %str_gen_check410, %unwrap.abort.38
  %err.msg.len32415 = trunc i64 %err.msg.len407 to i32
  %err.msg.data416 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct398, i32 0, i32 1
  %err.msg.data417 = load ptr, ptr %err.msg.data416, align 8
  %err.file.len418 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct400, i32 0, i32 0
  %err.file.len419 = load i64, ptr %err.file.len418, align 8
  %err.file.len420 = and i64 %err.file.len419, 281474976710655
  %str.tag421 = lshr i64 %err.file.len419, 48
  %str.immortal422 = icmp eq i64 %str.tag421, 0
  br i1 %str.immortal422, label %str_ok424, label %str_gen_check423

str_stale412:                                     ; preds = %str_gen_check410
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok411

str_gen_check423:                                 ; preds = %str_ok411
  %arena.cur426 = call ptr @dva_arena_current()
  %tag.valid427 = call i1 @dva_arena_validate_tag(ptr %arena.cur426, i64 %str.tag421)
  br i1 %tag.valid427, label %str_ok424, label %str_stale425

str_ok424:                                        ; preds = %str_stale425, %str_gen_check423, %str_ok411
  %err.file.len32428 = trunc i64 %err.file.len420 to i32
  %err.file.data429 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct400, i32 0, i32 1
  %err.file.data430 = load ptr, ptr %err.file.data429, align 8
  %err.thread.rec431 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread432 = icmp ne ptr %err.thread.rec431, null
  br i1 %err.is.thread432, label %err.thread433, label %err.normal434

str_stale425:                                     ; preds = %str_gen_check423
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok424

err.thread433:                                    ; preds = %str_ok424
  %err.haserr.gep435 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec431, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep435, align 8
  %err.err.gep436 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec431, i32 0, i32 7
  store ptr %err.ptr394, ptr %err.err.gep436, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal434:                                    ; preds = %str_ok424
  %err.panic.printf437 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code396, i32 %err.msg.len32415, ptr %err.msg.data417, i32 %err.file.len32428, ptr %err.file.data430, i64 %err.line402, i64 %err.col404)
  call void @exit(i32 1)
  unreachable

loop.header.39:                                   ; preds = %loop.latch.39, %unwrap.pos.38
  %counter.load = load i64, ptr %loop.idx.39, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len442
  br i1 %loop.cond, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data443, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %arr.elem.ptr, ptr %var._444, align 8
  store ptr %arr.elem.ptr, ptr %var.d_name, align 8
  %var.load445 = load ptr, ptr %var.graph, align 8
  %var.load446 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load445, ptr %var.load446)
  store i64 %call.res, ptr %var.v, align 8
  %var.load447 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load447, 0
  br i1 %cmptmp, label %choice.then448, label %choice.exit449

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %choice.exit449
  %step.val = load i64, ptr %loop.step.39, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  %var.load1026 = load ptr, ptr %var.lows, align 8
  %a.load1027 = load ptr, ptr %var.lows, align 8
  %a.null1028 = icmp eq ptr %a.load1027, null
  br i1 %a.null1028, label %a.create1029, label %a.after1030

choice.then448:                                   ; preds = %loop.body.39
  %var.load450 = load ptr, ptr %var.idxs, align 8
  %a.load451 = load ptr, ptr %var.idxs, align 8
  %a.null452 = icmp eq ptr %a.load451, null
  br i1 %a.null452, label %a.create453, label %a.after454

choice.exit449:                                   ; preds = %choice.exit518, %loop.body.39
  br label %loop.latch.39

a.create453:                                      ; preds = %choice.then448
  %arena.cur455 = call ptr @dva_arena_current()
  %a.create456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 24)
  %arena.cur457 = call ptr @dva_arena_current()
  %a.buf458 = call ptr @dva_arena_alloc(ptr %arena.cur457, i64 128)
  %a.len.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 0
  store i64 0, ptr %a.len.gep459, align 8
  %a.data.gep460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 1
  store ptr %a.buf458, ptr %a.data.gep460, align 8
  %a.cap.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create456, i32 0, i32 2
  store i64 16, ptr %a.cap.gep461, align 8
  store ptr %a.create456, ptr %var.idxs, align 8
  br label %a.after454

a.after454:                                       ; preds = %a.create453, %choice.then448
  %a.load2462 = load ptr, ptr %var.idxs, align 8
  %var.load463 = load i64, ptr %var.v, align 8
  %a.rd.nonnull464 = icmp ne ptr %a.load2462, null
  br i1 %a.rd.nonnull464, label %a.rd.check465, label %a.rd.err.null467

a.rd.check465:                                    ; preds = %a.after454
  %a.rd.len470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2462, i32 0, i32 0
  %a.rd.len471 = load i64, ptr %a.rd.len470, align 8
  %a.rd.ge0472 = icmp sge i64 %var.load463, 0
  %a.rd.lt473 = icmp slt i64 %var.load463, %a.rd.len471
  %a.rd.bounds474 = and i1 %a.rd.ge0472, %a.rd.lt473
  br i1 %a.rd.bounds474, label %a.rd.ok466, label %a.rd.err.oob468

a.rd.ok466:                                       ; preds = %a.rd.check465
  %a.rd.data475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2462, i32 0, i32 1
  %a.rd.data476 = load ptr, ptr %a.rd.data475, align 8
  %a.rd.elem.gep477 = getelementptr i64, ptr %a.rd.data476, i64 %var.load463
  %a.rd.elem478 = load i64, ptr %a.rd.elem.gep477, align 8
  br label %a.rd.done469

a.rd.err.null467:                                 ; preds = %a.after454
  %arena.cur479 = call ptr @dva_arena_current()
  %err.alloc480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 56)
  %err.code.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 0
  store i64 4011, ptr %err.code.gep481, align 8
  %err.msg.gep482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep482, align 8
  %err.file.gep483 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep483, align 8
  %err.line.gep484 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 3
  store i64 306, ptr %err.line.gep484, align 8
  %err.col.gep485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 4
  store i64 29, ptr %err.col.gep485, align 8
  %err.ctx.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc480, i32 0, i32 5
  %err.ctx0.gep487 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep486, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep487, align 8
  %err.ctx1.gep488 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep486, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep488, align 8
  %err.p2i489 = ptrtoint ptr %err.alloc480 to i64
  br label %a.rd.done469

a.rd.err.oob468:                                  ; preds = %a.rd.check465
  %arena.cur490 = call ptr @dva_arena_current()
  %err.alloc491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 56)
  %err.code.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 0
  store i64 4011, ptr %err.code.gep492, align 8
  %err.msg.gep493 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep493, align 8
  %err.file.gep494 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep494, align 8
  %err.line.gep495 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 3
  store i64 306, ptr %err.line.gep495, align 8
  %err.col.gep496 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 4
  store i64 29, ptr %err.col.gep496, align 8
  %err.ctx.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc491, i32 0, i32 5
  %err.ctx0.gep498 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep497, i32 0, i32 0
  store i64 %var.load463, ptr %err.ctx0.gep498, align 8
  %err.ctx1.gep499 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep497, i32 0, i32 1
  store i64 %a.rd.len471, ptr %err.ctx1.gep499, align 8
  %err.p2i500 = ptrtoint ptr %err.alloc491 to i64
  br label %a.rd.done469

a.rd.done469:                                     ; preds = %a.rd.err.oob468, %a.rd.err.null467, %a.rd.ok466
  %a.rd.tag501 = phi i1 [ true, %a.rd.ok466 ], [ false, %a.rd.err.null467 ], [ false, %a.rd.err.oob468 ]
  %a.rd.pay502 = phi i64 [ %a.rd.elem478, %a.rd.ok466 ], [ %err.p2i489, %a.rd.err.null467 ], [ %err.p2i500, %a.rd.err.oob468 ]
  %ram.tag503 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag501, 0
  %ram.pay504 = insertvalue { i1, i64 } %ram.tag503, i64 %a.rd.pay502, 1
  %ram.tag505 = extractvalue { i1, i64 } %ram.pay504, 0
  br i1 %ram.tag505, label %choice.then506, label %choice.else507

choice.then506:                                   ; preds = %a.rd.done469
  %ram.pay509 = extractvalue { i1, i64 } %ram.pay504, 1
  store i64 %ram.pay509, ptr %var._510, align 8
  br label %choice.exit508

choice.else507:                                   ; preds = %a.rd.done469
  %ram.pay511 = extractvalue { i1, i64 } %ram.pay504, 1
  %pay.ptr512 = inttoptr i64 %ram.pay511 to ptr
  store ptr %pay.ptr512, ptr %var._513, align 8
  br label %choice.exit508

choice.exit508:                                   ; preds = %choice.else507, %choice.then506
  %choice.res = phi i64 [ %ram.pay509, %choice.then506 ], [ -1, %choice.else507 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load514 = load i64, ptr %var.v_idx, align 8
  %cmptmp515 = icmp slt i64 %var.load514, 0
  br i1 %cmptmp515, label %choice.then516, label %choice.else517

choice.then516:                                   ; preds = %choice.exit508
  %var.load519 = load ptr, ptr %var.graph, align 8
  %var.load520 = load ptr, ptr %var.state, align 8
  %var.load521 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load519, ptr %var.load520, i64 %var.load521)
  %var.load522 = load ptr, ptr %var.lows, align 8
  %a.load523 = load ptr, ptr %var.lows, align 8
  %a.null524 = icmp eq ptr %a.load523, null
  br i1 %a.null524, label %a.create525, label %a.after526

choice.else517:                                   ; preds = %choice.exit508
  %var.load740 = load ptr, ptr %var.ons, align 8
  %a.load741 = load ptr, ptr %var.ons, align 8
  %a.null742 = icmp eq ptr %a.load741, null
  br i1 %a.null742, label %a.create743, label %a.after744

choice.exit518:                                   ; preds = %choice.exit807, %choice.exit692
  br label %choice.exit449

a.create525:                                      ; preds = %choice.then516
  %arena.cur527 = call ptr @dva_arena_current()
  %a.create528 = call ptr @dva_arena_alloc(ptr %arena.cur527, i64 24)
  %arena.cur529 = call ptr @dva_arena_current()
  %a.buf530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 128)
  %a.len.gep531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 0
  store i64 0, ptr %a.len.gep531, align 8
  %a.data.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 1
  store ptr %a.buf530, ptr %a.data.gep532, align 8
  %a.cap.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create528, i32 0, i32 2
  store i64 16, ptr %a.cap.gep533, align 8
  store ptr %a.create528, ptr %var.lows, align 8
  br label %a.after526

a.after526:                                       ; preds = %a.create525, %choice.then516
  %a.load2534 = load ptr, ptr %var.lows, align 8
  %var.load535 = load i64, ptr %var.u, align 8
  %a.rd.nonnull536 = icmp ne ptr %a.load2534, null
  br i1 %a.rd.nonnull536, label %a.rd.check537, label %a.rd.err.null539

a.rd.check537:                                    ; preds = %a.after526
  %a.rd.len542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 0
  %a.rd.len543 = load i64, ptr %a.rd.len542, align 8
  %a.rd.ge0544 = icmp sge i64 %var.load535, 0
  %a.rd.lt545 = icmp slt i64 %var.load535, %a.rd.len543
  %a.rd.bounds546 = and i1 %a.rd.ge0544, %a.rd.lt545
  br i1 %a.rd.bounds546, label %a.rd.ok538, label %a.rd.err.oob540

a.rd.ok538:                                       ; preds = %a.rd.check537
  %a.rd.data547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2534, i32 0, i32 1
  %a.rd.data548 = load ptr, ptr %a.rd.data547, align 8
  %a.rd.elem.gep549 = getelementptr i64, ptr %a.rd.data548, i64 %var.load535
  %a.rd.elem550 = load i64, ptr %a.rd.elem.gep549, align 8
  br label %a.rd.done541

a.rd.err.null539:                                 ; preds = %a.after526
  %arena.cur551 = call ptr @dva_arena_current()
  %err.alloc552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 56)
  %err.code.gep553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 0
  store i64 4011, ptr %err.code.gep553, align 8
  %err.msg.gep554 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep554, align 8
  %err.file.gep555 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep555, align 8
  %err.line.gep556 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 3
  store i64 310, ptr %err.line.gep556, align 8
  %err.col.gep557 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 4
  store i64 33, ptr %err.col.gep557, align 8
  %err.ctx.gep558 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc552, i32 0, i32 5
  %err.ctx0.gep559 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep558, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep559, align 8
  %err.ctx1.gep560 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep558, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep560, align 8
  %err.p2i561 = ptrtoint ptr %err.alloc552 to i64
  br label %a.rd.done541

a.rd.err.oob540:                                  ; preds = %a.rd.check537
  %arena.cur562 = call ptr @dva_arena_current()
  %err.alloc563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 56)
  %err.code.gep564 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 0
  store i64 4011, ptr %err.code.gep564, align 8
  %err.msg.gep565 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep565, align 8
  %err.file.gep566 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep566, align 8
  %err.line.gep567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 3
  store i64 310, ptr %err.line.gep567, align 8
  %err.col.gep568 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 4
  store i64 33, ptr %err.col.gep568, align 8
  %err.ctx.gep569 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 5
  %err.ctx0.gep570 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep569, i32 0, i32 0
  store i64 %var.load535, ptr %err.ctx0.gep570, align 8
  %err.ctx1.gep571 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep569, i32 0, i32 1
  store i64 %a.rd.len543, ptr %err.ctx1.gep571, align 8
  %err.p2i572 = ptrtoint ptr %err.alloc563 to i64
  br label %a.rd.done541

a.rd.done541:                                     ; preds = %a.rd.err.oob540, %a.rd.err.null539, %a.rd.ok538
  %a.rd.tag573 = phi i1 [ true, %a.rd.ok538 ], [ false, %a.rd.err.null539 ], [ false, %a.rd.err.oob540 ]
  %a.rd.pay574 = phi i64 [ %a.rd.elem550, %a.rd.ok538 ], [ %err.p2i561, %a.rd.err.null539 ], [ %err.p2i572, %a.rd.err.oob540 ]
  %ram.tag575 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag573, 0
  %ram.pay576 = insertvalue { i1, i64 } %ram.tag575, i64 %a.rd.pay574, 1
  %ram.tag577 = extractvalue { i1, i64 } %ram.pay576, 0
  br i1 %ram.tag577, label %choice.then578, label %choice.else579

choice.then578:                                   ; preds = %a.rd.done541
  %ram.pay581 = extractvalue { i1, i64 } %ram.pay576, 1
  store i64 %ram.pay581, ptr %var._582, align 8
  br label %choice.exit580

choice.else579:                                   ; preds = %a.rd.done541
  %ram.pay583 = extractvalue { i1, i64 } %ram.pay576, 1
  %pay.ptr584 = inttoptr i64 %ram.pay583 to ptr
  store ptr %pay.ptr584, ptr %var._585, align 8
  br label %choice.exit580

choice.exit580:                                   ; preds = %choice.else579, %choice.then578
  %choice.res586 = phi i64 [ %ram.pay581, %choice.then578 ], [ 0, %choice.else579 ]
  store i64 %choice.res586, ptr %var.lu1, align 8
  %var.load587 = load ptr, ptr %var.lows, align 8
  %a.load588 = load ptr, ptr %var.lows, align 8
  %a.null589 = icmp eq ptr %a.load588, null
  br i1 %a.null589, label %a.create590, label %a.after591

a.create590:                                      ; preds = %choice.exit580
  %arena.cur592 = call ptr @dva_arena_current()
  %a.create593 = call ptr @dva_arena_alloc(ptr %arena.cur592, i64 24)
  %arena.cur594 = call ptr @dva_arena_current()
  %a.buf595 = call ptr @dva_arena_alloc(ptr %arena.cur594, i64 128)
  %a.len.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 0
  store i64 0, ptr %a.len.gep596, align 8
  %a.data.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 1
  store ptr %a.buf595, ptr %a.data.gep597, align 8
  %a.cap.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 2
  store i64 16, ptr %a.cap.gep598, align 8
  store ptr %a.create593, ptr %var.lows, align 8
  br label %a.after591

a.after591:                                       ; preds = %a.create590, %choice.exit580
  %a.load2599 = load ptr, ptr %var.lows, align 8
  %var.load600 = load i64, ptr %var.v, align 8
  %a.rd.nonnull601 = icmp ne ptr %a.load2599, null
  br i1 %a.rd.nonnull601, label %a.rd.check602, label %a.rd.err.null604

a.rd.check602:                                    ; preds = %a.after591
  %a.rd.len607 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2599, i32 0, i32 0
  %a.rd.len608 = load i64, ptr %a.rd.len607, align 8
  %a.rd.ge0609 = icmp sge i64 %var.load600, 0
  %a.rd.lt610 = icmp slt i64 %var.load600, %a.rd.len608
  %a.rd.bounds611 = and i1 %a.rd.ge0609, %a.rd.lt610
  br i1 %a.rd.bounds611, label %a.rd.ok603, label %a.rd.err.oob605

a.rd.ok603:                                       ; preds = %a.rd.check602
  %a.rd.data612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2599, i32 0, i32 1
  %a.rd.data613 = load ptr, ptr %a.rd.data612, align 8
  %a.rd.elem.gep614 = getelementptr i64, ptr %a.rd.data613, i64 %var.load600
  %a.rd.elem615 = load i64, ptr %a.rd.elem.gep614, align 8
  br label %a.rd.done606

a.rd.err.null604:                                 ; preds = %a.after591
  %arena.cur616 = call ptr @dva_arena_current()
  %err.alloc617 = call ptr @dva_arena_alloc(ptr %arena.cur616, i64 56)
  %err.code.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 0
  store i64 4011, ptr %err.code.gep618, align 8
  %err.msg.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep619, align 8
  %err.file.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep620, align 8
  %err.line.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 3
  store i64 311, ptr %err.line.gep621, align 8
  %err.col.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 4
  store i64 35, ptr %err.col.gep622, align 8
  %err.ctx.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 5
  %err.ctx0.gep624 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep623, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep624, align 8
  %err.ctx1.gep625 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep623, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep625, align 8
  %err.p2i626 = ptrtoint ptr %err.alloc617 to i64
  br label %a.rd.done606

a.rd.err.oob605:                                  ; preds = %a.rd.check602
  %arena.cur627 = call ptr @dva_arena_current()
  %err.alloc628 = call ptr @dva_arena_alloc(ptr %arena.cur627, i64 56)
  %err.code.gep629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 0
  store i64 4011, ptr %err.code.gep629, align 8
  %err.msg.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep630, align 8
  %err.file.gep631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep631, align 8
  %err.line.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 3
  store i64 311, ptr %err.line.gep632, align 8
  %err.col.gep633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 4
  store i64 35, ptr %err.col.gep633, align 8
  %err.ctx.gep634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 5
  %err.ctx0.gep635 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep634, i32 0, i32 0
  store i64 %var.load600, ptr %err.ctx0.gep635, align 8
  %err.ctx1.gep636 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep634, i32 0, i32 1
  store i64 %a.rd.len608, ptr %err.ctx1.gep636, align 8
  %err.p2i637 = ptrtoint ptr %err.alloc628 to i64
  br label %a.rd.done606

a.rd.done606:                                     ; preds = %a.rd.err.oob605, %a.rd.err.null604, %a.rd.ok603
  %a.rd.tag638 = phi i1 [ true, %a.rd.ok603 ], [ false, %a.rd.err.null604 ], [ false, %a.rd.err.oob605 ]
  %a.rd.pay639 = phi i64 [ %a.rd.elem615, %a.rd.ok603 ], [ %err.p2i626, %a.rd.err.null604 ], [ %err.p2i637, %a.rd.err.oob605 ]
  %ram.tag640 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag638, 0
  %ram.pay641 = insertvalue { i1, i64 } %ram.tag640, i64 %a.rd.pay639, 1
  %ram.tag642 = extractvalue { i1, i64 } %ram.pay641, 0
  br i1 %ram.tag642, label %choice.then643, label %choice.else644

choice.then643:                                   ; preds = %a.rd.done606
  %ram.pay646 = extractvalue { i1, i64 } %ram.pay641, 1
  store i64 %ram.pay646, ptr %var._647, align 8
  br label %choice.exit645

choice.else644:                                   ; preds = %a.rd.done606
  %ram.pay648 = extractvalue { i1, i64 } %ram.pay641, 1
  %pay.ptr649 = inttoptr i64 %ram.pay648 to ptr
  store ptr %pay.ptr649, ptr %var._650, align 8
  br label %choice.exit645

choice.exit645:                                   ; preds = %choice.else644, %choice.then643
  %choice.res651 = phi i64 [ %ram.pay646, %choice.then643 ], [ 0, %choice.else644 ]
  store i64 %choice.res651, ptr %var.low_v, align 8
  %var.load652 = load i64, ptr %var.low_v, align 8
  %var.load653 = load i64, ptr %var.lu1, align 8
  %cmptmp654 = icmp slt i64 %var.load652, %var.load653
  br i1 %cmptmp654, label %choice.then655, label %choice.else656

choice.then655:                                   ; preds = %choice.exit645
  %var.load658 = load i64, ptr %var.low_v, align 8
  br label %choice.exit657

choice.else656:                                   ; preds = %choice.exit645
  %var.load659 = load i64, ptr %var.lu1, align 8
  br label %choice.exit657

choice.exit657:                                   ; preds = %choice.else656, %choice.then655
  %choice.res660 = phi i64 [ %var.load658, %choice.then655 ], [ %var.load659, %choice.else656 ]
  store i64 %choice.res660, ptr %var.min_v, align 8
  %var.load661 = load ptr, ptr %var.lows, align 8
  %a.load662 = load ptr, ptr %var.lows, align 8
  %a.null663 = icmp eq ptr %a.load662, null
  br i1 %a.null663, label %a.create664, label %a.after665

a.create664:                                      ; preds = %choice.exit657
  %arena.cur666 = call ptr @dva_arena_current()
  %a.create667 = call ptr @dva_arena_alloc(ptr %arena.cur666, i64 24)
  %arena.cur668 = call ptr @dva_arena_current()
  %a.buf669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 128)
  %a.len.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 0
  store i64 0, ptr %a.len.gep670, align 8
  %a.data.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 1
  store ptr %a.buf669, ptr %a.data.gep671, align 8
  %a.cap.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create667, i32 0, i32 2
  store i64 16, ptr %a.cap.gep672, align 8
  store ptr %a.create667, ptr %var.lows, align 8
  br label %a.after665

a.after665:                                       ; preds = %a.create664, %choice.exit657
  %a.load2673 = load ptr, ptr %var.lows, align 8
  %var.load674 = load i64, ptr %var.u, align 8
  %var.load675 = load i64, ptr %var.min_v, align 8
  %a.wr.data676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2673, i32 0, i32 1
  %a.wr.data677 = load ptr, ptr %a.wr.data676, align 8
  %a.elem.gep678 = getelementptr i64, ptr %a.wr.data677, i64 %var.load674
  store i64 %var.load675, ptr %a.elem.gep678, align 8
  %arena.cur679 = call ptr @dva_arena_current()
  %a.wr.succ680 = call ptr @dva_arena_alloc(ptr %arena.cur679, i64 16)
  %tag.gep681 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ680, i32 0, i32 0
  store i64 1, ptr %tag.gep681, align 8
  %pay.gep682 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ680, i32 0, i32 1
  store ptr null, ptr %pay.gep682, align 8
  %tag.gep683 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ680, i32 0, i32 0
  %tag.id684 = load i64, ptr %tag.gep683, align 8
  %tag.eq.one685 = icmp eq i64 %tag.id684, 1
  %tag.eq.two686 = icmp eq i64 %tag.id684, 2
  %is.pos687 = or i1 %tag.eq.one685, %tag.eq.two686
  %pay.gep688 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ680, i32 0, i32 1
  %payload.ptr689 = load ptr, ptr %pay.gep688, align 8
  br i1 %is.pos687, label %choice.then690, label %choice.else691

choice.then690:                                   ; preds = %a.after665
  br label %choice.exit692

choice.else691:                                   ; preds = %a.after665
  store ptr %payload.ptr689, ptr %var._693, align 8
  store ptr %payload.ptr689, ptr %var._694, align 8
  store ptr %payload.ptr689, ptr %var._695, align 8
  %err.code.gep696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr689, i32 0, i32 0
  %err.code697 = load i64, ptr %err.code.gep696, align 8
  %err.msg.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr689, i32 0, i32 1
  %err.msg.struct699 = load ptr, ptr %err.msg.gep698, align 8
  %err.file.gep700 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr689, i32 0, i32 2
  %err.file.struct701 = load ptr, ptr %err.file.gep700, align 8
  %err.line.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr689, i32 0, i32 3
  %err.line703 = load i64, ptr %err.line.gep702, align 8
  %err.col.gep704 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr689, i32 0, i32 4
  %err.col705 = load i64, ptr %err.col.gep704, align 8
  %err.msg.len706 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct699, i32 0, i32 0
  %err.msg.len707 = load i64, ptr %err.msg.len706, align 8
  %err.msg.len708 = and i64 %err.msg.len707, 281474976710655
  %str.tag709 = lshr i64 %err.msg.len707, 48
  %str.immortal710 = icmp eq i64 %str.tag709, 0
  br i1 %str.immortal710, label %str_ok712, label %str_gen_check711

choice.exit692:                                   ; preds = %err.abort739, %choice.then690
  br label %choice.exit518

str_gen_check711:                                 ; preds = %choice.else691
  %arena.cur714 = call ptr @dva_arena_current()
  %tag.valid715 = call i1 @dva_arena_validate_tag(ptr %arena.cur714, i64 %str.tag709)
  br i1 %tag.valid715, label %str_ok712, label %str_stale713

str_ok712:                                        ; preds = %str_stale713, %str_gen_check711, %choice.else691
  %err.msg.len32716 = trunc i64 %err.msg.len708 to i32
  %err.msg.data717 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct699, i32 0, i32 1
  %err.msg.data718 = load ptr, ptr %err.msg.data717, align 8
  %err.file.len719 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct701, i32 0, i32 0
  %err.file.len720 = load i64, ptr %err.file.len719, align 8
  %err.file.len721 = and i64 %err.file.len720, 281474976710655
  %str.tag722 = lshr i64 %err.file.len720, 48
  %str.immortal723 = icmp eq i64 %str.tag722, 0
  br i1 %str.immortal723, label %str_ok725, label %str_gen_check724

str_stale713:                                     ; preds = %str_gen_check711
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok712

str_gen_check724:                                 ; preds = %str_ok712
  %arena.cur727 = call ptr @dva_arena_current()
  %tag.valid728 = call i1 @dva_arena_validate_tag(ptr %arena.cur727, i64 %str.tag722)
  br i1 %tag.valid728, label %str_ok725, label %str_stale726

str_ok725:                                        ; preds = %str_stale726, %str_gen_check724, %str_ok712
  %err.file.len32729 = trunc i64 %err.file.len721 to i32
  %err.file.data730 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct701, i32 0, i32 1
  %err.file.data731 = load ptr, ptr %err.file.data730, align 8
  %err.thread.rec732 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread733 = icmp ne ptr %err.thread.rec732, null
  br i1 %err.is.thread733, label %err.thread734, label %err.normal735

str_stale726:                                     ; preds = %str_gen_check724
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok725

err.thread734:                                    ; preds = %str_ok725
  %err.haserr.gep736 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep736, align 8
  %err.err.gep737 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec732, i32 0, i32 7
  store ptr %payload.ptr689, ptr %err.err.gep737, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal735:                                    ; preds = %str_ok725
  %err.panic.printf738 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code697, i32 %err.msg.len32716, ptr %err.msg.data718, i32 %err.file.len32729, ptr %err.file.data731, i64 %err.line703, i64 %err.col705)
  call void @exit(i32 1)
  unreachable

err.abort739:                                     ; No predecessors!
  br label %choice.exit692

a.create743:                                      ; preds = %choice.else517
  %arena.cur745 = call ptr @dva_arena_current()
  %a.create746 = call ptr @dva_arena_alloc(ptr %arena.cur745, i64 24)
  %arena.cur747 = call ptr @dva_arena_current()
  %a.buf748 = call ptr @dva_arena_alloc(ptr %arena.cur747, i64 128)
  %a.len.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create746, i32 0, i32 0
  store i64 0, ptr %a.len.gep749, align 8
  %a.data.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create746, i32 0, i32 1
  store ptr %a.buf748, ptr %a.data.gep750, align 8
  %a.cap.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create746, i32 0, i32 2
  store i64 16, ptr %a.cap.gep751, align 8
  store ptr %a.create746, ptr %var.ons, align 8
  br label %a.after744

a.after744:                                       ; preds = %a.create743, %choice.else517
  %a.load2752 = load ptr, ptr %var.ons, align 8
  %var.load753 = load i64, ptr %var.v, align 8
  %a.rd.nonnull754 = icmp ne ptr %a.load2752, null
  br i1 %a.rd.nonnull754, label %a.rd.check755, label %a.rd.err.null757

a.rd.check755:                                    ; preds = %a.after744
  %a.rd.len760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2752, i32 0, i32 0
  %a.rd.len761 = load i64, ptr %a.rd.len760, align 8
  %a.rd.ge0762 = icmp sge i64 %var.load753, 0
  %a.rd.lt763 = icmp slt i64 %var.load753, %a.rd.len761
  %a.rd.bounds764 = and i1 %a.rd.ge0762, %a.rd.lt763
  br i1 %a.rd.bounds764, label %a.rd.ok756, label %a.rd.err.oob758

a.rd.ok756:                                       ; preds = %a.rd.check755
  %a.rd.data765 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2752, i32 0, i32 1
  %a.rd.data766 = load ptr, ptr %a.rd.data765, align 8
  %a.rd.elem.gep767 = getelementptr i64, ptr %a.rd.data766, i64 %var.load753
  %a.rd.elem768 = load i64, ptr %a.rd.elem.gep767, align 8
  br label %a.rd.done759

a.rd.err.null757:                                 ; preds = %a.after744
  %arena.cur769 = call ptr @dva_arena_current()
  %err.alloc770 = call ptr @dva_arena_alloc(ptr %arena.cur769, i64 56)
  %err.code.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 0
  store i64 4011, ptr %err.code.gep771, align 8
  %err.msg.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep772, align 8
  %err.file.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep773, align 8
  %err.line.gep774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 3
  store i64 315, ptr %err.line.gep774, align 8
  %err.col.gep775 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 4
  store i64 33, ptr %err.col.gep775, align 8
  %err.ctx.gep776 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc770, i32 0, i32 5
  %err.ctx0.gep777 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep776, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep777, align 8
  %err.ctx1.gep778 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep776, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep778, align 8
  %err.p2i779 = ptrtoint ptr %err.alloc770 to i64
  br label %a.rd.done759

a.rd.err.oob758:                                  ; preds = %a.rd.check755
  %arena.cur780 = call ptr @dva_arena_current()
  %err.alloc781 = call ptr @dva_arena_alloc(ptr %arena.cur780, i64 56)
  %err.code.gep782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 0
  store i64 4011, ptr %err.code.gep782, align 8
  %err.msg.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep783, align 8
  %err.file.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep784, align 8
  %err.line.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 3
  store i64 315, ptr %err.line.gep785, align 8
  %err.col.gep786 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 4
  store i64 33, ptr %err.col.gep786, align 8
  %err.ctx.gep787 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 5
  %err.ctx0.gep788 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep787, i32 0, i32 0
  store i64 %var.load753, ptr %err.ctx0.gep788, align 8
  %err.ctx1.gep789 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep787, i32 0, i32 1
  store i64 %a.rd.len761, ptr %err.ctx1.gep789, align 8
  %err.p2i790 = ptrtoint ptr %err.alloc781 to i64
  br label %a.rd.done759

a.rd.done759:                                     ; preds = %a.rd.err.oob758, %a.rd.err.null757, %a.rd.ok756
  %a.rd.tag791 = phi i1 [ true, %a.rd.ok756 ], [ false, %a.rd.err.null757 ], [ false, %a.rd.err.oob758 ]
  %a.rd.pay792 = phi i64 [ %a.rd.elem768, %a.rd.ok756 ], [ %err.p2i779, %a.rd.err.null757 ], [ %err.p2i790, %a.rd.err.oob758 ]
  %ram.tag793 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag791, 0
  %ram.pay794 = insertvalue { i1, i64 } %ram.tag793, i64 %a.rd.pay792, 1
  %ram.tag795 = extractvalue { i1, i64 } %ram.pay794, 0
  br i1 %ram.tag795, label %choice.then796, label %choice.else797

choice.then796:                                   ; preds = %a.rd.done759
  %ram.pay799 = extractvalue { i1, i64 } %ram.pay794, 1
  %pay.flag = trunc i64 %ram.pay799 to i1
  store i1 %pay.flag, ptr %var._800, align 1
  br label %choice.exit798

choice.else797:                                   ; preds = %a.rd.done759
  %ram.pay801 = extractvalue { i1, i64 } %ram.pay794, 1
  %pay.ptr802 = inttoptr i64 %ram.pay801 to ptr
  store ptr %pay.ptr802, ptr %var._803, align 8
  br label %choice.exit798

choice.exit798:                                   ; preds = %choice.else797, %choice.then796
  %choice.res804 = phi i1 [ %pay.flag, %choice.then796 ], [ false, %choice.else797 ]
  store i1 %choice.res804, ptr %var.v_on, align 1
  %var.load805 = load i1, ptr %var.v_on, align 1
  br i1 %var.load805, label %choice.then806, label %choice.exit807

choice.then806:                                   ; preds = %choice.exit798
  %var.load808 = load ptr, ptr %var.lows, align 8
  %a.load809 = load ptr, ptr %var.lows, align 8
  %a.null810 = icmp eq ptr %a.load809, null
  br i1 %a.null810, label %a.create811, label %a.after812

choice.exit807:                                   ; preds = %choice.exit978, %choice.exit798
  br label %choice.exit518

a.create811:                                      ; preds = %choice.then806
  %arena.cur813 = call ptr @dva_arena_current()
  %a.create814 = call ptr @dva_arena_alloc(ptr %arena.cur813, i64 24)
  %arena.cur815 = call ptr @dva_arena_current()
  %a.buf816 = call ptr @dva_arena_alloc(ptr %arena.cur815, i64 128)
  %a.len.gep817 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create814, i32 0, i32 0
  store i64 0, ptr %a.len.gep817, align 8
  %a.data.gep818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create814, i32 0, i32 1
  store ptr %a.buf816, ptr %a.data.gep818, align 8
  %a.cap.gep819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create814, i32 0, i32 2
  store i64 16, ptr %a.cap.gep819, align 8
  store ptr %a.create814, ptr %var.lows, align 8
  br label %a.after812

a.after812:                                       ; preds = %a.create811, %choice.then806
  %a.load2820 = load ptr, ptr %var.lows, align 8
  %var.load821 = load i64, ptr %var.u, align 8
  %a.rd.nonnull822 = icmp ne ptr %a.load2820, null
  br i1 %a.rd.nonnull822, label %a.rd.check823, label %a.rd.err.null825

a.rd.check823:                                    ; preds = %a.after812
  %a.rd.len828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2820, i32 0, i32 0
  %a.rd.len829 = load i64, ptr %a.rd.len828, align 8
  %a.rd.ge0830 = icmp sge i64 %var.load821, 0
  %a.rd.lt831 = icmp slt i64 %var.load821, %a.rd.len829
  %a.rd.bounds832 = and i1 %a.rd.ge0830, %a.rd.lt831
  br i1 %a.rd.bounds832, label %a.rd.ok824, label %a.rd.err.oob826

a.rd.ok824:                                       ; preds = %a.rd.check823
  %a.rd.data833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2820, i32 0, i32 1
  %a.rd.data834 = load ptr, ptr %a.rd.data833, align 8
  %a.rd.elem.gep835 = getelementptr i64, ptr %a.rd.data834, i64 %var.load821
  %a.rd.elem836 = load i64, ptr %a.rd.elem.gep835, align 8
  br label %a.rd.done827

a.rd.err.null825:                                 ; preds = %a.after812
  %arena.cur837 = call ptr @dva_arena_current()
  %err.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 56)
  %err.code.gep839 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 0
  store i64 4011, ptr %err.code.gep839, align 8
  %err.msg.gep840 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep840, align 8
  %err.file.gep841 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep841, align 8
  %err.line.gep842 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 3
  store i64 318, ptr %err.line.gep842, align 8
  %err.col.gep843 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 4
  store i64 39, ptr %err.col.gep843, align 8
  %err.ctx.gep844 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 5
  %err.ctx0.gep845 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep844, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep845, align 8
  %err.ctx1.gep846 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep844, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep846, align 8
  %err.p2i847 = ptrtoint ptr %err.alloc838 to i64
  br label %a.rd.done827

a.rd.err.oob826:                                  ; preds = %a.rd.check823
  %arena.cur848 = call ptr @dva_arena_current()
  %err.alloc849 = call ptr @dva_arena_alloc(ptr %arena.cur848, i64 56)
  %err.code.gep850 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 0
  store i64 4011, ptr %err.code.gep850, align 8
  %err.msg.gep851 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep851, align 8
  %err.file.gep852 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep852, align 8
  %err.line.gep853 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 3
  store i64 318, ptr %err.line.gep853, align 8
  %err.col.gep854 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 4
  store i64 39, ptr %err.col.gep854, align 8
  %err.ctx.gep855 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc849, i32 0, i32 5
  %err.ctx0.gep856 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep855, i32 0, i32 0
  store i64 %var.load821, ptr %err.ctx0.gep856, align 8
  %err.ctx1.gep857 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep855, i32 0, i32 1
  store i64 %a.rd.len829, ptr %err.ctx1.gep857, align 8
  %err.p2i858 = ptrtoint ptr %err.alloc849 to i64
  br label %a.rd.done827

a.rd.done827:                                     ; preds = %a.rd.err.oob826, %a.rd.err.null825, %a.rd.ok824
  %a.rd.tag859 = phi i1 [ true, %a.rd.ok824 ], [ false, %a.rd.err.null825 ], [ false, %a.rd.err.oob826 ]
  %a.rd.pay860 = phi i64 [ %a.rd.elem836, %a.rd.ok824 ], [ %err.p2i847, %a.rd.err.null825 ], [ %err.p2i858, %a.rd.err.oob826 ]
  %ram.tag861 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag859, 0
  %ram.pay862 = insertvalue { i1, i64 } %ram.tag861, i64 %a.rd.pay860, 1
  %ram.tag863 = extractvalue { i1, i64 } %ram.pay862, 0
  br i1 %ram.tag863, label %choice.then864, label %choice.else865

choice.then864:                                   ; preds = %a.rd.done827
  %ram.pay867 = extractvalue { i1, i64 } %ram.pay862, 1
  store i64 %ram.pay867, ptr %var._868, align 8
  br label %choice.exit866

choice.else865:                                   ; preds = %a.rd.done827
  %ram.pay869 = extractvalue { i1, i64 } %ram.pay862, 1
  %pay.ptr870 = inttoptr i64 %ram.pay869 to ptr
  store ptr %pay.ptr870, ptr %var._871, align 8
  br label %choice.exit866

choice.exit866:                                   ; preds = %choice.else865, %choice.then864
  %choice.res872 = phi i64 [ %ram.pay867, %choice.then864 ], [ 0, %choice.else865 ]
  store i64 %choice.res872, ptr %var.lu2, align 8
  %var.load873 = load ptr, ptr %var.idxs, align 8
  %a.load874 = load ptr, ptr %var.idxs, align 8
  %a.null875 = icmp eq ptr %a.load874, null
  br i1 %a.null875, label %a.create876, label %a.after877

a.create876:                                      ; preds = %choice.exit866
  %arena.cur878 = call ptr @dva_arena_current()
  %a.create879 = call ptr @dva_arena_alloc(ptr %arena.cur878, i64 24)
  %arena.cur880 = call ptr @dva_arena_current()
  %a.buf881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 128)
  %a.len.gep882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create879, i32 0, i32 0
  store i64 0, ptr %a.len.gep882, align 8
  %a.data.gep883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create879, i32 0, i32 1
  store ptr %a.buf881, ptr %a.data.gep883, align 8
  %a.cap.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create879, i32 0, i32 2
  store i64 16, ptr %a.cap.gep884, align 8
  store ptr %a.create879, ptr %var.idxs, align 8
  br label %a.after877

a.after877:                                       ; preds = %a.create876, %choice.exit866
  %a.load2885 = load ptr, ptr %var.idxs, align 8
  %var.load886 = load i64, ptr %var.v, align 8
  %a.rd.nonnull887 = icmp ne ptr %a.load2885, null
  br i1 %a.rd.nonnull887, label %a.rd.check888, label %a.rd.err.null890

a.rd.check888:                                    ; preds = %a.after877
  %a.rd.len893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2885, i32 0, i32 0
  %a.rd.len894 = load i64, ptr %a.rd.len893, align 8
  %a.rd.ge0895 = icmp sge i64 %var.load886, 0
  %a.rd.lt896 = icmp slt i64 %var.load886, %a.rd.len894
  %a.rd.bounds897 = and i1 %a.rd.ge0895, %a.rd.lt896
  br i1 %a.rd.bounds897, label %a.rd.ok889, label %a.rd.err.oob891

a.rd.ok889:                                       ; preds = %a.rd.check888
  %a.rd.data898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2885, i32 0, i32 1
  %a.rd.data899 = load ptr, ptr %a.rd.data898, align 8
  %a.rd.elem.gep900 = getelementptr i64, ptr %a.rd.data899, i64 %var.load886
  %a.rd.elem901 = load i64, ptr %a.rd.elem.gep900, align 8
  br label %a.rd.done892

a.rd.err.null890:                                 ; preds = %a.after877
  %arena.cur902 = call ptr @dva_arena_current()
  %err.alloc903 = call ptr @dva_arena_alloc(ptr %arena.cur902, i64 56)
  %err.code.gep904 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 0
  store i64 4011, ptr %err.code.gep904, align 8
  %err.msg.gep905 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep905, align 8
  %err.file.gep906 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep906, align 8
  %err.line.gep907 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 3
  store i64 319, ptr %err.line.gep907, align 8
  %err.col.gep908 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 4
  store i64 41, ptr %err.col.gep908, align 8
  %err.ctx.gep909 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc903, i32 0, i32 5
  %err.ctx0.gep910 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep909, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep910, align 8
  %err.ctx1.gep911 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep909, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep911, align 8
  %err.p2i912 = ptrtoint ptr %err.alloc903 to i64
  br label %a.rd.done892

a.rd.err.oob891:                                  ; preds = %a.rd.check888
  %arena.cur913 = call ptr @dva_arena_current()
  %err.alloc914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 56)
  %err.code.gep915 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 0
  store i64 4011, ptr %err.code.gep915, align 8
  %err.msg.gep916 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep916, align 8
  %err.file.gep917 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep917, align 8
  %err.line.gep918 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 3
  store i64 319, ptr %err.line.gep918, align 8
  %err.col.gep919 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 4
  store i64 41, ptr %err.col.gep919, align 8
  %err.ctx.gep920 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc914, i32 0, i32 5
  %err.ctx0.gep921 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep920, i32 0, i32 0
  store i64 %var.load886, ptr %err.ctx0.gep921, align 8
  %err.ctx1.gep922 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep920, i32 0, i32 1
  store i64 %a.rd.len894, ptr %err.ctx1.gep922, align 8
  %err.p2i923 = ptrtoint ptr %err.alloc914 to i64
  br label %a.rd.done892

a.rd.done892:                                     ; preds = %a.rd.err.oob891, %a.rd.err.null890, %a.rd.ok889
  %a.rd.tag924 = phi i1 [ true, %a.rd.ok889 ], [ false, %a.rd.err.null890 ], [ false, %a.rd.err.oob891 ]
  %a.rd.pay925 = phi i64 [ %a.rd.elem901, %a.rd.ok889 ], [ %err.p2i912, %a.rd.err.null890 ], [ %err.p2i923, %a.rd.err.oob891 ]
  %ram.tag926 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag924, 0
  %ram.pay927 = insertvalue { i1, i64 } %ram.tag926, i64 %a.rd.pay925, 1
  %ram.tag928 = extractvalue { i1, i64 } %ram.pay927, 0
  br i1 %ram.tag928, label %choice.then929, label %choice.else930

choice.then929:                                   ; preds = %a.rd.done892
  %ram.pay932 = extractvalue { i1, i64 } %ram.pay927, 1
  store i64 %ram.pay932, ptr %var._933, align 8
  br label %choice.exit931

choice.else930:                                   ; preds = %a.rd.done892
  %ram.pay934 = extractvalue { i1, i64 } %ram.pay927, 1
  %pay.ptr935 = inttoptr i64 %ram.pay934 to ptr
  store ptr %pay.ptr935, ptr %var._936, align 8
  br label %choice.exit931

choice.exit931:                                   ; preds = %choice.else930, %choice.then929
  %choice.res937 = phi i64 [ %ram.pay932, %choice.then929 ], [ 0, %choice.else930 ]
  store i64 %choice.res937, ptr %var.idx_v, align 8
  %var.load938 = load i64, ptr %var.idx_v, align 8
  %var.load939 = load i64, ptr %var.lu2, align 8
  %cmptmp940 = icmp slt i64 %var.load938, %var.load939
  br i1 %cmptmp940, label %choice.then941, label %choice.else942

choice.then941:                                   ; preds = %choice.exit931
  %var.load944 = load i64, ptr %var.idx_v, align 8
  br label %choice.exit943

choice.else942:                                   ; preds = %choice.exit931
  %var.load945 = load i64, ptr %var.lu2, align 8
  br label %choice.exit943

choice.exit943:                                   ; preds = %choice.else942, %choice.then941
  %choice.res946 = phi i64 [ %var.load944, %choice.then941 ], [ %var.load945, %choice.else942 ]
  store i64 %choice.res946, ptr %var.min_idx, align 8
  %var.load947 = load ptr, ptr %var.lows, align 8
  %a.load948 = load ptr, ptr %var.lows, align 8
  %a.null949 = icmp eq ptr %a.load948, null
  br i1 %a.null949, label %a.create950, label %a.after951

a.create950:                                      ; preds = %choice.exit943
  %arena.cur952 = call ptr @dva_arena_current()
  %a.create953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 24)
  %arena.cur954 = call ptr @dva_arena_current()
  %a.buf955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 128)
  %a.len.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 0
  store i64 0, ptr %a.len.gep956, align 8
  %a.data.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 1
  store ptr %a.buf955, ptr %a.data.gep957, align 8
  %a.cap.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 2
  store i64 16, ptr %a.cap.gep958, align 8
  store ptr %a.create953, ptr %var.lows, align 8
  br label %a.after951

a.after951:                                       ; preds = %a.create950, %choice.exit943
  %a.load2959 = load ptr, ptr %var.lows, align 8
  %var.load960 = load i64, ptr %var.u, align 8
  %var.load961 = load i64, ptr %var.min_idx, align 8
  %a.wr.data962 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 1
  %a.wr.data963 = load ptr, ptr %a.wr.data962, align 8
  %a.elem.gep964 = getelementptr i64, ptr %a.wr.data963, i64 %var.load960
  store i64 %var.load961, ptr %a.elem.gep964, align 8
  %arena.cur965 = call ptr @dva_arena_current()
  %a.wr.succ966 = call ptr @dva_arena_alloc(ptr %arena.cur965, i64 16)
  %tag.gep967 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ966, i32 0, i32 0
  store i64 1, ptr %tag.gep967, align 8
  %pay.gep968 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ966, i32 0, i32 1
  store ptr null, ptr %pay.gep968, align 8
  %tag.gep969 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ966, i32 0, i32 0
  %tag.id970 = load i64, ptr %tag.gep969, align 8
  %tag.eq.one971 = icmp eq i64 %tag.id970, 1
  %tag.eq.two972 = icmp eq i64 %tag.id970, 2
  %is.pos973 = or i1 %tag.eq.one971, %tag.eq.two972
  %pay.gep974 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ966, i32 0, i32 1
  %payload.ptr975 = load ptr, ptr %pay.gep974, align 8
  br i1 %is.pos973, label %choice.then976, label %choice.else977

choice.then976:                                   ; preds = %a.after951
  br label %choice.exit978

choice.else977:                                   ; preds = %a.after951
  store ptr %payload.ptr975, ptr %var._979, align 8
  store ptr %payload.ptr975, ptr %var._980, align 8
  store ptr %payload.ptr975, ptr %var._981, align 8
  %err.code.gep982 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr975, i32 0, i32 0
  %err.code983 = load i64, ptr %err.code.gep982, align 8
  %err.msg.gep984 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr975, i32 0, i32 1
  %err.msg.struct985 = load ptr, ptr %err.msg.gep984, align 8
  %err.file.gep986 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr975, i32 0, i32 2
  %err.file.struct987 = load ptr, ptr %err.file.gep986, align 8
  %err.line.gep988 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr975, i32 0, i32 3
  %err.line989 = load i64, ptr %err.line.gep988, align 8
  %err.col.gep990 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr975, i32 0, i32 4
  %err.col991 = load i64, ptr %err.col.gep990, align 8
  %err.msg.len992 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct985, i32 0, i32 0
  %err.msg.len993 = load i64, ptr %err.msg.len992, align 8
  %err.msg.len994 = and i64 %err.msg.len993, 281474976710655
  %str.tag995 = lshr i64 %err.msg.len993, 48
  %str.immortal996 = icmp eq i64 %str.tag995, 0
  br i1 %str.immortal996, label %str_ok998, label %str_gen_check997

choice.exit978:                                   ; preds = %err.abort1025, %choice.then976
  br label %choice.exit807

str_gen_check997:                                 ; preds = %choice.else977
  %arena.cur1000 = call ptr @dva_arena_current()
  %tag.valid1001 = call i1 @dva_arena_validate_tag(ptr %arena.cur1000, i64 %str.tag995)
  br i1 %tag.valid1001, label %str_ok998, label %str_stale999

str_ok998:                                        ; preds = %str_stale999, %str_gen_check997, %choice.else977
  %err.msg.len321002 = trunc i64 %err.msg.len994 to i32
  %err.msg.data1003 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct985, i32 0, i32 1
  %err.msg.data1004 = load ptr, ptr %err.msg.data1003, align 8
  %err.file.len1005 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct987, i32 0, i32 0
  %err.file.len1006 = load i64, ptr %err.file.len1005, align 8
  %err.file.len1007 = and i64 %err.file.len1006, 281474976710655
  %str.tag1008 = lshr i64 %err.file.len1006, 48
  %str.immortal1009 = icmp eq i64 %str.tag1008, 0
  br i1 %str.immortal1009, label %str_ok1011, label %str_gen_check1010

str_stale999:                                     ; preds = %str_gen_check997
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok998

str_gen_check1010:                                ; preds = %str_ok998
  %arena.cur1013 = call ptr @dva_arena_current()
  %tag.valid1014 = call i1 @dva_arena_validate_tag(ptr %arena.cur1013, i64 %str.tag1008)
  br i1 %tag.valid1014, label %str_ok1011, label %str_stale1012

str_ok1011:                                       ; preds = %str_stale1012, %str_gen_check1010, %str_ok998
  %err.file.len321015 = trunc i64 %err.file.len1007 to i32
  %err.file.data1016 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct987, i32 0, i32 1
  %err.file.data1017 = load ptr, ptr %err.file.data1016, align 8
  %err.thread.rec1018 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1019 = icmp ne ptr %err.thread.rec1018, null
  br i1 %err.is.thread1019, label %err.thread1020, label %err.normal1021

str_stale1012:                                    ; preds = %str_gen_check1010
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1011

err.thread1020:                                   ; preds = %str_ok1011
  %err.haserr.gep1022 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1018, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1022, align 8
  %err.err.gep1023 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1018, i32 0, i32 7
  store ptr %payload.ptr975, ptr %err.err.gep1023, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1021:                                   ; preds = %str_ok1011
  %err.panic.printf1024 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code983, i32 %err.msg.len321002, ptr %err.msg.data1004, i32 %err.file.len321015, ptr %err.file.data1017, i64 %err.line989, i64 %err.col991)
  call void @exit(i32 1)
  unreachable

err.abort1025:                                    ; No predecessors!
  br label %choice.exit978

a.create1029:                                     ; preds = %loop.exit.39
  %arena.cur1031 = call ptr @dva_arena_current()
  %a.create1032 = call ptr @dva_arena_alloc(ptr %arena.cur1031, i64 24)
  %arena.cur1033 = call ptr @dva_arena_current()
  %a.buf1034 = call ptr @dva_arena_alloc(ptr %arena.cur1033, i64 128)
  %a.len.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1032, i32 0, i32 0
  store i64 0, ptr %a.len.gep1035, align 8
  %a.data.gep1036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1032, i32 0, i32 1
  store ptr %a.buf1034, ptr %a.data.gep1036, align 8
  %a.cap.gep1037 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1032, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1037, align 8
  store ptr %a.create1032, ptr %var.lows, align 8
  br label %a.after1030

a.after1030:                                      ; preds = %a.create1029, %loop.exit.39
  %a.load21038 = load ptr, ptr %var.lows, align 8
  %var.load1039 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1040 = icmp ne ptr %a.load21038, null
  br i1 %a.rd.nonnull1040, label %a.rd.check1041, label %a.rd.err.null1043

a.rd.check1041:                                   ; preds = %a.after1030
  %a.rd.len1046 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21038, i32 0, i32 0
  %a.rd.len1047 = load i64, ptr %a.rd.len1046, align 8
  %a.rd.ge01048 = icmp sge i64 %var.load1039, 0
  %a.rd.lt1049 = icmp slt i64 %var.load1039, %a.rd.len1047
  %a.rd.bounds1050 = and i1 %a.rd.ge01048, %a.rd.lt1049
  br i1 %a.rd.bounds1050, label %a.rd.ok1042, label %a.rd.err.oob1044

a.rd.ok1042:                                      ; preds = %a.rd.check1041
  %a.rd.data1051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21038, i32 0, i32 1
  %a.rd.data1052 = load ptr, ptr %a.rd.data1051, align 8
  %a.rd.elem.gep1053 = getelementptr i64, ptr %a.rd.data1052, i64 %var.load1039
  %a.rd.elem1054 = load i64, ptr %a.rd.elem.gep1053, align 8
  br label %a.rd.done1045

a.rd.err.null1043:                                ; preds = %a.after1030
  %arena.cur1055 = call ptr @dva_arena_current()
  %err.alloc1056 = call ptr @dva_arena_alloc(ptr %arena.cur1055, i64 56)
  %err.code.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1057, align 8
  %err.msg.gep1058 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1058, align 8
  %err.file.gep1059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1059, align 8
  %err.line.gep1060 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 3
  store i64 323, ptr %err.line.gep1060, align 8
  %err.col.gep1061 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 4
  store i64 20, ptr %err.col.gep1061, align 8
  %err.ctx.gep1062 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1056, i32 0, i32 5
  %err.ctx0.gep1063 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1062, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1063, align 8
  %err.ctx1.gep1064 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1062, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1064, align 8
  %err.p2i1065 = ptrtoint ptr %err.alloc1056 to i64
  br label %a.rd.done1045

a.rd.err.oob1044:                                 ; preds = %a.rd.check1041
  %arena.cur1066 = call ptr @dva_arena_current()
  %err.alloc1067 = call ptr @dva_arena_alloc(ptr %arena.cur1066, i64 56)
  %err.code.gep1068 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1068, align 8
  %err.msg.gep1069 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1069, align 8
  %err.file.gep1070 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1070, align 8
  %err.line.gep1071 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 3
  store i64 323, ptr %err.line.gep1071, align 8
  %err.col.gep1072 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 4
  store i64 20, ptr %err.col.gep1072, align 8
  %err.ctx.gep1073 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1067, i32 0, i32 5
  %err.ctx0.gep1074 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1073, i32 0, i32 0
  store i64 %var.load1039, ptr %err.ctx0.gep1074, align 8
  %err.ctx1.gep1075 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1073, i32 0, i32 1
  store i64 %a.rd.len1047, ptr %err.ctx1.gep1075, align 8
  %err.p2i1076 = ptrtoint ptr %err.alloc1067 to i64
  br label %a.rd.done1045

a.rd.done1045:                                    ; preds = %a.rd.err.oob1044, %a.rd.err.null1043, %a.rd.ok1042
  %a.rd.tag1077 = phi i1 [ true, %a.rd.ok1042 ], [ false, %a.rd.err.null1043 ], [ false, %a.rd.err.oob1044 ]
  %a.rd.pay1078 = phi i64 [ %a.rd.elem1054, %a.rd.ok1042 ], [ %err.p2i1065, %a.rd.err.null1043 ], [ %err.p2i1076, %a.rd.err.oob1044 ]
  %ram.tag1079 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1077, 0
  %ram.pay1080 = insertvalue { i1, i64 } %ram.tag1079, i64 %a.rd.pay1078, 1
  %ram.tag1081 = extractvalue { i1, i64 } %ram.pay1080, 0
  br i1 %ram.tag1081, label %choice.then1082, label %choice.else1083

choice.then1082:                                  ; preds = %a.rd.done1045
  %ram.pay1085 = extractvalue { i1, i64 } %ram.pay1080, 1
  store i64 %ram.pay1085, ptr %var._1086, align 8
  br label %choice.exit1084

choice.else1083:                                  ; preds = %a.rd.done1045
  %ram.pay1087 = extractvalue { i1, i64 } %ram.pay1080, 1
  %pay.ptr1088 = inttoptr i64 %ram.pay1087 to ptr
  store ptr %pay.ptr1088, ptr %var._1089, align 8
  br label %choice.exit1084

choice.exit1084:                                  ; preds = %choice.else1083, %choice.then1082
  %choice.res1090 = phi i64 [ %ram.pay1085, %choice.then1082 ], [ 0, %choice.else1083 ]
  store i64 %choice.res1090, ptr %var.low_u, align 8
  %var.load1091 = load ptr, ptr %var.idxs, align 8
  %a.load1092 = load ptr, ptr %var.idxs, align 8
  %a.null1093 = icmp eq ptr %a.load1092, null
  br i1 %a.null1093, label %a.create1094, label %a.after1095

a.create1094:                                     ; preds = %choice.exit1084
  %arena.cur1096 = call ptr @dva_arena_current()
  %a.create1097 = call ptr @dva_arena_alloc(ptr %arena.cur1096, i64 24)
  %arena.cur1098 = call ptr @dva_arena_current()
  %a.buf1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 128)
  %a.len.gep1100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 0
  store i64 0, ptr %a.len.gep1100, align 8
  %a.data.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 1
  store ptr %a.buf1099, ptr %a.data.gep1101, align 8
  %a.cap.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1102, align 8
  store ptr %a.create1097, ptr %var.idxs, align 8
  br label %a.after1095

a.after1095:                                      ; preds = %a.create1094, %choice.exit1084
  %a.load21103 = load ptr, ptr %var.idxs, align 8
  %var.load1104 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1105 = icmp ne ptr %a.load21103, null
  br i1 %a.rd.nonnull1105, label %a.rd.check1106, label %a.rd.err.null1108

a.rd.check1106:                                   ; preds = %a.after1095
  %a.rd.len1111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21103, i32 0, i32 0
  %a.rd.len1112 = load i64, ptr %a.rd.len1111, align 8
  %a.rd.ge01113 = icmp sge i64 %var.load1104, 0
  %a.rd.lt1114 = icmp slt i64 %var.load1104, %a.rd.len1112
  %a.rd.bounds1115 = and i1 %a.rd.ge01113, %a.rd.lt1114
  br i1 %a.rd.bounds1115, label %a.rd.ok1107, label %a.rd.err.oob1109

a.rd.ok1107:                                      ; preds = %a.rd.check1106
  %a.rd.data1116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21103, i32 0, i32 1
  %a.rd.data1117 = load ptr, ptr %a.rd.data1116, align 8
  %a.rd.elem.gep1118 = getelementptr i64, ptr %a.rd.data1117, i64 %var.load1104
  %a.rd.elem1119 = load i64, ptr %a.rd.elem.gep1118, align 8
  br label %a.rd.done1110

a.rd.err.null1108:                                ; preds = %a.after1095
  %arena.cur1120 = call ptr @dva_arena_current()
  %err.alloc1121 = call ptr @dva_arena_alloc(ptr %arena.cur1120, i64 56)
  %err.code.gep1122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1122, align 8
  %err.msg.gep1123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1123, align 8
  %err.file.gep1124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1124, align 8
  %err.line.gep1125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 3
  store i64 324, ptr %err.line.gep1125, align 8
  %err.col.gep1126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 4
  store i64 20, ptr %err.col.gep1126, align 8
  %err.ctx.gep1127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1121, i32 0, i32 5
  %err.ctx0.gep1128 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1127, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1128, align 8
  %err.ctx1.gep1129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1127, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1129, align 8
  %err.p2i1130 = ptrtoint ptr %err.alloc1121 to i64
  br label %a.rd.done1110

a.rd.err.oob1109:                                 ; preds = %a.rd.check1106
  %arena.cur1131 = call ptr @dva_arena_current()
  %err.alloc1132 = call ptr @dva_arena_alloc(ptr %arena.cur1131, i64 56)
  %err.code.gep1133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1133, align 8
  %err.msg.gep1134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1134, align 8
  %err.file.gep1135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1135, align 8
  %err.line.gep1136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 3
  store i64 324, ptr %err.line.gep1136, align 8
  %err.col.gep1137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 4
  store i64 20, ptr %err.col.gep1137, align 8
  %err.ctx.gep1138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1132, i32 0, i32 5
  %err.ctx0.gep1139 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1138, i32 0, i32 0
  store i64 %var.load1104, ptr %err.ctx0.gep1139, align 8
  %err.ctx1.gep1140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1138, i32 0, i32 1
  store i64 %a.rd.len1112, ptr %err.ctx1.gep1140, align 8
  %err.p2i1141 = ptrtoint ptr %err.alloc1132 to i64
  br label %a.rd.done1110

a.rd.done1110:                                    ; preds = %a.rd.err.oob1109, %a.rd.err.null1108, %a.rd.ok1107
  %a.rd.tag1142 = phi i1 [ true, %a.rd.ok1107 ], [ false, %a.rd.err.null1108 ], [ false, %a.rd.err.oob1109 ]
  %a.rd.pay1143 = phi i64 [ %a.rd.elem1119, %a.rd.ok1107 ], [ %err.p2i1130, %a.rd.err.null1108 ], [ %err.p2i1141, %a.rd.err.oob1109 ]
  %ram.tag1144 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1142, 0
  %ram.pay1145 = insertvalue { i1, i64 } %ram.tag1144, i64 %a.rd.pay1143, 1
  %ram.tag1146 = extractvalue { i1, i64 } %ram.pay1145, 0
  br i1 %ram.tag1146, label %choice.then1147, label %choice.else1148

choice.then1147:                                  ; preds = %a.rd.done1110
  %ram.pay1150 = extractvalue { i1, i64 } %ram.pay1145, 1
  store i64 %ram.pay1150, ptr %var._1151, align 8
  br label %choice.exit1149

choice.else1148:                                  ; preds = %a.rd.done1110
  %ram.pay1152 = extractvalue { i1, i64 } %ram.pay1145, 1
  %pay.ptr1153 = inttoptr i64 %ram.pay1152 to ptr
  store ptr %pay.ptr1153, ptr %var._1154, align 8
  br label %choice.exit1149

choice.exit1149:                                  ; preds = %choice.else1148, %choice.then1147
  %choice.res1155 = phi i64 [ %ram.pay1150, %choice.then1147 ], [ 0, %choice.else1148 ]
  store i64 %choice.res1155, ptr %var.idx_u, align 8
  %var.load1156 = load i64, ptr %var.low_u, align 8
  %var.load1157 = load i64, ptr %var.idx_u, align 8
  %cmptmp1158 = icmp eq i64 %var.load1156, %var.load1157
  br i1 %cmptmp1158, label %choice.then1159, label %choice.exit1160

choice.then1159:                                  ; preds = %choice.exit1149
  %arena.cur1161 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1161, i64 24)
  %arena.cur1162 = call ptr @dva_arena_current()
  %a.buf1163 = call ptr @dva_arena_alloc(ptr %arena.cur1162, i64 128)
  %a.len.gep1164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1164, align 8
  %a.data.gep1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1163, ptr %a.data.gep1165, align 8
  %a.cap.gep1166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1166, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1167 = load ptr, ptr %var.u_node, align 8
  %var.load1168 = load ptr, ptr %var.u_node, align 8
  %fld.gep1169 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1168, i32 0, i32 0
  %fld.load1170 = load ptr, ptr %fld.gep1169, align 8
  %call.res1171 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1167, ptr %fld.load1170)
  store i1 %call.res1171, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

choice.exit1160:                                  ; preds = %a.store1519, %choice.exit1149
  ret void

loop.header.40:                                   ; preds = %loop.latch.40, %choice.then1159
  %counter.load1172 = load i64, ptr %loop.idx.40, align 8
  br label %loop.body.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i1173 = sub i64 %counter.load1172, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i1173, ptr %var._i1174, align 8
  store i64 %counter.load1172, ptr %var._1175, align 8
  %var.load1176 = load ptr, ptr %var.state, align 8
  %fld.gep1177 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1176, i32 0, i32 4
  %fld.load1178 = load ptr, ptr %fld.gep1177, align 8
  store ptr %fld.load1178, ptr %var.s_ptr, align 8
  %var.load1179 = load ptr, ptr %var.s_ptr, align 8
  %a.load1180 = load ptr, ptr %var.s_ptr, align 8
  %a.null1181 = icmp eq ptr %a.load1180, null
  br i1 %a.null1181, label %a.create1182, label %a.after1183

loop.exit.nat.40:                                 ; No predecessors!
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit1480
  %step.val1481 = load i64, ptr %loop.step.40, align 8
  %loop.next1482 = add i64 %counter.load1172, %step.val1481
  store i64 %loop.next1482, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %choice.then1479, %choice.then1281, %loop.exit.nat.40
  %var.load1483 = load ptr, ptr %var.scc_names, align 8
  %a.load1484 = load ptr, ptr %var.scc_names, align 8
  %a.null1485 = icmp eq ptr %a.load1484, null
  br i1 %a.null1485, label %a.create1486, label %a.after1487

a.create1182:                                     ; preds = %loop.body.40
  %arena.cur1184 = call ptr @dva_arena_current()
  %a.create1185 = call ptr @dva_arena_alloc(ptr %arena.cur1184, i64 24)
  %arena.cur1186 = call ptr @dva_arena_current()
  %a.buf1187 = call ptr @dva_arena_alloc(ptr %arena.cur1186, i64 128)
  %a.len.gep1188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1185, i32 0, i32 0
  store i64 0, ptr %a.len.gep1188, align 8
  %a.data.gep1189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1185, i32 0, i32 1
  store ptr %a.buf1187, ptr %a.data.gep1189, align 8
  %a.cap.gep1190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1185, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1190, align 8
  store ptr %a.create1185, ptr %var.s_ptr, align 8
  br label %a.after1183

a.after1183:                                      ; preds = %a.create1182, %loop.body.40
  %a.load21191 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1192 = icmp ne ptr %a.load21191, null
  br i1 %a.rd.nonnull1192, label %a.rd.check1193, label %a.rd.err.null1195

a.rd.check1193:                                   ; preds = %a.after1183
  %a.rd.len1198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21191, i32 0, i32 0
  %a.rd.len1199 = load i64, ptr %a.rd.len1198, align 8
  %a.rd.lt1200 = icmp slt i64 0, %a.rd.len1199
  %a.rd.bounds1201 = and i1 true, %a.rd.lt1200
  br i1 %a.rd.bounds1201, label %a.rd.ok1194, label %a.rd.err.oob1196

a.rd.ok1194:                                      ; preds = %a.rd.check1193
  %a.rd.data1202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21191, i32 0, i32 1
  %a.rd.data1203 = load ptr, ptr %a.rd.data1202, align 8
  %a.rd.elem.gep1204 = getelementptr i64, ptr %a.rd.data1203, i64 0
  %a.rd.elem1205 = load i64, ptr %a.rd.elem.gep1204, align 8
  br label %a.rd.done1197

a.rd.err.null1195:                                ; preds = %a.after1183
  %arena.cur1206 = call ptr @dva_arena_current()
  %err.alloc1207 = call ptr @dva_arena_alloc(ptr %arena.cur1206, i64 56)
  %err.code.gep1208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1208, align 8
  %err.msg.gep1209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1209, align 8
  %err.file.gep1210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1210, align 8
  %err.line.gep1211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 3
  store i64 331, ptr %err.line.gep1211, align 8
  %err.col.gep1212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 4
  store i64 26, ptr %err.col.gep1212, align 8
  %err.ctx.gep1213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1207, i32 0, i32 5
  %err.ctx0.gep1214 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1213, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1214, align 8
  %err.ctx1.gep1215 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1213, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1215, align 8
  %err.p2i1216 = ptrtoint ptr %err.alloc1207 to i64
  br label %a.rd.done1197

a.rd.err.oob1196:                                 ; preds = %a.rd.check1193
  %arena.cur1217 = call ptr @dva_arena_current()
  %err.alloc1218 = call ptr @dva_arena_alloc(ptr %arena.cur1217, i64 56)
  %err.code.gep1219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1219, align 8
  %err.msg.gep1220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1220, align 8
  %err.file.gep1221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1221, align 8
  %err.line.gep1222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 3
  store i64 331, ptr %err.line.gep1222, align 8
  %err.col.gep1223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 4
  store i64 26, ptr %err.col.gep1223, align 8
  %err.ctx.gep1224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1218, i32 0, i32 5
  %err.ctx0.gep1225 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1224, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1225, align 8
  %err.ctx1.gep1226 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1224, i32 0, i32 1
  store i64 %a.rd.len1199, ptr %err.ctx1.gep1226, align 8
  %err.p2i1227 = ptrtoint ptr %err.alloc1218 to i64
  br label %a.rd.done1197

a.rd.done1197:                                    ; preds = %a.rd.err.oob1196, %a.rd.err.null1195, %a.rd.ok1194
  %a.rd.tag1228 = phi i1 [ true, %a.rd.ok1194 ], [ false, %a.rd.err.null1195 ], [ false, %a.rd.err.oob1196 ]
  %a.rd.pay1229 = phi i64 [ %a.rd.elem1205, %a.rd.ok1194 ], [ %err.p2i1216, %a.rd.err.null1195 ], [ %err.p2i1227, %a.rd.err.oob1196 ]
  %ram.tag1230 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1228, 0
  %ram.pay1231 = insertvalue { i1, i64 } %ram.tag1230, i64 %a.rd.pay1229, 1
  %unwrap.is_pos1232 = extractvalue { i1, i64 } %ram.pay1231, 0
  br i1 %unwrap.is_pos1232, label %unwrap.pos.41, label %unwrap.abort.41

unwrap.pos.41:                                    ; preds = %a.rd.done1197
  %unwrap.pay.pos1278 = extractvalue { i1, i64 } %ram.pay1231, 1
  store i64 %unwrap.pay.pos1278, ptr %var.sp, align 8
  %var.load1279 = load i64, ptr %var.sp, align 8
  %cmptmp1280 = icmp eq i64 %var.load1279, 0
  br i1 %cmptmp1280, label %choice.then1281, label %choice.exit1282

unwrap.abort.41:                                  ; preds = %a.rd.done1197
  %unwrap.pay.abort1233 = extractvalue { i1, i64 } %ram.pay1231, 1
  %err.ptr1234 = inttoptr i64 %unwrap.pay.abort1233 to ptr
  %err.code.gep1235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1234, i32 0, i32 0
  %err.code1236 = load i64, ptr %err.code.gep1235, align 8
  %err.msg.gep1237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1234, i32 0, i32 1
  %err.msg.struct1238 = load ptr, ptr %err.msg.gep1237, align 8
  %err.file.gep1239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1234, i32 0, i32 2
  %err.file.struct1240 = load ptr, ptr %err.file.gep1239, align 8
  %err.line.gep1241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1234, i32 0, i32 3
  %err.line1242 = load i64, ptr %err.line.gep1241, align 8
  %err.col.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1234, i32 0, i32 4
  %err.col1244 = load i64, ptr %err.col.gep1243, align 8
  %err.msg.len1245 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1238, i32 0, i32 0
  %err.msg.len1246 = load i64, ptr %err.msg.len1245, align 8
  %err.msg.len1247 = and i64 %err.msg.len1246, 281474976710655
  %str.tag1248 = lshr i64 %err.msg.len1246, 48
  %str.immortal1249 = icmp eq i64 %str.tag1248, 0
  br i1 %str.immortal1249, label %str_ok1251, label %str_gen_check1250

str_gen_check1250:                                ; preds = %unwrap.abort.41
  %arena.cur1253 = call ptr @dva_arena_current()
  %tag.valid1254 = call i1 @dva_arena_validate_tag(ptr %arena.cur1253, i64 %str.tag1248)
  br i1 %tag.valid1254, label %str_ok1251, label %str_stale1252

str_ok1251:                                       ; preds = %str_stale1252, %str_gen_check1250, %unwrap.abort.41
  %err.msg.len321255 = trunc i64 %err.msg.len1247 to i32
  %err.msg.data1256 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1238, i32 0, i32 1
  %err.msg.data1257 = load ptr, ptr %err.msg.data1256, align 8
  %err.file.len1258 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1240, i32 0, i32 0
  %err.file.len1259 = load i64, ptr %err.file.len1258, align 8
  %err.file.len1260 = and i64 %err.file.len1259, 281474976710655
  %str.tag1261 = lshr i64 %err.file.len1259, 48
  %str.immortal1262 = icmp eq i64 %str.tag1261, 0
  br i1 %str.immortal1262, label %str_ok1264, label %str_gen_check1263

str_stale1252:                                    ; preds = %str_gen_check1250
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1251

str_gen_check1263:                                ; preds = %str_ok1251
  %arena.cur1266 = call ptr @dva_arena_current()
  %tag.valid1267 = call i1 @dva_arena_validate_tag(ptr %arena.cur1266, i64 %str.tag1261)
  br i1 %tag.valid1267, label %str_ok1264, label %str_stale1265

str_ok1264:                                       ; preds = %str_stale1265, %str_gen_check1263, %str_ok1251
  %err.file.len321268 = trunc i64 %err.file.len1260 to i32
  %err.file.data1269 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1240, i32 0, i32 1
  %err.file.data1270 = load ptr, ptr %err.file.data1269, align 8
  %err.thread.rec1271 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1272 = icmp ne ptr %err.thread.rec1271, null
  br i1 %err.is.thread1272, label %err.thread1273, label %err.normal1274

str_stale1265:                                    ; preds = %str_gen_check1263
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1264

err.thread1273:                                   ; preds = %str_ok1264
  %err.haserr.gep1275 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1271, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1275, align 8
  %err.err.gep1276 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1271, i32 0, i32 7
  store ptr %err.ptr1234, ptr %err.err.gep1276, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1274:                                   ; preds = %str_ok1264
  %err.panic.printf1277 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1236, i32 %err.msg.len321255, ptr %err.msg.data1257, i32 %err.file.len321268, ptr %err.file.data1270, i64 %err.line1242, i64 %err.col1244)
  call void @exit(i32 1)
  unreachable

choice.then1281:                                  ; preds = %unwrap.pos.41
  br label %loop.exit.40

choice.exit1282:                                  ; preds = %unwrap.pos.41
  %var.load1283 = load ptr, ptr %var.state, align 8
  %call.res1284 = call i64 @"dep_graph::pop_stack"(ptr %var.load1283)
  store i64 %call.res1284, ptr %var.w, align 8
  %var.load1285 = load ptr, ptr %var.ons, align 8
  %a.load1286 = load ptr, ptr %var.ons, align 8
  %a.null1287 = icmp eq ptr %a.load1286, null
  br i1 %a.null1287, label %a.create1288, label %a.after1289

a.create1288:                                     ; preds = %choice.exit1282
  %arena.cur1290 = call ptr @dva_arena_current()
  %a.create1291 = call ptr @dva_arena_alloc(ptr %arena.cur1290, i64 24)
  %arena.cur1292 = call ptr @dva_arena_current()
  %a.buf1293 = call ptr @dva_arena_alloc(ptr %arena.cur1292, i64 128)
  %a.len.gep1294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1291, i32 0, i32 0
  store i64 0, ptr %a.len.gep1294, align 8
  %a.data.gep1295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1291, i32 0, i32 1
  store ptr %a.buf1293, ptr %a.data.gep1295, align 8
  %a.cap.gep1296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1291, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1296, align 8
  store ptr %a.create1291, ptr %var.ons, align 8
  br label %a.after1289

a.after1289:                                      ; preds = %a.create1288, %choice.exit1282
  %a.load21297 = load ptr, ptr %var.ons, align 8
  %var.load1298 = load i64, ptr %var.w, align 8
  %a.wr.data1299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21297, i32 0, i32 1
  %a.wr.data1300 = load ptr, ptr %a.wr.data1299, align 8
  %a.elem.gep1301 = getelementptr i64, ptr %a.wr.data1300, i64 %var.load1298
  store i64 0, ptr %a.elem.gep1301, align 8
  %arena.cur1302 = call ptr @dva_arena_current()
  %a.wr.succ1303 = call ptr @dva_arena_alloc(ptr %arena.cur1302, i64 16)
  %tag.gep1304 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1303, i32 0, i32 0
  store i64 1, ptr %tag.gep1304, align 8
  %pay.gep1305 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1303, i32 0, i32 1
  store ptr null, ptr %pay.gep1305, align 8
  %tag.gep1306 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1303, i32 0, i32 0
  %tag.id1307 = load i64, ptr %tag.gep1306, align 8
  %tag.eq.one1308 = icmp eq i64 %tag.id1307, 1
  %tag.eq.two1309 = icmp eq i64 %tag.id1307, 2
  %is.pos1310 = or i1 %tag.eq.one1308, %tag.eq.two1309
  %pay.gep1311 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1303, i32 0, i32 1
  %payload.ptr1312 = load ptr, ptr %pay.gep1311, align 8
  br i1 %is.pos1310, label %choice.then1313, label %choice.else1314

choice.then1313:                                  ; preds = %a.after1289
  br label %choice.exit1315

choice.else1314:                                  ; preds = %a.after1289
  store ptr %payload.ptr1312, ptr %var._1316, align 8
  store ptr %payload.ptr1312, ptr %var._1317, align 8
  store ptr %payload.ptr1312, ptr %var._1318, align 8
  %err.code.gep1319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1312, i32 0, i32 0
  %err.code1320 = load i64, ptr %err.code.gep1319, align 8
  %err.msg.gep1321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1312, i32 0, i32 1
  %err.msg.struct1322 = load ptr, ptr %err.msg.gep1321, align 8
  %err.file.gep1323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1312, i32 0, i32 2
  %err.file.struct1324 = load ptr, ptr %err.file.gep1323, align 8
  %err.line.gep1325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1312, i32 0, i32 3
  %err.line1326 = load i64, ptr %err.line.gep1325, align 8
  %err.col.gep1327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1312, i32 0, i32 4
  %err.col1328 = load i64, ptr %err.col.gep1327, align 8
  %err.msg.len1329 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1322, i32 0, i32 0
  %err.msg.len1330 = load i64, ptr %err.msg.len1329, align 8
  %err.msg.len1331 = and i64 %err.msg.len1330, 281474976710655
  %str.tag1332 = lshr i64 %err.msg.len1330, 48
  %str.immortal1333 = icmp eq i64 %str.tag1332, 0
  br i1 %str.immortal1333, label %str_ok1335, label %str_gen_check1334

choice.exit1315:                                  ; preds = %err.abort1362, %choice.then1313
  %var.load1363 = load ptr, ptr %var.graph, align 8
  %fld.gep1364 = getelementptr inbounds { ptr, ptr }, ptr %var.load1363, i32 0, i32 0
  %fld.load1365 = load ptr, ptr %fld.gep1364, align 8
  %var.load1366 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1367 = icmp ne ptr %fld.load1365, null
  br i1 %a.rd.nonnull1367, label %a.rd.check1368, label %a.rd.err.null1370

str_gen_check1334:                                ; preds = %choice.else1314
  %arena.cur1337 = call ptr @dva_arena_current()
  %tag.valid1338 = call i1 @dva_arena_validate_tag(ptr %arena.cur1337, i64 %str.tag1332)
  br i1 %tag.valid1338, label %str_ok1335, label %str_stale1336

str_ok1335:                                       ; preds = %str_stale1336, %str_gen_check1334, %choice.else1314
  %err.msg.len321339 = trunc i64 %err.msg.len1331 to i32
  %err.msg.data1340 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1322, i32 0, i32 1
  %err.msg.data1341 = load ptr, ptr %err.msg.data1340, align 8
  %err.file.len1342 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1324, i32 0, i32 0
  %err.file.len1343 = load i64, ptr %err.file.len1342, align 8
  %err.file.len1344 = and i64 %err.file.len1343, 281474976710655
  %str.tag1345 = lshr i64 %err.file.len1343, 48
  %str.immortal1346 = icmp eq i64 %str.tag1345, 0
  br i1 %str.immortal1346, label %str_ok1348, label %str_gen_check1347

str_stale1336:                                    ; preds = %str_gen_check1334
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1335

str_gen_check1347:                                ; preds = %str_ok1335
  %arena.cur1350 = call ptr @dva_arena_current()
  %tag.valid1351 = call i1 @dva_arena_validate_tag(ptr %arena.cur1350, i64 %str.tag1345)
  br i1 %tag.valid1351, label %str_ok1348, label %str_stale1349

str_ok1348:                                       ; preds = %str_stale1349, %str_gen_check1347, %str_ok1335
  %err.file.len321352 = trunc i64 %err.file.len1344 to i32
  %err.file.data1353 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1324, i32 0, i32 1
  %err.file.data1354 = load ptr, ptr %err.file.data1353, align 8
  %err.thread.rec1355 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1356 = icmp ne ptr %err.thread.rec1355, null
  br i1 %err.is.thread1356, label %err.thread1357, label %err.normal1358

str_stale1349:                                    ; preds = %str_gen_check1347
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1348

err.thread1357:                                   ; preds = %str_ok1348
  %err.haserr.gep1359 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1355, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1359, align 8
  %err.err.gep1360 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1355, i32 0, i32 7
  store ptr %payload.ptr1312, ptr %err.err.gep1360, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1358:                                   ; preds = %str_ok1348
  %err.panic.printf1361 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1320, i32 %err.msg.len321339, ptr %err.msg.data1341, i32 %err.file.len321352, ptr %err.file.data1354, i64 %err.line1326, i64 %err.col1328)
  call void @exit(i32 1)
  unreachable

err.abort1362:                                    ; No predecessors!
  br label %choice.exit1315

a.rd.check1368:                                   ; preds = %choice.exit1315
  %a.rd.len1373 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1365, i32 0, i32 0
  %a.rd.len1374 = load i64, ptr %a.rd.len1373, align 8
  %a.rd.ge01375 = icmp sge i64 %var.load1366, 0
  %a.rd.lt1376 = icmp slt i64 %var.load1366, %a.rd.len1374
  %a.rd.bounds1377 = and i1 %a.rd.ge01375, %a.rd.lt1376
  br i1 %a.rd.bounds1377, label %a.rd.ok1369, label %a.rd.err.oob1371

a.rd.ok1369:                                      ; preds = %a.rd.check1368
  %a.rd.data1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1365, i32 0, i32 1
  %a.rd.data1379 = load ptr, ptr %a.rd.data1378, align 8
  %a.rd.elem.gep1380 = getelementptr i64, ptr %a.rd.data1379, i64 %var.load1366
  %a.rd.elem1381 = load i64, ptr %a.rd.elem.gep1380, align 8
  br label %a.rd.done1372

a.rd.err.null1370:                                ; preds = %choice.exit1315
  %arena.cur1382 = call ptr @dva_arena_current()
  %err.alloc1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 56)
  %err.code.gep1384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1384, align 8
  %err.msg.gep1385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1385, align 8
  %err.file.gep1386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1386, align 8
  %err.line.gep1387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 3
  store i64 0, ptr %err.line.gep1387, align 8
  %err.col.gep1388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 4
  store i64 0, ptr %err.col.gep1388, align 8
  %err.ctx.gep1389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 5
  %err.ctx0.gep1390 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1389, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1390, align 8
  %err.ctx1.gep1391 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1389, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1391, align 8
  %err.p2i1392 = ptrtoint ptr %err.alloc1383 to i64
  br label %a.rd.done1372

a.rd.err.oob1371:                                 ; preds = %a.rd.check1368
  %arena.cur1393 = call ptr @dva_arena_current()
  %err.alloc1394 = call ptr @dva_arena_alloc(ptr %arena.cur1393, i64 56)
  %err.code.gep1395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1395, align 8
  %err.msg.gep1396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1396, align 8
  %err.file.gep1397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1397, align 8
  %err.line.gep1398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 3
  store i64 0, ptr %err.line.gep1398, align 8
  %err.col.gep1399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 4
  store i64 0, ptr %err.col.gep1399, align 8
  %err.ctx.gep1400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1394, i32 0, i32 5
  %err.ctx0.gep1401 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1400, i32 0, i32 0
  store i64 %var.load1366, ptr %err.ctx0.gep1401, align 8
  %err.ctx1.gep1402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1400, i32 0, i32 1
  store i64 %a.rd.len1374, ptr %err.ctx1.gep1402, align 8
  %err.p2i1403 = ptrtoint ptr %err.alloc1394 to i64
  br label %a.rd.done1372

a.rd.done1372:                                    ; preds = %a.rd.err.oob1371, %a.rd.err.null1370, %a.rd.ok1369
  %a.rd.tag1404 = phi i1 [ true, %a.rd.ok1369 ], [ false, %a.rd.err.null1370 ], [ false, %a.rd.err.oob1371 ]
  %a.rd.pay1405 = phi i64 [ %a.rd.elem1381, %a.rd.ok1369 ], [ %err.p2i1392, %a.rd.err.null1370 ], [ %err.p2i1403, %a.rd.err.oob1371 ]
  %ram.tag1406 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1404, 0
  %ram.pay1407 = insertvalue { i1, i64 } %ram.tag1406, i64 %a.rd.pay1405, 1
  %unwrap.is_pos1408 = extractvalue { i1, i64 } %ram.pay1407, 0
  br i1 %unwrap.is_pos1408, label %unwrap.pos.42, label %unwrap.abort.42

unwrap.pos.42:                                    ; preds = %a.rd.done1372
  %unwrap.pay.pos1454 = extractvalue { i1, i64 } %ram.pay1407, 1
  %pay.ptr1455 = inttoptr i64 %unwrap.pay.pos1454 to ptr
  store ptr %pay.ptr1455, ptr %var.w_node, align 8
  %var.load1456 = load ptr, ptr %var.w_node, align 8
  %fld.gep1457 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1456, i32 0, i32 0
  %fld.load1458 = load ptr, ptr %fld.gep1457, align 8
  %a.load1459 = load ptr, ptr %var.scc_names, align 8
  %a.null1460 = icmp eq ptr %a.load1459, null
  br i1 %a.null1460, label %a.create1461, label %a.after1462

unwrap.abort.42:                                  ; preds = %a.rd.done1372
  %unwrap.pay.abort1409 = extractvalue { i1, i64 } %ram.pay1407, 1
  %err.ptr1410 = inttoptr i64 %unwrap.pay.abort1409 to ptr
  %err.code.gep1411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1410, i32 0, i32 0
  %err.code1412 = load i64, ptr %err.code.gep1411, align 8
  %err.msg.gep1413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1410, i32 0, i32 1
  %err.msg.struct1414 = load ptr, ptr %err.msg.gep1413, align 8
  %err.file.gep1415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1410, i32 0, i32 2
  %err.file.struct1416 = load ptr, ptr %err.file.gep1415, align 8
  %err.line.gep1417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1410, i32 0, i32 3
  %err.line1418 = load i64, ptr %err.line.gep1417, align 8
  %err.col.gep1419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1410, i32 0, i32 4
  %err.col1420 = load i64, ptr %err.col.gep1419, align 8
  %err.msg.len1421 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1414, i32 0, i32 0
  %err.msg.len1422 = load i64, ptr %err.msg.len1421, align 8
  %err.msg.len1423 = and i64 %err.msg.len1422, 281474976710655
  %str.tag1424 = lshr i64 %err.msg.len1422, 48
  %str.immortal1425 = icmp eq i64 %str.tag1424, 0
  br i1 %str.immortal1425, label %str_ok1427, label %str_gen_check1426

str_gen_check1426:                                ; preds = %unwrap.abort.42
  %arena.cur1429 = call ptr @dva_arena_current()
  %tag.valid1430 = call i1 @dva_arena_validate_tag(ptr %arena.cur1429, i64 %str.tag1424)
  br i1 %tag.valid1430, label %str_ok1427, label %str_stale1428

str_ok1427:                                       ; preds = %str_stale1428, %str_gen_check1426, %unwrap.abort.42
  %err.msg.len321431 = trunc i64 %err.msg.len1423 to i32
  %err.msg.data1432 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1414, i32 0, i32 1
  %err.msg.data1433 = load ptr, ptr %err.msg.data1432, align 8
  %err.file.len1434 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1416, i32 0, i32 0
  %err.file.len1435 = load i64, ptr %err.file.len1434, align 8
  %err.file.len1436 = and i64 %err.file.len1435, 281474976710655
  %str.tag1437 = lshr i64 %err.file.len1435, 48
  %str.immortal1438 = icmp eq i64 %str.tag1437, 0
  br i1 %str.immortal1438, label %str_ok1440, label %str_gen_check1439

str_stale1428:                                    ; preds = %str_gen_check1426
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1427

str_gen_check1439:                                ; preds = %str_ok1427
  %arena.cur1442 = call ptr @dva_arena_current()
  %tag.valid1443 = call i1 @dva_arena_validate_tag(ptr %arena.cur1442, i64 %str.tag1437)
  br i1 %tag.valid1443, label %str_ok1440, label %str_stale1441

str_ok1440:                                       ; preds = %str_stale1441, %str_gen_check1439, %str_ok1427
  %err.file.len321444 = trunc i64 %err.file.len1436 to i32
  %err.file.data1445 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1416, i32 0, i32 1
  %err.file.data1446 = load ptr, ptr %err.file.data1445, align 8
  %err.thread.rec1447 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1448 = icmp ne ptr %err.thread.rec1447, null
  br i1 %err.is.thread1448, label %err.thread1449, label %err.normal1450

str_stale1441:                                    ; preds = %str_gen_check1439
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1440

err.thread1449:                                   ; preds = %str_ok1440
  %err.haserr.gep1451 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1447, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1451, align 8
  %err.err.gep1452 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1447, i32 0, i32 7
  store ptr %err.ptr1410, ptr %err.err.gep1452, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1450:                                   ; preds = %str_ok1440
  %err.panic.printf1453 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1412, i32 %err.msg.len321431, ptr %err.msg.data1433, i32 %err.file.len321444, ptr %err.file.data1446, i64 %err.line1418, i64 %err.col1420)
  call void @exit(i32 1)
  unreachable

a.create1461:                                     ; preds = %unwrap.pos.42
  %arena.cur1463 = call ptr @dva_arena_current()
  %a.create1464 = call ptr @dva_arena_alloc(ptr %arena.cur1463, i64 24)
  %arena.cur1465 = call ptr @dva_arena_current()
  %a.buf1466 = call ptr @dva_arena_alloc(ptr %arena.cur1465, i64 128)
  %a.len.gep1467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1464, i32 0, i32 0
  store i64 0, ptr %a.len.gep1467, align 8
  %a.data.gep1468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1464, i32 0, i32 1
  store ptr %a.buf1466, ptr %a.data.gep1468, align 8
  %a.cap.gep1469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1464, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1469, align 8
  store ptr %a.create1464, ptr %var.scc_names, align 8
  br label %a.after1462

a.after1462:                                      ; preds = %a.create1461, %unwrap.pos.42
  %a.load21470 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1462
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21470, i32 0, i32 0
  %a.len1471 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21470, i32 0, i32 2
  %a.cap1472 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1471, %a.cap1472
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21470)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21470, i32 0, i32 1
  %a.cur.data1473 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21470, i32 0, i32 0
  %a.cur.len1474 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1475 = getelementptr i64, ptr %a.cur.data1473, i64 %a.cur.len1474
  %a.elem.p2i = ptrtoint ptr %fld.load1458 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep1475, align 8
  %a.next.len = add i64 %a.cur.len1474, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21470, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1476 = load i64, ptr %var.w, align 8
  %var.load1477 = load i64, ptr %var.u, align 8
  %cmptmp1478 = icmp eq i64 %var.load1476, %var.load1477
  br i1 %cmptmp1478, label %choice.then1479, label %choice.exit1480

choice.then1479:                                  ; preds = %a.store
  br label %loop.exit.40

choice.exit1480:                                  ; preds = %a.store
  br label %loop.latch.40

a.create1486:                                     ; preds = %loop.exit.40
  %arena.cur1488 = call ptr @dva_arena_current()
  %a.create1489 = call ptr @dva_arena_alloc(ptr %arena.cur1488, i64 24)
  %arena.cur1490 = call ptr @dva_arena_current()
  %a.buf1491 = call ptr @dva_arena_alloc(ptr %arena.cur1490, i64 128)
  %a.len.gep1492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1489, i32 0, i32 0
  store i64 0, ptr %a.len.gep1492, align 8
  %a.data.gep1493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1489, i32 0, i32 1
  store ptr %a.buf1491, ptr %a.data.gep1493, align 8
  %a.cap.gep1494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1489, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1494, align 8
  store ptr %a.create1489, ptr %var.scc_names, align 8
  br label %a.after1487

a.after1487:                                      ; preds = %a.create1486, %loop.exit.40
  %a.load21495 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21495, i32 0, i32 0
  %a.len.query1496 = load i64, ptr %a.len.query, align 8
  %cmptmp1497 = icmp sgt i64 %a.len.query1496, 1
  br i1 %cmptmp1497, label %or.43.then, label %or.43.else

or.43.then:                                       ; preds = %a.after1487
  br label %or.43.exit

or.43.else:                                       ; preds = %a.after1487
  %var.load1498 = load i1, ptr %var.is_self_rec, align 1
  br label %or.43.exit

or.43.exit:                                       ; preds = %or.43.else, %or.43.then
  %or.43.phi = phi i1 [ %cmptmp1497, %or.43.then ], [ %var.load1498, %or.43.else ]
  store i1 %or.43.phi, ptr %var.is_rec, align 1
  %var.load1499 = load ptr, ptr %var.state, align 8
  %var.load1500 = load ptr, ptr %var.scc_names, align 8
  %a.load1501 = load ptr, ptr %var.scc_names, align 8
  %a.null1502 = icmp eq ptr %a.load1501, null
  br i1 %a.null1502, label %a.create1503, label %a.after1504

a.create1503:                                     ; preds = %or.43.exit
  %arena.cur1505 = call ptr @dva_arena_current()
  %a.create1506 = call ptr @dva_arena_alloc(ptr %arena.cur1505, i64 24)
  %arena.cur1507 = call ptr @dva_arena_current()
  %a.buf1508 = call ptr @dva_arena_alloc(ptr %arena.cur1507, i64 128)
  %a.len.gep1509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 0
  store i64 0, ptr %a.len.gep1509, align 8
  %a.data.gep1510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 1
  store ptr %a.buf1508, ptr %a.data.gep1510, align 8
  %a.cap.gep1511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1506, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1511, align 8
  store ptr %a.create1506, ptr %var.scc_names, align 8
  br label %a.after1504

a.after1504:                                      ; preds = %a.create1503, %or.43.exit
  %a.load21512 = load ptr, ptr %var.scc_names, align 8
  %var.load1513 = load i1, ptr %var.is_rec, align 1
  %arena.cur1514 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21512, ptr %rec.fld, align 8
  %rec.fld1515 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1513, ptr %rec.fld1515, align 1
  %fld.gep1516 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1499, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1516, align 8
  br label %a.check1517

a.check1517:                                      ; preds = %a.after1504
  %a.len1520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1521 = load i64, ptr %a.len1520, align 8
  %a.cap1522 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1523 = load i64, ptr %a.cap1522, align 8
  %a.needs.grow1524 = icmp eq i64 %a.len1521, %a.cap1523
  br i1 %a.needs.grow1524, label %a.grow1518, label %a.store1519

a.grow1518:                                       ; preds = %a.check1517
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1519

a.store1519:                                      ; preds = %a.grow1518, %a.check1517
  %a.cur.data1525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1526 = load ptr, ptr %a.cur.data1525, align 8
  %a.cur.len1527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1528 = load i64, ptr %a.cur.len1527, align 8
  %a.elem.gep1529 = getelementptr i64, ptr %a.cur.data1526, i64 %a.cur.len1528
  %a.elem.p2i1530 = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i1530, ptr %a.elem.gep1529, align 8
  %a.next.len1531 = add i64 %a.cur.len1528, 1
  %b.len.gep1532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1531, ptr %b.len.gep1532, align 8
  br label %choice.exit1160
}

define ptr @"dep_graph::tarjan_scc"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._29 = alloca ptr, align 8
  %var._27 = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.44 = alloca i64, align 8
  %loop.idx.44 = alloca i64, align 8
  %var.state = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  %var.load = load ptr, ptr %var.graph, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query1, ptr %var.n, align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %call.res = call ptr @"dep_graph::init_tarjan_state"(i64 %var.load2)
  store ptr %call.res, ptr %var.state, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.header.44:                                   ; preds = %loop.latch.44, %entry
  %counter.load = load i64, ptr %loop.idx.44, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.44, label %loop.exit.nat.44

loop.body.44:                                     ; preds = %loop.header.44
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.44, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.state, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.idxs, align 8
  %var.load7 = load ptr, ptr %var.idxs, align 8
  %a.load = load ptr, ptr %var.idxs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.44:                                 ; preds = %loop.header.44
  br label %loop.exit.44

loop.latch.44:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.44, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.exit.44:                                     ; preds = %loop.exit.nat.44
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  ret ptr %fld.load38

a.create:                                         ; preds = %loop.body.44
  %arena.cur = call ptr @dva_arena_current()
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur9 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create8, ptr %var.idxs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.44
  %a.load2 = load ptr, ptr %var.idxs, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len11 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load10, 0
  %a.rd.lt = icmp slt i64 %var.load10, %a.rd.len11
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data12 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data12, i64 %var.load10
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur13 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 347, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 21, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur14 = call ptr @dva_arena_current()
  %err.alloc15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 56)
  %err.code.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 0
  store i64 4011, ptr %err.code.gep16, align 8
  %err.msg.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep17, align 8
  %err.file.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep18, align 8
  %err.line.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 3
  store i64 347, ptr %err.line.gep19, align 8
  %err.col.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 4
  store i64 21, ptr %err.col.gep20, align 8
  %err.ctx.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 5
  %err.ctx0.gep22 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep21, i32 0, i32 0
  store i64 %var.load10, ptr %err.ctx0.gep22, align 8
  %err.ctx1.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep21, i32 0, i32 1
  store i64 %a.rd.len11, ptr %err.ctx1.gep23, align 8
  %err.p2i24 = ptrtoint ptr %err.alloc15 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i24, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag25 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag25, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay26, ptr %var._27, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay28 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay28 to ptr
  store ptr %pay.ptr, ptr %var._29, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %ram.pay26, %choice.then ], [ -1, %choice.else ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load30 = load i64, ptr %var.idx, align 8
  %cmptmp = icmp slt i64 %var.load30, 0
  br i1 %cmptmp, label %choice.then31, label %choice.exit32

choice.then31:                                    ; preds = %choice.exit
  %var.load33 = load ptr, ptr %var.graph, align 8
  %var.load34 = load ptr, ptr %var.state, align 8
  %var.load35 = load i64, ptr %var.i, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load33, ptr %var.load34, i64 %var.load35)
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.then31, %choice.exit
  br label %loop.latch.44
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
