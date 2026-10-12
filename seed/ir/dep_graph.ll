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
  %var.ex = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var.varg = alloca ptr, align 8
  %var._1801 = alloca ptr, align 8
  %var._1798 = alloca ptr, align 8
  %var._1746 = alloca i64, align 8
  %var._i1745 = alloca i64, align 8
  %var.i1741 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.v1735 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var.v1596 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var.a1350 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.fld = alloca ptr, align 8
  %var._1169 = alloca ptr, align 8
  %var._1166 = alloca ptr, align 8
  %var._1114 = alloca i64, align 8
  %var._i1113 = alloca i64, align 8
  %var.i1109 = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var.cv = alloca ptr, align 8
  %var._1058 = alloca ptr, align 8
  %var._1055 = alloca ptr, align 8
  %var.k = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var.br = alloca ptr, align 8
  %var._802 = alloca ptr, align 8
  %var._799 = alloca ptr, align 8
  %var._747 = alloca i64, align 8
  %var._i746 = alloca i64, align 8
  %var.i742 = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var._560 = alloca ptr, align 8
  %var._557 = alloca ptr, align 8
  %var._505 = alloca i64, align 8
  %var._i504 = alloca i64, align 8
  %var.i500 = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._380 = alloca ptr, align 8
  %var._i379 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._217 = alloca ptr, align 8
  %var._214 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var.v = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next2090, %a.after2116, %a.after2080, %a.after2044, %a.after2008, %a.after1969, %a.after1933, %a.after1897, %a.after1863, %loop.exit.15, %a.after1719, %choice.exit1584, %a.after1530, %a.after1465, %a.after1400, %a.after1334, %a.after1269, %loop.exit.13, %loop.exit.10, %loop.exit.9, %a.after465, %a.after341, %a.after305, %loop.exit.7, %choice.exit34
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
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
  store ptr %payload.ptr58, ptr %var.c, align 8
  %var.load59 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len60 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len61 = load i64, ptr %eq.lhs.len60, align 8
  %eq.lhs.len62 = and i64 %eq.lhs.len61, 281474976710655
  %str.tag63 = lshr i64 %eq.lhs.len61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

choice.next53:                                    ; preds = %choice.next
  %tag.gep251 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id252 = load i64, ptr %tag.gep251, align 8
  %tag.match253 = icmp eq i64 %tag.id252, 5
  br i1 %tag.match253, label %choice.case249, label %choice.next250

str_gen_check65:                                  ; preds = %choice.case52
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %choice.case52
  %eq.rhs.len70 = load i64, ptr @str.4.struct, align 8
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
  %eq.lhs.data83 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data83, align 8
  %eq.rhs.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp86 = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data85, i64 %eq.lhs.len62)
  %eq.cmp.zero87 = icmp eq i32 %eq.memcmp86, 0
  br label %str.eq.merge82

str.eq.else81:                                    ; preds = %str_ok75
  br label %str.eq.merge82

str.eq.merge82:                                   ; preds = %str.eq.else81, %str.eq.then80
  %str.eq.result88 = phi i1 [ %eq.cmp.zero87, %str.eq.then80 ], [ false, %str.eq.else81 ]
  %str.neq89 = xor i1 %str.eq.result88, true
  br i1 %str.neq89, label %and.5.then, label %and.5.else

and.5.then:                                       ; preds = %str.eq.merge82
  %var.load90 = load ptr, ptr %var.locals, align 8
  %a.load91 = load ptr, ptr %var.locals, align 8
  %a.null92 = icmp eq ptr %a.load91, null
  br i1 %a.null92, label %a.create93, label %a.after94

and.5.else:                                       ; preds = %str.eq.merge82
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %a.after94
  %and.5.phi = phi i1 [ %nottmp107, %a.after94 ], [ %str.neq89, %and.5.else ]
  br i1 %and.5.phi, label %and.6.then, label %and.6.else

a.create93:                                       ; preds = %and.5.then
  %arena.cur95 = call ptr @dva_arena_current()
  %a.create96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 24)
  %arena.cur97 = call ptr @dva_arena_current()
  %a.buf98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 128)
  %a.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 0
  store i64 0, ptr %a.len.gep99, align 8
  %a.data.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 1
  store ptr %a.buf98, ptr %a.data.gep100, align 8
  %a.cap.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create96, i32 0, i32 2
  store i64 16, ptr %a.cap.gep101, align 8
  store ptr %a.create96, ptr %var.locals, align 8
  br label %a.after94

a.after94:                                        ; preds = %a.create93, %and.5.then
  %a.load2102 = load ptr, ptr %var.locals, align 8
  %var.load103 = load ptr, ptr %var.c, align 8
  %fld.gep104 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load103, i32 0, i32 0
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %call.res106 = call i1 @"dep_graph::has_name"(ptr %a.load2102, ptr %fld.load105)
  %nottmp107 = xor i1 %call.res106, true
  br label %and.5.exit

and.6.then:                                       ; preds = %and.5.exit
  %var.load108 = load ptr, ptr %var.refs, align 8
  %a.load109 = load ptr, ptr %var.refs, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

and.6.else:                                       ; preds = %and.5.exit
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %a.after112
  %and.6.phi = phi i1 [ %nottmp125, %a.after112 ], [ %and.5.phi, %and.6.else ]
  br i1 %and.6.phi, label %choice.then126, label %choice.exit127

a.create111:                                      ; preds = %and.6.then
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
  store ptr %a.create114, ptr %var.refs, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %and.6.then
  %a.load2120 = load ptr, ptr %var.refs, align 8
  %var.load121 = load ptr, ptr %var.c, align 8
  %fld.gep122 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load121, i32 0, i32 0
  %fld.load123 = load ptr, ptr %fld.gep122, align 8
  %call.res124 = call i1 @"dep_graph::has_name"(ptr %a.load2120, ptr %fld.load123)
  %nottmp125 = xor i1 %call.res124, true
  br label %and.6.exit

choice.then126:                                   ; preds = %and.6.exit
  %var.load128 = load ptr, ptr %var.c, align 8
  %fld.gep129 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load128, i32 0, i32 0
  %fld.load130 = load ptr, ptr %fld.gep129, align 8
  %a.load131 = load ptr, ptr %var.refs, align 8
  %a.null132 = icmp eq ptr %a.load131, null
  br i1 %a.null132, label %a.create133, label %a.after134

choice.exit127:                                   ; preds = %a.store145, %and.6.exit
  %var.load159 = load ptr, ptr %var.c, align 8
  %fld.gep160 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load159, i32 0, i32 1
  %fld.load161 = load ptr, ptr %fld.gep160, align 8
  %var.load162 = load ptr, ptr %var.locals, align 8
  %a.load163 = load ptr, ptr %var.locals, align 8
  %a.null164 = icmp eq ptr %a.load163, null
  br i1 %a.null164, label %a.create165, label %a.after166

a.create133:                                      ; preds = %choice.then126
  %arena.cur135 = call ptr @dva_arena_current()
  %a.create136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 24)
  %arena.cur137 = call ptr @dva_arena_current()
  %a.buf138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 128)
  %a.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 0
  store i64 0, ptr %a.len.gep139, align 8
  %a.data.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 1
  store ptr %a.buf138, ptr %a.data.gep140, align 8
  %a.cap.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 2
  store i64 16, ptr %a.cap.gep141, align 8
  store ptr %a.create136, ptr %var.refs, align 8
  br label %a.after134

a.after134:                                       ; preds = %a.create133, %choice.then126
  %a.load2142 = load ptr, ptr %var.refs, align 8
  br label %a.check143

a.check143:                                       ; preds = %a.after134
  %a.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2142, i32 0, i32 0
  %a.len147 = load i64, ptr %a.len146, align 8
  %a.cap148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2142, i32 0, i32 2
  %a.cap149 = load i64, ptr %a.cap148, align 8
  %a.needs.grow150 = icmp eq i64 %a.len147, %a.cap149
  br i1 %a.needs.grow150, label %a.grow144, label %a.store145

a.grow144:                                        ; preds = %a.check143
  call void @dva_array_grow(ptr %a.load2142)
  br label %a.store145

a.store145:                                       ; preds = %a.grow144, %a.check143
  %a.cur.data151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2142, i32 0, i32 1
  %a.cur.data152 = load ptr, ptr %a.cur.data151, align 8
  %a.cur.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2142, i32 0, i32 0
  %a.cur.len154 = load i64, ptr %a.cur.len153, align 8
  %a.elem.gep155 = getelementptr i64, ptr %a.cur.data152, i64 %a.cur.len154
  %a.elem.p2i156 = ptrtoint ptr %fld.load130 to i64
  store i64 %a.elem.p2i156, ptr %a.elem.gep155, align 8
  %a.next.len157 = add i64 %a.cur.len154, 1
  %b.len.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2142, i32 0, i32 0
  store i64 %a.next.len157, ptr %b.len.gep158, align 8
  br label %choice.exit127

a.create165:                                      ; preds = %choice.exit127
  %arena.cur167 = call ptr @dva_arena_current()
  %a.create168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 24)
  %arena.cur169 = call ptr @dva_arena_current()
  %a.buf170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 128)
  %a.len.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create168, i32 0, i32 0
  store i64 0, ptr %a.len.gep171, align 8
  %a.data.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create168, i32 0, i32 1
  store ptr %a.buf170, ptr %a.data.gep172, align 8
  %a.cap.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create168, i32 0, i32 2
  store i64 16, ptr %a.cap.gep173, align 8
  store ptr %a.create168, ptr %var.locals, align 8
  br label %a.after166

a.after166:                                       ; preds = %a.create165, %choice.exit127
  %a.load2174 = load ptr, ptr %var.locals, align 8
  %var.load175 = load ptr, ptr %var.refs, align 8
  %a.load176 = load ptr, ptr %var.refs, align 8
  %a.null177 = icmp eq ptr %a.load176, null
  br i1 %a.null177, label %a.create178, label %a.after179

a.create178:                                      ; preds = %a.after166
  %arena.cur180 = call ptr @dva_arena_current()
  %a.create181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 24)
  %arena.cur182 = call ptr @dva_arena_current()
  %a.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 128)
  %a.len.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 0
  store i64 0, ptr %a.len.gep184, align 8
  %a.data.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 1
  store ptr %a.buf183, ptr %a.data.gep185, align 8
  %a.cap.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 2
  store i64 16, ptr %a.cap.gep186, align 8
  store ptr %a.create181, ptr %var.refs, align 8
  br label %a.after179

a.after179:                                       ; preds = %a.create178, %a.after166
  %a.load2187 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load161, ptr %a.load2174, ptr %a.load2187)
  %var.load188 = load ptr, ptr %var.c, align 8
  %fld.gep189 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load188, i32 0, i32 2
  %fld.load190 = load ptr, ptr %fld.gep189, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load190, i32 0, i32 0
  %a.len.query191 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %a.after179
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query191
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load192 = load ptr, ptr %var.c, align 8
  %fld.gep193 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load192, i32 0, i32 2
  %fld.load194 = load ptr, ptr %fld.gep193, align 8
  %var.load195 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load194, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %a.after240
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  br label %choice.exit

a.rd.check:                                       ; preds = %loop.body.7
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load194, i32 0, i32 0
  %a.rd.len196 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load195, 0
  %a.rd.lt = icmp slt i64 %var.load195, %a.rd.len196
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load194, i32 0, i32 1
  %a.rd.data197 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data197, i64 %var.load195
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.7
  %arena.cur198 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 56)
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
  %arena.cur199 = call ptr @dva_arena_current()
  %err.alloc200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 56)
  %err.code.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 0
  store i64 4011, ptr %err.code.gep201, align 8
  %err.msg.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep202, align 8
  %err.file.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep203, align 8
  %err.line.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 3
  store i64 0, ptr %err.line.gep204, align 8
  %err.col.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 4
  store i64 0, ptr %err.col.gep205, align 8
  %err.ctx.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc200, i32 0, i32 5
  %err.ctx0.gep207 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep206, i32 0, i32 0
  store i64 %var.load195, ptr %err.ctx0.gep207, align 8
  %err.ctx1.gep208 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep206, i32 0, i32 1
  store i64 %a.rd.len196, ptr %err.ctx1.gep208, align 8
  %err.p2i209 = ptrtoint ptr %err.alloc200 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i209, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag210 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag210, label %choice.then211, label %choice.else

choice.then211:                                   ; preds = %a.rd.done
  %ram.pay213 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay213 to ptr
  store ptr %pay.ptr, ptr %var._214, align 8
  br label %choice.exit212

choice.else:                                      ; preds = %a.rd.done
  %ram.pay215 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr216 = inttoptr i64 %ram.pay215 to ptr
  store ptr %pay.ptr216, ptr %var._217, align 8
  %arena.cur218 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %tag.gep219 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep219, align 8
  %pay.gep220 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur221 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep220, align 8
  br label %choice.exit212

choice.exit212:                                   ; preds = %choice.else, %choice.then211
  %choice.res = phi ptr [ %pay.ptr, %choice.then211 ], [ %enum.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.arg, align 8
  %var.load222 = load ptr, ptr %var.arg, align 8
  %var.load223 = load ptr, ptr %var.locals, align 8
  %a.load224 = load ptr, ptr %var.locals, align 8
  %a.null225 = icmp eq ptr %a.load224, null
  br i1 %a.null225, label %a.create226, label %a.after227

a.create226:                                      ; preds = %choice.exit212
  %arena.cur228 = call ptr @dva_arena_current()
  %a.create229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 24)
  %arena.cur230 = call ptr @dva_arena_current()
  %a.buf231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 128)
  %a.len.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 0
  store i64 0, ptr %a.len.gep232, align 8
  %a.data.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 1
  store ptr %a.buf231, ptr %a.data.gep233, align 8
  %a.cap.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep234, align 8
  store ptr %a.create229, ptr %var.locals, align 8
  br label %a.after227

a.after227:                                       ; preds = %a.create226, %choice.exit212
  %a.load2235 = load ptr, ptr %var.locals, align 8
  %var.load236 = load ptr, ptr %var.refs, align 8
  %a.load237 = load ptr, ptr %var.refs, align 8
  %a.null238 = icmp eq ptr %a.load237, null
  br i1 %a.null238, label %a.create239, label %a.after240

a.create239:                                      ; preds = %a.after227
  %arena.cur241 = call ptr @dva_arena_current()
  %a.create242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 24)
  %arena.cur243 = call ptr @dva_arena_current()
  %a.buf244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 128)
  %a.len.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create242, i32 0, i32 0
  store i64 0, ptr %a.len.gep245, align 8
  %a.data.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create242, i32 0, i32 1
  store ptr %a.buf244, ptr %a.data.gep246, align 8
  %a.cap.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create242, i32 0, i32 2
  store i64 16, ptr %a.cap.gep247, align 8
  store ptr %a.create242, ptr %var.refs, align 8
  br label %a.after240

a.after240:                                       ; preds = %a.create239, %a.after227
  %a.load2248 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load222, ptr %a.load2235, ptr %a.load2248)
  br label %loop.latch.7

choice.case249:                                   ; preds = %choice.next53
  %pay.gep254 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr255 = load ptr, ptr %pay.gep254, align 8
  store ptr %payload.ptr255, ptr %var.b, align 8
  %var.load256 = load ptr, ptr %var.b, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load256, i32 0, i32 1
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.locals, align 8
  %a.load260 = load ptr, ptr %var.locals, align 8
  %a.null261 = icmp eq ptr %a.load260, null
  br i1 %a.null261, label %a.create262, label %a.after263

choice.next250:                                   ; preds = %choice.next53
  %tag.gep316 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id317 = load i64, ptr %tag.gep316, align 8
  %tag.match318 = icmp eq i64 %tag.id317, 24
  br i1 %tag.match318, label %choice.case314, label %choice.next315

a.create262:                                      ; preds = %choice.case249
  %arena.cur264 = call ptr @dva_arena_current()
  %a.create265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 24)
  %arena.cur266 = call ptr @dva_arena_current()
  %a.buf267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 128)
  %a.len.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 0
  store i64 0, ptr %a.len.gep268, align 8
  %a.data.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 1
  store ptr %a.buf267, ptr %a.data.gep269, align 8
  %a.cap.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 2
  store i64 16, ptr %a.cap.gep270, align 8
  store ptr %a.create265, ptr %var.locals, align 8
  br label %a.after263

a.after263:                                       ; preds = %a.create262, %choice.case249
  %a.load2271 = load ptr, ptr %var.locals, align 8
  %var.load272 = load ptr, ptr %var.refs, align 8
  %a.load273 = load ptr, ptr %var.refs, align 8
  %a.null274 = icmp eq ptr %a.load273, null
  br i1 %a.null274, label %a.create275, label %a.after276

a.create275:                                      ; preds = %a.after263
  %arena.cur277 = call ptr @dva_arena_current()
  %a.create278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 24)
  %arena.cur279 = call ptr @dva_arena_current()
  %a.buf280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 128)
  %a.len.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 0
  store i64 0, ptr %a.len.gep281, align 8
  %a.data.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 1
  store ptr %a.buf280, ptr %a.data.gep282, align 8
  %a.cap.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create278, i32 0, i32 2
  store i64 16, ptr %a.cap.gep283, align 8
  store ptr %a.create278, ptr %var.refs, align 8
  br label %a.after276

a.after276:                                       ; preds = %a.create275, %a.after263
  %a.load2284 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load258, ptr %a.load2271, ptr %a.load2284)
  %var.load285 = load ptr, ptr %var.b, align 8
  %fld.gep286 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load285, i32 0, i32 2
  %fld.load287 = load ptr, ptr %fld.gep286, align 8
  %var.load288 = load ptr, ptr %var.locals, align 8
  %a.load289 = load ptr, ptr %var.locals, align 8
  %a.null290 = icmp eq ptr %a.load289, null
  br i1 %a.null290, label %a.create291, label %a.after292

a.create291:                                      ; preds = %a.after276
  %arena.cur293 = call ptr @dva_arena_current()
  %a.create294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 24)
  %arena.cur295 = call ptr @dva_arena_current()
  %a.buf296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 128)
  %a.len.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 0
  store i64 0, ptr %a.len.gep297, align 8
  %a.data.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 1
  store ptr %a.buf296, ptr %a.data.gep298, align 8
  %a.cap.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 2
  store i64 16, ptr %a.cap.gep299, align 8
  store ptr %a.create294, ptr %var.locals, align 8
  br label %a.after292

a.after292:                                       ; preds = %a.create291, %a.after276
  %a.load2300 = load ptr, ptr %var.locals, align 8
  %var.load301 = load ptr, ptr %var.refs, align 8
  %a.load302 = load ptr, ptr %var.refs, align 8
  %a.null303 = icmp eq ptr %a.load302, null
  br i1 %a.null303, label %a.create304, label %a.after305

a.create304:                                      ; preds = %a.after292
  %arena.cur306 = call ptr @dva_arena_current()
  %a.create307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 24)
  %arena.cur308 = call ptr @dva_arena_current()
  %a.buf309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 128)
  %a.len.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 0
  store i64 0, ptr %a.len.gep310, align 8
  %a.data.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 1
  store ptr %a.buf309, ptr %a.data.gep311, align 8
  %a.cap.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 2
  store i64 16, ptr %a.cap.gep312, align 8
  store ptr %a.create307, ptr %var.refs, align 8
  br label %a.after305

a.after305:                                       ; preds = %a.create304, %a.after292
  %a.load2313 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load287, ptr %a.load2300, ptr %a.load2313)
  br label %choice.exit

choice.case314:                                   ; preds = %choice.next250
  %pay.gep319 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr320 = load ptr, ptr %pay.gep319, align 8
  store ptr %payload.ptr320, ptr %var.u, align 8
  %var.load321 = load ptr, ptr %var.u, align 8
  %fld.gep322 = getelementptr inbounds { ptr, ptr }, ptr %var.load321, i32 0, i32 1
  %fld.load323 = load ptr, ptr %fld.gep322, align 8
  %var.load324 = load ptr, ptr %var.locals, align 8
  %a.load325 = load ptr, ptr %var.locals, align 8
  %a.null326 = icmp eq ptr %a.load325, null
  br i1 %a.null326, label %a.create327, label %a.after328

choice.next315:                                   ; preds = %choice.next250
  %tag.gep352 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id353 = load i64, ptr %tag.gep352, align 8
  %tag.match354 = icmp eq i64 %tag.id353, 14
  br i1 %tag.match354, label %choice.case350, label %choice.next351

a.create327:                                      ; preds = %choice.case314
  %arena.cur329 = call ptr @dva_arena_current()
  %a.create330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 24)
  %arena.cur331 = call ptr @dva_arena_current()
  %a.buf332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 128)
  %a.len.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 0
  store i64 0, ptr %a.len.gep333, align 8
  %a.data.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 1
  store ptr %a.buf332, ptr %a.data.gep334, align 8
  %a.cap.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 2
  store i64 16, ptr %a.cap.gep335, align 8
  store ptr %a.create330, ptr %var.locals, align 8
  br label %a.after328

a.after328:                                       ; preds = %a.create327, %choice.case314
  %a.load2336 = load ptr, ptr %var.locals, align 8
  %var.load337 = load ptr, ptr %var.refs, align 8
  %a.load338 = load ptr, ptr %var.refs, align 8
  %a.null339 = icmp eq ptr %a.load338, null
  br i1 %a.null339, label %a.create340, label %a.after341

a.create340:                                      ; preds = %a.after328
  %arena.cur342 = call ptr @dva_arena_current()
  %a.create343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 24)
  %arena.cur344 = call ptr @dva_arena_current()
  %a.buf345 = call ptr @dva_arena_alloc(ptr %arena.cur344, i64 128)
  %a.len.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create343, i32 0, i32 0
  store i64 0, ptr %a.len.gep346, align 8
  %a.data.gep347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create343, i32 0, i32 1
  store ptr %a.buf345, ptr %a.data.gep347, align 8
  %a.cap.gep348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create343, i32 0, i32 2
  store i64 16, ptr %a.cap.gep348, align 8
  store ptr %a.create343, ptr %var.refs, align 8
  br label %a.after341

a.after341:                                       ; preds = %a.create340, %a.after328
  %a.load2349 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load323, ptr %a.load2336, ptr %a.load2349)
  br label %choice.exit

choice.case350:                                   ; preds = %choice.next315
  %pay.gep355 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr356 = load ptr, ptr %pay.gep355, align 8
  store ptr %payload.ptr356, ptr %var.fe, align 8
  %var.load357 = load ptr, ptr %var.locals, align 8
  %a.load358 = load ptr, ptr %var.locals, align 8
  %a.null359 = icmp eq ptr %a.load358, null
  br i1 %a.null359, label %a.create360, label %a.after361

choice.next351:                                   ; preds = %choice.next315
  %tag.gep476 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id477 = load i64, ptr %tag.gep476, align 8
  %tag.match478 = icmp eq i64 %tag.id477, 8
  br i1 %tag.match478, label %choice.case474, label %choice.next475

a.create360:                                      ; preds = %choice.case350
  %arena.cur362 = call ptr @dva_arena_current()
  %a.create363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 24)
  %arena.cur364 = call ptr @dva_arena_current()
  %a.buf365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 128)
  %a.len.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 0
  store i64 0, ptr %a.len.gep366, align 8
  %a.data.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 1
  store ptr %a.buf365, ptr %a.data.gep367, align 8
  %a.cap.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 2
  store i64 16, ptr %a.cap.gep368, align 8
  store ptr %a.create363, ptr %var.locals, align 8
  br label %a.after361

a.after361:                                       ; preds = %a.create360, %choice.case350
  %a.load2369 = load ptr, ptr %var.locals, align 8
  %call.res370 = call ptr @"dep_graph::copy_names"(ptr %a.load2369)
  store ptr %call.res370, ptr %var.fn_locals, align 8
  %var.load371 = load ptr, ptr %var.fe, align 8
  %fld.gep372 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load371, i32 0, i32 0
  %fld.load373 = load ptr, ptr %fld.gep372, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load373, i32 0, i32 0
  %arr.cycle.len374 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load373, i32 0, i32 1
  %arr.cycle.data375 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after361
  %counter.load376 = load i64, ptr %loop.idx.8, align 8
  %loop.cond377 = icmp slt i64 %counter.load376, %arr.cycle.len374
  br i1 %loop.cond377, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i378 = sub i64 %counter.load376, 0
  store i64 1, ptr %loop.step.8, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data375, i64 %counter.load376
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i378, ptr %var._i379, align 8
  store ptr %arr.elem.ptr, ptr %var._380, align 8
  store ptr %arr.elem.ptr, ptr %var.p, align 8
  %var.load381 = load ptr, ptr %var.p, align 8
  %eq.lhs.len382 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 0
  %eq.lhs.len383 = load i64, ptr %eq.lhs.len382, align 8
  %eq.lhs.len384 = and i64 %eq.lhs.len383, 281474976710655
  %str.tag385 = lshr i64 %eq.lhs.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit413
  %step.val443 = load i64, ptr %loop.step.8, align 8
  %loop.next444 = add i64 %counter.load376, %step.val443
  store i64 %loop.next444, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  %var.load445 = load ptr, ptr %var.fe, align 8
  %fld.gep446 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load445, i32 0, i32 2
  %fld.load447 = load ptr, ptr %fld.gep446, align 8
  %var.load448 = load ptr, ptr %var.fn_locals, align 8
  %a.load449 = load ptr, ptr %var.fn_locals, align 8
  %a.null450 = icmp eq ptr %a.load449, null
  br i1 %a.null450, label %a.create451, label %a.after452

str_gen_check387:                                 ; preds = %loop.body.8
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %loop.body.8
  %eq.rhs.len392 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len393 = and i64 %eq.rhs.len392, 281474976710655
  %str.tag394 = lshr i64 %eq.rhs.len392, 48
  %str.immortal395 = icmp eq i64 %str.tag394, 0
  br i1 %str.immortal395, label %str_ok397, label %str_gen_check396

str_stale389:                                     ; preds = %str_gen_check387
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

str_gen_check396:                                 ; preds = %str_ok388
  %arena.cur399 = call ptr @dva_arena_current()
  %tag.valid400 = call i1 @dva_arena_validate_tag(ptr %arena.cur399, i64 %str.tag394)
  br i1 %tag.valid400, label %str_ok397, label %str_stale398

str_ok397:                                        ; preds = %str_stale398, %str_gen_check396, %str_ok388
  %eq.len401 = icmp eq i64 %eq.lhs.len384, %eq.rhs.len393
  br i1 %eq.len401, label %str.eq.then402, label %str.eq.else403

str_stale398:                                     ; preds = %str_gen_check396
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok397

str.eq.then402:                                   ; preds = %str_ok397
  %eq.lhs.data405 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 1
  %eq.lhs.data406 = load ptr, ptr %eq.lhs.data405, align 8
  %eq.rhs.data407 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp408 = call i32 @memcmp(ptr %eq.lhs.data406, ptr %eq.rhs.data407, i64 %eq.lhs.len384)
  %eq.cmp.zero409 = icmp eq i32 %eq.memcmp408, 0
  br label %str.eq.merge404

str.eq.else403:                                   ; preds = %str_ok397
  br label %str.eq.merge404

str.eq.merge404:                                  ; preds = %str.eq.else403, %str.eq.then402
  %str.eq.result410 = phi i1 [ %eq.cmp.zero409, %str.eq.then402 ], [ false, %str.eq.else403 ]
  %str.neq411 = xor i1 %str.eq.result410, true
  br i1 %str.neq411, label %choice.then412, label %choice.exit413

choice.then412:                                   ; preds = %str.eq.merge404
  %var.load414 = load ptr, ptr %var.p, align 8
  %a.load415 = load ptr, ptr %var.fn_locals, align 8
  %a.null416 = icmp eq ptr %a.load415, null
  br i1 %a.null416, label %a.create417, label %a.after418

choice.exit413:                                   ; preds = %a.store429, %str.eq.merge404
  br label %loop.latch.8

a.create417:                                      ; preds = %choice.then412
  %arena.cur419 = call ptr @dva_arena_current()
  %a.create420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 24)
  %arena.cur421 = call ptr @dva_arena_current()
  %a.buf422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 128)
  %a.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 0
  store i64 0, ptr %a.len.gep423, align 8
  %a.data.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 1
  store ptr %a.buf422, ptr %a.data.gep424, align 8
  %a.cap.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 2
  store i64 16, ptr %a.cap.gep425, align 8
  store ptr %a.create420, ptr %var.fn_locals, align 8
  br label %a.after418

a.after418:                                       ; preds = %a.create417, %choice.then412
  %a.load2426 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check427

a.check427:                                       ; preds = %a.after418
  %a.len430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 0
  %a.len431 = load i64, ptr %a.len430, align 8
  %a.cap432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 2
  %a.cap433 = load i64, ptr %a.cap432, align 8
  %a.needs.grow434 = icmp eq i64 %a.len431, %a.cap433
  br i1 %a.needs.grow434, label %a.grow428, label %a.store429

a.grow428:                                        ; preds = %a.check427
  call void @dva_array_grow(ptr %a.load2426)
  br label %a.store429

a.store429:                                       ; preds = %a.grow428, %a.check427
  %a.cur.data435 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 1
  %a.cur.data436 = load ptr, ptr %a.cur.data435, align 8
  %a.cur.len437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 0
  %a.cur.len438 = load i64, ptr %a.cur.len437, align 8
  %a.elem.gep439 = getelementptr i64, ptr %a.cur.data436, i64 %a.cur.len438
  %a.elem.p2i440 = ptrtoint ptr %var.load414 to i64
  store i64 %a.elem.p2i440, ptr %a.elem.gep439, align 8
  %a.next.len441 = add i64 %a.cur.len438, 1
  %b.len.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 0
  store i64 %a.next.len441, ptr %b.len.gep442, align 8
  br label %choice.exit413

a.create451:                                      ; preds = %loop.exit.8
  %arena.cur453 = call ptr @dva_arena_current()
  %a.create454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 24)
  %arena.cur455 = call ptr @dva_arena_current()
  %a.buf456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 128)
  %a.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 0
  store i64 0, ptr %a.len.gep457, align 8
  %a.data.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 1
  store ptr %a.buf456, ptr %a.data.gep458, align 8
  %a.cap.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 2
  store i64 16, ptr %a.cap.gep459, align 8
  store ptr %a.create454, ptr %var.fn_locals, align 8
  br label %a.after452

a.after452:                                       ; preds = %a.create451, %loop.exit.8
  %a.load2460 = load ptr, ptr %var.fn_locals, align 8
  %var.load461 = load ptr, ptr %var.refs, align 8
  %a.load462 = load ptr, ptr %var.refs, align 8
  %a.null463 = icmp eq ptr %a.load462, null
  br i1 %a.null463, label %a.create464, label %a.after465

a.create464:                                      ; preds = %a.after452
  %arena.cur466 = call ptr @dva_arena_current()
  %a.create467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 24)
  %arena.cur468 = call ptr @dva_arena_current()
  %a.buf469 = call ptr @dva_arena_alloc(ptr %arena.cur468, i64 128)
  %a.len.gep470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create467, i32 0, i32 0
  store i64 0, ptr %a.len.gep470, align 8
  %a.data.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create467, i32 0, i32 1
  store ptr %a.buf469, ptr %a.data.gep471, align 8
  %a.cap.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create467, i32 0, i32 2
  store i64 16, ptr %a.cap.gep472, align 8
  store ptr %a.create467, ptr %var.refs, align 8
  br label %a.after465

a.after465:                                       ; preds = %a.create464, %a.after452
  %a.load2473 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load447, ptr %a.load2460, ptr %a.load2473)
  br label %choice.exit

choice.case474:                                   ; preds = %choice.next351
  %pay.gep479 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr480 = load ptr, ptr %pay.gep479, align 8
  store ptr %payload.ptr480, ptr %var.be, align 8
  %var.load481 = load ptr, ptr %var.locals, align 8
  %a.load482 = load ptr, ptr %var.locals, align 8
  %a.null483 = icmp eq ptr %a.load482, null
  br i1 %a.null483, label %a.create484, label %a.after485

choice.next475:                                   ; preds = %choice.next351
  %tag.gep703 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id704 = load i64, ptr %tag.gep703, align 8
  %tag.match705 = icmp eq i64 %tag.id704, 7
  br i1 %tag.match705, label %choice.case701, label %choice.next702

a.create484:                                      ; preds = %choice.case474
  %arena.cur486 = call ptr @dva_arena_current()
  %a.create487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 24)
  %arena.cur488 = call ptr @dva_arena_current()
  %a.buf489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 128)
  %a.len.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 0
  store i64 0, ptr %a.len.gep490, align 8
  %a.data.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 1
  store ptr %a.buf489, ptr %a.data.gep491, align 8
  %a.cap.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create487, i32 0, i32 2
  store i64 16, ptr %a.cap.gep492, align 8
  store ptr %a.create487, ptr %var.locals, align 8
  br label %a.after485

a.after485:                                       ; preds = %a.create484, %choice.case474
  %a.load2493 = load ptr, ptr %var.locals, align 8
  %call.res494 = call ptr @"dep_graph::copy_names"(ptr %a.load2493)
  store ptr %call.res494, ptr %var.blk_locals, align 8
  %var.load495 = load ptr, ptr %var.be, align 8
  %fld.gep496 = getelementptr inbounds { ptr }, ptr %var.load495, i32 0, i32 0
  %fld.load497 = load ptr, ptr %fld.gep496, align 8
  %a.len.query498 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load497, i32 0, i32 0
  %a.len.query499 = load i64, ptr %a.len.query498, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after485
  %counter.load501 = load i64, ptr %loop.idx.9, align 8
  %loop.cond502 = icmp slt i64 %counter.load501, %a.len.query499
  br i1 %loop.cond502, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i503 = sub i64 %counter.load501, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i503, ptr %var._i504, align 8
  store i64 %counter.load501, ptr %var._505, align 8
  store i64 %counter.load501, ptr %var.i500, align 8
  %var.load506 = load ptr, ptr %var.be, align 8
  %fld.gep507 = getelementptr inbounds { ptr }, ptr %var.load506, i32 0, i32 0
  %fld.load508 = load ptr, ptr %fld.gep507, align 8
  %var.load509 = load i64, ptr %var.i500, align 8
  %a.rd.nonnull510 = icmp ne ptr %fld.load508, null
  br i1 %a.rd.nonnull510, label %a.rd.check511, label %a.rd.err.null513

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit569
  %step.val699 = load i64, ptr %loop.step.9, align 8
  %loop.next700 = add i64 %counter.load501, %step.val699
  store i64 %loop.next700, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  br label %choice.exit

a.rd.check511:                                    ; preds = %loop.body.9
  %a.rd.len516 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load508, i32 0, i32 0
  %a.rd.len517 = load i64, ptr %a.rd.len516, align 8
  %a.rd.ge0518 = icmp sge i64 %var.load509, 0
  %a.rd.lt519 = icmp slt i64 %var.load509, %a.rd.len517
  %a.rd.bounds520 = and i1 %a.rd.ge0518, %a.rd.lt519
  br i1 %a.rd.bounds520, label %a.rd.ok512, label %a.rd.err.oob514

a.rd.ok512:                                       ; preds = %a.rd.check511
  %a.rd.data521 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load508, i32 0, i32 1
  %a.rd.data522 = load ptr, ptr %a.rd.data521, align 8
  %a.rd.elem.gep523 = getelementptr i64, ptr %a.rd.data522, i64 %var.load509
  %a.rd.elem524 = load i64, ptr %a.rd.elem.gep523, align 8
  br label %a.rd.done515

a.rd.err.null513:                                 ; preds = %loop.body.9
  %arena.cur525 = call ptr @dva_arena_current()
  %err.alloc526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 56)
  %err.code.gep527 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 0
  store i64 4011, ptr %err.code.gep527, align 8
  %err.msg.gep528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep528, align 8
  %err.file.gep529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep529, align 8
  %err.line.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 3
  store i64 0, ptr %err.line.gep530, align 8
  %err.col.gep531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 4
  store i64 0, ptr %err.col.gep531, align 8
  %err.ctx.gep532 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc526, i32 0, i32 5
  %err.ctx0.gep533 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep532, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep533, align 8
  %err.ctx1.gep534 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep532, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep534, align 8
  %err.p2i535 = ptrtoint ptr %err.alloc526 to i64
  br label %a.rd.done515

a.rd.err.oob514:                                  ; preds = %a.rd.check511
  %arena.cur536 = call ptr @dva_arena_current()
  %err.alloc537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 56)
  %err.code.gep538 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 0
  store i64 4011, ptr %err.code.gep538, align 8
  %err.msg.gep539 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep539, align 8
  %err.file.gep540 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep540, align 8
  %err.line.gep541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 3
  store i64 0, ptr %err.line.gep541, align 8
  %err.col.gep542 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 4
  store i64 0, ptr %err.col.gep542, align 8
  %err.ctx.gep543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc537, i32 0, i32 5
  %err.ctx0.gep544 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep543, i32 0, i32 0
  store i64 %var.load509, ptr %err.ctx0.gep544, align 8
  %err.ctx1.gep545 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep543, i32 0, i32 1
  store i64 %a.rd.len517, ptr %err.ctx1.gep545, align 8
  %err.p2i546 = ptrtoint ptr %err.alloc537 to i64
  br label %a.rd.done515

a.rd.done515:                                     ; preds = %a.rd.err.oob514, %a.rd.err.null513, %a.rd.ok512
  %a.rd.tag547 = phi i1 [ true, %a.rd.ok512 ], [ false, %a.rd.err.null513 ], [ false, %a.rd.err.oob514 ]
  %a.rd.pay548 = phi i64 [ %a.rd.elem524, %a.rd.ok512 ], [ %err.p2i535, %a.rd.err.null513 ], [ %err.p2i546, %a.rd.err.oob514 ]
  %ram.tag549 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag547, 0
  %ram.pay550 = insertvalue { i1, i64 } %ram.tag549, i64 %a.rd.pay548, 1
  %ram.tag551 = extractvalue { i1, i64 } %ram.pay550, 0
  br i1 %ram.tag551, label %choice.then552, label %choice.else553

choice.then552:                                   ; preds = %a.rd.done515
  %ram.pay555 = extractvalue { i1, i64 } %ram.pay550, 1
  %pay.ptr556 = inttoptr i64 %ram.pay555 to ptr
  store ptr %pay.ptr556, ptr %var._557, align 8
  br label %choice.exit554

choice.else553:                                   ; preds = %a.rd.done515
  %ram.pay558 = extractvalue { i1, i64 } %ram.pay550, 1
  %pay.ptr559 = inttoptr i64 %ram.pay558 to ptr
  store ptr %pay.ptr559, ptr %var._560, align 8
  %arena.cur561 = call ptr @dva_arena_current()
  %enum.alloc562 = call ptr @dva_arena_alloc(ptr %arena.cur561, i64 16)
  %tag.gep563 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc562, i32 0, i32 0
  store i64 0, ptr %tag.gep563, align 8
  %pay.gep564 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc562, i32 0, i32 1
  %arena.cur565 = call ptr @dva_arena_current()
  %enum.pay.alloc566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 8)
  store i64 0, ptr %enum.pay.alloc566, align 8
  store ptr %enum.pay.alloc566, ptr %pay.gep564, align 8
  br label %choice.exit554

choice.exit554:                                   ; preds = %choice.else553, %choice.then552
  %choice.res567 = phi ptr [ %pay.ptr556, %choice.then552 ], [ %enum.alloc562, %choice.else553 ]
  store ptr %choice.res567, ptr %var.st, align 8
  %var.load568 = load ptr, ptr %var.st, align 8
  %tag.gep572 = getelementptr inbounds { i64, ptr }, ptr %var.load568, i32 0, i32 0
  %tag.id573 = load i64, ptr %tag.gep572, align 8
  %tag.match574 = icmp eq i64 %tag.id573, 6
  br i1 %tag.match574, label %choice.case570, label %choice.next571

choice.exit569:                                   ; preds = %a.after690, %choice.exit640
  br label %loop.latch.9

choice.case570:                                   ; preds = %choice.exit554
  %pay.gep575 = getelementptr inbounds { i64, ptr }, ptr %var.load568, i32 0, i32 1
  %payload.ptr576 = load ptr, ptr %pay.gep575, align 8
  store ptr %payload.ptr576, ptr %var.a, align 8
  %var.load577 = load ptr, ptr %var.a, align 8
  %fld.gep578 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load577, i32 0, i32 5
  %fld.load579 = load ptr, ptr %fld.gep578, align 8
  %var.load580 = load ptr, ptr %var.blk_locals, align 8
  %a.load581 = load ptr, ptr %var.blk_locals, align 8
  %a.null582 = icmp eq ptr %a.load581, null
  br i1 %a.null582, label %a.create583, label %a.after584

choice.next571:                                   ; preds = %choice.exit554
  %var.load672 = load ptr, ptr %var.st, align 8
  %var.load673 = load ptr, ptr %var.blk_locals, align 8
  %a.load674 = load ptr, ptr %var.blk_locals, align 8
  %a.null675 = icmp eq ptr %a.load674, null
  br i1 %a.null675, label %a.create676, label %a.after677

a.create583:                                      ; preds = %choice.case570
  %arena.cur585 = call ptr @dva_arena_current()
  %a.create586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 24)
  %arena.cur587 = call ptr @dva_arena_current()
  %a.buf588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 128)
  %a.len.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 0
  store i64 0, ptr %a.len.gep589, align 8
  %a.data.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 1
  store ptr %a.buf588, ptr %a.data.gep590, align 8
  %a.cap.gep591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 2
  store i64 16, ptr %a.cap.gep591, align 8
  store ptr %a.create586, ptr %var.blk_locals, align 8
  br label %a.after584

a.after584:                                       ; preds = %a.create583, %choice.case570
  %a.load2592 = load ptr, ptr %var.blk_locals, align 8
  %var.load593 = load ptr, ptr %var.refs, align 8
  %a.load594 = load ptr, ptr %var.refs, align 8
  %a.null595 = icmp eq ptr %a.load594, null
  br i1 %a.null595, label %a.create596, label %a.after597

a.create596:                                      ; preds = %a.after584
  %arena.cur598 = call ptr @dva_arena_current()
  %a.create599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 24)
  %arena.cur600 = call ptr @dva_arena_current()
  %a.buf601 = call ptr @dva_arena_alloc(ptr %arena.cur600, i64 128)
  %a.len.gep602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 0
  store i64 0, ptr %a.len.gep602, align 8
  %a.data.gep603 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 1
  store ptr %a.buf601, ptr %a.data.gep603, align 8
  %a.cap.gep604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create599, i32 0, i32 2
  store i64 16, ptr %a.cap.gep604, align 8
  store ptr %a.create599, ptr %var.refs, align 8
  br label %a.after597

a.after597:                                       ; preds = %a.create596, %a.after584
  %a.load2605 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load579, ptr %a.load2592, ptr %a.load2605)
  %var.load606 = load ptr, ptr %var.a, align 8
  %fld.gep607 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load606, i32 0, i32 0
  %fld.load608 = load ptr, ptr %fld.gep607, align 8
  %eq.lhs.len609 = getelementptr inbounds { i64, ptr }, ptr %fld.load608, i32 0, i32 0
  %eq.lhs.len610 = load i64, ptr %eq.lhs.len609, align 8
  %eq.lhs.len611 = and i64 %eq.lhs.len610, 281474976710655
  %str.tag612 = lshr i64 %eq.lhs.len610, 48
  %str.immortal613 = icmp eq i64 %str.tag612, 0
  br i1 %str.immortal613, label %str_ok615, label %str_gen_check614

str_gen_check614:                                 ; preds = %a.after597
  %arena.cur617 = call ptr @dva_arena_current()
  %tag.valid618 = call i1 @dva_arena_validate_tag(ptr %arena.cur617, i64 %str.tag612)
  br i1 %tag.valid618, label %str_ok615, label %str_stale616

str_ok615:                                        ; preds = %str_stale616, %str_gen_check614, %a.after597
  %eq.rhs.len619 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len620 = and i64 %eq.rhs.len619, 281474976710655
  %str.tag621 = lshr i64 %eq.rhs.len619, 48
  %str.immortal622 = icmp eq i64 %str.tag621, 0
  br i1 %str.immortal622, label %str_ok624, label %str_gen_check623

str_stale616:                                     ; preds = %str_gen_check614
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok615

str_gen_check623:                                 ; preds = %str_ok615
  %arena.cur626 = call ptr @dva_arena_current()
  %tag.valid627 = call i1 @dva_arena_validate_tag(ptr %arena.cur626, i64 %str.tag621)
  br i1 %tag.valid627, label %str_ok624, label %str_stale625

str_ok624:                                        ; preds = %str_stale625, %str_gen_check623, %str_ok615
  %eq.len628 = icmp eq i64 %eq.lhs.len611, %eq.rhs.len620
  br i1 %eq.len628, label %str.eq.then629, label %str.eq.else630

str_stale625:                                     ; preds = %str_gen_check623
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok624

str.eq.then629:                                   ; preds = %str_ok624
  %eq.lhs.data632 = getelementptr inbounds { i64, ptr }, ptr %fld.load608, i32 0, i32 1
  %eq.lhs.data633 = load ptr, ptr %eq.lhs.data632, align 8
  %eq.rhs.data634 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp635 = call i32 @memcmp(ptr %eq.lhs.data633, ptr %eq.rhs.data634, i64 %eq.lhs.len611)
  %eq.cmp.zero636 = icmp eq i32 %eq.memcmp635, 0
  br label %str.eq.merge631

str.eq.else630:                                   ; preds = %str_ok624
  br label %str.eq.merge631

str.eq.merge631:                                  ; preds = %str.eq.else630, %str.eq.then629
  %str.eq.result637 = phi i1 [ %eq.cmp.zero636, %str.eq.then629 ], [ false, %str.eq.else630 ]
  %str.neq638 = xor i1 %str.eq.result637, true
  br i1 %str.neq638, label %choice.then639, label %choice.exit640

choice.then639:                                   ; preds = %str.eq.merge631
  %var.load641 = load ptr, ptr %var.a, align 8
  %fld.gep642 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load641, i32 0, i32 0
  %fld.load643 = load ptr, ptr %fld.gep642, align 8
  %a.load644 = load ptr, ptr %var.blk_locals, align 8
  %a.null645 = icmp eq ptr %a.load644, null
  br i1 %a.null645, label %a.create646, label %a.after647

choice.exit640:                                   ; preds = %a.store658, %str.eq.merge631
  br label %choice.exit569

a.create646:                                      ; preds = %choice.then639
  %arena.cur648 = call ptr @dva_arena_current()
  %a.create649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 24)
  %arena.cur650 = call ptr @dva_arena_current()
  %a.buf651 = call ptr @dva_arena_alloc(ptr %arena.cur650, i64 128)
  %a.len.gep652 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create649, i32 0, i32 0
  store i64 0, ptr %a.len.gep652, align 8
  %a.data.gep653 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create649, i32 0, i32 1
  store ptr %a.buf651, ptr %a.data.gep653, align 8
  %a.cap.gep654 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create649, i32 0, i32 2
  store i64 16, ptr %a.cap.gep654, align 8
  store ptr %a.create649, ptr %var.blk_locals, align 8
  br label %a.after647

a.after647:                                       ; preds = %a.create646, %choice.then639
  %a.load2655 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check656

a.check656:                                       ; preds = %a.after647
  %a.len659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 0
  %a.len660 = load i64, ptr %a.len659, align 8
  %a.cap661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 2
  %a.cap662 = load i64, ptr %a.cap661, align 8
  %a.needs.grow663 = icmp eq i64 %a.len660, %a.cap662
  br i1 %a.needs.grow663, label %a.grow657, label %a.store658

a.grow657:                                        ; preds = %a.check656
  call void @dva_array_grow(ptr %a.load2655)
  br label %a.store658

a.store658:                                       ; preds = %a.grow657, %a.check656
  %a.cur.data664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 1
  %a.cur.data665 = load ptr, ptr %a.cur.data664, align 8
  %a.cur.len666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 0
  %a.cur.len667 = load i64, ptr %a.cur.len666, align 8
  %a.elem.gep668 = getelementptr i64, ptr %a.cur.data665, i64 %a.cur.len667
  %a.elem.p2i669 = ptrtoint ptr %fld.load643 to i64
  store i64 %a.elem.p2i669, ptr %a.elem.gep668, align 8
  %a.next.len670 = add i64 %a.cur.len667, 1
  %b.len.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 0
  store i64 %a.next.len670, ptr %b.len.gep671, align 8
  br label %choice.exit640

a.create676:                                      ; preds = %choice.next571
  %arena.cur678 = call ptr @dva_arena_current()
  %a.create679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 24)
  %arena.cur680 = call ptr @dva_arena_current()
  %a.buf681 = call ptr @dva_arena_alloc(ptr %arena.cur680, i64 128)
  %a.len.gep682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 0
  store i64 0, ptr %a.len.gep682, align 8
  %a.data.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 1
  store ptr %a.buf681, ptr %a.data.gep683, align 8
  %a.cap.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 2
  store i64 16, ptr %a.cap.gep684, align 8
  store ptr %a.create679, ptr %var.blk_locals, align 8
  br label %a.after677

a.after677:                                       ; preds = %a.create676, %choice.next571
  %a.load2685 = load ptr, ptr %var.blk_locals, align 8
  %var.load686 = load ptr, ptr %var.refs, align 8
  %a.load687 = load ptr, ptr %var.refs, align 8
  %a.null688 = icmp eq ptr %a.load687, null
  br i1 %a.null688, label %a.create689, label %a.after690

a.create689:                                      ; preds = %a.after677
  %arena.cur691 = call ptr @dva_arena_current()
  %a.create692 = call ptr @dva_arena_alloc(ptr %arena.cur691, i64 24)
  %arena.cur693 = call ptr @dva_arena_current()
  %a.buf694 = call ptr @dva_arena_alloc(ptr %arena.cur693, i64 128)
  %a.len.gep695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 0
  store i64 0, ptr %a.len.gep695, align 8
  %a.data.gep696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 1
  store ptr %a.buf694, ptr %a.data.gep696, align 8
  %a.cap.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create692, i32 0, i32 2
  store i64 16, ptr %a.cap.gep697, align 8
  store ptr %a.create692, ptr %var.refs, align 8
  br label %a.after690

a.after690:                                       ; preds = %a.create689, %a.after677
  %a.load2698 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load672, ptr %a.load2685, ptr %a.load2698)
  br label %choice.exit569

choice.case701:                                   ; preds = %choice.next475
  %pay.gep706 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr707 = load ptr, ptr %pay.gep706, align 8
  store ptr %payload.ptr707, ptr %var.ch, align 8
  %var.load708 = load ptr, ptr %var.ch, align 8
  %fld.gep709 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load708, i32 0, i32 0
  %fld.load710 = load ptr, ptr %fld.gep709, align 8
  %var.load711 = load ptr, ptr %var.locals, align 8
  %a.load712 = load ptr, ptr %var.locals, align 8
  %a.null713 = icmp eq ptr %a.load712, null
  br i1 %a.null713, label %a.create714, label %a.after715

choice.next702:                                   ; preds = %choice.next475
  %tag.gep1099 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1100 = load i64, ptr %tag.gep1099, align 8
  %tag.match1101 = icmp eq i64 %tag.id1100, 15
  br i1 %tag.match1101, label %choice.case1097, label %choice.next1098

a.create714:                                      ; preds = %choice.case701
  %arena.cur716 = call ptr @dva_arena_current()
  %a.create717 = call ptr @dva_arena_alloc(ptr %arena.cur716, i64 24)
  %arena.cur718 = call ptr @dva_arena_current()
  %a.buf719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 128)
  %a.len.gep720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create717, i32 0, i32 0
  store i64 0, ptr %a.len.gep720, align 8
  %a.data.gep721 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create717, i32 0, i32 1
  store ptr %a.buf719, ptr %a.data.gep721, align 8
  %a.cap.gep722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create717, i32 0, i32 2
  store i64 16, ptr %a.cap.gep722, align 8
  store ptr %a.create717, ptr %var.locals, align 8
  br label %a.after715

a.after715:                                       ; preds = %a.create714, %choice.case701
  %a.load2723 = load ptr, ptr %var.locals, align 8
  %var.load724 = load ptr, ptr %var.refs, align 8
  %a.load725 = load ptr, ptr %var.refs, align 8
  %a.null726 = icmp eq ptr %a.load725, null
  br i1 %a.null726, label %a.create727, label %a.after728

a.create727:                                      ; preds = %a.after715
  %arena.cur729 = call ptr @dva_arena_current()
  %a.create730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 24)
  %arena.cur731 = call ptr @dva_arena_current()
  %a.buf732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 128)
  %a.len.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 0
  store i64 0, ptr %a.len.gep733, align 8
  %a.data.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 1
  store ptr %a.buf732, ptr %a.data.gep734, align 8
  %a.cap.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 2
  store i64 16, ptr %a.cap.gep735, align 8
  store ptr %a.create730, ptr %var.refs, align 8
  br label %a.after728

a.after728:                                       ; preds = %a.create727, %a.after715
  %a.load2736 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load710, ptr %a.load2723, ptr %a.load2736)
  %var.load737 = load ptr, ptr %var.ch, align 8
  %fld.gep738 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load737, i32 0, i32 2
  %fld.load739 = load ptr, ptr %fld.gep738, align 8
  %a.len.query740 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load739, i32 0, i32 0
  %a.len.query741 = load i64, ptr %a.len.query740, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %a.after728
  %counter.load743 = load i64, ptr %loop.idx.10, align 8
  %loop.cond744 = icmp slt i64 %counter.load743, %a.len.query741
  br i1 %loop.cond744, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i745 = sub i64 %counter.load743, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i745, ptr %var._i746, align 8
  store i64 %counter.load743, ptr %var._747, align 8
  store i64 %counter.load743, ptr %var.i742, align 8
  %var.load748 = load ptr, ptr %var.ch, align 8
  %fld.gep749 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load748, i32 0, i32 2
  %fld.load750 = load ptr, ptr %fld.gep749, align 8
  %var.load751 = load i64, ptr %var.i742, align 8
  %a.rd.nonnull752 = icmp ne ptr %fld.load750, null
  br i1 %a.rd.nonnull752, label %a.rd.check753, label %a.rd.err.null755

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %loop.exit.12
  %step.val1095 = load i64, ptr %loop.step.10, align 8
  %loop.next1096 = add i64 %counter.load743, %step.val1095
  store i64 %loop.next1096, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  br label %choice.exit

a.rd.check753:                                    ; preds = %loop.body.10
  %a.rd.len758 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load750, i32 0, i32 0
  %a.rd.len759 = load i64, ptr %a.rd.len758, align 8
  %a.rd.ge0760 = icmp sge i64 %var.load751, 0
  %a.rd.lt761 = icmp slt i64 %var.load751, %a.rd.len759
  %a.rd.bounds762 = and i1 %a.rd.ge0760, %a.rd.lt761
  br i1 %a.rd.bounds762, label %a.rd.ok754, label %a.rd.err.oob756

a.rd.ok754:                                       ; preds = %a.rd.check753
  %a.rd.data763 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load750, i32 0, i32 1
  %a.rd.data764 = load ptr, ptr %a.rd.data763, align 8
  %a.rd.elem.gep765 = getelementptr i64, ptr %a.rd.data764, i64 %var.load751
  %a.rd.elem766 = load i64, ptr %a.rd.elem.gep765, align 8
  br label %a.rd.done757

a.rd.err.null755:                                 ; preds = %loop.body.10
  %arena.cur767 = call ptr @dva_arena_current()
  %err.alloc768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 56)
  %err.code.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 0
  store i64 4011, ptr %err.code.gep769, align 8
  %err.msg.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep770, align 8
  %err.file.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep771, align 8
  %err.line.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 3
  store i64 0, ptr %err.line.gep772, align 8
  %err.col.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 4
  store i64 0, ptr %err.col.gep773, align 8
  %err.ctx.gep774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 5
  %err.ctx0.gep775 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep774, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep775, align 8
  %err.ctx1.gep776 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep774, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep776, align 8
  %err.p2i777 = ptrtoint ptr %err.alloc768 to i64
  br label %a.rd.done757

a.rd.err.oob756:                                  ; preds = %a.rd.check753
  %arena.cur778 = call ptr @dva_arena_current()
  %err.alloc779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 56)
  %err.code.gep780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 0
  store i64 4011, ptr %err.code.gep780, align 8
  %err.msg.gep781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep781, align 8
  %err.file.gep782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep782, align 8
  %err.line.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 3
  store i64 0, ptr %err.line.gep783, align 8
  %err.col.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 4
  store i64 0, ptr %err.col.gep784, align 8
  %err.ctx.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc779, i32 0, i32 5
  %err.ctx0.gep786 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep785, i32 0, i32 0
  store i64 %var.load751, ptr %err.ctx0.gep786, align 8
  %err.ctx1.gep787 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep785, i32 0, i32 1
  store i64 %a.rd.len759, ptr %err.ctx1.gep787, align 8
  %err.p2i788 = ptrtoint ptr %err.alloc779 to i64
  br label %a.rd.done757

a.rd.done757:                                     ; preds = %a.rd.err.oob756, %a.rd.err.null755, %a.rd.ok754
  %a.rd.tag789 = phi i1 [ true, %a.rd.ok754 ], [ false, %a.rd.err.null755 ], [ false, %a.rd.err.oob756 ]
  %a.rd.pay790 = phi i64 [ %a.rd.elem766, %a.rd.ok754 ], [ %err.p2i777, %a.rd.err.null755 ], [ %err.p2i788, %a.rd.err.oob756 ]
  %ram.tag791 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag789, 0
  %ram.pay792 = insertvalue { i1, i64 } %ram.tag791, i64 %a.rd.pay790, 1
  %ram.tag793 = extractvalue { i1, i64 } %ram.pay792, 0
  br i1 %ram.tag793, label %choice.then794, label %choice.else795

choice.then794:                                   ; preds = %a.rd.done757
  %ram.pay797 = extractvalue { i1, i64 } %ram.pay792, 1
  %pay.ptr798 = inttoptr i64 %ram.pay797 to ptr
  store ptr %pay.ptr798, ptr %var._799, align 8
  br label %choice.exit796

choice.else795:                                   ; preds = %a.rd.done757
  %ram.pay800 = extractvalue { i1, i64 } %ram.pay792, 1
  %pay.ptr801 = inttoptr i64 %ram.pay800 to ptr
  store ptr %pay.ptr801, ptr %var._802, align 8
  %arena.cur803 = call ptr @dva_arena_current()
  %enum.alloc804 = call ptr @dva_arena_alloc(ptr %arena.cur803, i64 16)
  %tag.gep805 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc804, i32 0, i32 0
  store i64 3, ptr %tag.gep805, align 8
  %pay.gep806 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc804, i32 0, i32 1
  store ptr null, ptr %pay.gep806, align 8
  %arena.cur807 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 24)
  %arena.cur808 = call ptr @dva_arena_current()
  %a.buf809 = call ptr @dva_arena_alloc(ptr %arena.cur808, i64 128)
  %a.len.gep810 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep810, align 8
  %a.data.gep811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf809, ptr %a.data.gep811, align 8
  %a.cap.gep812 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep812, align 8
  %arena.cur813 = call ptr @dva_arena_current()
  %enum.alloc814 = call ptr @dva_arena_alloc(ptr %arena.cur813, i64 16)
  %tag.gep815 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc814, i32 0, i32 0
  store i64 0, ptr %tag.gep815, align 8
  %pay.gep816 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc814, i32 0, i32 1
  %arena.cur817 = call ptr @dva_arena_current()
  %enum.pay.alloc818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 8)
  store i64 0, ptr %enum.pay.alloc818, align 8
  store ptr %enum.pay.alloc818, ptr %pay.gep816, align 8
  %arena.cur819 = call ptr @dva_arena_current()
  %a.new820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 24)
  %arena.cur821 = call ptr @dva_arena_current()
  %a.buf822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 128)
  %a.len.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new820, i32 0, i32 0
  store i64 0, ptr %a.len.gep823, align 8
  %a.data.gep824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new820, i32 0, i32 1
  store ptr %a.buf822, ptr %a.data.gep824, align 8
  %a.cap.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new820, i32 0, i32 2
  store i64 16, ptr %a.cap.gep825, align 8
  %arena.cur826 = call ptr @dva_arena_current()
  %a.new827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 24)
  %arena.cur828 = call ptr @dva_arena_current()
  %a.buf829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 128)
  %a.len.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new827, i32 0, i32 0
  store i64 0, ptr %a.len.gep830, align 8
  %a.data.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new827, i32 0, i32 1
  store ptr %a.buf829, ptr %a.data.gep831, align 8
  %a.cap.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new827, i32 0, i32 2
  store i64 16, ptr %a.cap.gep832, align 8
  %arena.cur833 = call ptr @dva_arena_current()
  %enum.alloc834 = call ptr @dva_arena_alloc(ptr %arena.cur833, i64 16)
  %tag.gep835 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc834, i32 0, i32 0
  store i64 0, ptr %tag.gep835, align 8
  %pay.gep836 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc834, i32 0, i32 1
  %arena.cur837 = call ptr @dva_arena_current()
  %enum.pay.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 8)
  store i64 0, ptr %enum.pay.alloc838, align 8
  store ptr %enum.pay.alloc838, ptr %pay.gep836, align 8
  %arena.cur839 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc804, ptr %rec.fld, align 8
  %rec.fld840 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new, ptr %rec.fld840, align 8
  %rec.fld841 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc814, ptr %rec.fld841, align 8
  %rec.fld842 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new820, ptr %rec.fld842, align 8
  %rec.fld843 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.new827, ptr %rec.fld843, align 8
  %rec.fld844 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld844, align 1
  %rec.fld845 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %enum.alloc834, ptr %rec.fld845, align 8
  br label %choice.exit796

choice.exit796:                                   ; preds = %choice.else795, %choice.then794
  %choice.res846 = phi ptr [ %pay.ptr798, %choice.then794 ], [ %rec.alloc, %choice.else795 ]
  store ptr %choice.res846, ptr %var.br, align 8
  %var.load847 = load ptr, ptr %var.locals, align 8
  %a.load848 = load ptr, ptr %var.locals, align 8
  %a.null849 = icmp eq ptr %a.load848, null
  br i1 %a.null849, label %a.create850, label %a.after851

a.create850:                                      ; preds = %choice.exit796
  %arena.cur852 = call ptr @dva_arena_current()
  %a.create853 = call ptr @dva_arena_alloc(ptr %arena.cur852, i64 24)
  %arena.cur854 = call ptr @dva_arena_current()
  %a.buf855 = call ptr @dva_arena_alloc(ptr %arena.cur854, i64 128)
  %a.len.gep856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create853, i32 0, i32 0
  store i64 0, ptr %a.len.gep856, align 8
  %a.data.gep857 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create853, i32 0, i32 1
  store ptr %a.buf855, ptr %a.data.gep857, align 8
  %a.cap.gep858 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create853, i32 0, i32 2
  store i64 16, ptr %a.cap.gep858, align 8
  store ptr %a.create853, ptr %var.locals, align 8
  br label %a.after851

a.after851:                                       ; preds = %a.create850, %choice.exit796
  %a.load2859 = load ptr, ptr %var.locals, align 8
  %call.res860 = call ptr @"dep_graph::copy_names"(ptr %a.load2859)
  store ptr %call.res860, ptr %var.br_locals, align 8
  %var.load861 = load ptr, ptr %var.br, align 8
  %fld.gep862 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load861, i32 0, i32 4
  %fld.load863 = load ptr, ptr %fld.gep862, align 8
  %arr.cycle.len864 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load863, i32 0, i32 0
  %arr.cycle.len865 = load i64, ptr %arr.cycle.len864, align 8
  %arr.cycle.data866 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load863, i32 0, i32 1
  %arr.cycle.data867 = load ptr, ptr %arr.cycle.data866, align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after851
  %counter.load868 = load i64, ptr %loop.idx.11, align 8
  %loop.cond869 = icmp slt i64 %counter.load868, %arr.cycle.len865
  br i1 %loop.cond869, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i870 = sub i64 %counter.load868, 0
  store i64 1, ptr %loop.step.11, align 8
  %arr.elem.gep871 = getelementptr i64, ptr %arr.cycle.data867, i64 %counter.load868
  %arr.elem.raw872 = load i64, ptr %arr.elem.gep871, align 8
  %arr.elem.ptr873 = inttoptr i64 %arr.elem.raw872 to ptr
  store i64 %loop.rel.i870, ptr %var._i746, align 8
  store ptr %arr.elem.ptr873, ptr %var._747, align 8
  store ptr %arr.elem.ptr873, ptr %var.bv, align 8
  %var.load874 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len875 = getelementptr inbounds { i64, ptr }, ptr %var.load874, i32 0, i32 0
  %eq.lhs.len876 = load i64, ptr %eq.lhs.len875, align 8
  %eq.lhs.len877 = and i64 %eq.lhs.len876, 281474976710655
  %str.tag878 = lshr i64 %eq.lhs.len876, 48
  %str.immortal879 = icmp eq i64 %str.tag878, 0
  br i1 %str.immortal879, label %str_ok881, label %str_gen_check880

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit906
  %step.val936 = load i64, ptr %loop.step.11, align 8
  %loop.next937 = add i64 %counter.load868, %step.val936
  store i64 %loop.next937, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load938 = load ptr, ptr %var.br, align 8
  %fld.gep939 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load938, i32 0, i32 6
  %fld.load940 = load ptr, ptr %fld.gep939, align 8
  %var.load941 = load ptr, ptr %var.br_locals, align 8
  %a.load942 = load ptr, ptr %var.br_locals, align 8
  %a.null943 = icmp eq ptr %a.load942, null
  br i1 %a.null943, label %a.create944, label %a.after945

str_gen_check880:                                 ; preds = %loop.body.11
  %arena.cur883 = call ptr @dva_arena_current()
  %tag.valid884 = call i1 @dva_arena_validate_tag(ptr %arena.cur883, i64 %str.tag878)
  br i1 %tag.valid884, label %str_ok881, label %str_stale882

str_ok881:                                        ; preds = %str_stale882, %str_gen_check880, %loop.body.11
  %eq.rhs.len885 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len886 = and i64 %eq.rhs.len885, 281474976710655
  %str.tag887 = lshr i64 %eq.rhs.len885, 48
  %str.immortal888 = icmp eq i64 %str.tag887, 0
  br i1 %str.immortal888, label %str_ok890, label %str_gen_check889

str_stale882:                                     ; preds = %str_gen_check880
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok881

str_gen_check889:                                 ; preds = %str_ok881
  %arena.cur892 = call ptr @dva_arena_current()
  %tag.valid893 = call i1 @dva_arena_validate_tag(ptr %arena.cur892, i64 %str.tag887)
  br i1 %tag.valid893, label %str_ok890, label %str_stale891

str_ok890:                                        ; preds = %str_stale891, %str_gen_check889, %str_ok881
  %eq.len894 = icmp eq i64 %eq.lhs.len877, %eq.rhs.len886
  br i1 %eq.len894, label %str.eq.then895, label %str.eq.else896

str_stale891:                                     ; preds = %str_gen_check889
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok890

str.eq.then895:                                   ; preds = %str_ok890
  %eq.lhs.data898 = getelementptr inbounds { i64, ptr }, ptr %var.load874, i32 0, i32 1
  %eq.lhs.data899 = load ptr, ptr %eq.lhs.data898, align 8
  %eq.rhs.data900 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp901 = call i32 @memcmp(ptr %eq.lhs.data899, ptr %eq.rhs.data900, i64 %eq.lhs.len877)
  %eq.cmp.zero902 = icmp eq i32 %eq.memcmp901, 0
  br label %str.eq.merge897

str.eq.else896:                                   ; preds = %str_ok890
  br label %str.eq.merge897

str.eq.merge897:                                  ; preds = %str.eq.else896, %str.eq.then895
  %str.eq.result903 = phi i1 [ %eq.cmp.zero902, %str.eq.then895 ], [ false, %str.eq.else896 ]
  %str.neq904 = xor i1 %str.eq.result903, true
  br i1 %str.neq904, label %choice.then905, label %choice.exit906

choice.then905:                                   ; preds = %str.eq.merge897
  %var.load907 = load ptr, ptr %var.bv, align 8
  %a.load908 = load ptr, ptr %var.br_locals, align 8
  %a.null909 = icmp eq ptr %a.load908, null
  br i1 %a.null909, label %a.create910, label %a.after911

choice.exit906:                                   ; preds = %a.store922, %str.eq.merge897
  br label %loop.latch.11

a.create910:                                      ; preds = %choice.then905
  %arena.cur912 = call ptr @dva_arena_current()
  %a.create913 = call ptr @dva_arena_alloc(ptr %arena.cur912, i64 24)
  %arena.cur914 = call ptr @dva_arena_current()
  %a.buf915 = call ptr @dva_arena_alloc(ptr %arena.cur914, i64 128)
  %a.len.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create913, i32 0, i32 0
  store i64 0, ptr %a.len.gep916, align 8
  %a.data.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create913, i32 0, i32 1
  store ptr %a.buf915, ptr %a.data.gep917, align 8
  %a.cap.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create913, i32 0, i32 2
  store i64 16, ptr %a.cap.gep918, align 8
  store ptr %a.create913, ptr %var.br_locals, align 8
  br label %a.after911

a.after911:                                       ; preds = %a.create910, %choice.then905
  %a.load2919 = load ptr, ptr %var.br_locals, align 8
  br label %a.check920

a.check920:                                       ; preds = %a.after911
  %a.len923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2919, i32 0, i32 0
  %a.len924 = load i64, ptr %a.len923, align 8
  %a.cap925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2919, i32 0, i32 2
  %a.cap926 = load i64, ptr %a.cap925, align 8
  %a.needs.grow927 = icmp eq i64 %a.len924, %a.cap926
  br i1 %a.needs.grow927, label %a.grow921, label %a.store922

a.grow921:                                        ; preds = %a.check920
  call void @dva_array_grow(ptr %a.load2919)
  br label %a.store922

a.store922:                                       ; preds = %a.grow921, %a.check920
  %a.cur.data928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2919, i32 0, i32 1
  %a.cur.data929 = load ptr, ptr %a.cur.data928, align 8
  %a.cur.len930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2919, i32 0, i32 0
  %a.cur.len931 = load i64, ptr %a.cur.len930, align 8
  %a.elem.gep932 = getelementptr i64, ptr %a.cur.data929, i64 %a.cur.len931
  %a.elem.p2i933 = ptrtoint ptr %var.load907 to i64
  store i64 %a.elem.p2i933, ptr %a.elem.gep932, align 8
  %a.next.len934 = add i64 %a.cur.len931, 1
  %b.len.gep935 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2919, i32 0, i32 0
  store i64 %a.next.len934, ptr %b.len.gep935, align 8
  br label %choice.exit906

a.create944:                                      ; preds = %loop.exit.11
  %arena.cur946 = call ptr @dva_arena_current()
  %a.create947 = call ptr @dva_arena_alloc(ptr %arena.cur946, i64 24)
  %arena.cur948 = call ptr @dva_arena_current()
  %a.buf949 = call ptr @dva_arena_alloc(ptr %arena.cur948, i64 128)
  %a.len.gep950 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create947, i32 0, i32 0
  store i64 0, ptr %a.len.gep950, align 8
  %a.data.gep951 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create947, i32 0, i32 1
  store ptr %a.buf949, ptr %a.data.gep951, align 8
  %a.cap.gep952 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create947, i32 0, i32 2
  store i64 16, ptr %a.cap.gep952, align 8
  store ptr %a.create947, ptr %var.br_locals, align 8
  br label %a.after945

a.after945:                                       ; preds = %a.create944, %loop.exit.11
  %a.load2953 = load ptr, ptr %var.br_locals, align 8
  %var.load954 = load ptr, ptr %var.refs, align 8
  %a.load955 = load ptr, ptr %var.refs, align 8
  %a.null956 = icmp eq ptr %a.load955, null
  br i1 %a.null956, label %a.create957, label %a.after958

a.create957:                                      ; preds = %a.after945
  %arena.cur959 = call ptr @dva_arena_current()
  %a.create960 = call ptr @dva_arena_alloc(ptr %arena.cur959, i64 24)
  %arena.cur961 = call ptr @dva_arena_current()
  %a.buf962 = call ptr @dva_arena_alloc(ptr %arena.cur961, i64 128)
  %a.len.gep963 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create960, i32 0, i32 0
  store i64 0, ptr %a.len.gep963, align 8
  %a.data.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create960, i32 0, i32 1
  store ptr %a.buf962, ptr %a.data.gep964, align 8
  %a.cap.gep965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create960, i32 0, i32 2
  store i64 16, ptr %a.cap.gep965, align 8
  store ptr %a.create960, ptr %var.refs, align 8
  br label %a.after958

a.after958:                                       ; preds = %a.create957, %a.after945
  %a.load2966 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load940, ptr %a.load2953, ptr %a.load2966)
  %var.load967 = load ptr, ptr %var.br, align 8
  %fld.gep968 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load967, i32 0, i32 2
  %fld.load969 = load ptr, ptr %fld.gep968, align 8
  %var.load970 = load ptr, ptr %var.br_locals, align 8
  %a.load971 = load ptr, ptr %var.br_locals, align 8
  %a.null972 = icmp eq ptr %a.load971, null
  br i1 %a.null972, label %a.create973, label %a.after974

a.create973:                                      ; preds = %a.after958
  %arena.cur975 = call ptr @dva_arena_current()
  %a.create976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 24)
  %arena.cur977 = call ptr @dva_arena_current()
  %a.buf978 = call ptr @dva_arena_alloc(ptr %arena.cur977, i64 128)
  %a.len.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 0
  store i64 0, ptr %a.len.gep979, align 8
  %a.data.gep980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 1
  store ptr %a.buf978, ptr %a.data.gep980, align 8
  %a.cap.gep981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create976, i32 0, i32 2
  store i64 16, ptr %a.cap.gep981, align 8
  store ptr %a.create976, ptr %var.br_locals, align 8
  br label %a.after974

a.after974:                                       ; preds = %a.create973, %a.after958
  %a.load2982 = load ptr, ptr %var.br_locals, align 8
  %var.load983 = load ptr, ptr %var.refs, align 8
  %a.load984 = load ptr, ptr %var.refs, align 8
  %a.null985 = icmp eq ptr %a.load984, null
  br i1 %a.null985, label %a.create986, label %a.after987

a.create986:                                      ; preds = %a.after974
  %arena.cur988 = call ptr @dva_arena_current()
  %a.create989 = call ptr @dva_arena_alloc(ptr %arena.cur988, i64 24)
  %arena.cur990 = call ptr @dva_arena_current()
  %a.buf991 = call ptr @dva_arena_alloc(ptr %arena.cur990, i64 128)
  %a.len.gep992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 0
  store i64 0, ptr %a.len.gep992, align 8
  %a.data.gep993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 1
  store ptr %a.buf991, ptr %a.data.gep993, align 8
  %a.cap.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create989, i32 0, i32 2
  store i64 16, ptr %a.cap.gep994, align 8
  store ptr %a.create989, ptr %var.refs, align 8
  br label %a.after987

a.after987:                                       ; preds = %a.create986, %a.after974
  %a.load2995 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load969, ptr %a.load2982, ptr %a.load2995)
  %var.load996 = load ptr, ptr %var.br, align 8
  %fld.gep997 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load996, i32 0, i32 1
  %fld.load998 = load ptr, ptr %fld.gep997, align 8
  %a.len.query999 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load998, i32 0, i32 0
  %a.len.query1000 = load i64, ptr %a.len.query999, align 8
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after987
  %counter.load1001 = load i64, ptr %loop.idx.12, align 8
  %loop.cond1002 = icmp slt i64 %counter.load1001, %a.len.query1000
  br i1 %loop.cond1002, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i1003 = sub i64 %counter.load1001, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i1003, ptr %var._i746, align 8
  store i64 %counter.load1001, ptr %var._747, align 8
  store i64 %counter.load1001, ptr %var.k, align 8
  %var.load1004 = load ptr, ptr %var.br, align 8
  %fld.gep1005 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load1004, i32 0, i32 1
  %fld.load1006 = load ptr, ptr %fld.gep1005, align 8
  %var.load1007 = load i64, ptr %var.k, align 8
  %a.rd.nonnull1008 = icmp ne ptr %fld.load1006, null
  br i1 %a.rd.nonnull1008, label %a.rd.check1009, label %a.rd.err.null1011

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %a.after1084
  %step.val1093 = load i64, ptr %loop.step.12, align 8
  %loop.next1094 = add i64 %counter.load1001, %step.val1093
  store i64 %loop.next1094, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  br label %loop.latch.10

a.rd.check1009:                                   ; preds = %loop.body.12
  %a.rd.len1014 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1006, i32 0, i32 0
  %a.rd.len1015 = load i64, ptr %a.rd.len1014, align 8
  %a.rd.ge01016 = icmp sge i64 %var.load1007, 0
  %a.rd.lt1017 = icmp slt i64 %var.load1007, %a.rd.len1015
  %a.rd.bounds1018 = and i1 %a.rd.ge01016, %a.rd.lt1017
  br i1 %a.rd.bounds1018, label %a.rd.ok1010, label %a.rd.err.oob1012

a.rd.ok1010:                                      ; preds = %a.rd.check1009
  %a.rd.data1019 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1006, i32 0, i32 1
  %a.rd.data1020 = load ptr, ptr %a.rd.data1019, align 8
  %a.rd.elem.gep1021 = getelementptr i64, ptr %a.rd.data1020, i64 %var.load1007
  %a.rd.elem1022 = load i64, ptr %a.rd.elem.gep1021, align 8
  br label %a.rd.done1013

a.rd.err.null1011:                                ; preds = %loop.body.12
  %arena.cur1023 = call ptr @dva_arena_current()
  %err.alloc1024 = call ptr @dva_arena_alloc(ptr %arena.cur1023, i64 56)
  %err.code.gep1025 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1025, align 8
  %err.msg.gep1026 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1026, align 8
  %err.file.gep1027 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1027, align 8
  %err.line.gep1028 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 3
  store i64 0, ptr %err.line.gep1028, align 8
  %err.col.gep1029 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 4
  store i64 0, ptr %err.col.gep1029, align 8
  %err.ctx.gep1030 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1024, i32 0, i32 5
  %err.ctx0.gep1031 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1030, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1031, align 8
  %err.ctx1.gep1032 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1030, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1032, align 8
  %err.p2i1033 = ptrtoint ptr %err.alloc1024 to i64
  br label %a.rd.done1013

a.rd.err.oob1012:                                 ; preds = %a.rd.check1009
  %arena.cur1034 = call ptr @dva_arena_current()
  %err.alloc1035 = call ptr @dva_arena_alloc(ptr %arena.cur1034, i64 56)
  %err.code.gep1036 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1036, align 8
  %err.msg.gep1037 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1037, align 8
  %err.file.gep1038 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1038, align 8
  %err.line.gep1039 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 3
  store i64 0, ptr %err.line.gep1039, align 8
  %err.col.gep1040 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 4
  store i64 0, ptr %err.col.gep1040, align 8
  %err.ctx.gep1041 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1035, i32 0, i32 5
  %err.ctx0.gep1042 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1041, i32 0, i32 0
  store i64 %var.load1007, ptr %err.ctx0.gep1042, align 8
  %err.ctx1.gep1043 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1041, i32 0, i32 1
  store i64 %a.rd.len1015, ptr %err.ctx1.gep1043, align 8
  %err.p2i1044 = ptrtoint ptr %err.alloc1035 to i64
  br label %a.rd.done1013

a.rd.done1013:                                    ; preds = %a.rd.err.oob1012, %a.rd.err.null1011, %a.rd.ok1010
  %a.rd.tag1045 = phi i1 [ true, %a.rd.ok1010 ], [ false, %a.rd.err.null1011 ], [ false, %a.rd.err.oob1012 ]
  %a.rd.pay1046 = phi i64 [ %a.rd.elem1022, %a.rd.ok1010 ], [ %err.p2i1033, %a.rd.err.null1011 ], [ %err.p2i1044, %a.rd.err.oob1012 ]
  %ram.tag1047 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1045, 0
  %ram.pay1048 = insertvalue { i1, i64 } %ram.tag1047, i64 %a.rd.pay1046, 1
  %ram.tag1049 = extractvalue { i1, i64 } %ram.pay1048, 0
  br i1 %ram.tag1049, label %choice.then1050, label %choice.else1051

choice.then1050:                                  ; preds = %a.rd.done1013
  %ram.pay1053 = extractvalue { i1, i64 } %ram.pay1048, 1
  %pay.ptr1054 = inttoptr i64 %ram.pay1053 to ptr
  store ptr %pay.ptr1054, ptr %var._1055, align 8
  br label %choice.exit1052

choice.else1051:                                  ; preds = %a.rd.done1013
  %ram.pay1056 = extractvalue { i1, i64 } %ram.pay1048, 1
  %pay.ptr1057 = inttoptr i64 %ram.pay1056 to ptr
  store ptr %pay.ptr1057, ptr %var._1058, align 8
  %arena.cur1059 = call ptr @dva_arena_current()
  %enum.alloc1060 = call ptr @dva_arena_alloc(ptr %arena.cur1059, i64 16)
  %tag.gep1061 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1060, i32 0, i32 0
  store i64 0, ptr %tag.gep1061, align 8
  %pay.gep1062 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1060, i32 0, i32 1
  %arena.cur1063 = call ptr @dva_arena_current()
  %enum.pay.alloc1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 8)
  store i64 0, ptr %enum.pay.alloc1064, align 8
  store ptr %enum.pay.alloc1064, ptr %pay.gep1062, align 8
  br label %choice.exit1052

choice.exit1052:                                  ; preds = %choice.else1051, %choice.then1050
  %choice.res1065 = phi ptr [ %pay.ptr1054, %choice.then1050 ], [ %enum.alloc1060, %choice.else1051 ]
  store ptr %choice.res1065, ptr %var.cv, align 8
  %var.load1066 = load ptr, ptr %var.cv, align 8
  %var.load1067 = load ptr, ptr %var.br_locals, align 8
  %a.load1068 = load ptr, ptr %var.br_locals, align 8
  %a.null1069 = icmp eq ptr %a.load1068, null
  br i1 %a.null1069, label %a.create1070, label %a.after1071

a.create1070:                                     ; preds = %choice.exit1052
  %arena.cur1072 = call ptr @dva_arena_current()
  %a.create1073 = call ptr @dva_arena_alloc(ptr %arena.cur1072, i64 24)
  %arena.cur1074 = call ptr @dva_arena_current()
  %a.buf1075 = call ptr @dva_arena_alloc(ptr %arena.cur1074, i64 128)
  %a.len.gep1076 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1073, i32 0, i32 0
  store i64 0, ptr %a.len.gep1076, align 8
  %a.data.gep1077 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1073, i32 0, i32 1
  store ptr %a.buf1075, ptr %a.data.gep1077, align 8
  %a.cap.gep1078 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1073, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1078, align 8
  store ptr %a.create1073, ptr %var.br_locals, align 8
  br label %a.after1071

a.after1071:                                      ; preds = %a.create1070, %choice.exit1052
  %a.load21079 = load ptr, ptr %var.br_locals, align 8
  %var.load1080 = load ptr, ptr %var.refs, align 8
  %a.load1081 = load ptr, ptr %var.refs, align 8
  %a.null1082 = icmp eq ptr %a.load1081, null
  br i1 %a.null1082, label %a.create1083, label %a.after1084

a.create1083:                                     ; preds = %a.after1071
  %arena.cur1085 = call ptr @dva_arena_current()
  %a.create1086 = call ptr @dva_arena_alloc(ptr %arena.cur1085, i64 24)
  %arena.cur1087 = call ptr @dva_arena_current()
  %a.buf1088 = call ptr @dva_arena_alloc(ptr %arena.cur1087, i64 128)
  %a.len.gep1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 0
  store i64 0, ptr %a.len.gep1089, align 8
  %a.data.gep1090 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 1
  store ptr %a.buf1088, ptr %a.data.gep1090, align 8
  %a.cap.gep1091 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1086, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1091, align 8
  store ptr %a.create1086, ptr %var.refs, align 8
  br label %a.after1084

a.after1084:                                      ; preds = %a.create1083, %a.after1071
  %a.load21092 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1066, ptr %a.load21079, ptr %a.load21092)
  br label %loop.latch.12

choice.case1097:                                  ; preds = %choice.next702
  %pay.gep1102 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1103 = load ptr, ptr %pay.gep1102, align 8
  store ptr %payload.ptr1103, ptr %var.re, align 8
  %var.load1104 = load ptr, ptr %var.re, align 8
  %fld.gep1105 = getelementptr inbounds { ptr, i1 }, ptr %var.load1104, i32 0, i32 0
  %fld.load1106 = load ptr, ptr %fld.gep1105, align 8
  %a.len.query1107 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1106, i32 0, i32 0
  %a.len.query1108 = load i64, ptr %a.len.query1107, align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

choice.next1098:                                  ; preds = %choice.next702
  %tag.gep1215 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1216 = load i64, ptr %tag.gep1215, align 8
  %tag.match1217 = icmp eq i64 %tag.id1216, 16
  br i1 %tag.match1217, label %choice.case1213, label %choice.next1214

loop.header.13:                                   ; preds = %loop.latch.13, %choice.case1097
  %counter.load1110 = load i64, ptr %loop.idx.13, align 8
  %loop.cond1111 = icmp slt i64 %counter.load1110, %a.len.query1108
  br i1 %loop.cond1111, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i1112 = sub i64 %counter.load1110, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i1112, ptr %var._i1113, align 8
  store i64 %counter.load1110, ptr %var._1114, align 8
  store i64 %counter.load1110, ptr %var.i1109, align 8
  %var.load1115 = load ptr, ptr %var.re, align 8
  %fld.gep1116 = getelementptr inbounds { ptr, i1 }, ptr %var.load1115, i32 0, i32 0
  %fld.load1117 = load ptr, ptr %fld.gep1116, align 8
  %var.load1118 = load i64, ptr %var.i1109, align 8
  %a.rd.nonnull1119 = icmp ne ptr %fld.load1117, null
  br i1 %a.rd.nonnull1119, label %a.rd.check1120, label %a.rd.err.null1122

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %a.after1202
  %step.val1211 = load i64, ptr %loop.step.13, align 8
  %loop.next1212 = add i64 %counter.load1110, %step.val1211
  store i64 %loop.next1212, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  br label %choice.exit

a.rd.check1120:                                   ; preds = %loop.body.13
  %a.rd.len1125 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1117, i32 0, i32 0
  %a.rd.len1126 = load i64, ptr %a.rd.len1125, align 8
  %a.rd.ge01127 = icmp sge i64 %var.load1118, 0
  %a.rd.lt1128 = icmp slt i64 %var.load1118, %a.rd.len1126
  %a.rd.bounds1129 = and i1 %a.rd.ge01127, %a.rd.lt1128
  br i1 %a.rd.bounds1129, label %a.rd.ok1121, label %a.rd.err.oob1123

a.rd.ok1121:                                      ; preds = %a.rd.check1120
  %a.rd.data1130 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1117, i32 0, i32 1
  %a.rd.data1131 = load ptr, ptr %a.rd.data1130, align 8
  %a.rd.elem.gep1132 = getelementptr i64, ptr %a.rd.data1131, i64 %var.load1118
  %a.rd.elem1133 = load i64, ptr %a.rd.elem.gep1132, align 8
  br label %a.rd.done1124

a.rd.err.null1122:                                ; preds = %loop.body.13
  %arena.cur1134 = call ptr @dva_arena_current()
  %err.alloc1135 = call ptr @dva_arena_alloc(ptr %arena.cur1134, i64 56)
  %err.code.gep1136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1136, align 8
  %err.msg.gep1137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1137, align 8
  %err.file.gep1138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1138, align 8
  %err.line.gep1139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 3
  store i64 0, ptr %err.line.gep1139, align 8
  %err.col.gep1140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 4
  store i64 0, ptr %err.col.gep1140, align 8
  %err.ctx.gep1141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1135, i32 0, i32 5
  %err.ctx0.gep1142 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1141, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1142, align 8
  %err.ctx1.gep1143 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1141, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1143, align 8
  %err.p2i1144 = ptrtoint ptr %err.alloc1135 to i64
  br label %a.rd.done1124

a.rd.err.oob1123:                                 ; preds = %a.rd.check1120
  %arena.cur1145 = call ptr @dva_arena_current()
  %err.alloc1146 = call ptr @dva_arena_alloc(ptr %arena.cur1145, i64 56)
  %err.code.gep1147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1147, align 8
  %err.msg.gep1148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1148, align 8
  %err.file.gep1149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1149, align 8
  %err.line.gep1150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 3
  store i64 0, ptr %err.line.gep1150, align 8
  %err.col.gep1151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 4
  store i64 0, ptr %err.col.gep1151, align 8
  %err.ctx.gep1152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1146, i32 0, i32 5
  %err.ctx0.gep1153 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1152, i32 0, i32 0
  store i64 %var.load1118, ptr %err.ctx0.gep1153, align 8
  %err.ctx1.gep1154 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1152, i32 0, i32 1
  store i64 %a.rd.len1126, ptr %err.ctx1.gep1154, align 8
  %err.p2i1155 = ptrtoint ptr %err.alloc1146 to i64
  br label %a.rd.done1124

a.rd.done1124:                                    ; preds = %a.rd.err.oob1123, %a.rd.err.null1122, %a.rd.ok1121
  %a.rd.tag1156 = phi i1 [ true, %a.rd.ok1121 ], [ false, %a.rd.err.null1122 ], [ false, %a.rd.err.oob1123 ]
  %a.rd.pay1157 = phi i64 [ %a.rd.elem1133, %a.rd.ok1121 ], [ %err.p2i1144, %a.rd.err.null1122 ], [ %err.p2i1155, %a.rd.err.oob1123 ]
  %ram.tag1158 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1156, 0
  %ram.pay1159 = insertvalue { i1, i64 } %ram.tag1158, i64 %a.rd.pay1157, 1
  %ram.tag1160 = extractvalue { i1, i64 } %ram.pay1159, 0
  br i1 %ram.tag1160, label %choice.then1161, label %choice.else1162

choice.then1161:                                  ; preds = %a.rd.done1124
  %ram.pay1164 = extractvalue { i1, i64 } %ram.pay1159, 1
  %pay.ptr1165 = inttoptr i64 %ram.pay1164 to ptr
  store ptr %pay.ptr1165, ptr %var._1166, align 8
  br label %choice.exit1163

choice.else1162:                                  ; preds = %a.rd.done1124
  %ram.pay1167 = extractvalue { i1, i64 } %ram.pay1159, 1
  %pay.ptr1168 = inttoptr i64 %ram.pay1167 to ptr
  store ptr %pay.ptr1168, ptr %var._1169, align 8
  %arena.cur1170 = call ptr @dva_arena_current()
  %enum.alloc1171 = call ptr @dva_arena_alloc(ptr %arena.cur1170, i64 16)
  %tag.gep1172 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1171, i32 0, i32 0
  store i64 0, ptr %tag.gep1172, align 8
  %pay.gep1173 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1171, i32 0, i32 1
  %arena.cur1174 = call ptr @dva_arena_current()
  %enum.pay.alloc1175 = call ptr @dva_arena_alloc(ptr %arena.cur1174, i64 8)
  store i64 0, ptr %enum.pay.alloc1175, align 8
  store ptr %enum.pay.alloc1175, ptr %pay.gep1173, align 8
  %arena.cur1176 = call ptr @dva_arena_current()
  %rec.alloc1177 = call ptr @dva_arena_alloc(ptr %arena.cur1176, i64 ptrtoint (ptr getelementptr ({ i1, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld1178 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 0
  store i1 false, ptr %rec.fld1178, align 1
  %rec.fld1179 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 1
  store ptr @str.4.struct, ptr %rec.fld1179, align 8
  %rec.fld1180 = getelementptr inbounds { i1, ptr, ptr }, ptr %rec.alloc1177, i32 0, i32 2
  store ptr %enum.alloc1171, ptr %rec.fld1180, align 8
  br label %choice.exit1163

choice.exit1163:                                  ; preds = %choice.else1162, %choice.then1161
  %choice.res1181 = phi ptr [ %pay.ptr1165, %choice.then1161 ], [ %rec.alloc1177, %choice.else1162 ]
  store ptr %choice.res1181, ptr %var.fld, align 8
  %var.load1182 = load ptr, ptr %var.fld, align 8
  %fld.gep1183 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load1182, i32 0, i32 2
  %fld.load1184 = load ptr, ptr %fld.gep1183, align 8
  %var.load1185 = load ptr, ptr %var.locals, align 8
  %a.load1186 = load ptr, ptr %var.locals, align 8
  %a.null1187 = icmp eq ptr %a.load1186, null
  br i1 %a.null1187, label %a.create1188, label %a.after1189

a.create1188:                                     ; preds = %choice.exit1163
  %arena.cur1190 = call ptr @dva_arena_current()
  %a.create1191 = call ptr @dva_arena_alloc(ptr %arena.cur1190, i64 24)
  %arena.cur1192 = call ptr @dva_arena_current()
  %a.buf1193 = call ptr @dva_arena_alloc(ptr %arena.cur1192, i64 128)
  %a.len.gep1194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1191, i32 0, i32 0
  store i64 0, ptr %a.len.gep1194, align 8
  %a.data.gep1195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1191, i32 0, i32 1
  store ptr %a.buf1193, ptr %a.data.gep1195, align 8
  %a.cap.gep1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1191, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1196, align 8
  store ptr %a.create1191, ptr %var.locals, align 8
  br label %a.after1189

a.after1189:                                      ; preds = %a.create1188, %choice.exit1163
  %a.load21197 = load ptr, ptr %var.locals, align 8
  %var.load1198 = load ptr, ptr %var.refs, align 8
  %a.load1199 = load ptr, ptr %var.refs, align 8
  %a.null1200 = icmp eq ptr %a.load1199, null
  br i1 %a.null1200, label %a.create1201, label %a.after1202

a.create1201:                                     ; preds = %a.after1189
  %arena.cur1203 = call ptr @dva_arena_current()
  %a.create1204 = call ptr @dva_arena_alloc(ptr %arena.cur1203, i64 24)
  %arena.cur1205 = call ptr @dva_arena_current()
  %a.buf1206 = call ptr @dva_arena_alloc(ptr %arena.cur1205, i64 128)
  %a.len.gep1207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 0
  store i64 0, ptr %a.len.gep1207, align 8
  %a.data.gep1208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 1
  store ptr %a.buf1206, ptr %a.data.gep1208, align 8
  %a.cap.gep1209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1204, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1209, align 8
  store ptr %a.create1204, ptr %var.refs, align 8
  br label %a.after1202

a.after1202:                                      ; preds = %a.create1201, %a.after1189
  %a.load21210 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1184, ptr %a.load21197, ptr %a.load21210)
  br label %loop.latch.13

choice.case1213:                                  ; preds = %choice.next1098
  %pay.gep1218 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1219 = load ptr, ptr %pay.gep1218, align 8
  store ptr %payload.ptr1219, ptr %var.m, align 8
  %var.load1220 = load ptr, ptr %var.m, align 8
  %fld.gep1221 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1220, i32 0, i32 0
  %fld.load1222 = load ptr, ptr %fld.gep1221, align 8
  %var.load1223 = load ptr, ptr %var.locals, align 8
  %a.load1224 = load ptr, ptr %var.locals, align 8
  %a.null1225 = icmp eq ptr %a.load1224, null
  br i1 %a.null1225, label %a.create1226, label %a.after1227

choice.next1214:                                  ; preds = %choice.next1098
  %tag.gep1280 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1281 = load i64, ptr %tag.gep1280, align 8
  %tag.match1282 = icmp eq i64 %tag.id1281, 17
  br i1 %tag.match1282, label %choice.case1278, label %choice.next1279

a.create1226:                                     ; preds = %choice.case1213
  %arena.cur1228 = call ptr @dva_arena_current()
  %a.create1229 = call ptr @dva_arena_alloc(ptr %arena.cur1228, i64 24)
  %arena.cur1230 = call ptr @dva_arena_current()
  %a.buf1231 = call ptr @dva_arena_alloc(ptr %arena.cur1230, i64 128)
  %a.len.gep1232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 0
  store i64 0, ptr %a.len.gep1232, align 8
  %a.data.gep1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 1
  store ptr %a.buf1231, ptr %a.data.gep1233, align 8
  %a.cap.gep1234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1234, align 8
  store ptr %a.create1229, ptr %var.locals, align 8
  br label %a.after1227

a.after1227:                                      ; preds = %a.create1226, %choice.case1213
  %a.load21235 = load ptr, ptr %var.locals, align 8
  %var.load1236 = load ptr, ptr %var.refs, align 8
  %a.load1237 = load ptr, ptr %var.refs, align 8
  %a.null1238 = icmp eq ptr %a.load1237, null
  br i1 %a.null1238, label %a.create1239, label %a.after1240

a.create1239:                                     ; preds = %a.after1227
  %arena.cur1241 = call ptr @dva_arena_current()
  %a.create1242 = call ptr @dva_arena_alloc(ptr %arena.cur1241, i64 24)
  %arena.cur1243 = call ptr @dva_arena_current()
  %a.buf1244 = call ptr @dva_arena_alloc(ptr %arena.cur1243, i64 128)
  %a.len.gep1245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 0
  store i64 0, ptr %a.len.gep1245, align 8
  %a.data.gep1246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 1
  store ptr %a.buf1244, ptr %a.data.gep1246, align 8
  %a.cap.gep1247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1247, align 8
  store ptr %a.create1242, ptr %var.refs, align 8
  br label %a.after1240

a.after1240:                                      ; preds = %a.create1239, %a.after1227
  %a.load21248 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1222, ptr %a.load21235, ptr %a.load21248)
  %var.load1249 = load ptr, ptr %var.m, align 8
  %fld.gep1250 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1249, i32 0, i32 3
  %fld.load1251 = load ptr, ptr %fld.gep1250, align 8
  %var.load1252 = load ptr, ptr %var.locals, align 8
  %a.load1253 = load ptr, ptr %var.locals, align 8
  %a.null1254 = icmp eq ptr %a.load1253, null
  br i1 %a.null1254, label %a.create1255, label %a.after1256

a.create1255:                                     ; preds = %a.after1240
  %arena.cur1257 = call ptr @dva_arena_current()
  %a.create1258 = call ptr @dva_arena_alloc(ptr %arena.cur1257, i64 24)
  %arena.cur1259 = call ptr @dva_arena_current()
  %a.buf1260 = call ptr @dva_arena_alloc(ptr %arena.cur1259, i64 128)
  %a.len.gep1261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 0
  store i64 0, ptr %a.len.gep1261, align 8
  %a.data.gep1262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 1
  store ptr %a.buf1260, ptr %a.data.gep1262, align 8
  %a.cap.gep1263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1263, align 8
  store ptr %a.create1258, ptr %var.locals, align 8
  br label %a.after1256

a.after1256:                                      ; preds = %a.create1255, %a.after1240
  %a.load21264 = load ptr, ptr %var.locals, align 8
  %var.load1265 = load ptr, ptr %var.refs, align 8
  %a.load1266 = load ptr, ptr %var.refs, align 8
  %a.null1267 = icmp eq ptr %a.load1266, null
  br i1 %a.null1267, label %a.create1268, label %a.after1269

a.create1268:                                     ; preds = %a.after1256
  %arena.cur1270 = call ptr @dva_arena_current()
  %a.create1271 = call ptr @dva_arena_alloc(ptr %arena.cur1270, i64 24)
  %arena.cur1272 = call ptr @dva_arena_current()
  %a.buf1273 = call ptr @dva_arena_alloc(ptr %arena.cur1272, i64 128)
  %a.len.gep1274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 0
  store i64 0, ptr %a.len.gep1274, align 8
  %a.data.gep1275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 1
  store ptr %a.buf1273, ptr %a.data.gep1275, align 8
  %a.cap.gep1276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1276, align 8
  store ptr %a.create1271, ptr %var.refs, align 8
  br label %a.after1269

a.after1269:                                      ; preds = %a.create1268, %a.after1256
  %a.load21277 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1251, ptr %a.load21264, ptr %a.load21277)
  br label %choice.exit

choice.case1278:                                  ; preds = %choice.next1214
  %pay.gep1283 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1284 = load ptr, ptr %pay.gep1283, align 8
  store ptr %payload.ptr1284, ptr %var.ka, align 8
  %var.load1285 = load ptr, ptr %var.ka, align 8
  %fld.gep1286 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1285, i32 0, i32 0
  %fld.load1287 = load ptr, ptr %fld.gep1286, align 8
  %var.load1288 = load ptr, ptr %var.locals, align 8
  %a.load1289 = load ptr, ptr %var.locals, align 8
  %a.null1290 = icmp eq ptr %a.load1289, null
  br i1 %a.null1290, label %a.create1291, label %a.after1292

choice.next1279:                                  ; preds = %choice.next1214
  %tag.gep1345 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1346 = load i64, ptr %tag.gep1345, align 8
  %tag.match1347 = icmp eq i64 %tag.id1346, 6
  br i1 %tag.match1347, label %choice.case1343, label %choice.next1344

a.create1291:                                     ; preds = %choice.case1278
  %arena.cur1293 = call ptr @dva_arena_current()
  %a.create1294 = call ptr @dva_arena_alloc(ptr %arena.cur1293, i64 24)
  %arena.cur1295 = call ptr @dva_arena_current()
  %a.buf1296 = call ptr @dva_arena_alloc(ptr %arena.cur1295, i64 128)
  %a.len.gep1297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1294, i32 0, i32 0
  store i64 0, ptr %a.len.gep1297, align 8
  %a.data.gep1298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1294, i32 0, i32 1
  store ptr %a.buf1296, ptr %a.data.gep1298, align 8
  %a.cap.gep1299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1294, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1299, align 8
  store ptr %a.create1294, ptr %var.locals, align 8
  br label %a.after1292

a.after1292:                                      ; preds = %a.create1291, %choice.case1278
  %a.load21300 = load ptr, ptr %var.locals, align 8
  %var.load1301 = load ptr, ptr %var.refs, align 8
  %a.load1302 = load ptr, ptr %var.refs, align 8
  %a.null1303 = icmp eq ptr %a.load1302, null
  br i1 %a.null1303, label %a.create1304, label %a.after1305

a.create1304:                                     ; preds = %a.after1292
  %arena.cur1306 = call ptr @dva_arena_current()
  %a.create1307 = call ptr @dva_arena_alloc(ptr %arena.cur1306, i64 24)
  %arena.cur1308 = call ptr @dva_arena_current()
  %a.buf1309 = call ptr @dva_arena_alloc(ptr %arena.cur1308, i64 128)
  %a.len.gep1310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 0
  store i64 0, ptr %a.len.gep1310, align 8
  %a.data.gep1311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 1
  store ptr %a.buf1309, ptr %a.data.gep1311, align 8
  %a.cap.gep1312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1312, align 8
  store ptr %a.create1307, ptr %var.refs, align 8
  br label %a.after1305

a.after1305:                                      ; preds = %a.create1304, %a.after1292
  %a.load21313 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1287, ptr %a.load21300, ptr %a.load21313)
  %var.load1314 = load ptr, ptr %var.ka, align 8
  %fld.gep1315 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1314, i32 0, i32 1
  %fld.load1316 = load ptr, ptr %fld.gep1315, align 8
  %var.load1317 = load ptr, ptr %var.locals, align 8
  %a.load1318 = load ptr, ptr %var.locals, align 8
  %a.null1319 = icmp eq ptr %a.load1318, null
  br i1 %a.null1319, label %a.create1320, label %a.after1321

a.create1320:                                     ; preds = %a.after1305
  %arena.cur1322 = call ptr @dva_arena_current()
  %a.create1323 = call ptr @dva_arena_alloc(ptr %arena.cur1322, i64 24)
  %arena.cur1324 = call ptr @dva_arena_current()
  %a.buf1325 = call ptr @dva_arena_alloc(ptr %arena.cur1324, i64 128)
  %a.len.gep1326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1323, i32 0, i32 0
  store i64 0, ptr %a.len.gep1326, align 8
  %a.data.gep1327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1323, i32 0, i32 1
  store ptr %a.buf1325, ptr %a.data.gep1327, align 8
  %a.cap.gep1328 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1323, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1328, align 8
  store ptr %a.create1323, ptr %var.locals, align 8
  br label %a.after1321

a.after1321:                                      ; preds = %a.create1320, %a.after1305
  %a.load21329 = load ptr, ptr %var.locals, align 8
  %var.load1330 = load ptr, ptr %var.refs, align 8
  %a.load1331 = load ptr, ptr %var.refs, align 8
  %a.null1332 = icmp eq ptr %a.load1331, null
  br i1 %a.null1332, label %a.create1333, label %a.after1334

a.create1333:                                     ; preds = %a.after1321
  %arena.cur1335 = call ptr @dva_arena_current()
  %a.create1336 = call ptr @dva_arena_alloc(ptr %arena.cur1335, i64 24)
  %arena.cur1337 = call ptr @dva_arena_current()
  %a.buf1338 = call ptr @dva_arena_alloc(ptr %arena.cur1337, i64 128)
  %a.len.gep1339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1336, i32 0, i32 0
  store i64 0, ptr %a.len.gep1339, align 8
  %a.data.gep1340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1336, i32 0, i32 1
  store ptr %a.buf1338, ptr %a.data.gep1340, align 8
  %a.cap.gep1341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1336, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1341, align 8
  store ptr %a.create1336, ptr %var.refs, align 8
  br label %a.after1334

a.after1334:                                      ; preds = %a.create1333, %a.after1321
  %a.load21342 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1316, ptr %a.load21329, ptr %a.load21342)
  br label %choice.exit

choice.case1343:                                  ; preds = %choice.next1279
  %pay.gep1348 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1349 = load ptr, ptr %pay.gep1348, align 8
  store ptr %payload.ptr1349, ptr %var.a1350, align 8
  %var.load1351 = load ptr, ptr %var.a1350, align 8
  %fld.gep1352 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1351, i32 0, i32 5
  %fld.load1353 = load ptr, ptr %fld.gep1352, align 8
  %var.load1354 = load ptr, ptr %var.locals, align 8
  %a.load1355 = load ptr, ptr %var.locals, align 8
  %a.null1356 = icmp eq ptr %a.load1355, null
  br i1 %a.null1356, label %a.create1357, label %a.after1358

choice.next1344:                                  ; preds = %choice.next1279
  %tag.gep1411 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1412 = load i64, ptr %tag.gep1411, align 8
  %tag.match1413 = icmp eq i64 %tag.id1412, 12
  br i1 %tag.match1413, label %choice.case1409, label %choice.next1410

a.create1357:                                     ; preds = %choice.case1343
  %arena.cur1359 = call ptr @dva_arena_current()
  %a.create1360 = call ptr @dva_arena_alloc(ptr %arena.cur1359, i64 24)
  %arena.cur1361 = call ptr @dva_arena_current()
  %a.buf1362 = call ptr @dva_arena_alloc(ptr %arena.cur1361, i64 128)
  %a.len.gep1363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 0
  store i64 0, ptr %a.len.gep1363, align 8
  %a.data.gep1364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 1
  store ptr %a.buf1362, ptr %a.data.gep1364, align 8
  %a.cap.gep1365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1360, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1365, align 8
  store ptr %a.create1360, ptr %var.locals, align 8
  br label %a.after1358

a.after1358:                                      ; preds = %a.create1357, %choice.case1343
  %a.load21366 = load ptr, ptr %var.locals, align 8
  %var.load1367 = load ptr, ptr %var.refs, align 8
  %a.load1368 = load ptr, ptr %var.refs, align 8
  %a.null1369 = icmp eq ptr %a.load1368, null
  br i1 %a.null1369, label %a.create1370, label %a.after1371

a.create1370:                                     ; preds = %a.after1358
  %arena.cur1372 = call ptr @dva_arena_current()
  %a.create1373 = call ptr @dva_arena_alloc(ptr %arena.cur1372, i64 24)
  %arena.cur1374 = call ptr @dva_arena_current()
  %a.buf1375 = call ptr @dva_arena_alloc(ptr %arena.cur1374, i64 128)
  %a.len.gep1376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 0
  store i64 0, ptr %a.len.gep1376, align 8
  %a.data.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 1
  store ptr %a.buf1375, ptr %a.data.gep1377, align 8
  %a.cap.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1378, align 8
  store ptr %a.create1373, ptr %var.refs, align 8
  br label %a.after1371

a.after1371:                                      ; preds = %a.create1370, %a.after1358
  %a.load21379 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1353, ptr %a.load21366, ptr %a.load21379)
  %var.load1380 = load ptr, ptr %var.a1350, align 8
  %fld.gep1381 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1380, i32 0, i32 6
  %fld.load1382 = load ptr, ptr %fld.gep1381, align 8
  %var.load1383 = load ptr, ptr %var.locals, align 8
  %a.load1384 = load ptr, ptr %var.locals, align 8
  %a.null1385 = icmp eq ptr %a.load1384, null
  br i1 %a.null1385, label %a.create1386, label %a.after1387

a.create1386:                                     ; preds = %a.after1371
  %arena.cur1388 = call ptr @dva_arena_current()
  %a.create1389 = call ptr @dva_arena_alloc(ptr %arena.cur1388, i64 24)
  %arena.cur1390 = call ptr @dva_arena_current()
  %a.buf1391 = call ptr @dva_arena_alloc(ptr %arena.cur1390, i64 128)
  %a.len.gep1392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 0
  store i64 0, ptr %a.len.gep1392, align 8
  %a.data.gep1393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 1
  store ptr %a.buf1391, ptr %a.data.gep1393, align 8
  %a.cap.gep1394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1389, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1394, align 8
  store ptr %a.create1389, ptr %var.locals, align 8
  br label %a.after1387

a.after1387:                                      ; preds = %a.create1386, %a.after1371
  %a.load21395 = load ptr, ptr %var.locals, align 8
  %var.load1396 = load ptr, ptr %var.refs, align 8
  %a.load1397 = load ptr, ptr %var.refs, align 8
  %a.null1398 = icmp eq ptr %a.load1397, null
  br i1 %a.null1398, label %a.create1399, label %a.after1400

a.create1399:                                     ; preds = %a.after1387
  %arena.cur1401 = call ptr @dva_arena_current()
  %a.create1402 = call ptr @dva_arena_alloc(ptr %arena.cur1401, i64 24)
  %arena.cur1403 = call ptr @dva_arena_current()
  %a.buf1404 = call ptr @dva_arena_alloc(ptr %arena.cur1403, i64 128)
  %a.len.gep1405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1402, i32 0, i32 0
  store i64 0, ptr %a.len.gep1405, align 8
  %a.data.gep1406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1402, i32 0, i32 1
  store ptr %a.buf1404, ptr %a.data.gep1406, align 8
  %a.cap.gep1407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1402, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1407, align 8
  store ptr %a.create1402, ptr %var.refs, align 8
  br label %a.after1400

a.after1400:                                      ; preds = %a.create1399, %a.after1387
  %a.load21408 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1382, ptr %a.load21395, ptr %a.load21408)
  br label %choice.exit

choice.case1409:                                  ; preds = %choice.next1344
  %pay.gep1414 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1415 = load ptr, ptr %pay.gep1414, align 8
  store ptr %payload.ptr1415, ptr %var.cy, align 8
  %var.load1416 = load ptr, ptr %var.cy, align 8
  %fld.gep1417 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1416, i32 0, i32 0
  %fld.load1418 = load ptr, ptr %fld.gep1417, align 8
  %var.load1419 = load ptr, ptr %var.locals, align 8
  %a.load1420 = load ptr, ptr %var.locals, align 8
  %a.null1421 = icmp eq ptr %a.load1420, null
  br i1 %a.null1421, label %a.create1422, label %a.after1423

choice.next1410:                                  ; preds = %choice.next1344
  %tag.gep1476 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1477 = load i64, ptr %tag.gep1476, align 8
  %tag.match1478 = icmp eq i64 %tag.id1477, 11
  br i1 %tag.match1478, label %choice.case1474, label %choice.next1475

a.create1422:                                     ; preds = %choice.case1409
  %arena.cur1424 = call ptr @dva_arena_current()
  %a.create1425 = call ptr @dva_arena_alloc(ptr %arena.cur1424, i64 24)
  %arena.cur1426 = call ptr @dva_arena_current()
  %a.buf1427 = call ptr @dva_arena_alloc(ptr %arena.cur1426, i64 128)
  %a.len.gep1428 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1425, i32 0, i32 0
  store i64 0, ptr %a.len.gep1428, align 8
  %a.data.gep1429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1425, i32 0, i32 1
  store ptr %a.buf1427, ptr %a.data.gep1429, align 8
  %a.cap.gep1430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1425, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1430, align 8
  store ptr %a.create1425, ptr %var.locals, align 8
  br label %a.after1423

a.after1423:                                      ; preds = %a.create1422, %choice.case1409
  %a.load21431 = load ptr, ptr %var.locals, align 8
  %var.load1432 = load ptr, ptr %var.refs, align 8
  %a.load1433 = load ptr, ptr %var.refs, align 8
  %a.null1434 = icmp eq ptr %a.load1433, null
  br i1 %a.null1434, label %a.create1435, label %a.after1436

a.create1435:                                     ; preds = %a.after1423
  %arena.cur1437 = call ptr @dva_arena_current()
  %a.create1438 = call ptr @dva_arena_alloc(ptr %arena.cur1437, i64 24)
  %arena.cur1439 = call ptr @dva_arena_current()
  %a.buf1440 = call ptr @dva_arena_alloc(ptr %arena.cur1439, i64 128)
  %a.len.gep1441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1438, i32 0, i32 0
  store i64 0, ptr %a.len.gep1441, align 8
  %a.data.gep1442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1438, i32 0, i32 1
  store ptr %a.buf1440, ptr %a.data.gep1442, align 8
  %a.cap.gep1443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1438, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1443, align 8
  store ptr %a.create1438, ptr %var.refs, align 8
  br label %a.after1436

a.after1436:                                      ; preds = %a.create1435, %a.after1423
  %a.load21444 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1418, ptr %a.load21431, ptr %a.load21444)
  %var.load1445 = load ptr, ptr %var.cy, align 8
  %fld.gep1446 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1445, i32 0, i32 1
  %fld.load1447 = load ptr, ptr %fld.gep1446, align 8
  %var.load1448 = load ptr, ptr %var.locals, align 8
  %a.load1449 = load ptr, ptr %var.locals, align 8
  %a.null1450 = icmp eq ptr %a.load1449, null
  br i1 %a.null1450, label %a.create1451, label %a.after1452

a.create1451:                                     ; preds = %a.after1436
  %arena.cur1453 = call ptr @dva_arena_current()
  %a.create1454 = call ptr @dva_arena_alloc(ptr %arena.cur1453, i64 24)
  %arena.cur1455 = call ptr @dva_arena_current()
  %a.buf1456 = call ptr @dva_arena_alloc(ptr %arena.cur1455, i64 128)
  %a.len.gep1457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1454, i32 0, i32 0
  store i64 0, ptr %a.len.gep1457, align 8
  %a.data.gep1458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1454, i32 0, i32 1
  store ptr %a.buf1456, ptr %a.data.gep1458, align 8
  %a.cap.gep1459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1454, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1459, align 8
  store ptr %a.create1454, ptr %var.locals, align 8
  br label %a.after1452

a.after1452:                                      ; preds = %a.create1451, %a.after1436
  %a.load21460 = load ptr, ptr %var.locals, align 8
  %var.load1461 = load ptr, ptr %var.refs, align 8
  %a.load1462 = load ptr, ptr %var.refs, align 8
  %a.null1463 = icmp eq ptr %a.load1462, null
  br i1 %a.null1463, label %a.create1464, label %a.after1465

a.create1464:                                     ; preds = %a.after1452
  %arena.cur1466 = call ptr @dva_arena_current()
  %a.create1467 = call ptr @dva_arena_alloc(ptr %arena.cur1466, i64 24)
  %arena.cur1468 = call ptr @dva_arena_current()
  %a.buf1469 = call ptr @dva_arena_alloc(ptr %arena.cur1468, i64 128)
  %a.len.gep1470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 0
  store i64 0, ptr %a.len.gep1470, align 8
  %a.data.gep1471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 1
  store ptr %a.buf1469, ptr %a.data.gep1471, align 8
  %a.cap.gep1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1472, align 8
  store ptr %a.create1467, ptr %var.refs, align 8
  br label %a.after1465

a.after1465:                                      ; preds = %a.create1464, %a.after1452
  %a.load21473 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1447, ptr %a.load21460, ptr %a.load21473)
  br label %choice.exit

choice.case1474:                                  ; preds = %choice.next1410
  %pay.gep1479 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1480 = load ptr, ptr %pay.gep1479, align 8
  store ptr %payload.ptr1480, ptr %var.ce, align 8
  %var.load1481 = load ptr, ptr %var.ce, align 8
  %fld.gep1482 = getelementptr inbounds { ptr, ptr }, ptr %var.load1481, i32 0, i32 0
  %fld.load1483 = load ptr, ptr %fld.gep1482, align 8
  %var.load1484 = load ptr, ptr %var.locals, align 8
  %a.load1485 = load ptr, ptr %var.locals, align 8
  %a.null1486 = icmp eq ptr %a.load1485, null
  br i1 %a.null1486, label %a.create1487, label %a.after1488

choice.next1475:                                  ; preds = %choice.next1410
  %tag.gep1541 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1542 = load i64, ptr %tag.gep1541, align 8
  %tag.match1543 = icmp eq i64 %tag.id1542, 13
  br i1 %tag.match1543, label %choice.case1539, label %choice.next1540

a.create1487:                                     ; preds = %choice.case1474
  %arena.cur1489 = call ptr @dva_arena_current()
  %a.create1490 = call ptr @dva_arena_alloc(ptr %arena.cur1489, i64 24)
  %arena.cur1491 = call ptr @dva_arena_current()
  %a.buf1492 = call ptr @dva_arena_alloc(ptr %arena.cur1491, i64 128)
  %a.len.gep1493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1490, i32 0, i32 0
  store i64 0, ptr %a.len.gep1493, align 8
  %a.data.gep1494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1490, i32 0, i32 1
  store ptr %a.buf1492, ptr %a.data.gep1494, align 8
  %a.cap.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1490, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1495, align 8
  store ptr %a.create1490, ptr %var.locals, align 8
  br label %a.after1488

a.after1488:                                      ; preds = %a.create1487, %choice.case1474
  %a.load21496 = load ptr, ptr %var.locals, align 8
  %var.load1497 = load ptr, ptr %var.refs, align 8
  %a.load1498 = load ptr, ptr %var.refs, align 8
  %a.null1499 = icmp eq ptr %a.load1498, null
  br i1 %a.null1499, label %a.create1500, label %a.after1501

a.create1500:                                     ; preds = %a.after1488
  %arena.cur1502 = call ptr @dva_arena_current()
  %a.create1503 = call ptr @dva_arena_alloc(ptr %arena.cur1502, i64 24)
  %arena.cur1504 = call ptr @dva_arena_current()
  %a.buf1505 = call ptr @dva_arena_alloc(ptr %arena.cur1504, i64 128)
  %a.len.gep1506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1503, i32 0, i32 0
  store i64 0, ptr %a.len.gep1506, align 8
  %a.data.gep1507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1503, i32 0, i32 1
  store ptr %a.buf1505, ptr %a.data.gep1507, align 8
  %a.cap.gep1508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1503, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1508, align 8
  store ptr %a.create1503, ptr %var.refs, align 8
  br label %a.after1501

a.after1501:                                      ; preds = %a.create1500, %a.after1488
  %a.load21509 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1483, ptr %a.load21496, ptr %a.load21509)
  %var.load1510 = load ptr, ptr %var.ce, align 8
  %fld.gep1511 = getelementptr inbounds { ptr, ptr }, ptr %var.load1510, i32 0, i32 1
  %fld.load1512 = load ptr, ptr %fld.gep1511, align 8
  %var.load1513 = load ptr, ptr %var.locals, align 8
  %a.load1514 = load ptr, ptr %var.locals, align 8
  %a.null1515 = icmp eq ptr %a.load1514, null
  br i1 %a.null1515, label %a.create1516, label %a.after1517

a.create1516:                                     ; preds = %a.after1501
  %arena.cur1518 = call ptr @dva_arena_current()
  %a.create1519 = call ptr @dva_arena_alloc(ptr %arena.cur1518, i64 24)
  %arena.cur1520 = call ptr @dva_arena_current()
  %a.buf1521 = call ptr @dva_arena_alloc(ptr %arena.cur1520, i64 128)
  %a.len.gep1522 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1519, i32 0, i32 0
  store i64 0, ptr %a.len.gep1522, align 8
  %a.data.gep1523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1519, i32 0, i32 1
  store ptr %a.buf1521, ptr %a.data.gep1523, align 8
  %a.cap.gep1524 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1519, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1524, align 8
  store ptr %a.create1519, ptr %var.locals, align 8
  br label %a.after1517

a.after1517:                                      ; preds = %a.create1516, %a.after1501
  %a.load21525 = load ptr, ptr %var.locals, align 8
  %var.load1526 = load ptr, ptr %var.refs, align 8
  %a.load1527 = load ptr, ptr %var.refs, align 8
  %a.null1528 = icmp eq ptr %a.load1527, null
  br i1 %a.null1528, label %a.create1529, label %a.after1530

a.create1529:                                     ; preds = %a.after1517
  %arena.cur1531 = call ptr @dva_arena_current()
  %a.create1532 = call ptr @dva_arena_alloc(ptr %arena.cur1531, i64 24)
  %arena.cur1533 = call ptr @dva_arena_current()
  %a.buf1534 = call ptr @dva_arena_alloc(ptr %arena.cur1533, i64 128)
  %a.len.gep1535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 0
  store i64 0, ptr %a.len.gep1535, align 8
  %a.data.gep1536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 1
  store ptr %a.buf1534, ptr %a.data.gep1536, align 8
  %a.cap.gep1537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1532, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1537, align 8
  store ptr %a.create1532, ptr %var.refs, align 8
  br label %a.after1530

a.after1530:                                      ; preds = %a.create1529, %a.after1517
  %a.load21538 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1512, ptr %a.load21525, ptr %a.load21538)
  br label %choice.exit

choice.case1539:                                  ; preds = %choice.next1475
  %pay.gep1544 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1545 = load ptr, ptr %pay.gep1544, align 8
  store ptr %payload.ptr1545, ptr %var.r, align 8
  %var.load1546 = load ptr, ptr %var.r, align 8
  %fld.gep1547 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1546, i32 0, i32 0
  %fld.load1548 = load i1, ptr %fld.gep1547, align 1
  br i1 %fld.load1548, label %choice.then1549, label %choice.exit1550

choice.next1540:                                  ; preds = %choice.next1475
  %tag.gep1694 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1695 = load i64, ptr %tag.gep1694, align 8
  %tag.match1696 = icmp eq i64 %tag.id1695, 36
  br i1 %tag.match1696, label %choice.case1692, label %choice.next1693

choice.then1549:                                  ; preds = %choice.case1539
  %var.load1551 = load ptr, ptr %var.r, align 8
  %fld.gep1552 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1551, i32 0, i32 2
  %fld.load1553 = load ptr, ptr %fld.gep1552, align 8
  %var.load1554 = load ptr, ptr %var.locals, align 8
  %a.load1555 = load ptr, ptr %var.locals, align 8
  %a.null1556 = icmp eq ptr %a.load1555, null
  br i1 %a.null1556, label %a.create1557, label %a.after1558

choice.exit1550:                                  ; preds = %a.after1571, %choice.case1539
  %var.load1580 = load ptr, ptr %var.r, align 8
  %fld.gep1581 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1580, i32 0, i32 1
  %fld.load1582 = load i1, ptr %fld.gep1581, align 1
  br i1 %fld.load1582, label %choice.then1583, label %choice.exit1584

a.create1557:                                     ; preds = %choice.then1549
  %arena.cur1559 = call ptr @dva_arena_current()
  %a.create1560 = call ptr @dva_arena_alloc(ptr %arena.cur1559, i64 24)
  %arena.cur1561 = call ptr @dva_arena_current()
  %a.buf1562 = call ptr @dva_arena_alloc(ptr %arena.cur1561, i64 128)
  %a.len.gep1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1560, i32 0, i32 0
  store i64 0, ptr %a.len.gep1563, align 8
  %a.data.gep1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1560, i32 0, i32 1
  store ptr %a.buf1562, ptr %a.data.gep1564, align 8
  %a.cap.gep1565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1560, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1565, align 8
  store ptr %a.create1560, ptr %var.locals, align 8
  br label %a.after1558

a.after1558:                                      ; preds = %a.create1557, %choice.then1549
  %a.load21566 = load ptr, ptr %var.locals, align 8
  %var.load1567 = load ptr, ptr %var.refs, align 8
  %a.load1568 = load ptr, ptr %var.refs, align 8
  %a.null1569 = icmp eq ptr %a.load1568, null
  br i1 %a.null1569, label %a.create1570, label %a.after1571

a.create1570:                                     ; preds = %a.after1558
  %arena.cur1572 = call ptr @dva_arena_current()
  %a.create1573 = call ptr @dva_arena_alloc(ptr %arena.cur1572, i64 24)
  %arena.cur1574 = call ptr @dva_arena_current()
  %a.buf1575 = call ptr @dva_arena_alloc(ptr %arena.cur1574, i64 128)
  %a.len.gep1576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 0
  store i64 0, ptr %a.len.gep1576, align 8
  %a.data.gep1577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 1
  store ptr %a.buf1575, ptr %a.data.gep1577, align 8
  %a.cap.gep1578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1573, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1578, align 8
  store ptr %a.create1573, ptr %var.refs, align 8
  br label %a.after1571

a.after1571:                                      ; preds = %a.create1570, %a.after1558
  %a.load21579 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1553, ptr %a.load21566, ptr %a.load21579)
  br label %choice.exit1550

choice.then1583:                                  ; preds = %choice.exit1550
  %var.load1585 = load ptr, ptr %var.r, align 8
  %fld.gep1586 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1585, i32 0, i32 3
  %fld.load1587 = load ptr, ptr %fld.gep1586, align 8
  %tag.gep1591 = getelementptr inbounds { i64, ptr }, ptr %fld.load1587, i32 0, i32 0
  %tag.id1592 = load i64, ptr %tag.gep1591, align 8
  %tag.match1593 = icmp eq i64 %tag.id1592, 3
  br i1 %tag.match1593, label %choice.case1589, label %choice.next1590

choice.exit1584:                                  ; preds = %choice.exit1588, %choice.exit1550
  br label %choice.exit

choice.exit1588:                                  ; preds = %a.after1683, %choice.exit1633
  br label %choice.exit1584

choice.case1589:                                  ; preds = %choice.then1583
  %pay.gep1594 = getelementptr inbounds { i64, ptr }, ptr %fld.load1587, i32 0, i32 1
  %payload.ptr1595 = load ptr, ptr %pay.gep1594, align 8
  store ptr %payload.ptr1595, ptr %var.v1596, align 8
  %var.load1597 = load ptr, ptr %var.v1596, align 8
  %eq.lhs.len1598 = getelementptr inbounds { i64, ptr }, ptr %var.load1597, i32 0, i32 0
  %eq.lhs.len1599 = load i64, ptr %eq.lhs.len1598, align 8
  %eq.lhs.len1600 = and i64 %eq.lhs.len1599, 281474976710655
  %str.tag1601 = lshr i64 %eq.lhs.len1599, 48
  %str.immortal1602 = icmp eq i64 %str.tag1601, 0
  br i1 %str.immortal1602, label %str_ok1604, label %str_gen_check1603

choice.next1590:                                  ; preds = %choice.then1583
  %var.load1663 = load ptr, ptr %var.r, align 8
  %fld.gep1664 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1663, i32 0, i32 3
  %fld.load1665 = load ptr, ptr %fld.gep1664, align 8
  %var.load1666 = load ptr, ptr %var.locals, align 8
  %a.load1667 = load ptr, ptr %var.locals, align 8
  %a.null1668 = icmp eq ptr %a.load1667, null
  br i1 %a.null1668, label %a.create1669, label %a.after1670

str_gen_check1603:                                ; preds = %choice.case1589
  %arena.cur1606 = call ptr @dva_arena_current()
  %tag.valid1607 = call i1 @dva_arena_validate_tag(ptr %arena.cur1606, i64 %str.tag1601)
  br i1 %tag.valid1607, label %str_ok1604, label %str_stale1605

str_ok1604:                                       ; preds = %str_stale1605, %str_gen_check1603, %choice.case1589
  %eq.rhs.len1608 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1609 = and i64 %eq.rhs.len1608, 281474976710655
  %str.tag1610 = lshr i64 %eq.rhs.len1608, 48
  %str.immortal1611 = icmp eq i64 %str.tag1610, 0
  br i1 %str.immortal1611, label %str_ok1613, label %str_gen_check1612

str_stale1605:                                    ; preds = %str_gen_check1603
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1604

str_gen_check1612:                                ; preds = %str_ok1604
  %arena.cur1615 = call ptr @dva_arena_current()
  %tag.valid1616 = call i1 @dva_arena_validate_tag(ptr %arena.cur1615, i64 %str.tag1610)
  br i1 %tag.valid1616, label %str_ok1613, label %str_stale1614

str_ok1613:                                       ; preds = %str_stale1614, %str_gen_check1612, %str_ok1604
  %eq.len1617 = icmp eq i64 %eq.lhs.len1600, %eq.rhs.len1609
  br i1 %eq.len1617, label %str.eq.then1618, label %str.eq.else1619

str_stale1614:                                    ; preds = %str_gen_check1612
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1613

str.eq.then1618:                                  ; preds = %str_ok1613
  %eq.lhs.data1621 = getelementptr inbounds { i64, ptr }, ptr %var.load1597, i32 0, i32 1
  %eq.lhs.data1622 = load ptr, ptr %eq.lhs.data1621, align 8
  %eq.rhs.data1623 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1624 = call i32 @memcmp(ptr %eq.lhs.data1622, ptr %eq.rhs.data1623, i64 %eq.lhs.len1600)
  %eq.cmp.zero1625 = icmp eq i32 %eq.memcmp1624, 0
  br label %str.eq.merge1620

str.eq.else1619:                                  ; preds = %str_ok1613
  br label %str.eq.merge1620

str.eq.merge1620:                                 ; preds = %str.eq.else1619, %str.eq.then1618
  %str.eq.result1626 = phi i1 [ %eq.cmp.zero1625, %str.eq.then1618 ], [ false, %str.eq.else1619 ]
  br i1 %str.eq.result1626, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %str.eq.merge1620
  %var.load1627 = load ptr, ptr %var.r, align 8
  %fld.gep1628 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1627, i32 0, i32 0
  %fld.load1629 = load i1, ptr %fld.gep1628, align 1
  %nottmp1630 = xor i1 %fld.load1629, true
  br label %and.14.exit

and.14.else:                                      ; preds = %str.eq.merge1620
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %nottmp1630, %and.14.then ], [ %str.eq.result1626, %and.14.else ]
  %nottmp1631 = xor i1 %and.14.phi, true
  br i1 %nottmp1631, label %choice.then1632, label %choice.exit1633

choice.then1632:                                  ; preds = %and.14.exit
  %var.load1634 = load ptr, ptr %var.r, align 8
  %fld.gep1635 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1634, i32 0, i32 3
  %fld.load1636 = load ptr, ptr %fld.gep1635, align 8
  %var.load1637 = load ptr, ptr %var.locals, align 8
  %a.load1638 = load ptr, ptr %var.locals, align 8
  %a.null1639 = icmp eq ptr %a.load1638, null
  br i1 %a.null1639, label %a.create1640, label %a.after1641

choice.exit1633:                                  ; preds = %a.after1654, %and.14.exit
  br label %choice.exit1588

a.create1640:                                     ; preds = %choice.then1632
  %arena.cur1642 = call ptr @dva_arena_current()
  %a.create1643 = call ptr @dva_arena_alloc(ptr %arena.cur1642, i64 24)
  %arena.cur1644 = call ptr @dva_arena_current()
  %a.buf1645 = call ptr @dva_arena_alloc(ptr %arena.cur1644, i64 128)
  %a.len.gep1646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1643, i32 0, i32 0
  store i64 0, ptr %a.len.gep1646, align 8
  %a.data.gep1647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1643, i32 0, i32 1
  store ptr %a.buf1645, ptr %a.data.gep1647, align 8
  %a.cap.gep1648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1643, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1648, align 8
  store ptr %a.create1643, ptr %var.locals, align 8
  br label %a.after1641

a.after1641:                                      ; preds = %a.create1640, %choice.then1632
  %a.load21649 = load ptr, ptr %var.locals, align 8
  %var.load1650 = load ptr, ptr %var.refs, align 8
  %a.load1651 = load ptr, ptr %var.refs, align 8
  %a.null1652 = icmp eq ptr %a.load1651, null
  br i1 %a.null1652, label %a.create1653, label %a.after1654

a.create1653:                                     ; preds = %a.after1641
  %arena.cur1655 = call ptr @dva_arena_current()
  %a.create1656 = call ptr @dva_arena_alloc(ptr %arena.cur1655, i64 24)
  %arena.cur1657 = call ptr @dva_arena_current()
  %a.buf1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 128)
  %a.len.gep1659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 0
  store i64 0, ptr %a.len.gep1659, align 8
  %a.data.gep1660 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 1
  store ptr %a.buf1658, ptr %a.data.gep1660, align 8
  %a.cap.gep1661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1656, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1661, align 8
  store ptr %a.create1656, ptr %var.refs, align 8
  br label %a.after1654

a.after1654:                                      ; preds = %a.create1653, %a.after1641
  %a.load21662 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1636, ptr %a.load21649, ptr %a.load21662)
  br label %choice.exit1633

a.create1669:                                     ; preds = %choice.next1590
  %arena.cur1671 = call ptr @dva_arena_current()
  %a.create1672 = call ptr @dva_arena_alloc(ptr %arena.cur1671, i64 24)
  %arena.cur1673 = call ptr @dva_arena_current()
  %a.buf1674 = call ptr @dva_arena_alloc(ptr %arena.cur1673, i64 128)
  %a.len.gep1675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1672, i32 0, i32 0
  store i64 0, ptr %a.len.gep1675, align 8
  %a.data.gep1676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1672, i32 0, i32 1
  store ptr %a.buf1674, ptr %a.data.gep1676, align 8
  %a.cap.gep1677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1672, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1677, align 8
  store ptr %a.create1672, ptr %var.locals, align 8
  br label %a.after1670

a.after1670:                                      ; preds = %a.create1669, %choice.next1590
  %a.load21678 = load ptr, ptr %var.locals, align 8
  %var.load1679 = load ptr, ptr %var.refs, align 8
  %a.load1680 = load ptr, ptr %var.refs, align 8
  %a.null1681 = icmp eq ptr %a.load1680, null
  br i1 %a.null1681, label %a.create1682, label %a.after1683

a.create1682:                                     ; preds = %a.after1670
  %arena.cur1684 = call ptr @dva_arena_current()
  %a.create1685 = call ptr @dva_arena_alloc(ptr %arena.cur1684, i64 24)
  %arena.cur1686 = call ptr @dva_arena_current()
  %a.buf1687 = call ptr @dva_arena_alloc(ptr %arena.cur1686, i64 128)
  %a.len.gep1688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 0
  store i64 0, ptr %a.len.gep1688, align 8
  %a.data.gep1689 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 1
  store ptr %a.buf1687, ptr %a.data.gep1689, align 8
  %a.cap.gep1690 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1685, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1690, align 8
  store ptr %a.create1685, ptr %var.refs, align 8
  br label %a.after1683

a.after1683:                                      ; preds = %a.create1682, %a.after1670
  %a.load21691 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1665, ptr %a.load21678, ptr %a.load21691)
  br label %choice.exit1588

choice.case1692:                                  ; preds = %choice.next1540
  %pay.gep1697 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1698 = load ptr, ptr %pay.gep1697, align 8
  store ptr %payload.ptr1698, ptr %var.na, align 8
  %var.load1699 = load ptr, ptr %var.na, align 8
  %fld.gep1700 = getelementptr inbounds { ptr, ptr }, ptr %var.load1699, i32 0, i32 1
  %fld.load1701 = load ptr, ptr %fld.gep1700, align 8
  %var.load1702 = load ptr, ptr %var.locals, align 8
  %a.load1703 = load ptr, ptr %var.locals, align 8
  %a.null1704 = icmp eq ptr %a.load1703, null
  br i1 %a.null1704, label %a.create1705, label %a.after1706

choice.next1693:                                  ; preds = %choice.next1540
  %tag.gep1730 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1731 = load i64, ptr %tag.gep1730, align 8
  %tag.match1732 = icmp eq i64 %tag.id1731, 18
  br i1 %tag.match1732, label %choice.case1728, label %choice.next1729

a.create1705:                                     ; preds = %choice.case1692
  %arena.cur1707 = call ptr @dva_arena_current()
  %a.create1708 = call ptr @dva_arena_alloc(ptr %arena.cur1707, i64 24)
  %arena.cur1709 = call ptr @dva_arena_current()
  %a.buf1710 = call ptr @dva_arena_alloc(ptr %arena.cur1709, i64 128)
  %a.len.gep1711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1708, i32 0, i32 0
  store i64 0, ptr %a.len.gep1711, align 8
  %a.data.gep1712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1708, i32 0, i32 1
  store ptr %a.buf1710, ptr %a.data.gep1712, align 8
  %a.cap.gep1713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1708, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1713, align 8
  store ptr %a.create1708, ptr %var.locals, align 8
  br label %a.after1706

a.after1706:                                      ; preds = %a.create1705, %choice.case1692
  %a.load21714 = load ptr, ptr %var.locals, align 8
  %var.load1715 = load ptr, ptr %var.refs, align 8
  %a.load1716 = load ptr, ptr %var.refs, align 8
  %a.null1717 = icmp eq ptr %a.load1716, null
  br i1 %a.null1717, label %a.create1718, label %a.after1719

a.create1718:                                     ; preds = %a.after1706
  %arena.cur1720 = call ptr @dva_arena_current()
  %a.create1721 = call ptr @dva_arena_alloc(ptr %arena.cur1720, i64 24)
  %arena.cur1722 = call ptr @dva_arena_current()
  %a.buf1723 = call ptr @dva_arena_alloc(ptr %arena.cur1722, i64 128)
  %a.len.gep1724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1721, i32 0, i32 0
  store i64 0, ptr %a.len.gep1724, align 8
  %a.data.gep1725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1721, i32 0, i32 1
  store ptr %a.buf1723, ptr %a.data.gep1725, align 8
  %a.cap.gep1726 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1721, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1726, align 8
  store ptr %a.create1721, ptr %var.refs, align 8
  br label %a.after1719

a.after1719:                                      ; preds = %a.create1718, %a.after1706
  %a.load21727 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1701, ptr %a.load21714, ptr %a.load21727)
  br label %choice.exit

choice.case1728:                                  ; preds = %choice.next1693
  %pay.gep1733 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1734 = load ptr, ptr %pay.gep1733, align 8
  store ptr %payload.ptr1734, ptr %var.v1735, align 8
  %var.load1736 = load ptr, ptr %var.v1735, align 8
  %fld.gep1737 = getelementptr inbounds { ptr, ptr }, ptr %var.load1736, i32 0, i32 1
  %fld.load1738 = load ptr, ptr %fld.gep1737, align 8
  %a.len.query1739 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1738, i32 0, i32 0
  %a.len.query1740 = load i64, ptr %a.len.query1739, align 8
  store i64 0, ptr %loop.idx.15, align 8
  br label %loop.header.15

choice.next1729:                                  ; preds = %choice.next1693
  %tag.gep1840 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1841 = load i64, ptr %tag.gep1840, align 8
  %tag.match1842 = icmp eq i64 %tag.id1841, 25
  br i1 %tag.match1842, label %choice.case1838, label %choice.next1839

loop.header.15:                                   ; preds = %loop.latch.15, %choice.case1728
  %counter.load1742 = load i64, ptr %loop.idx.15, align 8
  %loop.cond1743 = icmp slt i64 %counter.load1742, %a.len.query1740
  br i1 %loop.cond1743, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i1744 = sub i64 %counter.load1742, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i1744, ptr %var._i1745, align 8
  store i64 %counter.load1742, ptr %var._1746, align 8
  store i64 %counter.load1742, ptr %var.i1741, align 8
  %var.load1747 = load ptr, ptr %var.v1735, align 8
  %fld.gep1748 = getelementptr inbounds { ptr, ptr }, ptr %var.load1747, i32 0, i32 1
  %fld.load1749 = load ptr, ptr %fld.gep1748, align 8
  %var.load1750 = load i64, ptr %var.i1741, align 8
  %a.rd.nonnull1751 = icmp ne ptr %fld.load1749, null
  br i1 %a.rd.nonnull1751, label %a.rd.check1752, label %a.rd.err.null1754

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %a.after1827
  %step.val1836 = load i64, ptr %loop.step.15, align 8
  %loop.next1837 = add i64 %counter.load1742, %step.val1836
  store i64 %loop.next1837, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit

a.rd.check1752:                                   ; preds = %loop.body.15
  %a.rd.len1757 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1749, i32 0, i32 0
  %a.rd.len1758 = load i64, ptr %a.rd.len1757, align 8
  %a.rd.ge01759 = icmp sge i64 %var.load1750, 0
  %a.rd.lt1760 = icmp slt i64 %var.load1750, %a.rd.len1758
  %a.rd.bounds1761 = and i1 %a.rd.ge01759, %a.rd.lt1760
  br i1 %a.rd.bounds1761, label %a.rd.ok1753, label %a.rd.err.oob1755

a.rd.ok1753:                                      ; preds = %a.rd.check1752
  %a.rd.data1762 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1749, i32 0, i32 1
  %a.rd.data1763 = load ptr, ptr %a.rd.data1762, align 8
  %a.rd.elem.gep1764 = getelementptr i64, ptr %a.rd.data1763, i64 %var.load1750
  %a.rd.elem1765 = load i64, ptr %a.rd.elem.gep1764, align 8
  br label %a.rd.done1756

a.rd.err.null1754:                                ; preds = %loop.body.15
  %arena.cur1766 = call ptr @dva_arena_current()
  %err.alloc1767 = call ptr @dva_arena_alloc(ptr %arena.cur1766, i64 56)
  %err.code.gep1768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1768, align 8
  %err.msg.gep1769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1769, align 8
  %err.file.gep1770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1770, align 8
  %err.line.gep1771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 3
  store i64 0, ptr %err.line.gep1771, align 8
  %err.col.gep1772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 4
  store i64 0, ptr %err.col.gep1772, align 8
  %err.ctx.gep1773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1767, i32 0, i32 5
  %err.ctx0.gep1774 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1773, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1774, align 8
  %err.ctx1.gep1775 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1773, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1775, align 8
  %err.p2i1776 = ptrtoint ptr %err.alloc1767 to i64
  br label %a.rd.done1756

a.rd.err.oob1755:                                 ; preds = %a.rd.check1752
  %arena.cur1777 = call ptr @dva_arena_current()
  %err.alloc1778 = call ptr @dva_arena_alloc(ptr %arena.cur1777, i64 56)
  %err.code.gep1779 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1779, align 8
  %err.msg.gep1780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1780, align 8
  %err.file.gep1781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1781, align 8
  %err.line.gep1782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 3
  store i64 0, ptr %err.line.gep1782, align 8
  %err.col.gep1783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 4
  store i64 0, ptr %err.col.gep1783, align 8
  %err.ctx.gep1784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1778, i32 0, i32 5
  %err.ctx0.gep1785 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1784, i32 0, i32 0
  store i64 %var.load1750, ptr %err.ctx0.gep1785, align 8
  %err.ctx1.gep1786 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1784, i32 0, i32 1
  store i64 %a.rd.len1758, ptr %err.ctx1.gep1786, align 8
  %err.p2i1787 = ptrtoint ptr %err.alloc1778 to i64
  br label %a.rd.done1756

a.rd.done1756:                                    ; preds = %a.rd.err.oob1755, %a.rd.err.null1754, %a.rd.ok1753
  %a.rd.tag1788 = phi i1 [ true, %a.rd.ok1753 ], [ false, %a.rd.err.null1754 ], [ false, %a.rd.err.oob1755 ]
  %a.rd.pay1789 = phi i64 [ %a.rd.elem1765, %a.rd.ok1753 ], [ %err.p2i1776, %a.rd.err.null1754 ], [ %err.p2i1787, %a.rd.err.oob1755 ]
  %ram.tag1790 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1788, 0
  %ram.pay1791 = insertvalue { i1, i64 } %ram.tag1790, i64 %a.rd.pay1789, 1
  %ram.tag1792 = extractvalue { i1, i64 } %ram.pay1791, 0
  br i1 %ram.tag1792, label %choice.then1793, label %choice.else1794

choice.then1793:                                  ; preds = %a.rd.done1756
  %ram.pay1796 = extractvalue { i1, i64 } %ram.pay1791, 1
  %pay.ptr1797 = inttoptr i64 %ram.pay1796 to ptr
  store ptr %pay.ptr1797, ptr %var._1798, align 8
  br label %choice.exit1795

choice.else1794:                                  ; preds = %a.rd.done1756
  %ram.pay1799 = extractvalue { i1, i64 } %ram.pay1791, 1
  %pay.ptr1800 = inttoptr i64 %ram.pay1799 to ptr
  store ptr %pay.ptr1800, ptr %var._1801, align 8
  %arena.cur1802 = call ptr @dva_arena_current()
  %enum.alloc1803 = call ptr @dva_arena_alloc(ptr %arena.cur1802, i64 16)
  %tag.gep1804 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1803, i32 0, i32 0
  store i64 0, ptr %tag.gep1804, align 8
  %pay.gep1805 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1803, i32 0, i32 1
  %arena.cur1806 = call ptr @dva_arena_current()
  %enum.pay.alloc1807 = call ptr @dva_arena_alloc(ptr %arena.cur1806, i64 8)
  store i64 0, ptr %enum.pay.alloc1807, align 8
  store ptr %enum.pay.alloc1807, ptr %pay.gep1805, align 8
  br label %choice.exit1795

choice.exit1795:                                  ; preds = %choice.else1794, %choice.then1793
  %choice.res1808 = phi ptr [ %pay.ptr1797, %choice.then1793 ], [ %enum.alloc1803, %choice.else1794 ]
  store ptr %choice.res1808, ptr %var.varg, align 8
  %var.load1809 = load ptr, ptr %var.varg, align 8
  %var.load1810 = load ptr, ptr %var.locals, align 8
  %a.load1811 = load ptr, ptr %var.locals, align 8
  %a.null1812 = icmp eq ptr %a.load1811, null
  br i1 %a.null1812, label %a.create1813, label %a.after1814

a.create1813:                                     ; preds = %choice.exit1795
  %arena.cur1815 = call ptr @dva_arena_current()
  %a.create1816 = call ptr @dva_arena_alloc(ptr %arena.cur1815, i64 24)
  %arena.cur1817 = call ptr @dva_arena_current()
  %a.buf1818 = call ptr @dva_arena_alloc(ptr %arena.cur1817, i64 128)
  %a.len.gep1819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 0
  store i64 0, ptr %a.len.gep1819, align 8
  %a.data.gep1820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 1
  store ptr %a.buf1818, ptr %a.data.gep1820, align 8
  %a.cap.gep1821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1821, align 8
  store ptr %a.create1816, ptr %var.locals, align 8
  br label %a.after1814

a.after1814:                                      ; preds = %a.create1813, %choice.exit1795
  %a.load21822 = load ptr, ptr %var.locals, align 8
  %var.load1823 = load ptr, ptr %var.refs, align 8
  %a.load1824 = load ptr, ptr %var.refs, align 8
  %a.null1825 = icmp eq ptr %a.load1824, null
  br i1 %a.null1825, label %a.create1826, label %a.after1827

a.create1826:                                     ; preds = %a.after1814
  %arena.cur1828 = call ptr @dva_arena_current()
  %a.create1829 = call ptr @dva_arena_alloc(ptr %arena.cur1828, i64 24)
  %arena.cur1830 = call ptr @dva_arena_current()
  %a.buf1831 = call ptr @dva_arena_alloc(ptr %arena.cur1830, i64 128)
  %a.len.gep1832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1829, i32 0, i32 0
  store i64 0, ptr %a.len.gep1832, align 8
  %a.data.gep1833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1829, i32 0, i32 1
  store ptr %a.buf1831, ptr %a.data.gep1833, align 8
  %a.cap.gep1834 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1829, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1834, align 8
  store ptr %a.create1829, ptr %var.refs, align 8
  br label %a.after1827

a.after1827:                                      ; preds = %a.create1826, %a.after1814
  %a.load21835 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1809, ptr %a.load21822, ptr %a.load21835)
  br label %loop.latch.15

choice.case1838:                                  ; preds = %choice.next1729
  %pay.gep1843 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1844 = load ptr, ptr %pay.gep1843, align 8
  store ptr %payload.ptr1844, ptr %var.cp, align 8
  %var.load1845 = load ptr, ptr %var.cp, align 8
  %var.load1846 = load ptr, ptr %var.locals, align 8
  %a.load1847 = load ptr, ptr %var.locals, align 8
  %a.null1848 = icmp eq ptr %a.load1847, null
  br i1 %a.null1848, label %a.create1849, label %a.after1850

choice.next1839:                                  ; preds = %choice.next1729
  %tag.gep1874 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1875 = load i64, ptr %tag.gep1874, align 8
  %tag.match1876 = icmp eq i64 %tag.id1875, 27
  br i1 %tag.match1876, label %choice.case1872, label %choice.next1873

a.create1849:                                     ; preds = %choice.case1838
  %arena.cur1851 = call ptr @dva_arena_current()
  %a.create1852 = call ptr @dva_arena_alloc(ptr %arena.cur1851, i64 24)
  %arena.cur1853 = call ptr @dva_arena_current()
  %a.buf1854 = call ptr @dva_arena_alloc(ptr %arena.cur1853, i64 128)
  %a.len.gep1855 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1852, i32 0, i32 0
  store i64 0, ptr %a.len.gep1855, align 8
  %a.data.gep1856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1852, i32 0, i32 1
  store ptr %a.buf1854, ptr %a.data.gep1856, align 8
  %a.cap.gep1857 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1852, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1857, align 8
  store ptr %a.create1852, ptr %var.locals, align 8
  br label %a.after1850

a.after1850:                                      ; preds = %a.create1849, %choice.case1838
  %a.load21858 = load ptr, ptr %var.locals, align 8
  %var.load1859 = load ptr, ptr %var.refs, align 8
  %a.load1860 = load ptr, ptr %var.refs, align 8
  %a.null1861 = icmp eq ptr %a.load1860, null
  br i1 %a.null1861, label %a.create1862, label %a.after1863

a.create1862:                                     ; preds = %a.after1850
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
  store ptr %a.create1865, ptr %var.refs, align 8
  br label %a.after1863

a.after1863:                                      ; preds = %a.create1862, %a.after1850
  %a.load21871 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1845, ptr %a.load21858, ptr %a.load21871)
  br label %choice.exit

choice.case1872:                                  ; preds = %choice.next1839
  %pay.gep1877 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1878 = load ptr, ptr %pay.gep1877, align 8
  store ptr %payload.ptr1878, ptr %var.bc, align 8
  %var.load1879 = load ptr, ptr %var.bc, align 8
  %var.load1880 = load ptr, ptr %var.locals, align 8
  %a.load1881 = load ptr, ptr %var.locals, align 8
  %a.null1882 = icmp eq ptr %a.load1881, null
  br i1 %a.null1882, label %a.create1883, label %a.after1884

choice.next1873:                                  ; preds = %choice.next1839
  %tag.gep1908 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1909 = load i64, ptr %tag.gep1908, align 8
  %tag.match1910 = icmp eq i64 %tag.id1909, 22
  br i1 %tag.match1910, label %choice.case1906, label %choice.next1907

a.create1883:                                     ; preds = %choice.case1872
  %arena.cur1885 = call ptr @dva_arena_current()
  %a.create1886 = call ptr @dva_arena_alloc(ptr %arena.cur1885, i64 24)
  %arena.cur1887 = call ptr @dva_arena_current()
  %a.buf1888 = call ptr @dva_arena_alloc(ptr %arena.cur1887, i64 128)
  %a.len.gep1889 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1886, i32 0, i32 0
  store i64 0, ptr %a.len.gep1889, align 8
  %a.data.gep1890 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1886, i32 0, i32 1
  store ptr %a.buf1888, ptr %a.data.gep1890, align 8
  %a.cap.gep1891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1886, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1891, align 8
  store ptr %a.create1886, ptr %var.locals, align 8
  br label %a.after1884

a.after1884:                                      ; preds = %a.create1883, %choice.case1872
  %a.load21892 = load ptr, ptr %var.locals, align 8
  %var.load1893 = load ptr, ptr %var.refs, align 8
  %a.load1894 = load ptr, ptr %var.refs, align 8
  %a.null1895 = icmp eq ptr %a.load1894, null
  br i1 %a.null1895, label %a.create1896, label %a.after1897

a.create1896:                                     ; preds = %a.after1884
  %arena.cur1898 = call ptr @dva_arena_current()
  %a.create1899 = call ptr @dva_arena_alloc(ptr %arena.cur1898, i64 24)
  %arena.cur1900 = call ptr @dva_arena_current()
  %a.buf1901 = call ptr @dva_arena_alloc(ptr %arena.cur1900, i64 128)
  %a.len.gep1902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 0
  store i64 0, ptr %a.len.gep1902, align 8
  %a.data.gep1903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 1
  store ptr %a.buf1901, ptr %a.data.gep1903, align 8
  %a.cap.gep1904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1904, align 8
  store ptr %a.create1899, ptr %var.refs, align 8
  br label %a.after1897

a.after1897:                                      ; preds = %a.create1896, %a.after1884
  %a.load21905 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1879, ptr %a.load21892, ptr %a.load21905)
  br label %choice.exit

choice.case1906:                                  ; preds = %choice.next1873
  %pay.gep1911 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1912 = load ptr, ptr %pay.gep1911, align 8
  store ptr %payload.ptr1912, ptr %var.tc, align 8
  %var.load1913 = load ptr, ptr %var.tc, align 8
  %fld.gep1914 = getelementptr inbounds { ptr, ptr }, ptr %var.load1913, i32 0, i32 1
  %fld.load1915 = load ptr, ptr %fld.gep1914, align 8
  %var.load1916 = load ptr, ptr %var.locals, align 8
  %a.load1917 = load ptr, ptr %var.locals, align 8
  %a.null1918 = icmp eq ptr %a.load1917, null
  br i1 %a.null1918, label %a.create1919, label %a.after1920

choice.next1907:                                  ; preds = %choice.next1873
  %tag.gep1944 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1945 = load i64, ptr %tag.gep1944, align 8
  %tag.match1946 = icmp eq i64 %tag.id1945, 30
  br i1 %tag.match1946, label %choice.case1942, label %choice.next1943

a.create1919:                                     ; preds = %choice.case1906
  %arena.cur1921 = call ptr @dva_arena_current()
  %a.create1922 = call ptr @dva_arena_alloc(ptr %arena.cur1921, i64 24)
  %arena.cur1923 = call ptr @dva_arena_current()
  %a.buf1924 = call ptr @dva_arena_alloc(ptr %arena.cur1923, i64 128)
  %a.len.gep1925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1922, i32 0, i32 0
  store i64 0, ptr %a.len.gep1925, align 8
  %a.data.gep1926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1922, i32 0, i32 1
  store ptr %a.buf1924, ptr %a.data.gep1926, align 8
  %a.cap.gep1927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1922, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1927, align 8
  store ptr %a.create1922, ptr %var.locals, align 8
  br label %a.after1920

a.after1920:                                      ; preds = %a.create1919, %choice.case1906
  %a.load21928 = load ptr, ptr %var.locals, align 8
  %var.load1929 = load ptr, ptr %var.refs, align 8
  %a.load1930 = load ptr, ptr %var.refs, align 8
  %a.null1931 = icmp eq ptr %a.load1930, null
  br i1 %a.null1931, label %a.create1932, label %a.after1933

a.create1932:                                     ; preds = %a.after1920
  %arena.cur1934 = call ptr @dva_arena_current()
  %a.create1935 = call ptr @dva_arena_alloc(ptr %arena.cur1934, i64 24)
  %arena.cur1936 = call ptr @dva_arena_current()
  %a.buf1937 = call ptr @dva_arena_alloc(ptr %arena.cur1936, i64 128)
  %a.len.gep1938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1935, i32 0, i32 0
  store i64 0, ptr %a.len.gep1938, align 8
  %a.data.gep1939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1935, i32 0, i32 1
  store ptr %a.buf1937, ptr %a.data.gep1939, align 8
  %a.cap.gep1940 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1935, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1940, align 8
  store ptr %a.create1935, ptr %var.refs, align 8
  br label %a.after1933

a.after1933:                                      ; preds = %a.create1932, %a.after1920
  %a.load21941 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1915, ptr %a.load21928, ptr %a.load21941)
  br label %choice.exit

choice.case1942:                                  ; preds = %choice.next1907
  %pay.gep1947 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1948 = load ptr, ptr %pay.gep1947, align 8
  store ptr %payload.ptr1948, ptr %var.ct, align 8
  %var.load1949 = load ptr, ptr %var.ct, align 8
  %fld.gep1950 = getelementptr inbounds { ptr }, ptr %var.load1949, i32 0, i32 0
  %fld.load1951 = load ptr, ptr %fld.gep1950, align 8
  %var.load1952 = load ptr, ptr %var.locals, align 8
  %a.load1953 = load ptr, ptr %var.locals, align 8
  %a.null1954 = icmp eq ptr %a.load1953, null
  br i1 %a.null1954, label %a.create1955, label %a.after1956

choice.next1943:                                  ; preds = %choice.next1907
  %tag.gep1980 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1981 = load i64, ptr %tag.gep1980, align 8
  %tag.match1982 = icmp eq i64 %tag.id1981, 31
  br i1 %tag.match1982, label %choice.case1978, label %choice.next1979

a.create1955:                                     ; preds = %choice.case1942
  %arena.cur1957 = call ptr @dva_arena_current()
  %a.create1958 = call ptr @dva_arena_alloc(ptr %arena.cur1957, i64 24)
  %arena.cur1959 = call ptr @dva_arena_current()
  %a.buf1960 = call ptr @dva_arena_alloc(ptr %arena.cur1959, i64 128)
  %a.len.gep1961 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1958, i32 0, i32 0
  store i64 0, ptr %a.len.gep1961, align 8
  %a.data.gep1962 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1958, i32 0, i32 1
  store ptr %a.buf1960, ptr %a.data.gep1962, align 8
  %a.cap.gep1963 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1958, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1963, align 8
  store ptr %a.create1958, ptr %var.locals, align 8
  br label %a.after1956

a.after1956:                                      ; preds = %a.create1955, %choice.case1942
  %a.load21964 = load ptr, ptr %var.locals, align 8
  %var.load1965 = load ptr, ptr %var.refs, align 8
  %a.load1966 = load ptr, ptr %var.refs, align 8
  %a.null1967 = icmp eq ptr %a.load1966, null
  br i1 %a.null1967, label %a.create1968, label %a.after1969

a.create1968:                                     ; preds = %a.after1956
  %arena.cur1970 = call ptr @dva_arena_current()
  %a.create1971 = call ptr @dva_arena_alloc(ptr %arena.cur1970, i64 24)
  %arena.cur1972 = call ptr @dva_arena_current()
  %a.buf1973 = call ptr @dva_arena_alloc(ptr %arena.cur1972, i64 128)
  %a.len.gep1974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 0
  store i64 0, ptr %a.len.gep1974, align 8
  %a.data.gep1975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 1
  store ptr %a.buf1973, ptr %a.data.gep1975, align 8
  %a.cap.gep1976 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1971, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1976, align 8
  store ptr %a.create1971, ptr %var.refs, align 8
  br label %a.after1969

a.after1969:                                      ; preds = %a.create1968, %a.after1956
  %a.load21977 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1951, ptr %a.load21964, ptr %a.load21977)
  br label %choice.exit

choice.case1978:                                  ; preds = %choice.next1943
  %pay.gep1983 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1984 = load ptr, ptr %pay.gep1983, align 8
  store ptr %payload.ptr1984, ptr %var.sp, align 8
  %arena.cur1985 = call ptr @dva_arena_current()
  %enum.alloc1986 = call ptr @dva_arena_alloc(ptr %arena.cur1985, i64 16)
  %tag.gep1987 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1986, i32 0, i32 0
  store i64 9, ptr %tag.gep1987, align 8
  %pay.gep1988 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1986, i32 0, i32 1
  %var.load1989 = load ptr, ptr %var.sp, align 8
  %fld.gep1990 = getelementptr inbounds { { ptr, ptr, ptr, i64, i64 } }, ptr %var.load1989, i32 0, i32 0
  store ptr %fld.gep1990, ptr %pay.gep1988, align 8
  %var.load1991 = load ptr, ptr %var.locals, align 8
  %a.load1992 = load ptr, ptr %var.locals, align 8
  %a.null1993 = icmp eq ptr %a.load1992, null
  br i1 %a.null1993, label %a.create1994, label %a.after1995

choice.next1979:                                  ; preds = %choice.next1943
  %tag.gep2019 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2020 = load i64, ptr %tag.gep2019, align 8
  %tag.match2021 = icmp eq i64 %tag.id2020, 32
  br i1 %tag.match2021, label %choice.case2017, label %choice.next2018

a.create1994:                                     ; preds = %choice.case1978
  %arena.cur1996 = call ptr @dva_arena_current()
  %a.create1997 = call ptr @dva_arena_alloc(ptr %arena.cur1996, i64 24)
  %arena.cur1998 = call ptr @dva_arena_current()
  %a.buf1999 = call ptr @dva_arena_alloc(ptr %arena.cur1998, i64 128)
  %a.len.gep2000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1997, i32 0, i32 0
  store i64 0, ptr %a.len.gep2000, align 8
  %a.data.gep2001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1997, i32 0, i32 1
  store ptr %a.buf1999, ptr %a.data.gep2001, align 8
  %a.cap.gep2002 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1997, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2002, align 8
  store ptr %a.create1997, ptr %var.locals, align 8
  br label %a.after1995

a.after1995:                                      ; preds = %a.create1994, %choice.case1978
  %a.load22003 = load ptr, ptr %var.locals, align 8
  %var.load2004 = load ptr, ptr %var.refs, align 8
  %a.load2005 = load ptr, ptr %var.refs, align 8
  %a.null2006 = icmp eq ptr %a.load2005, null
  br i1 %a.null2006, label %a.create2007, label %a.after2008

a.create2007:                                     ; preds = %a.after1995
  %arena.cur2009 = call ptr @dva_arena_current()
  %a.create2010 = call ptr @dva_arena_alloc(ptr %arena.cur2009, i64 24)
  %arena.cur2011 = call ptr @dva_arena_current()
  %a.buf2012 = call ptr @dva_arena_alloc(ptr %arena.cur2011, i64 128)
  %a.len.gep2013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2010, i32 0, i32 0
  store i64 0, ptr %a.len.gep2013, align 8
  %a.data.gep2014 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2010, i32 0, i32 1
  store ptr %a.buf2012, ptr %a.data.gep2014, align 8
  %a.cap.gep2015 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2010, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2015, align 8
  store ptr %a.create2010, ptr %var.refs, align 8
  br label %a.after2008

a.after2008:                                      ; preds = %a.create2007, %a.after1995
  %a.load22016 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc1986, ptr %a.load22003, ptr %a.load22016)
  br label %choice.exit

choice.case2017:                                  ; preds = %choice.next1979
  %pay.gep2022 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2023 = load ptr, ptr %pay.gep2022, align 8
  store ptr %payload.ptr2023, ptr %var.jn, align 8
  %var.load2024 = load ptr, ptr %var.jn, align 8
  %fld.gep2025 = getelementptr inbounds { ptr }, ptr %var.load2024, i32 0, i32 0
  %fld.load2026 = load ptr, ptr %fld.gep2025, align 8
  %var.load2027 = load ptr, ptr %var.locals, align 8
  %a.load2028 = load ptr, ptr %var.locals, align 8
  %a.null2029 = icmp eq ptr %a.load2028, null
  br i1 %a.null2029, label %a.create2030, label %a.after2031

choice.next2018:                                  ; preds = %choice.next1979
  %tag.gep2055 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2056 = load i64, ptr %tag.gep2055, align 8
  %tag.match2057 = icmp eq i64 %tag.id2056, 33
  br i1 %tag.match2057, label %choice.case2053, label %choice.next2054

a.create2030:                                     ; preds = %choice.case2017
  %arena.cur2032 = call ptr @dva_arena_current()
  %a.create2033 = call ptr @dva_arena_alloc(ptr %arena.cur2032, i64 24)
  %arena.cur2034 = call ptr @dva_arena_current()
  %a.buf2035 = call ptr @dva_arena_alloc(ptr %arena.cur2034, i64 128)
  %a.len.gep2036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2033, i32 0, i32 0
  store i64 0, ptr %a.len.gep2036, align 8
  %a.data.gep2037 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2033, i32 0, i32 1
  store ptr %a.buf2035, ptr %a.data.gep2037, align 8
  %a.cap.gep2038 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2033, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2038, align 8
  store ptr %a.create2033, ptr %var.locals, align 8
  br label %a.after2031

a.after2031:                                      ; preds = %a.create2030, %choice.case2017
  %a.load22039 = load ptr, ptr %var.locals, align 8
  %var.load2040 = load ptr, ptr %var.refs, align 8
  %a.load2041 = load ptr, ptr %var.refs, align 8
  %a.null2042 = icmp eq ptr %a.load2041, null
  br i1 %a.null2042, label %a.create2043, label %a.after2044

a.create2043:                                     ; preds = %a.after2031
  %arena.cur2045 = call ptr @dva_arena_current()
  %a.create2046 = call ptr @dva_arena_alloc(ptr %arena.cur2045, i64 24)
  %arena.cur2047 = call ptr @dva_arena_current()
  %a.buf2048 = call ptr @dva_arena_alloc(ptr %arena.cur2047, i64 128)
  %a.len.gep2049 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2046, i32 0, i32 0
  store i64 0, ptr %a.len.gep2049, align 8
  %a.data.gep2050 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2046, i32 0, i32 1
  store ptr %a.buf2048, ptr %a.data.gep2050, align 8
  %a.cap.gep2051 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2046, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2051, align 8
  store ptr %a.create2046, ptr %var.refs, align 8
  br label %a.after2044

a.after2044:                                      ; preds = %a.create2043, %a.after2031
  %a.load22052 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2026, ptr %a.load22039, ptr %a.load22052)
  br label %choice.exit

choice.case2053:                                  ; preds = %choice.next2018
  %pay.gep2058 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2059 = load ptr, ptr %pay.gep2058, align 8
  store ptr %payload.ptr2059, ptr %var.ex, align 8
  %var.load2060 = load ptr, ptr %var.ex, align 8
  %fld.gep2061 = getelementptr inbounds { ptr }, ptr %var.load2060, i32 0, i32 0
  %fld.load2062 = load ptr, ptr %fld.gep2061, align 8
  %var.load2063 = load ptr, ptr %var.locals, align 8
  %a.load2064 = load ptr, ptr %var.locals, align 8
  %a.null2065 = icmp eq ptr %a.load2064, null
  br i1 %a.null2065, label %a.create2066, label %a.after2067

choice.next2054:                                  ; preds = %choice.next2018
  %tag.gep2091 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id2092 = load i64, ptr %tag.gep2091, align 8
  %tag.match2093 = icmp eq i64 %tag.id2092, 38
  br i1 %tag.match2093, label %choice.case2089, label %choice.next2090

a.create2066:                                     ; preds = %choice.case2053
  %arena.cur2068 = call ptr @dva_arena_current()
  %a.create2069 = call ptr @dva_arena_alloc(ptr %arena.cur2068, i64 24)
  %arena.cur2070 = call ptr @dva_arena_current()
  %a.buf2071 = call ptr @dva_arena_alloc(ptr %arena.cur2070, i64 128)
  %a.len.gep2072 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2069, i32 0, i32 0
  store i64 0, ptr %a.len.gep2072, align 8
  %a.data.gep2073 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2069, i32 0, i32 1
  store ptr %a.buf2071, ptr %a.data.gep2073, align 8
  %a.cap.gep2074 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2069, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2074, align 8
  store ptr %a.create2069, ptr %var.locals, align 8
  br label %a.after2067

a.after2067:                                      ; preds = %a.create2066, %choice.case2053
  %a.load22075 = load ptr, ptr %var.locals, align 8
  %var.load2076 = load ptr, ptr %var.refs, align 8
  %a.load2077 = load ptr, ptr %var.refs, align 8
  %a.null2078 = icmp eq ptr %a.load2077, null
  br i1 %a.null2078, label %a.create2079, label %a.after2080

a.create2079:                                     ; preds = %a.after2067
  %arena.cur2081 = call ptr @dva_arena_current()
  %a.create2082 = call ptr @dva_arena_alloc(ptr %arena.cur2081, i64 24)
  %arena.cur2083 = call ptr @dva_arena_current()
  %a.buf2084 = call ptr @dva_arena_alloc(ptr %arena.cur2083, i64 128)
  %a.len.gep2085 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2082, i32 0, i32 0
  store i64 0, ptr %a.len.gep2085, align 8
  %a.data.gep2086 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2082, i32 0, i32 1
  store ptr %a.buf2084, ptr %a.data.gep2086, align 8
  %a.cap.gep2087 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2082, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2087, align 8
  store ptr %a.create2082, ptr %var.refs, align 8
  br label %a.after2080

a.after2080:                                      ; preds = %a.create2079, %a.after2067
  %a.load22088 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2062, ptr %a.load22075, ptr %a.load22088)
  br label %choice.exit

choice.case2089:                                  ; preds = %choice.next2054
  %pay.gep2094 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr2095 = load ptr, ptr %pay.gep2094, align 8
  store ptr %payload.ptr2095, ptr %var.ud, align 8
  %var.load2096 = load ptr, ptr %var.ud, align 8
  %fld.gep2097 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load2096, i32 0, i32 1
  %fld.load2098 = load ptr, ptr %fld.gep2097, align 8
  %var.load2099 = load ptr, ptr %var.locals, align 8
  %a.load2100 = load ptr, ptr %var.locals, align 8
  %a.null2101 = icmp eq ptr %a.load2100, null
  br i1 %a.null2101, label %a.create2102, label %a.after2103

choice.next2090:                                  ; preds = %choice.next2054
  br label %choice.exit

a.create2102:                                     ; preds = %choice.case2089
  %arena.cur2104 = call ptr @dva_arena_current()
  %a.create2105 = call ptr @dva_arena_alloc(ptr %arena.cur2104, i64 24)
  %arena.cur2106 = call ptr @dva_arena_current()
  %a.buf2107 = call ptr @dva_arena_alloc(ptr %arena.cur2106, i64 128)
  %a.len.gep2108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2105, i32 0, i32 0
  store i64 0, ptr %a.len.gep2108, align 8
  %a.data.gep2109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2105, i32 0, i32 1
  store ptr %a.buf2107, ptr %a.data.gep2109, align 8
  %a.cap.gep2110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2105, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2110, align 8
  store ptr %a.create2105, ptr %var.locals, align 8
  br label %a.after2103

a.after2103:                                      ; preds = %a.create2102, %choice.case2089
  %a.load22111 = load ptr, ptr %var.locals, align 8
  %var.load2112 = load ptr, ptr %var.refs, align 8
  %a.load2113 = load ptr, ptr %var.refs, align 8
  %a.null2114 = icmp eq ptr %a.load2113, null
  br i1 %a.null2114, label %a.create2115, label %a.after2116

a.create2115:                                     ; preds = %a.after2103
  %arena.cur2117 = call ptr @dva_arena_current()
  %a.create2118 = call ptr @dva_arena_alloc(ptr %arena.cur2117, i64 24)
  %arena.cur2119 = call ptr @dva_arena_current()
  %a.buf2120 = call ptr @dva_arena_alloc(ptr %arena.cur2119, i64 128)
  %a.len.gep2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2118, i32 0, i32 0
  store i64 0, ptr %a.len.gep2121, align 8
  %a.data.gep2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2118, i32 0, i32 1
  store ptr %a.buf2120, ptr %a.data.gep2122, align 8
  %a.cap.gep2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2123, align 8
  store ptr %a.create2118, ptr %var.refs, align 8
  br label %a.after2116

a.after2116:                                      ; preds = %a.create2115, %a.after2103
  %a.load22124 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2098, ptr %a.load22111, ptr %a.load22124)
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
  %var.st2 = alloca ptr, align 8
  %var._822 = alloca ptr, align 8
  %var._819 = alloca ptr, align 8
  %var._757 = alloca i64, align 8
  %var._i756 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var.st1 = alloca ptr, align 8
  %var._368 = alloca ptr, align 8
  %var._365 = alloca ptr, align 8
  %var._303 = alloca i64, align 8
  %var._i302 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
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
  %arena.cur270 = call ptr @dva_arena_current()
  %m.new271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 48)
  %arena.cur272 = call ptr @dva_arena_current()
  %m.keys273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 64)
  %arena.cur274 = call ptr @dva_arena_current()
  %m.vals275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 64)
  %arena.cur276 = call ptr @dva_arena_current()
  %m.states277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states277, i8 0, i64 8, i1 false)
  %m.count.gep278 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 0
  store i64 0, ptr %m.count.gep278, align 8
  %m.cap.gep279 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 1
  store i64 8, ptr %m.cap.gep279, align 8
  %m.keys.gep280 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 2
  store ptr %m.keys273, ptr %m.keys.gep280, align 8
  %m.vals.gep281 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 3
  store ptr %m.vals275, ptr %m.vals.gep281, align 8
  %m.states.gep282 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 4
  store ptr %m.states277, ptr %m.states.gep282, align 8
  %m.tombs.gep283 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new271, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep283, align 8
  store ptr %m.new271, ptr %var.def_names, align 8
  %var.load284 = load ptr, ptr %var.stmts, align 8
  %a.load285 = load ptr, ptr %var.stmts, align 8
  %a.null286 = icmp eq ptr %a.load285, null
  br i1 %a.null286, label %a.create287, label %a.after288

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

choice.exit74:                                    ; preds = %choice.next, %choice.exit111
  br label %loop.latch.18

choice.case:                                      ; preds = %choice.exit
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr, ptr %var.ak, align 8
  %var.load77 = load ptr, ptr %var.ak, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load77, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep81 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id82 = load i64, ptr %tag.gep81, align 8
  %tag.match83 = icmp eq i64 %tag.id82, 14
  br i1 %tag.match83, label %choice.case79, label %choice.next80

choice.next:                                      ; preds = %choice.exit
  br label %choice.exit74

choice.exit78:                                    ; preds = %choice.next80, %choice.case79
  %choice.res91 = phi i1 [ %cmptmp, %choice.case79 ], [ false, %choice.next80 ]
  store i1 %choice.res91, ptr %var.is_fe, align 1
  %var.load92 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load92)
  br i1 %call.res, label %or.19.then, label %or.19.else

choice.case79:                                    ; preds = %choice.case
  %pay.gep84 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr85 = load ptr, ptr %pay.gep84, align 8
  store ptr %payload.ptr85, ptr %var.fek, align 8
  %var.load86 = load ptr, ptr %var.fek, align 8
  %fld.gep87 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load86, i32 0, i32 1
  %fld.load88 = load ptr, ptr %fld.gep87, align 8
  %a.len.query89 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load88, i32 0, i32 0
  %a.len.query90 = load i64, ptr %a.len.query89, align 8
  %cmptmp = icmp sgt i64 %a.len.query90, 0
  br label %choice.exit78

choice.next80:                                    ; preds = %choice.case
  br label %choice.exit78

or.19.then:                                       ; preds = %choice.exit78
  br label %or.19.exit

or.19.else:                                       ; preds = %choice.exit78
  %var.load93 = load i1, ptr %var.is_fe, align 1
  br label %or.19.exit

or.19.exit:                                       ; preds = %or.19.else, %or.19.then
  %or.19.phi = phi i1 [ %call.res, %or.19.then ], [ %var.load93, %or.19.else ]
  store i1 %or.19.phi, ptr %var.is_gen, align 1
  %var.load94 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load94, label %and.20.then, label %and.20.else

and.20.then:                                      ; preds = %or.19.exit
  %var.load95 = load ptr, ptr %var.ak, align 8
  %fld.gep96 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load95, i32 0, i32 0
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 0
  %eq.lhs.len98 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len99 = and i64 %eq.lhs.len98, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len98, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.20.else:                                      ; preds = %or.19.exit
  br label %and.20.exit

and.20.exit:                                      ; preds = %and.20.else, %str.eq.merge
  %and.20.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load94, %and.20.else ]
  br i1 %and.20.phi, label %choice.then110, label %choice.exit111

str_gen_check:                                    ; preds = %and.20.then
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.20.then
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len101 = and i64 %eq.rhs.len, 281474976710655
  %str.tag102 = lshr i64 %eq.rhs.len, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check104:                                 ; preds = %str_ok
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len99, %eq.rhs.len101
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale106:                                     ; preds = %str_gen_check104
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

str.eq.then:                                      ; preds = %str_ok105
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 1
  %eq.lhs.data109 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data109, ptr %eq.rhs.data, i64 %eq.lhs.len99)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok105
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.20.exit

choice.then110:                                   ; preds = %and.20.exit
  %var.load112 = load ptr, ptr %var.gen_names, align 8
  %var.load113 = load ptr, ptr %var.ak, align 8
  %fld.gep114 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load113, i32 0, i32 0
  %fld.load115 = load ptr, ptr %fld.gep114, align 8
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %m.count116 = load i64, ptr %m.count, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  %m.cap117 = load i64, ptr %m.cap, align 8
  %m.tombs = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 5
  %m.tombs118 = load i64, ptr %m.tombs, align 8
  %m.occupied = add i64 %m.count116, %m.tombs118
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap117, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins

choice.exit111:                                   ; preds = %m.done207, %and.20.exit
  br label %choice.exit74

m.grow:                                           ; preds = %choice.then110
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  %m.old.cap119 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 2
  %m.old.keys120 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 3
  %m.old.vals121 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 4
  %m.old.states122 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap119, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %m.live.cnt123 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt123, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap119
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap119
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur124 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur125 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 %m.gv.bytes)
  %arena.cur126 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep127, align 8
  %m.keys.gep128 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep128, align 8
  %m.vals.gep129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep129, align 8
  %m.states.gep130 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep130, align 8
  %m.count.gep131 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  store i64 0, ptr %m.count.gep131, align 8
  %m.tombs.gep132 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep132, align 8
  br label %m.re.loop

m.ins:                                            ; preds = %m.re.done, %choice.then110
  %m.cap177 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  %m.cap178 = load i64, ptr %m.cap177, align 8
  %m.keys179 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 2
  %m.keys180 = load ptr, ptr %m.keys179, align 8
  %m.vals181 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 3
  %m.vals182 = load ptr, ptr %m.vals181, align 8
  %m.states183 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 4
  %m.states184 = load ptr, ptr %m.states183, align 8
  %mk.data185 = getelementptr inbounds { i64, ptr }, ptr %fld.load115, i32 0, i32 1
  %mk.data186 = load ptr, ptr %mk.data185, align 8
  %mk.len187 = getelementptr inbounds { i64, ptr }, ptr %fld.load115, i32 0, i32 0
  %mk.len188 = load i64, ptr %mk.len187, align 8
  %mk.len189 = and i64 %mk.len188, 281474976710655
  %str.tag190 = lshr i64 %mk.len188, 48
  %str.immortal191 = icmp eq i64 %str.tag190, 0
  br i1 %str.immortal191, label %str_ok193, label %str_gen_check192

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap119
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states122, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  br label %m.ins

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys120, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals121, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap133 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  %m.cap134 = load i64, ptr %m.cap133, align 8
  %m.keys135 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 2
  %m.keys136 = load ptr, ptr %m.keys135, align 8
  %m.vals137 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 3
  %m.vals138 = load ptr, ptr %m.vals137, align 8
  %m.states139 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 4
  %m.states140 = load ptr, ptr %m.states139, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data141 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len142 = load i64, ptr %mk.len, align 8
  %mk.len143 = and i64 %mk.len142, 281474976710655
  %str.tag144 = lshr i64 %mk.len142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_gen_check146:                                 ; preds = %m.re.ins
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %m.re.ins
  %hash.str = call i64 @dva_hash_string(ptr %mk.data141, i64 %mk.len143)
  %m.capm1 = sub i64 %m.cap134, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale148:                                     ; preds = %str_gen_check146
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

m.loop:                                           ; preds = %m.next, %str_ok147
  %m.idx = phi i64 [ %m.idx0, %str_ok147 ], [ %m.idx.next, %m.next ]
  %m.tomb151 = phi i64 [ -1, %str_ok147 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok147 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap134
  %m.state.gep = getelementptr i8, ptr %m.states140, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb151, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb151, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys136, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen152 = load i64, ptr %mk.slen, align 8
  %mk.slen153 = and i64 %mk.slen152, 281474976710655
  %str.tag154 = lshr i64 %mk.slen152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals138, i64 %m.idx
  store i64 %m.re.val, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb151, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.use.tomb = icmp ne i64 %m.tomb151, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb151, i64 %m.idx
  %m.key.slot172 = getelementptr ptr, ptr %m.keys136, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot172, align 8
  %m.val.slot173 = getelementptr i64, ptr %m.vals138, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot173, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states140, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count174 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %m.count175 = load i64, ptr %m.count174, align 8
  %m.count.next = add i64 %m.count175, 1
  %m.count.gep176 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep176, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done

m.done:                                           ; preds = %m.empty, %m.overwrite
  br label %m.re.cont

str_gen_check156:                                 ; preds = %m.found
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen161 = load i64, ptr %mk.nlen, align 8
  %mk.nlen162 = and i64 %mk.nlen161, 281474976710655
  %str.tag163 = lshr i64 %mk.nlen161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale158:                                     ; preds = %str_gen_check156
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str_gen_check165:                                 ; preds = %str_ok157
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok157
  %mk.lenseq = icmp eq i64 %mk.slen153, %mk.nlen162
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale167:                                     ; preds = %str_gen_check165
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

mk.eq.then:                                       ; preds = %str_ok166
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata170 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata171 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata170, ptr %mk.ndata171, i64 %mk.nlen162)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok166
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

str_gen_check192:                                 ; preds = %m.ins
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid196 = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag190)
  br i1 %tag.valid196, label %str_ok193, label %str_stale194

str_ok193:                                        ; preds = %str_stale194, %str_gen_check192, %m.ins
  %hash.str197 = call i64 @dva_hash_string(ptr %mk.data186, i64 %mk.len189)
  %m.capm1198 = sub i64 %m.cap178, 1
  %m.idx0199 = and i64 %hash.str197, %m.capm1198
  br label %m.loop200

str_stale194:                                     ; preds = %str_gen_check192
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok193

m.loop200:                                        ; preds = %m.next205, %str_ok193
  %m.idx208 = phi i64 [ %m.idx0199, %str_ok193 ], [ %m.idx.next255, %m.next205 ]
  %m.tomb209 = phi i64 [ -1, %str_ok193 ], [ %m.next.tomb253, %m.next205 ]
  %m.probe210 = phi i64 [ 0, %str_ok193 ], [ %m.probe.next256, %m.next205 ]
  %m.reached.cap211 = icmp eq i64 %m.probe210, %m.cap178
  %m.state.gep212 = getelementptr i8, ptr %m.states184, i64 %m.idx208
  %m.state213 = load i8, ptr %m.state.gep212, align 1
  %m.is.empty214 = icmp eq i8 %m.state213, 0
  %m.stop215 = or i1 %m.is.empty214, %m.reached.cap211
  br i1 %m.stop215, label %m.empty206, label %m.check.tomb201

m.check.tomb201:                                  ; preds = %m.loop200
  %m.is.tomb216 = icmp eq i8 %m.state213, 2
  br i1 %m.is.tomb216, label %m.tomb202, label %m.found203

m.tomb202:                                        ; preds = %m.check.tomb201
  %m.has.tomb217 = icmp ne i64 %m.tomb209, -1
  %m.tomb.sel218 = select i1 %m.has.tomb217, i64 %m.tomb209, i64 %m.idx208
  br label %m.next205

m.found203:                                       ; preds = %m.check.tomb201
  %m.key.slot219 = getelementptr ptr, ptr %m.keys180, i64 %m.idx208
  %mk.stored220 = load ptr, ptr %m.key.slot219, align 8
  %mk.slen221 = getelementptr inbounds { i64, ptr }, ptr %mk.stored220, i32 0, i32 0
  %mk.slen222 = load i64, ptr %mk.slen221, align 8
  %mk.slen223 = and i64 %mk.slen222, 281474976710655
  %str.tag224 = lshr i64 %mk.slen222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

m.overwrite204:                                   ; preds = %mk.eq.merge244
  %m.val.slot252 = getelementptr i64, ptr %m.vals182, i64 %m.idx208
  store i64 1, ptr %m.val.slot252, align 8
  br label %m.done207

m.next205:                                        ; preds = %mk.eq.merge244, %m.tomb202
  %m.next.tomb253 = phi i64 [ %m.tomb.sel218, %m.tomb202 ], [ %m.tomb209, %mk.eq.merge244 ]
  %m.idx.add254 = add i64 %m.idx208, 1
  %m.idx.next255 = and i64 %m.idx.add254, %m.capm1198
  %m.probe.next256 = add i64 %m.probe210, 1
  br label %m.loop200

m.empty206:                                       ; preds = %m.loop200
  %m.use.tomb257 = icmp ne i64 %m.tomb209, -1
  %m.ins.idx258 = select i1 %m.use.tomb257, i64 %m.tomb209, i64 %m.idx208
  %m.key.slot259 = getelementptr ptr, ptr %m.keys180, i64 %m.ins.idx258
  store ptr %fld.load115, ptr %m.key.slot259, align 8
  %m.val.slot260 = getelementptr i64, ptr %m.vals182, i64 %m.ins.idx258
  store i64 1, ptr %m.val.slot260, align 8
  %m.ins.state.slot261 = getelementptr i8, ptr %m.states184, i64 %m.ins.idx258
  store i8 1, ptr %m.ins.state.slot261, align 1
  %m.count262 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %m.count263 = load i64, ptr %m.count262, align 8
  %m.count.next264 = add i64 %m.count263, 1
  %m.count.gep265 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  store i64 %m.count.next264, ptr %m.count.gep265, align 8
  %m.ins.tombs.p266 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load112, i32 0, i32 5
  %m.ins.tombs267 = load i64, ptr %m.ins.tombs.p266, align 8
  %m.tomb.dec268 = select i1 %m.use.tomb257, i64 1, i64 0
  %m.ins.tombs.next269 = sub i64 %m.ins.tombs267, %m.tomb.dec268
  store i64 %m.ins.tombs.next269, ptr %m.ins.tombs.p266, align 8
  br label %m.done207

m.done207:                                        ; preds = %m.empty206, %m.overwrite204
  br label %choice.exit111

str_gen_check226:                                 ; preds = %m.found203
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %m.found203
  %mk.nlen231 = getelementptr inbounds { i64, ptr }, ptr %fld.load115, i32 0, i32 0
  %mk.nlen232 = load i64, ptr %mk.nlen231, align 8
  %mk.nlen233 = and i64 %mk.nlen232, 281474976710655
  %str.tag234 = lshr i64 %mk.nlen232, 48
  %str.immortal235 = icmp eq i64 %str.tag234, 0
  br i1 %str.immortal235, label %str_ok237, label %str_gen_check236

str_stale228:                                     ; preds = %str_gen_check226
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

str_gen_check236:                                 ; preds = %str_ok227
  %arena.cur239 = call ptr @dva_arena_current()
  %tag.valid240 = call i1 @dva_arena_validate_tag(ptr %arena.cur239, i64 %str.tag234)
  br i1 %tag.valid240, label %str_ok237, label %str_stale238

str_ok237:                                        ; preds = %str_stale238, %str_gen_check236, %str_ok227
  %mk.lenseq241 = icmp eq i64 %mk.slen223, %mk.nlen233
  br i1 %mk.lenseq241, label %mk.eq.then242, label %mk.eq.else243

str_stale238:                                     ; preds = %str_gen_check236
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok237

mk.eq.then242:                                    ; preds = %str_ok237
  %mk.sdata245 = getelementptr inbounds { i64, ptr }, ptr %mk.stored220, i32 0, i32 1
  %mk.sdata246 = load ptr, ptr %mk.sdata245, align 8
  %mk.ndata247 = getelementptr inbounds { i64, ptr }, ptr %fld.load115, i32 0, i32 1
  %mk.ndata248 = load ptr, ptr %mk.ndata247, align 8
  %mk.memcmp249 = call i32 @memcmp(ptr %mk.sdata246, ptr %mk.ndata248, i64 %mk.nlen233)
  %mk.cmpeq250 = icmp eq i32 %mk.memcmp249, 0
  br label %mk.eq.merge244

mk.eq.else243:                                    ; preds = %str_ok237
  br label %mk.eq.merge244

mk.eq.merge244:                                   ; preds = %mk.eq.else243, %mk.eq.then242
  %mk.eq251 = phi i1 [ %mk.cmpeq250, %mk.eq.then242 ], [ false, %mk.eq.else243 ]
  br i1 %mk.eq251, label %m.overwrite204, label %m.next205

a.create287:                                      ; preds = %loop.exit.18
  %arena.cur289 = call ptr @dva_arena_current()
  %a.create290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 24)
  %arena.cur291 = call ptr @dva_arena_current()
  %a.buf292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 128)
  %a.len.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 0
  store i64 0, ptr %a.len.gep293, align 8
  %a.data.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 1
  store ptr %a.buf292, ptr %a.data.gep294, align 8
  %a.cap.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create290, i32 0, i32 2
  store i64 16, ptr %a.cap.gep295, align 8
  store ptr %a.create290, ptr %var.stmts, align 8
  br label %a.after288

a.after288:                                       ; preds = %a.create287, %loop.exit.18
  %a.load2296 = load ptr, ptr %var.stmts, align 8
  %a.len.query297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2296, i32 0, i32 0
  %a.len.query298 = load i64, ptr %a.len.query297, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after288
  %counter.load299 = load i64, ptr %loop.idx.21, align 8
  %loop.cond300 = icmp slt i64 %counter.load299, %a.len.query298
  br i1 %loop.cond300, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i301 = sub i64 %counter.load299, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i301, ptr %var._i302, align 8
  store i64 %counter.load299, ptr %var._303, align 8
  store i64 %counter.load299, ptr %var.i, align 8
  %var.load304 = load ptr, ptr %var.stmts, align 8
  %a.load305 = load ptr, ptr %var.stmts, align 8
  %a.null306 = icmp eq ptr %a.load305, null
  br i1 %a.null306, label %a.create307, label %a.after308

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit377
  %step.val736 = load i64, ptr %loop.step.21, align 8
  %loop.next737 = add i64 %counter.load299, %step.val736
  store i64 %loop.next737, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load738 = load ptr, ptr %var.stmts, align 8
  %a.load739 = load ptr, ptr %var.stmts, align 8
  %a.null740 = icmp eq ptr %a.load739, null
  br i1 %a.null740, label %a.create741, label %a.after742

a.create307:                                      ; preds = %loop.body.21
  %arena.cur309 = call ptr @dva_arena_current()
  %a.create310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 24)
  %arena.cur311 = call ptr @dva_arena_current()
  %a.buf312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 128)
  %a.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create310, i32 0, i32 0
  store i64 0, ptr %a.len.gep313, align 8
  %a.data.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create310, i32 0, i32 1
  store ptr %a.buf312, ptr %a.data.gep314, align 8
  %a.cap.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create310, i32 0, i32 2
  store i64 16, ptr %a.cap.gep315, align 8
  store ptr %a.create310, ptr %var.stmts, align 8
  br label %a.after308

a.after308:                                       ; preds = %a.create307, %loop.body.21
  %a.load2316 = load ptr, ptr %var.stmts, align 8
  %var.load317 = load i64, ptr %var.i, align 8
  %a.rd.nonnull318 = icmp ne ptr %a.load2316, null
  br i1 %a.rd.nonnull318, label %a.rd.check319, label %a.rd.err.null321

a.rd.check319:                                    ; preds = %a.after308
  %a.rd.len324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2316, i32 0, i32 0
  %a.rd.len325 = load i64, ptr %a.rd.len324, align 8
  %a.rd.ge0326 = icmp sge i64 %var.load317, 0
  %a.rd.lt327 = icmp slt i64 %var.load317, %a.rd.len325
  %a.rd.bounds328 = and i1 %a.rd.ge0326, %a.rd.lt327
  br i1 %a.rd.bounds328, label %a.rd.ok320, label %a.rd.err.oob322

a.rd.ok320:                                       ; preds = %a.rd.check319
  %a.rd.data329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2316, i32 0, i32 1
  %a.rd.data330 = load ptr, ptr %a.rd.data329, align 8
  %a.rd.elem.gep331 = getelementptr i64, ptr %a.rd.data330, i64 %var.load317
  %a.rd.elem332 = load i64, ptr %a.rd.elem.gep331, align 8
  br label %a.rd.done323

a.rd.err.null321:                                 ; preds = %a.after308
  %arena.cur333 = call ptr @dva_arena_current()
  %err.alloc334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 56)
  %err.code.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 0
  store i64 4011, ptr %err.code.gep335, align 8
  %err.msg.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep336, align 8
  %err.file.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep337, align 8
  %err.line.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 3
  store i64 219, ptr %err.line.gep338, align 8
  %err.col.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 4
  store i64 22, ptr %err.col.gep339, align 8
  %err.ctx.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc334, i32 0, i32 5
  %err.ctx0.gep341 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep340, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep341, align 8
  %err.ctx1.gep342 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep340, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep342, align 8
  %err.p2i343 = ptrtoint ptr %err.alloc334 to i64
  br label %a.rd.done323

a.rd.err.oob322:                                  ; preds = %a.rd.check319
  %arena.cur344 = call ptr @dva_arena_current()
  %err.alloc345 = call ptr @dva_arena_alloc(ptr %arena.cur344, i64 56)
  %err.code.gep346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 0
  store i64 4011, ptr %err.code.gep346, align 8
  %err.msg.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep347, align 8
  %err.file.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep348, align 8
  %err.line.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 3
  store i64 219, ptr %err.line.gep349, align 8
  %err.col.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 4
  store i64 22, ptr %err.col.gep350, align 8
  %err.ctx.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 5
  %err.ctx0.gep352 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep351, i32 0, i32 0
  store i64 %var.load317, ptr %err.ctx0.gep352, align 8
  %err.ctx1.gep353 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep351, i32 0, i32 1
  store i64 %a.rd.len325, ptr %err.ctx1.gep353, align 8
  %err.p2i354 = ptrtoint ptr %err.alloc345 to i64
  br label %a.rd.done323

a.rd.done323:                                     ; preds = %a.rd.err.oob322, %a.rd.err.null321, %a.rd.ok320
  %a.rd.tag355 = phi i1 [ true, %a.rd.ok320 ], [ false, %a.rd.err.null321 ], [ false, %a.rd.err.oob322 ]
  %a.rd.pay356 = phi i64 [ %a.rd.elem332, %a.rd.ok320 ], [ %err.p2i343, %a.rd.err.null321 ], [ %err.p2i354, %a.rd.err.oob322 ]
  %ram.tag357 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag355, 0
  %ram.pay358 = insertvalue { i1, i64 } %ram.tag357, i64 %a.rd.pay356, 1
  %ram.tag359 = extractvalue { i1, i64 } %ram.pay358, 0
  br i1 %ram.tag359, label %choice.then360, label %choice.else361

choice.then360:                                   ; preds = %a.rd.done323
  %ram.pay363 = extractvalue { i1, i64 } %ram.pay358, 1
  %pay.ptr364 = inttoptr i64 %ram.pay363 to ptr
  store ptr %pay.ptr364, ptr %var._365, align 8
  br label %choice.exit362

choice.else361:                                   ; preds = %a.rd.done323
  %ram.pay366 = extractvalue { i1, i64 } %ram.pay358, 1
  %pay.ptr367 = inttoptr i64 %ram.pay366 to ptr
  store ptr %pay.ptr367, ptr %var._368, align 8
  %arena.cur369 = call ptr @dva_arena_current()
  %enum.alloc370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 16)
  %tag.gep371 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc370, i32 0, i32 0
  store i64 0, ptr %tag.gep371, align 8
  %pay.gep372 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc370, i32 0, i32 1
  %arena.cur373 = call ptr @dva_arena_current()
  %enum.pay.alloc374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 8)
  store i64 0, ptr %enum.pay.alloc374, align 8
  store ptr %enum.pay.alloc374, ptr %pay.gep372, align 8
  br label %choice.exit362

choice.exit362:                                   ; preds = %choice.else361, %choice.then360
  %choice.res375 = phi ptr [ %pay.ptr364, %choice.then360 ], [ %enum.alloc370, %choice.else361 ]
  store ptr %choice.res375, ptr %var.st1, align 8
  %var.load376 = load ptr, ptr %var.st1, align 8
  %tag.gep380 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 0
  %tag.id381 = load i64, ptr %tag.gep380, align 8
  %tag.match382 = icmp eq i64 %tag.id381, 6
  br i1 %tag.match382, label %choice.case378, label %choice.next379

choice.exit377:                                   ; preds = %choice.next379, %choice.exit491
  br label %loop.latch.21

choice.case378:                                   ; preds = %choice.exit362
  %pay.gep383 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 1
  %payload.ptr384 = load ptr, ptr %pay.gep383, align 8
  store ptr %payload.ptr384, ptr %var.a1, align 8
  %var.load385 = load ptr, ptr %var.a1, align 8
  %call.res386 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load385)
  store i1 %call.res386, ptr %var.is_fwd1, align 1
  %var.load387 = load ptr, ptr %var.gen_names, align 8
  %var.load388 = load ptr, ptr %var.a1, align 8
  %fld.gep389 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load388, i32 0, i32 0
  %fld.load390 = load ptr, ptr %fld.gep389, align 8
  %m.cap391 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load387, i32 0, i32 1
  %m.cap392 = load i64, ptr %m.cap391, align 8
  %m.keys393 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load387, i32 0, i32 2
  %m.keys394 = load ptr, ptr %m.keys393, align 8
  %m.states395 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load387, i32 0, i32 4
  %m.states396 = load ptr, ptr %m.states395, align 8
  %mk.data397 = getelementptr inbounds { i64, ptr }, ptr %fld.load390, i32 0, i32 1
  %mk.data398 = load ptr, ptr %mk.data397, align 8
  %mk.len399 = getelementptr inbounds { i64, ptr }, ptr %fld.load390, i32 0, i32 0
  %mk.len400 = load i64, ptr %mk.len399, align 8
  %mk.len401 = and i64 %mk.len400, 281474976710655
  %str.tag402 = lshr i64 %mk.len400, 48
  %str.immortal403 = icmp eq i64 %str.tag402, 0
  br i1 %str.immortal403, label %str_ok405, label %str_gen_check404

choice.next379:                                   ; preds = %choice.exit362
  br label %choice.exit377

str_gen_check404:                                 ; preds = %choice.case378
  %arena.cur407 = call ptr @dva_arena_current()
  %tag.valid408 = call i1 @dva_arena_validate_tag(ptr %arena.cur407, i64 %str.tag402)
  br i1 %tag.valid408, label %str_ok405, label %str_stale406

str_ok405:                                        ; preds = %str_stale406, %str_gen_check404, %choice.case378
  %hash.str409 = call i64 @dva_hash_string(ptr %mk.data398, i64 %mk.len401)
  %m.capm1410 = sub i64 %m.cap392, 1
  %m.idx0411 = and i64 %hash.str409, %m.capm1410
  br label %m.mem.loop

str_stale406:                                     ; preds = %str_gen_check404
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok405

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok405
  %m.mem.idx = phi i64 [ %m.idx0411, %str_ok405 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe412 = phi i64 [ 0, %str_ok405 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe412, %m.cap392
  %m.mem.state.gep = getelementptr i8, ptr %m.states396, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys394, i64 %m.mem.idx
  %mk.stored413 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen414 = getelementptr inbounds { i64, ptr }, ptr %mk.stored413, i32 0, i32 0
  %mk.slen415 = load i64, ptr %mk.slen414, align 8
  %mk.slen416 = and i64 %mk.slen415, 281474976710655
  %str.tag417 = lshr i64 %mk.slen415, 48
  %str.immortal418 = icmp eq i64 %str.tag417, 0
  br i1 %str.immortal418, label %str_ok420, label %str_gen_check419

m.mem.next:                                       ; preds = %mk.eq.merge437, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1410
  %m.mem.probe.next = add i64 %m.mem.probe412, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load445 = load ptr, ptr %var.a1, align 8
  %fld.gep446 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load445, i32 0, i32 0
  %fld.load447 = load ptr, ptr %fld.gep446, align 8
  store ptr %fld.load447, ptr %var.name1, align 8
  %var.load448 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load448, true
  br i1 %nottmp, label %and.22.then, label %and.22.else

str_gen_check419:                                 ; preds = %m.mem.found
  %arena.cur422 = call ptr @dva_arena_current()
  %tag.valid423 = call i1 @dva_arena_validate_tag(ptr %arena.cur422, i64 %str.tag417)
  br i1 %tag.valid423, label %str_ok420, label %str_stale421

str_ok420:                                        ; preds = %str_stale421, %str_gen_check419, %m.mem.found
  %mk.nlen424 = getelementptr inbounds { i64, ptr }, ptr %fld.load390, i32 0, i32 0
  %mk.nlen425 = load i64, ptr %mk.nlen424, align 8
  %mk.nlen426 = and i64 %mk.nlen425, 281474976710655
  %str.tag427 = lshr i64 %mk.nlen425, 48
  %str.immortal428 = icmp eq i64 %str.tag427, 0
  br i1 %str.immortal428, label %str_ok430, label %str_gen_check429

str_stale421:                                     ; preds = %str_gen_check419
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok420

str_gen_check429:                                 ; preds = %str_ok420
  %arena.cur432 = call ptr @dva_arena_current()
  %tag.valid433 = call i1 @dva_arena_validate_tag(ptr %arena.cur432, i64 %str.tag427)
  br i1 %tag.valid433, label %str_ok430, label %str_stale431

str_ok430:                                        ; preds = %str_stale431, %str_gen_check429, %str_ok420
  %mk.lenseq434 = icmp eq i64 %mk.slen416, %mk.nlen426
  br i1 %mk.lenseq434, label %mk.eq.then435, label %mk.eq.else436

str_stale431:                                     ; preds = %str_gen_check429
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok430

mk.eq.then435:                                    ; preds = %str_ok430
  %mk.sdata438 = getelementptr inbounds { i64, ptr }, ptr %mk.stored413, i32 0, i32 1
  %mk.sdata439 = load ptr, ptr %mk.sdata438, align 8
  %mk.ndata440 = getelementptr inbounds { i64, ptr }, ptr %fld.load390, i32 0, i32 1
  %mk.ndata441 = load ptr, ptr %mk.ndata440, align 8
  %mk.memcmp442 = call i32 @memcmp(ptr %mk.sdata439, ptr %mk.ndata441, i64 %mk.nlen426)
  %mk.cmpeq443 = icmp eq i32 %mk.memcmp442, 0
  br label %mk.eq.merge437

mk.eq.else436:                                    ; preds = %str_ok430
  br label %mk.eq.merge437

mk.eq.merge437:                                   ; preds = %mk.eq.else436, %mk.eq.then435
  %mk.eq444 = phi i1 [ %mk.cmpeq443, %mk.eq.then435 ], [ false, %mk.eq.else436 ]
  br i1 %mk.eq444, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge437
  br label %m.mem.done

and.22.then:                                      ; preds = %m.mem.done
  %var.load449 = load i1, ptr %var.is_gen1, align 1
  %nottmp450 = xor i1 %var.load449, true
  br label %and.22.exit

and.22.else:                                      ; preds = %m.mem.done
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %nottmp450, %and.22.then ], [ %nottmp, %and.22.else ]
  br i1 %and.22.phi, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %and.22.exit
  %var.load451 = load ptr, ptr %var.a1, align 8
  %fld.gep452 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load451, i32 0, i32 2
  %fld.load453 = load i1, ptr %fld.gep452, align 1
  %nottmp454 = xor i1 %fld.load453, true
  br label %and.23.exit

and.23.else:                                      ; preds = %and.22.exit
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp454, %and.23.then ], [ %and.22.phi, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

and.24.then:                                      ; preds = %and.23.exit
  %var.load455 = load ptr, ptr %var.a1, align 8
  %fld.gep456 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load455, i32 0, i32 4
  %fld.load457 = load i1, ptr %fld.gep456, align 1
  %nottmp458 = xor i1 %fld.load457, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp458, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %and.24.exit
  %var.load459 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len460 = getelementptr inbounds { i64, ptr }, ptr %var.load459, i32 0, i32 0
  %eq.lhs.len461 = load i64, ptr %eq.lhs.len460, align 8
  %eq.lhs.len462 = and i64 %eq.lhs.len461, 281474976710655
  %str.tag463 = lshr i64 %eq.lhs.len461, 48
  %str.immortal464 = icmp eq i64 %str.tag463, 0
  br i1 %str.immortal464, label %str_ok466, label %str_gen_check465

and.25.else:                                      ; preds = %and.24.exit
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %str.eq.merge482
  %and.25.phi = phi i1 [ %str.neq489, %str.eq.merge482 ], [ %and.24.phi, %and.25.else ]
  br i1 %and.25.phi, label %choice.then490, label %choice.exit491

str_gen_check465:                                 ; preds = %and.25.then
  %arena.cur468 = call ptr @dva_arena_current()
  %tag.valid469 = call i1 @dva_arena_validate_tag(ptr %arena.cur468, i64 %str.tag463)
  br i1 %tag.valid469, label %str_ok466, label %str_stale467

str_ok466:                                        ; preds = %str_stale467, %str_gen_check465, %and.25.then
  %eq.rhs.len470 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len471 = and i64 %eq.rhs.len470, 281474976710655
  %str.tag472 = lshr i64 %eq.rhs.len470, 48
  %str.immortal473 = icmp eq i64 %str.tag472, 0
  br i1 %str.immortal473, label %str_ok475, label %str_gen_check474

str_stale467:                                     ; preds = %str_gen_check465
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok466

str_gen_check474:                                 ; preds = %str_ok466
  %arena.cur477 = call ptr @dva_arena_current()
  %tag.valid478 = call i1 @dva_arena_validate_tag(ptr %arena.cur477, i64 %str.tag472)
  br i1 %tag.valid478, label %str_ok475, label %str_stale476

str_ok475:                                        ; preds = %str_stale476, %str_gen_check474, %str_ok466
  %eq.len479 = icmp eq i64 %eq.lhs.len462, %eq.rhs.len471
  br i1 %eq.len479, label %str.eq.then480, label %str.eq.else481

str_stale476:                                     ; preds = %str_gen_check474
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok475

str.eq.then480:                                   ; preds = %str_ok475
  %eq.lhs.data483 = getelementptr inbounds { i64, ptr }, ptr %var.load459, i32 0, i32 1
  %eq.lhs.data484 = load ptr, ptr %eq.lhs.data483, align 8
  %eq.rhs.data485 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp486 = call i32 @memcmp(ptr %eq.lhs.data484, ptr %eq.rhs.data485, i64 %eq.lhs.len462)
  %eq.cmp.zero487 = icmp eq i32 %eq.memcmp486, 0
  br label %str.eq.merge482

str.eq.else481:                                   ; preds = %str_ok475
  br label %str.eq.merge482

str.eq.merge482:                                  ; preds = %str.eq.else481, %str.eq.then480
  %str.eq.result488 = phi i1 [ %eq.cmp.zero487, %str.eq.then480 ], [ false, %str.eq.else481 ]
  %str.neq489 = xor i1 %str.eq.result488, true
  br label %and.25.exit

choice.then490:                                   ; preds = %and.25.exit
  %var.load492 = load ptr, ptr %var.def_names, align 8
  %var.load493 = load ptr, ptr %var.name1, align 8
  %m.count494 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  %m.count495 = load i64, ptr %m.count494, align 8
  %m.cap496 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 1
  %m.cap497 = load i64, ptr %m.cap496, align 8
  %m.tombs498 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 5
  %m.tombs499 = load i64, ptr %m.tombs498, align 8
  %m.occupied500 = add i64 %m.count495, %m.tombs499
  %m.c.plus501 = add i64 %m.occupied500, 1
  %m.c.lhs502 = mul i64 %m.c.plus501, 4
  %m.c.rhs503 = mul i64 %m.cap497, 3
  %m.need.grow504 = icmp sgt i64 %m.c.lhs502, %m.c.rhs503
  br i1 %m.need.grow504, label %m.grow505, label %m.ins506

choice.exit491:                                   ; preds = %m.done673, %and.25.exit
  br label %choice.exit377

m.grow505:                                        ; preds = %choice.then490
  %m.old.cap507 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 1
  %m.old.cap508 = load i64, ptr %m.old.cap507, align 8
  %m.old.keys509 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 2
  %m.old.keys510 = load ptr, ptr %m.old.keys509, align 8
  %m.old.vals511 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 3
  %m.old.vals512 = load ptr, ptr %m.old.vals511, align 8
  %m.old.states513 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 4
  %m.old.states514 = load ptr, ptr %m.old.states513, align 8
  %m.double.cap515 = mul i64 %m.old.cap508, 2
  %m.live.cnt516 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  %m.live.cnt517 = load i64, ptr %m.live.cnt516, align 8
  %m.live.x2518 = mul i64 %m.live.cnt517, 2
  %m.should.double519 = icmp sgt i64 %m.live.x2518, %m.old.cap508
  %m.new.cap520 = select i1 %m.should.double519, i64 %m.double.cap515, i64 %m.old.cap508
  %m.gk.bytes521 = mul i64 %m.new.cap520, 8
  %arena.cur522 = call ptr @dva_arena_current()
  %m.gk523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %m.gk.bytes521)
  %m.gv.bytes524 = mul i64 %m.new.cap520, 8
  %arena.cur525 = call ptr @dva_arena_current()
  %m.gv526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %m.gv.bytes524)
  %arena.cur527 = call ptr @dva_arena_current()
  %m.gs528 = call ptr @dva_arena_alloc(ptr %arena.cur527, i64 %m.new.cap520)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs528, i8 0, i64 %m.new.cap520, i1 false)
  %m.cap.gep529 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 1
  store i64 %m.new.cap520, ptr %m.cap.gep529, align 8
  %m.keys.gep530 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 2
  store ptr %m.gk523, ptr %m.keys.gep530, align 8
  %m.vals.gep531 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 3
  store ptr %m.gv526, ptr %m.vals.gep531, align 8
  %m.states.gep532 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 4
  store ptr %m.gs528, ptr %m.states.gep532, align 8
  %m.count.gep533 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  store i64 0, ptr %m.count.gep533, align 8
  %m.tombs.gep534 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep534, align 8
  br label %m.re.loop535

m.ins506:                                         ; preds = %m.re.done538, %choice.then490
  %m.cap643 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 1
  %m.cap644 = load i64, ptr %m.cap643, align 8
  %m.keys645 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 2
  %m.keys646 = load ptr, ptr %m.keys645, align 8
  %m.vals647 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 3
  %m.vals648 = load ptr, ptr %m.vals647, align 8
  %m.states649 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 4
  %m.states650 = load ptr, ptr %m.states649, align 8
  %mk.data651 = getelementptr inbounds { i64, ptr }, ptr %var.load493, i32 0, i32 1
  %mk.data652 = load ptr, ptr %mk.data651, align 8
  %mk.len653 = getelementptr inbounds { i64, ptr }, ptr %var.load493, i32 0, i32 0
  %mk.len654 = load i64, ptr %mk.len653, align 8
  %mk.len655 = and i64 %mk.len654, 281474976710655
  %str.tag656 = lshr i64 %mk.len654, 48
  %str.immortal657 = icmp eq i64 %str.tag656, 0
  br i1 %str.immortal657, label %str_ok659, label %str_gen_check658

m.re.loop535:                                     ; preds = %m.re.cont537, %m.grow505
  %m.re.i539 = phi i64 [ 0, %m.grow505 ], [ %m.re.i.next642, %m.re.cont537 ]
  %m.re.lt540 = icmp slt i64 %m.re.i539, %m.old.cap508
  br i1 %m.re.lt540, label %m.re.body536, label %m.re.done538

m.re.body536:                                     ; preds = %m.re.loop535
  %m.re.state.gep541 = getelementptr i8, ptr %m.old.states514, i64 %m.re.i539
  %m.re.state542 = load i8, ptr %m.re.state.gep541, align 1
  %m.re.occ543 = icmp eq i8 %m.re.state542, 1
  br i1 %m.re.occ543, label %m.re.ins544, label %m.re.cont537

m.re.cont537:                                     ; preds = %m.done579, %m.re.body536
  %m.re.i.next642 = add i64 %m.re.i539, 1
  br label %m.re.loop535

m.re.done538:                                     ; preds = %m.re.loop535
  br label %m.ins506

m.re.ins544:                                      ; preds = %m.re.body536
  %m.re.key.slot545 = getelementptr ptr, ptr %m.old.keys510, i64 %m.re.i539
  %m.re.val.slot546 = getelementptr i64, ptr %m.old.vals512, i64 %m.re.i539
  %m.re.key547 = load ptr, ptr %m.re.key.slot545, align 8
  %m.re.val548 = load i64, ptr %m.re.val.slot546, align 8
  %m.cap549 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 1
  %m.cap550 = load i64, ptr %m.cap549, align 8
  %m.keys551 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 2
  %m.keys552 = load ptr, ptr %m.keys551, align 8
  %m.vals553 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 3
  %m.vals554 = load ptr, ptr %m.vals553, align 8
  %m.states555 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 4
  %m.states556 = load ptr, ptr %m.states555, align 8
  %mk.data557 = getelementptr inbounds { i64, ptr }, ptr %m.re.key547, i32 0, i32 1
  %mk.data558 = load ptr, ptr %mk.data557, align 8
  %mk.len559 = getelementptr inbounds { i64, ptr }, ptr %m.re.key547, i32 0, i32 0
  %mk.len560 = load i64, ptr %mk.len559, align 8
  %mk.len561 = and i64 %mk.len560, 281474976710655
  %str.tag562 = lshr i64 %mk.len560, 48
  %str.immortal563 = icmp eq i64 %str.tag562, 0
  br i1 %str.immortal563, label %str_ok565, label %str_gen_check564

str_gen_check564:                                 ; preds = %m.re.ins544
  %arena.cur567 = call ptr @dva_arena_current()
  %tag.valid568 = call i1 @dva_arena_validate_tag(ptr %arena.cur567, i64 %str.tag562)
  br i1 %tag.valid568, label %str_ok565, label %str_stale566

str_ok565:                                        ; preds = %str_stale566, %str_gen_check564, %m.re.ins544
  %hash.str569 = call i64 @dva_hash_string(ptr %mk.data558, i64 %mk.len561)
  %m.capm1570 = sub i64 %m.cap550, 1
  %m.idx0571 = and i64 %hash.str569, %m.capm1570
  br label %m.loop572

str_stale566:                                     ; preds = %str_gen_check564
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok565

m.loop572:                                        ; preds = %m.next577, %str_ok565
  %m.idx580 = phi i64 [ %m.idx0571, %str_ok565 ], [ %m.idx.next627, %m.next577 ]
  %m.tomb581 = phi i64 [ -1, %str_ok565 ], [ %m.next.tomb625, %m.next577 ]
  %m.probe582 = phi i64 [ 0, %str_ok565 ], [ %m.probe.next628, %m.next577 ]
  %m.reached.cap583 = icmp eq i64 %m.probe582, %m.cap550
  %m.state.gep584 = getelementptr i8, ptr %m.states556, i64 %m.idx580
  %m.state585 = load i8, ptr %m.state.gep584, align 1
  %m.is.empty586 = icmp eq i8 %m.state585, 0
  %m.stop587 = or i1 %m.is.empty586, %m.reached.cap583
  br i1 %m.stop587, label %m.empty578, label %m.check.tomb573

m.check.tomb573:                                  ; preds = %m.loop572
  %m.is.tomb588 = icmp eq i8 %m.state585, 2
  br i1 %m.is.tomb588, label %m.tomb574, label %m.found575

m.tomb574:                                        ; preds = %m.check.tomb573
  %m.has.tomb589 = icmp ne i64 %m.tomb581, -1
  %m.tomb.sel590 = select i1 %m.has.tomb589, i64 %m.tomb581, i64 %m.idx580
  br label %m.next577

m.found575:                                       ; preds = %m.check.tomb573
  %m.key.slot591 = getelementptr ptr, ptr %m.keys552, i64 %m.idx580
  %mk.stored592 = load ptr, ptr %m.key.slot591, align 8
  %mk.slen593 = getelementptr inbounds { i64, ptr }, ptr %mk.stored592, i32 0, i32 0
  %mk.slen594 = load i64, ptr %mk.slen593, align 8
  %mk.slen595 = and i64 %mk.slen594, 281474976710655
  %str.tag596 = lshr i64 %mk.slen594, 48
  %str.immortal597 = icmp eq i64 %str.tag596, 0
  br i1 %str.immortal597, label %str_ok599, label %str_gen_check598

m.overwrite576:                                   ; preds = %mk.eq.merge616
  %m.val.slot624 = getelementptr i64, ptr %m.vals554, i64 %m.idx580
  store i64 %m.re.val548, ptr %m.val.slot624, align 8
  br label %m.done579

m.next577:                                        ; preds = %mk.eq.merge616, %m.tomb574
  %m.next.tomb625 = phi i64 [ %m.tomb.sel590, %m.tomb574 ], [ %m.tomb581, %mk.eq.merge616 ]
  %m.idx.add626 = add i64 %m.idx580, 1
  %m.idx.next627 = and i64 %m.idx.add626, %m.capm1570
  %m.probe.next628 = add i64 %m.probe582, 1
  br label %m.loop572

m.empty578:                                       ; preds = %m.loop572
  %m.use.tomb629 = icmp ne i64 %m.tomb581, -1
  %m.ins.idx630 = select i1 %m.use.tomb629, i64 %m.tomb581, i64 %m.idx580
  %m.key.slot631 = getelementptr ptr, ptr %m.keys552, i64 %m.ins.idx630
  store ptr %m.re.key547, ptr %m.key.slot631, align 8
  %m.val.slot632 = getelementptr i64, ptr %m.vals554, i64 %m.ins.idx630
  store i64 %m.re.val548, ptr %m.val.slot632, align 8
  %m.ins.state.slot633 = getelementptr i8, ptr %m.states556, i64 %m.ins.idx630
  store i8 1, ptr %m.ins.state.slot633, align 1
  %m.count634 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  %m.count635 = load i64, ptr %m.count634, align 8
  %m.count.next636 = add i64 %m.count635, 1
  %m.count.gep637 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  store i64 %m.count.next636, ptr %m.count.gep637, align 8
  %m.ins.tombs.p638 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 5
  %m.ins.tombs639 = load i64, ptr %m.ins.tombs.p638, align 8
  %m.tomb.dec640 = select i1 %m.use.tomb629, i64 1, i64 0
  %m.ins.tombs.next641 = sub i64 %m.ins.tombs639, %m.tomb.dec640
  store i64 %m.ins.tombs.next641, ptr %m.ins.tombs.p638, align 8
  br label %m.done579

m.done579:                                        ; preds = %m.empty578, %m.overwrite576
  br label %m.re.cont537

str_gen_check598:                                 ; preds = %m.found575
  %arena.cur601 = call ptr @dva_arena_current()
  %tag.valid602 = call i1 @dva_arena_validate_tag(ptr %arena.cur601, i64 %str.tag596)
  br i1 %tag.valid602, label %str_ok599, label %str_stale600

str_ok599:                                        ; preds = %str_stale600, %str_gen_check598, %m.found575
  %mk.nlen603 = getelementptr inbounds { i64, ptr }, ptr %m.re.key547, i32 0, i32 0
  %mk.nlen604 = load i64, ptr %mk.nlen603, align 8
  %mk.nlen605 = and i64 %mk.nlen604, 281474976710655
  %str.tag606 = lshr i64 %mk.nlen604, 48
  %str.immortal607 = icmp eq i64 %str.tag606, 0
  br i1 %str.immortal607, label %str_ok609, label %str_gen_check608

str_stale600:                                     ; preds = %str_gen_check598
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok599

str_gen_check608:                                 ; preds = %str_ok599
  %arena.cur611 = call ptr @dva_arena_current()
  %tag.valid612 = call i1 @dva_arena_validate_tag(ptr %arena.cur611, i64 %str.tag606)
  br i1 %tag.valid612, label %str_ok609, label %str_stale610

str_ok609:                                        ; preds = %str_stale610, %str_gen_check608, %str_ok599
  %mk.lenseq613 = icmp eq i64 %mk.slen595, %mk.nlen605
  br i1 %mk.lenseq613, label %mk.eq.then614, label %mk.eq.else615

str_stale610:                                     ; preds = %str_gen_check608
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok609

mk.eq.then614:                                    ; preds = %str_ok609
  %mk.sdata617 = getelementptr inbounds { i64, ptr }, ptr %mk.stored592, i32 0, i32 1
  %mk.sdata618 = load ptr, ptr %mk.sdata617, align 8
  %mk.ndata619 = getelementptr inbounds { i64, ptr }, ptr %m.re.key547, i32 0, i32 1
  %mk.ndata620 = load ptr, ptr %mk.ndata619, align 8
  %mk.memcmp621 = call i32 @memcmp(ptr %mk.sdata618, ptr %mk.ndata620, i64 %mk.nlen605)
  %mk.cmpeq622 = icmp eq i32 %mk.memcmp621, 0
  br label %mk.eq.merge616

mk.eq.else615:                                    ; preds = %str_ok609
  br label %mk.eq.merge616

mk.eq.merge616:                                   ; preds = %mk.eq.else615, %mk.eq.then614
  %mk.eq623 = phi i1 [ %mk.cmpeq622, %mk.eq.then614 ], [ false, %mk.eq.else615 ]
  br i1 %mk.eq623, label %m.overwrite576, label %m.next577

str_gen_check658:                                 ; preds = %m.ins506
  %arena.cur661 = call ptr @dva_arena_current()
  %tag.valid662 = call i1 @dva_arena_validate_tag(ptr %arena.cur661, i64 %str.tag656)
  br i1 %tag.valid662, label %str_ok659, label %str_stale660

str_ok659:                                        ; preds = %str_stale660, %str_gen_check658, %m.ins506
  %hash.str663 = call i64 @dva_hash_string(ptr %mk.data652, i64 %mk.len655)
  %m.capm1664 = sub i64 %m.cap644, 1
  %m.idx0665 = and i64 %hash.str663, %m.capm1664
  br label %m.loop666

str_stale660:                                     ; preds = %str_gen_check658
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok659

m.loop666:                                        ; preds = %m.next671, %str_ok659
  %m.idx674 = phi i64 [ %m.idx0665, %str_ok659 ], [ %m.idx.next721, %m.next671 ]
  %m.tomb675 = phi i64 [ -1, %str_ok659 ], [ %m.next.tomb719, %m.next671 ]
  %m.probe676 = phi i64 [ 0, %str_ok659 ], [ %m.probe.next722, %m.next671 ]
  %m.reached.cap677 = icmp eq i64 %m.probe676, %m.cap644
  %m.state.gep678 = getelementptr i8, ptr %m.states650, i64 %m.idx674
  %m.state679 = load i8, ptr %m.state.gep678, align 1
  %m.is.empty680 = icmp eq i8 %m.state679, 0
  %m.stop681 = or i1 %m.is.empty680, %m.reached.cap677
  br i1 %m.stop681, label %m.empty672, label %m.check.tomb667

m.check.tomb667:                                  ; preds = %m.loop666
  %m.is.tomb682 = icmp eq i8 %m.state679, 2
  br i1 %m.is.tomb682, label %m.tomb668, label %m.found669

m.tomb668:                                        ; preds = %m.check.tomb667
  %m.has.tomb683 = icmp ne i64 %m.tomb675, -1
  %m.tomb.sel684 = select i1 %m.has.tomb683, i64 %m.tomb675, i64 %m.idx674
  br label %m.next671

m.found669:                                       ; preds = %m.check.tomb667
  %m.key.slot685 = getelementptr ptr, ptr %m.keys646, i64 %m.idx674
  %mk.stored686 = load ptr, ptr %m.key.slot685, align 8
  %mk.slen687 = getelementptr inbounds { i64, ptr }, ptr %mk.stored686, i32 0, i32 0
  %mk.slen688 = load i64, ptr %mk.slen687, align 8
  %mk.slen689 = and i64 %mk.slen688, 281474976710655
  %str.tag690 = lshr i64 %mk.slen688, 48
  %str.immortal691 = icmp eq i64 %str.tag690, 0
  br i1 %str.immortal691, label %str_ok693, label %str_gen_check692

m.overwrite670:                                   ; preds = %mk.eq.merge710
  %m.val.slot718 = getelementptr i64, ptr %m.vals648, i64 %m.idx674
  store i64 1, ptr %m.val.slot718, align 8
  br label %m.done673

m.next671:                                        ; preds = %mk.eq.merge710, %m.tomb668
  %m.next.tomb719 = phi i64 [ %m.tomb.sel684, %m.tomb668 ], [ %m.tomb675, %mk.eq.merge710 ]
  %m.idx.add720 = add i64 %m.idx674, 1
  %m.idx.next721 = and i64 %m.idx.add720, %m.capm1664
  %m.probe.next722 = add i64 %m.probe676, 1
  br label %m.loop666

m.empty672:                                       ; preds = %m.loop666
  %m.use.tomb723 = icmp ne i64 %m.tomb675, -1
  %m.ins.idx724 = select i1 %m.use.tomb723, i64 %m.tomb675, i64 %m.idx674
  %m.key.slot725 = getelementptr ptr, ptr %m.keys646, i64 %m.ins.idx724
  store ptr %var.load493, ptr %m.key.slot725, align 8
  %m.val.slot726 = getelementptr i64, ptr %m.vals648, i64 %m.ins.idx724
  store i64 1, ptr %m.val.slot726, align 8
  %m.ins.state.slot727 = getelementptr i8, ptr %m.states650, i64 %m.ins.idx724
  store i8 1, ptr %m.ins.state.slot727, align 1
  %m.count728 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  %m.count729 = load i64, ptr %m.count728, align 8
  %m.count.next730 = add i64 %m.count729, 1
  %m.count.gep731 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 0
  store i64 %m.count.next730, ptr %m.count.gep731, align 8
  %m.ins.tombs.p732 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load492, i32 0, i32 5
  %m.ins.tombs733 = load i64, ptr %m.ins.tombs.p732, align 8
  %m.tomb.dec734 = select i1 %m.use.tomb723, i64 1, i64 0
  %m.ins.tombs.next735 = sub i64 %m.ins.tombs733, %m.tomb.dec734
  store i64 %m.ins.tombs.next735, ptr %m.ins.tombs.p732, align 8
  br label %m.done673

m.done673:                                        ; preds = %m.empty672, %m.overwrite670
  br label %choice.exit491

str_gen_check692:                                 ; preds = %m.found669
  %arena.cur695 = call ptr @dva_arena_current()
  %tag.valid696 = call i1 @dva_arena_validate_tag(ptr %arena.cur695, i64 %str.tag690)
  br i1 %tag.valid696, label %str_ok693, label %str_stale694

str_ok693:                                        ; preds = %str_stale694, %str_gen_check692, %m.found669
  %mk.nlen697 = getelementptr inbounds { i64, ptr }, ptr %var.load493, i32 0, i32 0
  %mk.nlen698 = load i64, ptr %mk.nlen697, align 8
  %mk.nlen699 = and i64 %mk.nlen698, 281474976710655
  %str.tag700 = lshr i64 %mk.nlen698, 48
  %str.immortal701 = icmp eq i64 %str.tag700, 0
  br i1 %str.immortal701, label %str_ok703, label %str_gen_check702

str_stale694:                                     ; preds = %str_gen_check692
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok693

str_gen_check702:                                 ; preds = %str_ok693
  %arena.cur705 = call ptr @dva_arena_current()
  %tag.valid706 = call i1 @dva_arena_validate_tag(ptr %arena.cur705, i64 %str.tag700)
  br i1 %tag.valid706, label %str_ok703, label %str_stale704

str_ok703:                                        ; preds = %str_stale704, %str_gen_check702, %str_ok693
  %mk.lenseq707 = icmp eq i64 %mk.slen689, %mk.nlen699
  br i1 %mk.lenseq707, label %mk.eq.then708, label %mk.eq.else709

str_stale704:                                     ; preds = %str_gen_check702
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok703

mk.eq.then708:                                    ; preds = %str_ok703
  %mk.sdata711 = getelementptr inbounds { i64, ptr }, ptr %mk.stored686, i32 0, i32 1
  %mk.sdata712 = load ptr, ptr %mk.sdata711, align 8
  %mk.ndata713 = getelementptr inbounds { i64, ptr }, ptr %var.load493, i32 0, i32 1
  %mk.ndata714 = load ptr, ptr %mk.ndata713, align 8
  %mk.memcmp715 = call i32 @memcmp(ptr %mk.sdata712, ptr %mk.ndata714, i64 %mk.nlen699)
  %mk.cmpeq716 = icmp eq i32 %mk.memcmp715, 0
  br label %mk.eq.merge710

mk.eq.else709:                                    ; preds = %str_ok703
  br label %mk.eq.merge710

mk.eq.merge710:                                   ; preds = %mk.eq.else709, %mk.eq.then708
  %mk.eq717 = phi i1 [ %mk.cmpeq716, %mk.eq.then708 ], [ false, %mk.eq.else709 ]
  br i1 %mk.eq717, label %m.overwrite670, label %m.next671

a.create741:                                      ; preds = %loop.exit.21
  %arena.cur743 = call ptr @dva_arena_current()
  %a.create744 = call ptr @dva_arena_alloc(ptr %arena.cur743, i64 24)
  %arena.cur745 = call ptr @dva_arena_current()
  %a.buf746 = call ptr @dva_arena_alloc(ptr %arena.cur745, i64 128)
  %a.len.gep747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create744, i32 0, i32 0
  store i64 0, ptr %a.len.gep747, align 8
  %a.data.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create744, i32 0, i32 1
  store ptr %a.buf746, ptr %a.data.gep748, align 8
  %a.cap.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create744, i32 0, i32 2
  store i64 16, ptr %a.cap.gep749, align 8
  store ptr %a.create744, ptr %var.stmts, align 8
  br label %a.after742

a.after742:                                       ; preds = %a.create741, %loop.exit.21
  %a.load2750 = load ptr, ptr %var.stmts, align 8
  %a.len.query751 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2750, i32 0, i32 0
  %a.len.query752 = load i64, ptr %a.len.query751, align 8
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %a.after742
  %counter.load753 = load i64, ptr %loop.idx.26, align 8
  %loop.cond754 = icmp slt i64 %counter.load753, %a.len.query752
  br i1 %loop.cond754, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i755 = sub i64 %counter.load753, 0
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i755, ptr %var._i756, align 8
  store i64 %counter.load753, ptr %var._757, align 8
  store i64 %counter.load753, ptr %var.j, align 8
  %var.load758 = load ptr, ptr %var.stmts, align 8
  %a.load759 = load ptr, ptr %var.stmts, align 8
  %a.null760 = icmp eq ptr %a.load759, null
  br i1 %a.null760, label %a.create761, label %a.after762

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit831
  %step.val1463 = load i64, ptr %loop.step.26, align 8
  %loop.next1464 = add i64 %counter.load753, %step.val1463
  store i64 %loop.next1464, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  %var.load1465 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1465

a.create761:                                      ; preds = %loop.body.26
  %arena.cur763 = call ptr @dva_arena_current()
  %a.create764 = call ptr @dva_arena_alloc(ptr %arena.cur763, i64 24)
  %arena.cur765 = call ptr @dva_arena_current()
  %a.buf766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 128)
  %a.len.gep767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create764, i32 0, i32 0
  store i64 0, ptr %a.len.gep767, align 8
  %a.data.gep768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create764, i32 0, i32 1
  store ptr %a.buf766, ptr %a.data.gep768, align 8
  %a.cap.gep769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create764, i32 0, i32 2
  store i64 16, ptr %a.cap.gep769, align 8
  store ptr %a.create764, ptr %var.stmts, align 8
  br label %a.after762

a.after762:                                       ; preds = %a.create761, %loop.body.26
  %a.load2770 = load ptr, ptr %var.stmts, align 8
  %var.load771 = load i64, ptr %var.j, align 8
  %a.rd.nonnull772 = icmp ne ptr %a.load2770, null
  br i1 %a.rd.nonnull772, label %a.rd.check773, label %a.rd.err.null775

a.rd.check773:                                    ; preds = %a.after762
  %a.rd.len778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2770, i32 0, i32 0
  %a.rd.len779 = load i64, ptr %a.rd.len778, align 8
  %a.rd.ge0780 = icmp sge i64 %var.load771, 0
  %a.rd.lt781 = icmp slt i64 %var.load771, %a.rd.len779
  %a.rd.bounds782 = and i1 %a.rd.ge0780, %a.rd.lt781
  br i1 %a.rd.bounds782, label %a.rd.ok774, label %a.rd.err.oob776

a.rd.ok774:                                       ; preds = %a.rd.check773
  %a.rd.data783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2770, i32 0, i32 1
  %a.rd.data784 = load ptr, ptr %a.rd.data783, align 8
  %a.rd.elem.gep785 = getelementptr i64, ptr %a.rd.data784, i64 %var.load771
  %a.rd.elem786 = load i64, ptr %a.rd.elem.gep785, align 8
  br label %a.rd.done777

a.rd.err.null775:                                 ; preds = %a.after762
  %arena.cur787 = call ptr @dva_arena_current()
  %err.alloc788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 56)
  %err.code.gep789 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 0
  store i64 4011, ptr %err.code.gep789, align 8
  %err.msg.gep790 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep790, align 8
  %err.file.gep791 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep791, align 8
  %err.line.gep792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 3
  store i64 229, ptr %err.line.gep792, align 8
  %err.col.gep793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 4
  store i64 22, ptr %err.col.gep793, align 8
  %err.ctx.gep794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc788, i32 0, i32 5
  %err.ctx0.gep795 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep794, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep795, align 8
  %err.ctx1.gep796 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep794, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep796, align 8
  %err.p2i797 = ptrtoint ptr %err.alloc788 to i64
  br label %a.rd.done777

a.rd.err.oob776:                                  ; preds = %a.rd.check773
  %arena.cur798 = call ptr @dva_arena_current()
  %err.alloc799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 56)
  %err.code.gep800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 0
  store i64 4011, ptr %err.code.gep800, align 8
  %err.msg.gep801 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep801, align 8
  %err.file.gep802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep802, align 8
  %err.line.gep803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 3
  store i64 229, ptr %err.line.gep803, align 8
  %err.col.gep804 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 4
  store i64 22, ptr %err.col.gep804, align 8
  %err.ctx.gep805 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc799, i32 0, i32 5
  %err.ctx0.gep806 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep805, i32 0, i32 0
  store i64 %var.load771, ptr %err.ctx0.gep806, align 8
  %err.ctx1.gep807 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep805, i32 0, i32 1
  store i64 %a.rd.len779, ptr %err.ctx1.gep807, align 8
  %err.p2i808 = ptrtoint ptr %err.alloc799 to i64
  br label %a.rd.done777

a.rd.done777:                                     ; preds = %a.rd.err.oob776, %a.rd.err.null775, %a.rd.ok774
  %a.rd.tag809 = phi i1 [ true, %a.rd.ok774 ], [ false, %a.rd.err.null775 ], [ false, %a.rd.err.oob776 ]
  %a.rd.pay810 = phi i64 [ %a.rd.elem786, %a.rd.ok774 ], [ %err.p2i797, %a.rd.err.null775 ], [ %err.p2i808, %a.rd.err.oob776 ]
  %ram.tag811 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag809, 0
  %ram.pay812 = insertvalue { i1, i64 } %ram.tag811, i64 %a.rd.pay810, 1
  %ram.tag813 = extractvalue { i1, i64 } %ram.pay812, 0
  br i1 %ram.tag813, label %choice.then814, label %choice.else815

choice.then814:                                   ; preds = %a.rd.done777
  %ram.pay817 = extractvalue { i1, i64 } %ram.pay812, 1
  %pay.ptr818 = inttoptr i64 %ram.pay817 to ptr
  store ptr %pay.ptr818, ptr %var._819, align 8
  br label %choice.exit816

choice.else815:                                   ; preds = %a.rd.done777
  %ram.pay820 = extractvalue { i1, i64 } %ram.pay812, 1
  %pay.ptr821 = inttoptr i64 %ram.pay820 to ptr
  store ptr %pay.ptr821, ptr %var._822, align 8
  %arena.cur823 = call ptr @dva_arena_current()
  %enum.alloc824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 16)
  %tag.gep825 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc824, i32 0, i32 0
  store i64 0, ptr %tag.gep825, align 8
  %pay.gep826 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc824, i32 0, i32 1
  %arena.cur827 = call ptr @dva_arena_current()
  %enum.pay.alloc828 = call ptr @dva_arena_alloc(ptr %arena.cur827, i64 8)
  store i64 0, ptr %enum.pay.alloc828, align 8
  store ptr %enum.pay.alloc828, ptr %pay.gep826, align 8
  br label %choice.exit816

choice.exit816:                                   ; preds = %choice.else815, %choice.then814
  %choice.res829 = phi ptr [ %pay.ptr818, %choice.then814 ], [ %enum.alloc824, %choice.else815 ]
  store ptr %choice.res829, ptr %var.st2, align 8
  %var.load830 = load ptr, ptr %var.st2, align 8
  %tag.gep834 = getelementptr inbounds { i64, ptr }, ptr %var.load830, i32 0, i32 0
  %tag.id835 = load i64, ptr %tag.gep834, align 8
  %tag.match836 = icmp eq i64 %tag.id835, 6
  br i1 %tag.match836, label %choice.case832, label %choice.next833

choice.exit831:                                   ; preds = %choice.next833, %choice.exit965
  br label %loop.latch.26

choice.case832:                                   ; preds = %choice.exit816
  %pay.gep837 = getelementptr inbounds { i64, ptr }, ptr %var.load830, i32 0, i32 1
  %payload.ptr838 = load ptr, ptr %pay.gep837, align 8
  store ptr %payload.ptr838, ptr %var.a2, align 8
  %var.load839 = load ptr, ptr %var.a2, align 8
  %call.res840 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load839)
  store i1 %call.res840, ptr %var.is_fwd2, align 1
  %var.load841 = load ptr, ptr %var.gen_names, align 8
  %var.load842 = load ptr, ptr %var.a2, align 8
  %fld.gep843 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load842, i32 0, i32 0
  %fld.load844 = load ptr, ptr %fld.gep843, align 8
  %m.cap845 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load841, i32 0, i32 1
  %m.cap846 = load i64, ptr %m.cap845, align 8
  %m.keys847 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load841, i32 0, i32 2
  %m.keys848 = load ptr, ptr %m.keys847, align 8
  %m.states849 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load841, i32 0, i32 4
  %m.states850 = load ptr, ptr %m.states849, align 8
  %mk.data851 = getelementptr inbounds { i64, ptr }, ptr %fld.load844, i32 0, i32 1
  %mk.data852 = load ptr, ptr %mk.data851, align 8
  %mk.len853 = getelementptr inbounds { i64, ptr }, ptr %fld.load844, i32 0, i32 0
  %mk.len854 = load i64, ptr %mk.len853, align 8
  %mk.len855 = and i64 %mk.len854, 281474976710655
  %str.tag856 = lshr i64 %mk.len854, 48
  %str.immortal857 = icmp eq i64 %str.tag856, 0
  br i1 %str.immortal857, label %str_ok859, label %str_gen_check858

choice.next833:                                   ; preds = %choice.exit816
  br label %choice.exit831

str_gen_check858:                                 ; preds = %choice.case832
  %arena.cur861 = call ptr @dva_arena_current()
  %tag.valid862 = call i1 @dva_arena_validate_tag(ptr %arena.cur861, i64 %str.tag856)
  br i1 %tag.valid862, label %str_ok859, label %str_stale860

str_ok859:                                        ; preds = %str_stale860, %str_gen_check858, %choice.case832
  %hash.str863 = call i64 @dva_hash_string(ptr %mk.data852, i64 %mk.len855)
  %m.capm1864 = sub i64 %m.cap846, 1
  %m.idx0865 = and i64 %hash.str863, %m.capm1864
  br label %m.mem.loop866

str_stale860:                                     ; preds = %str_gen_check858
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok859

m.mem.loop866:                                    ; preds = %m.mem.next869, %str_ok859
  %m.mem.idx872 = phi i64 [ %m.idx0865, %str_ok859 ], [ %m.mem.idx.next915, %m.mem.next869 ]
  %m.mem.probe873 = phi i64 [ 0, %str_ok859 ], [ %m.mem.probe.next916, %m.mem.next869 ]
  %m.mem.reached874 = icmp eq i64 %m.mem.probe873, %m.cap846
  %m.mem.state.gep875 = getelementptr i8, ptr %m.states850, i64 %m.mem.idx872
  %m.mem.state876 = load i8, ptr %m.mem.state.gep875, align 1
  %m.mem.is.empty877 = icmp eq i8 %m.mem.state876, 0
  %m.mem.stop878 = or i1 %m.mem.is.empty877, %m.mem.reached874
  br i1 %m.mem.stop878, label %m.mem.miss870, label %m.mem.probe867

m.mem.probe867:                                   ; preds = %m.mem.loop866
  %m.mem.is.tomb879 = icmp eq i8 %m.mem.state876, 2
  br i1 %m.mem.is.tomb879, label %m.mem.next869, label %m.mem.found868

m.mem.found868:                                   ; preds = %m.mem.probe867
  %m.mem.key.slot880 = getelementptr ptr, ptr %m.keys848, i64 %m.mem.idx872
  %mk.stored881 = load ptr, ptr %m.mem.key.slot880, align 8
  %mk.slen882 = getelementptr inbounds { i64, ptr }, ptr %mk.stored881, i32 0, i32 0
  %mk.slen883 = load i64, ptr %mk.slen882, align 8
  %mk.slen884 = and i64 %mk.slen883, 281474976710655
  %str.tag885 = lshr i64 %mk.slen883, 48
  %str.immortal886 = icmp eq i64 %str.tag885, 0
  br i1 %str.immortal886, label %str_ok888, label %str_gen_check887

m.mem.next869:                                    ; preds = %mk.eq.merge905, %m.mem.probe867
  %m.mem.idx.add914 = add i64 %m.mem.idx872, 1
  %m.mem.idx.next915 = and i64 %m.mem.idx.add914, %m.capm1864
  %m.mem.probe.next916 = add i64 %m.mem.probe873, 1
  br label %m.mem.loop866

m.mem.miss870:                                    ; preds = %m.mem.loop866
  br label %m.mem.done871

m.mem.done871:                                    ; preds = %m.mem.miss870, %m.mem.hit913
  %m.mem.res917 = phi i1 [ true, %m.mem.hit913 ], [ false, %m.mem.miss870 ]
  store i1 %m.mem.res917, ptr %var.is_gen2, align 1
  %var.load918 = load ptr, ptr %var.a2, align 8
  %fld.gep919 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load918, i32 0, i32 0
  %fld.load920 = load ptr, ptr %fld.gep919, align 8
  store ptr %fld.load920, ptr %var.name2, align 8
  %var.load921 = load i1, ptr %var.is_fwd2, align 1
  %nottmp922 = xor i1 %var.load921, true
  br i1 %nottmp922, label %and.27.then, label %and.27.else

str_gen_check887:                                 ; preds = %m.mem.found868
  %arena.cur890 = call ptr @dva_arena_current()
  %tag.valid891 = call i1 @dva_arena_validate_tag(ptr %arena.cur890, i64 %str.tag885)
  br i1 %tag.valid891, label %str_ok888, label %str_stale889

str_ok888:                                        ; preds = %str_stale889, %str_gen_check887, %m.mem.found868
  %mk.nlen892 = getelementptr inbounds { i64, ptr }, ptr %fld.load844, i32 0, i32 0
  %mk.nlen893 = load i64, ptr %mk.nlen892, align 8
  %mk.nlen894 = and i64 %mk.nlen893, 281474976710655
  %str.tag895 = lshr i64 %mk.nlen893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

str_stale889:                                     ; preds = %str_gen_check887
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok888

str_gen_check897:                                 ; preds = %str_ok888
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %str_ok888
  %mk.lenseq902 = icmp eq i64 %mk.slen884, %mk.nlen894
  br i1 %mk.lenseq902, label %mk.eq.then903, label %mk.eq.else904

str_stale899:                                     ; preds = %str_gen_check897
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

mk.eq.then903:                                    ; preds = %str_ok898
  %mk.sdata906 = getelementptr inbounds { i64, ptr }, ptr %mk.stored881, i32 0, i32 1
  %mk.sdata907 = load ptr, ptr %mk.sdata906, align 8
  %mk.ndata908 = getelementptr inbounds { i64, ptr }, ptr %fld.load844, i32 0, i32 1
  %mk.ndata909 = load ptr, ptr %mk.ndata908, align 8
  %mk.memcmp910 = call i32 @memcmp(ptr %mk.sdata907, ptr %mk.ndata909, i64 %mk.nlen894)
  %mk.cmpeq911 = icmp eq i32 %mk.memcmp910, 0
  br label %mk.eq.merge905

mk.eq.else904:                                    ; preds = %str_ok898
  br label %mk.eq.merge905

mk.eq.merge905:                                   ; preds = %mk.eq.else904, %mk.eq.then903
  %mk.eq912 = phi i1 [ %mk.cmpeq911, %mk.eq.then903 ], [ false, %mk.eq.else904 ]
  br i1 %mk.eq912, label %m.mem.hit913, label %m.mem.next869

m.mem.hit913:                                     ; preds = %mk.eq.merge905
  br label %m.mem.done871

and.27.then:                                      ; preds = %m.mem.done871
  %var.load923 = load i1, ptr %var.is_gen2, align 1
  %nottmp924 = xor i1 %var.load923, true
  br label %and.27.exit

and.27.else:                                      ; preds = %m.mem.done871
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp924, %and.27.then ], [ %nottmp922, %and.27.else ]
  br i1 %and.27.phi, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %and.27.exit
  %var.load925 = load ptr, ptr %var.a2, align 8
  %fld.gep926 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load925, i32 0, i32 2
  %fld.load927 = load i1, ptr %fld.gep926, align 1
  %nottmp928 = xor i1 %fld.load927, true
  br label %and.28.exit

and.28.else:                                      ; preds = %and.27.exit
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp928, %and.28.then ], [ %and.27.phi, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load929 = load ptr, ptr %var.a2, align 8
  %fld.gep930 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load929, i32 0, i32 4
  %fld.load931 = load i1, ptr %fld.gep930, align 1
  %nottmp932 = xor i1 %fld.load931, true
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp932, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load933 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len934 = getelementptr inbounds { i64, ptr }, ptr %var.load933, i32 0, i32 0
  %eq.lhs.len935 = load i64, ptr %eq.lhs.len934, align 8
  %eq.lhs.len936 = and i64 %eq.lhs.len935, 281474976710655
  %str.tag937 = lshr i64 %eq.lhs.len935, 48
  %str.immortal938 = icmp eq i64 %str.tag937, 0
  br i1 %str.immortal938, label %str_ok940, label %str_gen_check939

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %str.eq.merge956
  %and.30.phi = phi i1 [ %str.neq963, %str.eq.merge956 ], [ %and.29.phi, %and.30.else ]
  br i1 %and.30.phi, label %choice.then964, label %choice.exit965

str_gen_check939:                                 ; preds = %and.30.then
  %arena.cur942 = call ptr @dva_arena_current()
  %tag.valid943 = call i1 @dva_arena_validate_tag(ptr %arena.cur942, i64 %str.tag937)
  br i1 %tag.valid943, label %str_ok940, label %str_stale941

str_ok940:                                        ; preds = %str_stale941, %str_gen_check939, %and.30.then
  %eq.rhs.len944 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len945 = and i64 %eq.rhs.len944, 281474976710655
  %str.tag946 = lshr i64 %eq.rhs.len944, 48
  %str.immortal947 = icmp eq i64 %str.tag946, 0
  br i1 %str.immortal947, label %str_ok949, label %str_gen_check948

str_stale941:                                     ; preds = %str_gen_check939
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok940

str_gen_check948:                                 ; preds = %str_ok940
  %arena.cur951 = call ptr @dva_arena_current()
  %tag.valid952 = call i1 @dva_arena_validate_tag(ptr %arena.cur951, i64 %str.tag946)
  br i1 %tag.valid952, label %str_ok949, label %str_stale950

str_ok949:                                        ; preds = %str_stale950, %str_gen_check948, %str_ok940
  %eq.len953 = icmp eq i64 %eq.lhs.len936, %eq.rhs.len945
  br i1 %eq.len953, label %str.eq.then954, label %str.eq.else955

str_stale950:                                     ; preds = %str_gen_check948
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok949

str.eq.then954:                                   ; preds = %str_ok949
  %eq.lhs.data957 = getelementptr inbounds { i64, ptr }, ptr %var.load933, i32 0, i32 1
  %eq.lhs.data958 = load ptr, ptr %eq.lhs.data957, align 8
  %eq.rhs.data959 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp960 = call i32 @memcmp(ptr %eq.lhs.data958, ptr %eq.rhs.data959, i64 %eq.lhs.len936)
  %eq.cmp.zero961 = icmp eq i32 %eq.memcmp960, 0
  br label %str.eq.merge956

str.eq.else955:                                   ; preds = %str_ok949
  br label %str.eq.merge956

str.eq.merge956:                                  ; preds = %str.eq.else955, %str.eq.then954
  %str.eq.result962 = phi i1 [ %eq.cmp.zero961, %str.eq.then954 ], [ false, %str.eq.else955 ]
  %str.neq963 = xor i1 %str.eq.result962, true
  br label %and.30.exit

choice.then964:                                   ; preds = %and.30.exit
  %arena.cur966 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur966, i64 24)
  %arena.cur967 = call ptr @dva_arena_current()
  %a.buf968 = call ptr @dva_arena_alloc(ptr %arena.cur967, i64 128)
  %a.len.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep969, align 8
  %a.data.gep970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf968, ptr %a.data.gep970, align 8
  %a.cap.gep971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep971, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load972 = load ptr, ptr %var.a2, align 8
  %fld.gep973 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load972, i32 0, i32 5
  %fld.load974 = load ptr, ptr %fld.gep973, align 8
  %arena.cur975 = call ptr @dva_arena_current()
  %a.new976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 24)
  %arena.cur977 = call ptr @dva_arena_current()
  %a.buf978 = call ptr @dva_arena_alloc(ptr %arena.cur977, i64 128)
  %a.len.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new976, i32 0, i32 0
  store i64 0, ptr %a.len.gep979, align 8
  %a.data.gep980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new976, i32 0, i32 1
  store ptr %a.buf978, ptr %a.data.gep980, align 8
  %a.cap.gep981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new976, i32 0, i32 2
  store i64 16, ptr %a.cap.gep981, align 8
  %var.load982 = load ptr, ptr %var.raw_refs, align 8
  %a.load983 = load ptr, ptr %var.raw_refs, align 8
  %a.null984 = icmp eq ptr %a.load983, null
  br i1 %a.null984, label %a.create985, label %a.after986

choice.exit965:                                   ; preds = %a.store1449, %and.30.exit
  br label %choice.exit831

a.create985:                                      ; preds = %choice.then964
  %arena.cur987 = call ptr @dva_arena_current()
  %a.create988 = call ptr @dva_arena_alloc(ptr %arena.cur987, i64 24)
  %arena.cur989 = call ptr @dva_arena_current()
  %a.buf990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 128)
  %a.len.gep991 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 0
  store i64 0, ptr %a.len.gep991, align 8
  %a.data.gep992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 1
  store ptr %a.buf990, ptr %a.data.gep992, align 8
  %a.cap.gep993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 2
  store i64 16, ptr %a.cap.gep993, align 8
  store ptr %a.create988, ptr %var.raw_refs, align 8
  br label %a.after986

a.after986:                                       ; preds = %a.create985, %choice.then964
  %a.load2994 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load974, ptr %a.new976, ptr %a.load2994)
  %arena.cur995 = call ptr @dva_arena_current()
  %a.new996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 24)
  %arena.cur997 = call ptr @dva_arena_current()
  %a.buf998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 128)
  %a.len.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new996, i32 0, i32 0
  store i64 0, ptr %a.len.gep999, align 8
  %a.data.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new996, i32 0, i32 1
  store ptr %a.buf998, ptr %a.data.gep1000, align 8
  %a.cap.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new996, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1001, align 8
  store ptr %a.new996, ptr %var.filtered_deps, align 8
  %var.load1002 = load ptr, ptr %var.name2, align 8
  %call.res1003 = call ptr @"dep_graph::decl_module"(ptr %var.load1002, i64 0)
  store ptr %call.res1003, ptr %var.mod2, align 8
  %var.load1004 = load ptr, ptr %var.raw_refs, align 8
  %a.load1005 = load ptr, ptr %var.raw_refs, align 8
  %a.null1006 = icmp eq ptr %a.load1005, null
  br i1 %a.null1006, label %a.create1007, label %a.after1008

a.create1007:                                     ; preds = %a.after986
  %arena.cur1009 = call ptr @dva_arena_current()
  %a.create1010 = call ptr @dva_arena_alloc(ptr %arena.cur1009, i64 24)
  %arena.cur1011 = call ptr @dva_arena_current()
  %a.buf1012 = call ptr @dva_arena_alloc(ptr %arena.cur1011, i64 128)
  %a.len.gep1013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1010, i32 0, i32 0
  store i64 0, ptr %a.len.gep1013, align 8
  %a.data.gep1014 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1010, i32 0, i32 1
  store ptr %a.buf1012, ptr %a.data.gep1014, align 8
  %a.cap.gep1015 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1010, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1015, align 8
  store ptr %a.create1010, ptr %var.raw_refs, align 8
  br label %a.after1008

a.after1008:                                      ; preds = %a.create1007, %a.after986
  %a.load21016 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21016, i32 0, i32 0
  %arr.cycle.len1017 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21016, i32 0, i32 1
  %arr.cycle.data1018 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after1008
  %counter.load1019 = load i64, ptr %loop.idx.31, align 8
  %loop.cond1020 = icmp slt i64 %counter.load1019, %arr.cycle.len1017
  br i1 %loop.cond1020, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i1021 = sub i64 %counter.load1019, 0
  store i64 1, ptr %loop.step.31, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data1018, i64 %counter.load1019
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %arr.elem.ptr = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i1021, ptr %var._i756, align 8
  store ptr %arr.elem.ptr, ptr %var._757, align 8
  store ptr %arr.elem.ptr, ptr %var.ref_name, align 8
  %var.load1022 = load ptr, ptr %var.def_names, align 8
  %var.load1023 = load ptr, ptr %var.mod2, align 8
  %var.load1024 = load ptr, ptr %var.ref_name, align 8
  %call.res1025 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load1022, ptr %var.load1023, ptr %var.load1024)
  store ptr %call.res1025, ptr %var.target_ref, align 8
  %var.load1026 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len1027 = getelementptr inbounds { i64, ptr }, ptr %var.load1026, i32 0, i32 0
  %eq.lhs.len1028 = load i64, ptr %eq.lhs.len1027, align 8
  %eq.lhs.len1029 = and i64 %eq.lhs.len1028, 281474976710655
  %str.tag1030 = lshr i64 %eq.lhs.len1028, 48
  %str.immortal1031 = icmp eq i64 %str.tag1030, 0
  br i1 %str.immortal1031, label %str_ok1033, label %str_gen_check1032

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit1074
  %step.val1092 = load i64, ptr %loop.step.31, align 8
  %loop.next1093 = add i64 %counter.load1019, %step.val1092
  store i64 %loop.next1093, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load1094 = load ptr, ptr %var.graph, align 8
  %fld.gep1095 = getelementptr inbounds { ptr, ptr }, ptr %var.load1094, i32 0, i32 1
  %fld.load1096 = load ptr, ptr %fld.gep1095, align 8
  store ptr %fld.load1096, ptr %var.node_indices, align 8
  %var.load1097 = load ptr, ptr %var.node_indices, align 8
  %var.load1098 = load ptr, ptr %var.name2, align 8
  %m.cap1099 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1097, i32 0, i32 1
  %m.cap1100 = load i64, ptr %m.cap1099, align 8
  %m.keys1101 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1097, i32 0, i32 2
  %m.keys1102 = load ptr, ptr %m.keys1101, align 8
  %m.states1103 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1097, i32 0, i32 4
  %m.states1104 = load ptr, ptr %m.states1103, align 8
  %mk.data1105 = getelementptr inbounds { i64, ptr }, ptr %var.load1098, i32 0, i32 1
  %mk.data1106 = load ptr, ptr %mk.data1105, align 8
  %mk.len1107 = getelementptr inbounds { i64, ptr }, ptr %var.load1098, i32 0, i32 0
  %mk.len1108 = load i64, ptr %mk.len1107, align 8
  %mk.len1109 = and i64 %mk.len1108, 281474976710655
  %str.tag1110 = lshr i64 %mk.len1108, 48
  %str.immortal1111 = icmp eq i64 %str.tag1110, 0
  br i1 %str.immortal1111, label %str_ok1113, label %str_gen_check1112

str_gen_check1032:                                ; preds = %loop.body.31
  %arena.cur1035 = call ptr @dva_arena_current()
  %tag.valid1036 = call i1 @dva_arena_validate_tag(ptr %arena.cur1035, i64 %str.tag1030)
  br i1 %tag.valid1036, label %str_ok1033, label %str_stale1034

str_ok1033:                                       ; preds = %str_stale1034, %str_gen_check1032, %loop.body.31
  %eq.rhs.len1037 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1038 = and i64 %eq.rhs.len1037, 281474976710655
  %str.tag1039 = lshr i64 %eq.rhs.len1037, 48
  %str.immortal1040 = icmp eq i64 %str.tag1039, 0
  br i1 %str.immortal1040, label %str_ok1042, label %str_gen_check1041

str_stale1034:                                    ; preds = %str_gen_check1032
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1033

str_gen_check1041:                                ; preds = %str_ok1033
  %arena.cur1044 = call ptr @dva_arena_current()
  %tag.valid1045 = call i1 @dva_arena_validate_tag(ptr %arena.cur1044, i64 %str.tag1039)
  br i1 %tag.valid1045, label %str_ok1042, label %str_stale1043

str_ok1042:                                       ; preds = %str_stale1043, %str_gen_check1041, %str_ok1033
  %eq.len1046 = icmp eq i64 %eq.lhs.len1029, %eq.rhs.len1038
  br i1 %eq.len1046, label %str.eq.then1047, label %str.eq.else1048

str_stale1043:                                    ; preds = %str_gen_check1041
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1042

str.eq.then1047:                                  ; preds = %str_ok1042
  %eq.lhs.data1050 = getelementptr inbounds { i64, ptr }, ptr %var.load1026, i32 0, i32 1
  %eq.lhs.data1051 = load ptr, ptr %eq.lhs.data1050, align 8
  %eq.rhs.data1052 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1053 = call i32 @memcmp(ptr %eq.lhs.data1051, ptr %eq.rhs.data1052, i64 %eq.lhs.len1029)
  %eq.cmp.zero1054 = icmp eq i32 %eq.memcmp1053, 0
  br label %str.eq.merge1049

str.eq.else1048:                                  ; preds = %str_ok1042
  br label %str.eq.merge1049

str.eq.merge1049:                                 ; preds = %str.eq.else1048, %str.eq.then1047
  %str.eq.result1055 = phi i1 [ %eq.cmp.zero1054, %str.eq.then1047 ], [ false, %str.eq.else1048 ]
  %str.neq1056 = xor i1 %str.eq.result1055, true
  br i1 %str.neq1056, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge1049
  %var.load1057 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1058 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1059 = icmp eq ptr %a.load1058, null
  br i1 %a.null1059, label %a.create1060, label %a.after1061

and.32.else:                                      ; preds = %str.eq.merge1049
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after1061
  %and.32.phi = phi i1 [ %nottmp1072, %a.after1061 ], [ %str.neq1056, %and.32.else ]
  br i1 %and.32.phi, label %choice.then1073, label %choice.exit1074

a.create1060:                                     ; preds = %and.32.then
  %arena.cur1062 = call ptr @dva_arena_current()
  %a.create1063 = call ptr @dva_arena_alloc(ptr %arena.cur1062, i64 24)
  %arena.cur1064 = call ptr @dva_arena_current()
  %a.buf1065 = call ptr @dva_arena_alloc(ptr %arena.cur1064, i64 128)
  %a.len.gep1066 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1063, i32 0, i32 0
  store i64 0, ptr %a.len.gep1066, align 8
  %a.data.gep1067 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1063, i32 0, i32 1
  store ptr %a.buf1065, ptr %a.data.gep1067, align 8
  %a.cap.gep1068 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1063, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1068, align 8
  store ptr %a.create1063, ptr %var.filtered_deps, align 8
  br label %a.after1061

a.after1061:                                      ; preds = %a.create1060, %and.32.then
  %a.load21069 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1070 = load ptr, ptr %var.target_ref, align 8
  %call.res1071 = call i1 @"dep_graph::has_name"(ptr %a.load21069, ptr %var.load1070)
  %nottmp1072 = xor i1 %call.res1071, true
  br label %and.32.exit

choice.then1073:                                  ; preds = %and.32.exit
  %var.load1075 = load ptr, ptr %var.target_ref, align 8
  %a.load1076 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1077 = icmp eq ptr %a.load1076, null
  br i1 %a.null1077, label %a.create1078, label %a.after1079

choice.exit1074:                                  ; preds = %a.store, %and.32.exit
  br label %loop.latch.31

a.create1078:                                     ; preds = %choice.then1073
  %arena.cur1080 = call ptr @dva_arena_current()
  %a.create1081 = call ptr @dva_arena_alloc(ptr %arena.cur1080, i64 24)
  %arena.cur1082 = call ptr @dva_arena_current()
  %a.buf1083 = call ptr @dva_arena_alloc(ptr %arena.cur1082, i64 128)
  %a.len.gep1084 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1081, i32 0, i32 0
  store i64 0, ptr %a.len.gep1084, align 8
  %a.data.gep1085 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1081, i32 0, i32 1
  store ptr %a.buf1083, ptr %a.data.gep1085, align 8
  %a.cap.gep1086 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1081, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1086, align 8
  store ptr %a.create1081, ptr %var.filtered_deps, align 8
  br label %a.after1079

a.after1079:                                      ; preds = %a.create1078, %choice.then1073
  %a.load21087 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1079
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21087, i32 0, i32 0
  %a.len1088 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21087, i32 0, i32 2
  %a.cap1089 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1088, %a.cap1089
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21087)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21087, i32 0, i32 1
  %a.cur.data1090 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21087, i32 0, i32 0
  %a.cur.len1091 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1090, i64 %a.cur.len1091
  %a.elem.p2i = ptrtoint ptr %var.load1075 to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1091, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21087, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1074

str_gen_check1112:                                ; preds = %loop.exit.31
  %arena.cur1115 = call ptr @dva_arena_current()
  %tag.valid1116 = call i1 @dva_arena_validate_tag(ptr %arena.cur1115, i64 %str.tag1110)
  br i1 %tag.valid1116, label %str_ok1113, label %str_stale1114

str_ok1113:                                       ; preds = %str_stale1114, %str_gen_check1112, %loop.exit.31
  %hash.str1117 = call i64 @dva_hash_string(ptr %mk.data1106, i64 %mk.len1109)
  %m.capm11118 = sub i64 %m.cap1100, 1
  %m.idx01119 = and i64 %hash.str1117, %m.capm11118
  br label %m.mem.loop1120

str_stale1114:                                    ; preds = %str_gen_check1112
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1113

m.mem.loop1120:                                   ; preds = %m.mem.next1123, %str_ok1113
  %m.mem.idx1126 = phi i64 [ %m.idx01119, %str_ok1113 ], [ %m.mem.idx.next1169, %m.mem.next1123 ]
  %m.mem.probe1127 = phi i64 [ 0, %str_ok1113 ], [ %m.mem.probe.next1170, %m.mem.next1123 ]
  %m.mem.reached1128 = icmp eq i64 %m.mem.probe1127, %m.cap1100
  %m.mem.state.gep1129 = getelementptr i8, ptr %m.states1104, i64 %m.mem.idx1126
  %m.mem.state1130 = load i8, ptr %m.mem.state.gep1129, align 1
  %m.mem.is.empty1131 = icmp eq i8 %m.mem.state1130, 0
  %m.mem.stop1132 = or i1 %m.mem.is.empty1131, %m.mem.reached1128
  br i1 %m.mem.stop1132, label %m.mem.miss1124, label %m.mem.probe1121

m.mem.probe1121:                                  ; preds = %m.mem.loop1120
  %m.mem.is.tomb1133 = icmp eq i8 %m.mem.state1130, 2
  br i1 %m.mem.is.tomb1133, label %m.mem.next1123, label %m.mem.found1122

m.mem.found1122:                                  ; preds = %m.mem.probe1121
  %m.mem.key.slot1134 = getelementptr ptr, ptr %m.keys1102, i64 %m.mem.idx1126
  %mk.stored1135 = load ptr, ptr %m.mem.key.slot1134, align 8
  %mk.slen1136 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1135, i32 0, i32 0
  %mk.slen1137 = load i64, ptr %mk.slen1136, align 8
  %mk.slen1138 = and i64 %mk.slen1137, 281474976710655
  %str.tag1139 = lshr i64 %mk.slen1137, 48
  %str.immortal1140 = icmp eq i64 %str.tag1139, 0
  br i1 %str.immortal1140, label %str_ok1142, label %str_gen_check1141

m.mem.next1123:                                   ; preds = %mk.eq.merge1159, %m.mem.probe1121
  %m.mem.idx.add1168 = add i64 %m.mem.idx1126, 1
  %m.mem.idx.next1169 = and i64 %m.mem.idx.add1168, %m.capm11118
  %m.mem.probe.next1170 = add i64 %m.mem.probe1127, 1
  br label %m.mem.loop1120

m.mem.miss1124:                                   ; preds = %m.mem.loop1120
  br label %m.mem.done1125

m.mem.done1125:                                   ; preds = %m.mem.miss1124, %m.mem.hit1167
  %m.mem.res1171 = phi i1 [ true, %m.mem.hit1167 ], [ false, %m.mem.miss1124 ]
  store i1 %m.mem.res1171, ptr %var.known, align 1
  %var.load1172 = load i1, ptr %var.known, align 1
  %nottmp1173 = xor i1 %var.load1172, true
  br i1 %nottmp1173, label %choice.then1174, label %choice.exit1175

str_gen_check1141:                                ; preds = %m.mem.found1122
  %arena.cur1144 = call ptr @dva_arena_current()
  %tag.valid1145 = call i1 @dva_arena_validate_tag(ptr %arena.cur1144, i64 %str.tag1139)
  br i1 %tag.valid1145, label %str_ok1142, label %str_stale1143

str_ok1142:                                       ; preds = %str_stale1143, %str_gen_check1141, %m.mem.found1122
  %mk.nlen1146 = getelementptr inbounds { i64, ptr }, ptr %var.load1098, i32 0, i32 0
  %mk.nlen1147 = load i64, ptr %mk.nlen1146, align 8
  %mk.nlen1148 = and i64 %mk.nlen1147, 281474976710655
  %str.tag1149 = lshr i64 %mk.nlen1147, 48
  %str.immortal1150 = icmp eq i64 %str.tag1149, 0
  br i1 %str.immortal1150, label %str_ok1152, label %str_gen_check1151

str_stale1143:                                    ; preds = %str_gen_check1141
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1142

str_gen_check1151:                                ; preds = %str_ok1142
  %arena.cur1154 = call ptr @dva_arena_current()
  %tag.valid1155 = call i1 @dva_arena_validate_tag(ptr %arena.cur1154, i64 %str.tag1149)
  br i1 %tag.valid1155, label %str_ok1152, label %str_stale1153

str_ok1152:                                       ; preds = %str_stale1153, %str_gen_check1151, %str_ok1142
  %mk.lenseq1156 = icmp eq i64 %mk.slen1138, %mk.nlen1148
  br i1 %mk.lenseq1156, label %mk.eq.then1157, label %mk.eq.else1158

str_stale1153:                                    ; preds = %str_gen_check1151
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1152

mk.eq.then1157:                                   ; preds = %str_ok1152
  %mk.sdata1160 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1135, i32 0, i32 1
  %mk.sdata1161 = load ptr, ptr %mk.sdata1160, align 8
  %mk.ndata1162 = getelementptr inbounds { i64, ptr }, ptr %var.load1098, i32 0, i32 1
  %mk.ndata1163 = load ptr, ptr %mk.ndata1162, align 8
  %mk.memcmp1164 = call i32 @memcmp(ptr %mk.sdata1161, ptr %mk.ndata1163, i64 %mk.nlen1148)
  %mk.cmpeq1165 = icmp eq i32 %mk.memcmp1164, 0
  br label %mk.eq.merge1159

mk.eq.else1158:                                   ; preds = %str_ok1152
  br label %mk.eq.merge1159

mk.eq.merge1159:                                  ; preds = %mk.eq.else1158, %mk.eq.then1157
  %mk.eq1166 = phi i1 [ %mk.cmpeq1165, %mk.eq.then1157 ], [ false, %mk.eq.else1158 ]
  br i1 %mk.eq1166, label %m.mem.hit1167, label %m.mem.next1123

m.mem.hit1167:                                    ; preds = %mk.eq.merge1159
  br label %m.mem.done1125

choice.then1174:                                  ; preds = %m.mem.done1125
  %var.load1176 = load ptr, ptr %var.node_indices, align 8
  %var.load1177 = load ptr, ptr %var.name2, align 8
  %var.load1178 = load ptr, ptr %var.graph, align 8
  %fld.gep1179 = getelementptr inbounds { ptr, ptr }, ptr %var.load1178, i32 0, i32 0
  %fld.load1180 = load ptr, ptr %fld.gep1179, align 8
  %a.len.query1181 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1180, i32 0, i32 0
  %a.len.query1182 = load i64, ptr %a.len.query1181, align 8
  %m.count1183 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  %m.count1184 = load i64, ptr %m.count1183, align 8
  %m.cap1185 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 1
  %m.cap1186 = load i64, ptr %m.cap1185, align 8
  %m.tombs1187 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 5
  %m.tombs1188 = load i64, ptr %m.tombs1187, align 8
  %m.occupied1189 = add i64 %m.count1184, %m.tombs1188
  %m.c.plus1190 = add i64 %m.occupied1189, 1
  %m.c.lhs1191 = mul i64 %m.c.plus1190, 4
  %m.c.rhs1192 = mul i64 %m.cap1186, 3
  %m.need.grow1193 = icmp sgt i64 %m.c.lhs1191, %m.c.rhs1192
  br i1 %m.need.grow1193, label %m.grow1194, label %m.ins1195

choice.exit1175:                                  ; preds = %m.done1362, %m.mem.done1125
  %var.load1425 = load ptr, ptr %var.graph, align 8
  %var.load1426 = load ptr, ptr %var.name2, align 8
  %var.load1427 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1428 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1429 = icmp eq ptr %a.load1428, null
  br i1 %a.null1429, label %a.create1430, label %a.after1431

m.grow1194:                                       ; preds = %choice.then1174
  %m.old.cap1196 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 1
  %m.old.cap1197 = load i64, ptr %m.old.cap1196, align 8
  %m.old.keys1198 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 2
  %m.old.keys1199 = load ptr, ptr %m.old.keys1198, align 8
  %m.old.vals1200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 3
  %m.old.vals1201 = load ptr, ptr %m.old.vals1200, align 8
  %m.old.states1202 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 4
  %m.old.states1203 = load ptr, ptr %m.old.states1202, align 8
  %m.double.cap1204 = mul i64 %m.old.cap1197, 2
  %m.live.cnt1205 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  %m.live.cnt1206 = load i64, ptr %m.live.cnt1205, align 8
  %m.live.x21207 = mul i64 %m.live.cnt1206, 2
  %m.should.double1208 = icmp sgt i64 %m.live.x21207, %m.old.cap1197
  %m.new.cap1209 = select i1 %m.should.double1208, i64 %m.double.cap1204, i64 %m.old.cap1197
  %m.gk.bytes1210 = mul i64 %m.new.cap1209, 8
  %arena.cur1211 = call ptr @dva_arena_current()
  %m.gk1212 = call ptr @dva_arena_alloc(ptr %arena.cur1211, i64 %m.gk.bytes1210)
  %m.gv.bytes1213 = mul i64 %m.new.cap1209, 8
  %arena.cur1214 = call ptr @dva_arena_current()
  %m.gv1215 = call ptr @dva_arena_alloc(ptr %arena.cur1214, i64 %m.gv.bytes1213)
  %arena.cur1216 = call ptr @dva_arena_current()
  %m.gs1217 = call ptr @dva_arena_alloc(ptr %arena.cur1216, i64 %m.new.cap1209)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1217, i8 0, i64 %m.new.cap1209, i1 false)
  %m.cap.gep1218 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 1
  store i64 %m.new.cap1209, ptr %m.cap.gep1218, align 8
  %m.keys.gep1219 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 2
  store ptr %m.gk1212, ptr %m.keys.gep1219, align 8
  %m.vals.gep1220 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 3
  store ptr %m.gv1215, ptr %m.vals.gep1220, align 8
  %m.states.gep1221 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 4
  store ptr %m.gs1217, ptr %m.states.gep1221, align 8
  %m.count.gep1222 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  store i64 0, ptr %m.count.gep1222, align 8
  %m.tombs.gep1223 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1223, align 8
  br label %m.re.loop1224

m.ins1195:                                        ; preds = %m.re.done1227, %choice.then1174
  %m.cap1332 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 1
  %m.cap1333 = load i64, ptr %m.cap1332, align 8
  %m.keys1334 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 2
  %m.keys1335 = load ptr, ptr %m.keys1334, align 8
  %m.vals1336 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 3
  %m.vals1337 = load ptr, ptr %m.vals1336, align 8
  %m.states1338 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 4
  %m.states1339 = load ptr, ptr %m.states1338, align 8
  %mk.data1340 = getelementptr inbounds { i64, ptr }, ptr %var.load1177, i32 0, i32 1
  %mk.data1341 = load ptr, ptr %mk.data1340, align 8
  %mk.len1342 = getelementptr inbounds { i64, ptr }, ptr %var.load1177, i32 0, i32 0
  %mk.len1343 = load i64, ptr %mk.len1342, align 8
  %mk.len1344 = and i64 %mk.len1343, 281474976710655
  %str.tag1345 = lshr i64 %mk.len1343, 48
  %str.immortal1346 = icmp eq i64 %str.tag1345, 0
  br i1 %str.immortal1346, label %str_ok1348, label %str_gen_check1347

m.re.loop1224:                                    ; preds = %m.re.cont1226, %m.grow1194
  %m.re.i1228 = phi i64 [ 0, %m.grow1194 ], [ %m.re.i.next1331, %m.re.cont1226 ]
  %m.re.lt1229 = icmp slt i64 %m.re.i1228, %m.old.cap1197
  br i1 %m.re.lt1229, label %m.re.body1225, label %m.re.done1227

m.re.body1225:                                    ; preds = %m.re.loop1224
  %m.re.state.gep1230 = getelementptr i8, ptr %m.old.states1203, i64 %m.re.i1228
  %m.re.state1231 = load i8, ptr %m.re.state.gep1230, align 1
  %m.re.occ1232 = icmp eq i8 %m.re.state1231, 1
  br i1 %m.re.occ1232, label %m.re.ins1233, label %m.re.cont1226

m.re.cont1226:                                    ; preds = %m.done1268, %m.re.body1225
  %m.re.i.next1331 = add i64 %m.re.i1228, 1
  br label %m.re.loop1224

m.re.done1227:                                    ; preds = %m.re.loop1224
  br label %m.ins1195

m.re.ins1233:                                     ; preds = %m.re.body1225
  %m.re.key.slot1234 = getelementptr ptr, ptr %m.old.keys1199, i64 %m.re.i1228
  %m.re.val.slot1235 = getelementptr i64, ptr %m.old.vals1201, i64 %m.re.i1228
  %m.re.key1236 = load ptr, ptr %m.re.key.slot1234, align 8
  %m.re.val1237 = load i64, ptr %m.re.val.slot1235, align 8
  %m.cap1238 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 1
  %m.cap1239 = load i64, ptr %m.cap1238, align 8
  %m.keys1240 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 2
  %m.keys1241 = load ptr, ptr %m.keys1240, align 8
  %m.vals1242 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 3
  %m.vals1243 = load ptr, ptr %m.vals1242, align 8
  %m.states1244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 4
  %m.states1245 = load ptr, ptr %m.states1244, align 8
  %mk.data1246 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1236, i32 0, i32 1
  %mk.data1247 = load ptr, ptr %mk.data1246, align 8
  %mk.len1248 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1236, i32 0, i32 0
  %mk.len1249 = load i64, ptr %mk.len1248, align 8
  %mk.len1250 = and i64 %mk.len1249, 281474976710655
  %str.tag1251 = lshr i64 %mk.len1249, 48
  %str.immortal1252 = icmp eq i64 %str.tag1251, 0
  br i1 %str.immortal1252, label %str_ok1254, label %str_gen_check1253

str_gen_check1253:                                ; preds = %m.re.ins1233
  %arena.cur1256 = call ptr @dva_arena_current()
  %tag.valid1257 = call i1 @dva_arena_validate_tag(ptr %arena.cur1256, i64 %str.tag1251)
  br i1 %tag.valid1257, label %str_ok1254, label %str_stale1255

str_ok1254:                                       ; preds = %str_stale1255, %str_gen_check1253, %m.re.ins1233
  %hash.str1258 = call i64 @dva_hash_string(ptr %mk.data1247, i64 %mk.len1250)
  %m.capm11259 = sub i64 %m.cap1239, 1
  %m.idx01260 = and i64 %hash.str1258, %m.capm11259
  br label %m.loop1261

str_stale1255:                                    ; preds = %str_gen_check1253
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1254

m.loop1261:                                       ; preds = %m.next1266, %str_ok1254
  %m.idx1269 = phi i64 [ %m.idx01260, %str_ok1254 ], [ %m.idx.next1316, %m.next1266 ]
  %m.tomb1270 = phi i64 [ -1, %str_ok1254 ], [ %m.next.tomb1314, %m.next1266 ]
  %m.probe1271 = phi i64 [ 0, %str_ok1254 ], [ %m.probe.next1317, %m.next1266 ]
  %m.reached.cap1272 = icmp eq i64 %m.probe1271, %m.cap1239
  %m.state.gep1273 = getelementptr i8, ptr %m.states1245, i64 %m.idx1269
  %m.state1274 = load i8, ptr %m.state.gep1273, align 1
  %m.is.empty1275 = icmp eq i8 %m.state1274, 0
  %m.stop1276 = or i1 %m.is.empty1275, %m.reached.cap1272
  br i1 %m.stop1276, label %m.empty1267, label %m.check.tomb1262

m.check.tomb1262:                                 ; preds = %m.loop1261
  %m.is.tomb1277 = icmp eq i8 %m.state1274, 2
  br i1 %m.is.tomb1277, label %m.tomb1263, label %m.found1264

m.tomb1263:                                       ; preds = %m.check.tomb1262
  %m.has.tomb1278 = icmp ne i64 %m.tomb1270, -1
  %m.tomb.sel1279 = select i1 %m.has.tomb1278, i64 %m.tomb1270, i64 %m.idx1269
  br label %m.next1266

m.found1264:                                      ; preds = %m.check.tomb1262
  %m.key.slot1280 = getelementptr ptr, ptr %m.keys1241, i64 %m.idx1269
  %mk.stored1281 = load ptr, ptr %m.key.slot1280, align 8
  %mk.slen1282 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1281, i32 0, i32 0
  %mk.slen1283 = load i64, ptr %mk.slen1282, align 8
  %mk.slen1284 = and i64 %mk.slen1283, 281474976710655
  %str.tag1285 = lshr i64 %mk.slen1283, 48
  %str.immortal1286 = icmp eq i64 %str.tag1285, 0
  br i1 %str.immortal1286, label %str_ok1288, label %str_gen_check1287

m.overwrite1265:                                  ; preds = %mk.eq.merge1305
  %m.val.slot1313 = getelementptr i64, ptr %m.vals1243, i64 %m.idx1269
  store i64 %m.re.val1237, ptr %m.val.slot1313, align 8
  br label %m.done1268

m.next1266:                                       ; preds = %mk.eq.merge1305, %m.tomb1263
  %m.next.tomb1314 = phi i64 [ %m.tomb.sel1279, %m.tomb1263 ], [ %m.tomb1270, %mk.eq.merge1305 ]
  %m.idx.add1315 = add i64 %m.idx1269, 1
  %m.idx.next1316 = and i64 %m.idx.add1315, %m.capm11259
  %m.probe.next1317 = add i64 %m.probe1271, 1
  br label %m.loop1261

m.empty1267:                                      ; preds = %m.loop1261
  %m.use.tomb1318 = icmp ne i64 %m.tomb1270, -1
  %m.ins.idx1319 = select i1 %m.use.tomb1318, i64 %m.tomb1270, i64 %m.idx1269
  %m.key.slot1320 = getelementptr ptr, ptr %m.keys1241, i64 %m.ins.idx1319
  store ptr %m.re.key1236, ptr %m.key.slot1320, align 8
  %m.val.slot1321 = getelementptr i64, ptr %m.vals1243, i64 %m.ins.idx1319
  store i64 %m.re.val1237, ptr %m.val.slot1321, align 8
  %m.ins.state.slot1322 = getelementptr i8, ptr %m.states1245, i64 %m.ins.idx1319
  store i8 1, ptr %m.ins.state.slot1322, align 1
  %m.count1323 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  %m.count1324 = load i64, ptr %m.count1323, align 8
  %m.count.next1325 = add i64 %m.count1324, 1
  %m.count.gep1326 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  store i64 %m.count.next1325, ptr %m.count.gep1326, align 8
  %m.ins.tombs.p1327 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 5
  %m.ins.tombs1328 = load i64, ptr %m.ins.tombs.p1327, align 8
  %m.tomb.dec1329 = select i1 %m.use.tomb1318, i64 1, i64 0
  %m.ins.tombs.next1330 = sub i64 %m.ins.tombs1328, %m.tomb.dec1329
  store i64 %m.ins.tombs.next1330, ptr %m.ins.tombs.p1327, align 8
  br label %m.done1268

m.done1268:                                       ; preds = %m.empty1267, %m.overwrite1265
  br label %m.re.cont1226

str_gen_check1287:                                ; preds = %m.found1264
  %arena.cur1290 = call ptr @dva_arena_current()
  %tag.valid1291 = call i1 @dva_arena_validate_tag(ptr %arena.cur1290, i64 %str.tag1285)
  br i1 %tag.valid1291, label %str_ok1288, label %str_stale1289

str_ok1288:                                       ; preds = %str_stale1289, %str_gen_check1287, %m.found1264
  %mk.nlen1292 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1236, i32 0, i32 0
  %mk.nlen1293 = load i64, ptr %mk.nlen1292, align 8
  %mk.nlen1294 = and i64 %mk.nlen1293, 281474976710655
  %str.tag1295 = lshr i64 %mk.nlen1293, 48
  %str.immortal1296 = icmp eq i64 %str.tag1295, 0
  br i1 %str.immortal1296, label %str_ok1298, label %str_gen_check1297

str_stale1289:                                    ; preds = %str_gen_check1287
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1288

str_gen_check1297:                                ; preds = %str_ok1288
  %arena.cur1300 = call ptr @dva_arena_current()
  %tag.valid1301 = call i1 @dva_arena_validate_tag(ptr %arena.cur1300, i64 %str.tag1295)
  br i1 %tag.valid1301, label %str_ok1298, label %str_stale1299

str_ok1298:                                       ; preds = %str_stale1299, %str_gen_check1297, %str_ok1288
  %mk.lenseq1302 = icmp eq i64 %mk.slen1284, %mk.nlen1294
  br i1 %mk.lenseq1302, label %mk.eq.then1303, label %mk.eq.else1304

str_stale1299:                                    ; preds = %str_gen_check1297
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1298

mk.eq.then1303:                                   ; preds = %str_ok1298
  %mk.sdata1306 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1281, i32 0, i32 1
  %mk.sdata1307 = load ptr, ptr %mk.sdata1306, align 8
  %mk.ndata1308 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1236, i32 0, i32 1
  %mk.ndata1309 = load ptr, ptr %mk.ndata1308, align 8
  %mk.memcmp1310 = call i32 @memcmp(ptr %mk.sdata1307, ptr %mk.ndata1309, i64 %mk.nlen1294)
  %mk.cmpeq1311 = icmp eq i32 %mk.memcmp1310, 0
  br label %mk.eq.merge1305

mk.eq.else1304:                                   ; preds = %str_ok1298
  br label %mk.eq.merge1305

mk.eq.merge1305:                                  ; preds = %mk.eq.else1304, %mk.eq.then1303
  %mk.eq1312 = phi i1 [ %mk.cmpeq1311, %mk.eq.then1303 ], [ false, %mk.eq.else1304 ]
  br i1 %mk.eq1312, label %m.overwrite1265, label %m.next1266

str_gen_check1347:                                ; preds = %m.ins1195
  %arena.cur1350 = call ptr @dva_arena_current()
  %tag.valid1351 = call i1 @dva_arena_validate_tag(ptr %arena.cur1350, i64 %str.tag1345)
  br i1 %tag.valid1351, label %str_ok1348, label %str_stale1349

str_ok1348:                                       ; preds = %str_stale1349, %str_gen_check1347, %m.ins1195
  %hash.str1352 = call i64 @dva_hash_string(ptr %mk.data1341, i64 %mk.len1344)
  %m.capm11353 = sub i64 %m.cap1333, 1
  %m.idx01354 = and i64 %hash.str1352, %m.capm11353
  br label %m.loop1355

str_stale1349:                                    ; preds = %str_gen_check1347
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1348

m.loop1355:                                       ; preds = %m.next1360, %str_ok1348
  %m.idx1363 = phi i64 [ %m.idx01354, %str_ok1348 ], [ %m.idx.next1410, %m.next1360 ]
  %m.tomb1364 = phi i64 [ -1, %str_ok1348 ], [ %m.next.tomb1408, %m.next1360 ]
  %m.probe1365 = phi i64 [ 0, %str_ok1348 ], [ %m.probe.next1411, %m.next1360 ]
  %m.reached.cap1366 = icmp eq i64 %m.probe1365, %m.cap1333
  %m.state.gep1367 = getelementptr i8, ptr %m.states1339, i64 %m.idx1363
  %m.state1368 = load i8, ptr %m.state.gep1367, align 1
  %m.is.empty1369 = icmp eq i8 %m.state1368, 0
  %m.stop1370 = or i1 %m.is.empty1369, %m.reached.cap1366
  br i1 %m.stop1370, label %m.empty1361, label %m.check.tomb1356

m.check.tomb1356:                                 ; preds = %m.loop1355
  %m.is.tomb1371 = icmp eq i8 %m.state1368, 2
  br i1 %m.is.tomb1371, label %m.tomb1357, label %m.found1358

m.tomb1357:                                       ; preds = %m.check.tomb1356
  %m.has.tomb1372 = icmp ne i64 %m.tomb1364, -1
  %m.tomb.sel1373 = select i1 %m.has.tomb1372, i64 %m.tomb1364, i64 %m.idx1363
  br label %m.next1360

m.found1358:                                      ; preds = %m.check.tomb1356
  %m.key.slot1374 = getelementptr ptr, ptr %m.keys1335, i64 %m.idx1363
  %mk.stored1375 = load ptr, ptr %m.key.slot1374, align 8
  %mk.slen1376 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1375, i32 0, i32 0
  %mk.slen1377 = load i64, ptr %mk.slen1376, align 8
  %mk.slen1378 = and i64 %mk.slen1377, 281474976710655
  %str.tag1379 = lshr i64 %mk.slen1377, 48
  %str.immortal1380 = icmp eq i64 %str.tag1379, 0
  br i1 %str.immortal1380, label %str_ok1382, label %str_gen_check1381

m.overwrite1359:                                  ; preds = %mk.eq.merge1399
  %m.val.slot1407 = getelementptr i64, ptr %m.vals1337, i64 %m.idx1363
  store i64 %a.len.query1182, ptr %m.val.slot1407, align 8
  br label %m.done1362

m.next1360:                                       ; preds = %mk.eq.merge1399, %m.tomb1357
  %m.next.tomb1408 = phi i64 [ %m.tomb.sel1373, %m.tomb1357 ], [ %m.tomb1364, %mk.eq.merge1399 ]
  %m.idx.add1409 = add i64 %m.idx1363, 1
  %m.idx.next1410 = and i64 %m.idx.add1409, %m.capm11353
  %m.probe.next1411 = add i64 %m.probe1365, 1
  br label %m.loop1355

m.empty1361:                                      ; preds = %m.loop1355
  %m.use.tomb1412 = icmp ne i64 %m.tomb1364, -1
  %m.ins.idx1413 = select i1 %m.use.tomb1412, i64 %m.tomb1364, i64 %m.idx1363
  %m.key.slot1414 = getelementptr ptr, ptr %m.keys1335, i64 %m.ins.idx1413
  store ptr %var.load1177, ptr %m.key.slot1414, align 8
  %m.val.slot1415 = getelementptr i64, ptr %m.vals1337, i64 %m.ins.idx1413
  store i64 %a.len.query1182, ptr %m.val.slot1415, align 8
  %m.ins.state.slot1416 = getelementptr i8, ptr %m.states1339, i64 %m.ins.idx1413
  store i8 1, ptr %m.ins.state.slot1416, align 1
  %m.count1417 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  %m.count1418 = load i64, ptr %m.count1417, align 8
  %m.count.next1419 = add i64 %m.count1418, 1
  %m.count.gep1420 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 0
  store i64 %m.count.next1419, ptr %m.count.gep1420, align 8
  %m.ins.tombs.p1421 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1176, i32 0, i32 5
  %m.ins.tombs1422 = load i64, ptr %m.ins.tombs.p1421, align 8
  %m.tomb.dec1423 = select i1 %m.use.tomb1412, i64 1, i64 0
  %m.ins.tombs.next1424 = sub i64 %m.ins.tombs1422, %m.tomb.dec1423
  store i64 %m.ins.tombs.next1424, ptr %m.ins.tombs.p1421, align 8
  br label %m.done1362

m.done1362:                                       ; preds = %m.empty1361, %m.overwrite1359
  br label %choice.exit1175

str_gen_check1381:                                ; preds = %m.found1358
  %arena.cur1384 = call ptr @dva_arena_current()
  %tag.valid1385 = call i1 @dva_arena_validate_tag(ptr %arena.cur1384, i64 %str.tag1379)
  br i1 %tag.valid1385, label %str_ok1382, label %str_stale1383

str_ok1382:                                       ; preds = %str_stale1383, %str_gen_check1381, %m.found1358
  %mk.nlen1386 = getelementptr inbounds { i64, ptr }, ptr %var.load1177, i32 0, i32 0
  %mk.nlen1387 = load i64, ptr %mk.nlen1386, align 8
  %mk.nlen1388 = and i64 %mk.nlen1387, 281474976710655
  %str.tag1389 = lshr i64 %mk.nlen1387, 48
  %str.immortal1390 = icmp eq i64 %str.tag1389, 0
  br i1 %str.immortal1390, label %str_ok1392, label %str_gen_check1391

str_stale1383:                                    ; preds = %str_gen_check1381
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1382

str_gen_check1391:                                ; preds = %str_ok1382
  %arena.cur1394 = call ptr @dva_arena_current()
  %tag.valid1395 = call i1 @dva_arena_validate_tag(ptr %arena.cur1394, i64 %str.tag1389)
  br i1 %tag.valid1395, label %str_ok1392, label %str_stale1393

str_ok1392:                                       ; preds = %str_stale1393, %str_gen_check1391, %str_ok1382
  %mk.lenseq1396 = icmp eq i64 %mk.slen1378, %mk.nlen1388
  br i1 %mk.lenseq1396, label %mk.eq.then1397, label %mk.eq.else1398

str_stale1393:                                    ; preds = %str_gen_check1391
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1392

mk.eq.then1397:                                   ; preds = %str_ok1392
  %mk.sdata1400 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1375, i32 0, i32 1
  %mk.sdata1401 = load ptr, ptr %mk.sdata1400, align 8
  %mk.ndata1402 = getelementptr inbounds { i64, ptr }, ptr %var.load1177, i32 0, i32 1
  %mk.ndata1403 = load ptr, ptr %mk.ndata1402, align 8
  %mk.memcmp1404 = call i32 @memcmp(ptr %mk.sdata1401, ptr %mk.ndata1403, i64 %mk.nlen1388)
  %mk.cmpeq1405 = icmp eq i32 %mk.memcmp1404, 0
  br label %mk.eq.merge1399

mk.eq.else1398:                                   ; preds = %str_ok1392
  br label %mk.eq.merge1399

mk.eq.merge1399:                                  ; preds = %mk.eq.else1398, %mk.eq.then1397
  %mk.eq1406 = phi i1 [ %mk.cmpeq1405, %mk.eq.then1397 ], [ false, %mk.eq.else1398 ]
  br i1 %mk.eq1406, label %m.overwrite1359, label %m.next1360

a.create1430:                                     ; preds = %choice.exit1175
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
  store ptr %a.create1433, ptr %var.filtered_deps, align 8
  br label %a.after1431

a.after1431:                                      ; preds = %a.create1430, %choice.exit1175
  %a.load21439 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1440 = load i64, ptr %var.j, align 8
  %arena.cur1441 = call ptr @dva_arena_current()
  %rec.alloc1442 = call ptr @dva_arena_alloc(ptr %arena.cur1441, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1443 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1442, i32 0, i32 0
  store ptr %var.load1426, ptr %rec.fld1443, align 8
  %rec.fld1444 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1442, i32 0, i32 1
  store ptr %a.load21439, ptr %rec.fld1444, align 8
  %rec.fld1445 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1442, i32 0, i32 2
  store i64 %var.load1440, ptr %rec.fld1445, align 8
  %fld.gep1446 = getelementptr inbounds { ptr, ptr }, ptr %var.load1425, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1446, align 8
  br label %a.check1447

a.check1447:                                      ; preds = %a.after1431
  %a.len1450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1451 = load i64, ptr %a.len1450, align 8
  %a.cap1452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1453 = load i64, ptr %a.cap1452, align 8
  %a.needs.grow1454 = icmp eq i64 %a.len1451, %a.cap1453
  br i1 %a.needs.grow1454, label %a.grow1448, label %a.store1449

a.grow1448:                                       ; preds = %a.check1447
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1449

a.store1449:                                      ; preds = %a.grow1448, %a.check1447
  %a.cur.data1455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1456 = load ptr, ptr %a.cur.data1455, align 8
  %a.cur.len1457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1458 = load i64, ptr %a.cur.len1457, align 8
  %a.elem.gep1459 = getelementptr i64, ptr %a.cur.data1456, i64 %a.cur.len1458
  %a.elem.p2i1460 = ptrtoint ptr %rec.alloc1442 to i64
  store i64 %a.elem.p2i1460, ptr %a.elem.gep1459, align 8
  %a.next.len1461 = add i64 %a.cur.len1458, 1
  %b.len.gep1462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1461, ptr %b.len.gep1462, align 8
  br label %choice.exit965
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
