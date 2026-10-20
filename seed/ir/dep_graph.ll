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
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
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
  %var._1778 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1741 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1704 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1665 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1628 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1591 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1556 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1521 = alloca ptr, align 8
  %var._1484 = alloca ptr, align 8
  %var._i1483 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.v1468 = alloca ptr, align 8
  %var._1467 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1430 = alloca ptr, align 8
  %var.v1327 = alloca ptr, align 8
  %var._1326 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1275 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1209 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1143 = alloca ptr, align 8
  %var.a1077 = alloca ptr, align 8
  %var._1076 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1010 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._944 = alloca ptr, align 8
  %var._905 = alloca ptr, align 8
  %var._i904 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._889 = alloca ptr, align 8
  %var._850 = alloca ptr, align 8
  %var._i849 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var._711 = alloca ptr, align 8
  %var._i710 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._681 = alloca ptr, align 8
  %var._i680 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._636 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._504 = alloca ptr, align 8
  %var._494 = alloca ptr, align 8
  %var._i493 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._464 = alloca ptr, align 8
  %var._363 = alloca ptr, align 8
  %var._i362 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._333 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._296 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._194 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next1772, %a.after1799, %a.after1762, %a.after1725, %a.after1688, %a.after1649, %a.after1612, %a.after1575, %a.after1540, %loop.exit.15, %a.after1451, %choice.exit1314, %a.after1259, %a.after1193, %a.after1127, %a.after1060, %a.after994, %loop.exit.13, %loop.exit.10, %loop.exit.9, %a.after448, %a.after317, %a.after280, %loop.exit.7, %choice.exit34
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
  %slot.p2i = ptrtoint ptr %var.load35 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
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
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id225 = load i64, ptr %tag.gep224, align 8
  %tag.match226 = icmp eq i64 %tag.id225, 5
  br i1 %tag.match226, label %choice.case222, label %choice.next223

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
  %slot.p2i157 = ptrtoint ptr %fld.load131 to i64
  store i64 %slot.p2i157, ptr %a.elem.gep156, align 8
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
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %arr.cycle.len192 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 1
  %arr.cycle.data193 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.7, align 8
  %cycle.prev.u = load ptr, ptr %var._59, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %a.after180
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len192
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data193, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._194, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load195 = load ptr, ptr %var.arg, align 8
  %var.load196 = load ptr, ptr %var.locals, align 8
  %a.load197 = load ptr, ptr %var.locals, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %a.after213
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  store ptr %cycle.prev.u, ptr %var._59, align 8
  br label %choice.exit

a.create199:                                      ; preds = %loop.body.7
  %arena.cur201 = call ptr @dva_arena_current()
  %a.create202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 24)
  %arena.cur203 = call ptr @dva_arena_current()
  %a.buf204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 128)
  %a.len.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 0
  store i64 0, ptr %a.len.gep205, align 8
  %a.data.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 1
  store ptr %a.buf204, ptr %a.data.gep206, align 8
  %a.cap.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep207, align 8
  store ptr %a.create202, ptr %var.locals, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %loop.body.7
  %a.load2208 = load ptr, ptr %var.locals, align 8
  %var.load209 = load ptr, ptr %var.refs, align 8
  %a.load210 = load ptr, ptr %var.refs, align 8
  %a.null211 = icmp eq ptr %a.load210, null
  br i1 %a.null211, label %a.create212, label %a.after213

a.create212:                                      ; preds = %a.after200
  %arena.cur214 = call ptr @dva_arena_current()
  %a.create215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 24)
  %arena.cur216 = call ptr @dva_arena_current()
  %a.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 128)
  %a.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 0
  store i64 0, ptr %a.len.gep218, align 8
  %a.data.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 1
  store ptr %a.buf217, ptr %a.data.gep219, align 8
  %a.cap.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 2
  store i64 16, ptr %a.cap.gep220, align 8
  store ptr %a.create215, ptr %var.refs, align 8
  br label %a.after213

a.after213:                                       ; preds = %a.create212, %a.after200
  %a.load2221 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load195, ptr %a.load2208, ptr %a.load2221)
  br label %loop.latch.7

choice.case222:                                   ; preds = %choice.next53
  %pay.gep227 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr228 = load ptr, ptr %pay.gep227, align 8
  store ptr %payload.ptr228, ptr %var._229, align 8
  store ptr %payload.ptr228, ptr %var.b, align 8
  %var.load230 = load ptr, ptr %var.b, align 8
  %fld.gep231 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load230, i32 0, i32 1
  %fld.load232 = load ptr, ptr %fld.gep231, align 8
  %var.load233 = load ptr, ptr %var.locals, align 8
  %a.load234 = load ptr, ptr %var.locals, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

choice.next223:                                   ; preds = %choice.next53
  %tag.gep291 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id292 = load i64, ptr %tag.gep291, align 8
  %tag.match293 = icmp eq i64 %tag.id292, 24
  br i1 %tag.match293, label %choice.case289, label %choice.next290

a.create236:                                      ; preds = %choice.case222
  %arena.cur238 = call ptr @dva_arena_current()
  %a.create239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 24)
  %arena.cur240 = call ptr @dva_arena_current()
  %a.buf241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 128)
  %a.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 0
  store i64 0, ptr %a.len.gep242, align 8
  %a.data.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 1
  store ptr %a.buf241, ptr %a.data.gep243, align 8
  %a.cap.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep244, align 8
  store ptr %a.create239, ptr %var.locals, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %choice.case222
  %a.load2245 = load ptr, ptr %var.locals, align 8
  %var.load246 = load ptr, ptr %var.refs, align 8
  %a.load248 = load ptr, ptr %var.refs, align 8
  %a.null249 = icmp eq ptr %a.load248, null
  br i1 %a.null249, label %a.create250, label %a.after251

a.create250:                                      ; preds = %a.after237
  %arena.cur252 = call ptr @dva_arena_current()
  %a.create253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 24)
  %arena.cur254 = call ptr @dva_arena_current()
  %a.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 128)
  %a.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 0
  store i64 0, ptr %a.len.gep256, align 8
  %a.data.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 1
  store ptr %a.buf255, ptr %a.data.gep257, align 8
  %a.cap.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 2
  store i64 16, ptr %a.cap.gep258, align 8
  store ptr %a.create253, ptr %var.refs, align 8
  br label %a.after251

a.after251:                                       ; preds = %a.create250, %a.after237
  %a.load2259 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load232, ptr %a.load2245, ptr %a.load2259)
  %var.load260 = load ptr, ptr %var.b, align 8
  %fld.gep261 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load260, i32 0, i32 2
  %fld.load262 = load ptr, ptr %fld.gep261, align 8
  %var.load263 = load ptr, ptr %var.locals, align 8
  %a.load264 = load ptr, ptr %var.locals, align 8
  %a.null265 = icmp eq ptr %a.load264, null
  br i1 %a.null265, label %a.create266, label %a.after267

a.create266:                                      ; preds = %a.after251
  %arena.cur268 = call ptr @dva_arena_current()
  %a.create269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 24)
  %arena.cur270 = call ptr @dva_arena_current()
  %a.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 128)
  %a.len.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 0
  store i64 0, ptr %a.len.gep272, align 8
  %a.data.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 1
  store ptr %a.buf271, ptr %a.data.gep273, align 8
  %a.cap.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 2
  store i64 16, ptr %a.cap.gep274, align 8
  store ptr %a.create269, ptr %var.locals, align 8
  br label %a.after267

a.after267:                                       ; preds = %a.create266, %a.after251
  %a.load2275 = load ptr, ptr %var.locals, align 8
  %var.load276 = load ptr, ptr %var.refs, align 8
  %a.load277 = load ptr, ptr %var.refs, align 8
  %a.null278 = icmp eq ptr %a.load277, null
  br i1 %a.null278, label %a.create279, label %a.after280

a.create279:                                      ; preds = %a.after267
  %arena.cur281 = call ptr @dva_arena_current()
  %a.create282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 24)
  %arena.cur283 = call ptr @dva_arena_current()
  %a.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 128)
  %a.len.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 0
  store i64 0, ptr %a.len.gep285, align 8
  %a.data.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 1
  store ptr %a.buf284, ptr %a.data.gep286, align 8
  %a.cap.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 2
  store i64 16, ptr %a.cap.gep287, align 8
  store ptr %a.create282, ptr %var.refs, align 8
  br label %a.after280

a.after280:                                       ; preds = %a.create279, %a.after267
  %a.load2288 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load262, ptr %a.load2275, ptr %a.load2288)
  br label %choice.exit

choice.case289:                                   ; preds = %choice.next223
  %pay.gep294 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr295 = load ptr, ptr %pay.gep294, align 8
  store ptr %payload.ptr295, ptr %var._296, align 8
  store ptr %payload.ptr295, ptr %var.u, align 8
  %var.load297 = load ptr, ptr %var.u, align 8
  %fld.gep298 = getelementptr inbounds { ptr, ptr }, ptr %var.load297, i32 0, i32 1
  %fld.load299 = load ptr, ptr %fld.gep298, align 8
  %var.load300 = load ptr, ptr %var.locals, align 8
  %a.load301 = load ptr, ptr %var.locals, align 8
  %a.null302 = icmp eq ptr %a.load301, null
  br i1 %a.null302, label %a.create303, label %a.after304

choice.next290:                                   ; preds = %choice.next223
  %tag.gep328 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id329 = load i64, ptr %tag.gep328, align 8
  %tag.match330 = icmp eq i64 %tag.id329, 14
  br i1 %tag.match330, label %choice.case326, label %choice.next327

a.create303:                                      ; preds = %choice.case289
  %arena.cur305 = call ptr @dva_arena_current()
  %a.create306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 24)
  %arena.cur307 = call ptr @dva_arena_current()
  %a.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 128)
  %a.len.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 0
  store i64 0, ptr %a.len.gep309, align 8
  %a.data.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 1
  store ptr %a.buf308, ptr %a.data.gep310, align 8
  %a.cap.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep311, align 8
  store ptr %a.create306, ptr %var.locals, align 8
  br label %a.after304

a.after304:                                       ; preds = %a.create303, %choice.case289
  %a.load2312 = load ptr, ptr %var.locals, align 8
  %var.load313 = load ptr, ptr %var.refs, align 8
  %a.load314 = load ptr, ptr %var.refs, align 8
  %a.null315 = icmp eq ptr %a.load314, null
  br i1 %a.null315, label %a.create316, label %a.after317

a.create316:                                      ; preds = %a.after304
  %arena.cur318 = call ptr @dva_arena_current()
  %a.create319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 24)
  %arena.cur320 = call ptr @dva_arena_current()
  %a.buf321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 128)
  %a.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 0
  store i64 0, ptr %a.len.gep322, align 8
  %a.data.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 1
  store ptr %a.buf321, ptr %a.data.gep323, align 8
  %a.cap.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 2
  store i64 16, ptr %a.cap.gep324, align 8
  store ptr %a.create319, ptr %var.refs, align 8
  br label %a.after317

a.after317:                                       ; preds = %a.create316, %a.after304
  %a.load2325 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load299, ptr %a.load2312, ptr %a.load2325)
  br label %choice.exit

choice.case326:                                   ; preds = %choice.next290
  %pay.gep331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr332 = load ptr, ptr %pay.gep331, align 8
  store ptr %payload.ptr332, ptr %var._333, align 8
  store ptr %payload.ptr332, ptr %var.fe, align 8
  %var.load334 = load ptr, ptr %var.locals, align 8
  %a.load335 = load ptr, ptr %var.locals, align 8
  %a.null336 = icmp eq ptr %a.load335, null
  br i1 %a.null336, label %a.create337, label %a.after338

choice.next327:                                   ; preds = %choice.next290
  %tag.gep459 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id460 = load i64, ptr %tag.gep459, align 8
  %tag.match461 = icmp eq i64 %tag.id460, 8
  br i1 %tag.match461, label %choice.case457, label %choice.next458

a.create337:                                      ; preds = %choice.case326
  %arena.cur339 = call ptr @dva_arena_current()
  %a.create340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 24)
  %arena.cur341 = call ptr @dva_arena_current()
  %a.buf342 = call ptr @dva_arena_alloc(ptr %arena.cur341, i64 128)
  %a.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 0
  store i64 0, ptr %a.len.gep343, align 8
  %a.data.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 1
  store ptr %a.buf342, ptr %a.data.gep344, align 8
  %a.cap.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 2
  store i64 16, ptr %a.cap.gep345, align 8
  store ptr %a.create340, ptr %var.locals, align 8
  br label %a.after338

a.after338:                                       ; preds = %a.create337, %choice.case326
  %a.load2346 = load ptr, ptr %var.locals, align 8
  %call.res347 = call ptr @"dep_graph::copy_names"(ptr %a.load2346)
  store ptr %call.res347, ptr %var.fn_locals, align 8
  %var.load348 = load ptr, ptr %var.fe, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load348, i32 0, i32 0
  %fld.load350 = load ptr, ptr %fld.gep349, align 8
  %arr.cycle.len351 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 0
  %arr.cycle.len352 = load i64, ptr %arr.cycle.len351, align 8
  %arr.cycle.data353 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 1
  %arr.cycle.data354 = load ptr, ptr %arr.cycle.data353, align 8
  store i64 0, ptr %loop.idx.8, align 8
  %cycle.prev.u355 = load ptr, ptr %var._333, align 8
  br label %loop.header.8

loop.header.8:                                    ; preds = %loop.latch.8, %a.after338
  %counter.load356 = load i64, ptr %loop.idx.8, align 8
  %loop.cond357 = icmp slt i64 %counter.load356, %arr.cycle.len352
  br i1 %loop.cond357, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i358 = sub i64 %counter.load356, 0
  store i64 1, ptr %loop.step.8, align 8
  %arr.elem.gep359 = getelementptr i64, ptr %arr.cycle.data354, i64 %counter.load356
  %arr.elem.raw360 = load i64, ptr %arr.elem.gep359, align 8
  %slot.i2p361 = inttoptr i64 %arr.elem.raw360 to ptr
  store i64 %loop.rel.i358, ptr %var._i362, align 8
  store ptr %slot.i2p361, ptr %var._363, align 8
  store ptr %slot.i2p361, ptr %var.p, align 8
  %var.load364 = load ptr, ptr %var.p, align 8
  %eq.lhs.len365 = getelementptr inbounds { i64, ptr }, ptr %var.load364, i32 0, i32 0
  %eq.lhs.len366 = load i64, ptr %eq.lhs.len365, align 8
  %eq.lhs.len367 = and i64 %eq.lhs.len366, 281474976710655
  %str.tag368 = lshr i64 %eq.lhs.len366, 48
  %str.immortal369 = icmp eq i64 %str.tag368, 0
  br i1 %str.immortal369, label %str_ok371, label %str_gen_check370

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit396
  %step.val426 = load i64, ptr %loop.step.8, align 8
  %loop.next427 = add i64 %counter.load356, %step.val426
  store i64 %loop.next427, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  store ptr %cycle.prev.u355, ptr %var._333, align 8
  %var.load428 = load ptr, ptr %var.fe, align 8
  %fld.gep429 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load428, i32 0, i32 2
  %fld.load430 = load ptr, ptr %fld.gep429, align 8
  %var.load431 = load ptr, ptr %var.fn_locals, align 8
  %a.load432 = load ptr, ptr %var.fn_locals, align 8
  %a.null433 = icmp eq ptr %a.load432, null
  br i1 %a.null433, label %a.create434, label %a.after435

str_gen_check370:                                 ; preds = %loop.body.8
  %arena.cur373 = call ptr @dva_arena_current()
  %tag.valid374 = call i1 @dva_arena_validate_tag(ptr %arena.cur373, i64 %str.tag368)
  br i1 %tag.valid374, label %str_ok371, label %str_stale372

str_ok371:                                        ; preds = %str_stale372, %str_gen_check370, %loop.body.8
  %eq.rhs.len375 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len376 = and i64 %eq.rhs.len375, 281474976710655
  %str.tag377 = lshr i64 %eq.rhs.len375, 48
  %str.immortal378 = icmp eq i64 %str.tag377, 0
  br i1 %str.immortal378, label %str_ok380, label %str_gen_check379

str_stale372:                                     ; preds = %str_gen_check370
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok371

str_gen_check379:                                 ; preds = %str_ok371
  %arena.cur382 = call ptr @dva_arena_current()
  %tag.valid383 = call i1 @dva_arena_validate_tag(ptr %arena.cur382, i64 %str.tag377)
  br i1 %tag.valid383, label %str_ok380, label %str_stale381

str_ok380:                                        ; preds = %str_stale381, %str_gen_check379, %str_ok371
  %eq.len384 = icmp eq i64 %eq.lhs.len367, %eq.rhs.len376
  br i1 %eq.len384, label %str.eq.then385, label %str.eq.else386

str_stale381:                                     ; preds = %str_gen_check379
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok380

str.eq.then385:                                   ; preds = %str_ok380
  %eq.lhs.data388 = getelementptr inbounds { i64, ptr }, ptr %var.load364, i32 0, i32 1
  %eq.lhs.data389 = load ptr, ptr %eq.lhs.data388, align 8
  %eq.rhs.data390 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp391 = call i32 @memcmp(ptr %eq.lhs.data389, ptr %eq.rhs.data390, i64 %eq.lhs.len367)
  %eq.cmp.zero392 = icmp eq i32 %eq.memcmp391, 0
  br label %str.eq.merge387

str.eq.else386:                                   ; preds = %str_ok380
  br label %str.eq.merge387

str.eq.merge387:                                  ; preds = %str.eq.else386, %str.eq.then385
  %str.eq.result393 = phi i1 [ %eq.cmp.zero392, %str.eq.then385 ], [ false, %str.eq.else386 ]
  %str.neq394 = xor i1 %str.eq.result393, true
  br i1 %str.neq394, label %choice.then395, label %choice.exit396

choice.then395:                                   ; preds = %str.eq.merge387
  %var.load397 = load ptr, ptr %var.p, align 8
  %a.load398 = load ptr, ptr %var.fn_locals, align 8
  %a.null399 = icmp eq ptr %a.load398, null
  br i1 %a.null399, label %a.create400, label %a.after401

choice.exit396:                                   ; preds = %a.store412, %str.eq.merge387
  br label %loop.latch.8

a.create400:                                      ; preds = %choice.then395
  %arena.cur402 = call ptr @dva_arena_current()
  %a.create403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 24)
  %arena.cur404 = call ptr @dva_arena_current()
  %a.buf405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 128)
  %a.len.gep406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 0
  store i64 0, ptr %a.len.gep406, align 8
  %a.data.gep407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 1
  store ptr %a.buf405, ptr %a.data.gep407, align 8
  %a.cap.gep408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 2
  store i64 16, ptr %a.cap.gep408, align 8
  store ptr %a.create403, ptr %var.fn_locals, align 8
  br label %a.after401

a.after401:                                       ; preds = %a.create400, %choice.then395
  %a.load2409 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check410

a.check410:                                       ; preds = %a.after401
  %a.len413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  %a.len414 = load i64, ptr %a.len413, align 8
  %a.cap415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 2
  %a.cap416 = load i64, ptr %a.cap415, align 8
  %a.needs.grow417 = icmp eq i64 %a.len414, %a.cap416
  br i1 %a.needs.grow417, label %a.grow411, label %a.store412

a.grow411:                                        ; preds = %a.check410
  call void @dva_array_grow(ptr %a.load2409)
  br label %a.store412

a.store412:                                       ; preds = %a.grow411, %a.check410
  %a.cur.data418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 1
  %a.cur.data419 = load ptr, ptr %a.cur.data418, align 8
  %a.cur.len420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  %a.cur.len421 = load i64, ptr %a.cur.len420, align 8
  %a.elem.gep422 = getelementptr i64, ptr %a.cur.data419, i64 %a.cur.len421
  %slot.p2i423 = ptrtoint ptr %var.load397 to i64
  store i64 %slot.p2i423, ptr %a.elem.gep422, align 8
  %a.next.len424 = add i64 %a.cur.len421, 1
  %b.len.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  store i64 %a.next.len424, ptr %b.len.gep425, align 8
  br label %choice.exit396

a.create434:                                      ; preds = %loop.exit.8
  %arena.cur436 = call ptr @dva_arena_current()
  %a.create437 = call ptr @dva_arena_alloc(ptr %arena.cur436, i64 24)
  %arena.cur438 = call ptr @dva_arena_current()
  %a.buf439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 128)
  %a.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 0
  store i64 0, ptr %a.len.gep440, align 8
  %a.data.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 1
  store ptr %a.buf439, ptr %a.data.gep441, align 8
  %a.cap.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep442, align 8
  store ptr %a.create437, ptr %var.fn_locals, align 8
  br label %a.after435

a.after435:                                       ; preds = %a.create434, %loop.exit.8
  %a.load2443 = load ptr, ptr %var.fn_locals, align 8
  %var.load444 = load ptr, ptr %var.refs, align 8
  %a.load445 = load ptr, ptr %var.refs, align 8
  %a.null446 = icmp eq ptr %a.load445, null
  br i1 %a.null446, label %a.create447, label %a.after448

a.create447:                                      ; preds = %a.after435
  %arena.cur449 = call ptr @dva_arena_current()
  %a.create450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 24)
  %arena.cur451 = call ptr @dva_arena_current()
  %a.buf452 = call ptr @dva_arena_alloc(ptr %arena.cur451, i64 128)
  %a.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 0
  store i64 0, ptr %a.len.gep453, align 8
  %a.data.gep454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 1
  store ptr %a.buf452, ptr %a.data.gep454, align 8
  %a.cap.gep455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 2
  store i64 16, ptr %a.cap.gep455, align 8
  store ptr %a.create450, ptr %var.refs, align 8
  br label %a.after448

a.after448:                                       ; preds = %a.create447, %a.after435
  %a.load2456 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load430, ptr %a.load2443, ptr %a.load2456)
  br label %choice.exit

choice.case457:                                   ; preds = %choice.next327
  %pay.gep462 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr463 = load ptr, ptr %pay.gep462, align 8
  store ptr %payload.ptr463, ptr %var._464, align 8
  store ptr %payload.ptr463, ptr %var.be, align 8
  %var.load465 = load ptr, ptr %var.locals, align 8
  %a.load466 = load ptr, ptr %var.locals, align 8
  %a.null467 = icmp eq ptr %a.load466, null
  br i1 %a.null467, label %a.create468, label %a.after469

choice.next458:                                   ; preds = %choice.next327
  %tag.gep631 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id632 = load i64, ptr %tag.gep631, align 8
  %tag.match633 = icmp eq i64 %tag.id632, 7
  br i1 %tag.match633, label %choice.case629, label %choice.next630

a.create468:                                      ; preds = %choice.case457
  %arena.cur470 = call ptr @dva_arena_current()
  %a.create471 = call ptr @dva_arena_alloc(ptr %arena.cur470, i64 24)
  %arena.cur472 = call ptr @dva_arena_current()
  %a.buf473 = call ptr @dva_arena_alloc(ptr %arena.cur472, i64 128)
  %a.len.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 0
  store i64 0, ptr %a.len.gep474, align 8
  %a.data.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 1
  store ptr %a.buf473, ptr %a.data.gep475, align 8
  %a.cap.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 2
  store i64 16, ptr %a.cap.gep476, align 8
  store ptr %a.create471, ptr %var.locals, align 8
  br label %a.after469

a.after469:                                       ; preds = %a.create468, %choice.case457
  %a.load2477 = load ptr, ptr %var.locals, align 8
  %call.res478 = call ptr @"dep_graph::copy_names"(ptr %a.load2477)
  store ptr %call.res478, ptr %var.blk_locals, align 8
  %var.load479 = load ptr, ptr %var.be, align 8
  %fld.gep480 = getelementptr inbounds { ptr }, ptr %var.load479, i32 0, i32 0
  %fld.load481 = load ptr, ptr %fld.gep480, align 8
  %arr.cycle.len482 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load481, i32 0, i32 0
  %arr.cycle.len483 = load i64, ptr %arr.cycle.len482, align 8
  %arr.cycle.data484 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load481, i32 0, i32 1
  %arr.cycle.data485 = load ptr, ptr %arr.cycle.data484, align 8
  store i64 0, ptr %loop.idx.9, align 8
  %cycle.prev.u486 = load ptr, ptr %var._464, align 8
  br label %loop.header.9

loop.header.9:                                    ; preds = %loop.latch.9, %a.after469
  %counter.load487 = load i64, ptr %loop.idx.9, align 8
  %loop.cond488 = icmp slt i64 %counter.load487, %arr.cycle.len483
  br i1 %loop.cond488, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i489 = sub i64 %counter.load487, 0
  store i64 1, ptr %loop.step.9, align 8
  %arr.elem.gep490 = getelementptr i64, ptr %arr.cycle.data485, i64 %counter.load487
  %arr.elem.raw491 = load i64, ptr %arr.elem.gep490, align 8
  %slot.i2p492 = inttoptr i64 %arr.elem.raw491 to ptr
  store i64 %loop.rel.i489, ptr %var._i493, align 8
  store ptr %slot.i2p492, ptr %var._494, align 8
  store ptr %slot.i2p492, ptr %var.st, align 8
  %var.load495 = load ptr, ptr %var.st, align 8
  %tag.gep499 = getelementptr inbounds { i64, ptr }, ptr %var.load495, i32 0, i32 0
  %tag.id500 = load i64, ptr %tag.gep499, align 8
  %tag.match501 = icmp eq i64 %tag.id500, 6
  br i1 %tag.match501, label %choice.case497, label %choice.next498

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit496
  %step.val627 = load i64, ptr %loop.step.9, align 8
  %loop.next628 = add i64 %counter.load487, %step.val627
  store i64 %loop.next628, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  store ptr %cycle.prev.u486, ptr %var._464, align 8
  br label %choice.exit

choice.exit496:                                   ; preds = %a.after618, %choice.exit568
  br label %loop.latch.9

choice.case497:                                   ; preds = %loop.body.9
  %pay.gep502 = getelementptr inbounds { i64, ptr }, ptr %var.load495, i32 0, i32 1
  %payload.ptr503 = load ptr, ptr %pay.gep502, align 8
  store ptr %payload.ptr503, ptr %var._504, align 8
  store ptr %payload.ptr503, ptr %var.a, align 8
  %var.load505 = load ptr, ptr %var.a, align 8
  %fld.gep506 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load505, i32 0, i32 5
  %fld.load507 = load ptr, ptr %fld.gep506, align 8
  %var.load508 = load ptr, ptr %var.blk_locals, align 8
  %a.load509 = load ptr, ptr %var.blk_locals, align 8
  %a.null510 = icmp eq ptr %a.load509, null
  br i1 %a.null510, label %a.create511, label %a.after512

choice.next498:                                   ; preds = %loop.body.9
  %var.load600 = load ptr, ptr %var.st, align 8
  %var.load601 = load ptr, ptr %var.blk_locals, align 8
  %a.load602 = load ptr, ptr %var.blk_locals, align 8
  %a.null603 = icmp eq ptr %a.load602, null
  br i1 %a.null603, label %a.create604, label %a.after605

a.create511:                                      ; preds = %choice.case497
  %arena.cur513 = call ptr @dva_arena_current()
  %a.create514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 24)
  %arena.cur515 = call ptr @dva_arena_current()
  %a.buf516 = call ptr @dva_arena_alloc(ptr %arena.cur515, i64 128)
  %a.len.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 0
  store i64 0, ptr %a.len.gep517, align 8
  %a.data.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 1
  store ptr %a.buf516, ptr %a.data.gep518, align 8
  %a.cap.gep519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create514, i32 0, i32 2
  store i64 16, ptr %a.cap.gep519, align 8
  store ptr %a.create514, ptr %var.blk_locals, align 8
  br label %a.after512

a.after512:                                       ; preds = %a.create511, %choice.case497
  %a.load2520 = load ptr, ptr %var.blk_locals, align 8
  %var.load521 = load ptr, ptr %var.refs, align 8
  %a.load522 = load ptr, ptr %var.refs, align 8
  %a.null523 = icmp eq ptr %a.load522, null
  br i1 %a.null523, label %a.create524, label %a.after525

a.create524:                                      ; preds = %a.after512
  %arena.cur526 = call ptr @dva_arena_current()
  %a.create527 = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 24)
  %arena.cur528 = call ptr @dva_arena_current()
  %a.buf529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 128)
  %a.len.gep530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create527, i32 0, i32 0
  store i64 0, ptr %a.len.gep530, align 8
  %a.data.gep531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create527, i32 0, i32 1
  store ptr %a.buf529, ptr %a.data.gep531, align 8
  %a.cap.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create527, i32 0, i32 2
  store i64 16, ptr %a.cap.gep532, align 8
  store ptr %a.create527, ptr %var.refs, align 8
  br label %a.after525

a.after525:                                       ; preds = %a.create524, %a.after512
  %a.load2533 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load507, ptr %a.load2520, ptr %a.load2533)
  %var.load534 = load ptr, ptr %var.a, align 8
  %fld.gep535 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load534, i32 0, i32 0
  %fld.load536 = load ptr, ptr %fld.gep535, align 8
  %eq.lhs.len537 = getelementptr inbounds { i64, ptr }, ptr %fld.load536, i32 0, i32 0
  %eq.lhs.len538 = load i64, ptr %eq.lhs.len537, align 8
  %eq.lhs.len539 = and i64 %eq.lhs.len538, 281474976710655
  %str.tag540 = lshr i64 %eq.lhs.len538, 48
  %str.immortal541 = icmp eq i64 %str.tag540, 0
  br i1 %str.immortal541, label %str_ok543, label %str_gen_check542

str_gen_check542:                                 ; preds = %a.after525
  %arena.cur545 = call ptr @dva_arena_current()
  %tag.valid546 = call i1 @dva_arena_validate_tag(ptr %arena.cur545, i64 %str.tag540)
  br i1 %tag.valid546, label %str_ok543, label %str_stale544

str_ok543:                                        ; preds = %str_stale544, %str_gen_check542, %a.after525
  %eq.rhs.len547 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len548 = and i64 %eq.rhs.len547, 281474976710655
  %str.tag549 = lshr i64 %eq.rhs.len547, 48
  %str.immortal550 = icmp eq i64 %str.tag549, 0
  br i1 %str.immortal550, label %str_ok552, label %str_gen_check551

str_stale544:                                     ; preds = %str_gen_check542
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok543

str_gen_check551:                                 ; preds = %str_ok543
  %arena.cur554 = call ptr @dva_arena_current()
  %tag.valid555 = call i1 @dva_arena_validate_tag(ptr %arena.cur554, i64 %str.tag549)
  br i1 %tag.valid555, label %str_ok552, label %str_stale553

str_ok552:                                        ; preds = %str_stale553, %str_gen_check551, %str_ok543
  %eq.len556 = icmp eq i64 %eq.lhs.len539, %eq.rhs.len548
  br i1 %eq.len556, label %str.eq.then557, label %str.eq.else558

str_stale553:                                     ; preds = %str_gen_check551
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok552

str.eq.then557:                                   ; preds = %str_ok552
  %eq.lhs.data560 = getelementptr inbounds { i64, ptr }, ptr %fld.load536, i32 0, i32 1
  %eq.lhs.data561 = load ptr, ptr %eq.lhs.data560, align 8
  %eq.rhs.data562 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp563 = call i32 @memcmp(ptr %eq.lhs.data561, ptr %eq.rhs.data562, i64 %eq.lhs.len539)
  %eq.cmp.zero564 = icmp eq i32 %eq.memcmp563, 0
  br label %str.eq.merge559

str.eq.else558:                                   ; preds = %str_ok552
  br label %str.eq.merge559

str.eq.merge559:                                  ; preds = %str.eq.else558, %str.eq.then557
  %str.eq.result565 = phi i1 [ %eq.cmp.zero564, %str.eq.then557 ], [ false, %str.eq.else558 ]
  %str.neq566 = xor i1 %str.eq.result565, true
  br i1 %str.neq566, label %choice.then567, label %choice.exit568

choice.then567:                                   ; preds = %str.eq.merge559
  %var.load569 = load ptr, ptr %var.a, align 8
  %fld.gep570 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load569, i32 0, i32 0
  %fld.load571 = load ptr, ptr %fld.gep570, align 8
  %a.load572 = load ptr, ptr %var.blk_locals, align 8
  %a.null573 = icmp eq ptr %a.load572, null
  br i1 %a.null573, label %a.create574, label %a.after575

choice.exit568:                                   ; preds = %a.store586, %str.eq.merge559
  br label %choice.exit496

a.create574:                                      ; preds = %choice.then567
  %arena.cur576 = call ptr @dva_arena_current()
  %a.create577 = call ptr @dva_arena_alloc(ptr %arena.cur576, i64 24)
  %arena.cur578 = call ptr @dva_arena_current()
  %a.buf579 = call ptr @dva_arena_alloc(ptr %arena.cur578, i64 128)
  %a.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 0
  store i64 0, ptr %a.len.gep580, align 8
  %a.data.gep581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 1
  store ptr %a.buf579, ptr %a.data.gep581, align 8
  %a.cap.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create577, i32 0, i32 2
  store i64 16, ptr %a.cap.gep582, align 8
  store ptr %a.create577, ptr %var.blk_locals, align 8
  br label %a.after575

a.after575:                                       ; preds = %a.create574, %choice.then567
  %a.load2583 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check584

a.check584:                                       ; preds = %a.after575
  %a.len587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2583, i32 0, i32 0
  %a.len588 = load i64, ptr %a.len587, align 8
  %a.cap589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2583, i32 0, i32 2
  %a.cap590 = load i64, ptr %a.cap589, align 8
  %a.needs.grow591 = icmp eq i64 %a.len588, %a.cap590
  br i1 %a.needs.grow591, label %a.grow585, label %a.store586

a.grow585:                                        ; preds = %a.check584
  call void @dva_array_grow(ptr %a.load2583)
  br label %a.store586

a.store586:                                       ; preds = %a.grow585, %a.check584
  %a.cur.data592 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2583, i32 0, i32 1
  %a.cur.data593 = load ptr, ptr %a.cur.data592, align 8
  %a.cur.len594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2583, i32 0, i32 0
  %a.cur.len595 = load i64, ptr %a.cur.len594, align 8
  %a.elem.gep596 = getelementptr i64, ptr %a.cur.data593, i64 %a.cur.len595
  %slot.p2i597 = ptrtoint ptr %fld.load571 to i64
  store i64 %slot.p2i597, ptr %a.elem.gep596, align 8
  %a.next.len598 = add i64 %a.cur.len595, 1
  %b.len.gep599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2583, i32 0, i32 0
  store i64 %a.next.len598, ptr %b.len.gep599, align 8
  br label %choice.exit568

a.create604:                                      ; preds = %choice.next498
  %arena.cur606 = call ptr @dva_arena_current()
  %a.create607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 24)
  %arena.cur608 = call ptr @dva_arena_current()
  %a.buf609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 128)
  %a.len.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 0
  store i64 0, ptr %a.len.gep610, align 8
  %a.data.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 1
  store ptr %a.buf609, ptr %a.data.gep611, align 8
  %a.cap.gep612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create607, i32 0, i32 2
  store i64 16, ptr %a.cap.gep612, align 8
  store ptr %a.create607, ptr %var.blk_locals, align 8
  br label %a.after605

a.after605:                                       ; preds = %a.create604, %choice.next498
  %a.load2613 = load ptr, ptr %var.blk_locals, align 8
  %var.load614 = load ptr, ptr %var.refs, align 8
  %a.load615 = load ptr, ptr %var.refs, align 8
  %a.null616 = icmp eq ptr %a.load615, null
  br i1 %a.null616, label %a.create617, label %a.after618

a.create617:                                      ; preds = %a.after605
  %arena.cur619 = call ptr @dva_arena_current()
  %a.create620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 24)
  %arena.cur621 = call ptr @dva_arena_current()
  %a.buf622 = call ptr @dva_arena_alloc(ptr %arena.cur621, i64 128)
  %a.len.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 0
  store i64 0, ptr %a.len.gep623, align 8
  %a.data.gep624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 1
  store ptr %a.buf622, ptr %a.data.gep624, align 8
  %a.cap.gep625 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 2
  store i64 16, ptr %a.cap.gep625, align 8
  store ptr %a.create620, ptr %var.refs, align 8
  br label %a.after618

a.after618:                                       ; preds = %a.create617, %a.after605
  %a.load2626 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load600, ptr %a.load2613, ptr %a.load2626)
  br label %choice.exit496

choice.case629:                                   ; preds = %choice.next458
  %pay.gep634 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr635 = load ptr, ptr %pay.gep634, align 8
  store ptr %payload.ptr635, ptr %var._636, align 8
  store ptr %payload.ptr635, ptr %var.ch, align 8
  %var.load637 = load ptr, ptr %var.ch, align 8
  %fld.gep638 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load637, i32 0, i32 0
  %fld.load639 = load ptr, ptr %fld.gep638, align 8
  %var.load640 = load ptr, ptr %var.locals, align 8
  %a.load641 = load ptr, ptr %var.locals, align 8
  %a.null642 = icmp eq ptr %a.load641, null
  br i1 %a.null642, label %a.create643, label %a.after644

choice.next630:                                   ; preds = %choice.next458
  %tag.gep884 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id885 = load i64, ptr %tag.gep884, align 8
  %tag.match886 = icmp eq i64 %tag.id885, 15
  br i1 %tag.match886, label %choice.case882, label %choice.next883

a.create643:                                      ; preds = %choice.case629
  %arena.cur645 = call ptr @dva_arena_current()
  %a.create646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 24)
  %arena.cur647 = call ptr @dva_arena_current()
  %a.buf648 = call ptr @dva_arena_alloc(ptr %arena.cur647, i64 128)
  %a.len.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 0
  store i64 0, ptr %a.len.gep649, align 8
  %a.data.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 1
  store ptr %a.buf648, ptr %a.data.gep650, align 8
  %a.cap.gep651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create646, i32 0, i32 2
  store i64 16, ptr %a.cap.gep651, align 8
  store ptr %a.create646, ptr %var.locals, align 8
  br label %a.after644

a.after644:                                       ; preds = %a.create643, %choice.case629
  %a.load2652 = load ptr, ptr %var.locals, align 8
  %var.load653 = load ptr, ptr %var.refs, align 8
  %a.load654 = load ptr, ptr %var.refs, align 8
  %a.null655 = icmp eq ptr %a.load654, null
  br i1 %a.null655, label %a.create656, label %a.after657

a.create656:                                      ; preds = %a.after644
  %arena.cur658 = call ptr @dva_arena_current()
  %a.create659 = call ptr @dva_arena_alloc(ptr %arena.cur658, i64 24)
  %arena.cur660 = call ptr @dva_arena_current()
  %a.buf661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 128)
  %a.len.gep662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create659, i32 0, i32 0
  store i64 0, ptr %a.len.gep662, align 8
  %a.data.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create659, i32 0, i32 1
  store ptr %a.buf661, ptr %a.data.gep663, align 8
  %a.cap.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create659, i32 0, i32 2
  store i64 16, ptr %a.cap.gep664, align 8
  store ptr %a.create659, ptr %var.refs, align 8
  br label %a.after657

a.after657:                                       ; preds = %a.create656, %a.after644
  %a.load2665 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load639, ptr %a.load2652, ptr %a.load2665)
  %var.load666 = load ptr, ptr %var.ch, align 8
  %fld.gep667 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load666, i32 0, i32 2
  %fld.load668 = load ptr, ptr %fld.gep667, align 8
  %arr.cycle.len669 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load668, i32 0, i32 0
  %arr.cycle.len670 = load i64, ptr %arr.cycle.len669, align 8
  %arr.cycle.data671 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load668, i32 0, i32 1
  %arr.cycle.data672 = load ptr, ptr %arr.cycle.data671, align 8
  store i64 0, ptr %loop.idx.10, align 8
  %cycle.prev.u673 = load ptr, ptr %var._636, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %a.after657
  %counter.load674 = load i64, ptr %loop.idx.10, align 8
  %loop.cond675 = icmp slt i64 %counter.load674, %arr.cycle.len670
  br i1 %loop.cond675, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i676 = sub i64 %counter.load674, 0
  store i64 1, ptr %loop.step.10, align 8
  %arr.elem.gep677 = getelementptr i64, ptr %arr.cycle.data672, i64 %counter.load674
  %arr.elem.raw678 = load i64, ptr %arr.elem.gep677, align 8
  %slot.i2p679 = inttoptr i64 %arr.elem.raw678 to ptr
  store i64 %loop.rel.i676, ptr %var._i680, align 8
  store ptr %slot.i2p679, ptr %var._681, align 8
  store ptr %slot.i2p679, ptr %var.br, align 8
  %var.load682 = load ptr, ptr %var.locals, align 8
  %a.load683 = load ptr, ptr %var.locals, align 8
  %a.null684 = icmp eq ptr %a.load683, null
  br i1 %a.null684, label %a.create685, label %a.after686

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %loop.exit.12
  %step.val880 = load i64, ptr %loop.step.10, align 8
  %loop.next881 = add i64 %counter.load674, %step.val880
  store i64 %loop.next881, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  store ptr %cycle.prev.u673, ptr %var._636, align 8
  br label %choice.exit

a.create685:                                      ; preds = %loop.body.10
  %arena.cur687 = call ptr @dva_arena_current()
  %a.create688 = call ptr @dva_arena_alloc(ptr %arena.cur687, i64 24)
  %arena.cur689 = call ptr @dva_arena_current()
  %a.buf690 = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 128)
  %a.len.gep691 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create688, i32 0, i32 0
  store i64 0, ptr %a.len.gep691, align 8
  %a.data.gep692 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create688, i32 0, i32 1
  store ptr %a.buf690, ptr %a.data.gep692, align 8
  %a.cap.gep693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create688, i32 0, i32 2
  store i64 16, ptr %a.cap.gep693, align 8
  store ptr %a.create688, ptr %var.locals, align 8
  br label %a.after686

a.after686:                                       ; preds = %a.create685, %loop.body.10
  %a.load2694 = load ptr, ptr %var.locals, align 8
  %call.res695 = call ptr @"dep_graph::copy_names"(ptr %a.load2694)
  store ptr %call.res695, ptr %var.br_locals, align 8
  %var.load696 = load ptr, ptr %var.br, align 8
  %fld.gep697 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load696, i32 0, i32 4
  %fld.load698 = load ptr, ptr %fld.gep697, align 8
  %arr.cycle.len699 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load698, i32 0, i32 0
  %arr.cycle.len700 = load i64, ptr %arr.cycle.len699, align 8
  %arr.cycle.data701 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load698, i32 0, i32 1
  %arr.cycle.data702 = load ptr, ptr %arr.cycle.data701, align 8
  store i64 0, ptr %loop.idx.11, align 8
  %cycle.prev.u703 = load ptr, ptr %var._681, align 8
  %cycle.prev.i = load i64, ptr %var._i680, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %a.after686
  %counter.load704 = load i64, ptr %loop.idx.11, align 8
  %loop.cond705 = icmp slt i64 %counter.load704, %arr.cycle.len700
  br i1 %loop.cond705, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i706 = sub i64 %counter.load704, 0
  store i64 1, ptr %loop.step.11, align 8
  %arr.elem.gep707 = getelementptr i64, ptr %arr.cycle.data702, i64 %counter.load704
  %arr.elem.raw708 = load i64, ptr %arr.elem.gep707, align 8
  %slot.i2p709 = inttoptr i64 %arr.elem.raw708 to ptr
  store i64 %loop.rel.i706, ptr %var._i710, align 8
  store ptr %slot.i2p709, ptr %var._711, align 8
  store ptr %slot.i2p709, ptr %var.bv, align 8
  %var.load712 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len713 = getelementptr inbounds { i64, ptr }, ptr %var.load712, i32 0, i32 0
  %eq.lhs.len714 = load i64, ptr %eq.lhs.len713, align 8
  %eq.lhs.len715 = and i64 %eq.lhs.len714, 281474976710655
  %str.tag716 = lshr i64 %eq.lhs.len714, 48
  %str.immortal717 = icmp eq i64 %str.tag716, 0
  br i1 %str.immortal717, label %str_ok719, label %str_gen_check718

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit744
  %step.val774 = load i64, ptr %loop.step.11, align 8
  %loop.next775 = add i64 %counter.load704, %step.val774
  store i64 %loop.next775, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  store ptr %cycle.prev.u703, ptr %var._681, align 8
  store i64 %cycle.prev.i, ptr %var._i680, align 8
  %var.load776 = load ptr, ptr %var.br, align 8
  %fld.gep777 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load776, i32 0, i32 6
  %fld.load778 = load ptr, ptr %fld.gep777, align 8
  %var.load779 = load ptr, ptr %var.br_locals, align 8
  %a.load780 = load ptr, ptr %var.br_locals, align 8
  %a.null781 = icmp eq ptr %a.load780, null
  br i1 %a.null781, label %a.create782, label %a.after783

str_gen_check718:                                 ; preds = %loop.body.11
  %arena.cur721 = call ptr @dva_arena_current()
  %tag.valid722 = call i1 @dva_arena_validate_tag(ptr %arena.cur721, i64 %str.tag716)
  br i1 %tag.valid722, label %str_ok719, label %str_stale720

str_ok719:                                        ; preds = %str_stale720, %str_gen_check718, %loop.body.11
  %eq.rhs.len723 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len724 = and i64 %eq.rhs.len723, 281474976710655
  %str.tag725 = lshr i64 %eq.rhs.len723, 48
  %str.immortal726 = icmp eq i64 %str.tag725, 0
  br i1 %str.immortal726, label %str_ok728, label %str_gen_check727

str_stale720:                                     ; preds = %str_gen_check718
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok719

str_gen_check727:                                 ; preds = %str_ok719
  %arena.cur730 = call ptr @dva_arena_current()
  %tag.valid731 = call i1 @dva_arena_validate_tag(ptr %arena.cur730, i64 %str.tag725)
  br i1 %tag.valid731, label %str_ok728, label %str_stale729

str_ok728:                                        ; preds = %str_stale729, %str_gen_check727, %str_ok719
  %eq.len732 = icmp eq i64 %eq.lhs.len715, %eq.rhs.len724
  br i1 %eq.len732, label %str.eq.then733, label %str.eq.else734

str_stale729:                                     ; preds = %str_gen_check727
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok728

str.eq.then733:                                   ; preds = %str_ok728
  %eq.lhs.data736 = getelementptr inbounds { i64, ptr }, ptr %var.load712, i32 0, i32 1
  %eq.lhs.data737 = load ptr, ptr %eq.lhs.data736, align 8
  %eq.rhs.data738 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp739 = call i32 @memcmp(ptr %eq.lhs.data737, ptr %eq.rhs.data738, i64 %eq.lhs.len715)
  %eq.cmp.zero740 = icmp eq i32 %eq.memcmp739, 0
  br label %str.eq.merge735

str.eq.else734:                                   ; preds = %str_ok728
  br label %str.eq.merge735

str.eq.merge735:                                  ; preds = %str.eq.else734, %str.eq.then733
  %str.eq.result741 = phi i1 [ %eq.cmp.zero740, %str.eq.then733 ], [ false, %str.eq.else734 ]
  %str.neq742 = xor i1 %str.eq.result741, true
  br i1 %str.neq742, label %choice.then743, label %choice.exit744

choice.then743:                                   ; preds = %str.eq.merge735
  %var.load745 = load ptr, ptr %var.bv, align 8
  %a.load746 = load ptr, ptr %var.br_locals, align 8
  %a.null747 = icmp eq ptr %a.load746, null
  br i1 %a.null747, label %a.create748, label %a.after749

choice.exit744:                                   ; preds = %a.store760, %str.eq.merge735
  br label %loop.latch.11

a.create748:                                      ; preds = %choice.then743
  %arena.cur750 = call ptr @dva_arena_current()
  %a.create751 = call ptr @dva_arena_alloc(ptr %arena.cur750, i64 24)
  %arena.cur752 = call ptr @dva_arena_current()
  %a.buf753 = call ptr @dva_arena_alloc(ptr %arena.cur752, i64 128)
  %a.len.gep754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 0
  store i64 0, ptr %a.len.gep754, align 8
  %a.data.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 1
  store ptr %a.buf753, ptr %a.data.gep755, align 8
  %a.cap.gep756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create751, i32 0, i32 2
  store i64 16, ptr %a.cap.gep756, align 8
  store ptr %a.create751, ptr %var.br_locals, align 8
  br label %a.after749

a.after749:                                       ; preds = %a.create748, %choice.then743
  %a.load2757 = load ptr, ptr %var.br_locals, align 8
  br label %a.check758

a.check758:                                       ; preds = %a.after749
  %a.len761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  %a.len762 = load i64, ptr %a.len761, align 8
  %a.cap763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 2
  %a.cap764 = load i64, ptr %a.cap763, align 8
  %a.needs.grow765 = icmp eq i64 %a.len762, %a.cap764
  br i1 %a.needs.grow765, label %a.grow759, label %a.store760

a.grow759:                                        ; preds = %a.check758
  call void @dva_array_grow(ptr %a.load2757)
  br label %a.store760

a.store760:                                       ; preds = %a.grow759, %a.check758
  %a.cur.data766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 1
  %a.cur.data767 = load ptr, ptr %a.cur.data766, align 8
  %a.cur.len768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  %a.cur.len769 = load i64, ptr %a.cur.len768, align 8
  %a.elem.gep770 = getelementptr i64, ptr %a.cur.data767, i64 %a.cur.len769
  %slot.p2i771 = ptrtoint ptr %var.load745 to i64
  store i64 %slot.p2i771, ptr %a.elem.gep770, align 8
  %a.next.len772 = add i64 %a.cur.len769, 1
  %b.len.gep773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2757, i32 0, i32 0
  store i64 %a.next.len772, ptr %b.len.gep773, align 8
  br label %choice.exit744

a.create782:                                      ; preds = %loop.exit.11
  %arena.cur784 = call ptr @dva_arena_current()
  %a.create785 = call ptr @dva_arena_alloc(ptr %arena.cur784, i64 24)
  %arena.cur786 = call ptr @dva_arena_current()
  %a.buf787 = call ptr @dva_arena_alloc(ptr %arena.cur786, i64 128)
  %a.len.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create785, i32 0, i32 0
  store i64 0, ptr %a.len.gep788, align 8
  %a.data.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create785, i32 0, i32 1
  store ptr %a.buf787, ptr %a.data.gep789, align 8
  %a.cap.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create785, i32 0, i32 2
  store i64 16, ptr %a.cap.gep790, align 8
  store ptr %a.create785, ptr %var.br_locals, align 8
  br label %a.after783

a.after783:                                       ; preds = %a.create782, %loop.exit.11
  %a.load2791 = load ptr, ptr %var.br_locals, align 8
  %var.load792 = load ptr, ptr %var.refs, align 8
  %a.load793 = load ptr, ptr %var.refs, align 8
  %a.null794 = icmp eq ptr %a.load793, null
  br i1 %a.null794, label %a.create795, label %a.after796

a.create795:                                      ; preds = %a.after783
  %arena.cur797 = call ptr @dva_arena_current()
  %a.create798 = call ptr @dva_arena_alloc(ptr %arena.cur797, i64 24)
  %arena.cur799 = call ptr @dva_arena_current()
  %a.buf800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 128)
  %a.len.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 0
  store i64 0, ptr %a.len.gep801, align 8
  %a.data.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 1
  store ptr %a.buf800, ptr %a.data.gep802, align 8
  %a.cap.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 2
  store i64 16, ptr %a.cap.gep803, align 8
  store ptr %a.create798, ptr %var.refs, align 8
  br label %a.after796

a.after796:                                       ; preds = %a.create795, %a.after783
  %a.load2804 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load778, ptr %a.load2791, ptr %a.load2804)
  %var.load805 = load ptr, ptr %var.br, align 8
  %fld.gep806 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load805, i32 0, i32 2
  %fld.load807 = load ptr, ptr %fld.gep806, align 8
  %var.load808 = load ptr, ptr %var.br_locals, align 8
  %a.load809 = load ptr, ptr %var.br_locals, align 8
  %a.null810 = icmp eq ptr %a.load809, null
  br i1 %a.null810, label %a.create811, label %a.after812

a.create811:                                      ; preds = %a.after796
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
  store ptr %a.create814, ptr %var.br_locals, align 8
  br label %a.after812

a.after812:                                       ; preds = %a.create811, %a.after796
  %a.load2820 = load ptr, ptr %var.br_locals, align 8
  %var.load821 = load ptr, ptr %var.refs, align 8
  %a.load822 = load ptr, ptr %var.refs, align 8
  %a.null823 = icmp eq ptr %a.load822, null
  br i1 %a.null823, label %a.create824, label %a.after825

a.create824:                                      ; preds = %a.after812
  %arena.cur826 = call ptr @dva_arena_current()
  %a.create827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 24)
  %arena.cur828 = call ptr @dva_arena_current()
  %a.buf829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 128)
  %a.len.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 0
  store i64 0, ptr %a.len.gep830, align 8
  %a.data.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 1
  store ptr %a.buf829, ptr %a.data.gep831, align 8
  %a.cap.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 2
  store i64 16, ptr %a.cap.gep832, align 8
  store ptr %a.create827, ptr %var.refs, align 8
  br label %a.after825

a.after825:                                       ; preds = %a.create824, %a.after812
  %a.load2833 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load807, ptr %a.load2820, ptr %a.load2833)
  %var.load834 = load ptr, ptr %var.br, align 8
  %fld.gep835 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load834, i32 0, i32 1
  %fld.load836 = load ptr, ptr %fld.gep835, align 8
  %arr.cycle.len837 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load836, i32 0, i32 0
  %arr.cycle.len838 = load i64, ptr %arr.cycle.len837, align 8
  %arr.cycle.data839 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load836, i32 0, i32 1
  %arr.cycle.data840 = load ptr, ptr %arr.cycle.data839, align 8
  store i64 0, ptr %loop.idx.12, align 8
  %cycle.prev.u841 = load ptr, ptr %var._681, align 8
  %cycle.prev.i842 = load i64, ptr %var._i680, align 8
  br label %loop.header.12

loop.header.12:                                   ; preds = %loop.latch.12, %a.after825
  %counter.load843 = load i64, ptr %loop.idx.12, align 8
  %loop.cond844 = icmp slt i64 %counter.load843, %arr.cycle.len838
  br i1 %loop.cond844, label %loop.body.12, label %loop.exit.nat.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i845 = sub i64 %counter.load843, 0
  store i64 1, ptr %loop.step.12, align 8
  %arr.elem.gep846 = getelementptr i64, ptr %arr.cycle.data840, i64 %counter.load843
  %arr.elem.raw847 = load i64, ptr %arr.elem.gep846, align 8
  %slot.i2p848 = inttoptr i64 %arr.elem.raw847 to ptr
  store i64 %loop.rel.i845, ptr %var._i849, align 8
  store ptr %slot.i2p848, ptr %var._850, align 8
  store ptr %slot.i2p848, ptr %var.cv, align 8
  %var.load851 = load ptr, ptr %var.cv, align 8
  %var.load852 = load ptr, ptr %var.br_locals, align 8
  %a.load853 = load ptr, ptr %var.br_locals, align 8
  %a.null854 = icmp eq ptr %a.load853, null
  br i1 %a.null854, label %a.create855, label %a.after856

loop.exit.nat.12:                                 ; preds = %loop.header.12
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %a.after869
  %step.val878 = load i64, ptr %loop.step.12, align 8
  %loop.next879 = add i64 %counter.load843, %step.val878
  store i64 %loop.next879, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %loop.exit.nat.12
  store ptr %cycle.prev.u841, ptr %var._681, align 8
  store i64 %cycle.prev.i842, ptr %var._i680, align 8
  br label %loop.latch.10

a.create855:                                      ; preds = %loop.body.12
  %arena.cur857 = call ptr @dva_arena_current()
  %a.create858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 24)
  %arena.cur859 = call ptr @dva_arena_current()
  %a.buf860 = call ptr @dva_arena_alloc(ptr %arena.cur859, i64 128)
  %a.len.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 0
  store i64 0, ptr %a.len.gep861, align 8
  %a.data.gep862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 1
  store ptr %a.buf860, ptr %a.data.gep862, align 8
  %a.cap.gep863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 2
  store i64 16, ptr %a.cap.gep863, align 8
  store ptr %a.create858, ptr %var.br_locals, align 8
  br label %a.after856

a.after856:                                       ; preds = %a.create855, %loop.body.12
  %a.load2864 = load ptr, ptr %var.br_locals, align 8
  %var.load865 = load ptr, ptr %var.refs, align 8
  %a.load866 = load ptr, ptr %var.refs, align 8
  %a.null867 = icmp eq ptr %a.load866, null
  br i1 %a.null867, label %a.create868, label %a.after869

a.create868:                                      ; preds = %a.after856
  %arena.cur870 = call ptr @dva_arena_current()
  %a.create871 = call ptr @dva_arena_alloc(ptr %arena.cur870, i64 24)
  %arena.cur872 = call ptr @dva_arena_current()
  %a.buf873 = call ptr @dva_arena_alloc(ptr %arena.cur872, i64 128)
  %a.len.gep874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 0
  store i64 0, ptr %a.len.gep874, align 8
  %a.data.gep875 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 1
  store ptr %a.buf873, ptr %a.data.gep875, align 8
  %a.cap.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 2
  store i64 16, ptr %a.cap.gep876, align 8
  store ptr %a.create871, ptr %var.refs, align 8
  br label %a.after869

a.after869:                                       ; preds = %a.create868, %a.after856
  %a.load2877 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load851, ptr %a.load2864, ptr %a.load2877)
  br label %loop.latch.12

choice.case882:                                   ; preds = %choice.next630
  %pay.gep887 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr888 = load ptr, ptr %pay.gep887, align 8
  store ptr %payload.ptr888, ptr %var._889, align 8
  store ptr %payload.ptr888, ptr %var.re, align 8
  %var.load890 = load ptr, ptr %var.re, align 8
  %fld.gep891 = getelementptr inbounds { ptr, i1 }, ptr %var.load890, i32 0, i32 0
  %fld.load892 = load ptr, ptr %fld.gep891, align 8
  %arr.cycle.len893 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load892, i32 0, i32 0
  %arr.cycle.len894 = load i64, ptr %arr.cycle.len893, align 8
  %arr.cycle.data895 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load892, i32 0, i32 1
  %arr.cycle.data896 = load ptr, ptr %arr.cycle.data895, align 8
  store i64 0, ptr %loop.idx.13, align 8
  %cycle.prev.u897 = load ptr, ptr %var._889, align 8
  br label %loop.header.13

choice.next883:                                   ; preds = %choice.next630
  %tag.gep939 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id940 = load i64, ptr %tag.gep939, align 8
  %tag.match941 = icmp eq i64 %tag.id940, 16
  br i1 %tag.match941, label %choice.case937, label %choice.next938

loop.header.13:                                   ; preds = %loop.latch.13, %choice.case882
  %counter.load898 = load i64, ptr %loop.idx.13, align 8
  %loop.cond899 = icmp slt i64 %counter.load898, %arr.cycle.len894
  br i1 %loop.cond899, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i900 = sub i64 %counter.load898, 0
  store i64 1, ptr %loop.step.13, align 8
  %arr.elem.gep901 = getelementptr i64, ptr %arr.cycle.data896, i64 %counter.load898
  %arr.elem.raw902 = load i64, ptr %arr.elem.gep901, align 8
  %slot.i2p903 = inttoptr i64 %arr.elem.raw902 to ptr
  store i64 %loop.rel.i900, ptr %var._i904, align 8
  store ptr %slot.i2p903, ptr %var._905, align 8
  store ptr %slot.i2p903, ptr %var.fld, align 8
  %var.load906 = load ptr, ptr %var.fld, align 8
  %fld.gep907 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load906, i32 0, i32 2
  %fld.load908 = load ptr, ptr %fld.gep907, align 8
  %var.load909 = load ptr, ptr %var.locals, align 8
  %a.load910 = load ptr, ptr %var.locals, align 8
  %a.null911 = icmp eq ptr %a.load910, null
  br i1 %a.null911, label %a.create912, label %a.after913

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %a.after926
  %step.val935 = load i64, ptr %loop.step.13, align 8
  %loop.next936 = add i64 %counter.load898, %step.val935
  store i64 %loop.next936, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  store ptr %cycle.prev.u897, ptr %var._889, align 8
  br label %choice.exit

a.create912:                                      ; preds = %loop.body.13
  %arena.cur914 = call ptr @dva_arena_current()
  %a.create915 = call ptr @dva_arena_alloc(ptr %arena.cur914, i64 24)
  %arena.cur916 = call ptr @dva_arena_current()
  %a.buf917 = call ptr @dva_arena_alloc(ptr %arena.cur916, i64 128)
  %a.len.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 0
  store i64 0, ptr %a.len.gep918, align 8
  %a.data.gep919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 1
  store ptr %a.buf917, ptr %a.data.gep919, align 8
  %a.cap.gep920 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 2
  store i64 16, ptr %a.cap.gep920, align 8
  store ptr %a.create915, ptr %var.locals, align 8
  br label %a.after913

a.after913:                                       ; preds = %a.create912, %loop.body.13
  %a.load2921 = load ptr, ptr %var.locals, align 8
  %var.load922 = load ptr, ptr %var.refs, align 8
  %a.load923 = load ptr, ptr %var.refs, align 8
  %a.null924 = icmp eq ptr %a.load923, null
  br i1 %a.null924, label %a.create925, label %a.after926

a.create925:                                      ; preds = %a.after913
  %arena.cur927 = call ptr @dva_arena_current()
  %a.create928 = call ptr @dva_arena_alloc(ptr %arena.cur927, i64 24)
  %arena.cur929 = call ptr @dva_arena_current()
  %a.buf930 = call ptr @dva_arena_alloc(ptr %arena.cur929, i64 128)
  %a.len.gep931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create928, i32 0, i32 0
  store i64 0, ptr %a.len.gep931, align 8
  %a.data.gep932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create928, i32 0, i32 1
  store ptr %a.buf930, ptr %a.data.gep932, align 8
  %a.cap.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create928, i32 0, i32 2
  store i64 16, ptr %a.cap.gep933, align 8
  store ptr %a.create928, ptr %var.refs, align 8
  br label %a.after926

a.after926:                                       ; preds = %a.create925, %a.after913
  %a.load2934 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load908, ptr %a.load2921, ptr %a.load2934)
  br label %loop.latch.13

choice.case937:                                   ; preds = %choice.next883
  %pay.gep942 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr943 = load ptr, ptr %pay.gep942, align 8
  store ptr %payload.ptr943, ptr %var._944, align 8
  store ptr %payload.ptr943, ptr %var.m, align 8
  %var.load945 = load ptr, ptr %var.m, align 8
  %fld.gep946 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load945, i32 0, i32 0
  %fld.load947 = load ptr, ptr %fld.gep946, align 8
  %var.load948 = load ptr, ptr %var.locals, align 8
  %a.load949 = load ptr, ptr %var.locals, align 8
  %a.null950 = icmp eq ptr %a.load949, null
  br i1 %a.null950, label %a.create951, label %a.after952

choice.next938:                                   ; preds = %choice.next883
  %tag.gep1005 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1006 = load i64, ptr %tag.gep1005, align 8
  %tag.match1007 = icmp eq i64 %tag.id1006, 17
  br i1 %tag.match1007, label %choice.case1003, label %choice.next1004

a.create951:                                      ; preds = %choice.case937
  %arena.cur953 = call ptr @dva_arena_current()
  %a.create954 = call ptr @dva_arena_alloc(ptr %arena.cur953, i64 24)
  %arena.cur955 = call ptr @dva_arena_current()
  %a.buf956 = call ptr @dva_arena_alloc(ptr %arena.cur955, i64 128)
  %a.len.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 0
  store i64 0, ptr %a.len.gep957, align 8
  %a.data.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 1
  store ptr %a.buf956, ptr %a.data.gep958, align 8
  %a.cap.gep959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create954, i32 0, i32 2
  store i64 16, ptr %a.cap.gep959, align 8
  store ptr %a.create954, ptr %var.locals, align 8
  br label %a.after952

a.after952:                                       ; preds = %a.create951, %choice.case937
  %a.load2960 = load ptr, ptr %var.locals, align 8
  %var.load961 = load ptr, ptr %var.refs, align 8
  %a.load962 = load ptr, ptr %var.refs, align 8
  %a.null963 = icmp eq ptr %a.load962, null
  br i1 %a.null963, label %a.create964, label %a.after965

a.create964:                                      ; preds = %a.after952
  %arena.cur966 = call ptr @dva_arena_current()
  %a.create967 = call ptr @dva_arena_alloc(ptr %arena.cur966, i64 24)
  %arena.cur968 = call ptr @dva_arena_current()
  %a.buf969 = call ptr @dva_arena_alloc(ptr %arena.cur968, i64 128)
  %a.len.gep970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create967, i32 0, i32 0
  store i64 0, ptr %a.len.gep970, align 8
  %a.data.gep971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create967, i32 0, i32 1
  store ptr %a.buf969, ptr %a.data.gep971, align 8
  %a.cap.gep972 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create967, i32 0, i32 2
  store i64 16, ptr %a.cap.gep972, align 8
  store ptr %a.create967, ptr %var.refs, align 8
  br label %a.after965

a.after965:                                       ; preds = %a.create964, %a.after952
  %a.load2973 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load947, ptr %a.load2960, ptr %a.load2973)
  %var.load974 = load ptr, ptr %var.m, align 8
  %fld.gep975 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load974, i32 0, i32 3
  %fld.load976 = load ptr, ptr %fld.gep975, align 8
  %var.load977 = load ptr, ptr %var.locals, align 8
  %a.load978 = load ptr, ptr %var.locals, align 8
  %a.null979 = icmp eq ptr %a.load978, null
  br i1 %a.null979, label %a.create980, label %a.after981

a.create980:                                      ; preds = %a.after965
  %arena.cur982 = call ptr @dva_arena_current()
  %a.create983 = call ptr @dva_arena_alloc(ptr %arena.cur982, i64 24)
  %arena.cur984 = call ptr @dva_arena_current()
  %a.buf985 = call ptr @dva_arena_alloc(ptr %arena.cur984, i64 128)
  %a.len.gep986 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 0
  store i64 0, ptr %a.len.gep986, align 8
  %a.data.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 1
  store ptr %a.buf985, ptr %a.data.gep987, align 8
  %a.cap.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 2
  store i64 16, ptr %a.cap.gep988, align 8
  store ptr %a.create983, ptr %var.locals, align 8
  br label %a.after981

a.after981:                                       ; preds = %a.create980, %a.after965
  %a.load2989 = load ptr, ptr %var.locals, align 8
  %var.load990 = load ptr, ptr %var.refs, align 8
  %a.load991 = load ptr, ptr %var.refs, align 8
  %a.null992 = icmp eq ptr %a.load991, null
  br i1 %a.null992, label %a.create993, label %a.after994

a.create993:                                      ; preds = %a.after981
  %arena.cur995 = call ptr @dva_arena_current()
  %a.create996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 24)
  %arena.cur997 = call ptr @dva_arena_current()
  %a.buf998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 128)
  %a.len.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 0
  store i64 0, ptr %a.len.gep999, align 8
  %a.data.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 1
  store ptr %a.buf998, ptr %a.data.gep1000, align 8
  %a.cap.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1001, align 8
  store ptr %a.create996, ptr %var.refs, align 8
  br label %a.after994

a.after994:                                       ; preds = %a.create993, %a.after981
  %a.load21002 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load976, ptr %a.load2989, ptr %a.load21002)
  br label %choice.exit

choice.case1003:                                  ; preds = %choice.next938
  %pay.gep1008 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1009 = load ptr, ptr %pay.gep1008, align 8
  store ptr %payload.ptr1009, ptr %var._1010, align 8
  store ptr %payload.ptr1009, ptr %var.ka, align 8
  %var.load1011 = load ptr, ptr %var.ka, align 8
  %fld.gep1012 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1011, i32 0, i32 0
  %fld.load1013 = load ptr, ptr %fld.gep1012, align 8
  %var.load1014 = load ptr, ptr %var.locals, align 8
  %a.load1015 = load ptr, ptr %var.locals, align 8
  %a.null1016 = icmp eq ptr %a.load1015, null
  br i1 %a.null1016, label %a.create1017, label %a.after1018

choice.next1004:                                  ; preds = %choice.next938
  %tag.gep1071 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1072 = load i64, ptr %tag.gep1071, align 8
  %tag.match1073 = icmp eq i64 %tag.id1072, 6
  br i1 %tag.match1073, label %choice.case1069, label %choice.next1070

a.create1017:                                     ; preds = %choice.case1003
  %arena.cur1019 = call ptr @dva_arena_current()
  %a.create1020 = call ptr @dva_arena_alloc(ptr %arena.cur1019, i64 24)
  %arena.cur1021 = call ptr @dva_arena_current()
  %a.buf1022 = call ptr @dva_arena_alloc(ptr %arena.cur1021, i64 128)
  %a.len.gep1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1020, i32 0, i32 0
  store i64 0, ptr %a.len.gep1023, align 8
  %a.data.gep1024 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1020, i32 0, i32 1
  store ptr %a.buf1022, ptr %a.data.gep1024, align 8
  %a.cap.gep1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1020, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1025, align 8
  store ptr %a.create1020, ptr %var.locals, align 8
  br label %a.after1018

a.after1018:                                      ; preds = %a.create1017, %choice.case1003
  %a.load21026 = load ptr, ptr %var.locals, align 8
  %var.load1027 = load ptr, ptr %var.refs, align 8
  %a.load1028 = load ptr, ptr %var.refs, align 8
  %a.null1029 = icmp eq ptr %a.load1028, null
  br i1 %a.null1029, label %a.create1030, label %a.after1031

a.create1030:                                     ; preds = %a.after1018
  %arena.cur1032 = call ptr @dva_arena_current()
  %a.create1033 = call ptr @dva_arena_alloc(ptr %arena.cur1032, i64 24)
  %arena.cur1034 = call ptr @dva_arena_current()
  %a.buf1035 = call ptr @dva_arena_alloc(ptr %arena.cur1034, i64 128)
  %a.len.gep1036 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1033, i32 0, i32 0
  store i64 0, ptr %a.len.gep1036, align 8
  %a.data.gep1037 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1033, i32 0, i32 1
  store ptr %a.buf1035, ptr %a.data.gep1037, align 8
  %a.cap.gep1038 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1033, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1038, align 8
  store ptr %a.create1033, ptr %var.refs, align 8
  br label %a.after1031

a.after1031:                                      ; preds = %a.create1030, %a.after1018
  %a.load21039 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1013, ptr %a.load21026, ptr %a.load21039)
  %var.load1040 = load ptr, ptr %var.ka, align 8
  %fld.gep1041 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1040, i32 0, i32 1
  %fld.load1042 = load ptr, ptr %fld.gep1041, align 8
  %var.load1043 = load ptr, ptr %var.locals, align 8
  %a.load1044 = load ptr, ptr %var.locals, align 8
  %a.null1045 = icmp eq ptr %a.load1044, null
  br i1 %a.null1045, label %a.create1046, label %a.after1047

a.create1046:                                     ; preds = %a.after1031
  %arena.cur1048 = call ptr @dva_arena_current()
  %a.create1049 = call ptr @dva_arena_alloc(ptr %arena.cur1048, i64 24)
  %arena.cur1050 = call ptr @dva_arena_current()
  %a.buf1051 = call ptr @dva_arena_alloc(ptr %arena.cur1050, i64 128)
  %a.len.gep1052 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1049, i32 0, i32 0
  store i64 0, ptr %a.len.gep1052, align 8
  %a.data.gep1053 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1049, i32 0, i32 1
  store ptr %a.buf1051, ptr %a.data.gep1053, align 8
  %a.cap.gep1054 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1049, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1054, align 8
  store ptr %a.create1049, ptr %var.locals, align 8
  br label %a.after1047

a.after1047:                                      ; preds = %a.create1046, %a.after1031
  %a.load21055 = load ptr, ptr %var.locals, align 8
  %var.load1056 = load ptr, ptr %var.refs, align 8
  %a.load1057 = load ptr, ptr %var.refs, align 8
  %a.null1058 = icmp eq ptr %a.load1057, null
  br i1 %a.null1058, label %a.create1059, label %a.after1060

a.create1059:                                     ; preds = %a.after1047
  %arena.cur1061 = call ptr @dva_arena_current()
  %a.create1062 = call ptr @dva_arena_alloc(ptr %arena.cur1061, i64 24)
  %arena.cur1063 = call ptr @dva_arena_current()
  %a.buf1064 = call ptr @dva_arena_alloc(ptr %arena.cur1063, i64 128)
  %a.len.gep1065 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1062, i32 0, i32 0
  store i64 0, ptr %a.len.gep1065, align 8
  %a.data.gep1066 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1062, i32 0, i32 1
  store ptr %a.buf1064, ptr %a.data.gep1066, align 8
  %a.cap.gep1067 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1062, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1067, align 8
  store ptr %a.create1062, ptr %var.refs, align 8
  br label %a.after1060

a.after1060:                                      ; preds = %a.create1059, %a.after1047
  %a.load21068 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1042, ptr %a.load21055, ptr %a.load21068)
  br label %choice.exit

choice.case1069:                                  ; preds = %choice.next1004
  %pay.gep1074 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1075 = load ptr, ptr %pay.gep1074, align 8
  store ptr %payload.ptr1075, ptr %var._1076, align 8
  store ptr %payload.ptr1075, ptr %var.a1077, align 8
  %var.load1078 = load ptr, ptr %var.a1077, align 8
  %fld.gep1079 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1078, i32 0, i32 5
  %fld.load1080 = load ptr, ptr %fld.gep1079, align 8
  %var.load1081 = load ptr, ptr %var.locals, align 8
  %a.load1082 = load ptr, ptr %var.locals, align 8
  %a.null1083 = icmp eq ptr %a.load1082, null
  br i1 %a.null1083, label %a.create1084, label %a.after1085

choice.next1070:                                  ; preds = %choice.next1004
  %tag.gep1138 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1139 = load i64, ptr %tag.gep1138, align 8
  %tag.match1140 = icmp eq i64 %tag.id1139, 12
  br i1 %tag.match1140, label %choice.case1136, label %choice.next1137

a.create1084:                                     ; preds = %choice.case1069
  %arena.cur1086 = call ptr @dva_arena_current()
  %a.create1087 = call ptr @dva_arena_alloc(ptr %arena.cur1086, i64 24)
  %arena.cur1088 = call ptr @dva_arena_current()
  %a.buf1089 = call ptr @dva_arena_alloc(ptr %arena.cur1088, i64 128)
  %a.len.gep1090 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1087, i32 0, i32 0
  store i64 0, ptr %a.len.gep1090, align 8
  %a.data.gep1091 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1087, i32 0, i32 1
  store ptr %a.buf1089, ptr %a.data.gep1091, align 8
  %a.cap.gep1092 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1087, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1092, align 8
  store ptr %a.create1087, ptr %var.locals, align 8
  br label %a.after1085

a.after1085:                                      ; preds = %a.create1084, %choice.case1069
  %a.load21093 = load ptr, ptr %var.locals, align 8
  %var.load1094 = load ptr, ptr %var.refs, align 8
  %a.load1095 = load ptr, ptr %var.refs, align 8
  %a.null1096 = icmp eq ptr %a.load1095, null
  br i1 %a.null1096, label %a.create1097, label %a.after1098

a.create1097:                                     ; preds = %a.after1085
  %arena.cur1099 = call ptr @dva_arena_current()
  %a.create1100 = call ptr @dva_arena_alloc(ptr %arena.cur1099, i64 24)
  %arena.cur1101 = call ptr @dva_arena_current()
  %a.buf1102 = call ptr @dva_arena_alloc(ptr %arena.cur1101, i64 128)
  %a.len.gep1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 0
  store i64 0, ptr %a.len.gep1103, align 8
  %a.data.gep1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 1
  store ptr %a.buf1102, ptr %a.data.gep1104, align 8
  %a.cap.gep1105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1105, align 8
  store ptr %a.create1100, ptr %var.refs, align 8
  br label %a.after1098

a.after1098:                                      ; preds = %a.create1097, %a.after1085
  %a.load21106 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1080, ptr %a.load21093, ptr %a.load21106)
  %var.load1107 = load ptr, ptr %var.a1077, align 8
  %fld.gep1108 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1107, i32 0, i32 6
  %fld.load1109 = load ptr, ptr %fld.gep1108, align 8
  %var.load1110 = load ptr, ptr %var.locals, align 8
  %a.load1111 = load ptr, ptr %var.locals, align 8
  %a.null1112 = icmp eq ptr %a.load1111, null
  br i1 %a.null1112, label %a.create1113, label %a.after1114

a.create1113:                                     ; preds = %a.after1098
  %arena.cur1115 = call ptr @dva_arena_current()
  %a.create1116 = call ptr @dva_arena_alloc(ptr %arena.cur1115, i64 24)
  %arena.cur1117 = call ptr @dva_arena_current()
  %a.buf1118 = call ptr @dva_arena_alloc(ptr %arena.cur1117, i64 128)
  %a.len.gep1119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1116, i32 0, i32 0
  store i64 0, ptr %a.len.gep1119, align 8
  %a.data.gep1120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1116, i32 0, i32 1
  store ptr %a.buf1118, ptr %a.data.gep1120, align 8
  %a.cap.gep1121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1116, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1121, align 8
  store ptr %a.create1116, ptr %var.locals, align 8
  br label %a.after1114

a.after1114:                                      ; preds = %a.create1113, %a.after1098
  %a.load21122 = load ptr, ptr %var.locals, align 8
  %var.load1123 = load ptr, ptr %var.refs, align 8
  %a.load1124 = load ptr, ptr %var.refs, align 8
  %a.null1125 = icmp eq ptr %a.load1124, null
  br i1 %a.null1125, label %a.create1126, label %a.after1127

a.create1126:                                     ; preds = %a.after1114
  %arena.cur1128 = call ptr @dva_arena_current()
  %a.create1129 = call ptr @dva_arena_alloc(ptr %arena.cur1128, i64 24)
  %arena.cur1130 = call ptr @dva_arena_current()
  %a.buf1131 = call ptr @dva_arena_alloc(ptr %arena.cur1130, i64 128)
  %a.len.gep1132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1129, i32 0, i32 0
  store i64 0, ptr %a.len.gep1132, align 8
  %a.data.gep1133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1129, i32 0, i32 1
  store ptr %a.buf1131, ptr %a.data.gep1133, align 8
  %a.cap.gep1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1129, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1134, align 8
  store ptr %a.create1129, ptr %var.refs, align 8
  br label %a.after1127

a.after1127:                                      ; preds = %a.create1126, %a.after1114
  %a.load21135 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1109, ptr %a.load21122, ptr %a.load21135)
  br label %choice.exit

choice.case1136:                                  ; preds = %choice.next1070
  %pay.gep1141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1142 = load ptr, ptr %pay.gep1141, align 8
  store ptr %payload.ptr1142, ptr %var._1143, align 8
  store ptr %payload.ptr1142, ptr %var.cy, align 8
  %var.load1144 = load ptr, ptr %var.cy, align 8
  %fld.gep1145 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1144, i32 0, i32 0
  %fld.load1146 = load ptr, ptr %fld.gep1145, align 8
  %var.load1147 = load ptr, ptr %var.locals, align 8
  %a.load1148 = load ptr, ptr %var.locals, align 8
  %a.null1149 = icmp eq ptr %a.load1148, null
  br i1 %a.null1149, label %a.create1150, label %a.after1151

choice.next1137:                                  ; preds = %choice.next1070
  %tag.gep1204 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1205 = load i64, ptr %tag.gep1204, align 8
  %tag.match1206 = icmp eq i64 %tag.id1205, 11
  br i1 %tag.match1206, label %choice.case1202, label %choice.next1203

a.create1150:                                     ; preds = %choice.case1136
  %arena.cur1152 = call ptr @dva_arena_current()
  %a.create1153 = call ptr @dva_arena_alloc(ptr %arena.cur1152, i64 24)
  %arena.cur1154 = call ptr @dva_arena_current()
  %a.buf1155 = call ptr @dva_arena_alloc(ptr %arena.cur1154, i64 128)
  %a.len.gep1156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1153, i32 0, i32 0
  store i64 0, ptr %a.len.gep1156, align 8
  %a.data.gep1157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1153, i32 0, i32 1
  store ptr %a.buf1155, ptr %a.data.gep1157, align 8
  %a.cap.gep1158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1158, align 8
  store ptr %a.create1153, ptr %var.locals, align 8
  br label %a.after1151

a.after1151:                                      ; preds = %a.create1150, %choice.case1136
  %a.load21159 = load ptr, ptr %var.locals, align 8
  %var.load1160 = load ptr, ptr %var.refs, align 8
  %a.load1161 = load ptr, ptr %var.refs, align 8
  %a.null1162 = icmp eq ptr %a.load1161, null
  br i1 %a.null1162, label %a.create1163, label %a.after1164

a.create1163:                                     ; preds = %a.after1151
  %arena.cur1165 = call ptr @dva_arena_current()
  %a.create1166 = call ptr @dva_arena_alloc(ptr %arena.cur1165, i64 24)
  %arena.cur1167 = call ptr @dva_arena_current()
  %a.buf1168 = call ptr @dva_arena_alloc(ptr %arena.cur1167, i64 128)
  %a.len.gep1169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1166, i32 0, i32 0
  store i64 0, ptr %a.len.gep1169, align 8
  %a.data.gep1170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1166, i32 0, i32 1
  store ptr %a.buf1168, ptr %a.data.gep1170, align 8
  %a.cap.gep1171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1166, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1171, align 8
  store ptr %a.create1166, ptr %var.refs, align 8
  br label %a.after1164

a.after1164:                                      ; preds = %a.create1163, %a.after1151
  %a.load21172 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1146, ptr %a.load21159, ptr %a.load21172)
  %var.load1173 = load ptr, ptr %var.cy, align 8
  %fld.gep1174 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1173, i32 0, i32 1
  %fld.load1175 = load ptr, ptr %fld.gep1174, align 8
  %var.load1176 = load ptr, ptr %var.locals, align 8
  %a.load1177 = load ptr, ptr %var.locals, align 8
  %a.null1178 = icmp eq ptr %a.load1177, null
  br i1 %a.null1178, label %a.create1179, label %a.after1180

a.create1179:                                     ; preds = %a.after1164
  %arena.cur1181 = call ptr @dva_arena_current()
  %a.create1182 = call ptr @dva_arena_alloc(ptr %arena.cur1181, i64 24)
  %arena.cur1183 = call ptr @dva_arena_current()
  %a.buf1184 = call ptr @dva_arena_alloc(ptr %arena.cur1183, i64 128)
  %a.len.gep1185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1182, i32 0, i32 0
  store i64 0, ptr %a.len.gep1185, align 8
  %a.data.gep1186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1182, i32 0, i32 1
  store ptr %a.buf1184, ptr %a.data.gep1186, align 8
  %a.cap.gep1187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1182, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1187, align 8
  store ptr %a.create1182, ptr %var.locals, align 8
  br label %a.after1180

a.after1180:                                      ; preds = %a.create1179, %a.after1164
  %a.load21188 = load ptr, ptr %var.locals, align 8
  %var.load1189 = load ptr, ptr %var.refs, align 8
  %a.load1190 = load ptr, ptr %var.refs, align 8
  %a.null1191 = icmp eq ptr %a.load1190, null
  br i1 %a.null1191, label %a.create1192, label %a.after1193

a.create1192:                                     ; preds = %a.after1180
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
  store ptr %a.create1195, ptr %var.refs, align 8
  br label %a.after1193

a.after1193:                                      ; preds = %a.create1192, %a.after1180
  %a.load21201 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1175, ptr %a.load21188, ptr %a.load21201)
  br label %choice.exit

choice.case1202:                                  ; preds = %choice.next1137
  %pay.gep1207 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1208 = load ptr, ptr %pay.gep1207, align 8
  store ptr %payload.ptr1208, ptr %var._1209, align 8
  store ptr %payload.ptr1208, ptr %var.ce, align 8
  %var.load1210 = load ptr, ptr %var.ce, align 8
  %fld.gep1211 = getelementptr inbounds { ptr, ptr }, ptr %var.load1210, i32 0, i32 0
  %fld.load1212 = load ptr, ptr %fld.gep1211, align 8
  %var.load1213 = load ptr, ptr %var.locals, align 8
  %a.load1214 = load ptr, ptr %var.locals, align 8
  %a.null1215 = icmp eq ptr %a.load1214, null
  br i1 %a.null1215, label %a.create1216, label %a.after1217

choice.next1203:                                  ; preds = %choice.next1137
  %tag.gep1270 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1271 = load i64, ptr %tag.gep1270, align 8
  %tag.match1272 = icmp eq i64 %tag.id1271, 13
  br i1 %tag.match1272, label %choice.case1268, label %choice.next1269

a.create1216:                                     ; preds = %choice.case1202
  %arena.cur1218 = call ptr @dva_arena_current()
  %a.create1219 = call ptr @dva_arena_alloc(ptr %arena.cur1218, i64 24)
  %arena.cur1220 = call ptr @dva_arena_current()
  %a.buf1221 = call ptr @dva_arena_alloc(ptr %arena.cur1220, i64 128)
  %a.len.gep1222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1219, i32 0, i32 0
  store i64 0, ptr %a.len.gep1222, align 8
  %a.data.gep1223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1219, i32 0, i32 1
  store ptr %a.buf1221, ptr %a.data.gep1223, align 8
  %a.cap.gep1224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1219, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1224, align 8
  store ptr %a.create1219, ptr %var.locals, align 8
  br label %a.after1217

a.after1217:                                      ; preds = %a.create1216, %choice.case1202
  %a.load21225 = load ptr, ptr %var.locals, align 8
  %var.load1226 = load ptr, ptr %var.refs, align 8
  %a.load1227 = load ptr, ptr %var.refs, align 8
  %a.null1228 = icmp eq ptr %a.load1227, null
  br i1 %a.null1228, label %a.create1229, label %a.after1230

a.create1229:                                     ; preds = %a.after1217
  %arena.cur1231 = call ptr @dva_arena_current()
  %a.create1232 = call ptr @dva_arena_alloc(ptr %arena.cur1231, i64 24)
  %arena.cur1233 = call ptr @dva_arena_current()
  %a.buf1234 = call ptr @dva_arena_alloc(ptr %arena.cur1233, i64 128)
  %a.len.gep1235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1232, i32 0, i32 0
  store i64 0, ptr %a.len.gep1235, align 8
  %a.data.gep1236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1232, i32 0, i32 1
  store ptr %a.buf1234, ptr %a.data.gep1236, align 8
  %a.cap.gep1237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1232, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1237, align 8
  store ptr %a.create1232, ptr %var.refs, align 8
  br label %a.after1230

a.after1230:                                      ; preds = %a.create1229, %a.after1217
  %a.load21238 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1212, ptr %a.load21225, ptr %a.load21238)
  %var.load1239 = load ptr, ptr %var.ce, align 8
  %fld.gep1240 = getelementptr inbounds { ptr, ptr }, ptr %var.load1239, i32 0, i32 1
  %fld.load1241 = load ptr, ptr %fld.gep1240, align 8
  %var.load1242 = load ptr, ptr %var.locals, align 8
  %a.load1243 = load ptr, ptr %var.locals, align 8
  %a.null1244 = icmp eq ptr %a.load1243, null
  br i1 %a.null1244, label %a.create1245, label %a.after1246

a.create1245:                                     ; preds = %a.after1230
  %arena.cur1247 = call ptr @dva_arena_current()
  %a.create1248 = call ptr @dva_arena_alloc(ptr %arena.cur1247, i64 24)
  %arena.cur1249 = call ptr @dva_arena_current()
  %a.buf1250 = call ptr @dva_arena_alloc(ptr %arena.cur1249, i64 128)
  %a.len.gep1251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 0
  store i64 0, ptr %a.len.gep1251, align 8
  %a.data.gep1252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 1
  store ptr %a.buf1250, ptr %a.data.gep1252, align 8
  %a.cap.gep1253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1253, align 8
  store ptr %a.create1248, ptr %var.locals, align 8
  br label %a.after1246

a.after1246:                                      ; preds = %a.create1245, %a.after1230
  %a.load21254 = load ptr, ptr %var.locals, align 8
  %var.load1255 = load ptr, ptr %var.refs, align 8
  %a.load1256 = load ptr, ptr %var.refs, align 8
  %a.null1257 = icmp eq ptr %a.load1256, null
  br i1 %a.null1257, label %a.create1258, label %a.after1259

a.create1258:                                     ; preds = %a.after1246
  %arena.cur1260 = call ptr @dva_arena_current()
  %a.create1261 = call ptr @dva_arena_alloc(ptr %arena.cur1260, i64 24)
  %arena.cur1262 = call ptr @dva_arena_current()
  %a.buf1263 = call ptr @dva_arena_alloc(ptr %arena.cur1262, i64 128)
  %a.len.gep1264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1261, i32 0, i32 0
  store i64 0, ptr %a.len.gep1264, align 8
  %a.data.gep1265 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1261, i32 0, i32 1
  store ptr %a.buf1263, ptr %a.data.gep1265, align 8
  %a.cap.gep1266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1261, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1266, align 8
  store ptr %a.create1261, ptr %var.refs, align 8
  br label %a.after1259

a.after1259:                                      ; preds = %a.create1258, %a.after1246
  %a.load21267 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1241, ptr %a.load21254, ptr %a.load21267)
  br label %choice.exit

choice.case1268:                                  ; preds = %choice.next1203
  %pay.gep1273 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1274 = load ptr, ptr %pay.gep1273, align 8
  store ptr %payload.ptr1274, ptr %var._1275, align 8
  store ptr %payload.ptr1274, ptr %var.r, align 8
  %var.load1276 = load ptr, ptr %var.r, align 8
  %fld.gep1277 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1276, i32 0, i32 0
  %fld.load1278 = load i1, ptr %fld.gep1277, align 1
  br i1 %fld.load1278, label %choice.then1279, label %choice.exit1280

choice.next1269:                                  ; preds = %choice.next1203
  %tag.gep1425 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1426 = load i64, ptr %tag.gep1425, align 8
  %tag.match1427 = icmp eq i64 %tag.id1426, 36
  br i1 %tag.match1427, label %choice.case1423, label %choice.next1424

choice.then1279:                                  ; preds = %choice.case1268
  %var.load1281 = load ptr, ptr %var.r, align 8
  %fld.gep1282 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1281, i32 0, i32 2
  %fld.load1283 = load ptr, ptr %fld.gep1282, align 8
  %var.load1284 = load ptr, ptr %var.locals, align 8
  %a.load1285 = load ptr, ptr %var.locals, align 8
  %a.null1286 = icmp eq ptr %a.load1285, null
  br i1 %a.null1286, label %a.create1287, label %a.after1288

choice.exit1280:                                  ; preds = %a.after1301, %choice.case1268
  %var.load1310 = load ptr, ptr %var.r, align 8
  %fld.gep1311 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1310, i32 0, i32 1
  %fld.load1312 = load i1, ptr %fld.gep1311, align 1
  br i1 %fld.load1312, label %choice.then1313, label %choice.exit1314

a.create1287:                                     ; preds = %choice.then1279
  %arena.cur1289 = call ptr @dva_arena_current()
  %a.create1290 = call ptr @dva_arena_alloc(ptr %arena.cur1289, i64 24)
  %arena.cur1291 = call ptr @dva_arena_current()
  %a.buf1292 = call ptr @dva_arena_alloc(ptr %arena.cur1291, i64 128)
  %a.len.gep1293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1290, i32 0, i32 0
  store i64 0, ptr %a.len.gep1293, align 8
  %a.data.gep1294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1290, i32 0, i32 1
  store ptr %a.buf1292, ptr %a.data.gep1294, align 8
  %a.cap.gep1295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1290, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1295, align 8
  store ptr %a.create1290, ptr %var.locals, align 8
  br label %a.after1288

a.after1288:                                      ; preds = %a.create1287, %choice.then1279
  %a.load21296 = load ptr, ptr %var.locals, align 8
  %var.load1297 = load ptr, ptr %var.refs, align 8
  %a.load1298 = load ptr, ptr %var.refs, align 8
  %a.null1299 = icmp eq ptr %a.load1298, null
  br i1 %a.null1299, label %a.create1300, label %a.after1301

a.create1300:                                     ; preds = %a.after1288
  %arena.cur1302 = call ptr @dva_arena_current()
  %a.create1303 = call ptr @dva_arena_alloc(ptr %arena.cur1302, i64 24)
  %arena.cur1304 = call ptr @dva_arena_current()
  %a.buf1305 = call ptr @dva_arena_alloc(ptr %arena.cur1304, i64 128)
  %a.len.gep1306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 0
  store i64 0, ptr %a.len.gep1306, align 8
  %a.data.gep1307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 1
  store ptr %a.buf1305, ptr %a.data.gep1307, align 8
  %a.cap.gep1308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1303, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1308, align 8
  store ptr %a.create1303, ptr %var.refs, align 8
  br label %a.after1301

a.after1301:                                      ; preds = %a.create1300, %a.after1288
  %a.load21309 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1283, ptr %a.load21296, ptr %a.load21309)
  br label %choice.exit1280

choice.then1313:                                  ; preds = %choice.exit1280
  %var.load1315 = load ptr, ptr %var.r, align 8
  %fld.gep1316 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1315, i32 0, i32 3
  %fld.load1317 = load ptr, ptr %fld.gep1316, align 8
  %tag.gep1321 = getelementptr inbounds { i64, ptr }, ptr %fld.load1317, i32 0, i32 0
  %tag.id1322 = load i64, ptr %tag.gep1321, align 8
  %tag.match1323 = icmp eq i64 %tag.id1322, 3
  br i1 %tag.match1323, label %choice.case1319, label %choice.next1320

choice.exit1314:                                  ; preds = %choice.exit1318, %choice.exit1280
  br label %choice.exit

choice.exit1318:                                  ; preds = %a.after1414, %choice.exit1364
  br label %choice.exit1314

choice.case1319:                                  ; preds = %choice.then1313
  %pay.gep1324 = getelementptr inbounds { i64, ptr }, ptr %fld.load1317, i32 0, i32 1
  %payload.ptr1325 = load ptr, ptr %pay.gep1324, align 8
  store ptr %payload.ptr1325, ptr %var._1326, align 8
  store ptr %payload.ptr1325, ptr %var.v1327, align 8
  %var.load1328 = load ptr, ptr %var.v1327, align 8
  %eq.lhs.len1329 = getelementptr inbounds { i64, ptr }, ptr %var.load1328, i32 0, i32 0
  %eq.lhs.len1330 = load i64, ptr %eq.lhs.len1329, align 8
  %eq.lhs.len1331 = and i64 %eq.lhs.len1330, 281474976710655
  %str.tag1332 = lshr i64 %eq.lhs.len1330, 48
  %str.immortal1333 = icmp eq i64 %str.tag1332, 0
  br i1 %str.immortal1333, label %str_ok1335, label %str_gen_check1334

choice.next1320:                                  ; preds = %choice.then1313
  %var.load1394 = load ptr, ptr %var.r, align 8
  %fld.gep1395 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1394, i32 0, i32 3
  %fld.load1396 = load ptr, ptr %fld.gep1395, align 8
  %var.load1397 = load ptr, ptr %var.locals, align 8
  %a.load1398 = load ptr, ptr %var.locals, align 8
  %a.null1399 = icmp eq ptr %a.load1398, null
  br i1 %a.null1399, label %a.create1400, label %a.after1401

str_gen_check1334:                                ; preds = %choice.case1319
  %arena.cur1337 = call ptr @dva_arena_current()
  %tag.valid1338 = call i1 @dva_arena_validate_tag(ptr %arena.cur1337, i64 %str.tag1332)
  br i1 %tag.valid1338, label %str_ok1335, label %str_stale1336

str_ok1335:                                       ; preds = %str_stale1336, %str_gen_check1334, %choice.case1319
  %eq.rhs.len1339 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1340 = and i64 %eq.rhs.len1339, 281474976710655
  %str.tag1341 = lshr i64 %eq.rhs.len1339, 48
  %str.immortal1342 = icmp eq i64 %str.tag1341, 0
  br i1 %str.immortal1342, label %str_ok1344, label %str_gen_check1343

str_stale1336:                                    ; preds = %str_gen_check1334
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1335

str_gen_check1343:                                ; preds = %str_ok1335
  %arena.cur1346 = call ptr @dva_arena_current()
  %tag.valid1347 = call i1 @dva_arena_validate_tag(ptr %arena.cur1346, i64 %str.tag1341)
  br i1 %tag.valid1347, label %str_ok1344, label %str_stale1345

str_ok1344:                                       ; preds = %str_stale1345, %str_gen_check1343, %str_ok1335
  %eq.len1348 = icmp eq i64 %eq.lhs.len1331, %eq.rhs.len1340
  br i1 %eq.len1348, label %str.eq.then1349, label %str.eq.else1350

str_stale1345:                                    ; preds = %str_gen_check1343
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1344

str.eq.then1349:                                  ; preds = %str_ok1344
  %eq.lhs.data1352 = getelementptr inbounds { i64, ptr }, ptr %var.load1328, i32 0, i32 1
  %eq.lhs.data1353 = load ptr, ptr %eq.lhs.data1352, align 8
  %eq.rhs.data1354 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1355 = call i32 @memcmp(ptr %eq.lhs.data1353, ptr %eq.rhs.data1354, i64 %eq.lhs.len1331)
  %eq.cmp.zero1356 = icmp eq i32 %eq.memcmp1355, 0
  br label %str.eq.merge1351

str.eq.else1350:                                  ; preds = %str_ok1344
  br label %str.eq.merge1351

str.eq.merge1351:                                 ; preds = %str.eq.else1350, %str.eq.then1349
  %str.eq.result1357 = phi i1 [ %eq.cmp.zero1356, %str.eq.then1349 ], [ false, %str.eq.else1350 ]
  br i1 %str.eq.result1357, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %str.eq.merge1351
  %var.load1358 = load ptr, ptr %var.r, align 8
  %fld.gep1359 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1358, i32 0, i32 0
  %fld.load1360 = load i1, ptr %fld.gep1359, align 1
  %nottmp1361 = xor i1 %fld.load1360, true
  br label %and.14.exit

and.14.else:                                      ; preds = %str.eq.merge1351
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %nottmp1361, %and.14.then ], [ %str.eq.result1357, %and.14.else ]
  %nottmp1362 = xor i1 %and.14.phi, true
  br i1 %nottmp1362, label %choice.then1363, label %choice.exit1364

choice.then1363:                                  ; preds = %and.14.exit
  %var.load1365 = load ptr, ptr %var.r, align 8
  %fld.gep1366 = getelementptr inbounds { i1, i1, ptr, ptr }, ptr %var.load1365, i32 0, i32 3
  %fld.load1367 = load ptr, ptr %fld.gep1366, align 8
  %var.load1368 = load ptr, ptr %var.locals, align 8
  %a.load1369 = load ptr, ptr %var.locals, align 8
  %a.null1370 = icmp eq ptr %a.load1369, null
  br i1 %a.null1370, label %a.create1371, label %a.after1372

choice.exit1364:                                  ; preds = %a.after1385, %and.14.exit
  br label %choice.exit1318

a.create1371:                                     ; preds = %choice.then1363
  %arena.cur1373 = call ptr @dva_arena_current()
  %a.create1374 = call ptr @dva_arena_alloc(ptr %arena.cur1373, i64 24)
  %arena.cur1375 = call ptr @dva_arena_current()
  %a.buf1376 = call ptr @dva_arena_alloc(ptr %arena.cur1375, i64 128)
  %a.len.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 0
  store i64 0, ptr %a.len.gep1377, align 8
  %a.data.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 1
  store ptr %a.buf1376, ptr %a.data.gep1378, align 8
  %a.cap.gep1379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1379, align 8
  store ptr %a.create1374, ptr %var.locals, align 8
  br label %a.after1372

a.after1372:                                      ; preds = %a.create1371, %choice.then1363
  %a.load21380 = load ptr, ptr %var.locals, align 8
  %var.load1381 = load ptr, ptr %var.refs, align 8
  %a.load1382 = load ptr, ptr %var.refs, align 8
  %a.null1383 = icmp eq ptr %a.load1382, null
  br i1 %a.null1383, label %a.create1384, label %a.after1385

a.create1384:                                     ; preds = %a.after1372
  %arena.cur1386 = call ptr @dva_arena_current()
  %a.create1387 = call ptr @dva_arena_alloc(ptr %arena.cur1386, i64 24)
  %arena.cur1388 = call ptr @dva_arena_current()
  %a.buf1389 = call ptr @dva_arena_alloc(ptr %arena.cur1388, i64 128)
  %a.len.gep1390 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1387, i32 0, i32 0
  store i64 0, ptr %a.len.gep1390, align 8
  %a.data.gep1391 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1387, i32 0, i32 1
  store ptr %a.buf1389, ptr %a.data.gep1391, align 8
  %a.cap.gep1392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1387, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1392, align 8
  store ptr %a.create1387, ptr %var.refs, align 8
  br label %a.after1385

a.after1385:                                      ; preds = %a.create1384, %a.after1372
  %a.load21393 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1367, ptr %a.load21380, ptr %a.load21393)
  br label %choice.exit1364

a.create1400:                                     ; preds = %choice.next1320
  %arena.cur1402 = call ptr @dva_arena_current()
  %a.create1403 = call ptr @dva_arena_alloc(ptr %arena.cur1402, i64 24)
  %arena.cur1404 = call ptr @dva_arena_current()
  %a.buf1405 = call ptr @dva_arena_alloc(ptr %arena.cur1404, i64 128)
  %a.len.gep1406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1403, i32 0, i32 0
  store i64 0, ptr %a.len.gep1406, align 8
  %a.data.gep1407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1403, i32 0, i32 1
  store ptr %a.buf1405, ptr %a.data.gep1407, align 8
  %a.cap.gep1408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1403, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1408, align 8
  store ptr %a.create1403, ptr %var.locals, align 8
  br label %a.after1401

a.after1401:                                      ; preds = %a.create1400, %choice.next1320
  %a.load21409 = load ptr, ptr %var.locals, align 8
  %var.load1410 = load ptr, ptr %var.refs, align 8
  %a.load1411 = load ptr, ptr %var.refs, align 8
  %a.null1412 = icmp eq ptr %a.load1411, null
  br i1 %a.null1412, label %a.create1413, label %a.after1414

a.create1413:                                     ; preds = %a.after1401
  %arena.cur1415 = call ptr @dva_arena_current()
  %a.create1416 = call ptr @dva_arena_alloc(ptr %arena.cur1415, i64 24)
  %arena.cur1417 = call ptr @dva_arena_current()
  %a.buf1418 = call ptr @dva_arena_alloc(ptr %arena.cur1417, i64 128)
  %a.len.gep1419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1416, i32 0, i32 0
  store i64 0, ptr %a.len.gep1419, align 8
  %a.data.gep1420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1416, i32 0, i32 1
  store ptr %a.buf1418, ptr %a.data.gep1420, align 8
  %a.cap.gep1421 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1416, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1421, align 8
  store ptr %a.create1416, ptr %var.refs, align 8
  br label %a.after1414

a.after1414:                                      ; preds = %a.create1413, %a.after1401
  %a.load21422 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1396, ptr %a.load21409, ptr %a.load21422)
  br label %choice.exit1318

choice.case1423:                                  ; preds = %choice.next1269
  %pay.gep1428 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1429 = load ptr, ptr %pay.gep1428, align 8
  store ptr %payload.ptr1429, ptr %var._1430, align 8
  store ptr %payload.ptr1429, ptr %var.na, align 8
  %var.load1431 = load ptr, ptr %var.na, align 8
  %fld.gep1432 = getelementptr inbounds { ptr, ptr }, ptr %var.load1431, i32 0, i32 1
  %fld.load1433 = load ptr, ptr %fld.gep1432, align 8
  %var.load1434 = load ptr, ptr %var.locals, align 8
  %a.load1435 = load ptr, ptr %var.locals, align 8
  %a.null1436 = icmp eq ptr %a.load1435, null
  br i1 %a.null1436, label %a.create1437, label %a.after1438

choice.next1424:                                  ; preds = %choice.next1269
  %tag.gep1462 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1463 = load i64, ptr %tag.gep1462, align 8
  %tag.match1464 = icmp eq i64 %tag.id1463, 18
  br i1 %tag.match1464, label %choice.case1460, label %choice.next1461

a.create1437:                                     ; preds = %choice.case1423
  %arena.cur1439 = call ptr @dva_arena_current()
  %a.create1440 = call ptr @dva_arena_alloc(ptr %arena.cur1439, i64 24)
  %arena.cur1441 = call ptr @dva_arena_current()
  %a.buf1442 = call ptr @dva_arena_alloc(ptr %arena.cur1441, i64 128)
  %a.len.gep1443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1440, i32 0, i32 0
  store i64 0, ptr %a.len.gep1443, align 8
  %a.data.gep1444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1440, i32 0, i32 1
  store ptr %a.buf1442, ptr %a.data.gep1444, align 8
  %a.cap.gep1445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1440, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1445, align 8
  store ptr %a.create1440, ptr %var.locals, align 8
  br label %a.after1438

a.after1438:                                      ; preds = %a.create1437, %choice.case1423
  %a.load21446 = load ptr, ptr %var.locals, align 8
  %var.load1447 = load ptr, ptr %var.refs, align 8
  %a.load1448 = load ptr, ptr %var.refs, align 8
  %a.null1449 = icmp eq ptr %a.load1448, null
  br i1 %a.null1449, label %a.create1450, label %a.after1451

a.create1450:                                     ; preds = %a.after1438
  %arena.cur1452 = call ptr @dva_arena_current()
  %a.create1453 = call ptr @dva_arena_alloc(ptr %arena.cur1452, i64 24)
  %arena.cur1454 = call ptr @dva_arena_current()
  %a.buf1455 = call ptr @dva_arena_alloc(ptr %arena.cur1454, i64 128)
  %a.len.gep1456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1453, i32 0, i32 0
  store i64 0, ptr %a.len.gep1456, align 8
  %a.data.gep1457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1453, i32 0, i32 1
  store ptr %a.buf1455, ptr %a.data.gep1457, align 8
  %a.cap.gep1458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1453, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1458, align 8
  store ptr %a.create1453, ptr %var.refs, align 8
  br label %a.after1451

a.after1451:                                      ; preds = %a.create1450, %a.after1438
  %a.load21459 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1433, ptr %a.load21446, ptr %a.load21459)
  br label %choice.exit

choice.case1460:                                  ; preds = %choice.next1424
  %pay.gep1465 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1466 = load ptr, ptr %pay.gep1465, align 8
  store ptr %payload.ptr1466, ptr %var._1467, align 8
  store ptr %payload.ptr1466, ptr %var.v1468, align 8
  %var.load1469 = load ptr, ptr %var.v1468, align 8
  %fld.gep1470 = getelementptr inbounds { ptr, ptr }, ptr %var.load1469, i32 0, i32 1
  %fld.load1471 = load ptr, ptr %fld.gep1470, align 8
  %arr.cycle.len1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1471, i32 0, i32 0
  %arr.cycle.len1473 = load i64, ptr %arr.cycle.len1472, align 8
  %arr.cycle.data1474 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1471, i32 0, i32 1
  %arr.cycle.data1475 = load ptr, ptr %arr.cycle.data1474, align 8
  store i64 0, ptr %loop.idx.15, align 8
  %cycle.prev.u1476 = load ptr, ptr %var._1467, align 8
  br label %loop.header.15

choice.next1461:                                  ; preds = %choice.next1424
  %tag.gep1516 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1517 = load i64, ptr %tag.gep1516, align 8
  %tag.match1518 = icmp eq i64 %tag.id1517, 25
  br i1 %tag.match1518, label %choice.case1514, label %choice.next1515

loop.header.15:                                   ; preds = %loop.latch.15, %choice.case1460
  %counter.load1477 = load i64, ptr %loop.idx.15, align 8
  %loop.cond1478 = icmp slt i64 %counter.load1477, %arr.cycle.len1473
  br i1 %loop.cond1478, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i1479 = sub i64 %counter.load1477, 0
  store i64 1, ptr %loop.step.15, align 8
  %arr.elem.gep1480 = getelementptr i64, ptr %arr.cycle.data1475, i64 %counter.load1477
  %arr.elem.raw1481 = load i64, ptr %arr.elem.gep1480, align 8
  %slot.i2p1482 = inttoptr i64 %arr.elem.raw1481 to ptr
  store i64 %loop.rel.i1479, ptr %var._i1483, align 8
  store ptr %slot.i2p1482, ptr %var._1484, align 8
  store ptr %slot.i2p1482, ptr %var.varg, align 8
  %var.load1485 = load ptr, ptr %var.varg, align 8
  %var.load1486 = load ptr, ptr %var.locals, align 8
  %a.load1487 = load ptr, ptr %var.locals, align 8
  %a.null1488 = icmp eq ptr %a.load1487, null
  br i1 %a.null1488, label %a.create1489, label %a.after1490

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %a.after1503
  %step.val1512 = load i64, ptr %loop.step.15, align 8
  %loop.next1513 = add i64 %counter.load1477, %step.val1512
  store i64 %loop.next1513, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  store ptr %cycle.prev.u1476, ptr %var._1467, align 8
  br label %choice.exit

a.create1489:                                     ; preds = %loop.body.15
  %arena.cur1491 = call ptr @dva_arena_current()
  %a.create1492 = call ptr @dva_arena_alloc(ptr %arena.cur1491, i64 24)
  %arena.cur1493 = call ptr @dva_arena_current()
  %a.buf1494 = call ptr @dva_arena_alloc(ptr %arena.cur1493, i64 128)
  %a.len.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 0
  store i64 0, ptr %a.len.gep1495, align 8
  %a.data.gep1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 1
  store ptr %a.buf1494, ptr %a.data.gep1496, align 8
  %a.cap.gep1497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1492, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1497, align 8
  store ptr %a.create1492, ptr %var.locals, align 8
  br label %a.after1490

a.after1490:                                      ; preds = %a.create1489, %loop.body.15
  %a.load21498 = load ptr, ptr %var.locals, align 8
  %var.load1499 = load ptr, ptr %var.refs, align 8
  %a.load1500 = load ptr, ptr %var.refs, align 8
  %a.null1501 = icmp eq ptr %a.load1500, null
  br i1 %a.null1501, label %a.create1502, label %a.after1503

a.create1502:                                     ; preds = %a.after1490
  %arena.cur1504 = call ptr @dva_arena_current()
  %a.create1505 = call ptr @dva_arena_alloc(ptr %arena.cur1504, i64 24)
  %arena.cur1506 = call ptr @dva_arena_current()
  %a.buf1507 = call ptr @dva_arena_alloc(ptr %arena.cur1506, i64 128)
  %a.len.gep1508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1505, i32 0, i32 0
  store i64 0, ptr %a.len.gep1508, align 8
  %a.data.gep1509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1505, i32 0, i32 1
  store ptr %a.buf1507, ptr %a.data.gep1509, align 8
  %a.cap.gep1510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1505, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1510, align 8
  store ptr %a.create1505, ptr %var.refs, align 8
  br label %a.after1503

a.after1503:                                      ; preds = %a.create1502, %a.after1490
  %a.load21511 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1485, ptr %a.load21498, ptr %a.load21511)
  br label %loop.latch.15

choice.case1514:                                  ; preds = %choice.next1461
  %pay.gep1519 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1520 = load ptr, ptr %pay.gep1519, align 8
  store ptr %payload.ptr1520, ptr %var._1521, align 8
  store ptr %payload.ptr1520, ptr %var.cp, align 8
  %var.load1522 = load ptr, ptr %var.cp, align 8
  %var.load1523 = load ptr, ptr %var.locals, align 8
  %a.load1524 = load ptr, ptr %var.locals, align 8
  %a.null1525 = icmp eq ptr %a.load1524, null
  br i1 %a.null1525, label %a.create1526, label %a.after1527

choice.next1515:                                  ; preds = %choice.next1461
  %tag.gep1551 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1552 = load i64, ptr %tag.gep1551, align 8
  %tag.match1553 = icmp eq i64 %tag.id1552, 27
  br i1 %tag.match1553, label %choice.case1549, label %choice.next1550

a.create1526:                                     ; preds = %choice.case1514
  %arena.cur1528 = call ptr @dva_arena_current()
  %a.create1529 = call ptr @dva_arena_alloc(ptr %arena.cur1528, i64 24)
  %arena.cur1530 = call ptr @dva_arena_current()
  %a.buf1531 = call ptr @dva_arena_alloc(ptr %arena.cur1530, i64 128)
  %a.len.gep1532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1529, i32 0, i32 0
  store i64 0, ptr %a.len.gep1532, align 8
  %a.data.gep1533 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1529, i32 0, i32 1
  store ptr %a.buf1531, ptr %a.data.gep1533, align 8
  %a.cap.gep1534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1529, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1534, align 8
  store ptr %a.create1529, ptr %var.locals, align 8
  br label %a.after1527

a.after1527:                                      ; preds = %a.create1526, %choice.case1514
  %a.load21535 = load ptr, ptr %var.locals, align 8
  %var.load1536 = load ptr, ptr %var.refs, align 8
  %a.load1537 = load ptr, ptr %var.refs, align 8
  %a.null1538 = icmp eq ptr %a.load1537, null
  br i1 %a.null1538, label %a.create1539, label %a.after1540

a.create1539:                                     ; preds = %a.after1527
  %arena.cur1541 = call ptr @dva_arena_current()
  %a.create1542 = call ptr @dva_arena_alloc(ptr %arena.cur1541, i64 24)
  %arena.cur1543 = call ptr @dva_arena_current()
  %a.buf1544 = call ptr @dva_arena_alloc(ptr %arena.cur1543, i64 128)
  %a.len.gep1545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 0
  store i64 0, ptr %a.len.gep1545, align 8
  %a.data.gep1546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 1
  store ptr %a.buf1544, ptr %a.data.gep1546, align 8
  %a.cap.gep1547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1547, align 8
  store ptr %a.create1542, ptr %var.refs, align 8
  br label %a.after1540

a.after1540:                                      ; preds = %a.create1539, %a.after1527
  %a.load21548 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1522, ptr %a.load21535, ptr %a.load21548)
  br label %choice.exit

choice.case1549:                                  ; preds = %choice.next1515
  %pay.gep1554 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1555 = load ptr, ptr %pay.gep1554, align 8
  store ptr %payload.ptr1555, ptr %var._1556, align 8
  store ptr %payload.ptr1555, ptr %var.bc, align 8
  %var.load1557 = load ptr, ptr %var.bc, align 8
  %var.load1558 = load ptr, ptr %var.locals, align 8
  %a.load1559 = load ptr, ptr %var.locals, align 8
  %a.null1560 = icmp eq ptr %a.load1559, null
  br i1 %a.null1560, label %a.create1561, label %a.after1562

choice.next1550:                                  ; preds = %choice.next1515
  %tag.gep1586 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1587 = load i64, ptr %tag.gep1586, align 8
  %tag.match1588 = icmp eq i64 %tag.id1587, 22
  br i1 %tag.match1588, label %choice.case1584, label %choice.next1585

a.create1561:                                     ; preds = %choice.case1549
  %arena.cur1563 = call ptr @dva_arena_current()
  %a.create1564 = call ptr @dva_arena_alloc(ptr %arena.cur1563, i64 24)
  %arena.cur1565 = call ptr @dva_arena_current()
  %a.buf1566 = call ptr @dva_arena_alloc(ptr %arena.cur1565, i64 128)
  %a.len.gep1567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1564, i32 0, i32 0
  store i64 0, ptr %a.len.gep1567, align 8
  %a.data.gep1568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1564, i32 0, i32 1
  store ptr %a.buf1566, ptr %a.data.gep1568, align 8
  %a.cap.gep1569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1564, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1569, align 8
  store ptr %a.create1564, ptr %var.locals, align 8
  br label %a.after1562

a.after1562:                                      ; preds = %a.create1561, %choice.case1549
  %a.load21570 = load ptr, ptr %var.locals, align 8
  %var.load1571 = load ptr, ptr %var.refs, align 8
  %a.load1572 = load ptr, ptr %var.refs, align 8
  %a.null1573 = icmp eq ptr %a.load1572, null
  br i1 %a.null1573, label %a.create1574, label %a.after1575

a.create1574:                                     ; preds = %a.after1562
  %arena.cur1576 = call ptr @dva_arena_current()
  %a.create1577 = call ptr @dva_arena_alloc(ptr %arena.cur1576, i64 24)
  %arena.cur1578 = call ptr @dva_arena_current()
  %a.buf1579 = call ptr @dva_arena_alloc(ptr %arena.cur1578, i64 128)
  %a.len.gep1580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1577, i32 0, i32 0
  store i64 0, ptr %a.len.gep1580, align 8
  %a.data.gep1581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1577, i32 0, i32 1
  store ptr %a.buf1579, ptr %a.data.gep1581, align 8
  %a.cap.gep1582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1577, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1582, align 8
  store ptr %a.create1577, ptr %var.refs, align 8
  br label %a.after1575

a.after1575:                                      ; preds = %a.create1574, %a.after1562
  %a.load21583 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1557, ptr %a.load21570, ptr %a.load21583)
  br label %choice.exit

choice.case1584:                                  ; preds = %choice.next1550
  %pay.gep1589 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1590 = load ptr, ptr %pay.gep1589, align 8
  store ptr %payload.ptr1590, ptr %var._1591, align 8
  store ptr %payload.ptr1590, ptr %var.tc, align 8
  %var.load1592 = load ptr, ptr %var.tc, align 8
  %fld.gep1593 = getelementptr inbounds { ptr, ptr }, ptr %var.load1592, i32 0, i32 1
  %fld.load1594 = load ptr, ptr %fld.gep1593, align 8
  %var.load1595 = load ptr, ptr %var.locals, align 8
  %a.load1596 = load ptr, ptr %var.locals, align 8
  %a.null1597 = icmp eq ptr %a.load1596, null
  br i1 %a.null1597, label %a.create1598, label %a.after1599

choice.next1585:                                  ; preds = %choice.next1550
  %tag.gep1623 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1624 = load i64, ptr %tag.gep1623, align 8
  %tag.match1625 = icmp eq i64 %tag.id1624, 30
  br i1 %tag.match1625, label %choice.case1621, label %choice.next1622

a.create1598:                                     ; preds = %choice.case1584
  %arena.cur1600 = call ptr @dva_arena_current()
  %a.create1601 = call ptr @dva_arena_alloc(ptr %arena.cur1600, i64 24)
  %arena.cur1602 = call ptr @dva_arena_current()
  %a.buf1603 = call ptr @dva_arena_alloc(ptr %arena.cur1602, i64 128)
  %a.len.gep1604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1601, i32 0, i32 0
  store i64 0, ptr %a.len.gep1604, align 8
  %a.data.gep1605 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1601, i32 0, i32 1
  store ptr %a.buf1603, ptr %a.data.gep1605, align 8
  %a.cap.gep1606 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1601, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1606, align 8
  store ptr %a.create1601, ptr %var.locals, align 8
  br label %a.after1599

a.after1599:                                      ; preds = %a.create1598, %choice.case1584
  %a.load21607 = load ptr, ptr %var.locals, align 8
  %var.load1608 = load ptr, ptr %var.refs, align 8
  %a.load1609 = load ptr, ptr %var.refs, align 8
  %a.null1610 = icmp eq ptr %a.load1609, null
  br i1 %a.null1610, label %a.create1611, label %a.after1612

a.create1611:                                     ; preds = %a.after1599
  %arena.cur1613 = call ptr @dva_arena_current()
  %a.create1614 = call ptr @dva_arena_alloc(ptr %arena.cur1613, i64 24)
  %arena.cur1615 = call ptr @dva_arena_current()
  %a.buf1616 = call ptr @dva_arena_alloc(ptr %arena.cur1615, i64 128)
  %a.len.gep1617 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1614, i32 0, i32 0
  store i64 0, ptr %a.len.gep1617, align 8
  %a.data.gep1618 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1614, i32 0, i32 1
  store ptr %a.buf1616, ptr %a.data.gep1618, align 8
  %a.cap.gep1619 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1614, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1619, align 8
  store ptr %a.create1614, ptr %var.refs, align 8
  br label %a.after1612

a.after1612:                                      ; preds = %a.create1611, %a.after1599
  %a.load21620 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1594, ptr %a.load21607, ptr %a.load21620)
  br label %choice.exit

choice.case1621:                                  ; preds = %choice.next1585
  %pay.gep1626 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1627 = load ptr, ptr %pay.gep1626, align 8
  store ptr %payload.ptr1627, ptr %var._1628, align 8
  store ptr %payload.ptr1627, ptr %var.ct, align 8
  %var.load1629 = load ptr, ptr %var.ct, align 8
  %fld.gep1630 = getelementptr inbounds { ptr }, ptr %var.load1629, i32 0, i32 0
  %fld.load1631 = load ptr, ptr %fld.gep1630, align 8
  %var.load1632 = load ptr, ptr %var.locals, align 8
  %a.load1633 = load ptr, ptr %var.locals, align 8
  %a.null1634 = icmp eq ptr %a.load1633, null
  br i1 %a.null1634, label %a.create1635, label %a.after1636

choice.next1622:                                  ; preds = %choice.next1585
  %tag.gep1660 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1661 = load i64, ptr %tag.gep1660, align 8
  %tag.match1662 = icmp eq i64 %tag.id1661, 31
  br i1 %tag.match1662, label %choice.case1658, label %choice.next1659

a.create1635:                                     ; preds = %choice.case1621
  %arena.cur1637 = call ptr @dva_arena_current()
  %a.create1638 = call ptr @dva_arena_alloc(ptr %arena.cur1637, i64 24)
  %arena.cur1639 = call ptr @dva_arena_current()
  %a.buf1640 = call ptr @dva_arena_alloc(ptr %arena.cur1639, i64 128)
  %a.len.gep1641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1638, i32 0, i32 0
  store i64 0, ptr %a.len.gep1641, align 8
  %a.data.gep1642 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1638, i32 0, i32 1
  store ptr %a.buf1640, ptr %a.data.gep1642, align 8
  %a.cap.gep1643 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1638, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1643, align 8
  store ptr %a.create1638, ptr %var.locals, align 8
  br label %a.after1636

a.after1636:                                      ; preds = %a.create1635, %choice.case1621
  %a.load21644 = load ptr, ptr %var.locals, align 8
  %var.load1645 = load ptr, ptr %var.refs, align 8
  %a.load1646 = load ptr, ptr %var.refs, align 8
  %a.null1647 = icmp eq ptr %a.load1646, null
  br i1 %a.null1647, label %a.create1648, label %a.after1649

a.create1648:                                     ; preds = %a.after1636
  %arena.cur1650 = call ptr @dva_arena_current()
  %a.create1651 = call ptr @dva_arena_alloc(ptr %arena.cur1650, i64 24)
  %arena.cur1652 = call ptr @dva_arena_current()
  %a.buf1653 = call ptr @dva_arena_alloc(ptr %arena.cur1652, i64 128)
  %a.len.gep1654 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1651, i32 0, i32 0
  store i64 0, ptr %a.len.gep1654, align 8
  %a.data.gep1655 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1651, i32 0, i32 1
  store ptr %a.buf1653, ptr %a.data.gep1655, align 8
  %a.cap.gep1656 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1651, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1656, align 8
  store ptr %a.create1651, ptr %var.refs, align 8
  br label %a.after1649

a.after1649:                                      ; preds = %a.create1648, %a.after1636
  %a.load21657 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1631, ptr %a.load21644, ptr %a.load21657)
  br label %choice.exit

choice.case1658:                                  ; preds = %choice.next1622
  %pay.gep1663 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1664 = load ptr, ptr %pay.gep1663, align 8
  store ptr %payload.ptr1664, ptr %var._1665, align 8
  store ptr %payload.ptr1664, ptr %var.sp, align 8
  %arena.cur1666 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1666, i64 16)
  %tag.gep1667 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1667, align 8
  %pay.gep1668 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1669 = load ptr, ptr %var.sp, align 8
  %fld.gep1670 = getelementptr inbounds { { ptr, ptr, ptr, i64, i64 } }, ptr %var.load1669, i32 0, i32 0
  store ptr %fld.gep1670, ptr %pay.gep1668, align 8
  %var.load1671 = load ptr, ptr %var.locals, align 8
  %a.load1672 = load ptr, ptr %var.locals, align 8
  %a.null1673 = icmp eq ptr %a.load1672, null
  br i1 %a.null1673, label %a.create1674, label %a.after1675

choice.next1659:                                  ; preds = %choice.next1622
  %tag.gep1699 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1700 = load i64, ptr %tag.gep1699, align 8
  %tag.match1701 = icmp eq i64 %tag.id1700, 32
  br i1 %tag.match1701, label %choice.case1697, label %choice.next1698

a.create1674:                                     ; preds = %choice.case1658
  %arena.cur1676 = call ptr @dva_arena_current()
  %a.create1677 = call ptr @dva_arena_alloc(ptr %arena.cur1676, i64 24)
  %arena.cur1678 = call ptr @dva_arena_current()
  %a.buf1679 = call ptr @dva_arena_alloc(ptr %arena.cur1678, i64 128)
  %a.len.gep1680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1677, i32 0, i32 0
  store i64 0, ptr %a.len.gep1680, align 8
  %a.data.gep1681 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1677, i32 0, i32 1
  store ptr %a.buf1679, ptr %a.data.gep1681, align 8
  %a.cap.gep1682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1677, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1682, align 8
  store ptr %a.create1677, ptr %var.locals, align 8
  br label %a.after1675

a.after1675:                                      ; preds = %a.create1674, %choice.case1658
  %a.load21683 = load ptr, ptr %var.locals, align 8
  %var.load1684 = load ptr, ptr %var.refs, align 8
  %a.load1685 = load ptr, ptr %var.refs, align 8
  %a.null1686 = icmp eq ptr %a.load1685, null
  br i1 %a.null1686, label %a.create1687, label %a.after1688

a.create1687:                                     ; preds = %a.after1675
  %arena.cur1689 = call ptr @dva_arena_current()
  %a.create1690 = call ptr @dva_arena_alloc(ptr %arena.cur1689, i64 24)
  %arena.cur1691 = call ptr @dva_arena_current()
  %a.buf1692 = call ptr @dva_arena_alloc(ptr %arena.cur1691, i64 128)
  %a.len.gep1693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1690, i32 0, i32 0
  store i64 0, ptr %a.len.gep1693, align 8
  %a.data.gep1694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1690, i32 0, i32 1
  store ptr %a.buf1692, ptr %a.data.gep1694, align 8
  %a.cap.gep1695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1690, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1695, align 8
  store ptr %a.create1690, ptr %var.refs, align 8
  br label %a.after1688

a.after1688:                                      ; preds = %a.create1687, %a.after1675
  %a.load21696 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21683, ptr %a.load21696)
  br label %choice.exit

choice.case1697:                                  ; preds = %choice.next1659
  %pay.gep1702 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1703 = load ptr, ptr %pay.gep1702, align 8
  store ptr %payload.ptr1703, ptr %var._1704, align 8
  store ptr %payload.ptr1703, ptr %var.jn, align 8
  %var.load1705 = load ptr, ptr %var.jn, align 8
  %fld.gep1706 = getelementptr inbounds { ptr }, ptr %var.load1705, i32 0, i32 0
  %fld.load1707 = load ptr, ptr %fld.gep1706, align 8
  %var.load1708 = load ptr, ptr %var.locals, align 8
  %a.load1709 = load ptr, ptr %var.locals, align 8
  %a.null1710 = icmp eq ptr %a.load1709, null
  br i1 %a.null1710, label %a.create1711, label %a.after1712

choice.next1698:                                  ; preds = %choice.next1659
  %tag.gep1736 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1737 = load i64, ptr %tag.gep1736, align 8
  %tag.match1738 = icmp eq i64 %tag.id1737, 33
  br i1 %tag.match1738, label %choice.case1734, label %choice.next1735

a.create1711:                                     ; preds = %choice.case1697
  %arena.cur1713 = call ptr @dva_arena_current()
  %a.create1714 = call ptr @dva_arena_alloc(ptr %arena.cur1713, i64 24)
  %arena.cur1715 = call ptr @dva_arena_current()
  %a.buf1716 = call ptr @dva_arena_alloc(ptr %arena.cur1715, i64 128)
  %a.len.gep1717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 0
  store i64 0, ptr %a.len.gep1717, align 8
  %a.data.gep1718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 1
  store ptr %a.buf1716, ptr %a.data.gep1718, align 8
  %a.cap.gep1719 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1714, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1719, align 8
  store ptr %a.create1714, ptr %var.locals, align 8
  br label %a.after1712

a.after1712:                                      ; preds = %a.create1711, %choice.case1697
  %a.load21720 = load ptr, ptr %var.locals, align 8
  %var.load1721 = load ptr, ptr %var.refs, align 8
  %a.load1722 = load ptr, ptr %var.refs, align 8
  %a.null1723 = icmp eq ptr %a.load1722, null
  br i1 %a.null1723, label %a.create1724, label %a.after1725

a.create1724:                                     ; preds = %a.after1712
  %arena.cur1726 = call ptr @dva_arena_current()
  %a.create1727 = call ptr @dva_arena_alloc(ptr %arena.cur1726, i64 24)
  %arena.cur1728 = call ptr @dva_arena_current()
  %a.buf1729 = call ptr @dva_arena_alloc(ptr %arena.cur1728, i64 128)
  %a.len.gep1730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1727, i32 0, i32 0
  store i64 0, ptr %a.len.gep1730, align 8
  %a.data.gep1731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1727, i32 0, i32 1
  store ptr %a.buf1729, ptr %a.data.gep1731, align 8
  %a.cap.gep1732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1727, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1732, align 8
  store ptr %a.create1727, ptr %var.refs, align 8
  br label %a.after1725

a.after1725:                                      ; preds = %a.create1724, %a.after1712
  %a.load21733 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1707, ptr %a.load21720, ptr %a.load21733)
  br label %choice.exit

choice.case1734:                                  ; preds = %choice.next1698
  %pay.gep1739 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1740 = load ptr, ptr %pay.gep1739, align 8
  store ptr %payload.ptr1740, ptr %var._1741, align 8
  store ptr %payload.ptr1740, ptr %var.ex, align 8
  %var.load1742 = load ptr, ptr %var.ex, align 8
  %fld.gep1743 = getelementptr inbounds { ptr }, ptr %var.load1742, i32 0, i32 0
  %fld.load1744 = load ptr, ptr %fld.gep1743, align 8
  %var.load1745 = load ptr, ptr %var.locals, align 8
  %a.load1746 = load ptr, ptr %var.locals, align 8
  %a.null1747 = icmp eq ptr %a.load1746, null
  br i1 %a.null1747, label %a.create1748, label %a.after1749

choice.next1735:                                  ; preds = %choice.next1698
  %tag.gep1773 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1774 = load i64, ptr %tag.gep1773, align 8
  %tag.match1775 = icmp eq i64 %tag.id1774, 38
  br i1 %tag.match1775, label %choice.case1771, label %choice.next1772

a.create1748:                                     ; preds = %choice.case1734
  %arena.cur1750 = call ptr @dva_arena_current()
  %a.create1751 = call ptr @dva_arena_alloc(ptr %arena.cur1750, i64 24)
  %arena.cur1752 = call ptr @dva_arena_current()
  %a.buf1753 = call ptr @dva_arena_alloc(ptr %arena.cur1752, i64 128)
  %a.len.gep1754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1751, i32 0, i32 0
  store i64 0, ptr %a.len.gep1754, align 8
  %a.data.gep1755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1751, i32 0, i32 1
  store ptr %a.buf1753, ptr %a.data.gep1755, align 8
  %a.cap.gep1756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1751, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1756, align 8
  store ptr %a.create1751, ptr %var.locals, align 8
  br label %a.after1749

a.after1749:                                      ; preds = %a.create1748, %choice.case1734
  %a.load21757 = load ptr, ptr %var.locals, align 8
  %var.load1758 = load ptr, ptr %var.refs, align 8
  %a.load1759 = load ptr, ptr %var.refs, align 8
  %a.null1760 = icmp eq ptr %a.load1759, null
  br i1 %a.null1760, label %a.create1761, label %a.after1762

a.create1761:                                     ; preds = %a.after1749
  %arena.cur1763 = call ptr @dva_arena_current()
  %a.create1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 24)
  %arena.cur1765 = call ptr @dva_arena_current()
  %a.buf1766 = call ptr @dva_arena_alloc(ptr %arena.cur1765, i64 128)
  %a.len.gep1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 0
  store i64 0, ptr %a.len.gep1767, align 8
  %a.data.gep1768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 1
  store ptr %a.buf1766, ptr %a.data.gep1768, align 8
  %a.cap.gep1769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1764, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1769, align 8
  store ptr %a.create1764, ptr %var.refs, align 8
  br label %a.after1762

a.after1762:                                      ; preds = %a.create1761, %a.after1749
  %a.load21770 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1744, ptr %a.load21757, ptr %a.load21770)
  br label %choice.exit

choice.case1771:                                  ; preds = %choice.next1735
  %pay.gep1776 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1777 = load ptr, ptr %pay.gep1776, align 8
  store ptr %payload.ptr1777, ptr %var._1778, align 8
  store ptr %payload.ptr1777, ptr %var.ud, align 8
  %var.load1779 = load ptr, ptr %var.ud, align 8
  %fld.gep1780 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1779, i32 0, i32 1
  %fld.load1781 = load ptr, ptr %fld.gep1780, align 8
  %var.load1782 = load ptr, ptr %var.locals, align 8
  %a.load1783 = load ptr, ptr %var.locals, align 8
  %a.null1784 = icmp eq ptr %a.load1783, null
  br i1 %a.null1784, label %a.create1785, label %a.after1786

choice.next1772:                                  ; preds = %choice.next1735
  br label %choice.exit

a.create1785:                                     ; preds = %choice.case1771
  %arena.cur1787 = call ptr @dva_arena_current()
  %a.create1788 = call ptr @dva_arena_alloc(ptr %arena.cur1787, i64 24)
  %arena.cur1789 = call ptr @dva_arena_current()
  %a.buf1790 = call ptr @dva_arena_alloc(ptr %arena.cur1789, i64 128)
  %a.len.gep1791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 0
  store i64 0, ptr %a.len.gep1791, align 8
  %a.data.gep1792 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 1
  store ptr %a.buf1790, ptr %a.data.gep1792, align 8
  %a.cap.gep1793 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1788, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1793, align 8
  store ptr %a.create1788, ptr %var.locals, align 8
  br label %a.after1786

a.after1786:                                      ; preds = %a.create1785, %choice.case1771
  %a.load21794 = load ptr, ptr %var.locals, align 8
  %var.load1795 = load ptr, ptr %var.refs, align 8
  %a.load1796 = load ptr, ptr %var.refs, align 8
  %a.null1797 = icmp eq ptr %a.load1796, null
  br i1 %a.null1797, label %a.create1798, label %a.after1799

a.create1798:                                     ; preds = %a.after1786
  %arena.cur1800 = call ptr @dva_arena_current()
  %a.create1801 = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 24)
  %arena.cur1802 = call ptr @dva_arena_current()
  %a.buf1803 = call ptr @dva_arena_alloc(ptr %arena.cur1802, i64 128)
  %a.len.gep1804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 0
  store i64 0, ptr %a.len.gep1804, align 8
  %a.data.gep1805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 1
  store ptr %a.buf1803, ptr %a.data.gep1805, align 8
  %a.cap.gep1806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1801, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1806, align 8
  store ptr %a.create1801, ptr %var.refs, align 8
  br label %a.after1799

a.after1799:                                      ; preds = %a.create1798, %a.after1786
  %a.load21807 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1781, ptr %a.load21794, ptr %a.load21807)
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
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  %2 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

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
  %var._1036 = alloca ptr, align 8
  %var._i1035 = alloca i64, align 8
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
  %var._846 = alloca ptr, align 8
  %var._836 = alloca ptr, align 8
  %var._i835 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %var.st2 = alloca ptr, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._367 = alloca ptr, align 8
  %var._357 = alloca ptr, align 8
  %var._i356 = alloca i64, align 8
  %var.st1 = alloca ptr, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var._49 = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.stk = alloca ptr, align 8
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
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  %arr.cycle.len36 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 1
  %arr.cycle.data37 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %a.after27
  %counter.load = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len36
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.18, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data37, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.stk, align 8
  %var.load38 = load ptr, ptr %var.stk, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.18, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %arena.cur319 = call ptr @dva_arena_current()
  %m.new320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 48)
  %arena.cur321 = call ptr @dva_arena_current()
  %m.keys322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 64)
  %arena.cur323 = call ptr @dva_arena_current()
  %m.vals324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 64)
  %arena.cur325 = call ptr @dva_arena_current()
  %m.states326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states326, i8 0, i64 8, i1 false)
  %m.count.gep327 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 0
  store i64 0, ptr %m.count.gep327, align 8
  %m.cap.gep328 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 1
  store i64 8, ptr %m.cap.gep328, align 8
  %m.keys.gep329 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 2
  store ptr %m.keys322, ptr %m.keys.gep329, align 8
  %m.vals.gep330 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 3
  store ptr %m.vals324, ptr %m.vals.gep330, align 8
  %m.states.gep331 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 4
  store ptr %m.states326, ptr %m.states.gep331, align 8
  %m.tombs.gep332 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep332, align 8
  store ptr %m.new320, ptr %var.def_names, align 8
  %var.load333 = load ptr, ptr %var.stmts, align 8
  %a.load334 = load ptr, ptr %var.stmts, align 8
  %a.null335 = icmp eq ptr %a.load334, null
  br i1 %a.null335, label %a.create336, label %a.after337

choice.exit:                                      ; preds = %choice.next, %choice.exit72
  br label %loop.latch.18

choice.case:                                      ; preds = %loop.body.18
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._39, align 8
  store ptr %payload.ptr, ptr %var.ak, align 8
  %var.load40 = load ptr, ptr %var.ak, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load40, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep44 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id45 = load i64, ptr %tag.gep44, align 8
  %tag.match46 = icmp eq i64 %tag.id45, 14
  br i1 %tag.match46, label %choice.case42, label %choice.next43

choice.next:                                      ; preds = %loop.body.18
  br label %choice.exit

choice.exit41:                                    ; preds = %choice.next43, %choice.case42
  %choice.res = phi i1 [ %cmptmp, %choice.case42 ], [ false, %choice.next43 ]
  store i1 %choice.res, ptr %var.is_fe, align 1
  %var.load54 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load54)
  br i1 %call.res, label %or.19.then, label %or.19.else

choice.case42:                                    ; preds = %choice.case
  %pay.gep47 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr48 = load ptr, ptr %pay.gep47, align 8
  store ptr %payload.ptr48, ptr %var._49, align 8
  store ptr %payload.ptr48, ptr %var.fek, align 8
  %var.load50 = load ptr, ptr %var.fek, align 8
  %fld.gep51 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 0
  %a.len.query53 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query53, 0
  br label %choice.exit41

choice.next43:                                    ; preds = %choice.case
  br label %choice.exit41

or.19.then:                                       ; preds = %choice.exit41
  br label %or.19.exit

or.19.else:                                       ; preds = %choice.exit41
  %var.load55 = load i1, ptr %var.is_fe, align 1
  br label %or.19.exit

or.19.exit:                                       ; preds = %or.19.else, %or.19.then
  %or.19.phi = phi i1 [ %call.res, %or.19.then ], [ %var.load55, %or.19.else ]
  store i1 %or.19.phi, ptr %var.is_gen, align 1
  %var.load56 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load56, label %and.20.then, label %and.20.else

and.20.then:                                      ; preds = %or.19.exit
  %var.load57 = load ptr, ptr %var.ak, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len60, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.20.else:                                      ; preds = %or.19.exit
  br label %and.20.exit

and.20.exit:                                      ; preds = %and.20.else, %str.eq.merge
  %and.20.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load56, %and.20.else ]
  br i1 %and.20.phi, label %choice.then, label %choice.exit72

str_gen_check:                                    ; preds = %and.20.then
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.20.then
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len63 = and i64 %eq.rhs.len, 281474976710655
  %str.tag64 = lshr i64 %eq.rhs.len, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check66:                                  ; preds = %str_ok
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len61, %eq.rhs.len63
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale68:                                      ; preds = %str_gen_check66
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str.eq.then:                                      ; preds = %str_ok67
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data, i64 %eq.lhs.len61)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok67
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.20.exit

choice.then:                                      ; preds = %and.20.exit
  %var.load73 = load ptr, ptr %var.gen_names, align 8
  %var.load74 = load ptr, ptr %var.ak, align 8
  %fld.gep75 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load74, i32 0, i32 0
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap77 = load i64, ptr %m.cap, align 8
  %m.keys78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys79 = load ptr, ptr %m.keys78, align 8
  %m.vals80 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals81 = load ptr, ptr %m.vals80, align 8
  %m.states82 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states83 = load ptr, ptr %m.states82, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.data84 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.len85 = load i64, ptr %mk.len, align 8
  %mk.len86 = and i64 %mk.len85, 281474976710655
  %str.tag87 = lshr i64 %mk.len85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

choice.exit72:                                    ; preds = %m.done, %and.20.exit
  br label %choice.exit

str_gen_check89:                                  ; preds = %choice.then
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %choice.then
  %hash.str = call i64 @dva_hash_string(ptr %mk.data84, i64 %mk.len86)
  %m.capm1 = sub i64 %m.cap77, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale91:                                      ; preds = %str_gen_check89
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

m.loop:                                           ; preds = %m.next, %str_ok90
  %m.idx = phi i64 [ %m.idx0, %str_ok90 ], [ %m.idx.next, %m.next ]
  %m.tomb94 = phi i64 [ -1, %str_ok90 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok90 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap77
  %m.state.gep = getelementptr i8, ptr %m.states83, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb94, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb94, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys79, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen95 = load i64, ptr %mk.slen, align 8
  %mk.slen96 = and i64 %mk.slen95, 281474976710655
  %str.tag97 = lshr i64 %mk.slen95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals81, i64 %m.idx
  store i64 1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb94, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap77, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done243, %m.overwrite
  br label %choice.exit72

str_gen_check99:                                  ; preds = %m.found
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.nlen104 = load i64, ptr %mk.nlen, align 8
  %mk.nlen105 = and i64 %mk.nlen104, 281474976710655
  %str.tag106 = lshr i64 %mk.nlen104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale101:                                     ; preds = %str_gen_check99
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

str_gen_check108:                                 ; preds = %str_ok100
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok100
  %mk.lenseq = icmp eq i64 %mk.slen96, %mk.nlen105
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale110:                                     ; preds = %str_gen_check108
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

mk.eq.then:                                       ; preds = %str_ok109
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata113 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.ndata114 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata113, ptr %mk.ndata114, i64 %mk.nlen105)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok109
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.old.cap115 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.old.keys116 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.old.vals117 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.old.states118 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap115, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.live.cnt119 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt119, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap115
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap115
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur120 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur121 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %m.gv.bytes)
  %arena.cur122 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep123, align 8
  %m.keys.gep124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep124, align 8
  %m.vals.gep125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep125, align 8
  %m.states.gep126 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep126, align 8
  %m.count.gep127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 0, ptr %m.count.gep127, align 8
  %m.tombs.gep128 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep128, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb306 = icmp ne i64 %m.tomb94, -1
  %m.ins.idx307 = select i1 %m.use.tomb306, i64 %m.tomb94, i64 %m.idx
  %m.key.slot308 = getelementptr ptr, ptr %m.keys79, i64 %m.ins.idx307
  store ptr %fld.load76, ptr %m.key.slot308, align 8
  %m.val.slot309 = getelementptr i64, ptr %m.vals81, i64 %m.ins.idx307
  store i64 1, ptr %m.val.slot309, align 8
  %m.ins.state.slot310 = getelementptr i8, ptr %m.states83, i64 %m.ins.idx307
  store i8 1, ptr %m.ins.state.slot310, align 1
  %m.count311 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count312 = load i64, ptr %m.count311, align 8
  %m.count.next313 = add i64 %m.count312, 1
  %m.count.gep314 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next313, ptr %m.count.gep314, align 8
  %m.ins.tombs.p315 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs316 = load i64, ptr %m.ins.tombs.p315, align 8
  %m.tomb.dec317 = select i1 %m.use.tomb306, i64 1, i64 0
  %m.ins.tombs.next318 = sub i64 %m.ins.tombs316, %m.tomb.dec317
  store i64 %m.ins.tombs.next318, ptr %m.ins.tombs.p315, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap115
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states118, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done159, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap213 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap214 = load i64, ptr %m.cap213, align 8
  %m.keys215 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys216 = load ptr, ptr %m.keys215, align 8
  %m.vals217 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals218 = load ptr, ptr %m.vals217, align 8
  %m.states219 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states220 = load ptr, ptr %m.states219, align 8
  %mk.data221 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.data222 = load ptr, ptr %mk.data221, align 8
  %mk.len223 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.len224 = load i64, ptr %mk.len223, align 8
  %mk.len225 = and i64 %mk.len224, 281474976710655
  %str.tag226 = lshr i64 %mk.len224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys116, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals117, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap130 = load i64, ptr %m.cap129, align 8
  %m.keys131 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys132 = load ptr, ptr %m.keys131, align 8
  %m.vals133 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals134 = load ptr, ptr %m.vals133, align 8
  %m.states135 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states136 = load ptr, ptr %m.states135, align 8
  %mk.data137 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data138 = load ptr, ptr %mk.data137, align 8
  %mk.len139 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len140 = load i64, ptr %mk.len139, align 8
  %mk.len141 = and i64 %mk.len140, 281474976710655
  %str.tag142 = lshr i64 %mk.len140, 48
  %str.immortal143 = icmp eq i64 %str.tag142, 0
  br i1 %str.immortal143, label %str_ok145, label %str_gen_check144

str_gen_check144:                                 ; preds = %m.re.ins
  %arena.cur147 = call ptr @dva_arena_current()
  %tag.valid148 = call i1 @dva_arena_validate_tag(ptr %arena.cur147, i64 %str.tag142)
  br i1 %tag.valid148, label %str_ok145, label %str_stale146

str_ok145:                                        ; preds = %str_stale146, %str_gen_check144, %m.re.ins
  %hash.str149 = call i64 @dva_hash_string(ptr %mk.data138, i64 %mk.len141)
  %m.capm1150 = sub i64 %m.cap130, 1
  %m.idx0151 = and i64 %hash.str149, %m.capm1150
  br label %m.loop152

str_stale146:                                     ; preds = %str_gen_check144
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok145

m.loop152:                                        ; preds = %m.next157, %str_ok145
  %m.idx160 = phi i64 [ %m.idx0151, %str_ok145 ], [ %m.idx.next207, %m.next157 ]
  %m.tomb161 = phi i64 [ -1, %str_ok145 ], [ %m.next.tomb205, %m.next157 ]
  %m.probe162 = phi i64 [ 0, %str_ok145 ], [ %m.probe.next208, %m.next157 ]
  %m.reached.cap163 = icmp eq i64 %m.probe162, %m.cap130
  %m.state.gep164 = getelementptr i8, ptr %m.states136, i64 %m.idx160
  %m.state165 = load i8, ptr %m.state.gep164, align 1
  %m.is.empty166 = icmp eq i8 %m.state165, 0
  %m.stop167 = or i1 %m.is.empty166, %m.reached.cap163
  br i1 %m.stop167, label %m.empty158, label %m.check.tomb153

m.check.tomb153:                                  ; preds = %m.loop152
  %m.is.tomb168 = icmp eq i8 %m.state165, 2
  br i1 %m.is.tomb168, label %m.tomb154, label %m.found155

m.tomb154:                                        ; preds = %m.check.tomb153
  %m.has.tomb169 = icmp ne i64 %m.tomb161, -1
  %m.tomb.sel170 = select i1 %m.has.tomb169, i64 %m.tomb161, i64 %m.idx160
  br label %m.next157

m.found155:                                       ; preds = %m.check.tomb153
  %m.key.slot171 = getelementptr ptr, ptr %m.keys132, i64 %m.idx160
  %mk.stored172 = load ptr, ptr %m.key.slot171, align 8
  %mk.slen173 = getelementptr inbounds { i64, ptr }, ptr %mk.stored172, i32 0, i32 0
  %mk.slen174 = load i64, ptr %mk.slen173, align 8
  %mk.slen175 = and i64 %mk.slen174, 281474976710655
  %str.tag176 = lshr i64 %mk.slen174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

m.overwrite156:                                   ; preds = %mk.eq.merge196
  %m.val.slot204 = getelementptr i64, ptr %m.vals134, i64 %m.idx160
  store i64 %m.re.val, ptr %m.val.slot204, align 8
  br label %m.done159

m.next157:                                        ; preds = %mk.eq.merge196, %m.tomb154
  %m.next.tomb205 = phi i64 [ %m.tomb.sel170, %m.tomb154 ], [ %m.tomb161, %mk.eq.merge196 ]
  %m.idx.add206 = add i64 %m.idx160, 1
  %m.idx.next207 = and i64 %m.idx.add206, %m.capm1150
  %m.probe.next208 = add i64 %m.probe162, 1
  br label %m.loop152

m.empty158:                                       ; preds = %m.loop152
  %m.use.tomb = icmp ne i64 %m.tomb161, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb161, i64 %m.idx160
  %m.key.slot209 = getelementptr ptr, ptr %m.keys132, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot209, align 8
  %m.val.slot210 = getelementptr i64, ptr %m.vals134, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot210, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states136, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count211 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count211, 1
  %m.count.gep212 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep212, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done159

m.done159:                                        ; preds = %m.empty158, %m.overwrite156
  br label %m.re.cont

str_gen_check178:                                 ; preds = %m.found155
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %m.found155
  %mk.nlen183 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen184 = load i64, ptr %mk.nlen183, align 8
  %mk.nlen185 = and i64 %mk.nlen184, 281474976710655
  %str.tag186 = lshr i64 %mk.nlen184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

str_stale180:                                     ; preds = %str_gen_check178
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

str_gen_check188:                                 ; preds = %str_ok179
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %str_ok179
  %mk.lenseq193 = icmp eq i64 %mk.slen175, %mk.nlen185
  br i1 %mk.lenseq193, label %mk.eq.then194, label %mk.eq.else195

str_stale190:                                     ; preds = %str_gen_check188
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

mk.eq.then194:                                    ; preds = %str_ok189
  %mk.sdata197 = getelementptr inbounds { i64, ptr }, ptr %mk.stored172, i32 0, i32 1
  %mk.sdata198 = load ptr, ptr %mk.sdata197, align 8
  %mk.ndata199 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata200 = load ptr, ptr %mk.ndata199, align 8
  %mk.memcmp201 = call i32 @memcmp(ptr %mk.sdata198, ptr %mk.ndata200, i64 %mk.nlen185)
  %mk.cmpeq202 = icmp eq i32 %mk.memcmp201, 0
  br label %mk.eq.merge196

mk.eq.else195:                                    ; preds = %str_ok189
  br label %mk.eq.merge196

mk.eq.merge196:                                   ; preds = %mk.eq.else195, %mk.eq.then194
  %mk.eq203 = phi i1 [ %mk.cmpeq202, %mk.eq.then194 ], [ false, %mk.eq.else195 ]
  br i1 %mk.eq203, label %m.overwrite156, label %m.next157

str_gen_check228:                                 ; preds = %m.re.done
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %m.re.done
  %hash.str233 = call i64 @dva_hash_string(ptr %mk.data222, i64 %mk.len225)
  %m.capm1234 = sub i64 %m.cap214, 1
  %m.idx0235 = and i64 %hash.str233, %m.capm1234
  br label %m.loop236

str_stale230:                                     ; preds = %str_gen_check228
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

m.loop236:                                        ; preds = %m.next241, %str_ok229
  %m.idx244 = phi i64 [ %m.idx0235, %str_ok229 ], [ %m.idx.next291, %m.next241 ]
  %m.tomb245 = phi i64 [ -1, %str_ok229 ], [ %m.next.tomb289, %m.next241 ]
  %m.probe246 = phi i64 [ 0, %str_ok229 ], [ %m.probe.next292, %m.next241 ]
  %m.reached.cap247 = icmp eq i64 %m.probe246, %m.cap214
  %m.state.gep248 = getelementptr i8, ptr %m.states220, i64 %m.idx244
  %m.state249 = load i8, ptr %m.state.gep248, align 1
  %m.is.empty250 = icmp eq i8 %m.state249, 0
  %m.stop251 = or i1 %m.is.empty250, %m.reached.cap247
  br i1 %m.stop251, label %m.empty242, label %m.check.tomb237

m.check.tomb237:                                  ; preds = %m.loop236
  %m.is.tomb252 = icmp eq i8 %m.state249, 2
  br i1 %m.is.tomb252, label %m.tomb238, label %m.found239

m.tomb238:                                        ; preds = %m.check.tomb237
  %m.has.tomb253 = icmp ne i64 %m.tomb245, -1
  %m.tomb.sel254 = select i1 %m.has.tomb253, i64 %m.tomb245, i64 %m.idx244
  br label %m.next241

m.found239:                                       ; preds = %m.check.tomb237
  %m.key.slot255 = getelementptr ptr, ptr %m.keys216, i64 %m.idx244
  %mk.stored256 = load ptr, ptr %m.key.slot255, align 8
  %mk.slen257 = getelementptr inbounds { i64, ptr }, ptr %mk.stored256, i32 0, i32 0
  %mk.slen258 = load i64, ptr %mk.slen257, align 8
  %mk.slen259 = and i64 %mk.slen258, 281474976710655
  %str.tag260 = lshr i64 %mk.slen258, 48
  %str.immortal261 = icmp eq i64 %str.tag260, 0
  br i1 %str.immortal261, label %str_ok263, label %str_gen_check262

m.overwrite240:                                   ; preds = %mk.eq.merge280
  %m.val.slot288 = getelementptr i64, ptr %m.vals218, i64 %m.idx244
  store i64 1, ptr %m.val.slot288, align 8
  br label %m.done243

m.next241:                                        ; preds = %mk.eq.merge280, %m.tomb238
  %m.next.tomb289 = phi i64 [ %m.tomb.sel254, %m.tomb238 ], [ %m.tomb245, %mk.eq.merge280 ]
  %m.idx.add290 = add i64 %m.idx244, 1
  %m.idx.next291 = and i64 %m.idx.add290, %m.capm1234
  %m.probe.next292 = add i64 %m.probe246, 1
  br label %m.loop236

m.empty242:                                       ; preds = %m.loop236
  %m.use.tomb293 = icmp ne i64 %m.tomb245, -1
  %m.ins.idx294 = select i1 %m.use.tomb293, i64 %m.tomb245, i64 %m.idx244
  %m.key.slot295 = getelementptr ptr, ptr %m.keys216, i64 %m.ins.idx294
  store ptr %fld.load76, ptr %m.key.slot295, align 8
  %m.val.slot296 = getelementptr i64, ptr %m.vals218, i64 %m.ins.idx294
  store i64 1, ptr %m.val.slot296, align 8
  %m.ins.state.slot297 = getelementptr i8, ptr %m.states220, i64 %m.ins.idx294
  store i8 1, ptr %m.ins.state.slot297, align 1
  %m.count298 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count299 = load i64, ptr %m.count298, align 8
  %m.count.next300 = add i64 %m.count299, 1
  %m.count.gep301 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next300, ptr %m.count.gep301, align 8
  %m.ins.tombs.p302 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs303 = load i64, ptr %m.ins.tombs.p302, align 8
  %m.tomb.dec304 = select i1 %m.use.tomb293, i64 1, i64 0
  %m.ins.tombs.next305 = sub i64 %m.ins.tombs303, %m.tomb.dec304
  store i64 %m.ins.tombs.next305, ptr %m.ins.tombs.p302, align 8
  br label %m.done243

m.done243:                                        ; preds = %m.empty242, %m.overwrite240
  br label %m.done

str_gen_check262:                                 ; preds = %m.found239
  %arena.cur265 = call ptr @dva_arena_current()
  %tag.valid266 = call i1 @dva_arena_validate_tag(ptr %arena.cur265, i64 %str.tag260)
  br i1 %tag.valid266, label %str_ok263, label %str_stale264

str_ok263:                                        ; preds = %str_stale264, %str_gen_check262, %m.found239
  %mk.nlen267 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.nlen268 = load i64, ptr %mk.nlen267, align 8
  %mk.nlen269 = and i64 %mk.nlen268, 281474976710655
  %str.tag270 = lshr i64 %mk.nlen268, 48
  %str.immortal271 = icmp eq i64 %str.tag270, 0
  br i1 %str.immortal271, label %str_ok273, label %str_gen_check272

str_stale264:                                     ; preds = %str_gen_check262
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok263

str_gen_check272:                                 ; preds = %str_ok263
  %arena.cur275 = call ptr @dva_arena_current()
  %tag.valid276 = call i1 @dva_arena_validate_tag(ptr %arena.cur275, i64 %str.tag270)
  br i1 %tag.valid276, label %str_ok273, label %str_stale274

str_ok273:                                        ; preds = %str_stale274, %str_gen_check272, %str_ok263
  %mk.lenseq277 = icmp eq i64 %mk.slen259, %mk.nlen269
  br i1 %mk.lenseq277, label %mk.eq.then278, label %mk.eq.else279

str_stale274:                                     ; preds = %str_gen_check272
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok273

mk.eq.then278:                                    ; preds = %str_ok273
  %mk.sdata281 = getelementptr inbounds { i64, ptr }, ptr %mk.stored256, i32 0, i32 1
  %mk.sdata282 = load ptr, ptr %mk.sdata281, align 8
  %mk.ndata283 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.ndata284 = load ptr, ptr %mk.ndata283, align 8
  %mk.memcmp285 = call i32 @memcmp(ptr %mk.sdata282, ptr %mk.ndata284, i64 %mk.nlen269)
  %mk.cmpeq286 = icmp eq i32 %mk.memcmp285, 0
  br label %mk.eq.merge280

mk.eq.else279:                                    ; preds = %str_ok273
  br label %mk.eq.merge280

mk.eq.merge280:                                   ; preds = %mk.eq.else279, %mk.eq.then278
  %mk.eq287 = phi i1 [ %mk.cmpeq286, %mk.eq.then278 ], [ false, %mk.eq.else279 ]
  br i1 %mk.eq287, label %m.overwrite240, label %m.next241

a.create336:                                      ; preds = %loop.exit.18
  %arena.cur338 = call ptr @dva_arena_current()
  %a.create339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 24)
  %arena.cur340 = call ptr @dva_arena_current()
  %a.buf341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 128)
  %a.len.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 0
  store i64 0, ptr %a.len.gep342, align 8
  %a.data.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 1
  store ptr %a.buf341, ptr %a.data.gep343, align 8
  %a.cap.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 2
  store i64 16, ptr %a.cap.gep344, align 8
  store ptr %a.create339, ptr %var.stmts, align 8
  br label %a.after337

a.after337:                                       ; preds = %a.create336, %loop.exit.18
  %a.load2345 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 0
  %arr.cycle.len347 = load i64, ptr %arr.cycle.len346, align 8
  %arr.cycle.data348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 1
  %arr.cycle.data349 = load ptr, ptr %arr.cycle.data348, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.header.21:                                   ; preds = %loop.latch.21, %a.after337
  %counter.load350 = load i64, ptr %loop.idx.21, align 8
  %loop.cond351 = icmp slt i64 %counter.load350, %arr.cycle.len347
  br i1 %loop.cond351, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i352 = sub i64 %counter.load350, 0
  store i64 1, ptr %loop.step.21, align 8
  %arr.elem.gep353 = getelementptr i64, ptr %arr.cycle.data349, i64 %counter.load350
  %arr.elem.raw354 = load i64, ptr %arr.elem.gep353, align 8
  %slot.i2p355 = inttoptr i64 %arr.elem.raw354 to ptr
  store i64 %loop.rel.i352, ptr %var._i356, align 8
  store ptr %slot.i2p355, ptr %var._357, align 8
  store ptr %slot.i2p355, ptr %var.st1, align 8
  %var.load358 = load ptr, ptr %var.st1, align 8
  %tag.gep362 = getelementptr inbounds { i64, ptr }, ptr %var.load358, i32 0, i32 0
  %tag.id363 = load i64, ptr %tag.gep362, align 8
  %tag.match364 = icmp eq i64 %tag.id363, 6
  br i1 %tag.match364, label %choice.case360, label %choice.next361

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit359
  %step.val810 = load i64, ptr %loop.step.21, align 8
  %loop.next811 = add i64 %counter.load350, %step.val810
  store i64 %loop.next811, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load812 = load ptr, ptr %var.stmts, align 8
  %a.load813 = load ptr, ptr %var.stmts, align 8
  %a.null814 = icmp eq ptr %a.load813, null
  br i1 %a.null814, label %a.create815, label %a.after816

choice.exit359:                                   ; preds = %choice.next361, %choice.exit474
  br label %loop.latch.21

choice.case360:                                   ; preds = %loop.body.21
  %pay.gep365 = getelementptr inbounds { i64, ptr }, ptr %var.load358, i32 0, i32 1
  %payload.ptr366 = load ptr, ptr %pay.gep365, align 8
  store ptr %payload.ptr366, ptr %var._367, align 8
  store ptr %payload.ptr366, ptr %var.a1, align 8
  %var.load368 = load ptr, ptr %var.a1, align 8
  %call.res369 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load368)
  store i1 %call.res369, ptr %var.is_fwd1, align 1
  %var.load370 = load ptr, ptr %var.gen_names, align 8
  %var.load371 = load ptr, ptr %var.a1, align 8
  %fld.gep372 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load371, i32 0, i32 0
  %fld.load373 = load ptr, ptr %fld.gep372, align 8
  %m.cap374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 1
  %m.cap375 = load i64, ptr %m.cap374, align 8
  %m.keys376 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 2
  %m.keys377 = load ptr, ptr %m.keys376, align 8
  %m.states378 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 4
  %m.states379 = load ptr, ptr %m.states378, align 8
  %mk.data380 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.data381 = load ptr, ptr %mk.data380, align 8
  %mk.len382 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.len383 = load i64, ptr %mk.len382, align 8
  %mk.len384 = and i64 %mk.len383, 281474976710655
  %str.tag385 = lshr i64 %mk.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

choice.next361:                                   ; preds = %loop.body.21
  br label %choice.exit359

str_gen_check387:                                 ; preds = %choice.case360
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %choice.case360
  %hash.str392 = call i64 @dva_hash_string(ptr %mk.data381, i64 %mk.len384)
  %m.capm1393 = sub i64 %m.cap375, 1
  %m.idx0394 = and i64 %hash.str392, %m.capm1393
  br label %m.mem.loop

str_stale389:                                     ; preds = %str_gen_check387
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok388
  %m.mem.idx = phi i64 [ %m.idx0394, %str_ok388 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe395 = phi i64 [ 0, %str_ok388 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe395, %m.cap375
  %m.mem.state.gep = getelementptr i8, ptr %m.states379, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys377, i64 %m.mem.idx
  %mk.stored396 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen397 = getelementptr inbounds { i64, ptr }, ptr %mk.stored396, i32 0, i32 0
  %mk.slen398 = load i64, ptr %mk.slen397, align 8
  %mk.slen399 = and i64 %mk.slen398, 281474976710655
  %str.tag400 = lshr i64 %mk.slen398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

m.mem.next:                                       ; preds = %mk.eq.merge420, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1393
  %m.mem.probe.next = add i64 %m.mem.probe395, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load428 = load ptr, ptr %var.a1, align 8
  %fld.gep429 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load428, i32 0, i32 0
  %fld.load430 = load ptr, ptr %fld.gep429, align 8
  store ptr %fld.load430, ptr %var.name1, align 8
  %var.load431 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load431, true
  br i1 %nottmp, label %and.22.then, label %and.22.else

str_gen_check402:                                 ; preds = %m.mem.found
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %m.mem.found
  %mk.nlen407 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.nlen408 = load i64, ptr %mk.nlen407, align 8
  %mk.nlen409 = and i64 %mk.nlen408, 281474976710655
  %str.tag410 = lshr i64 %mk.nlen408, 48
  %str.immortal411 = icmp eq i64 %str.tag410, 0
  br i1 %str.immortal411, label %str_ok413, label %str_gen_check412

str_stale404:                                     ; preds = %str_gen_check402
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str_gen_check412:                                 ; preds = %str_ok403
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag410)
  br i1 %tag.valid416, label %str_ok413, label %str_stale414

str_ok413:                                        ; preds = %str_stale414, %str_gen_check412, %str_ok403
  %mk.lenseq417 = icmp eq i64 %mk.slen399, %mk.nlen409
  br i1 %mk.lenseq417, label %mk.eq.then418, label %mk.eq.else419

str_stale414:                                     ; preds = %str_gen_check412
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok413

mk.eq.then418:                                    ; preds = %str_ok413
  %mk.sdata421 = getelementptr inbounds { i64, ptr }, ptr %mk.stored396, i32 0, i32 1
  %mk.sdata422 = load ptr, ptr %mk.sdata421, align 8
  %mk.ndata423 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.ndata424 = load ptr, ptr %mk.ndata423, align 8
  %mk.memcmp425 = call i32 @memcmp(ptr %mk.sdata422, ptr %mk.ndata424, i64 %mk.nlen409)
  %mk.cmpeq426 = icmp eq i32 %mk.memcmp425, 0
  br label %mk.eq.merge420

mk.eq.else419:                                    ; preds = %str_ok413
  br label %mk.eq.merge420

mk.eq.merge420:                                   ; preds = %mk.eq.else419, %mk.eq.then418
  %mk.eq427 = phi i1 [ %mk.cmpeq426, %mk.eq.then418 ], [ false, %mk.eq.else419 ]
  br i1 %mk.eq427, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge420
  br label %m.mem.done

and.22.then:                                      ; preds = %m.mem.done
  %var.load432 = load i1, ptr %var.is_gen1, align 1
  %nottmp433 = xor i1 %var.load432, true
  br label %and.22.exit

and.22.else:                                      ; preds = %m.mem.done
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %nottmp433, %and.22.then ], [ %nottmp, %and.22.else ]
  br i1 %and.22.phi, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %and.22.exit
  %var.load434 = load ptr, ptr %var.a1, align 8
  %fld.gep435 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load434, i32 0, i32 2
  %fld.load436 = load i1, ptr %fld.gep435, align 1
  %nottmp437 = xor i1 %fld.load436, true
  br label %and.23.exit

and.23.else:                                      ; preds = %and.22.exit
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %nottmp437, %and.23.then ], [ %and.22.phi, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

and.24.then:                                      ; preds = %and.23.exit
  %var.load438 = load ptr, ptr %var.a1, align 8
  %fld.gep439 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load438, i32 0, i32 4
  %fld.load440 = load i1, ptr %fld.gep439, align 1
  %nottmp441 = xor i1 %fld.load440, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp441, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %and.24.exit
  %var.load442 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len443 = getelementptr inbounds { i64, ptr }, ptr %var.load442, i32 0, i32 0
  %eq.lhs.len444 = load i64, ptr %eq.lhs.len443, align 8
  %eq.lhs.len445 = and i64 %eq.lhs.len444, 281474976710655
  %str.tag446 = lshr i64 %eq.lhs.len444, 48
  %str.immortal447 = icmp eq i64 %str.tag446, 0
  br i1 %str.immortal447, label %str_ok449, label %str_gen_check448

and.25.else:                                      ; preds = %and.24.exit
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %str.eq.merge465
  %and.25.phi = phi i1 [ %str.neq472, %str.eq.merge465 ], [ %and.24.phi, %and.25.else ]
  br i1 %and.25.phi, label %choice.then473, label %choice.exit474

str_gen_check448:                                 ; preds = %and.25.then
  %arena.cur451 = call ptr @dva_arena_current()
  %tag.valid452 = call i1 @dva_arena_validate_tag(ptr %arena.cur451, i64 %str.tag446)
  br i1 %tag.valid452, label %str_ok449, label %str_stale450

str_ok449:                                        ; preds = %str_stale450, %str_gen_check448, %and.25.then
  %eq.rhs.len453 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len454 = and i64 %eq.rhs.len453, 281474976710655
  %str.tag455 = lshr i64 %eq.rhs.len453, 48
  %str.immortal456 = icmp eq i64 %str.tag455, 0
  br i1 %str.immortal456, label %str_ok458, label %str_gen_check457

str_stale450:                                     ; preds = %str_gen_check448
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok449

str_gen_check457:                                 ; preds = %str_ok449
  %arena.cur460 = call ptr @dva_arena_current()
  %tag.valid461 = call i1 @dva_arena_validate_tag(ptr %arena.cur460, i64 %str.tag455)
  br i1 %tag.valid461, label %str_ok458, label %str_stale459

str_ok458:                                        ; preds = %str_stale459, %str_gen_check457, %str_ok449
  %eq.len462 = icmp eq i64 %eq.lhs.len445, %eq.rhs.len454
  br i1 %eq.len462, label %str.eq.then463, label %str.eq.else464

str_stale459:                                     ; preds = %str_gen_check457
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok458

str.eq.then463:                                   ; preds = %str_ok458
  %eq.lhs.data466 = getelementptr inbounds { i64, ptr }, ptr %var.load442, i32 0, i32 1
  %eq.lhs.data467 = load ptr, ptr %eq.lhs.data466, align 8
  %eq.rhs.data468 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp469 = call i32 @memcmp(ptr %eq.lhs.data467, ptr %eq.rhs.data468, i64 %eq.lhs.len445)
  %eq.cmp.zero470 = icmp eq i32 %eq.memcmp469, 0
  br label %str.eq.merge465

str.eq.else464:                                   ; preds = %str_ok458
  br label %str.eq.merge465

str.eq.merge465:                                  ; preds = %str.eq.else464, %str.eq.then463
  %str.eq.result471 = phi i1 [ %eq.cmp.zero470, %str.eq.then463 ], [ false, %str.eq.else464 ]
  %str.neq472 = xor i1 %str.eq.result471, true
  br label %and.25.exit

choice.then473:                                   ; preds = %and.25.exit
  %var.load475 = load ptr, ptr %var.def_names, align 8
  %var.load476 = load ptr, ptr %var.name1, align 8
  %m.cap477 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap478 = load i64, ptr %m.cap477, align 8
  %m.keys479 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys480 = load ptr, ptr %m.keys479, align 8
  %m.vals481 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals482 = load ptr, ptr %m.vals481, align 8
  %m.states483 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states484 = load ptr, ptr %m.states483, align 8
  %mk.data485 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.data486 = load ptr, ptr %mk.data485, align 8
  %mk.len487 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.len488 = load i64, ptr %mk.len487, align 8
  %mk.len489 = and i64 %mk.len488, 281474976710655
  %str.tag490 = lshr i64 %mk.len488, 48
  %str.immortal491 = icmp eq i64 %str.tag490, 0
  br i1 %str.immortal491, label %str_ok493, label %str_gen_check492

choice.exit474:                                   ; preds = %m.done507, %and.25.exit
  br label %choice.exit359

str_gen_check492:                                 ; preds = %choice.then473
  %arena.cur495 = call ptr @dva_arena_current()
  %tag.valid496 = call i1 @dva_arena_validate_tag(ptr %arena.cur495, i64 %str.tag490)
  br i1 %tag.valid496, label %str_ok493, label %str_stale494

str_ok493:                                        ; preds = %str_stale494, %str_gen_check492, %choice.then473
  %hash.str497 = call i64 @dva_hash_string(ptr %mk.data486, i64 %mk.len489)
  %m.capm1498 = sub i64 %m.cap478, 1
  %m.idx0499 = and i64 %hash.str497, %m.capm1498
  br label %m.loop500

str_stale494:                                     ; preds = %str_gen_check492
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok493

m.loop500:                                        ; preds = %m.next505, %str_ok493
  %m.idx508 = phi i64 [ %m.idx0499, %str_ok493 ], [ %m.idx.next555, %m.next505 ]
  %m.tomb509 = phi i64 [ -1, %str_ok493 ], [ %m.next.tomb553, %m.next505 ]
  %m.probe510 = phi i64 [ 0, %str_ok493 ], [ %m.probe.next556, %m.next505 ]
  %m.reached.cap511 = icmp eq i64 %m.probe510, %m.cap478
  %m.state.gep512 = getelementptr i8, ptr %m.states484, i64 %m.idx508
  %m.state513 = load i8, ptr %m.state.gep512, align 1
  %m.is.empty514 = icmp eq i8 %m.state513, 0
  %m.stop515 = or i1 %m.is.empty514, %m.reached.cap511
  br i1 %m.stop515, label %m.empty506, label %m.check.tomb501

m.check.tomb501:                                  ; preds = %m.loop500
  %m.is.tomb516 = icmp eq i8 %m.state513, 2
  br i1 %m.is.tomb516, label %m.tomb502, label %m.found503

m.tomb502:                                        ; preds = %m.check.tomb501
  %m.has.tomb517 = icmp ne i64 %m.tomb509, -1
  %m.tomb.sel518 = select i1 %m.has.tomb517, i64 %m.tomb509, i64 %m.idx508
  br label %m.next505

m.found503:                                       ; preds = %m.check.tomb501
  %m.key.slot519 = getelementptr ptr, ptr %m.keys480, i64 %m.idx508
  %mk.stored520 = load ptr, ptr %m.key.slot519, align 8
  %mk.slen521 = getelementptr inbounds { i64, ptr }, ptr %mk.stored520, i32 0, i32 0
  %mk.slen522 = load i64, ptr %mk.slen521, align 8
  %mk.slen523 = and i64 %mk.slen522, 281474976710655
  %str.tag524 = lshr i64 %mk.slen522, 48
  %str.immortal525 = icmp eq i64 %str.tag524, 0
  br i1 %str.immortal525, label %str_ok527, label %str_gen_check526

m.overwrite504:                                   ; preds = %mk.eq.merge544
  %m.val.slot552 = getelementptr i64, ptr %m.vals482, i64 %m.idx508
  store i64 1, ptr %m.val.slot552, align 8
  br label %m.done507

m.next505:                                        ; preds = %mk.eq.merge544, %m.tomb502
  %m.next.tomb553 = phi i64 [ %m.tomb.sel518, %m.tomb502 ], [ %m.tomb509, %mk.eq.merge544 ]
  %m.idx.add554 = add i64 %m.idx508, 1
  %m.idx.next555 = and i64 %m.idx.add554, %m.capm1498
  %m.probe.next556 = add i64 %m.probe510, 1
  br label %m.loop500

m.empty506:                                       ; preds = %m.loop500
  %m.grow.cnt.p557 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.grow.cnt558 = load i64, ptr %m.grow.cnt.p557, align 8
  %m.grow.tm.p559 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.grow.tm560 = load i64, ptr %m.grow.tm.p559, align 8
  %m.occupied561 = add i64 %m.grow.cnt558, %m.grow.tm560
  %m.c.plus562 = add i64 %m.occupied561, 1
  %m.c.lhs563 = mul i64 %m.c.plus562, 4
  %m.c.rhs564 = mul i64 %m.cap478, 3
  %m.need.grow565 = icmp sgt i64 %m.c.lhs563, %m.c.rhs564
  br i1 %m.need.grow565, label %m.grow566, label %m.ins.slot567

m.done507:                                        ; preds = %m.ins.slot567, %m.done734, %m.overwrite504
  br label %choice.exit474

str_gen_check526:                                 ; preds = %m.found503
  %arena.cur529 = call ptr @dva_arena_current()
  %tag.valid530 = call i1 @dva_arena_validate_tag(ptr %arena.cur529, i64 %str.tag524)
  br i1 %tag.valid530, label %str_ok527, label %str_stale528

str_ok527:                                        ; preds = %str_stale528, %str_gen_check526, %m.found503
  %mk.nlen531 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.nlen532 = load i64, ptr %mk.nlen531, align 8
  %mk.nlen533 = and i64 %mk.nlen532, 281474976710655
  %str.tag534 = lshr i64 %mk.nlen532, 48
  %str.immortal535 = icmp eq i64 %str.tag534, 0
  br i1 %str.immortal535, label %str_ok537, label %str_gen_check536

str_stale528:                                     ; preds = %str_gen_check526
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok527

str_gen_check536:                                 ; preds = %str_ok527
  %arena.cur539 = call ptr @dva_arena_current()
  %tag.valid540 = call i1 @dva_arena_validate_tag(ptr %arena.cur539, i64 %str.tag534)
  br i1 %tag.valid540, label %str_ok537, label %str_stale538

str_ok537:                                        ; preds = %str_stale538, %str_gen_check536, %str_ok527
  %mk.lenseq541 = icmp eq i64 %mk.slen523, %mk.nlen533
  br i1 %mk.lenseq541, label %mk.eq.then542, label %mk.eq.else543

str_stale538:                                     ; preds = %str_gen_check536
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok537

mk.eq.then542:                                    ; preds = %str_ok537
  %mk.sdata545 = getelementptr inbounds { i64, ptr }, ptr %mk.stored520, i32 0, i32 1
  %mk.sdata546 = load ptr, ptr %mk.sdata545, align 8
  %mk.ndata547 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.ndata548 = load ptr, ptr %mk.ndata547, align 8
  %mk.memcmp549 = call i32 @memcmp(ptr %mk.sdata546, ptr %mk.ndata548, i64 %mk.nlen533)
  %mk.cmpeq550 = icmp eq i32 %mk.memcmp549, 0
  br label %mk.eq.merge544

mk.eq.else543:                                    ; preds = %str_ok537
  br label %mk.eq.merge544

mk.eq.merge544:                                   ; preds = %mk.eq.else543, %mk.eq.then542
  %mk.eq551 = phi i1 [ %mk.cmpeq550, %mk.eq.then542 ], [ false, %mk.eq.else543 ]
  br i1 %mk.eq551, label %m.overwrite504, label %m.next505

m.grow566:                                        ; preds = %m.empty506
  %m.old.cap568 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.old.cap569 = load i64, ptr %m.old.cap568, align 8
  %m.old.keys570 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.old.keys571 = load ptr, ptr %m.old.keys570, align 8
  %m.old.vals572 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.old.vals573 = load ptr, ptr %m.old.vals572, align 8
  %m.old.states574 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.old.states575 = load ptr, ptr %m.old.states574, align 8
  %m.double.cap576 = mul i64 %m.old.cap569, 2
  %m.live.cnt577 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.live.cnt578 = load i64, ptr %m.live.cnt577, align 8
  %m.live.x2579 = mul i64 %m.live.cnt578, 2
  %m.should.double580 = icmp sgt i64 %m.live.x2579, %m.old.cap569
  %m.new.cap581 = select i1 %m.should.double580, i64 %m.double.cap576, i64 %m.old.cap569
  %m.gk.bytes582 = mul i64 %m.new.cap581, 8
  %arena.cur583 = call ptr @dva_arena_current()
  %m.gk584 = call ptr @dva_arena_alloc(ptr %arena.cur583, i64 %m.gk.bytes582)
  %m.gv.bytes585 = mul i64 %m.new.cap581, 8
  %arena.cur586 = call ptr @dva_arena_current()
  %m.gv587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 %m.gv.bytes585)
  %arena.cur588 = call ptr @dva_arena_current()
  %m.gs589 = call ptr @dva_arena_alloc(ptr %arena.cur588, i64 %m.new.cap581)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs589, i8 0, i64 %m.new.cap581, i1 false)
  %m.cap.gep590 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  store i64 %m.new.cap581, ptr %m.cap.gep590, align 8
  %m.keys.gep591 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  store ptr %m.gk584, ptr %m.keys.gep591, align 8
  %m.vals.gep592 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  store ptr %m.gv587, ptr %m.vals.gep592, align 8
  %m.states.gep593 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  store ptr %m.gs589, ptr %m.states.gep593, align 8
  %m.count.gep594 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 0, ptr %m.count.gep594, align 8
  %m.tombs.gep595 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep595, align 8
  br label %m.re.loop596

m.ins.slot567:                                    ; preds = %m.empty506
  %m.use.tomb797 = icmp ne i64 %m.tomb509, -1
  %m.ins.idx798 = select i1 %m.use.tomb797, i64 %m.tomb509, i64 %m.idx508
  %m.key.slot799 = getelementptr ptr, ptr %m.keys480, i64 %m.ins.idx798
  store ptr %var.load476, ptr %m.key.slot799, align 8
  %m.val.slot800 = getelementptr i64, ptr %m.vals482, i64 %m.ins.idx798
  store i64 1, ptr %m.val.slot800, align 8
  %m.ins.state.slot801 = getelementptr i8, ptr %m.states484, i64 %m.ins.idx798
  store i8 1, ptr %m.ins.state.slot801, align 1
  %m.count802 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count803 = load i64, ptr %m.count802, align 8
  %m.count.next804 = add i64 %m.count803, 1
  %m.count.gep805 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next804, ptr %m.count.gep805, align 8
  %m.ins.tombs.p806 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs807 = load i64, ptr %m.ins.tombs.p806, align 8
  %m.tomb.dec808 = select i1 %m.use.tomb797, i64 1, i64 0
  %m.ins.tombs.next809 = sub i64 %m.ins.tombs807, %m.tomb.dec808
  store i64 %m.ins.tombs.next809, ptr %m.ins.tombs.p806, align 8
  br label %m.done507

m.re.loop596:                                     ; preds = %m.re.cont598, %m.grow566
  %m.re.i600 = phi i64 [ 0, %m.grow566 ], [ %m.re.i.next703, %m.re.cont598 ]
  %m.re.lt601 = icmp slt i64 %m.re.i600, %m.old.cap569
  br i1 %m.re.lt601, label %m.re.body597, label %m.re.done599

m.re.body597:                                     ; preds = %m.re.loop596
  %m.re.state.gep602 = getelementptr i8, ptr %m.old.states575, i64 %m.re.i600
  %m.re.state603 = load i8, ptr %m.re.state.gep602, align 1
  %m.re.occ604 = icmp eq i8 %m.re.state603, 1
  br i1 %m.re.occ604, label %m.re.ins605, label %m.re.cont598

m.re.cont598:                                     ; preds = %m.done640, %m.re.body597
  %m.re.i.next703 = add i64 %m.re.i600, 1
  br label %m.re.loop596

m.re.done599:                                     ; preds = %m.re.loop596
  %m.cap704 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap705 = load i64, ptr %m.cap704, align 8
  %m.keys706 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys707 = load ptr, ptr %m.keys706, align 8
  %m.vals708 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals709 = load ptr, ptr %m.vals708, align 8
  %m.states710 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states711 = load ptr, ptr %m.states710, align 8
  %mk.data712 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.data713 = load ptr, ptr %mk.data712, align 8
  %mk.len714 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.len715 = load i64, ptr %mk.len714, align 8
  %mk.len716 = and i64 %mk.len715, 281474976710655
  %str.tag717 = lshr i64 %mk.len715, 48
  %str.immortal718 = icmp eq i64 %str.tag717, 0
  br i1 %str.immortal718, label %str_ok720, label %str_gen_check719

m.re.ins605:                                      ; preds = %m.re.body597
  %m.re.key.slot606 = getelementptr ptr, ptr %m.old.keys571, i64 %m.re.i600
  %m.re.val.slot607 = getelementptr i64, ptr %m.old.vals573, i64 %m.re.i600
  %m.re.key608 = load ptr, ptr %m.re.key.slot606, align 8
  %m.re.val609 = load i64, ptr %m.re.val.slot607, align 8
  %m.cap610 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap611 = load i64, ptr %m.cap610, align 8
  %m.keys612 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys613 = load ptr, ptr %m.keys612, align 8
  %m.vals614 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals615 = load ptr, ptr %m.vals614, align 8
  %m.states616 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states617 = load ptr, ptr %m.states616, align 8
  %mk.data618 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 1
  %mk.data619 = load ptr, ptr %mk.data618, align 8
  %mk.len620 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 0
  %mk.len621 = load i64, ptr %mk.len620, align 8
  %mk.len622 = and i64 %mk.len621, 281474976710655
  %str.tag623 = lshr i64 %mk.len621, 48
  %str.immortal624 = icmp eq i64 %str.tag623, 0
  br i1 %str.immortal624, label %str_ok626, label %str_gen_check625

str_gen_check625:                                 ; preds = %m.re.ins605
  %arena.cur628 = call ptr @dva_arena_current()
  %tag.valid629 = call i1 @dva_arena_validate_tag(ptr %arena.cur628, i64 %str.tag623)
  br i1 %tag.valid629, label %str_ok626, label %str_stale627

str_ok626:                                        ; preds = %str_stale627, %str_gen_check625, %m.re.ins605
  %hash.str630 = call i64 @dva_hash_string(ptr %mk.data619, i64 %mk.len622)
  %m.capm1631 = sub i64 %m.cap611, 1
  %m.idx0632 = and i64 %hash.str630, %m.capm1631
  br label %m.loop633

str_stale627:                                     ; preds = %str_gen_check625
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok626

m.loop633:                                        ; preds = %m.next638, %str_ok626
  %m.idx641 = phi i64 [ %m.idx0632, %str_ok626 ], [ %m.idx.next688, %m.next638 ]
  %m.tomb642 = phi i64 [ -1, %str_ok626 ], [ %m.next.tomb686, %m.next638 ]
  %m.probe643 = phi i64 [ 0, %str_ok626 ], [ %m.probe.next689, %m.next638 ]
  %m.reached.cap644 = icmp eq i64 %m.probe643, %m.cap611
  %m.state.gep645 = getelementptr i8, ptr %m.states617, i64 %m.idx641
  %m.state646 = load i8, ptr %m.state.gep645, align 1
  %m.is.empty647 = icmp eq i8 %m.state646, 0
  %m.stop648 = or i1 %m.is.empty647, %m.reached.cap644
  br i1 %m.stop648, label %m.empty639, label %m.check.tomb634

m.check.tomb634:                                  ; preds = %m.loop633
  %m.is.tomb649 = icmp eq i8 %m.state646, 2
  br i1 %m.is.tomb649, label %m.tomb635, label %m.found636

m.tomb635:                                        ; preds = %m.check.tomb634
  %m.has.tomb650 = icmp ne i64 %m.tomb642, -1
  %m.tomb.sel651 = select i1 %m.has.tomb650, i64 %m.tomb642, i64 %m.idx641
  br label %m.next638

m.found636:                                       ; preds = %m.check.tomb634
  %m.key.slot652 = getelementptr ptr, ptr %m.keys613, i64 %m.idx641
  %mk.stored653 = load ptr, ptr %m.key.slot652, align 8
  %mk.slen654 = getelementptr inbounds { i64, ptr }, ptr %mk.stored653, i32 0, i32 0
  %mk.slen655 = load i64, ptr %mk.slen654, align 8
  %mk.slen656 = and i64 %mk.slen655, 281474976710655
  %str.tag657 = lshr i64 %mk.slen655, 48
  %str.immortal658 = icmp eq i64 %str.tag657, 0
  br i1 %str.immortal658, label %str_ok660, label %str_gen_check659

m.overwrite637:                                   ; preds = %mk.eq.merge677
  %m.val.slot685 = getelementptr i64, ptr %m.vals615, i64 %m.idx641
  store i64 %m.re.val609, ptr %m.val.slot685, align 8
  br label %m.done640

m.next638:                                        ; preds = %mk.eq.merge677, %m.tomb635
  %m.next.tomb686 = phi i64 [ %m.tomb.sel651, %m.tomb635 ], [ %m.tomb642, %mk.eq.merge677 ]
  %m.idx.add687 = add i64 %m.idx641, 1
  %m.idx.next688 = and i64 %m.idx.add687, %m.capm1631
  %m.probe.next689 = add i64 %m.probe643, 1
  br label %m.loop633

m.empty639:                                       ; preds = %m.loop633
  %m.use.tomb690 = icmp ne i64 %m.tomb642, -1
  %m.ins.idx691 = select i1 %m.use.tomb690, i64 %m.tomb642, i64 %m.idx641
  %m.key.slot692 = getelementptr ptr, ptr %m.keys613, i64 %m.ins.idx691
  store ptr %m.re.key608, ptr %m.key.slot692, align 8
  %m.val.slot693 = getelementptr i64, ptr %m.vals615, i64 %m.ins.idx691
  store i64 %m.re.val609, ptr %m.val.slot693, align 8
  %m.ins.state.slot694 = getelementptr i8, ptr %m.states617, i64 %m.ins.idx691
  store i8 1, ptr %m.ins.state.slot694, align 1
  %m.count695 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count696 = load i64, ptr %m.count695, align 8
  %m.count.next697 = add i64 %m.count696, 1
  %m.count.gep698 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next697, ptr %m.count.gep698, align 8
  %m.ins.tombs.p699 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs700 = load i64, ptr %m.ins.tombs.p699, align 8
  %m.tomb.dec701 = select i1 %m.use.tomb690, i64 1, i64 0
  %m.ins.tombs.next702 = sub i64 %m.ins.tombs700, %m.tomb.dec701
  store i64 %m.ins.tombs.next702, ptr %m.ins.tombs.p699, align 8
  br label %m.done640

m.done640:                                        ; preds = %m.empty639, %m.overwrite637
  br label %m.re.cont598

str_gen_check659:                                 ; preds = %m.found636
  %arena.cur662 = call ptr @dva_arena_current()
  %tag.valid663 = call i1 @dva_arena_validate_tag(ptr %arena.cur662, i64 %str.tag657)
  br i1 %tag.valid663, label %str_ok660, label %str_stale661

str_ok660:                                        ; preds = %str_stale661, %str_gen_check659, %m.found636
  %mk.nlen664 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 0
  %mk.nlen665 = load i64, ptr %mk.nlen664, align 8
  %mk.nlen666 = and i64 %mk.nlen665, 281474976710655
  %str.tag667 = lshr i64 %mk.nlen665, 48
  %str.immortal668 = icmp eq i64 %str.tag667, 0
  br i1 %str.immortal668, label %str_ok670, label %str_gen_check669

str_stale661:                                     ; preds = %str_gen_check659
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok660

str_gen_check669:                                 ; preds = %str_ok660
  %arena.cur672 = call ptr @dva_arena_current()
  %tag.valid673 = call i1 @dva_arena_validate_tag(ptr %arena.cur672, i64 %str.tag667)
  br i1 %tag.valid673, label %str_ok670, label %str_stale671

str_ok670:                                        ; preds = %str_stale671, %str_gen_check669, %str_ok660
  %mk.lenseq674 = icmp eq i64 %mk.slen656, %mk.nlen666
  br i1 %mk.lenseq674, label %mk.eq.then675, label %mk.eq.else676

str_stale671:                                     ; preds = %str_gen_check669
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok670

mk.eq.then675:                                    ; preds = %str_ok670
  %mk.sdata678 = getelementptr inbounds { i64, ptr }, ptr %mk.stored653, i32 0, i32 1
  %mk.sdata679 = load ptr, ptr %mk.sdata678, align 8
  %mk.ndata680 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 1
  %mk.ndata681 = load ptr, ptr %mk.ndata680, align 8
  %mk.memcmp682 = call i32 @memcmp(ptr %mk.sdata679, ptr %mk.ndata681, i64 %mk.nlen666)
  %mk.cmpeq683 = icmp eq i32 %mk.memcmp682, 0
  br label %mk.eq.merge677

mk.eq.else676:                                    ; preds = %str_ok670
  br label %mk.eq.merge677

mk.eq.merge677:                                   ; preds = %mk.eq.else676, %mk.eq.then675
  %mk.eq684 = phi i1 [ %mk.cmpeq683, %mk.eq.then675 ], [ false, %mk.eq.else676 ]
  br i1 %mk.eq684, label %m.overwrite637, label %m.next638

str_gen_check719:                                 ; preds = %m.re.done599
  %arena.cur722 = call ptr @dva_arena_current()
  %tag.valid723 = call i1 @dva_arena_validate_tag(ptr %arena.cur722, i64 %str.tag717)
  br i1 %tag.valid723, label %str_ok720, label %str_stale721

str_ok720:                                        ; preds = %str_stale721, %str_gen_check719, %m.re.done599
  %hash.str724 = call i64 @dva_hash_string(ptr %mk.data713, i64 %mk.len716)
  %m.capm1725 = sub i64 %m.cap705, 1
  %m.idx0726 = and i64 %hash.str724, %m.capm1725
  br label %m.loop727

str_stale721:                                     ; preds = %str_gen_check719
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok720

m.loop727:                                        ; preds = %m.next732, %str_ok720
  %m.idx735 = phi i64 [ %m.idx0726, %str_ok720 ], [ %m.idx.next782, %m.next732 ]
  %m.tomb736 = phi i64 [ -1, %str_ok720 ], [ %m.next.tomb780, %m.next732 ]
  %m.probe737 = phi i64 [ 0, %str_ok720 ], [ %m.probe.next783, %m.next732 ]
  %m.reached.cap738 = icmp eq i64 %m.probe737, %m.cap705
  %m.state.gep739 = getelementptr i8, ptr %m.states711, i64 %m.idx735
  %m.state740 = load i8, ptr %m.state.gep739, align 1
  %m.is.empty741 = icmp eq i8 %m.state740, 0
  %m.stop742 = or i1 %m.is.empty741, %m.reached.cap738
  br i1 %m.stop742, label %m.empty733, label %m.check.tomb728

m.check.tomb728:                                  ; preds = %m.loop727
  %m.is.tomb743 = icmp eq i8 %m.state740, 2
  br i1 %m.is.tomb743, label %m.tomb729, label %m.found730

m.tomb729:                                        ; preds = %m.check.tomb728
  %m.has.tomb744 = icmp ne i64 %m.tomb736, -1
  %m.tomb.sel745 = select i1 %m.has.tomb744, i64 %m.tomb736, i64 %m.idx735
  br label %m.next732

m.found730:                                       ; preds = %m.check.tomb728
  %m.key.slot746 = getelementptr ptr, ptr %m.keys707, i64 %m.idx735
  %mk.stored747 = load ptr, ptr %m.key.slot746, align 8
  %mk.slen748 = getelementptr inbounds { i64, ptr }, ptr %mk.stored747, i32 0, i32 0
  %mk.slen749 = load i64, ptr %mk.slen748, align 8
  %mk.slen750 = and i64 %mk.slen749, 281474976710655
  %str.tag751 = lshr i64 %mk.slen749, 48
  %str.immortal752 = icmp eq i64 %str.tag751, 0
  br i1 %str.immortal752, label %str_ok754, label %str_gen_check753

m.overwrite731:                                   ; preds = %mk.eq.merge771
  %m.val.slot779 = getelementptr i64, ptr %m.vals709, i64 %m.idx735
  store i64 1, ptr %m.val.slot779, align 8
  br label %m.done734

m.next732:                                        ; preds = %mk.eq.merge771, %m.tomb729
  %m.next.tomb780 = phi i64 [ %m.tomb.sel745, %m.tomb729 ], [ %m.tomb736, %mk.eq.merge771 ]
  %m.idx.add781 = add i64 %m.idx735, 1
  %m.idx.next782 = and i64 %m.idx.add781, %m.capm1725
  %m.probe.next783 = add i64 %m.probe737, 1
  br label %m.loop727

m.empty733:                                       ; preds = %m.loop727
  %m.use.tomb784 = icmp ne i64 %m.tomb736, -1
  %m.ins.idx785 = select i1 %m.use.tomb784, i64 %m.tomb736, i64 %m.idx735
  %m.key.slot786 = getelementptr ptr, ptr %m.keys707, i64 %m.ins.idx785
  store ptr %var.load476, ptr %m.key.slot786, align 8
  %m.val.slot787 = getelementptr i64, ptr %m.vals709, i64 %m.ins.idx785
  store i64 1, ptr %m.val.slot787, align 8
  %m.ins.state.slot788 = getelementptr i8, ptr %m.states711, i64 %m.ins.idx785
  store i8 1, ptr %m.ins.state.slot788, align 1
  %m.count789 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count790 = load i64, ptr %m.count789, align 8
  %m.count.next791 = add i64 %m.count790, 1
  %m.count.gep792 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next791, ptr %m.count.gep792, align 8
  %m.ins.tombs.p793 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs794 = load i64, ptr %m.ins.tombs.p793, align 8
  %m.tomb.dec795 = select i1 %m.use.tomb784, i64 1, i64 0
  %m.ins.tombs.next796 = sub i64 %m.ins.tombs794, %m.tomb.dec795
  store i64 %m.ins.tombs.next796, ptr %m.ins.tombs.p793, align 8
  br label %m.done734

m.done734:                                        ; preds = %m.empty733, %m.overwrite731
  br label %m.done507

str_gen_check753:                                 ; preds = %m.found730
  %arena.cur756 = call ptr @dva_arena_current()
  %tag.valid757 = call i1 @dva_arena_validate_tag(ptr %arena.cur756, i64 %str.tag751)
  br i1 %tag.valid757, label %str_ok754, label %str_stale755

str_ok754:                                        ; preds = %str_stale755, %str_gen_check753, %m.found730
  %mk.nlen758 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.nlen759 = load i64, ptr %mk.nlen758, align 8
  %mk.nlen760 = and i64 %mk.nlen759, 281474976710655
  %str.tag761 = lshr i64 %mk.nlen759, 48
  %str.immortal762 = icmp eq i64 %str.tag761, 0
  br i1 %str.immortal762, label %str_ok764, label %str_gen_check763

str_stale755:                                     ; preds = %str_gen_check753
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok754

str_gen_check763:                                 ; preds = %str_ok754
  %arena.cur766 = call ptr @dva_arena_current()
  %tag.valid767 = call i1 @dva_arena_validate_tag(ptr %arena.cur766, i64 %str.tag761)
  br i1 %tag.valid767, label %str_ok764, label %str_stale765

str_ok764:                                        ; preds = %str_stale765, %str_gen_check763, %str_ok754
  %mk.lenseq768 = icmp eq i64 %mk.slen750, %mk.nlen760
  br i1 %mk.lenseq768, label %mk.eq.then769, label %mk.eq.else770

str_stale765:                                     ; preds = %str_gen_check763
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok764

mk.eq.then769:                                    ; preds = %str_ok764
  %mk.sdata772 = getelementptr inbounds { i64, ptr }, ptr %mk.stored747, i32 0, i32 1
  %mk.sdata773 = load ptr, ptr %mk.sdata772, align 8
  %mk.ndata774 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.ndata775 = load ptr, ptr %mk.ndata774, align 8
  %mk.memcmp776 = call i32 @memcmp(ptr %mk.sdata773, ptr %mk.ndata775, i64 %mk.nlen760)
  %mk.cmpeq777 = icmp eq i32 %mk.memcmp776, 0
  br label %mk.eq.merge771

mk.eq.else770:                                    ; preds = %str_ok764
  br label %mk.eq.merge771

mk.eq.merge771:                                   ; preds = %mk.eq.else770, %mk.eq.then769
  %mk.eq778 = phi i1 [ %mk.cmpeq777, %mk.eq.then769 ], [ false, %mk.eq.else770 ]
  br i1 %mk.eq778, label %m.overwrite731, label %m.next732

a.create815:                                      ; preds = %loop.exit.21
  %arena.cur817 = call ptr @dva_arena_current()
  %a.create818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 24)
  %arena.cur819 = call ptr @dva_arena_current()
  %a.buf820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 128)
  %a.len.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 0
  store i64 0, ptr %a.len.gep821, align 8
  %a.data.gep822 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 1
  store ptr %a.buf820, ptr %a.data.gep822, align 8
  %a.cap.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 2
  store i64 16, ptr %a.cap.gep823, align 8
  store ptr %a.create818, ptr %var.stmts, align 8
  br label %a.after816

a.after816:                                       ; preds = %a.create815, %loop.exit.21
  %a.load2824 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2824, i32 0, i32 0
  %arr.cycle.len826 = load i64, ptr %arr.cycle.len825, align 8
  %arr.cycle.data827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2824, i32 0, i32 1
  %arr.cycle.data828 = load ptr, ptr %arr.cycle.data827, align 8
  store i64 0, ptr %loop.idx.26, align 8
  store i64 0, ptr %var.j, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %a.after816
  %counter.load829 = load i64, ptr %loop.idx.26, align 8
  %loop.cond830 = icmp slt i64 %counter.load829, %arr.cycle.len826
  br i1 %loop.cond830, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i831 = sub i64 %counter.load829, 0
  store i64 1, ptr %loop.step.26, align 8
  %arr.elem.gep832 = getelementptr i64, ptr %arr.cycle.data828, i64 %counter.load829
  %arr.elem.raw833 = load i64, ptr %arr.elem.gep832, align 8
  %slot.i2p834 = inttoptr i64 %arr.elem.raw833 to ptr
  store i64 %loop.rel.i831, ptr %var._i835, align 8
  store ptr %slot.i2p834, ptr %var._836, align 8
  store ptr %slot.i2p834, ptr %var.st2, align 8
  store i64 %loop.rel.i831, ptr %var.j, align 8
  %var.load837 = load ptr, ptr %var.st2, align 8
  %tag.gep841 = getelementptr inbounds { i64, ptr }, ptr %var.load837, i32 0, i32 0
  %tag.id842 = load i64, ptr %tag.gep841, align 8
  %tag.match843 = icmp eq i64 %tag.id842, 6
  br i1 %tag.match843, label %choice.case839, label %choice.next840

loop.exit.nat.26:                                 ; preds = %loop.header.26
  %loop.rel.end = sub i64 %counter.load829, 0
  store i64 %loop.rel.end, ptr %var.j, align 8
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit838
  %step.val1569 = load i64, ptr %loop.step.26, align 8
  %loop.next1570 = add i64 %counter.load829, %step.val1569
  store i64 %loop.next1570, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  %var.load1571 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1571

choice.exit838:                                   ; preds = %choice.next840, %choice.exit973
  br label %loop.latch.26

choice.case839:                                   ; preds = %loop.body.26
  %pay.gep844 = getelementptr inbounds { i64, ptr }, ptr %var.load837, i32 0, i32 1
  %payload.ptr845 = load ptr, ptr %pay.gep844, align 8
  store ptr %payload.ptr845, ptr %var._846, align 8
  store ptr %payload.ptr845, ptr %var.a2, align 8
  %var.load847 = load ptr, ptr %var.a2, align 8
  %call.res848 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load847)
  store i1 %call.res848, ptr %var.is_fwd2, align 1
  %var.load849 = load ptr, ptr %var.gen_names, align 8
  %var.load850 = load ptr, ptr %var.a2, align 8
  %fld.gep851 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load850, i32 0, i32 0
  %fld.load852 = load ptr, ptr %fld.gep851, align 8
  %m.cap853 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 1
  %m.cap854 = load i64, ptr %m.cap853, align 8
  %m.keys855 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 2
  %m.keys856 = load ptr, ptr %m.keys855, align 8
  %m.states857 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 4
  %m.states858 = load ptr, ptr %m.states857, align 8
  %mk.data859 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 1
  %mk.data860 = load ptr, ptr %mk.data859, align 8
  %mk.len861 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 0
  %mk.len862 = load i64, ptr %mk.len861, align 8
  %mk.len863 = and i64 %mk.len862, 281474976710655
  %str.tag864 = lshr i64 %mk.len862, 48
  %str.immortal865 = icmp eq i64 %str.tag864, 0
  br i1 %str.immortal865, label %str_ok867, label %str_gen_check866

choice.next840:                                   ; preds = %loop.body.26
  br label %choice.exit838

str_gen_check866:                                 ; preds = %choice.case839
  %arena.cur869 = call ptr @dva_arena_current()
  %tag.valid870 = call i1 @dva_arena_validate_tag(ptr %arena.cur869, i64 %str.tag864)
  br i1 %tag.valid870, label %str_ok867, label %str_stale868

str_ok867:                                        ; preds = %str_stale868, %str_gen_check866, %choice.case839
  %hash.str871 = call i64 @dva_hash_string(ptr %mk.data860, i64 %mk.len863)
  %m.capm1872 = sub i64 %m.cap854, 1
  %m.idx0873 = and i64 %hash.str871, %m.capm1872
  br label %m.mem.loop874

str_stale868:                                     ; preds = %str_gen_check866
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok867

m.mem.loop874:                                    ; preds = %m.mem.next877, %str_ok867
  %m.mem.idx880 = phi i64 [ %m.idx0873, %str_ok867 ], [ %m.mem.idx.next923, %m.mem.next877 ]
  %m.mem.probe881 = phi i64 [ 0, %str_ok867 ], [ %m.mem.probe.next924, %m.mem.next877 ]
  %m.mem.reached882 = icmp eq i64 %m.mem.probe881, %m.cap854
  %m.mem.state.gep883 = getelementptr i8, ptr %m.states858, i64 %m.mem.idx880
  %m.mem.state884 = load i8, ptr %m.mem.state.gep883, align 1
  %m.mem.is.empty885 = icmp eq i8 %m.mem.state884, 0
  %m.mem.stop886 = or i1 %m.mem.is.empty885, %m.mem.reached882
  br i1 %m.mem.stop886, label %m.mem.miss878, label %m.mem.probe875

m.mem.probe875:                                   ; preds = %m.mem.loop874
  %m.mem.is.tomb887 = icmp eq i8 %m.mem.state884, 2
  br i1 %m.mem.is.tomb887, label %m.mem.next877, label %m.mem.found876

m.mem.found876:                                   ; preds = %m.mem.probe875
  %m.mem.key.slot888 = getelementptr ptr, ptr %m.keys856, i64 %m.mem.idx880
  %mk.stored889 = load ptr, ptr %m.mem.key.slot888, align 8
  %mk.slen890 = getelementptr inbounds { i64, ptr }, ptr %mk.stored889, i32 0, i32 0
  %mk.slen891 = load i64, ptr %mk.slen890, align 8
  %mk.slen892 = and i64 %mk.slen891, 281474976710655
  %str.tag893 = lshr i64 %mk.slen891, 48
  %str.immortal894 = icmp eq i64 %str.tag893, 0
  br i1 %str.immortal894, label %str_ok896, label %str_gen_check895

m.mem.next877:                                    ; preds = %mk.eq.merge913, %m.mem.probe875
  %m.mem.idx.add922 = add i64 %m.mem.idx880, 1
  %m.mem.idx.next923 = and i64 %m.mem.idx.add922, %m.capm1872
  %m.mem.probe.next924 = add i64 %m.mem.probe881, 1
  br label %m.mem.loop874

m.mem.miss878:                                    ; preds = %m.mem.loop874
  br label %m.mem.done879

m.mem.done879:                                    ; preds = %m.mem.miss878, %m.mem.hit921
  %m.mem.res925 = phi i1 [ true, %m.mem.hit921 ], [ false, %m.mem.miss878 ]
  store i1 %m.mem.res925, ptr %var.is_gen2, align 1
  %var.load926 = load ptr, ptr %var.a2, align 8
  %fld.gep927 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load926, i32 0, i32 0
  %fld.load928 = load ptr, ptr %fld.gep927, align 8
  store ptr %fld.load928, ptr %var.name2, align 8
  %var.load929 = load i1, ptr %var.is_fwd2, align 1
  %nottmp930 = xor i1 %var.load929, true
  br i1 %nottmp930, label %and.27.then, label %and.27.else

str_gen_check895:                                 ; preds = %m.mem.found876
  %arena.cur898 = call ptr @dva_arena_current()
  %tag.valid899 = call i1 @dva_arena_validate_tag(ptr %arena.cur898, i64 %str.tag893)
  br i1 %tag.valid899, label %str_ok896, label %str_stale897

str_ok896:                                        ; preds = %str_stale897, %str_gen_check895, %m.mem.found876
  %mk.nlen900 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 0
  %mk.nlen901 = load i64, ptr %mk.nlen900, align 8
  %mk.nlen902 = and i64 %mk.nlen901, 281474976710655
  %str.tag903 = lshr i64 %mk.nlen901, 48
  %str.immortal904 = icmp eq i64 %str.tag903, 0
  br i1 %str.immortal904, label %str_ok906, label %str_gen_check905

str_stale897:                                     ; preds = %str_gen_check895
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok896

str_gen_check905:                                 ; preds = %str_ok896
  %arena.cur908 = call ptr @dva_arena_current()
  %tag.valid909 = call i1 @dva_arena_validate_tag(ptr %arena.cur908, i64 %str.tag903)
  br i1 %tag.valid909, label %str_ok906, label %str_stale907

str_ok906:                                        ; preds = %str_stale907, %str_gen_check905, %str_ok896
  %mk.lenseq910 = icmp eq i64 %mk.slen892, %mk.nlen902
  br i1 %mk.lenseq910, label %mk.eq.then911, label %mk.eq.else912

str_stale907:                                     ; preds = %str_gen_check905
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok906

mk.eq.then911:                                    ; preds = %str_ok906
  %mk.sdata914 = getelementptr inbounds { i64, ptr }, ptr %mk.stored889, i32 0, i32 1
  %mk.sdata915 = load ptr, ptr %mk.sdata914, align 8
  %mk.ndata916 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 1
  %mk.ndata917 = load ptr, ptr %mk.ndata916, align 8
  %mk.memcmp918 = call i32 @memcmp(ptr %mk.sdata915, ptr %mk.ndata917, i64 %mk.nlen902)
  %mk.cmpeq919 = icmp eq i32 %mk.memcmp918, 0
  br label %mk.eq.merge913

mk.eq.else912:                                    ; preds = %str_ok906
  br label %mk.eq.merge913

mk.eq.merge913:                                   ; preds = %mk.eq.else912, %mk.eq.then911
  %mk.eq920 = phi i1 [ %mk.cmpeq919, %mk.eq.then911 ], [ false, %mk.eq.else912 ]
  br i1 %mk.eq920, label %m.mem.hit921, label %m.mem.next877

m.mem.hit921:                                     ; preds = %mk.eq.merge913
  br label %m.mem.done879

and.27.then:                                      ; preds = %m.mem.done879
  %var.load931 = load i1, ptr %var.is_gen2, align 1
  %nottmp932 = xor i1 %var.load931, true
  br label %and.27.exit

and.27.else:                                      ; preds = %m.mem.done879
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp932, %and.27.then ], [ %nottmp930, %and.27.else ]
  br i1 %and.27.phi, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %and.27.exit
  %var.load933 = load ptr, ptr %var.a2, align 8
  %fld.gep934 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load933, i32 0, i32 2
  %fld.load935 = load i1, ptr %fld.gep934, align 1
  %nottmp936 = xor i1 %fld.load935, true
  br label %and.28.exit

and.28.else:                                      ; preds = %and.27.exit
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp936, %and.28.then ], [ %and.27.phi, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load937 = load ptr, ptr %var.a2, align 8
  %fld.gep938 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load937, i32 0, i32 4
  %fld.load939 = load i1, ptr %fld.gep938, align 1
  %nottmp940 = xor i1 %fld.load939, true
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp940, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load941 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len942 = getelementptr inbounds { i64, ptr }, ptr %var.load941, i32 0, i32 0
  %eq.lhs.len943 = load i64, ptr %eq.lhs.len942, align 8
  %eq.lhs.len944 = and i64 %eq.lhs.len943, 281474976710655
  %str.tag945 = lshr i64 %eq.lhs.len943, 48
  %str.immortal946 = icmp eq i64 %str.tag945, 0
  br i1 %str.immortal946, label %str_ok948, label %str_gen_check947

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %str.eq.merge964
  %and.30.phi = phi i1 [ %str.neq971, %str.eq.merge964 ], [ %and.29.phi, %and.30.else ]
  br i1 %and.30.phi, label %choice.then972, label %choice.exit973

str_gen_check947:                                 ; preds = %and.30.then
  %arena.cur950 = call ptr @dva_arena_current()
  %tag.valid951 = call i1 @dva_arena_validate_tag(ptr %arena.cur950, i64 %str.tag945)
  br i1 %tag.valid951, label %str_ok948, label %str_stale949

str_ok948:                                        ; preds = %str_stale949, %str_gen_check947, %and.30.then
  %eq.rhs.len952 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len953 = and i64 %eq.rhs.len952, 281474976710655
  %str.tag954 = lshr i64 %eq.rhs.len952, 48
  %str.immortal955 = icmp eq i64 %str.tag954, 0
  br i1 %str.immortal955, label %str_ok957, label %str_gen_check956

str_stale949:                                     ; preds = %str_gen_check947
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok948

str_gen_check956:                                 ; preds = %str_ok948
  %arena.cur959 = call ptr @dva_arena_current()
  %tag.valid960 = call i1 @dva_arena_validate_tag(ptr %arena.cur959, i64 %str.tag954)
  br i1 %tag.valid960, label %str_ok957, label %str_stale958

str_ok957:                                        ; preds = %str_stale958, %str_gen_check956, %str_ok948
  %eq.len961 = icmp eq i64 %eq.lhs.len944, %eq.rhs.len953
  br i1 %eq.len961, label %str.eq.then962, label %str.eq.else963

str_stale958:                                     ; preds = %str_gen_check956
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok957

str.eq.then962:                                   ; preds = %str_ok957
  %eq.lhs.data965 = getelementptr inbounds { i64, ptr }, ptr %var.load941, i32 0, i32 1
  %eq.lhs.data966 = load ptr, ptr %eq.lhs.data965, align 8
  %eq.rhs.data967 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp968 = call i32 @memcmp(ptr %eq.lhs.data966, ptr %eq.rhs.data967, i64 %eq.lhs.len944)
  %eq.cmp.zero969 = icmp eq i32 %eq.memcmp968, 0
  br label %str.eq.merge964

str.eq.else963:                                   ; preds = %str_ok957
  br label %str.eq.merge964

str.eq.merge964:                                  ; preds = %str.eq.else963, %str.eq.then962
  %str.eq.result970 = phi i1 [ %eq.cmp.zero969, %str.eq.then962 ], [ false, %str.eq.else963 ]
  %str.neq971 = xor i1 %str.eq.result970, true
  br label %and.30.exit

choice.then972:                                   ; preds = %and.30.exit
  %arena.cur974 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur974, i64 24)
  %arena.cur975 = call ptr @dva_arena_current()
  %a.buf976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 128)
  %a.len.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep977, align 8
  %a.data.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf976, ptr %a.data.gep978, align 8
  %a.cap.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep979, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load980 = load ptr, ptr %var.a2, align 8
  %fld.gep981 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load980, i32 0, i32 5
  %fld.load982 = load ptr, ptr %fld.gep981, align 8
  %arena.cur983 = call ptr @dva_arena_current()
  %a.new984 = call ptr @dva_arena_alloc(ptr %arena.cur983, i64 24)
  %arena.cur985 = call ptr @dva_arena_current()
  %a.buf986 = call ptr @dva_arena_alloc(ptr %arena.cur985, i64 128)
  %a.len.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 0
  store i64 0, ptr %a.len.gep987, align 8
  %a.data.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 1
  store ptr %a.buf986, ptr %a.data.gep988, align 8
  %a.cap.gep989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep989, align 8
  %var.load990 = load ptr, ptr %var.raw_refs, align 8
  %a.load991 = load ptr, ptr %var.raw_refs, align 8
  %a.null992 = icmp eq ptr %a.load991, null
  br i1 %a.null992, label %a.create993, label %a.after994

choice.exit973:                                   ; preds = %a.store1555, %and.30.exit
  br label %choice.exit838

a.create993:                                      ; preds = %choice.then972
  %arena.cur995 = call ptr @dva_arena_current()
  %a.create996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 24)
  %arena.cur997 = call ptr @dva_arena_current()
  %a.buf998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 128)
  %a.len.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 0
  store i64 0, ptr %a.len.gep999, align 8
  %a.data.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 1
  store ptr %a.buf998, ptr %a.data.gep1000, align 8
  %a.cap.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1001, align 8
  store ptr %a.create996, ptr %var.raw_refs, align 8
  br label %a.after994

a.after994:                                       ; preds = %a.create993, %choice.then972
  %a.load21002 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load982, ptr %a.new984, ptr %a.load21002)
  %arena.cur1003 = call ptr @dva_arena_current()
  %a.new1004 = call ptr @dva_arena_alloc(ptr %arena.cur1003, i64 24)
  %arena.cur1005 = call ptr @dva_arena_current()
  %a.buf1006 = call ptr @dva_arena_alloc(ptr %arena.cur1005, i64 128)
  %a.len.gep1007 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 0
  store i64 0, ptr %a.len.gep1007, align 8
  %a.data.gep1008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 1
  store ptr %a.buf1006, ptr %a.data.gep1008, align 8
  %a.cap.gep1009 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1009, align 8
  store ptr %a.new1004, ptr %var.filtered_deps, align 8
  %var.load1010 = load ptr, ptr %var.name2, align 8
  %call.res1011 = call ptr @"dep_graph::decl_module"(ptr %var.load1010, i64 0)
  store ptr %call.res1011, ptr %var.mod2, align 8
  %var.load1012 = load ptr, ptr %var.raw_refs, align 8
  %a.load1013 = load ptr, ptr %var.raw_refs, align 8
  %a.null1014 = icmp eq ptr %a.load1013, null
  br i1 %a.null1014, label %a.create1015, label %a.after1016

a.create1015:                                     ; preds = %a.after994
  %arena.cur1017 = call ptr @dva_arena_current()
  %a.create1018 = call ptr @dva_arena_alloc(ptr %arena.cur1017, i64 24)
  %arena.cur1019 = call ptr @dva_arena_current()
  %a.buf1020 = call ptr @dva_arena_alloc(ptr %arena.cur1019, i64 128)
  %a.len.gep1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 0
  store i64 0, ptr %a.len.gep1021, align 8
  %a.data.gep1022 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 1
  store ptr %a.buf1020, ptr %a.data.gep1022, align 8
  %a.cap.gep1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1023, align 8
  store ptr %a.create1018, ptr %var.raw_refs, align 8
  br label %a.after1016

a.after1016:                                      ; preds = %a.create1015, %a.after994
  %a.load21024 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21024, i32 0, i32 0
  %arr.cycle.len1026 = load i64, ptr %arr.cycle.len1025, align 8
  %arr.cycle.data1027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21024, i32 0, i32 1
  %arr.cycle.data1028 = load ptr, ptr %arr.cycle.data1027, align 8
  store i64 0, ptr %loop.idx.31, align 8
  %cycle.prev.u = load ptr, ptr %var._846, align 8
  %cycle.prev.i = load i64, ptr %var._i835, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after1016
  %counter.load1029 = load i64, ptr %loop.idx.31, align 8
  %loop.cond1030 = icmp slt i64 %counter.load1029, %arr.cycle.len1026
  br i1 %loop.cond1030, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i1031 = sub i64 %counter.load1029, 0
  store i64 1, ptr %loop.step.31, align 8
  %arr.elem.gep1032 = getelementptr i64, ptr %arr.cycle.data1028, i64 %counter.load1029
  %arr.elem.raw1033 = load i64, ptr %arr.elem.gep1032, align 8
  %slot.i2p1034 = inttoptr i64 %arr.elem.raw1033 to ptr
  store i64 %loop.rel.i1031, ptr %var._i1035, align 8
  store ptr %slot.i2p1034, ptr %var._1036, align 8
  store ptr %slot.i2p1034, ptr %var.ref_name, align 8
  %var.load1037 = load ptr, ptr %var.def_names, align 8
  %var.load1038 = load ptr, ptr %var.mod2, align 8
  %var.load1039 = load ptr, ptr %var.ref_name, align 8
  %call.res1040 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load1037, ptr %var.load1038, ptr %var.load1039)
  store ptr %call.res1040, ptr %var.target_ref, align 8
  %var.load1041 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len1042 = getelementptr inbounds { i64, ptr }, ptr %var.load1041, i32 0, i32 0
  %eq.lhs.len1043 = load i64, ptr %eq.lhs.len1042, align 8
  %eq.lhs.len1044 = and i64 %eq.lhs.len1043, 281474976710655
  %str.tag1045 = lshr i64 %eq.lhs.len1043, 48
  %str.immortal1046 = icmp eq i64 %str.tag1045, 0
  br i1 %str.immortal1046, label %str_ok1048, label %str_gen_check1047

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit1089
  %step.val1107 = load i64, ptr %loop.step.31, align 8
  %loop.next1108 = add i64 %counter.load1029, %step.val1107
  store i64 %loop.next1108, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  store ptr %cycle.prev.u, ptr %var._846, align 8
  store i64 %cycle.prev.i, ptr %var._i835, align 8
  %var.load1109 = load ptr, ptr %var.graph, align 8
  %fld.gep1110 = getelementptr inbounds { ptr, ptr }, ptr %var.load1109, i32 0, i32 1
  %fld.load1111 = load ptr, ptr %fld.gep1110, align 8
  store ptr %fld.load1111, ptr %var.node_indices, align 8
  %var.load1112 = load ptr, ptr %var.node_indices, align 8
  %var.load1113 = load ptr, ptr %var.name2, align 8
  %m.cap1114 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 1
  %m.cap1115 = load i64, ptr %m.cap1114, align 8
  %m.keys1116 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 2
  %m.keys1117 = load ptr, ptr %m.keys1116, align 8
  %m.states1118 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 4
  %m.states1119 = load ptr, ptr %m.states1118, align 8
  %mk.data1120 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 1
  %mk.data1121 = load ptr, ptr %mk.data1120, align 8
  %mk.len1122 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 0
  %mk.len1123 = load i64, ptr %mk.len1122, align 8
  %mk.len1124 = and i64 %mk.len1123, 281474976710655
  %str.tag1125 = lshr i64 %mk.len1123, 48
  %str.immortal1126 = icmp eq i64 %str.tag1125, 0
  br i1 %str.immortal1126, label %str_ok1128, label %str_gen_check1127

str_gen_check1047:                                ; preds = %loop.body.31
  %arena.cur1050 = call ptr @dva_arena_current()
  %tag.valid1051 = call i1 @dva_arena_validate_tag(ptr %arena.cur1050, i64 %str.tag1045)
  br i1 %tag.valid1051, label %str_ok1048, label %str_stale1049

str_ok1048:                                       ; preds = %str_stale1049, %str_gen_check1047, %loop.body.31
  %eq.rhs.len1052 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1053 = and i64 %eq.rhs.len1052, 281474976710655
  %str.tag1054 = lshr i64 %eq.rhs.len1052, 48
  %str.immortal1055 = icmp eq i64 %str.tag1054, 0
  br i1 %str.immortal1055, label %str_ok1057, label %str_gen_check1056

str_stale1049:                                    ; preds = %str_gen_check1047
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1048

str_gen_check1056:                                ; preds = %str_ok1048
  %arena.cur1059 = call ptr @dva_arena_current()
  %tag.valid1060 = call i1 @dva_arena_validate_tag(ptr %arena.cur1059, i64 %str.tag1054)
  br i1 %tag.valid1060, label %str_ok1057, label %str_stale1058

str_ok1057:                                       ; preds = %str_stale1058, %str_gen_check1056, %str_ok1048
  %eq.len1061 = icmp eq i64 %eq.lhs.len1044, %eq.rhs.len1053
  br i1 %eq.len1061, label %str.eq.then1062, label %str.eq.else1063

str_stale1058:                                    ; preds = %str_gen_check1056
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1057

str.eq.then1062:                                  ; preds = %str_ok1057
  %eq.lhs.data1065 = getelementptr inbounds { i64, ptr }, ptr %var.load1041, i32 0, i32 1
  %eq.lhs.data1066 = load ptr, ptr %eq.lhs.data1065, align 8
  %eq.rhs.data1067 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1068 = call i32 @memcmp(ptr %eq.lhs.data1066, ptr %eq.rhs.data1067, i64 %eq.lhs.len1044)
  %eq.cmp.zero1069 = icmp eq i32 %eq.memcmp1068, 0
  br label %str.eq.merge1064

str.eq.else1063:                                  ; preds = %str_ok1057
  br label %str.eq.merge1064

str.eq.merge1064:                                 ; preds = %str.eq.else1063, %str.eq.then1062
  %str.eq.result1070 = phi i1 [ %eq.cmp.zero1069, %str.eq.then1062 ], [ false, %str.eq.else1063 ]
  %str.neq1071 = xor i1 %str.eq.result1070, true
  br i1 %str.neq1071, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge1064
  %var.load1072 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1073 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1074 = icmp eq ptr %a.load1073, null
  br i1 %a.null1074, label %a.create1075, label %a.after1076

and.32.else:                                      ; preds = %str.eq.merge1064
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after1076
  %and.32.phi = phi i1 [ %nottmp1087, %a.after1076 ], [ %str.neq1071, %and.32.else ]
  br i1 %and.32.phi, label %choice.then1088, label %choice.exit1089

a.create1075:                                     ; preds = %and.32.then
  %arena.cur1077 = call ptr @dva_arena_current()
  %a.create1078 = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 24)
  %arena.cur1079 = call ptr @dva_arena_current()
  %a.buf1080 = call ptr @dva_arena_alloc(ptr %arena.cur1079, i64 128)
  %a.len.gep1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 0
  store i64 0, ptr %a.len.gep1081, align 8
  %a.data.gep1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 1
  store ptr %a.buf1080, ptr %a.data.gep1082, align 8
  %a.cap.gep1083 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1083, align 8
  store ptr %a.create1078, ptr %var.filtered_deps, align 8
  br label %a.after1076

a.after1076:                                      ; preds = %a.create1075, %and.32.then
  %a.load21084 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1085 = load ptr, ptr %var.target_ref, align 8
  %call.res1086 = call i1 @"dep_graph::has_name"(ptr %a.load21084, ptr %var.load1085)
  %nottmp1087 = xor i1 %call.res1086, true
  br label %and.32.exit

choice.then1088:                                  ; preds = %and.32.exit
  %var.load1090 = load ptr, ptr %var.target_ref, align 8
  %a.load1091 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1092 = icmp eq ptr %a.load1091, null
  br i1 %a.null1092, label %a.create1093, label %a.after1094

choice.exit1089:                                  ; preds = %a.store, %and.32.exit
  br label %loop.latch.31

a.create1093:                                     ; preds = %choice.then1088
  %arena.cur1095 = call ptr @dva_arena_current()
  %a.create1096 = call ptr @dva_arena_alloc(ptr %arena.cur1095, i64 24)
  %arena.cur1097 = call ptr @dva_arena_current()
  %a.buf1098 = call ptr @dva_arena_alloc(ptr %arena.cur1097, i64 128)
  %a.len.gep1099 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 0
  store i64 0, ptr %a.len.gep1099, align 8
  %a.data.gep1100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 1
  store ptr %a.buf1098, ptr %a.data.gep1100, align 8
  %a.cap.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1101, align 8
  store ptr %a.create1096, ptr %var.filtered_deps, align 8
  br label %a.after1094

a.after1094:                                      ; preds = %a.create1093, %choice.then1088
  %a.load21102 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1094
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  %a.len1103 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 2
  %a.cap1104 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1103, %a.cap1104
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21102)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 1
  %a.cur.data1105 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  %a.cur.len1106 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1105, i64 %a.cur.len1106
  %slot.p2i = ptrtoint ptr %var.load1090 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1106, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1089

str_gen_check1127:                                ; preds = %loop.exit.31
  %arena.cur1130 = call ptr @dva_arena_current()
  %tag.valid1131 = call i1 @dva_arena_validate_tag(ptr %arena.cur1130, i64 %str.tag1125)
  br i1 %tag.valid1131, label %str_ok1128, label %str_stale1129

str_ok1128:                                       ; preds = %str_stale1129, %str_gen_check1127, %loop.exit.31
  %hash.str1132 = call i64 @dva_hash_string(ptr %mk.data1121, i64 %mk.len1124)
  %m.capm11133 = sub i64 %m.cap1115, 1
  %m.idx01134 = and i64 %hash.str1132, %m.capm11133
  br label %m.mem.loop1135

str_stale1129:                                    ; preds = %str_gen_check1127
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1128

m.mem.loop1135:                                   ; preds = %m.mem.next1138, %str_ok1128
  %m.mem.idx1141 = phi i64 [ %m.idx01134, %str_ok1128 ], [ %m.mem.idx.next1184, %m.mem.next1138 ]
  %m.mem.probe1142 = phi i64 [ 0, %str_ok1128 ], [ %m.mem.probe.next1185, %m.mem.next1138 ]
  %m.mem.reached1143 = icmp eq i64 %m.mem.probe1142, %m.cap1115
  %m.mem.state.gep1144 = getelementptr i8, ptr %m.states1119, i64 %m.mem.idx1141
  %m.mem.state1145 = load i8, ptr %m.mem.state.gep1144, align 1
  %m.mem.is.empty1146 = icmp eq i8 %m.mem.state1145, 0
  %m.mem.stop1147 = or i1 %m.mem.is.empty1146, %m.mem.reached1143
  br i1 %m.mem.stop1147, label %m.mem.miss1139, label %m.mem.probe1136

m.mem.probe1136:                                  ; preds = %m.mem.loop1135
  %m.mem.is.tomb1148 = icmp eq i8 %m.mem.state1145, 2
  br i1 %m.mem.is.tomb1148, label %m.mem.next1138, label %m.mem.found1137

m.mem.found1137:                                  ; preds = %m.mem.probe1136
  %m.mem.key.slot1149 = getelementptr ptr, ptr %m.keys1117, i64 %m.mem.idx1141
  %mk.stored1150 = load ptr, ptr %m.mem.key.slot1149, align 8
  %mk.slen1151 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1150, i32 0, i32 0
  %mk.slen1152 = load i64, ptr %mk.slen1151, align 8
  %mk.slen1153 = and i64 %mk.slen1152, 281474976710655
  %str.tag1154 = lshr i64 %mk.slen1152, 48
  %str.immortal1155 = icmp eq i64 %str.tag1154, 0
  br i1 %str.immortal1155, label %str_ok1157, label %str_gen_check1156

m.mem.next1138:                                   ; preds = %mk.eq.merge1174, %m.mem.probe1136
  %m.mem.idx.add1183 = add i64 %m.mem.idx1141, 1
  %m.mem.idx.next1184 = and i64 %m.mem.idx.add1183, %m.capm11133
  %m.mem.probe.next1185 = add i64 %m.mem.probe1142, 1
  br label %m.mem.loop1135

m.mem.miss1139:                                   ; preds = %m.mem.loop1135
  br label %m.mem.done1140

m.mem.done1140:                                   ; preds = %m.mem.miss1139, %m.mem.hit1182
  %m.mem.res1186 = phi i1 [ true, %m.mem.hit1182 ], [ false, %m.mem.miss1139 ]
  store i1 %m.mem.res1186, ptr %var.known, align 1
  %var.load1187 = load i1, ptr %var.known, align 1
  %nottmp1188 = xor i1 %var.load1187, true
  br i1 %nottmp1188, label %choice.then1189, label %choice.exit1190

str_gen_check1156:                                ; preds = %m.mem.found1137
  %arena.cur1159 = call ptr @dva_arena_current()
  %tag.valid1160 = call i1 @dva_arena_validate_tag(ptr %arena.cur1159, i64 %str.tag1154)
  br i1 %tag.valid1160, label %str_ok1157, label %str_stale1158

str_ok1157:                                       ; preds = %str_stale1158, %str_gen_check1156, %m.mem.found1137
  %mk.nlen1161 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 0
  %mk.nlen1162 = load i64, ptr %mk.nlen1161, align 8
  %mk.nlen1163 = and i64 %mk.nlen1162, 281474976710655
  %str.tag1164 = lshr i64 %mk.nlen1162, 48
  %str.immortal1165 = icmp eq i64 %str.tag1164, 0
  br i1 %str.immortal1165, label %str_ok1167, label %str_gen_check1166

str_stale1158:                                    ; preds = %str_gen_check1156
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1157

str_gen_check1166:                                ; preds = %str_ok1157
  %arena.cur1169 = call ptr @dva_arena_current()
  %tag.valid1170 = call i1 @dva_arena_validate_tag(ptr %arena.cur1169, i64 %str.tag1164)
  br i1 %tag.valid1170, label %str_ok1167, label %str_stale1168

str_ok1167:                                       ; preds = %str_stale1168, %str_gen_check1166, %str_ok1157
  %mk.lenseq1171 = icmp eq i64 %mk.slen1153, %mk.nlen1163
  br i1 %mk.lenseq1171, label %mk.eq.then1172, label %mk.eq.else1173

str_stale1168:                                    ; preds = %str_gen_check1166
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1167

mk.eq.then1172:                                   ; preds = %str_ok1167
  %mk.sdata1175 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1150, i32 0, i32 1
  %mk.sdata1176 = load ptr, ptr %mk.sdata1175, align 8
  %mk.ndata1177 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 1
  %mk.ndata1178 = load ptr, ptr %mk.ndata1177, align 8
  %mk.memcmp1179 = call i32 @memcmp(ptr %mk.sdata1176, ptr %mk.ndata1178, i64 %mk.nlen1163)
  %mk.cmpeq1180 = icmp eq i32 %mk.memcmp1179, 0
  br label %mk.eq.merge1174

mk.eq.else1173:                                   ; preds = %str_ok1167
  br label %mk.eq.merge1174

mk.eq.merge1174:                                  ; preds = %mk.eq.else1173, %mk.eq.then1172
  %mk.eq1181 = phi i1 [ %mk.cmpeq1180, %mk.eq.then1172 ], [ false, %mk.eq.else1173 ]
  br i1 %mk.eq1181, label %m.mem.hit1182, label %m.mem.next1138

m.mem.hit1182:                                    ; preds = %mk.eq.merge1174
  br label %m.mem.done1140

choice.then1189:                                  ; preds = %m.mem.done1140
  %var.load1191 = load ptr, ptr %var.node_indices, align 8
  %var.load1192 = load ptr, ptr %var.name2, align 8
  %var.load1193 = load ptr, ptr %var.graph, align 8
  %fld.gep1194 = getelementptr inbounds { ptr, ptr }, ptr %var.load1193, i32 0, i32 0
  %fld.load1195 = load ptr, ptr %fld.gep1194, align 8
  %a.len.query1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1195, i32 0, i32 0
  %a.len.query1197 = load i64, ptr %a.len.query1196, align 8
  %m.cap1198 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1199 = load i64, ptr %m.cap1198, align 8
  %m.keys1200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1201 = load ptr, ptr %m.keys1200, align 8
  %m.vals1202 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1203 = load ptr, ptr %m.vals1202, align 8
  %m.states1204 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1205 = load ptr, ptr %m.states1204, align 8
  %mk.data1206 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.data1207 = load ptr, ptr %mk.data1206, align 8
  %mk.len1208 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.len1209 = load i64, ptr %mk.len1208, align 8
  %mk.len1210 = and i64 %mk.len1209, 281474976710655
  %str.tag1211 = lshr i64 %mk.len1209, 48
  %str.immortal1212 = icmp eq i64 %str.tag1211, 0
  br i1 %str.immortal1212, label %str_ok1214, label %str_gen_check1213

choice.exit1190:                                  ; preds = %m.done1228, %m.mem.done1140
  %var.load1531 = load ptr, ptr %var.graph, align 8
  %var.load1532 = load ptr, ptr %var.name2, align 8
  %var.load1533 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1534 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1535 = icmp eq ptr %a.load1534, null
  br i1 %a.null1535, label %a.create1536, label %a.after1537

str_gen_check1213:                                ; preds = %choice.then1189
  %arena.cur1216 = call ptr @dva_arena_current()
  %tag.valid1217 = call i1 @dva_arena_validate_tag(ptr %arena.cur1216, i64 %str.tag1211)
  br i1 %tag.valid1217, label %str_ok1214, label %str_stale1215

str_ok1214:                                       ; preds = %str_stale1215, %str_gen_check1213, %choice.then1189
  %hash.str1218 = call i64 @dva_hash_string(ptr %mk.data1207, i64 %mk.len1210)
  %m.capm11219 = sub i64 %m.cap1199, 1
  %m.idx01220 = and i64 %hash.str1218, %m.capm11219
  br label %m.loop1221

str_stale1215:                                    ; preds = %str_gen_check1213
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1214

m.loop1221:                                       ; preds = %m.next1226, %str_ok1214
  %m.idx1229 = phi i64 [ %m.idx01220, %str_ok1214 ], [ %m.idx.next1276, %m.next1226 ]
  %m.tomb1230 = phi i64 [ -1, %str_ok1214 ], [ %m.next.tomb1274, %m.next1226 ]
  %m.probe1231 = phi i64 [ 0, %str_ok1214 ], [ %m.probe.next1277, %m.next1226 ]
  %m.reached.cap1232 = icmp eq i64 %m.probe1231, %m.cap1199
  %m.state.gep1233 = getelementptr i8, ptr %m.states1205, i64 %m.idx1229
  %m.state1234 = load i8, ptr %m.state.gep1233, align 1
  %m.is.empty1235 = icmp eq i8 %m.state1234, 0
  %m.stop1236 = or i1 %m.is.empty1235, %m.reached.cap1232
  br i1 %m.stop1236, label %m.empty1227, label %m.check.tomb1222

m.check.tomb1222:                                 ; preds = %m.loop1221
  %m.is.tomb1237 = icmp eq i8 %m.state1234, 2
  br i1 %m.is.tomb1237, label %m.tomb1223, label %m.found1224

m.tomb1223:                                       ; preds = %m.check.tomb1222
  %m.has.tomb1238 = icmp ne i64 %m.tomb1230, -1
  %m.tomb.sel1239 = select i1 %m.has.tomb1238, i64 %m.tomb1230, i64 %m.idx1229
  br label %m.next1226

m.found1224:                                      ; preds = %m.check.tomb1222
  %m.key.slot1240 = getelementptr ptr, ptr %m.keys1201, i64 %m.idx1229
  %mk.stored1241 = load ptr, ptr %m.key.slot1240, align 8
  %mk.slen1242 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1241, i32 0, i32 0
  %mk.slen1243 = load i64, ptr %mk.slen1242, align 8
  %mk.slen1244 = and i64 %mk.slen1243, 281474976710655
  %str.tag1245 = lshr i64 %mk.slen1243, 48
  %str.immortal1246 = icmp eq i64 %str.tag1245, 0
  br i1 %str.immortal1246, label %str_ok1248, label %str_gen_check1247

m.overwrite1225:                                  ; preds = %mk.eq.merge1265
  %m.val.slot1273 = getelementptr i64, ptr %m.vals1203, i64 %m.idx1229
  store i64 %a.len.query1197, ptr %m.val.slot1273, align 8
  br label %m.done1228

m.next1226:                                       ; preds = %mk.eq.merge1265, %m.tomb1223
  %m.next.tomb1274 = phi i64 [ %m.tomb.sel1239, %m.tomb1223 ], [ %m.tomb1230, %mk.eq.merge1265 ]
  %m.idx.add1275 = add i64 %m.idx1229, 1
  %m.idx.next1276 = and i64 %m.idx.add1275, %m.capm11219
  %m.probe.next1277 = add i64 %m.probe1231, 1
  br label %m.loop1221

m.empty1227:                                      ; preds = %m.loop1221
  %m.grow.cnt.p1278 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.grow.cnt1279 = load i64, ptr %m.grow.cnt.p1278, align 8
  %m.grow.tm.p1280 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.grow.tm1281 = load i64, ptr %m.grow.tm.p1280, align 8
  %m.occupied1282 = add i64 %m.grow.cnt1279, %m.grow.tm1281
  %m.c.plus1283 = add i64 %m.occupied1282, 1
  %m.c.lhs1284 = mul i64 %m.c.plus1283, 4
  %m.c.rhs1285 = mul i64 %m.cap1199, 3
  %m.need.grow1286 = icmp sgt i64 %m.c.lhs1284, %m.c.rhs1285
  br i1 %m.need.grow1286, label %m.grow1287, label %m.ins.slot1288

m.done1228:                                       ; preds = %m.ins.slot1288, %m.done1455, %m.overwrite1225
  br label %choice.exit1190

str_gen_check1247:                                ; preds = %m.found1224
  %arena.cur1250 = call ptr @dva_arena_current()
  %tag.valid1251 = call i1 @dva_arena_validate_tag(ptr %arena.cur1250, i64 %str.tag1245)
  br i1 %tag.valid1251, label %str_ok1248, label %str_stale1249

str_ok1248:                                       ; preds = %str_stale1249, %str_gen_check1247, %m.found1224
  %mk.nlen1252 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.nlen1253 = load i64, ptr %mk.nlen1252, align 8
  %mk.nlen1254 = and i64 %mk.nlen1253, 281474976710655
  %str.tag1255 = lshr i64 %mk.nlen1253, 48
  %str.immortal1256 = icmp eq i64 %str.tag1255, 0
  br i1 %str.immortal1256, label %str_ok1258, label %str_gen_check1257

str_stale1249:                                    ; preds = %str_gen_check1247
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1248

str_gen_check1257:                                ; preds = %str_ok1248
  %arena.cur1260 = call ptr @dva_arena_current()
  %tag.valid1261 = call i1 @dva_arena_validate_tag(ptr %arena.cur1260, i64 %str.tag1255)
  br i1 %tag.valid1261, label %str_ok1258, label %str_stale1259

str_ok1258:                                       ; preds = %str_stale1259, %str_gen_check1257, %str_ok1248
  %mk.lenseq1262 = icmp eq i64 %mk.slen1244, %mk.nlen1254
  br i1 %mk.lenseq1262, label %mk.eq.then1263, label %mk.eq.else1264

str_stale1259:                                    ; preds = %str_gen_check1257
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1258

mk.eq.then1263:                                   ; preds = %str_ok1258
  %mk.sdata1266 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1241, i32 0, i32 1
  %mk.sdata1267 = load ptr, ptr %mk.sdata1266, align 8
  %mk.ndata1268 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.ndata1269 = load ptr, ptr %mk.ndata1268, align 8
  %mk.memcmp1270 = call i32 @memcmp(ptr %mk.sdata1267, ptr %mk.ndata1269, i64 %mk.nlen1254)
  %mk.cmpeq1271 = icmp eq i32 %mk.memcmp1270, 0
  br label %mk.eq.merge1265

mk.eq.else1264:                                   ; preds = %str_ok1258
  br label %mk.eq.merge1265

mk.eq.merge1265:                                  ; preds = %mk.eq.else1264, %mk.eq.then1263
  %mk.eq1272 = phi i1 [ %mk.cmpeq1271, %mk.eq.then1263 ], [ false, %mk.eq.else1264 ]
  br i1 %mk.eq1272, label %m.overwrite1225, label %m.next1226

m.grow1287:                                       ; preds = %m.empty1227
  %m.old.cap1289 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.old.cap1290 = load i64, ptr %m.old.cap1289, align 8
  %m.old.keys1291 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.old.keys1292 = load ptr, ptr %m.old.keys1291, align 8
  %m.old.vals1293 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.old.vals1294 = load ptr, ptr %m.old.vals1293, align 8
  %m.old.states1295 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.old.states1296 = load ptr, ptr %m.old.states1295, align 8
  %m.double.cap1297 = mul i64 %m.old.cap1290, 2
  %m.live.cnt1298 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.live.cnt1299 = load i64, ptr %m.live.cnt1298, align 8
  %m.live.x21300 = mul i64 %m.live.cnt1299, 2
  %m.should.double1301 = icmp sgt i64 %m.live.x21300, %m.old.cap1290
  %m.new.cap1302 = select i1 %m.should.double1301, i64 %m.double.cap1297, i64 %m.old.cap1290
  %m.gk.bytes1303 = mul i64 %m.new.cap1302, 8
  %arena.cur1304 = call ptr @dva_arena_current()
  %m.gk1305 = call ptr @dva_arena_alloc(ptr %arena.cur1304, i64 %m.gk.bytes1303)
  %m.gv.bytes1306 = mul i64 %m.new.cap1302, 8
  %arena.cur1307 = call ptr @dva_arena_current()
  %m.gv1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 %m.gv.bytes1306)
  %arena.cur1309 = call ptr @dva_arena_current()
  %m.gs1310 = call ptr @dva_arena_alloc(ptr %arena.cur1309, i64 %m.new.cap1302)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1310, i8 0, i64 %m.new.cap1302, i1 false)
  %m.cap.gep1311 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  store i64 %m.new.cap1302, ptr %m.cap.gep1311, align 8
  %m.keys.gep1312 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  store ptr %m.gk1305, ptr %m.keys.gep1312, align 8
  %m.vals.gep1313 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  store ptr %m.gv1308, ptr %m.vals.gep1313, align 8
  %m.states.gep1314 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  store ptr %m.gs1310, ptr %m.states.gep1314, align 8
  %m.count.gep1315 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 0, ptr %m.count.gep1315, align 8
  %m.tombs.gep1316 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1316, align 8
  br label %m.re.loop1317

m.ins.slot1288:                                   ; preds = %m.empty1227
  %m.use.tomb1518 = icmp ne i64 %m.tomb1230, -1
  %m.ins.idx1519 = select i1 %m.use.tomb1518, i64 %m.tomb1230, i64 %m.idx1229
  %m.key.slot1520 = getelementptr ptr, ptr %m.keys1201, i64 %m.ins.idx1519
  store ptr %var.load1192, ptr %m.key.slot1520, align 8
  %m.val.slot1521 = getelementptr i64, ptr %m.vals1203, i64 %m.ins.idx1519
  store i64 %a.len.query1197, ptr %m.val.slot1521, align 8
  %m.ins.state.slot1522 = getelementptr i8, ptr %m.states1205, i64 %m.ins.idx1519
  store i8 1, ptr %m.ins.state.slot1522, align 1
  %m.count1523 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1524 = load i64, ptr %m.count1523, align 8
  %m.count.next1525 = add i64 %m.count1524, 1
  %m.count.gep1526 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1525, ptr %m.count.gep1526, align 8
  %m.ins.tombs.p1527 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1528 = load i64, ptr %m.ins.tombs.p1527, align 8
  %m.tomb.dec1529 = select i1 %m.use.tomb1518, i64 1, i64 0
  %m.ins.tombs.next1530 = sub i64 %m.ins.tombs1528, %m.tomb.dec1529
  store i64 %m.ins.tombs.next1530, ptr %m.ins.tombs.p1527, align 8
  br label %m.done1228

m.re.loop1317:                                    ; preds = %m.re.cont1319, %m.grow1287
  %m.re.i1321 = phi i64 [ 0, %m.grow1287 ], [ %m.re.i.next1424, %m.re.cont1319 ]
  %m.re.lt1322 = icmp slt i64 %m.re.i1321, %m.old.cap1290
  br i1 %m.re.lt1322, label %m.re.body1318, label %m.re.done1320

m.re.body1318:                                    ; preds = %m.re.loop1317
  %m.re.state.gep1323 = getelementptr i8, ptr %m.old.states1296, i64 %m.re.i1321
  %m.re.state1324 = load i8, ptr %m.re.state.gep1323, align 1
  %m.re.occ1325 = icmp eq i8 %m.re.state1324, 1
  br i1 %m.re.occ1325, label %m.re.ins1326, label %m.re.cont1319

m.re.cont1319:                                    ; preds = %m.done1361, %m.re.body1318
  %m.re.i.next1424 = add i64 %m.re.i1321, 1
  br label %m.re.loop1317

m.re.done1320:                                    ; preds = %m.re.loop1317
  %m.cap1425 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1426 = load i64, ptr %m.cap1425, align 8
  %m.keys1427 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1428 = load ptr, ptr %m.keys1427, align 8
  %m.vals1429 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1430 = load ptr, ptr %m.vals1429, align 8
  %m.states1431 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1432 = load ptr, ptr %m.states1431, align 8
  %mk.data1433 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.data1434 = load ptr, ptr %mk.data1433, align 8
  %mk.len1435 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.len1436 = load i64, ptr %mk.len1435, align 8
  %mk.len1437 = and i64 %mk.len1436, 281474976710655
  %str.tag1438 = lshr i64 %mk.len1436, 48
  %str.immortal1439 = icmp eq i64 %str.tag1438, 0
  br i1 %str.immortal1439, label %str_ok1441, label %str_gen_check1440

m.re.ins1326:                                     ; preds = %m.re.body1318
  %m.re.key.slot1327 = getelementptr ptr, ptr %m.old.keys1292, i64 %m.re.i1321
  %m.re.val.slot1328 = getelementptr i64, ptr %m.old.vals1294, i64 %m.re.i1321
  %m.re.key1329 = load ptr, ptr %m.re.key.slot1327, align 8
  %m.re.val1330 = load i64, ptr %m.re.val.slot1328, align 8
  %m.cap1331 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1332 = load i64, ptr %m.cap1331, align 8
  %m.keys1333 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1334 = load ptr, ptr %m.keys1333, align 8
  %m.vals1335 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1336 = load ptr, ptr %m.vals1335, align 8
  %m.states1337 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1338 = load ptr, ptr %m.states1337, align 8
  %mk.data1339 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 1
  %mk.data1340 = load ptr, ptr %mk.data1339, align 8
  %mk.len1341 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 0
  %mk.len1342 = load i64, ptr %mk.len1341, align 8
  %mk.len1343 = and i64 %mk.len1342, 281474976710655
  %str.tag1344 = lshr i64 %mk.len1342, 48
  %str.immortal1345 = icmp eq i64 %str.tag1344, 0
  br i1 %str.immortal1345, label %str_ok1347, label %str_gen_check1346

str_gen_check1346:                                ; preds = %m.re.ins1326
  %arena.cur1349 = call ptr @dva_arena_current()
  %tag.valid1350 = call i1 @dva_arena_validate_tag(ptr %arena.cur1349, i64 %str.tag1344)
  br i1 %tag.valid1350, label %str_ok1347, label %str_stale1348

str_ok1347:                                       ; preds = %str_stale1348, %str_gen_check1346, %m.re.ins1326
  %hash.str1351 = call i64 @dva_hash_string(ptr %mk.data1340, i64 %mk.len1343)
  %m.capm11352 = sub i64 %m.cap1332, 1
  %m.idx01353 = and i64 %hash.str1351, %m.capm11352
  br label %m.loop1354

str_stale1348:                                    ; preds = %str_gen_check1346
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1347

m.loop1354:                                       ; preds = %m.next1359, %str_ok1347
  %m.idx1362 = phi i64 [ %m.idx01353, %str_ok1347 ], [ %m.idx.next1409, %m.next1359 ]
  %m.tomb1363 = phi i64 [ -1, %str_ok1347 ], [ %m.next.tomb1407, %m.next1359 ]
  %m.probe1364 = phi i64 [ 0, %str_ok1347 ], [ %m.probe.next1410, %m.next1359 ]
  %m.reached.cap1365 = icmp eq i64 %m.probe1364, %m.cap1332
  %m.state.gep1366 = getelementptr i8, ptr %m.states1338, i64 %m.idx1362
  %m.state1367 = load i8, ptr %m.state.gep1366, align 1
  %m.is.empty1368 = icmp eq i8 %m.state1367, 0
  %m.stop1369 = or i1 %m.is.empty1368, %m.reached.cap1365
  br i1 %m.stop1369, label %m.empty1360, label %m.check.tomb1355

m.check.tomb1355:                                 ; preds = %m.loop1354
  %m.is.tomb1370 = icmp eq i8 %m.state1367, 2
  br i1 %m.is.tomb1370, label %m.tomb1356, label %m.found1357

m.tomb1356:                                       ; preds = %m.check.tomb1355
  %m.has.tomb1371 = icmp ne i64 %m.tomb1363, -1
  %m.tomb.sel1372 = select i1 %m.has.tomb1371, i64 %m.tomb1363, i64 %m.idx1362
  br label %m.next1359

m.found1357:                                      ; preds = %m.check.tomb1355
  %m.key.slot1373 = getelementptr ptr, ptr %m.keys1334, i64 %m.idx1362
  %mk.stored1374 = load ptr, ptr %m.key.slot1373, align 8
  %mk.slen1375 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1374, i32 0, i32 0
  %mk.slen1376 = load i64, ptr %mk.slen1375, align 8
  %mk.slen1377 = and i64 %mk.slen1376, 281474976710655
  %str.tag1378 = lshr i64 %mk.slen1376, 48
  %str.immortal1379 = icmp eq i64 %str.tag1378, 0
  br i1 %str.immortal1379, label %str_ok1381, label %str_gen_check1380

m.overwrite1358:                                  ; preds = %mk.eq.merge1398
  %m.val.slot1406 = getelementptr i64, ptr %m.vals1336, i64 %m.idx1362
  store i64 %m.re.val1330, ptr %m.val.slot1406, align 8
  br label %m.done1361

m.next1359:                                       ; preds = %mk.eq.merge1398, %m.tomb1356
  %m.next.tomb1407 = phi i64 [ %m.tomb.sel1372, %m.tomb1356 ], [ %m.tomb1363, %mk.eq.merge1398 ]
  %m.idx.add1408 = add i64 %m.idx1362, 1
  %m.idx.next1409 = and i64 %m.idx.add1408, %m.capm11352
  %m.probe.next1410 = add i64 %m.probe1364, 1
  br label %m.loop1354

m.empty1360:                                      ; preds = %m.loop1354
  %m.use.tomb1411 = icmp ne i64 %m.tomb1363, -1
  %m.ins.idx1412 = select i1 %m.use.tomb1411, i64 %m.tomb1363, i64 %m.idx1362
  %m.key.slot1413 = getelementptr ptr, ptr %m.keys1334, i64 %m.ins.idx1412
  store ptr %m.re.key1329, ptr %m.key.slot1413, align 8
  %m.val.slot1414 = getelementptr i64, ptr %m.vals1336, i64 %m.ins.idx1412
  store i64 %m.re.val1330, ptr %m.val.slot1414, align 8
  %m.ins.state.slot1415 = getelementptr i8, ptr %m.states1338, i64 %m.ins.idx1412
  store i8 1, ptr %m.ins.state.slot1415, align 1
  %m.count1416 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1417 = load i64, ptr %m.count1416, align 8
  %m.count.next1418 = add i64 %m.count1417, 1
  %m.count.gep1419 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1418, ptr %m.count.gep1419, align 8
  %m.ins.tombs.p1420 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1421 = load i64, ptr %m.ins.tombs.p1420, align 8
  %m.tomb.dec1422 = select i1 %m.use.tomb1411, i64 1, i64 0
  %m.ins.tombs.next1423 = sub i64 %m.ins.tombs1421, %m.tomb.dec1422
  store i64 %m.ins.tombs.next1423, ptr %m.ins.tombs.p1420, align 8
  br label %m.done1361

m.done1361:                                       ; preds = %m.empty1360, %m.overwrite1358
  br label %m.re.cont1319

str_gen_check1380:                                ; preds = %m.found1357
  %arena.cur1383 = call ptr @dva_arena_current()
  %tag.valid1384 = call i1 @dva_arena_validate_tag(ptr %arena.cur1383, i64 %str.tag1378)
  br i1 %tag.valid1384, label %str_ok1381, label %str_stale1382

str_ok1381:                                       ; preds = %str_stale1382, %str_gen_check1380, %m.found1357
  %mk.nlen1385 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 0
  %mk.nlen1386 = load i64, ptr %mk.nlen1385, align 8
  %mk.nlen1387 = and i64 %mk.nlen1386, 281474976710655
  %str.tag1388 = lshr i64 %mk.nlen1386, 48
  %str.immortal1389 = icmp eq i64 %str.tag1388, 0
  br i1 %str.immortal1389, label %str_ok1391, label %str_gen_check1390

str_stale1382:                                    ; preds = %str_gen_check1380
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1381

str_gen_check1390:                                ; preds = %str_ok1381
  %arena.cur1393 = call ptr @dva_arena_current()
  %tag.valid1394 = call i1 @dva_arena_validate_tag(ptr %arena.cur1393, i64 %str.tag1388)
  br i1 %tag.valid1394, label %str_ok1391, label %str_stale1392

str_ok1391:                                       ; preds = %str_stale1392, %str_gen_check1390, %str_ok1381
  %mk.lenseq1395 = icmp eq i64 %mk.slen1377, %mk.nlen1387
  br i1 %mk.lenseq1395, label %mk.eq.then1396, label %mk.eq.else1397

str_stale1392:                                    ; preds = %str_gen_check1390
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1391

mk.eq.then1396:                                   ; preds = %str_ok1391
  %mk.sdata1399 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1374, i32 0, i32 1
  %mk.sdata1400 = load ptr, ptr %mk.sdata1399, align 8
  %mk.ndata1401 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 1
  %mk.ndata1402 = load ptr, ptr %mk.ndata1401, align 8
  %mk.memcmp1403 = call i32 @memcmp(ptr %mk.sdata1400, ptr %mk.ndata1402, i64 %mk.nlen1387)
  %mk.cmpeq1404 = icmp eq i32 %mk.memcmp1403, 0
  br label %mk.eq.merge1398

mk.eq.else1397:                                   ; preds = %str_ok1391
  br label %mk.eq.merge1398

mk.eq.merge1398:                                  ; preds = %mk.eq.else1397, %mk.eq.then1396
  %mk.eq1405 = phi i1 [ %mk.cmpeq1404, %mk.eq.then1396 ], [ false, %mk.eq.else1397 ]
  br i1 %mk.eq1405, label %m.overwrite1358, label %m.next1359

str_gen_check1440:                                ; preds = %m.re.done1320
  %arena.cur1443 = call ptr @dva_arena_current()
  %tag.valid1444 = call i1 @dva_arena_validate_tag(ptr %arena.cur1443, i64 %str.tag1438)
  br i1 %tag.valid1444, label %str_ok1441, label %str_stale1442

str_ok1441:                                       ; preds = %str_stale1442, %str_gen_check1440, %m.re.done1320
  %hash.str1445 = call i64 @dva_hash_string(ptr %mk.data1434, i64 %mk.len1437)
  %m.capm11446 = sub i64 %m.cap1426, 1
  %m.idx01447 = and i64 %hash.str1445, %m.capm11446
  br label %m.loop1448

str_stale1442:                                    ; preds = %str_gen_check1440
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1441

m.loop1448:                                       ; preds = %m.next1453, %str_ok1441
  %m.idx1456 = phi i64 [ %m.idx01447, %str_ok1441 ], [ %m.idx.next1503, %m.next1453 ]
  %m.tomb1457 = phi i64 [ -1, %str_ok1441 ], [ %m.next.tomb1501, %m.next1453 ]
  %m.probe1458 = phi i64 [ 0, %str_ok1441 ], [ %m.probe.next1504, %m.next1453 ]
  %m.reached.cap1459 = icmp eq i64 %m.probe1458, %m.cap1426
  %m.state.gep1460 = getelementptr i8, ptr %m.states1432, i64 %m.idx1456
  %m.state1461 = load i8, ptr %m.state.gep1460, align 1
  %m.is.empty1462 = icmp eq i8 %m.state1461, 0
  %m.stop1463 = or i1 %m.is.empty1462, %m.reached.cap1459
  br i1 %m.stop1463, label %m.empty1454, label %m.check.tomb1449

m.check.tomb1449:                                 ; preds = %m.loop1448
  %m.is.tomb1464 = icmp eq i8 %m.state1461, 2
  br i1 %m.is.tomb1464, label %m.tomb1450, label %m.found1451

m.tomb1450:                                       ; preds = %m.check.tomb1449
  %m.has.tomb1465 = icmp ne i64 %m.tomb1457, -1
  %m.tomb.sel1466 = select i1 %m.has.tomb1465, i64 %m.tomb1457, i64 %m.idx1456
  br label %m.next1453

m.found1451:                                      ; preds = %m.check.tomb1449
  %m.key.slot1467 = getelementptr ptr, ptr %m.keys1428, i64 %m.idx1456
  %mk.stored1468 = load ptr, ptr %m.key.slot1467, align 8
  %mk.slen1469 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1468, i32 0, i32 0
  %mk.slen1470 = load i64, ptr %mk.slen1469, align 8
  %mk.slen1471 = and i64 %mk.slen1470, 281474976710655
  %str.tag1472 = lshr i64 %mk.slen1470, 48
  %str.immortal1473 = icmp eq i64 %str.tag1472, 0
  br i1 %str.immortal1473, label %str_ok1475, label %str_gen_check1474

m.overwrite1452:                                  ; preds = %mk.eq.merge1492
  %m.val.slot1500 = getelementptr i64, ptr %m.vals1430, i64 %m.idx1456
  store i64 %a.len.query1197, ptr %m.val.slot1500, align 8
  br label %m.done1455

m.next1453:                                       ; preds = %mk.eq.merge1492, %m.tomb1450
  %m.next.tomb1501 = phi i64 [ %m.tomb.sel1466, %m.tomb1450 ], [ %m.tomb1457, %mk.eq.merge1492 ]
  %m.idx.add1502 = add i64 %m.idx1456, 1
  %m.idx.next1503 = and i64 %m.idx.add1502, %m.capm11446
  %m.probe.next1504 = add i64 %m.probe1458, 1
  br label %m.loop1448

m.empty1454:                                      ; preds = %m.loop1448
  %m.use.tomb1505 = icmp ne i64 %m.tomb1457, -1
  %m.ins.idx1506 = select i1 %m.use.tomb1505, i64 %m.tomb1457, i64 %m.idx1456
  %m.key.slot1507 = getelementptr ptr, ptr %m.keys1428, i64 %m.ins.idx1506
  store ptr %var.load1192, ptr %m.key.slot1507, align 8
  %m.val.slot1508 = getelementptr i64, ptr %m.vals1430, i64 %m.ins.idx1506
  store i64 %a.len.query1197, ptr %m.val.slot1508, align 8
  %m.ins.state.slot1509 = getelementptr i8, ptr %m.states1432, i64 %m.ins.idx1506
  store i8 1, ptr %m.ins.state.slot1509, align 1
  %m.count1510 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1511 = load i64, ptr %m.count1510, align 8
  %m.count.next1512 = add i64 %m.count1511, 1
  %m.count.gep1513 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1512, ptr %m.count.gep1513, align 8
  %m.ins.tombs.p1514 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1515 = load i64, ptr %m.ins.tombs.p1514, align 8
  %m.tomb.dec1516 = select i1 %m.use.tomb1505, i64 1, i64 0
  %m.ins.tombs.next1517 = sub i64 %m.ins.tombs1515, %m.tomb.dec1516
  store i64 %m.ins.tombs.next1517, ptr %m.ins.tombs.p1514, align 8
  br label %m.done1455

m.done1455:                                       ; preds = %m.empty1454, %m.overwrite1452
  br label %m.done1228

str_gen_check1474:                                ; preds = %m.found1451
  %arena.cur1477 = call ptr @dva_arena_current()
  %tag.valid1478 = call i1 @dva_arena_validate_tag(ptr %arena.cur1477, i64 %str.tag1472)
  br i1 %tag.valid1478, label %str_ok1475, label %str_stale1476

str_ok1475:                                       ; preds = %str_stale1476, %str_gen_check1474, %m.found1451
  %mk.nlen1479 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.nlen1480 = load i64, ptr %mk.nlen1479, align 8
  %mk.nlen1481 = and i64 %mk.nlen1480, 281474976710655
  %str.tag1482 = lshr i64 %mk.nlen1480, 48
  %str.immortal1483 = icmp eq i64 %str.tag1482, 0
  br i1 %str.immortal1483, label %str_ok1485, label %str_gen_check1484

str_stale1476:                                    ; preds = %str_gen_check1474
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1475

str_gen_check1484:                                ; preds = %str_ok1475
  %arena.cur1487 = call ptr @dva_arena_current()
  %tag.valid1488 = call i1 @dva_arena_validate_tag(ptr %arena.cur1487, i64 %str.tag1482)
  br i1 %tag.valid1488, label %str_ok1485, label %str_stale1486

str_ok1485:                                       ; preds = %str_stale1486, %str_gen_check1484, %str_ok1475
  %mk.lenseq1489 = icmp eq i64 %mk.slen1471, %mk.nlen1481
  br i1 %mk.lenseq1489, label %mk.eq.then1490, label %mk.eq.else1491

str_stale1486:                                    ; preds = %str_gen_check1484
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1485

mk.eq.then1490:                                   ; preds = %str_ok1485
  %mk.sdata1493 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1468, i32 0, i32 1
  %mk.sdata1494 = load ptr, ptr %mk.sdata1493, align 8
  %mk.ndata1495 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.ndata1496 = load ptr, ptr %mk.ndata1495, align 8
  %mk.memcmp1497 = call i32 @memcmp(ptr %mk.sdata1494, ptr %mk.ndata1496, i64 %mk.nlen1481)
  %mk.cmpeq1498 = icmp eq i32 %mk.memcmp1497, 0
  br label %mk.eq.merge1492

mk.eq.else1491:                                   ; preds = %str_ok1485
  br label %mk.eq.merge1492

mk.eq.merge1492:                                  ; preds = %mk.eq.else1491, %mk.eq.then1490
  %mk.eq1499 = phi i1 [ %mk.cmpeq1498, %mk.eq.then1490 ], [ false, %mk.eq.else1491 ]
  br i1 %mk.eq1499, label %m.overwrite1452, label %m.next1453

a.create1536:                                     ; preds = %choice.exit1190
  %arena.cur1538 = call ptr @dva_arena_current()
  %a.create1539 = call ptr @dva_arena_alloc(ptr %arena.cur1538, i64 24)
  %arena.cur1540 = call ptr @dva_arena_current()
  %a.buf1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 128)
  %a.len.gep1542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 0
  store i64 0, ptr %a.len.gep1542, align 8
  %a.data.gep1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 1
  store ptr %a.buf1541, ptr %a.data.gep1543, align 8
  %a.cap.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1544, align 8
  store ptr %a.create1539, ptr %var.filtered_deps, align 8
  br label %a.after1537

a.after1537:                                      ; preds = %a.create1536, %choice.exit1190
  %a.load21545 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1546 = load i64, ptr %var.j, align 8
  %arena.cur1547 = call ptr @dva_arena_current()
  %rec.alloc1548 = call ptr @dva_arena_alloc(ptr %arena.cur1547, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1549 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 0
  store ptr %var.load1532, ptr %rec.fld1549, align 8
  %rec.fld1550 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 1
  store ptr %a.load21545, ptr %rec.fld1550, align 8
  %rec.fld1551 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 2
  store i64 %var.load1546, ptr %rec.fld1551, align 8
  %fld.gep1552 = getelementptr inbounds { ptr, ptr }, ptr %var.load1531, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1552, align 8
  br label %a.check1553

a.check1553:                                      ; preds = %a.after1537
  %a.len1556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1557 = load i64, ptr %a.len1556, align 8
  %a.cap1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1559 = load i64, ptr %a.cap1558, align 8
  %a.needs.grow1560 = icmp eq i64 %a.len1557, %a.cap1559
  br i1 %a.needs.grow1560, label %a.grow1554, label %a.store1555

a.grow1554:                                       ; preds = %a.check1553
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1555

a.store1555:                                      ; preds = %a.grow1554, %a.check1553
  %a.cur.data1561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1562 = load ptr, ptr %a.cur.data1561, align 8
  %a.cur.len1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1564 = load i64, ptr %a.cur.len1563, align 8
  %a.elem.gep1565 = getelementptr i64, ptr %a.cur.data1562, i64 %a.cur.len1564
  %slot.p2i1566 = ptrtoint ptr %rec.alloc1548 to i64
  store i64 %slot.p2i1566, ptr %a.elem.gep1565, align 8
  %a.next.len1567 = add i64 %a.cur.len1564, 1
  %b.len.gep1568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1567, ptr %b.len.gep1568, align 8
  br label %choice.exit973
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
  store i64 0, ptr %a.elem.gep112, align 8
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
  %var._226 = alloca ptr, align 8
  %var._225 = alloca ptr, align 8
  %var._224 = alloca ptr, align 8
  %var._99 = alloca ptr, align 8
  %var._98 = alloca ptr, align 8
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
  store i64 259, ptr %err.line.gep, align 8
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
  store i64 259, ptr %err.line.gep12, align 8
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
  %var.load143 = load i64, ptr %var.u, align 8
  %a.load144 = load ptr, ptr %var.stk, align 8
  %a.null145 = icmp eq ptr %a.load144, null
  br i1 %a.null145, label %a.create146, label %a.after147

choice.exit:                                      ; preds = %a.store, %choice.exit97
  %var.load161 = load ptr, ptr %var.s_ptr, align 8
  %a.load162 = load ptr, ptr %var.s_ptr, align 8
  %a.null163 = icmp eq ptr %a.load162, null
  br i1 %a.null163, label %a.create164, label %a.after165

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
  %a.wr.nonnull = icmp ne ptr %a.load267, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after59
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 0
  %a.wr.len70 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load68, 0
  %a.wr.lt = icmp slt i64 %var.load68, %a.wr.len70
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 1
  %a.wr.data71 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data71, i64 %var.load68
  store i64 %var.load69, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after59
  %arena.cur72 = call ptr @dva_arena_current()
  %err.alloc73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 56)
  %err.code.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 0
  store i64 4011, ptr %err.code.gep74, align 8
  %err.msg.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep75, align 8
  %err.file.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep76, align 8
  %err.line.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 3
  store i64 0, ptr %err.line.gep77, align 8
  %err.col.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 4
  store i64 0, ptr %err.col.gep78, align 8
  %err.ctx.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 5
  %err.ctx0.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep80, align 8
  %err.ctx1.gep81 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep81, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur82 = call ptr @dva_arena_current()
  %err.alloc83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 56)
  %err.code.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 0
  store i64 4011, ptr %err.code.gep84, align 8
  %err.msg.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep85, align 8
  %err.file.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep86, align 8
  %err.line.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 3
  store i64 0, ptr %err.line.gep87, align 8
  %err.col.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 4
  store i64 0, ptr %err.col.gep88, align 8
  %err.ctx.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 5
  %err.ctx0.gep90 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 0
  store i64 %var.load68, ptr %err.ctx0.gep90, align 8
  %err.ctx1.gep91 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 1
  store i64 %a.wr.len70, ptr %err.ctx1.gep91, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc73, %a.wr.err.null ], [ %err.alloc83, %a.wr.err.oob ]
  %arena.cur92 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %tag.gep93 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep93, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep94 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep94, align 8
  br i1 %is.pos, label %choice.then95, label %choice.else96

choice.then95:                                    ; preds = %a.wr.done
  br label %choice.exit97

choice.else96:                                    ; preds = %a.wr.done
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._98, align 8
  store ptr %payload.ptr, ptr %var._99, align 8
  %err.code.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code101 = load i64, ptr %err.code.gep100, align 8
  %err.msg.gep102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct103 = load ptr, ptr %err.msg.gep102, align 8
  %err.file.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct105 = load ptr, ptr %err.file.gep104, align 8
  %err.line.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line107 = load i64, ptr %err.line.gep106, align 8
  %err.col.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col109 = load i64, ptr %err.col.gep108, align 8
  %err.msg.len110 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct103, i32 0, i32 0
  %err.msg.len111 = load i64, ptr %err.msg.len110, align 8
  %err.msg.len112 = and i64 %err.msg.len111, 281474976710655
  %str.tag113 = lshr i64 %err.msg.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

choice.exit97:                                    ; preds = %err.abort, %choice.then95
  br label %choice.exit

str_gen_check115:                                 ; preds = %choice.else96
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %choice.else96
  %err.msg.len32120 = trunc i64 %err.msg.len112 to i32
  %err.msg.data121 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct103, i32 0, i32 1
  %err.msg.data122 = load ptr, ptr %err.msg.data121, align 8
  %err.file.len123 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct105, i32 0, i32 0
  %err.file.len124 = load i64, ptr %err.file.len123, align 8
  %err.file.len125 = and i64 %err.file.len124, 281474976710655
  %str.tag126 = lshr i64 %err.file.len124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_stale117:                                     ; preds = %str_gen_check115
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str_gen_check128:                                 ; preds = %str_ok116
  %arena.cur131 = call ptr @dva_arena_current()
  %tag.valid132 = call i1 @dva_arena_validate_tag(ptr %arena.cur131, i64 %str.tag126)
  br i1 %tag.valid132, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %str_ok116
  %err.file.len32133 = trunc i64 %err.file.len125 to i32
  %err.file.data134 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct105, i32 0, i32 1
  %err.file.data135 = load ptr, ptr %err.file.data134, align 8
  %err.thread.rec136 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread137 = icmp ne ptr %err.thread.rec136, null
  br i1 %err.is.thread137, label %err.thread138, label %err.normal139

str_stale130:                                     ; preds = %str_gen_check128
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

err.thread138:                                    ; preds = %str_ok129
  %err.haserr.gep140 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec136, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep140, align 8
  %err.err.gep141 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec136, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep141, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal139:                                    ; preds = %str_ok129
  %err.panic.printf142 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code101, i32 %err.msg.len32120, ptr %err.msg.data122, i32 %err.file.len32133, ptr %err.file.data135, i64 %err.line107, i64 %err.col109)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit97

a.create146:                                      ; preds = %choice.else
  %arena.cur148 = call ptr @dva_arena_current()
  %a.create149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 24)
  %arena.cur150 = call ptr @dva_arena_current()
  %a.buf151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 128)
  %a.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 0
  store i64 0, ptr %a.len.gep152, align 8
  %a.data.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 1
  store ptr %a.buf151, ptr %a.data.gep153, align 8
  %a.cap.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 2
  store i64 16, ptr %a.cap.gep154, align 8
  store ptr %a.create149, ptr %var.stk, align 8
  br label %a.after147

a.after147:                                       ; preds = %a.create146, %choice.else
  %a.load2155 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after147
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2155, i32 0, i32 0
  %a.len156 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2155, i32 0, i32 2
  %a.cap157 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len156, %a.cap157
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2155)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2155, i32 0, i32 1
  %a.cur.data158 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2155, i32 0, i32 0
  %a.cur.len159 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep160 = getelementptr i64, ptr %a.cur.data158, i64 %a.cur.len159
  store i64 %var.load143, ptr %a.elem.gep160, align 8
  %a.next.len = add i64 %a.cur.len159, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2155, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create164:                                      ; preds = %choice.exit
  %arena.cur166 = call ptr @dva_arena_current()
  %a.create167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 24)
  %arena.cur168 = call ptr @dva_arena_current()
  %a.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 128)
  %a.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 0
  store i64 0, ptr %a.len.gep170, align 8
  %a.data.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 1
  store ptr %a.buf169, ptr %a.data.gep171, align 8
  %a.cap.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep172, align 8
  store ptr %a.create167, ptr %var.s_ptr, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %choice.exit
  %a.load2173 = load ptr, ptr %var.s_ptr, align 8
  %var.load174 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load174, 1
  %a.wr.nonnull175 = icmp ne ptr %a.load2173, null
  br i1 %a.wr.nonnull175, label %a.wr.check176, label %a.wr.err.null178

a.wr.check176:                                    ; preds = %a.after165
  %a.wr.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 0
  %a.wr.len182 = load i64, ptr %a.wr.len181, align 8
  %a.wr.lt183 = icmp slt i64 0, %a.wr.len182
  %a.wr.bounds184 = and i1 true, %a.wr.lt183
  br i1 %a.wr.bounds184, label %a.wr.ok177, label %a.wr.err.oob179

a.wr.ok177:                                       ; preds = %a.wr.check176
  %a.wr.data185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2173, i32 0, i32 1
  %a.wr.data186 = load ptr, ptr %a.wr.data185, align 8
  %a.elem.gep187 = getelementptr i64, ptr %a.wr.data186, i64 0
  store i64 %addtmp, ptr %a.elem.gep187, align 8
  br label %a.wr.done180

a.wr.err.null178:                                 ; preds = %a.after165
  %arena.cur188 = call ptr @dva_arena_current()
  %err.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 56)
  %err.code.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 0
  store i64 4011, ptr %err.code.gep190, align 8
  %err.msg.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep191, align 8
  %err.file.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep192, align 8
  %err.line.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 3
  store i64 0, ptr %err.line.gep193, align 8
  %err.col.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 4
  store i64 0, ptr %err.col.gep194, align 8
  %err.ctx.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc189, i32 0, i32 5
  %err.ctx0.gep196 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep195, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep196, align 8
  %err.ctx1.gep197 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep195, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep197, align 8
  br label %a.wr.done180

a.wr.err.oob179:                                  ; preds = %a.wr.check176
  %arena.cur198 = call ptr @dva_arena_current()
  %err.alloc199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 56)
  %err.code.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 0
  store i64 4011, ptr %err.code.gep200, align 8
  %err.msg.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep201, align 8
  %err.file.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep202, align 8
  %err.line.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 3
  store i64 0, ptr %err.line.gep203, align 8
  %err.col.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 4
  store i64 0, ptr %err.col.gep204, align 8
  %err.ctx.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc199, i32 0, i32 5
  %err.ctx0.gep206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep205, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep206, align 8
  %err.ctx1.gep207 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep205, i32 0, i32 1
  store i64 %a.wr.len182, ptr %err.ctx1.gep207, align 8
  br label %a.wr.done180

a.wr.done180:                                     ; preds = %a.wr.err.oob179, %a.wr.err.null178, %a.wr.ok177
  %a.wr.tag208 = phi i64 [ 1, %a.wr.ok177 ], [ 0, %a.wr.err.null178 ], [ 0, %a.wr.err.oob179 ]
  %a.wr.pay209 = phi ptr [ null, %a.wr.ok177 ], [ %err.alloc189, %a.wr.err.null178 ], [ %err.alloc199, %a.wr.err.oob179 ]
  %arena.cur210 = call ptr @dva_arena_current()
  %a.wr.succ211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 16)
  %tag.gep212 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ211, i32 0, i32 0
  %pay.gep213 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ211, i32 0, i32 1
  store i64 %a.wr.tag208, ptr %tag.gep212, align 8
  store ptr %a.wr.pay209, ptr %pay.gep213, align 8
  %tag.gep214 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ211, i32 0, i32 0
  %tag.id215 = load i64, ptr %tag.gep214, align 8
  %tag.eq.one216 = icmp eq i64 %tag.id215, 1
  %tag.eq.two217 = icmp eq i64 %tag.id215, 2
  %is.pos218 = or i1 %tag.eq.one216, %tag.eq.two217
  %pay.gep219 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ211, i32 0, i32 1
  %payload.ptr220 = load ptr, ptr %pay.gep219, align 8
  br i1 %is.pos218, label %choice.then221, label %choice.else222

choice.then221:                                   ; preds = %a.wr.done180
  br label %choice.exit223

choice.else222:                                   ; preds = %a.wr.done180
  store ptr %payload.ptr220, ptr %var._224, align 8
  store ptr %payload.ptr220, ptr %var._225, align 8
  store ptr %payload.ptr220, ptr %var._226, align 8
  %err.code.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr220, i32 0, i32 0
  %err.code228 = load i64, ptr %err.code.gep227, align 8
  %err.msg.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr220, i32 0, i32 1
  %err.msg.struct230 = load ptr, ptr %err.msg.gep229, align 8
  %err.file.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr220, i32 0, i32 2
  %err.file.struct232 = load ptr, ptr %err.file.gep231, align 8
  %err.line.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr220, i32 0, i32 3
  %err.line234 = load i64, ptr %err.line.gep233, align 8
  %err.col.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr220, i32 0, i32 4
  %err.col236 = load i64, ptr %err.col.gep235, align 8
  %err.msg.len237 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct230, i32 0, i32 0
  %err.msg.len238 = load i64, ptr %err.msg.len237, align 8
  %err.msg.len239 = and i64 %err.msg.len238, 281474976710655
  %str.tag240 = lshr i64 %err.msg.len238, 48
  %str.immortal241 = icmp eq i64 %str.tag240, 0
  br i1 %str.immortal241, label %str_ok243, label %str_gen_check242

choice.exit223:                                   ; preds = %err.abort270, %choice.then221
  ret void

str_gen_check242:                                 ; preds = %choice.else222
  %arena.cur245 = call ptr @dva_arena_current()
  %tag.valid246 = call i1 @dva_arena_validate_tag(ptr %arena.cur245, i64 %str.tag240)
  br i1 %tag.valid246, label %str_ok243, label %str_stale244

str_ok243:                                        ; preds = %str_stale244, %str_gen_check242, %choice.else222
  %err.msg.len32247 = trunc i64 %err.msg.len239 to i32
  %err.msg.data248 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct230, i32 0, i32 1
  %err.msg.data249 = load ptr, ptr %err.msg.data248, align 8
  %err.file.len250 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct232, i32 0, i32 0
  %err.file.len251 = load i64, ptr %err.file.len250, align 8
  %err.file.len252 = and i64 %err.file.len251, 281474976710655
  %str.tag253 = lshr i64 %err.file.len251, 48
  %str.immortal254 = icmp eq i64 %str.tag253, 0
  br i1 %str.immortal254, label %str_ok256, label %str_gen_check255

str_stale244:                                     ; preds = %str_gen_check242
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok243

str_gen_check255:                                 ; preds = %str_ok243
  %arena.cur258 = call ptr @dva_arena_current()
  %tag.valid259 = call i1 @dva_arena_validate_tag(ptr %arena.cur258, i64 %str.tag253)
  br i1 %tag.valid259, label %str_ok256, label %str_stale257

str_ok256:                                        ; preds = %str_stale257, %str_gen_check255, %str_ok243
  %err.file.len32260 = trunc i64 %err.file.len252 to i32
  %err.file.data261 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct232, i32 0, i32 1
  %err.file.data262 = load ptr, ptr %err.file.data261, align 8
  %err.thread.rec263 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread264 = icmp ne ptr %err.thread.rec263, null
  br i1 %err.is.thread264, label %err.thread265, label %err.normal266

str_stale257:                                     ; preds = %str_gen_check255
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok256

err.thread265:                                    ; preds = %str_ok256
  %err.haserr.gep267 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec263, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep267, align 8
  %err.err.gep268 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec263, i32 0, i32 7
  store ptr %payload.ptr220, ptr %err.err.gep268, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal266:                                    ; preds = %str_ok256
  %err.panic.printf269 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code228, i32 %err.msg.len32247, ptr %err.msg.data249, i32 %err.file.len32260, ptr %err.file.data262, i64 %err.line234, i64 %err.col236)
  call void @exit(i32 1)
  unreachable

err.abort270:                                     ; No predecessors!
  br label %choice.exit223
}

define i64 @"dep_graph::pop_stack"(ptr %0) #1 {
entry:
  %var.stk = alloca ptr, align 8
  %var._82 = alloca ptr, align 8
  %var._81 = alloca ptr, align 8
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
  store i64 270, ptr %err.line.gep, align 8
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
  store i64 270, ptr %err.line.gep12, align 8
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
  %a.wr.nonnull = icmp ne ptr %a.load251, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after43
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.wr.len53 = load i64, ptr %a.wr.len, align 8
  %a.wr.lt = icmp slt i64 0, %a.wr.len53
  %a.wr.bounds = and i1 true, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 1
  %a.wr.data54 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data54, i64 0
  store i64 %var.load52, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after43
  %arena.cur55 = call ptr @dva_arena_current()
  %err.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 56)
  %err.code.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 0
  store i64 4011, ptr %err.code.gep57, align 8
  %err.msg.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep58, align 8
  %err.file.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep59, align 8
  %err.line.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 3
  store i64 0, ptr %err.line.gep60, align 8
  %err.col.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 4
  store i64 0, ptr %err.col.gep61, align 8
  %err.ctx.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 5
  %err.ctx0.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep62, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep63, align 8
  %err.ctx1.gep64 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep62, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep64, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur65 = call ptr @dva_arena_current()
  %err.alloc66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 56)
  %err.code.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 0
  store i64 4011, ptr %err.code.gep67, align 8
  %err.msg.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep68, align 8
  %err.file.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep69, align 8
  %err.line.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 3
  store i64 0, ptr %err.line.gep70, align 8
  %err.col.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 4
  store i64 0, ptr %err.col.gep71, align 8
  %err.ctx.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 5
  %err.ctx0.gep73 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep72, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep73, align 8
  %err.ctx1.gep74 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep72, i32 0, i32 1
  store i64 %a.wr.len53, ptr %err.ctx1.gep74, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc56, %a.wr.err.null ], [ %err.alloc66, %a.wr.err.oob ]
  %arena.cur75 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %tag.gep76 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep76, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep77 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep77, align 8
  br i1 %is.pos, label %choice.then78, label %choice.else79

choice.then78:                                    ; preds = %a.wr.done
  br label %choice.exit80

choice.else79:                                    ; preds = %a.wr.done
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._81, align 8
  store ptr %payload.ptr, ptr %var._82, align 8
  %err.code.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code84 = load i64, ptr %err.code.gep83, align 8
  %err.msg.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct86 = load ptr, ptr %err.msg.gep85, align 8
  %err.file.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct88 = load ptr, ptr %err.file.gep87, align 8
  %err.line.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line90 = load i64, ptr %err.line.gep89, align 8
  %err.col.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col92 = load i64, ptr %err.col.gep91, align 8
  %err.msg.len93 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct86, i32 0, i32 0
  %err.msg.len94 = load i64, ptr %err.msg.len93, align 8
  %err.msg.len95 = and i64 %err.msg.len94, 281474976710655
  %str.tag96 = lshr i64 %err.msg.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

choice.exit80:                                    ; preds = %err.abort, %choice.then78
  %var.load126 = load ptr, ptr %var.state, align 8
  %fld.gep127 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load126, i32 0, i32 3
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  store ptr %fld.load128, ptr %var.stk, align 8
  %var.load129 = load ptr, ptr %var.stk, align 8
  %a.load130 = load ptr, ptr %var.stk, align 8
  %a.null131 = icmp eq ptr %a.load130, null
  br i1 %a.null131, label %a.create132, label %a.after133

str_gen_check98:                                  ; preds = %choice.else79
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %choice.else79
  %err.msg.len32103 = trunc i64 %err.msg.len95 to i32
  %err.msg.data104 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct86, i32 0, i32 1
  %err.msg.data105 = load ptr, ptr %err.msg.data104, align 8
  %err.file.len106 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct88, i32 0, i32 0
  %err.file.len107 = load i64, ptr %err.file.len106, align 8
  %err.file.len108 = and i64 %err.file.len107, 281474976710655
  %str.tag109 = lshr i64 %err.file.len107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

str_stale100:                                     ; preds = %str_gen_check98
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

str_gen_check111:                                 ; preds = %str_ok99
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %str_ok99
  %err.file.len32116 = trunc i64 %err.file.len108 to i32
  %err.file.data117 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct88, i32 0, i32 1
  %err.file.data118 = load ptr, ptr %err.file.data117, align 8
  %err.thread.rec119 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread120 = icmp ne ptr %err.thread.rec119, null
  br i1 %err.is.thread120, label %err.thread121, label %err.normal122

str_stale113:                                     ; preds = %str_gen_check111
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

err.thread121:                                    ; preds = %str_ok112
  %err.haserr.gep123 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec119, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep123, align 8
  %err.err.gep124 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec119, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep124, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal122:                                    ; preds = %str_ok112
  %err.panic.printf125 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code84, i32 %err.msg.len32103, ptr %err.msg.data105, i32 %err.file.len32116, ptr %err.file.data118, i64 %err.line90, i64 %err.col92)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit80

a.create132:                                      ; preds = %choice.exit80
  %arena.cur134 = call ptr @dva_arena_current()
  %a.create135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 24)
  %arena.cur136 = call ptr @dva_arena_current()
  %a.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 128)
  %a.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 0
  store i64 0, ptr %a.len.gep138, align 8
  %a.data.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 1
  store ptr %a.buf137, ptr %a.data.gep139, align 8
  %a.cap.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 2
  store i64 16, ptr %a.cap.gep140, align 8
  store ptr %a.create135, ptr %var.stk, align 8
  br label %a.after133

a.after133:                                       ; preds = %a.create132, %choice.exit80
  %a.load2141 = load ptr, ptr %var.stk, align 8
  %var.load142 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull143 = icmp ne ptr %a.load2141, null
  br i1 %a.rd.nonnull143, label %a.rd.check144, label %a.rd.err.null146

a.rd.check144:                                    ; preds = %a.after133
  %a.rd.len149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 0
  %a.rd.len150 = load i64, ptr %a.rd.len149, align 8
  %a.rd.ge0 = icmp sge i64 %var.load142, 0
  %a.rd.lt151 = icmp slt i64 %var.load142, %a.rd.len150
  %a.rd.bounds152 = and i1 %a.rd.ge0, %a.rd.lt151
  br i1 %a.rd.bounds152, label %a.rd.ok145, label %a.rd.err.oob147

a.rd.ok145:                                       ; preds = %a.rd.check144
  %a.rd.data153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 1
  %a.rd.data154 = load ptr, ptr %a.rd.data153, align 8
  %a.rd.elem.gep155 = getelementptr i64, ptr %a.rd.data154, i64 %var.load142
  %a.rd.elem156 = load i64, ptr %a.rd.elem.gep155, align 8
  br label %a.rd.done148

a.rd.err.null146:                                 ; preds = %a.after133
  %arena.cur157 = call ptr @dva_arena_current()
  %err.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 56)
  %err.code.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 0
  store i64 4011, ptr %err.code.gep159, align 8
  %err.msg.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep160, align 8
  %err.file.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep161, align 8
  %err.line.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 3
  store i64 274, ptr %err.line.gep162, align 8
  %err.col.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 4
  store i64 15, ptr %err.col.gep163, align 8
  %err.ctx.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 5
  %err.ctx0.gep165 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep165, align 8
  %err.ctx1.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep166, align 8
  %err.p2i167 = ptrtoint ptr %err.alloc158 to i64
  br label %a.rd.done148

a.rd.err.oob147:                                  ; preds = %a.rd.check144
  %arena.cur168 = call ptr @dva_arena_current()
  %err.alloc169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 56)
  %err.code.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 0
  store i64 4011, ptr %err.code.gep170, align 8
  %err.msg.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep171, align 8
  %err.file.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep172, align 8
  %err.line.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 3
  store i64 274, ptr %err.line.gep173, align 8
  %err.col.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 4
  store i64 15, ptr %err.col.gep174, align 8
  %err.ctx.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 5
  %err.ctx0.gep176 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep175, i32 0, i32 0
  store i64 %var.load142, ptr %err.ctx0.gep176, align 8
  %err.ctx1.gep177 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep175, i32 0, i32 1
  store i64 %a.rd.len150, ptr %err.ctx1.gep177, align 8
  %err.p2i178 = ptrtoint ptr %err.alloc169 to i64
  br label %a.rd.done148

a.rd.done148:                                     ; preds = %a.rd.err.oob147, %a.rd.err.null146, %a.rd.ok145
  %a.rd.tag179 = phi i1 [ true, %a.rd.ok145 ], [ false, %a.rd.err.null146 ], [ false, %a.rd.err.oob147 ]
  %a.rd.pay180 = phi i64 [ %a.rd.elem156, %a.rd.ok145 ], [ %err.p2i167, %a.rd.err.null146 ], [ %err.p2i178, %a.rd.err.oob147 ]
  %ram.tag181 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag179, 0
  %ram.pay182 = insertvalue { i1, i64 } %ram.tag181, i64 %a.rd.pay180, 1
  %unwrap.is_pos183 = extractvalue { i1, i64 } %ram.pay182, 0
  br i1 %unwrap.is_pos183, label %unwrap.pos.36, label %unwrap.abort.36

unwrap.pos.36:                                    ; preds = %a.rd.done148
  %unwrap.pay.pos229 = extractvalue { i1, i64 } %ram.pay182, 1
  ret i64 %unwrap.pay.pos229

unwrap.abort.36:                                  ; preds = %a.rd.done148
  %unwrap.pay.abort184 = extractvalue { i1, i64 } %ram.pay182, 1
  %err.ptr185 = inttoptr i64 %unwrap.pay.abort184 to ptr
  %err.code.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr185, i32 0, i32 0
  %err.code187 = load i64, ptr %err.code.gep186, align 8
  %err.msg.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr185, i32 0, i32 1
  %err.msg.struct189 = load ptr, ptr %err.msg.gep188, align 8
  %err.file.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr185, i32 0, i32 2
  %err.file.struct191 = load ptr, ptr %err.file.gep190, align 8
  %err.line.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr185, i32 0, i32 3
  %err.line193 = load i64, ptr %err.line.gep192, align 8
  %err.col.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr185, i32 0, i32 4
  %err.col195 = load i64, ptr %err.col.gep194, align 8
  %err.msg.len196 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct189, i32 0, i32 0
  %err.msg.len197 = load i64, ptr %err.msg.len196, align 8
  %err.msg.len198 = and i64 %err.msg.len197, 281474976710655
  %str.tag199 = lshr i64 %err.msg.len197, 48
  %str.immortal200 = icmp eq i64 %str.tag199, 0
  br i1 %str.immortal200, label %str_ok202, label %str_gen_check201

str_gen_check201:                                 ; preds = %unwrap.abort.36
  %arena.cur204 = call ptr @dva_arena_current()
  %tag.valid205 = call i1 @dva_arena_validate_tag(ptr %arena.cur204, i64 %str.tag199)
  br i1 %tag.valid205, label %str_ok202, label %str_stale203

str_ok202:                                        ; preds = %str_stale203, %str_gen_check201, %unwrap.abort.36
  %err.msg.len32206 = trunc i64 %err.msg.len198 to i32
  %err.msg.data207 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct189, i32 0, i32 1
  %err.msg.data208 = load ptr, ptr %err.msg.data207, align 8
  %err.file.len209 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct191, i32 0, i32 0
  %err.file.len210 = load i64, ptr %err.file.len209, align 8
  %err.file.len211 = and i64 %err.file.len210, 281474976710655
  %str.tag212 = lshr i64 %err.file.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_stale203:                                     ; preds = %str_gen_check201
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok202

str_gen_check214:                                 ; preds = %str_ok202
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %str_ok202
  %err.file.len32219 = trunc i64 %err.file.len211 to i32
  %err.file.data220 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct191, i32 0, i32 1
  %err.file.data221 = load ptr, ptr %err.file.data220, align 8
  %err.thread.rec222 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread223 = icmp ne ptr %err.thread.rec222, null
  br i1 %err.is.thread223, label %err.thread224, label %err.normal225

str_stale216:                                     ; preds = %str_gen_check214
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

err.thread224:                                    ; preds = %str_ok215
  %err.haserr.gep226 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec222, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep226, align 8
  %err.err.gep227 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec222, i32 0, i32 7
  store ptr %err.ptr185, ptr %err.err.gep227, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal225:                                    ; preds = %str_ok215
  %err.panic.printf228 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code187, i32 %err.msg.len32206, ptr %err.msg.data208, i32 %err.file.len32219, ptr %err.file.data221, i64 %err.line193, i64 %err.col195)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1739 = alloca ptr, align 8
  %var._1738 = alloca ptr, align 8
  %var._1737 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1563 = alloca i64, align 8
  %var._i1562 = alloca i64, align 8
  %loop.step.46 = alloca i64, align 8
  %loop.idx.46 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1295 = alloca ptr, align 8
  %var._1294 = alloca ptr, align 8
  %var._1293 = alloca ptr, align 8
  %var.v_on = alloca i1, align 1
  %var._1019 = alloca ptr, align 8
  %var._1016 = alloca i1, align 1
  %var._911 = alloca ptr, align 8
  %var._910 = alloca ptr, align 8
  %var._909 = alloca ptr, align 8
  %var.v_idx = alloca i64, align 8
  %var._632 = alloca ptr, align 8
  %var._629 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._563 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._422 = alloca ptr, align 8
  %var._421 = alloca ptr, align 8
  %var._420 = alloca ptr, align 8
  %var._309 = alloca ptr, align 8
  %var._308 = alloca ptr, align 8
  %var._307 = alloca ptr, align 8
  %var._199 = alloca ptr, align 8
  %var._198 = alloca ptr, align 8
  %var._197 = alloca ptr, align 8
  %var._88 = alloca ptr, align 8
  %var._87 = alloca ptr, align 8
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
  store i64 282, ptr %err.line.gep, align 8
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
  store i64 282, ptr %err.line.gep21, align 8
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
  %a.wr.nonnull = icmp ne ptr %a.load259, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after51
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.wr.len62 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load60, 0
  %a.wr.lt = icmp slt i64 %var.load60, %a.wr.len62
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 1
  %a.wr.data63 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data63, i64 %var.load60
  store i64 %var.load61, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after51
  %arena.cur64 = call ptr @dva_arena_current()
  %err.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 56)
  %err.code.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 0
  store i64 4011, ptr %err.code.gep66, align 8
  %err.msg.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep67, align 8
  %err.file.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep68, align 8
  %err.line.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 3
  store i64 0, ptr %err.line.gep69, align 8
  %err.col.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 4
  store i64 0, ptr %err.col.gep70, align 8
  %err.ctx.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 5
  %err.ctx0.gep72 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep71, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep72, align 8
  %err.ctx1.gep73 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep71, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep73, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur74 = call ptr @dva_arena_current()
  %err.alloc75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 56)
  %err.code.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 0
  store i64 4011, ptr %err.code.gep76, align 8
  %err.msg.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep77, align 8
  %err.file.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep78, align 8
  %err.line.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 3
  store i64 0, ptr %err.line.gep79, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 4
  store i64 0, ptr %err.col.gep80, align 8
  %err.ctx.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 5
  %err.ctx0.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 0
  store i64 %var.load60, ptr %err.ctx0.gep82, align 8
  %err.ctx1.gep83 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 1
  store i64 %a.wr.len62, ptr %err.ctx1.gep83, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc65, %a.wr.err.null ], [ %err.alloc75, %a.wr.err.oob ]
  %arena.cur84 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %tag.gep85 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep85, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep86 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep86, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.wr.done
  br label %choice.exit

choice.else:                                      ; preds = %a.wr.done
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._87, align 8
  store ptr %payload.ptr, ptr %var._88, align 8
  %err.code.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code90 = load i64, ptr %err.code.gep89, align 8
  %err.msg.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct92 = load ptr, ptr %err.msg.gep91, align 8
  %err.file.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct94 = load ptr, ptr %err.file.gep93, align 8
  %err.line.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line96 = load i64, ptr %err.line.gep95, align 8
  %err.col.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col98 = load i64, ptr %err.col.gep97, align 8
  %err.msg.len99 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct92, i32 0, i32 0
  %err.msg.len100 = load i64, ptr %err.msg.len99, align 8
  %err.msg.len101 = and i64 %err.msg.len100, 281474976710655
  %str.tag102 = lshr i64 %err.msg.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load132 = load ptr, ptr %var.lows, align 8
  %a.load133 = load ptr, ptr %var.lows, align 8
  %a.null134 = icmp eq ptr %a.load133, null
  br i1 %a.null134, label %a.create135, label %a.after136

str_gen_check104:                                 ; preds = %choice.else
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %choice.else
  %err.msg.len32109 = trunc i64 %err.msg.len101 to i32
  %err.msg.data110 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct92, i32 0, i32 1
  %err.msg.data111 = load ptr, ptr %err.msg.data110, align 8
  %err.file.len112 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct94, i32 0, i32 0
  %err.file.len113 = load i64, ptr %err.file.len112, align 8
  %err.file.len114 = and i64 %err.file.len113, 281474976710655
  %str.tag115 = lshr i64 %err.file.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_stale106:                                     ; preds = %str_gen_check104
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

str_gen_check117:                                 ; preds = %str_ok105
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %str_ok105
  %err.file.len32122 = trunc i64 %err.file.len114 to i32
  %err.file.data123 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct94, i32 0, i32 1
  %err.file.data124 = load ptr, ptr %err.file.data123, align 8
  %err.thread.rec125 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread126 = icmp ne ptr %err.thread.rec125, null
  br i1 %err.is.thread126, label %err.thread127, label %err.normal128

str_stale119:                                     ; preds = %str_gen_check117
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

err.thread127:                                    ; preds = %str_ok118
  %err.haserr.gep129 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec125, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep129, align 8
  %err.err.gep130 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec125, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep130, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal128:                                    ; preds = %str_ok118
  %err.panic.printf131 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code90, i32 %err.msg.len32109, ptr %err.msg.data111, i32 %err.file.len32122, ptr %err.file.data124, i64 %err.line96, i64 %err.col98)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create135:                                      ; preds = %choice.exit
  %arena.cur137 = call ptr @dva_arena_current()
  %a.create138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 24)
  %arena.cur139 = call ptr @dva_arena_current()
  %a.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 128)
  %a.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 0
  store i64 0, ptr %a.len.gep141, align 8
  %a.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 1
  store ptr %a.buf140, ptr %a.data.gep142, align 8
  %a.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep143, align 8
  store ptr %a.create138, ptr %var.lows, align 8
  br label %a.after136

a.after136:                                       ; preds = %a.create135, %choice.exit
  %a.load2144 = load ptr, ptr %var.lows, align 8
  %var.load145 = load i64, ptr %var.u, align 8
  %var.load146 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull147 = icmp ne ptr %a.load2144, null
  br i1 %a.wr.nonnull147, label %a.wr.check148, label %a.wr.err.null150

a.wr.check148:                                    ; preds = %a.after136
  %a.wr.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 0
  %a.wr.len154 = load i64, ptr %a.wr.len153, align 8
  %a.wr.ge0155 = icmp sge i64 %var.load145, 0
  %a.wr.lt156 = icmp slt i64 %var.load145, %a.wr.len154
  %a.wr.bounds157 = and i1 %a.wr.ge0155, %a.wr.lt156
  br i1 %a.wr.bounds157, label %a.wr.ok149, label %a.wr.err.oob151

a.wr.ok149:                                       ; preds = %a.wr.check148
  %a.wr.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 1
  %a.wr.data159 = load ptr, ptr %a.wr.data158, align 8
  %a.elem.gep160 = getelementptr i64, ptr %a.wr.data159, i64 %var.load145
  store i64 %var.load146, ptr %a.elem.gep160, align 8
  br label %a.wr.done152

a.wr.err.null150:                                 ; preds = %a.after136
  %arena.cur161 = call ptr @dva_arena_current()
  %err.alloc162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 56)
  %err.code.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 0
  store i64 4011, ptr %err.code.gep163, align 8
  %err.msg.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep164, align 8
  %err.file.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep165, align 8
  %err.line.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 3
  store i64 0, ptr %err.line.gep166, align 8
  %err.col.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 4
  store i64 0, ptr %err.col.gep167, align 8
  %err.ctx.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc162, i32 0, i32 5
  %err.ctx0.gep169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep168, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep169, align 8
  %err.ctx1.gep170 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep168, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep170, align 8
  br label %a.wr.done152

a.wr.err.oob151:                                  ; preds = %a.wr.check148
  %arena.cur171 = call ptr @dva_arena_current()
  %err.alloc172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 56)
  %err.code.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 0
  store i64 4011, ptr %err.code.gep173, align 8
  %err.msg.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep174, align 8
  %err.file.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep175, align 8
  %err.line.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 3
  store i64 0, ptr %err.line.gep176, align 8
  %err.col.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 4
  store i64 0, ptr %err.col.gep177, align 8
  %err.ctx.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc172, i32 0, i32 5
  %err.ctx0.gep179 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep178, i32 0, i32 0
  store i64 %var.load145, ptr %err.ctx0.gep179, align 8
  %err.ctx1.gep180 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep178, i32 0, i32 1
  store i64 %a.wr.len154, ptr %err.ctx1.gep180, align 8
  br label %a.wr.done152

a.wr.done152:                                     ; preds = %a.wr.err.oob151, %a.wr.err.null150, %a.wr.ok149
  %a.wr.tag181 = phi i64 [ 1, %a.wr.ok149 ], [ 0, %a.wr.err.null150 ], [ 0, %a.wr.err.oob151 ]
  %a.wr.pay182 = phi ptr [ null, %a.wr.ok149 ], [ %err.alloc162, %a.wr.err.null150 ], [ %err.alloc172, %a.wr.err.oob151 ]
  %arena.cur183 = call ptr @dva_arena_current()
  %a.wr.succ184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 16)
  %tag.gep185 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ184, i32 0, i32 0
  %pay.gep186 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ184, i32 0, i32 1
  store i64 %a.wr.tag181, ptr %tag.gep185, align 8
  store ptr %a.wr.pay182, ptr %pay.gep186, align 8
  %tag.gep187 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ184, i32 0, i32 0
  %tag.id188 = load i64, ptr %tag.gep187, align 8
  %tag.eq.one189 = icmp eq i64 %tag.id188, 1
  %tag.eq.two190 = icmp eq i64 %tag.id188, 2
  %is.pos191 = or i1 %tag.eq.one189, %tag.eq.two190
  %pay.gep192 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ184, i32 0, i32 1
  %payload.ptr193 = load ptr, ptr %pay.gep192, align 8
  br i1 %is.pos191, label %choice.then194, label %choice.else195

choice.then194:                                   ; preds = %a.wr.done152
  br label %choice.exit196

choice.else195:                                   ; preds = %a.wr.done152
  store ptr %payload.ptr193, ptr %var._197, align 8
  store ptr %payload.ptr193, ptr %var._198, align 8
  store ptr %payload.ptr193, ptr %var._199, align 8
  %err.code.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr193, i32 0, i32 0
  %err.code201 = load i64, ptr %err.code.gep200, align 8
  %err.msg.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr193, i32 0, i32 1
  %err.msg.struct203 = load ptr, ptr %err.msg.gep202, align 8
  %err.file.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr193, i32 0, i32 2
  %err.file.struct205 = load ptr, ptr %err.file.gep204, align 8
  %err.line.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr193, i32 0, i32 3
  %err.line207 = load i64, ptr %err.line.gep206, align 8
  %err.col.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr193, i32 0, i32 4
  %err.col209 = load i64, ptr %err.col.gep208, align 8
  %err.msg.len210 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct203, i32 0, i32 0
  %err.msg.len211 = load i64, ptr %err.msg.len210, align 8
  %err.msg.len212 = and i64 %err.msg.len211, 281474976710655
  %str.tag213 = lshr i64 %err.msg.len211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

choice.exit196:                                   ; preds = %err.abort243, %choice.then194
  %var.load244 = load ptr, ptr %var.s_cnt, align 8
  %a.load245 = load ptr, ptr %var.s_cnt, align 8
  %a.null246 = icmp eq ptr %a.load245, null
  br i1 %a.null246, label %a.create247, label %a.after248

str_gen_check215:                                 ; preds = %choice.else195
  %arena.cur218 = call ptr @dva_arena_current()
  %tag.valid219 = call i1 @dva_arena_validate_tag(ptr %arena.cur218, i64 %str.tag213)
  br i1 %tag.valid219, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %choice.else195
  %err.msg.len32220 = trunc i64 %err.msg.len212 to i32
  %err.msg.data221 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct203, i32 0, i32 1
  %err.msg.data222 = load ptr, ptr %err.msg.data221, align 8
  %err.file.len223 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct205, i32 0, i32 0
  %err.file.len224 = load i64, ptr %err.file.len223, align 8
  %err.file.len225 = and i64 %err.file.len224, 281474976710655
  %str.tag226 = lshr i64 %err.file.len224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

str_stale217:                                     ; preds = %str_gen_check215
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

str_gen_check228:                                 ; preds = %str_ok216
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %str_ok216
  %err.file.len32233 = trunc i64 %err.file.len225 to i32
  %err.file.data234 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct205, i32 0, i32 1
  %err.file.data235 = load ptr, ptr %err.file.data234, align 8
  %err.thread.rec236 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread237 = icmp ne ptr %err.thread.rec236, null
  br i1 %err.is.thread237, label %err.thread238, label %err.normal239

str_stale230:                                     ; preds = %str_gen_check228
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

err.thread238:                                    ; preds = %str_ok229
  %err.haserr.gep240 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec236, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep240, align 8
  %err.err.gep241 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec236, i32 0, i32 7
  store ptr %payload.ptr193, ptr %err.err.gep241, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal239:                                    ; preds = %str_ok229
  %err.panic.printf242 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code201, i32 %err.msg.len32220, ptr %err.msg.data222, i32 %err.file.len32233, ptr %err.file.data235, i64 %err.line207, i64 %err.col209)
  call void @exit(i32 1)
  unreachable

err.abort243:                                     ; No predecessors!
  br label %choice.exit196

a.create247:                                      ; preds = %choice.exit196
  %arena.cur249 = call ptr @dva_arena_current()
  %a.create250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 24)
  %arena.cur251 = call ptr @dva_arena_current()
  %a.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 128)
  %a.len.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 0
  store i64 0, ptr %a.len.gep253, align 8
  %a.data.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 1
  store ptr %a.buf252, ptr %a.data.gep254, align 8
  %a.cap.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create250, i32 0, i32 2
  store i64 16, ptr %a.cap.gep255, align 8
  store ptr %a.create250, ptr %var.s_cnt, align 8
  br label %a.after248

a.after248:                                       ; preds = %a.create247, %choice.exit196
  %a.load2256 = load ptr, ptr %var.s_cnt, align 8
  %var.load257 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load257, 1
  %a.wr.nonnull258 = icmp ne ptr %a.load2256, null
  br i1 %a.wr.nonnull258, label %a.wr.check259, label %a.wr.err.null261

a.wr.check259:                                    ; preds = %a.after248
  %a.wr.len264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2256, i32 0, i32 0
  %a.wr.len265 = load i64, ptr %a.wr.len264, align 8
  %a.wr.lt266 = icmp slt i64 0, %a.wr.len265
  %a.wr.bounds267 = and i1 true, %a.wr.lt266
  br i1 %a.wr.bounds267, label %a.wr.ok260, label %a.wr.err.oob262

a.wr.ok260:                                       ; preds = %a.wr.check259
  %a.wr.data268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2256, i32 0, i32 1
  %a.wr.data269 = load ptr, ptr %a.wr.data268, align 8
  %a.elem.gep270 = getelementptr i64, ptr %a.wr.data269, i64 0
  store i64 %addtmp, ptr %a.elem.gep270, align 8
  br label %a.wr.done263

a.wr.err.null261:                                 ; preds = %a.after248
  %arena.cur271 = call ptr @dva_arena_current()
  %err.alloc272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 56)
  %err.code.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 0
  store i64 4011, ptr %err.code.gep273, align 8
  %err.msg.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep274, align 8
  %err.file.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep275, align 8
  %err.line.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 3
  store i64 0, ptr %err.line.gep276, align 8
  %err.col.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 4
  store i64 0, ptr %err.col.gep277, align 8
  %err.ctx.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 5
  %err.ctx0.gep279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep279, align 8
  %err.ctx1.gep280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep280, align 8
  br label %a.wr.done263

a.wr.err.oob262:                                  ; preds = %a.wr.check259
  %arena.cur281 = call ptr @dva_arena_current()
  %err.alloc282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 56)
  %err.code.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 0
  store i64 4011, ptr %err.code.gep283, align 8
  %err.msg.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep284, align 8
  %err.file.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep285, align 8
  %err.line.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 3
  store i64 0, ptr %err.line.gep286, align 8
  %err.col.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 4
  store i64 0, ptr %err.col.gep287, align 8
  %err.ctx.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 5
  %err.ctx0.gep289 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep289, align 8
  %err.ctx1.gep290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 1
  store i64 %a.wr.len265, ptr %err.ctx1.gep290, align 8
  br label %a.wr.done263

a.wr.done263:                                     ; preds = %a.wr.err.oob262, %a.wr.err.null261, %a.wr.ok260
  %a.wr.tag291 = phi i64 [ 1, %a.wr.ok260 ], [ 0, %a.wr.err.null261 ], [ 0, %a.wr.err.oob262 ]
  %a.wr.pay292 = phi ptr [ null, %a.wr.ok260 ], [ %err.alloc272, %a.wr.err.null261 ], [ %err.alloc282, %a.wr.err.oob262 ]
  %arena.cur293 = call ptr @dva_arena_current()
  %a.wr.succ294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 16)
  %tag.gep295 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ294, i32 0, i32 0
  %pay.gep296 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ294, i32 0, i32 1
  store i64 %a.wr.tag291, ptr %tag.gep295, align 8
  store ptr %a.wr.pay292, ptr %pay.gep296, align 8
  %tag.gep297 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ294, i32 0, i32 0
  %tag.id298 = load i64, ptr %tag.gep297, align 8
  %tag.eq.one299 = icmp eq i64 %tag.id298, 1
  %tag.eq.two300 = icmp eq i64 %tag.id298, 2
  %is.pos301 = or i1 %tag.eq.one299, %tag.eq.two300
  %pay.gep302 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ294, i32 0, i32 1
  %payload.ptr303 = load ptr, ptr %pay.gep302, align 8
  br i1 %is.pos301, label %choice.then304, label %choice.else305

choice.then304:                                   ; preds = %a.wr.done263
  br label %choice.exit306

choice.else305:                                   ; preds = %a.wr.done263
  store ptr %payload.ptr303, ptr %var._307, align 8
  store ptr %payload.ptr303, ptr %var._308, align 8
  store ptr %payload.ptr303, ptr %var._309, align 8
  %err.code.gep310 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr303, i32 0, i32 0
  %err.code311 = load i64, ptr %err.code.gep310, align 8
  %err.msg.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr303, i32 0, i32 1
  %err.msg.struct313 = load ptr, ptr %err.msg.gep312, align 8
  %err.file.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr303, i32 0, i32 2
  %err.file.struct315 = load ptr, ptr %err.file.gep314, align 8
  %err.line.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr303, i32 0, i32 3
  %err.line317 = load i64, ptr %err.line.gep316, align 8
  %err.col.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr303, i32 0, i32 4
  %err.col319 = load i64, ptr %err.col.gep318, align 8
  %err.msg.len320 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct313, i32 0, i32 0
  %err.msg.len321 = load i64, ptr %err.msg.len320, align 8
  %err.msg.len322 = and i64 %err.msg.len321, 281474976710655
  %str.tag323 = lshr i64 %err.msg.len321, 48
  %str.immortal324 = icmp eq i64 %str.tag323, 0
  br i1 %str.immortal324, label %str_ok326, label %str_gen_check325

choice.exit306:                                   ; preds = %err.abort353, %choice.then304
  %var.load354 = load ptr, ptr %var.state, align 8
  %var.load355 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load354, i64 %var.load355)
  %var.load356 = load ptr, ptr %var.ons, align 8
  %a.load357 = load ptr, ptr %var.ons, align 8
  %a.null358 = icmp eq ptr %a.load357, null
  br i1 %a.null358, label %a.create359, label %a.after360

str_gen_check325:                                 ; preds = %choice.else305
  %arena.cur328 = call ptr @dva_arena_current()
  %tag.valid329 = call i1 @dva_arena_validate_tag(ptr %arena.cur328, i64 %str.tag323)
  br i1 %tag.valid329, label %str_ok326, label %str_stale327

str_ok326:                                        ; preds = %str_stale327, %str_gen_check325, %choice.else305
  %err.msg.len32330 = trunc i64 %err.msg.len322 to i32
  %err.msg.data331 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct313, i32 0, i32 1
  %err.msg.data332 = load ptr, ptr %err.msg.data331, align 8
  %err.file.len333 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct315, i32 0, i32 0
  %err.file.len334 = load i64, ptr %err.file.len333, align 8
  %err.file.len335 = and i64 %err.file.len334, 281474976710655
  %str.tag336 = lshr i64 %err.file.len334, 48
  %str.immortal337 = icmp eq i64 %str.tag336, 0
  br i1 %str.immortal337, label %str_ok339, label %str_gen_check338

str_stale327:                                     ; preds = %str_gen_check325
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok326

str_gen_check338:                                 ; preds = %str_ok326
  %arena.cur341 = call ptr @dva_arena_current()
  %tag.valid342 = call i1 @dva_arena_validate_tag(ptr %arena.cur341, i64 %str.tag336)
  br i1 %tag.valid342, label %str_ok339, label %str_stale340

str_ok339:                                        ; preds = %str_stale340, %str_gen_check338, %str_ok326
  %err.file.len32343 = trunc i64 %err.file.len335 to i32
  %err.file.data344 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct315, i32 0, i32 1
  %err.file.data345 = load ptr, ptr %err.file.data344, align 8
  %err.thread.rec346 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread347 = icmp ne ptr %err.thread.rec346, null
  br i1 %err.is.thread347, label %err.thread348, label %err.normal349

str_stale340:                                     ; preds = %str_gen_check338
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok339

err.thread348:                                    ; preds = %str_ok339
  %err.haserr.gep350 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec346, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep350, align 8
  %err.err.gep351 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec346, i32 0, i32 7
  store ptr %payload.ptr303, ptr %err.err.gep351, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal349:                                    ; preds = %str_ok339
  %err.panic.printf352 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code311, i32 %err.msg.len32330, ptr %err.msg.data332, i32 %err.file.len32343, ptr %err.file.data345, i64 %err.line317, i64 %err.col319)
  call void @exit(i32 1)
  unreachable

err.abort353:                                     ; No predecessors!
  br label %choice.exit306

a.create359:                                      ; preds = %choice.exit306
  %arena.cur361 = call ptr @dva_arena_current()
  %a.create362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 24)
  %arena.cur363 = call ptr @dva_arena_current()
  %a.buf364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 128)
  %a.len.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create362, i32 0, i32 0
  store i64 0, ptr %a.len.gep365, align 8
  %a.data.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create362, i32 0, i32 1
  store ptr %a.buf364, ptr %a.data.gep366, align 8
  %a.cap.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create362, i32 0, i32 2
  store i64 16, ptr %a.cap.gep367, align 8
  store ptr %a.create362, ptr %var.ons, align 8
  br label %a.after360

a.after360:                                       ; preds = %a.create359, %choice.exit306
  %a.load2368 = load ptr, ptr %var.ons, align 8
  %var.load369 = load i64, ptr %var.u, align 8
  %a.wr.nonnull370 = icmp ne ptr %a.load2368, null
  br i1 %a.wr.nonnull370, label %a.wr.check371, label %a.wr.err.null373

a.wr.check371:                                    ; preds = %a.after360
  %a.wr.len376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2368, i32 0, i32 0
  %a.wr.len377 = load i64, ptr %a.wr.len376, align 8
  %a.wr.ge0378 = icmp sge i64 %var.load369, 0
  %a.wr.lt379 = icmp slt i64 %var.load369, %a.wr.len377
  %a.wr.bounds380 = and i1 %a.wr.ge0378, %a.wr.lt379
  br i1 %a.wr.bounds380, label %a.wr.ok372, label %a.wr.err.oob374

a.wr.ok372:                                       ; preds = %a.wr.check371
  %a.wr.data381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2368, i32 0, i32 1
  %a.wr.data382 = load ptr, ptr %a.wr.data381, align 8
  %a.elem.gep383 = getelementptr i64, ptr %a.wr.data382, i64 %var.load369
  store i64 1, ptr %a.elem.gep383, align 8
  br label %a.wr.done375

a.wr.err.null373:                                 ; preds = %a.after360
  %arena.cur384 = call ptr @dva_arena_current()
  %err.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 56)
  %err.code.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 0
  store i64 4011, ptr %err.code.gep386, align 8
  %err.msg.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep387, align 8
  %err.file.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep388, align 8
  %err.line.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 3
  store i64 0, ptr %err.line.gep389, align 8
  %err.col.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 4
  store i64 0, ptr %err.col.gep390, align 8
  %err.ctx.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 5
  %err.ctx0.gep392 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep392, align 8
  %err.ctx1.gep393 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep393, align 8
  br label %a.wr.done375

a.wr.err.oob374:                                  ; preds = %a.wr.check371
  %arena.cur394 = call ptr @dva_arena_current()
  %err.alloc395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 56)
  %err.code.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 0
  store i64 4011, ptr %err.code.gep396, align 8
  %err.msg.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep397, align 8
  %err.file.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep398, align 8
  %err.line.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 3
  store i64 0, ptr %err.line.gep399, align 8
  %err.col.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 4
  store i64 0, ptr %err.col.gep400, align 8
  %err.ctx.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 5
  %err.ctx0.gep402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 0
  store i64 %var.load369, ptr %err.ctx0.gep402, align 8
  %err.ctx1.gep403 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 1
  store i64 %a.wr.len377, ptr %err.ctx1.gep403, align 8
  br label %a.wr.done375

a.wr.done375:                                     ; preds = %a.wr.err.oob374, %a.wr.err.null373, %a.wr.ok372
  %a.wr.tag404 = phi i64 [ 1, %a.wr.ok372 ], [ 0, %a.wr.err.null373 ], [ 0, %a.wr.err.oob374 ]
  %a.wr.pay405 = phi ptr [ null, %a.wr.ok372 ], [ %err.alloc385, %a.wr.err.null373 ], [ %err.alloc395, %a.wr.err.oob374 ]
  %arena.cur406 = call ptr @dva_arena_current()
  %a.wr.succ407 = call ptr @dva_arena_alloc(ptr %arena.cur406, i64 16)
  %tag.gep408 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ407, i32 0, i32 0
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ407, i32 0, i32 1
  store i64 %a.wr.tag404, ptr %tag.gep408, align 8
  store ptr %a.wr.pay405, ptr %pay.gep409, align 8
  %tag.gep410 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ407, i32 0, i32 0
  %tag.id411 = load i64, ptr %tag.gep410, align 8
  %tag.eq.one412 = icmp eq i64 %tag.id411, 1
  %tag.eq.two413 = icmp eq i64 %tag.id411, 2
  %is.pos414 = or i1 %tag.eq.one412, %tag.eq.two413
  %pay.gep415 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ407, i32 0, i32 1
  %payload.ptr416 = load ptr, ptr %pay.gep415, align 8
  br i1 %is.pos414, label %choice.then417, label %choice.else418

choice.then417:                                   ; preds = %a.wr.done375
  br label %choice.exit419

choice.else418:                                   ; preds = %a.wr.done375
  store ptr %payload.ptr416, ptr %var._420, align 8
  store ptr %payload.ptr416, ptr %var._421, align 8
  store ptr %payload.ptr416, ptr %var._422, align 8
  %err.code.gep423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr416, i32 0, i32 0
  %err.code424 = load i64, ptr %err.code.gep423, align 8
  %err.msg.gep425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr416, i32 0, i32 1
  %err.msg.struct426 = load ptr, ptr %err.msg.gep425, align 8
  %err.file.gep427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr416, i32 0, i32 2
  %err.file.struct428 = load ptr, ptr %err.file.gep427, align 8
  %err.line.gep429 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr416, i32 0, i32 3
  %err.line430 = load i64, ptr %err.line.gep429, align 8
  %err.col.gep431 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr416, i32 0, i32 4
  %err.col432 = load i64, ptr %err.col.gep431, align 8
  %err.msg.len433 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct426, i32 0, i32 0
  %err.msg.len434 = load i64, ptr %err.msg.len433, align 8
  %err.msg.len435 = and i64 %err.msg.len434, 281474976710655
  %str.tag436 = lshr i64 %err.msg.len434, 48
  %str.immortal437 = icmp eq i64 %str.tag436, 0
  br i1 %str.immortal437, label %str_ok439, label %str_gen_check438

choice.exit419:                                   ; preds = %err.abort466, %choice.then417
  %var.load467 = load ptr, ptr %var.graph, align 8
  %fld.gep468 = getelementptr inbounds { ptr, ptr }, ptr %var.load467, i32 0, i32 0
  %fld.load469 = load ptr, ptr %fld.gep468, align 8
  %var.load470 = load i64, ptr %var.u, align 8
  %a.rd.nonnull471 = icmp ne ptr %fld.load469, null
  br i1 %a.rd.nonnull471, label %a.rd.check472, label %a.rd.err.null474

str_gen_check438:                                 ; preds = %choice.else418
  %arena.cur441 = call ptr @dva_arena_current()
  %tag.valid442 = call i1 @dva_arena_validate_tag(ptr %arena.cur441, i64 %str.tag436)
  br i1 %tag.valid442, label %str_ok439, label %str_stale440

str_ok439:                                        ; preds = %str_stale440, %str_gen_check438, %choice.else418
  %err.msg.len32443 = trunc i64 %err.msg.len435 to i32
  %err.msg.data444 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct426, i32 0, i32 1
  %err.msg.data445 = load ptr, ptr %err.msg.data444, align 8
  %err.file.len446 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct428, i32 0, i32 0
  %err.file.len447 = load i64, ptr %err.file.len446, align 8
  %err.file.len448 = and i64 %err.file.len447, 281474976710655
  %str.tag449 = lshr i64 %err.file.len447, 48
  %str.immortal450 = icmp eq i64 %str.tag449, 0
  br i1 %str.immortal450, label %str_ok452, label %str_gen_check451

str_stale440:                                     ; preds = %str_gen_check438
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok439

str_gen_check451:                                 ; preds = %str_ok439
  %arena.cur454 = call ptr @dva_arena_current()
  %tag.valid455 = call i1 @dva_arena_validate_tag(ptr %arena.cur454, i64 %str.tag449)
  br i1 %tag.valid455, label %str_ok452, label %str_stale453

str_ok452:                                        ; preds = %str_stale453, %str_gen_check451, %str_ok439
  %err.file.len32456 = trunc i64 %err.file.len448 to i32
  %err.file.data457 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct428, i32 0, i32 1
  %err.file.data458 = load ptr, ptr %err.file.data457, align 8
  %err.thread.rec459 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread460 = icmp ne ptr %err.thread.rec459, null
  br i1 %err.is.thread460, label %err.thread461, label %err.normal462

str_stale453:                                     ; preds = %str_gen_check451
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok452

err.thread461:                                    ; preds = %str_ok452
  %err.haserr.gep463 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep463, align 8
  %err.err.gep464 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 7
  store ptr %payload.ptr416, ptr %err.err.gep464, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal462:                                    ; preds = %str_ok452
  %err.panic.printf465 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code424, i32 %err.msg.len32443, ptr %err.msg.data445, i32 %err.file.len32456, ptr %err.file.data458, i64 %err.line430, i64 %err.col432)
  call void @exit(i32 1)
  unreachable

err.abort466:                                     ; No predecessors!
  br label %choice.exit419

a.rd.check472:                                    ; preds = %choice.exit419
  %a.rd.len477 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load469, i32 0, i32 0
  %a.rd.len478 = load i64, ptr %a.rd.len477, align 8
  %a.rd.ge0 = icmp sge i64 %var.load470, 0
  %a.rd.lt479 = icmp slt i64 %var.load470, %a.rd.len478
  %a.rd.bounds480 = and i1 %a.rd.ge0, %a.rd.lt479
  br i1 %a.rd.bounds480, label %a.rd.ok473, label %a.rd.err.oob475

a.rd.ok473:                                       ; preds = %a.rd.check472
  %a.rd.data481 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load469, i32 0, i32 1
  %a.rd.data482 = load ptr, ptr %a.rd.data481, align 8
  %a.rd.elem.gep483 = getelementptr i64, ptr %a.rd.data482, i64 %var.load470
  %a.rd.elem484 = load i64, ptr %a.rd.elem.gep483, align 8
  br label %a.rd.done476

a.rd.err.null474:                                 ; preds = %choice.exit419
  %arena.cur485 = call ptr @dva_arena_current()
  %err.alloc486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 56)
  %err.code.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 0
  store i64 4011, ptr %err.code.gep487, align 8
  %err.msg.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep488, align 8
  %err.file.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep489, align 8
  %err.line.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 3
  store i64 0, ptr %err.line.gep490, align 8
  %err.col.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 4
  store i64 0, ptr %err.col.gep491, align 8
  %err.ctx.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 5
  %err.ctx0.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep493, align 8
  %err.ctx1.gep494 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep494, align 8
  %err.p2i495 = ptrtoint ptr %err.alloc486 to i64
  br label %a.rd.done476

a.rd.err.oob475:                                  ; preds = %a.rd.check472
  %arena.cur496 = call ptr @dva_arena_current()
  %err.alloc497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 56)
  %err.code.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 0
  store i64 4011, ptr %err.code.gep498, align 8
  %err.msg.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep499, align 8
  %err.file.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep500, align 8
  %err.line.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 3
  store i64 0, ptr %err.line.gep501, align 8
  %err.col.gep502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 4
  store i64 0, ptr %err.col.gep502, align 8
  %err.ctx.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc497, i32 0, i32 5
  %err.ctx0.gep504 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep503, i32 0, i32 0
  store i64 %var.load470, ptr %err.ctx0.gep504, align 8
  %err.ctx1.gep505 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep503, i32 0, i32 1
  store i64 %a.rd.len478, ptr %err.ctx1.gep505, align 8
  %err.p2i506 = ptrtoint ptr %err.alloc497 to i64
  br label %a.rd.done476

a.rd.done476:                                     ; preds = %a.rd.err.oob475, %a.rd.err.null474, %a.rd.ok473
  %a.rd.tag507 = phi i1 [ true, %a.rd.ok473 ], [ false, %a.rd.err.null474 ], [ false, %a.rd.err.oob475 ]
  %a.rd.pay508 = phi i64 [ %a.rd.elem484, %a.rd.ok473 ], [ %err.p2i495, %a.rd.err.null474 ], [ %err.p2i506, %a.rd.err.oob475 ]
  %ram.tag509 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag507, 0
  %ram.pay510 = insertvalue { i1, i64 } %ram.tag509, i64 %a.rd.pay508, 1
  %unwrap.is_pos511 = extractvalue { i1, i64 } %ram.pay510, 0
  br i1 %unwrap.is_pos511, label %unwrap.pos.38, label %unwrap.abort.38

unwrap.pos.38:                                    ; preds = %a.rd.done476
  %unwrap.pay.pos557 = extractvalue { i1, i64 } %ram.pay510, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos557 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load558 = load ptr, ptr %var.u_node, align 8
  %fld.gep559 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load558, i32 0, i32 1
  %fld.load560 = load ptr, ptr %fld.gep559, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load560, i32 0, i32 0
  %arr.cycle.len561 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load560, i32 0, i32 1
  %arr.cycle.data562 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

unwrap.abort.38:                                  ; preds = %a.rd.done476
  %unwrap.pay.abort512 = extractvalue { i1, i64 } %ram.pay510, 1
  %err.ptr513 = inttoptr i64 %unwrap.pay.abort512 to ptr
  %err.code.gep514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr513, i32 0, i32 0
  %err.code515 = load i64, ptr %err.code.gep514, align 8
  %err.msg.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr513, i32 0, i32 1
  %err.msg.struct517 = load ptr, ptr %err.msg.gep516, align 8
  %err.file.gep518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr513, i32 0, i32 2
  %err.file.struct519 = load ptr, ptr %err.file.gep518, align 8
  %err.line.gep520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr513, i32 0, i32 3
  %err.line521 = load i64, ptr %err.line.gep520, align 8
  %err.col.gep522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr513, i32 0, i32 4
  %err.col523 = load i64, ptr %err.col.gep522, align 8
  %err.msg.len524 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct517, i32 0, i32 0
  %err.msg.len525 = load i64, ptr %err.msg.len524, align 8
  %err.msg.len526 = and i64 %err.msg.len525, 281474976710655
  %str.tag527 = lshr i64 %err.msg.len525, 48
  %str.immortal528 = icmp eq i64 %str.tag527, 0
  br i1 %str.immortal528, label %str_ok530, label %str_gen_check529

str_gen_check529:                                 ; preds = %unwrap.abort.38
  %arena.cur532 = call ptr @dva_arena_current()
  %tag.valid533 = call i1 @dva_arena_validate_tag(ptr %arena.cur532, i64 %str.tag527)
  br i1 %tag.valid533, label %str_ok530, label %str_stale531

str_ok530:                                        ; preds = %str_stale531, %str_gen_check529, %unwrap.abort.38
  %err.msg.len32534 = trunc i64 %err.msg.len526 to i32
  %err.msg.data535 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct517, i32 0, i32 1
  %err.msg.data536 = load ptr, ptr %err.msg.data535, align 8
  %err.file.len537 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct519, i32 0, i32 0
  %err.file.len538 = load i64, ptr %err.file.len537, align 8
  %err.file.len539 = and i64 %err.file.len538, 281474976710655
  %str.tag540 = lshr i64 %err.file.len538, 48
  %str.immortal541 = icmp eq i64 %str.tag540, 0
  br i1 %str.immortal541, label %str_ok543, label %str_gen_check542

str_stale531:                                     ; preds = %str_gen_check529
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok530

str_gen_check542:                                 ; preds = %str_ok530
  %arena.cur545 = call ptr @dva_arena_current()
  %tag.valid546 = call i1 @dva_arena_validate_tag(ptr %arena.cur545, i64 %str.tag540)
  br i1 %tag.valid546, label %str_ok543, label %str_stale544

str_ok543:                                        ; preds = %str_stale544, %str_gen_check542, %str_ok530
  %err.file.len32547 = trunc i64 %err.file.len539 to i32
  %err.file.data548 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct519, i32 0, i32 1
  %err.file.data549 = load ptr, ptr %err.file.data548, align 8
  %err.thread.rec550 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread551 = icmp ne ptr %err.thread.rec550, null
  br i1 %err.is.thread551, label %err.thread552, label %err.normal553

str_stale544:                                     ; preds = %str_gen_check542
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok543

err.thread552:                                    ; preds = %str_ok543
  %err.haserr.gep554 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec550, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep554, align 8
  %err.err.gep555 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec550, i32 0, i32 7
  store ptr %err.ptr513, ptr %err.err.gep555, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal553:                                    ; preds = %str_ok543
  %err.panic.printf556 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code515, i32 %err.msg.len32534, ptr %err.msg.data536, i32 %err.file.len32547, ptr %err.file.data549, i64 %err.line521, i64 %err.col523)
  call void @exit(i32 1)
  unreachable

loop.header.39:                                   ; preds = %loop.latch.39, %unwrap.pos.38
  %counter.load = load i64, ptr %loop.idx.39, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len561
  br i1 %loop.cond, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data562, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._563, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  %var.load564 = load ptr, ptr %var.graph, align 8
  %var.load565 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load564, ptr %var.load565)
  store i64 %call.res, ptr %var.v, align 8
  %var.load566 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load566, 0
  br i1 %cmptmp, label %choice.then567, label %choice.exit568

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %choice.exit568
  %step.val = load i64, ptr %loop.step.39, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  %var.load1340 = load ptr, ptr %var.lows, align 8
  %a.load1341 = load ptr, ptr %var.lows, align 8
  %a.null1342 = icmp eq ptr %a.load1341, null
  br i1 %a.null1342, label %a.create1343, label %a.after1344

choice.then567:                                   ; preds = %loop.body.39
  %var.load569 = load ptr, ptr %var.idxs, align 8
  %a.load570 = load ptr, ptr %var.idxs, align 8
  %a.null571 = icmp eq ptr %a.load570, null
  br i1 %a.null571, label %a.create572, label %a.after573

choice.exit568:                                   ; preds = %choice.exit637, %loop.body.39
  br label %loop.latch.39

a.create572:                                      ; preds = %choice.then567
  %arena.cur574 = call ptr @dva_arena_current()
  %a.create575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 24)
  %arena.cur576 = call ptr @dva_arena_current()
  %a.buf577 = call ptr @dva_arena_alloc(ptr %arena.cur576, i64 128)
  %a.len.gep578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create575, i32 0, i32 0
  store i64 0, ptr %a.len.gep578, align 8
  %a.data.gep579 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create575, i32 0, i32 1
  store ptr %a.buf577, ptr %a.data.gep579, align 8
  %a.cap.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create575, i32 0, i32 2
  store i64 16, ptr %a.cap.gep580, align 8
  store ptr %a.create575, ptr %var.idxs, align 8
  br label %a.after573

a.after573:                                       ; preds = %a.create572, %choice.then567
  %a.load2581 = load ptr, ptr %var.idxs, align 8
  %var.load582 = load i64, ptr %var.v, align 8
  %a.rd.nonnull583 = icmp ne ptr %a.load2581, null
  br i1 %a.rd.nonnull583, label %a.rd.check584, label %a.rd.err.null586

a.rd.check584:                                    ; preds = %a.after573
  %a.rd.len589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2581, i32 0, i32 0
  %a.rd.len590 = load i64, ptr %a.rd.len589, align 8
  %a.rd.ge0591 = icmp sge i64 %var.load582, 0
  %a.rd.lt592 = icmp slt i64 %var.load582, %a.rd.len590
  %a.rd.bounds593 = and i1 %a.rd.ge0591, %a.rd.lt592
  br i1 %a.rd.bounds593, label %a.rd.ok585, label %a.rd.err.oob587

a.rd.ok585:                                       ; preds = %a.rd.check584
  %a.rd.data594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2581, i32 0, i32 1
  %a.rd.data595 = load ptr, ptr %a.rd.data594, align 8
  %a.rd.elem.gep596 = getelementptr i64, ptr %a.rd.data595, i64 %var.load582
  %a.rd.elem597 = load i64, ptr %a.rd.elem.gep596, align 8
  br label %a.rd.done588

a.rd.err.null586:                                 ; preds = %a.after573
  %arena.cur598 = call ptr @dva_arena_current()
  %err.alloc599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 56)
  %err.code.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 0
  store i64 4011, ptr %err.code.gep600, align 8
  %err.msg.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep601, align 8
  %err.file.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep602, align 8
  %err.line.gep603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 3
  store i64 294, ptr %err.line.gep603, align 8
  %err.col.gep604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 4
  store i64 29, ptr %err.col.gep604, align 8
  %err.ctx.gep605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc599, i32 0, i32 5
  %err.ctx0.gep606 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep605, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep606, align 8
  %err.ctx1.gep607 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep605, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep607, align 8
  %err.p2i608 = ptrtoint ptr %err.alloc599 to i64
  br label %a.rd.done588

a.rd.err.oob587:                                  ; preds = %a.rd.check584
  %arena.cur609 = call ptr @dva_arena_current()
  %err.alloc610 = call ptr @dva_arena_alloc(ptr %arena.cur609, i64 56)
  %err.code.gep611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 0
  store i64 4011, ptr %err.code.gep611, align 8
  %err.msg.gep612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep612, align 8
  %err.file.gep613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep613, align 8
  %err.line.gep614 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 3
  store i64 294, ptr %err.line.gep614, align 8
  %err.col.gep615 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 4
  store i64 29, ptr %err.col.gep615, align 8
  %err.ctx.gep616 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc610, i32 0, i32 5
  %err.ctx0.gep617 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep616, i32 0, i32 0
  store i64 %var.load582, ptr %err.ctx0.gep617, align 8
  %err.ctx1.gep618 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep616, i32 0, i32 1
  store i64 %a.rd.len590, ptr %err.ctx1.gep618, align 8
  %err.p2i619 = ptrtoint ptr %err.alloc610 to i64
  br label %a.rd.done588

a.rd.done588:                                     ; preds = %a.rd.err.oob587, %a.rd.err.null586, %a.rd.ok585
  %a.rd.tag620 = phi i1 [ true, %a.rd.ok585 ], [ false, %a.rd.err.null586 ], [ false, %a.rd.err.oob587 ]
  %a.rd.pay621 = phi i64 [ %a.rd.elem597, %a.rd.ok585 ], [ %err.p2i608, %a.rd.err.null586 ], [ %err.p2i619, %a.rd.err.oob587 ]
  %ram.tag622 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag620, 0
  %ram.pay623 = insertvalue { i1, i64 } %ram.tag622, i64 %a.rd.pay621, 1
  %ram.tag624 = extractvalue { i1, i64 } %ram.pay623, 0
  br i1 %ram.tag624, label %choice.then625, label %choice.else626

choice.then625:                                   ; preds = %a.rd.done588
  %ram.pay628 = extractvalue { i1, i64 } %ram.pay623, 1
  store i64 %ram.pay628, ptr %var._629, align 8
  br label %choice.exit627

choice.else626:                                   ; preds = %a.rd.done588
  %ram.pay630 = extractvalue { i1, i64 } %ram.pay623, 1
  %pay.ptr631 = inttoptr i64 %ram.pay630 to ptr
  store ptr %pay.ptr631, ptr %var._632, align 8
  br label %choice.exit627

choice.exit627:                                   ; preds = %choice.else626, %choice.then625
  %choice.res = phi i64 [ %ram.pay628, %choice.then625 ], [ -1, %choice.else626 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load633 = load i64, ptr %var.v_idx, align 8
  %cmptmp634 = icmp slt i64 %var.load633, 0
  br i1 %cmptmp634, label %choice.then635, label %choice.else636

choice.then635:                                   ; preds = %choice.exit627
  %var.load638 = load ptr, ptr %var.graph, align 8
  %var.load639 = load ptr, ptr %var.state, align 8
  %var.load640 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load638, ptr %var.load639, i64 %var.load640)
  %var.load641 = load ptr, ptr %var.lows, align 8
  %a.load642 = load ptr, ptr %var.lows, align 8
  %a.null643 = icmp eq ptr %a.load642, null
  br i1 %a.null643, label %a.create644, label %a.after645

choice.else636:                                   ; preds = %choice.exit627
  %var.load956 = load ptr, ptr %var.ons, align 8
  %a.load957 = load ptr, ptr %var.ons, align 8
  %a.null958 = icmp eq ptr %a.load957, null
  br i1 %a.null958, label %a.create959, label %a.after960

choice.exit637:                                   ; preds = %choice.exit1023, %choice.exit908
  br label %choice.exit568

a.create644:                                      ; preds = %choice.then635
  %arena.cur646 = call ptr @dva_arena_current()
  %a.create647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 24)
  %arena.cur648 = call ptr @dva_arena_current()
  %a.buf649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 128)
  %a.len.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 0
  store i64 0, ptr %a.len.gep650, align 8
  %a.data.gep651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 1
  store ptr %a.buf649, ptr %a.data.gep651, align 8
  %a.cap.gep652 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create647, i32 0, i32 2
  store i64 16, ptr %a.cap.gep652, align 8
  store ptr %a.create647, ptr %var.lows, align 8
  br label %a.after645

a.after645:                                       ; preds = %a.create644, %choice.then635
  %a.load2653 = load ptr, ptr %var.lows, align 8
  %var.load654 = load i64, ptr %var.u, align 8
  %var.load655 = load ptr, ptr %var.lows, align 8
  %a.load656 = load ptr, ptr %var.lows, align 8
  %a.null657 = icmp eq ptr %a.load656, null
  br i1 %a.null657, label %a.create658, label %a.after659

a.create658:                                      ; preds = %a.after645
  %arena.cur660 = call ptr @dva_arena_current()
  %a.create661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 24)
  %arena.cur662 = call ptr @dva_arena_current()
  %a.buf663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 128)
  %a.len.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create661, i32 0, i32 0
  store i64 0, ptr %a.len.gep664, align 8
  %a.data.gep665 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create661, i32 0, i32 1
  store ptr %a.buf663, ptr %a.data.gep665, align 8
  %a.cap.gep666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create661, i32 0, i32 2
  store i64 16, ptr %a.cap.gep666, align 8
  store ptr %a.create661, ptr %var.lows, align 8
  br label %a.after659

a.after659:                                       ; preds = %a.create658, %a.after645
  %a.load2667 = load ptr, ptr %var.lows, align 8
  %var.load668 = load i64, ptr %var.u, align 8
  %a.rd.nonnull669 = icmp ne ptr %a.load2667, null
  br i1 %a.rd.nonnull669, label %a.rd.check670, label %a.rd.err.null672

a.rd.check670:                                    ; preds = %a.after659
  %a.rd.len675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2667, i32 0, i32 0
  %a.rd.len676 = load i64, ptr %a.rd.len675, align 8
  %a.rd.ge0677 = icmp sge i64 %var.load668, 0
  %a.rd.lt678 = icmp slt i64 %var.load668, %a.rd.len676
  %a.rd.bounds679 = and i1 %a.rd.ge0677, %a.rd.lt678
  br i1 %a.rd.bounds679, label %a.rd.ok671, label %a.rd.err.oob673

a.rd.ok671:                                       ; preds = %a.rd.check670
  %a.rd.data680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2667, i32 0, i32 1
  %a.rd.data681 = load ptr, ptr %a.rd.data680, align 8
  %a.rd.elem.gep682 = getelementptr i64, ptr %a.rd.data681, i64 %var.load668
  %a.rd.elem683 = load i64, ptr %a.rd.elem.gep682, align 8
  br label %a.rd.done674

a.rd.err.null672:                                 ; preds = %a.after659
  %arena.cur684 = call ptr @dva_arena_current()
  %err.alloc685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 56)
  %err.code.gep686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 0
  store i64 4011, ptr %err.code.gep686, align 8
  %err.msg.gep687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep687, align 8
  %err.file.gep688 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep688, align 8
  %err.line.gep689 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 3
  store i64 298, ptr %err.line.gep689, align 8
  %err.col.gep690 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 4
  store i64 41, ptr %err.col.gep690, align 8
  %err.ctx.gep691 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc685, i32 0, i32 5
  %err.ctx0.gep692 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep691, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep692, align 8
  %err.ctx1.gep693 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep691, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep693, align 8
  %err.p2i694 = ptrtoint ptr %err.alloc685 to i64
  br label %a.rd.done674

a.rd.err.oob673:                                  ; preds = %a.rd.check670
  %arena.cur695 = call ptr @dva_arena_current()
  %err.alloc696 = call ptr @dva_arena_alloc(ptr %arena.cur695, i64 56)
  %err.code.gep697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 0
  store i64 4011, ptr %err.code.gep697, align 8
  %err.msg.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep698, align 8
  %err.file.gep699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep699, align 8
  %err.line.gep700 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 3
  store i64 298, ptr %err.line.gep700, align 8
  %err.col.gep701 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 4
  store i64 41, ptr %err.col.gep701, align 8
  %err.ctx.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc696, i32 0, i32 5
  %err.ctx0.gep703 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep702, i32 0, i32 0
  store i64 %var.load668, ptr %err.ctx0.gep703, align 8
  %err.ctx1.gep704 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep702, i32 0, i32 1
  store i64 %a.rd.len676, ptr %err.ctx1.gep704, align 8
  %err.p2i705 = ptrtoint ptr %err.alloc696 to i64
  br label %a.rd.done674

a.rd.done674:                                     ; preds = %a.rd.err.oob673, %a.rd.err.null672, %a.rd.ok671
  %a.rd.tag706 = phi i1 [ true, %a.rd.ok671 ], [ false, %a.rd.err.null672 ], [ false, %a.rd.err.oob673 ]
  %a.rd.pay707 = phi i64 [ %a.rd.elem683, %a.rd.ok671 ], [ %err.p2i694, %a.rd.err.null672 ], [ %err.p2i705, %a.rd.err.oob673 ]
  %ram.tag708 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag706, 0
  %ram.pay709 = insertvalue { i1, i64 } %ram.tag708, i64 %a.rd.pay707, 1
  %unwrap.is_pos710 = extractvalue { i1, i64 } %ram.pay709, 0
  br i1 %unwrap.is_pos710, label %unwrap.pos.40, label %unwrap.abort.40

unwrap.pos.40:                                    ; preds = %a.rd.done674
  %unwrap.pay.pos756 = extractvalue { i1, i64 } %ram.pay709, 1
  %var.load757 = load ptr, ptr %var.lows, align 8
  %a.load758 = load ptr, ptr %var.lows, align 8
  %a.null759 = icmp eq ptr %a.load758, null
  br i1 %a.null759, label %a.create760, label %a.after761

unwrap.abort.40:                                  ; preds = %a.rd.done674
  %unwrap.pay.abort711 = extractvalue { i1, i64 } %ram.pay709, 1
  %err.ptr712 = inttoptr i64 %unwrap.pay.abort711 to ptr
  %err.code.gep713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr712, i32 0, i32 0
  %err.code714 = load i64, ptr %err.code.gep713, align 8
  %err.msg.gep715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr712, i32 0, i32 1
  %err.msg.struct716 = load ptr, ptr %err.msg.gep715, align 8
  %err.file.gep717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr712, i32 0, i32 2
  %err.file.struct718 = load ptr, ptr %err.file.gep717, align 8
  %err.line.gep719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr712, i32 0, i32 3
  %err.line720 = load i64, ptr %err.line.gep719, align 8
  %err.col.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr712, i32 0, i32 4
  %err.col722 = load i64, ptr %err.col.gep721, align 8
  %err.msg.len723 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct716, i32 0, i32 0
  %err.msg.len724 = load i64, ptr %err.msg.len723, align 8
  %err.msg.len725 = and i64 %err.msg.len724, 281474976710655
  %str.tag726 = lshr i64 %err.msg.len724, 48
  %str.immortal727 = icmp eq i64 %str.tag726, 0
  br i1 %str.immortal727, label %str_ok729, label %str_gen_check728

str_gen_check728:                                 ; preds = %unwrap.abort.40
  %arena.cur731 = call ptr @dva_arena_current()
  %tag.valid732 = call i1 @dva_arena_validate_tag(ptr %arena.cur731, i64 %str.tag726)
  br i1 %tag.valid732, label %str_ok729, label %str_stale730

str_ok729:                                        ; preds = %str_stale730, %str_gen_check728, %unwrap.abort.40
  %err.msg.len32733 = trunc i64 %err.msg.len725 to i32
  %err.msg.data734 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct716, i32 0, i32 1
  %err.msg.data735 = load ptr, ptr %err.msg.data734, align 8
  %err.file.len736 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct718, i32 0, i32 0
  %err.file.len737 = load i64, ptr %err.file.len736, align 8
  %err.file.len738 = and i64 %err.file.len737, 281474976710655
  %str.tag739 = lshr i64 %err.file.len737, 48
  %str.immortal740 = icmp eq i64 %str.tag739, 0
  br i1 %str.immortal740, label %str_ok742, label %str_gen_check741

str_stale730:                                     ; preds = %str_gen_check728
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok729

str_gen_check741:                                 ; preds = %str_ok729
  %arena.cur744 = call ptr @dva_arena_current()
  %tag.valid745 = call i1 @dva_arena_validate_tag(ptr %arena.cur744, i64 %str.tag739)
  br i1 %tag.valid745, label %str_ok742, label %str_stale743

str_ok742:                                        ; preds = %str_stale743, %str_gen_check741, %str_ok729
  %err.file.len32746 = trunc i64 %err.file.len738 to i32
  %err.file.data747 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct718, i32 0, i32 1
  %err.file.data748 = load ptr, ptr %err.file.data747, align 8
  %err.thread.rec749 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread750 = icmp ne ptr %err.thread.rec749, null
  br i1 %err.is.thread750, label %err.thread751, label %err.normal752

str_stale743:                                     ; preds = %str_gen_check741
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok742

err.thread751:                                    ; preds = %str_ok742
  %err.haserr.gep753 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec749, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep753, align 8
  %err.err.gep754 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec749, i32 0, i32 7
  store ptr %err.ptr712, ptr %err.err.gep754, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal752:                                    ; preds = %str_ok742
  %err.panic.printf755 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code714, i32 %err.msg.len32733, ptr %err.msg.data735, i32 %err.file.len32746, ptr %err.file.data748, i64 %err.line720, i64 %err.col722)
  call void @exit(i32 1)
  unreachable

a.create760:                                      ; preds = %unwrap.pos.40
  %arena.cur762 = call ptr @dva_arena_current()
  %a.create763 = call ptr @dva_arena_alloc(ptr %arena.cur762, i64 24)
  %arena.cur764 = call ptr @dva_arena_current()
  %a.buf765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 128)
  %a.len.gep766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create763, i32 0, i32 0
  store i64 0, ptr %a.len.gep766, align 8
  %a.data.gep767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create763, i32 0, i32 1
  store ptr %a.buf765, ptr %a.data.gep767, align 8
  %a.cap.gep768 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create763, i32 0, i32 2
  store i64 16, ptr %a.cap.gep768, align 8
  store ptr %a.create763, ptr %var.lows, align 8
  br label %a.after761

a.after761:                                       ; preds = %a.create760, %unwrap.pos.40
  %a.load2769 = load ptr, ptr %var.lows, align 8
  %var.load770 = load i64, ptr %var.v, align 8
  %a.rd.nonnull771 = icmp ne ptr %a.load2769, null
  br i1 %a.rd.nonnull771, label %a.rd.check772, label %a.rd.err.null774

a.rd.check772:                                    ; preds = %a.after761
  %a.rd.len777 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2769, i32 0, i32 0
  %a.rd.len778 = load i64, ptr %a.rd.len777, align 8
  %a.rd.ge0779 = icmp sge i64 %var.load770, 0
  %a.rd.lt780 = icmp slt i64 %var.load770, %a.rd.len778
  %a.rd.bounds781 = and i1 %a.rd.ge0779, %a.rd.lt780
  br i1 %a.rd.bounds781, label %a.rd.ok773, label %a.rd.err.oob775

a.rd.ok773:                                       ; preds = %a.rd.check772
  %a.rd.data782 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2769, i32 0, i32 1
  %a.rd.data783 = load ptr, ptr %a.rd.data782, align 8
  %a.rd.elem.gep784 = getelementptr i64, ptr %a.rd.data783, i64 %var.load770
  %a.rd.elem785 = load i64, ptr %a.rd.elem.gep784, align 8
  br label %a.rd.done776

a.rd.err.null774:                                 ; preds = %a.after761
  %arena.cur786 = call ptr @dva_arena_current()
  %err.alloc787 = call ptr @dva_arena_alloc(ptr %arena.cur786, i64 56)
  %err.code.gep788 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 0
  store i64 4011, ptr %err.code.gep788, align 8
  %err.msg.gep789 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep789, align 8
  %err.file.gep790 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep790, align 8
  %err.line.gep791 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 3
  store i64 298, ptr %err.line.gep791, align 8
  %err.col.gep792 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 4
  store i64 52, ptr %err.col.gep792, align 8
  %err.ctx.gep793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc787, i32 0, i32 5
  %err.ctx0.gep794 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep793, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep794, align 8
  %err.ctx1.gep795 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep793, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep795, align 8
  %err.p2i796 = ptrtoint ptr %err.alloc787 to i64
  br label %a.rd.done776

a.rd.err.oob775:                                  ; preds = %a.rd.check772
  %arena.cur797 = call ptr @dva_arena_current()
  %err.alloc798 = call ptr @dva_arena_alloc(ptr %arena.cur797, i64 56)
  %err.code.gep799 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 0
  store i64 4011, ptr %err.code.gep799, align 8
  %err.msg.gep800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep800, align 8
  %err.file.gep801 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep801, align 8
  %err.line.gep802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 3
  store i64 298, ptr %err.line.gep802, align 8
  %err.col.gep803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 4
  store i64 52, ptr %err.col.gep803, align 8
  %err.ctx.gep804 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc798, i32 0, i32 5
  %err.ctx0.gep805 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep804, i32 0, i32 0
  store i64 %var.load770, ptr %err.ctx0.gep805, align 8
  %err.ctx1.gep806 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep804, i32 0, i32 1
  store i64 %a.rd.len778, ptr %err.ctx1.gep806, align 8
  %err.p2i807 = ptrtoint ptr %err.alloc798 to i64
  br label %a.rd.done776

a.rd.done776:                                     ; preds = %a.rd.err.oob775, %a.rd.err.null774, %a.rd.ok773
  %a.rd.tag808 = phi i1 [ true, %a.rd.ok773 ], [ false, %a.rd.err.null774 ], [ false, %a.rd.err.oob775 ]
  %a.rd.pay809 = phi i64 [ %a.rd.elem785, %a.rd.ok773 ], [ %err.p2i796, %a.rd.err.null774 ], [ %err.p2i807, %a.rd.err.oob775 ]
  %ram.tag810 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag808, 0
  %ram.pay811 = insertvalue { i1, i64 } %ram.tag810, i64 %a.rd.pay809, 1
  %unwrap.is_pos812 = extractvalue { i1, i64 } %ram.pay811, 0
  br i1 %unwrap.is_pos812, label %unwrap.pos.41, label %unwrap.abort.41

unwrap.pos.41:                                    ; preds = %a.rd.done776
  %unwrap.pay.pos858 = extractvalue { i1, i64 } %ram.pay811, 1
  %smin = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos756, i64 %unwrap.pay.pos858)
  %a.wr.nonnull859 = icmp ne ptr %a.load2653, null
  br i1 %a.wr.nonnull859, label %a.wr.check860, label %a.wr.err.null862

unwrap.abort.41:                                  ; preds = %a.rd.done776
  %unwrap.pay.abort813 = extractvalue { i1, i64 } %ram.pay811, 1
  %err.ptr814 = inttoptr i64 %unwrap.pay.abort813 to ptr
  %err.code.gep815 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr814, i32 0, i32 0
  %err.code816 = load i64, ptr %err.code.gep815, align 8
  %err.msg.gep817 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr814, i32 0, i32 1
  %err.msg.struct818 = load ptr, ptr %err.msg.gep817, align 8
  %err.file.gep819 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr814, i32 0, i32 2
  %err.file.struct820 = load ptr, ptr %err.file.gep819, align 8
  %err.line.gep821 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr814, i32 0, i32 3
  %err.line822 = load i64, ptr %err.line.gep821, align 8
  %err.col.gep823 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr814, i32 0, i32 4
  %err.col824 = load i64, ptr %err.col.gep823, align 8
  %err.msg.len825 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct818, i32 0, i32 0
  %err.msg.len826 = load i64, ptr %err.msg.len825, align 8
  %err.msg.len827 = and i64 %err.msg.len826, 281474976710655
  %str.tag828 = lshr i64 %err.msg.len826, 48
  %str.immortal829 = icmp eq i64 %str.tag828, 0
  br i1 %str.immortal829, label %str_ok831, label %str_gen_check830

str_gen_check830:                                 ; preds = %unwrap.abort.41
  %arena.cur833 = call ptr @dva_arena_current()
  %tag.valid834 = call i1 @dva_arena_validate_tag(ptr %arena.cur833, i64 %str.tag828)
  br i1 %tag.valid834, label %str_ok831, label %str_stale832

str_ok831:                                        ; preds = %str_stale832, %str_gen_check830, %unwrap.abort.41
  %err.msg.len32835 = trunc i64 %err.msg.len827 to i32
  %err.msg.data836 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct818, i32 0, i32 1
  %err.msg.data837 = load ptr, ptr %err.msg.data836, align 8
  %err.file.len838 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct820, i32 0, i32 0
  %err.file.len839 = load i64, ptr %err.file.len838, align 8
  %err.file.len840 = and i64 %err.file.len839, 281474976710655
  %str.tag841 = lshr i64 %err.file.len839, 48
  %str.immortal842 = icmp eq i64 %str.tag841, 0
  br i1 %str.immortal842, label %str_ok844, label %str_gen_check843

str_stale832:                                     ; preds = %str_gen_check830
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok831

str_gen_check843:                                 ; preds = %str_ok831
  %arena.cur846 = call ptr @dva_arena_current()
  %tag.valid847 = call i1 @dva_arena_validate_tag(ptr %arena.cur846, i64 %str.tag841)
  br i1 %tag.valid847, label %str_ok844, label %str_stale845

str_ok844:                                        ; preds = %str_stale845, %str_gen_check843, %str_ok831
  %err.file.len32848 = trunc i64 %err.file.len840 to i32
  %err.file.data849 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct820, i32 0, i32 1
  %err.file.data850 = load ptr, ptr %err.file.data849, align 8
  %err.thread.rec851 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread852 = icmp ne ptr %err.thread.rec851, null
  br i1 %err.is.thread852, label %err.thread853, label %err.normal854

str_stale845:                                     ; preds = %str_gen_check843
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok844

err.thread853:                                    ; preds = %str_ok844
  %err.haserr.gep855 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec851, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep855, align 8
  %err.err.gep856 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec851, i32 0, i32 7
  store ptr %err.ptr814, ptr %err.err.gep856, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal854:                                    ; preds = %str_ok844
  %err.panic.printf857 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code816, i32 %err.msg.len32835, ptr %err.msg.data837, i32 %err.file.len32848, ptr %err.file.data850, i64 %err.line822, i64 %err.col824)
  call void @exit(i32 1)
  unreachable

a.wr.check860:                                    ; preds = %unwrap.pos.41
  %a.wr.len865 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2653, i32 0, i32 0
  %a.wr.len866 = load i64, ptr %a.wr.len865, align 8
  %a.wr.ge0867 = icmp sge i64 %var.load654, 0
  %a.wr.lt868 = icmp slt i64 %var.load654, %a.wr.len866
  %a.wr.bounds869 = and i1 %a.wr.ge0867, %a.wr.lt868
  br i1 %a.wr.bounds869, label %a.wr.ok861, label %a.wr.err.oob863

a.wr.ok861:                                       ; preds = %a.wr.check860
  %a.wr.data870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2653, i32 0, i32 1
  %a.wr.data871 = load ptr, ptr %a.wr.data870, align 8
  %a.elem.gep872 = getelementptr i64, ptr %a.wr.data871, i64 %var.load654
  store i64 %smin, ptr %a.elem.gep872, align 8
  br label %a.wr.done864

a.wr.err.null862:                                 ; preds = %unwrap.pos.41
  %arena.cur873 = call ptr @dva_arena_current()
  %err.alloc874 = call ptr @dva_arena_alloc(ptr %arena.cur873, i64 56)
  %err.code.gep875 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 0
  store i64 4011, ptr %err.code.gep875, align 8
  %err.msg.gep876 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep876, align 8
  %err.file.gep877 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep877, align 8
  %err.line.gep878 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 3
  store i64 0, ptr %err.line.gep878, align 8
  %err.col.gep879 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 4
  store i64 0, ptr %err.col.gep879, align 8
  %err.ctx.gep880 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc874, i32 0, i32 5
  %err.ctx0.gep881 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep880, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep881, align 8
  %err.ctx1.gep882 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep880, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep882, align 8
  br label %a.wr.done864

a.wr.err.oob863:                                  ; preds = %a.wr.check860
  %arena.cur883 = call ptr @dva_arena_current()
  %err.alloc884 = call ptr @dva_arena_alloc(ptr %arena.cur883, i64 56)
  %err.code.gep885 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 0
  store i64 4011, ptr %err.code.gep885, align 8
  %err.msg.gep886 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep886, align 8
  %err.file.gep887 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep887, align 8
  %err.line.gep888 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 3
  store i64 0, ptr %err.line.gep888, align 8
  %err.col.gep889 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 4
  store i64 0, ptr %err.col.gep889, align 8
  %err.ctx.gep890 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc884, i32 0, i32 5
  %err.ctx0.gep891 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep890, i32 0, i32 0
  store i64 %var.load654, ptr %err.ctx0.gep891, align 8
  %err.ctx1.gep892 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep890, i32 0, i32 1
  store i64 %a.wr.len866, ptr %err.ctx1.gep892, align 8
  br label %a.wr.done864

a.wr.done864:                                     ; preds = %a.wr.err.oob863, %a.wr.err.null862, %a.wr.ok861
  %a.wr.tag893 = phi i64 [ 1, %a.wr.ok861 ], [ 0, %a.wr.err.null862 ], [ 0, %a.wr.err.oob863 ]
  %a.wr.pay894 = phi ptr [ null, %a.wr.ok861 ], [ %err.alloc874, %a.wr.err.null862 ], [ %err.alloc884, %a.wr.err.oob863 ]
  %arena.cur895 = call ptr @dva_arena_current()
  %a.wr.succ896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 16)
  %tag.gep897 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ896, i32 0, i32 0
  %pay.gep898 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ896, i32 0, i32 1
  store i64 %a.wr.tag893, ptr %tag.gep897, align 8
  store ptr %a.wr.pay894, ptr %pay.gep898, align 8
  %tag.gep899 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ896, i32 0, i32 0
  %tag.id900 = load i64, ptr %tag.gep899, align 8
  %tag.eq.one901 = icmp eq i64 %tag.id900, 1
  %tag.eq.two902 = icmp eq i64 %tag.id900, 2
  %is.pos903 = or i1 %tag.eq.one901, %tag.eq.two902
  %pay.gep904 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ896, i32 0, i32 1
  %payload.ptr905 = load ptr, ptr %pay.gep904, align 8
  br i1 %is.pos903, label %choice.then906, label %choice.else907

choice.then906:                                   ; preds = %a.wr.done864
  br label %choice.exit908

choice.else907:                                   ; preds = %a.wr.done864
  store ptr %payload.ptr905, ptr %var._909, align 8
  store ptr %payload.ptr905, ptr %var._910, align 8
  store ptr %payload.ptr905, ptr %var._911, align 8
  %err.code.gep912 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr905, i32 0, i32 0
  %err.code913 = load i64, ptr %err.code.gep912, align 8
  %err.msg.gep914 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr905, i32 0, i32 1
  %err.msg.struct915 = load ptr, ptr %err.msg.gep914, align 8
  %err.file.gep916 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr905, i32 0, i32 2
  %err.file.struct917 = load ptr, ptr %err.file.gep916, align 8
  %err.line.gep918 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr905, i32 0, i32 3
  %err.line919 = load i64, ptr %err.line.gep918, align 8
  %err.col.gep920 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr905, i32 0, i32 4
  %err.col921 = load i64, ptr %err.col.gep920, align 8
  %err.msg.len922 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct915, i32 0, i32 0
  %err.msg.len923 = load i64, ptr %err.msg.len922, align 8
  %err.msg.len924 = and i64 %err.msg.len923, 281474976710655
  %str.tag925 = lshr i64 %err.msg.len923, 48
  %str.immortal926 = icmp eq i64 %str.tag925, 0
  br i1 %str.immortal926, label %str_ok928, label %str_gen_check927

choice.exit908:                                   ; preds = %err.abort955, %choice.then906
  br label %choice.exit637

str_gen_check927:                                 ; preds = %choice.else907
  %arena.cur930 = call ptr @dva_arena_current()
  %tag.valid931 = call i1 @dva_arena_validate_tag(ptr %arena.cur930, i64 %str.tag925)
  br i1 %tag.valid931, label %str_ok928, label %str_stale929

str_ok928:                                        ; preds = %str_stale929, %str_gen_check927, %choice.else907
  %err.msg.len32932 = trunc i64 %err.msg.len924 to i32
  %err.msg.data933 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct915, i32 0, i32 1
  %err.msg.data934 = load ptr, ptr %err.msg.data933, align 8
  %err.file.len935 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct917, i32 0, i32 0
  %err.file.len936 = load i64, ptr %err.file.len935, align 8
  %err.file.len937 = and i64 %err.file.len936, 281474976710655
  %str.tag938 = lshr i64 %err.file.len936, 48
  %str.immortal939 = icmp eq i64 %str.tag938, 0
  br i1 %str.immortal939, label %str_ok941, label %str_gen_check940

str_stale929:                                     ; preds = %str_gen_check927
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok928

str_gen_check940:                                 ; preds = %str_ok928
  %arena.cur943 = call ptr @dva_arena_current()
  %tag.valid944 = call i1 @dva_arena_validate_tag(ptr %arena.cur943, i64 %str.tag938)
  br i1 %tag.valid944, label %str_ok941, label %str_stale942

str_ok941:                                        ; preds = %str_stale942, %str_gen_check940, %str_ok928
  %err.file.len32945 = trunc i64 %err.file.len937 to i32
  %err.file.data946 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct917, i32 0, i32 1
  %err.file.data947 = load ptr, ptr %err.file.data946, align 8
  %err.thread.rec948 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread949 = icmp ne ptr %err.thread.rec948, null
  br i1 %err.is.thread949, label %err.thread950, label %err.normal951

str_stale942:                                     ; preds = %str_gen_check940
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok941

err.thread950:                                    ; preds = %str_ok941
  %err.haserr.gep952 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec948, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep952, align 8
  %err.err.gep953 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec948, i32 0, i32 7
  store ptr %payload.ptr905, ptr %err.err.gep953, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal951:                                    ; preds = %str_ok941
  %err.panic.printf954 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code913, i32 %err.msg.len32932, ptr %err.msg.data934, i32 %err.file.len32945, ptr %err.file.data947, i64 %err.line919, i64 %err.col921)
  call void @exit(i32 1)
  unreachable

err.abort955:                                     ; No predecessors!
  br label %choice.exit908

a.create959:                                      ; preds = %choice.else636
  %arena.cur961 = call ptr @dva_arena_current()
  %a.create962 = call ptr @dva_arena_alloc(ptr %arena.cur961, i64 24)
  %arena.cur963 = call ptr @dva_arena_current()
  %a.buf964 = call ptr @dva_arena_alloc(ptr %arena.cur963, i64 128)
  %a.len.gep965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create962, i32 0, i32 0
  store i64 0, ptr %a.len.gep965, align 8
  %a.data.gep966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create962, i32 0, i32 1
  store ptr %a.buf964, ptr %a.data.gep966, align 8
  %a.cap.gep967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create962, i32 0, i32 2
  store i64 16, ptr %a.cap.gep967, align 8
  store ptr %a.create962, ptr %var.ons, align 8
  br label %a.after960

a.after960:                                       ; preds = %a.create959, %choice.else636
  %a.load2968 = load ptr, ptr %var.ons, align 8
  %var.load969 = load i64, ptr %var.v, align 8
  %a.rd.nonnull970 = icmp ne ptr %a.load2968, null
  br i1 %a.rd.nonnull970, label %a.rd.check971, label %a.rd.err.null973

a.rd.check971:                                    ; preds = %a.after960
  %a.rd.len976 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2968, i32 0, i32 0
  %a.rd.len977 = load i64, ptr %a.rd.len976, align 8
  %a.rd.ge0978 = icmp sge i64 %var.load969, 0
  %a.rd.lt979 = icmp slt i64 %var.load969, %a.rd.len977
  %a.rd.bounds980 = and i1 %a.rd.ge0978, %a.rd.lt979
  br i1 %a.rd.bounds980, label %a.rd.ok972, label %a.rd.err.oob974

a.rd.ok972:                                       ; preds = %a.rd.check971
  %a.rd.data981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2968, i32 0, i32 1
  %a.rd.data982 = load ptr, ptr %a.rd.data981, align 8
  %a.rd.elem.gep983 = getelementptr i64, ptr %a.rd.data982, i64 %var.load969
  %a.rd.elem984 = load i64, ptr %a.rd.elem.gep983, align 8
  br label %a.rd.done975

a.rd.err.null973:                                 ; preds = %a.after960
  %arena.cur985 = call ptr @dva_arena_current()
  %err.alloc986 = call ptr @dva_arena_alloc(ptr %arena.cur985, i64 56)
  %err.code.gep987 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 0
  store i64 4011, ptr %err.code.gep987, align 8
  %err.msg.gep988 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep988, align 8
  %err.file.gep989 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep989, align 8
  %err.line.gep990 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 3
  store i64 300, ptr %err.line.gep990, align 8
  %err.col.gep991 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 4
  store i64 33, ptr %err.col.gep991, align 8
  %err.ctx.gep992 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc986, i32 0, i32 5
  %err.ctx0.gep993 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep992, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep993, align 8
  %err.ctx1.gep994 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep992, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep994, align 8
  %err.p2i995 = ptrtoint ptr %err.alloc986 to i64
  br label %a.rd.done975

a.rd.err.oob974:                                  ; preds = %a.rd.check971
  %arena.cur996 = call ptr @dva_arena_current()
  %err.alloc997 = call ptr @dva_arena_alloc(ptr %arena.cur996, i64 56)
  %err.code.gep998 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 0
  store i64 4011, ptr %err.code.gep998, align 8
  %err.msg.gep999 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep999, align 8
  %err.file.gep1000 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1000, align 8
  %err.line.gep1001 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 3
  store i64 300, ptr %err.line.gep1001, align 8
  %err.col.gep1002 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 4
  store i64 33, ptr %err.col.gep1002, align 8
  %err.ctx.gep1003 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc997, i32 0, i32 5
  %err.ctx0.gep1004 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1003, i32 0, i32 0
  store i64 %var.load969, ptr %err.ctx0.gep1004, align 8
  %err.ctx1.gep1005 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1003, i32 0, i32 1
  store i64 %a.rd.len977, ptr %err.ctx1.gep1005, align 8
  %err.p2i1006 = ptrtoint ptr %err.alloc997 to i64
  br label %a.rd.done975

a.rd.done975:                                     ; preds = %a.rd.err.oob974, %a.rd.err.null973, %a.rd.ok972
  %a.rd.tag1007 = phi i1 [ true, %a.rd.ok972 ], [ false, %a.rd.err.null973 ], [ false, %a.rd.err.oob974 ]
  %a.rd.pay1008 = phi i64 [ %a.rd.elem984, %a.rd.ok972 ], [ %err.p2i995, %a.rd.err.null973 ], [ %err.p2i1006, %a.rd.err.oob974 ]
  %ram.tag1009 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1007, 0
  %ram.pay1010 = insertvalue { i1, i64 } %ram.tag1009, i64 %a.rd.pay1008, 1
  %ram.tag1011 = extractvalue { i1, i64 } %ram.pay1010, 0
  br i1 %ram.tag1011, label %choice.then1012, label %choice.else1013

choice.then1012:                                  ; preds = %a.rd.done975
  %ram.pay1015 = extractvalue { i1, i64 } %ram.pay1010, 1
  %pay.flag = trunc i64 %ram.pay1015 to i1
  store i1 %pay.flag, ptr %var._1016, align 1
  br label %choice.exit1014

choice.else1013:                                  ; preds = %a.rd.done975
  %ram.pay1017 = extractvalue { i1, i64 } %ram.pay1010, 1
  %pay.ptr1018 = inttoptr i64 %ram.pay1017 to ptr
  store ptr %pay.ptr1018, ptr %var._1019, align 8
  br label %choice.exit1014

choice.exit1014:                                  ; preds = %choice.else1013, %choice.then1012
  %choice.res1020 = phi i1 [ %pay.flag, %choice.then1012 ], [ false, %choice.else1013 ]
  store i1 %choice.res1020, ptr %var.v_on, align 1
  %var.load1021 = load i1, ptr %var.v_on, align 1
  br i1 %var.load1021, label %choice.then1022, label %choice.exit1023

choice.then1022:                                  ; preds = %choice.exit1014
  %var.load1024 = load ptr, ptr %var.lows, align 8
  %a.load1025 = load ptr, ptr %var.lows, align 8
  %a.null1026 = icmp eq ptr %a.load1025, null
  br i1 %a.null1026, label %a.create1027, label %a.after1028

choice.exit1023:                                  ; preds = %choice.exit1292, %choice.exit1014
  br label %choice.exit637

a.create1027:                                     ; preds = %choice.then1022
  %arena.cur1029 = call ptr @dva_arena_current()
  %a.create1030 = call ptr @dva_arena_alloc(ptr %arena.cur1029, i64 24)
  %arena.cur1031 = call ptr @dva_arena_current()
  %a.buf1032 = call ptr @dva_arena_alloc(ptr %arena.cur1031, i64 128)
  %a.len.gep1033 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 0
  store i64 0, ptr %a.len.gep1033, align 8
  %a.data.gep1034 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 1
  store ptr %a.buf1032, ptr %a.data.gep1034, align 8
  %a.cap.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1035, align 8
  store ptr %a.create1030, ptr %var.lows, align 8
  br label %a.after1028

a.after1028:                                      ; preds = %a.create1027, %choice.then1022
  %a.load21036 = load ptr, ptr %var.lows, align 8
  %var.load1037 = load i64, ptr %var.u, align 8
  %var.load1038 = load ptr, ptr %var.lows, align 8
  %a.load1039 = load ptr, ptr %var.lows, align 8
  %a.null1040 = icmp eq ptr %a.load1039, null
  br i1 %a.null1040, label %a.create1041, label %a.after1042

a.create1041:                                     ; preds = %a.after1028
  %arena.cur1043 = call ptr @dva_arena_current()
  %a.create1044 = call ptr @dva_arena_alloc(ptr %arena.cur1043, i64 24)
  %arena.cur1045 = call ptr @dva_arena_current()
  %a.buf1046 = call ptr @dva_arena_alloc(ptr %arena.cur1045, i64 128)
  %a.len.gep1047 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1044, i32 0, i32 0
  store i64 0, ptr %a.len.gep1047, align 8
  %a.data.gep1048 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1044, i32 0, i32 1
  store ptr %a.buf1046, ptr %a.data.gep1048, align 8
  %a.cap.gep1049 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1044, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1049, align 8
  store ptr %a.create1044, ptr %var.lows, align 8
  br label %a.after1042

a.after1042:                                      ; preds = %a.create1041, %a.after1028
  %a.load21050 = load ptr, ptr %var.lows, align 8
  %var.load1051 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1052 = icmp ne ptr %a.load21050, null
  br i1 %a.rd.nonnull1052, label %a.rd.check1053, label %a.rd.err.null1055

a.rd.check1053:                                   ; preds = %a.after1042
  %a.rd.len1058 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 0
  %a.rd.len1059 = load i64, ptr %a.rd.len1058, align 8
  %a.rd.ge01060 = icmp sge i64 %var.load1051, 0
  %a.rd.lt1061 = icmp slt i64 %var.load1051, %a.rd.len1059
  %a.rd.bounds1062 = and i1 %a.rd.ge01060, %a.rd.lt1061
  br i1 %a.rd.bounds1062, label %a.rd.ok1054, label %a.rd.err.oob1056

a.rd.ok1054:                                      ; preds = %a.rd.check1053
  %a.rd.data1063 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21050, i32 0, i32 1
  %a.rd.data1064 = load ptr, ptr %a.rd.data1063, align 8
  %a.rd.elem.gep1065 = getelementptr i64, ptr %a.rd.data1064, i64 %var.load1051
  %a.rd.elem1066 = load i64, ptr %a.rd.elem.gep1065, align 8
  br label %a.rd.done1057

a.rd.err.null1055:                                ; preds = %a.after1042
  %arena.cur1067 = call ptr @dva_arena_current()
  %err.alloc1068 = call ptr @dva_arena_alloc(ptr %arena.cur1067, i64 56)
  %err.code.gep1069 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1069, align 8
  %err.msg.gep1070 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1070, align 8
  %err.file.gep1071 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1071, align 8
  %err.line.gep1072 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 3
  store i64 303, ptr %err.line.gep1072, align 8
  %err.col.gep1073 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 4
  store i64 47, ptr %err.col.gep1073, align 8
  %err.ctx.gep1074 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1068, i32 0, i32 5
  %err.ctx0.gep1075 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1074, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1075, align 8
  %err.ctx1.gep1076 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1074, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1076, align 8
  %err.p2i1077 = ptrtoint ptr %err.alloc1068 to i64
  br label %a.rd.done1057

a.rd.err.oob1056:                                 ; preds = %a.rd.check1053
  %arena.cur1078 = call ptr @dva_arena_current()
  %err.alloc1079 = call ptr @dva_arena_alloc(ptr %arena.cur1078, i64 56)
  %err.code.gep1080 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1080, align 8
  %err.msg.gep1081 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1081, align 8
  %err.file.gep1082 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1082, align 8
  %err.line.gep1083 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 3
  store i64 303, ptr %err.line.gep1083, align 8
  %err.col.gep1084 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 4
  store i64 47, ptr %err.col.gep1084, align 8
  %err.ctx.gep1085 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1079, i32 0, i32 5
  %err.ctx0.gep1086 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1085, i32 0, i32 0
  store i64 %var.load1051, ptr %err.ctx0.gep1086, align 8
  %err.ctx1.gep1087 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1085, i32 0, i32 1
  store i64 %a.rd.len1059, ptr %err.ctx1.gep1087, align 8
  %err.p2i1088 = ptrtoint ptr %err.alloc1079 to i64
  br label %a.rd.done1057

a.rd.done1057:                                    ; preds = %a.rd.err.oob1056, %a.rd.err.null1055, %a.rd.ok1054
  %a.rd.tag1089 = phi i1 [ true, %a.rd.ok1054 ], [ false, %a.rd.err.null1055 ], [ false, %a.rd.err.oob1056 ]
  %a.rd.pay1090 = phi i64 [ %a.rd.elem1066, %a.rd.ok1054 ], [ %err.p2i1077, %a.rd.err.null1055 ], [ %err.p2i1088, %a.rd.err.oob1056 ]
  %ram.tag1091 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1089, 0
  %ram.pay1092 = insertvalue { i1, i64 } %ram.tag1091, i64 %a.rd.pay1090, 1
  %unwrap.is_pos1093 = extractvalue { i1, i64 } %ram.pay1092, 0
  br i1 %unwrap.is_pos1093, label %unwrap.pos.42, label %unwrap.abort.42

unwrap.pos.42:                                    ; preds = %a.rd.done1057
  %unwrap.pay.pos1139 = extractvalue { i1, i64 } %ram.pay1092, 1
  %var.load1140 = load ptr, ptr %var.idxs, align 8
  %a.load1141 = load ptr, ptr %var.idxs, align 8
  %a.null1142 = icmp eq ptr %a.load1141, null
  br i1 %a.null1142, label %a.create1143, label %a.after1144

unwrap.abort.42:                                  ; preds = %a.rd.done1057
  %unwrap.pay.abort1094 = extractvalue { i1, i64 } %ram.pay1092, 1
  %err.ptr1095 = inttoptr i64 %unwrap.pay.abort1094 to ptr
  %err.code.gep1096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1095, i32 0, i32 0
  %err.code1097 = load i64, ptr %err.code.gep1096, align 8
  %err.msg.gep1098 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1095, i32 0, i32 1
  %err.msg.struct1099 = load ptr, ptr %err.msg.gep1098, align 8
  %err.file.gep1100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1095, i32 0, i32 2
  %err.file.struct1101 = load ptr, ptr %err.file.gep1100, align 8
  %err.line.gep1102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1095, i32 0, i32 3
  %err.line1103 = load i64, ptr %err.line.gep1102, align 8
  %err.col.gep1104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1095, i32 0, i32 4
  %err.col1105 = load i64, ptr %err.col.gep1104, align 8
  %err.msg.len1106 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1099, i32 0, i32 0
  %err.msg.len1107 = load i64, ptr %err.msg.len1106, align 8
  %err.msg.len1108 = and i64 %err.msg.len1107, 281474976710655
  %str.tag1109 = lshr i64 %err.msg.len1107, 48
  %str.immortal1110 = icmp eq i64 %str.tag1109, 0
  br i1 %str.immortal1110, label %str_ok1112, label %str_gen_check1111

str_gen_check1111:                                ; preds = %unwrap.abort.42
  %arena.cur1114 = call ptr @dva_arena_current()
  %tag.valid1115 = call i1 @dva_arena_validate_tag(ptr %arena.cur1114, i64 %str.tag1109)
  br i1 %tag.valid1115, label %str_ok1112, label %str_stale1113

str_ok1112:                                       ; preds = %str_stale1113, %str_gen_check1111, %unwrap.abort.42
  %err.msg.len321116 = trunc i64 %err.msg.len1108 to i32
  %err.msg.data1117 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1099, i32 0, i32 1
  %err.msg.data1118 = load ptr, ptr %err.msg.data1117, align 8
  %err.file.len1119 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1101, i32 0, i32 0
  %err.file.len1120 = load i64, ptr %err.file.len1119, align 8
  %err.file.len1121 = and i64 %err.file.len1120, 281474976710655
  %str.tag1122 = lshr i64 %err.file.len1120, 48
  %str.immortal1123 = icmp eq i64 %str.tag1122, 0
  br i1 %str.immortal1123, label %str_ok1125, label %str_gen_check1124

str_stale1113:                                    ; preds = %str_gen_check1111
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1112

str_gen_check1124:                                ; preds = %str_ok1112
  %arena.cur1127 = call ptr @dva_arena_current()
  %tag.valid1128 = call i1 @dva_arena_validate_tag(ptr %arena.cur1127, i64 %str.tag1122)
  br i1 %tag.valid1128, label %str_ok1125, label %str_stale1126

str_ok1125:                                       ; preds = %str_stale1126, %str_gen_check1124, %str_ok1112
  %err.file.len321129 = trunc i64 %err.file.len1121 to i32
  %err.file.data1130 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1101, i32 0, i32 1
  %err.file.data1131 = load ptr, ptr %err.file.data1130, align 8
  %err.thread.rec1132 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1133 = icmp ne ptr %err.thread.rec1132, null
  br i1 %err.is.thread1133, label %err.thread1134, label %err.normal1135

str_stale1126:                                    ; preds = %str_gen_check1124
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1125

err.thread1134:                                   ; preds = %str_ok1125
  %err.haserr.gep1136 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1132, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1136, align 8
  %err.err.gep1137 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1132, i32 0, i32 7
  store ptr %err.ptr1095, ptr %err.err.gep1137, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1135:                                   ; preds = %str_ok1125
  %err.panic.printf1138 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1097, i32 %err.msg.len321116, ptr %err.msg.data1118, i32 %err.file.len321129, ptr %err.file.data1131, i64 %err.line1103, i64 %err.col1105)
  call void @exit(i32 1)
  unreachable

a.create1143:                                     ; preds = %unwrap.pos.42
  %arena.cur1145 = call ptr @dva_arena_current()
  %a.create1146 = call ptr @dva_arena_alloc(ptr %arena.cur1145, i64 24)
  %arena.cur1147 = call ptr @dva_arena_current()
  %a.buf1148 = call ptr @dva_arena_alloc(ptr %arena.cur1147, i64 128)
  %a.len.gep1149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1146, i32 0, i32 0
  store i64 0, ptr %a.len.gep1149, align 8
  %a.data.gep1150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1146, i32 0, i32 1
  store ptr %a.buf1148, ptr %a.data.gep1150, align 8
  %a.cap.gep1151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1146, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1151, align 8
  store ptr %a.create1146, ptr %var.idxs, align 8
  br label %a.after1144

a.after1144:                                      ; preds = %a.create1143, %unwrap.pos.42
  %a.load21152 = load ptr, ptr %var.idxs, align 8
  %var.load1153 = load i64, ptr %var.v, align 8
  %a.rd.nonnull1154 = icmp ne ptr %a.load21152, null
  br i1 %a.rd.nonnull1154, label %a.rd.check1155, label %a.rd.err.null1157

a.rd.check1155:                                   ; preds = %a.after1144
  %a.rd.len1160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21152, i32 0, i32 0
  %a.rd.len1161 = load i64, ptr %a.rd.len1160, align 8
  %a.rd.ge01162 = icmp sge i64 %var.load1153, 0
  %a.rd.lt1163 = icmp slt i64 %var.load1153, %a.rd.len1161
  %a.rd.bounds1164 = and i1 %a.rd.ge01162, %a.rd.lt1163
  br i1 %a.rd.bounds1164, label %a.rd.ok1156, label %a.rd.err.oob1158

a.rd.ok1156:                                      ; preds = %a.rd.check1155
  %a.rd.data1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21152, i32 0, i32 1
  %a.rd.data1166 = load ptr, ptr %a.rd.data1165, align 8
  %a.rd.elem.gep1167 = getelementptr i64, ptr %a.rd.data1166, i64 %var.load1153
  %a.rd.elem1168 = load i64, ptr %a.rd.elem.gep1167, align 8
  br label %a.rd.done1159

a.rd.err.null1157:                                ; preds = %a.after1144
  %arena.cur1169 = call ptr @dva_arena_current()
  %err.alloc1170 = call ptr @dva_arena_alloc(ptr %arena.cur1169, i64 56)
  %err.code.gep1171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1171, align 8
  %err.msg.gep1172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1172, align 8
  %err.file.gep1173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1173, align 8
  %err.line.gep1174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 3
  store i64 303, ptr %err.line.gep1174, align 8
  %err.col.gep1175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 4
  store i64 58, ptr %err.col.gep1175, align 8
  %err.ctx.gep1176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1170, i32 0, i32 5
  %err.ctx0.gep1177 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1176, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1177, align 8
  %err.ctx1.gep1178 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1176, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1178, align 8
  %err.p2i1179 = ptrtoint ptr %err.alloc1170 to i64
  br label %a.rd.done1159

a.rd.err.oob1158:                                 ; preds = %a.rd.check1155
  %arena.cur1180 = call ptr @dva_arena_current()
  %err.alloc1181 = call ptr @dva_arena_alloc(ptr %arena.cur1180, i64 56)
  %err.code.gep1182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1182, align 8
  %err.msg.gep1183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1183, align 8
  %err.file.gep1184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1184, align 8
  %err.line.gep1185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 3
  store i64 303, ptr %err.line.gep1185, align 8
  %err.col.gep1186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 4
  store i64 58, ptr %err.col.gep1186, align 8
  %err.ctx.gep1187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1181, i32 0, i32 5
  %err.ctx0.gep1188 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1187, i32 0, i32 0
  store i64 %var.load1153, ptr %err.ctx0.gep1188, align 8
  %err.ctx1.gep1189 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1187, i32 0, i32 1
  store i64 %a.rd.len1161, ptr %err.ctx1.gep1189, align 8
  %err.p2i1190 = ptrtoint ptr %err.alloc1181 to i64
  br label %a.rd.done1159

a.rd.done1159:                                    ; preds = %a.rd.err.oob1158, %a.rd.err.null1157, %a.rd.ok1156
  %a.rd.tag1191 = phi i1 [ true, %a.rd.ok1156 ], [ false, %a.rd.err.null1157 ], [ false, %a.rd.err.oob1158 ]
  %a.rd.pay1192 = phi i64 [ %a.rd.elem1168, %a.rd.ok1156 ], [ %err.p2i1179, %a.rd.err.null1157 ], [ %err.p2i1190, %a.rd.err.oob1158 ]
  %ram.tag1193 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1191, 0
  %ram.pay1194 = insertvalue { i1, i64 } %ram.tag1193, i64 %a.rd.pay1192, 1
  %unwrap.is_pos1195 = extractvalue { i1, i64 } %ram.pay1194, 0
  br i1 %unwrap.is_pos1195, label %unwrap.pos.43, label %unwrap.abort.43

unwrap.pos.43:                                    ; preds = %a.rd.done1159
  %unwrap.pay.pos1241 = extractvalue { i1, i64 } %ram.pay1194, 1
  %smin1242 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos1139, i64 %unwrap.pay.pos1241)
  %a.wr.nonnull1243 = icmp ne ptr %a.load21036, null
  br i1 %a.wr.nonnull1243, label %a.wr.check1244, label %a.wr.err.null1246

unwrap.abort.43:                                  ; preds = %a.rd.done1159
  %unwrap.pay.abort1196 = extractvalue { i1, i64 } %ram.pay1194, 1
  %err.ptr1197 = inttoptr i64 %unwrap.pay.abort1196 to ptr
  %err.code.gep1198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1197, i32 0, i32 0
  %err.code1199 = load i64, ptr %err.code.gep1198, align 8
  %err.msg.gep1200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1197, i32 0, i32 1
  %err.msg.struct1201 = load ptr, ptr %err.msg.gep1200, align 8
  %err.file.gep1202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1197, i32 0, i32 2
  %err.file.struct1203 = load ptr, ptr %err.file.gep1202, align 8
  %err.line.gep1204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1197, i32 0, i32 3
  %err.line1205 = load i64, ptr %err.line.gep1204, align 8
  %err.col.gep1206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1197, i32 0, i32 4
  %err.col1207 = load i64, ptr %err.col.gep1206, align 8
  %err.msg.len1208 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1201, i32 0, i32 0
  %err.msg.len1209 = load i64, ptr %err.msg.len1208, align 8
  %err.msg.len1210 = and i64 %err.msg.len1209, 281474976710655
  %str.tag1211 = lshr i64 %err.msg.len1209, 48
  %str.immortal1212 = icmp eq i64 %str.tag1211, 0
  br i1 %str.immortal1212, label %str_ok1214, label %str_gen_check1213

str_gen_check1213:                                ; preds = %unwrap.abort.43
  %arena.cur1216 = call ptr @dva_arena_current()
  %tag.valid1217 = call i1 @dva_arena_validate_tag(ptr %arena.cur1216, i64 %str.tag1211)
  br i1 %tag.valid1217, label %str_ok1214, label %str_stale1215

str_ok1214:                                       ; preds = %str_stale1215, %str_gen_check1213, %unwrap.abort.43
  %err.msg.len321218 = trunc i64 %err.msg.len1210 to i32
  %err.msg.data1219 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1201, i32 0, i32 1
  %err.msg.data1220 = load ptr, ptr %err.msg.data1219, align 8
  %err.file.len1221 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1203, i32 0, i32 0
  %err.file.len1222 = load i64, ptr %err.file.len1221, align 8
  %err.file.len1223 = and i64 %err.file.len1222, 281474976710655
  %str.tag1224 = lshr i64 %err.file.len1222, 48
  %str.immortal1225 = icmp eq i64 %str.tag1224, 0
  br i1 %str.immortal1225, label %str_ok1227, label %str_gen_check1226

str_stale1215:                                    ; preds = %str_gen_check1213
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1214

str_gen_check1226:                                ; preds = %str_ok1214
  %arena.cur1229 = call ptr @dva_arena_current()
  %tag.valid1230 = call i1 @dva_arena_validate_tag(ptr %arena.cur1229, i64 %str.tag1224)
  br i1 %tag.valid1230, label %str_ok1227, label %str_stale1228

str_ok1227:                                       ; preds = %str_stale1228, %str_gen_check1226, %str_ok1214
  %err.file.len321231 = trunc i64 %err.file.len1223 to i32
  %err.file.data1232 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1203, i32 0, i32 1
  %err.file.data1233 = load ptr, ptr %err.file.data1232, align 8
  %err.thread.rec1234 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1235 = icmp ne ptr %err.thread.rec1234, null
  br i1 %err.is.thread1235, label %err.thread1236, label %err.normal1237

str_stale1228:                                    ; preds = %str_gen_check1226
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1227

err.thread1236:                                   ; preds = %str_ok1227
  %err.haserr.gep1238 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1234, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1238, align 8
  %err.err.gep1239 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1234, i32 0, i32 7
  store ptr %err.ptr1197, ptr %err.err.gep1239, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1237:                                   ; preds = %str_ok1227
  %err.panic.printf1240 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1199, i32 %err.msg.len321218, ptr %err.msg.data1220, i32 %err.file.len321231, ptr %err.file.data1233, i64 %err.line1205, i64 %err.col1207)
  call void @exit(i32 1)
  unreachable

a.wr.check1244:                                   ; preds = %unwrap.pos.43
  %a.wr.len1249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21036, i32 0, i32 0
  %a.wr.len1250 = load i64, ptr %a.wr.len1249, align 8
  %a.wr.ge01251 = icmp sge i64 %var.load1037, 0
  %a.wr.lt1252 = icmp slt i64 %var.load1037, %a.wr.len1250
  %a.wr.bounds1253 = and i1 %a.wr.ge01251, %a.wr.lt1252
  br i1 %a.wr.bounds1253, label %a.wr.ok1245, label %a.wr.err.oob1247

a.wr.ok1245:                                      ; preds = %a.wr.check1244
  %a.wr.data1254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21036, i32 0, i32 1
  %a.wr.data1255 = load ptr, ptr %a.wr.data1254, align 8
  %a.elem.gep1256 = getelementptr i64, ptr %a.wr.data1255, i64 %var.load1037
  store i64 %smin1242, ptr %a.elem.gep1256, align 8
  br label %a.wr.done1248

a.wr.err.null1246:                                ; preds = %unwrap.pos.43
  %arena.cur1257 = call ptr @dva_arena_current()
  %err.alloc1258 = call ptr @dva_arena_alloc(ptr %arena.cur1257, i64 56)
  %err.code.gep1259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1259, align 8
  %err.msg.gep1260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1260, align 8
  %err.file.gep1261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1261, align 8
  %err.line.gep1262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 3
  store i64 0, ptr %err.line.gep1262, align 8
  %err.col.gep1263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 4
  store i64 0, ptr %err.col.gep1263, align 8
  %err.ctx.gep1264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1258, i32 0, i32 5
  %err.ctx0.gep1265 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1264, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1265, align 8
  %err.ctx1.gep1266 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1264, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1266, align 8
  br label %a.wr.done1248

a.wr.err.oob1247:                                 ; preds = %a.wr.check1244
  %arena.cur1267 = call ptr @dva_arena_current()
  %err.alloc1268 = call ptr @dva_arena_alloc(ptr %arena.cur1267, i64 56)
  %err.code.gep1269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1269, align 8
  %err.msg.gep1270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1270, align 8
  %err.file.gep1271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1271, align 8
  %err.line.gep1272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 3
  store i64 0, ptr %err.line.gep1272, align 8
  %err.col.gep1273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 4
  store i64 0, ptr %err.col.gep1273, align 8
  %err.ctx.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1268, i32 0, i32 5
  %err.ctx0.gep1275 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1274, i32 0, i32 0
  store i64 %var.load1037, ptr %err.ctx0.gep1275, align 8
  %err.ctx1.gep1276 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1274, i32 0, i32 1
  store i64 %a.wr.len1250, ptr %err.ctx1.gep1276, align 8
  br label %a.wr.done1248

a.wr.done1248:                                    ; preds = %a.wr.err.oob1247, %a.wr.err.null1246, %a.wr.ok1245
  %a.wr.tag1277 = phi i64 [ 1, %a.wr.ok1245 ], [ 0, %a.wr.err.null1246 ], [ 0, %a.wr.err.oob1247 ]
  %a.wr.pay1278 = phi ptr [ null, %a.wr.ok1245 ], [ %err.alloc1258, %a.wr.err.null1246 ], [ %err.alloc1268, %a.wr.err.oob1247 ]
  %arena.cur1279 = call ptr @dva_arena_current()
  %a.wr.succ1280 = call ptr @dva_arena_alloc(ptr %arena.cur1279, i64 16)
  %tag.gep1281 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1280, i32 0, i32 0
  %pay.gep1282 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1280, i32 0, i32 1
  store i64 %a.wr.tag1277, ptr %tag.gep1281, align 8
  store ptr %a.wr.pay1278, ptr %pay.gep1282, align 8
  %tag.gep1283 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1280, i32 0, i32 0
  %tag.id1284 = load i64, ptr %tag.gep1283, align 8
  %tag.eq.one1285 = icmp eq i64 %tag.id1284, 1
  %tag.eq.two1286 = icmp eq i64 %tag.id1284, 2
  %is.pos1287 = or i1 %tag.eq.one1285, %tag.eq.two1286
  %pay.gep1288 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1280, i32 0, i32 1
  %payload.ptr1289 = load ptr, ptr %pay.gep1288, align 8
  br i1 %is.pos1287, label %choice.then1290, label %choice.else1291

choice.then1290:                                  ; preds = %a.wr.done1248
  br label %choice.exit1292

choice.else1291:                                  ; preds = %a.wr.done1248
  store ptr %payload.ptr1289, ptr %var._1293, align 8
  store ptr %payload.ptr1289, ptr %var._1294, align 8
  store ptr %payload.ptr1289, ptr %var._1295, align 8
  %err.code.gep1296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1289, i32 0, i32 0
  %err.code1297 = load i64, ptr %err.code.gep1296, align 8
  %err.msg.gep1298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1289, i32 0, i32 1
  %err.msg.struct1299 = load ptr, ptr %err.msg.gep1298, align 8
  %err.file.gep1300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1289, i32 0, i32 2
  %err.file.struct1301 = load ptr, ptr %err.file.gep1300, align 8
  %err.line.gep1302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1289, i32 0, i32 3
  %err.line1303 = load i64, ptr %err.line.gep1302, align 8
  %err.col.gep1304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1289, i32 0, i32 4
  %err.col1305 = load i64, ptr %err.col.gep1304, align 8
  %err.msg.len1306 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1299, i32 0, i32 0
  %err.msg.len1307 = load i64, ptr %err.msg.len1306, align 8
  %err.msg.len1308 = and i64 %err.msg.len1307, 281474976710655
  %str.tag1309 = lshr i64 %err.msg.len1307, 48
  %str.immortal1310 = icmp eq i64 %str.tag1309, 0
  br i1 %str.immortal1310, label %str_ok1312, label %str_gen_check1311

choice.exit1292:                                  ; preds = %err.abort1339, %choice.then1290
  br label %choice.exit1023

str_gen_check1311:                                ; preds = %choice.else1291
  %arena.cur1314 = call ptr @dva_arena_current()
  %tag.valid1315 = call i1 @dva_arena_validate_tag(ptr %arena.cur1314, i64 %str.tag1309)
  br i1 %tag.valid1315, label %str_ok1312, label %str_stale1313

str_ok1312:                                       ; preds = %str_stale1313, %str_gen_check1311, %choice.else1291
  %err.msg.len321316 = trunc i64 %err.msg.len1308 to i32
  %err.msg.data1317 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1299, i32 0, i32 1
  %err.msg.data1318 = load ptr, ptr %err.msg.data1317, align 8
  %err.file.len1319 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1301, i32 0, i32 0
  %err.file.len1320 = load i64, ptr %err.file.len1319, align 8
  %err.file.len1321 = and i64 %err.file.len1320, 281474976710655
  %str.tag1322 = lshr i64 %err.file.len1320, 48
  %str.immortal1323 = icmp eq i64 %str.tag1322, 0
  br i1 %str.immortal1323, label %str_ok1325, label %str_gen_check1324

str_stale1313:                                    ; preds = %str_gen_check1311
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1312

str_gen_check1324:                                ; preds = %str_ok1312
  %arena.cur1327 = call ptr @dva_arena_current()
  %tag.valid1328 = call i1 @dva_arena_validate_tag(ptr %arena.cur1327, i64 %str.tag1322)
  br i1 %tag.valid1328, label %str_ok1325, label %str_stale1326

str_ok1325:                                       ; preds = %str_stale1326, %str_gen_check1324, %str_ok1312
  %err.file.len321329 = trunc i64 %err.file.len1321 to i32
  %err.file.data1330 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1301, i32 0, i32 1
  %err.file.data1331 = load ptr, ptr %err.file.data1330, align 8
  %err.thread.rec1332 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1333 = icmp ne ptr %err.thread.rec1332, null
  br i1 %err.is.thread1333, label %err.thread1334, label %err.normal1335

str_stale1326:                                    ; preds = %str_gen_check1324
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1325

err.thread1334:                                   ; preds = %str_ok1325
  %err.haserr.gep1336 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1332, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1336, align 8
  %err.err.gep1337 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1332, i32 0, i32 7
  store ptr %payload.ptr1289, ptr %err.err.gep1337, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1335:                                   ; preds = %str_ok1325
  %err.panic.printf1338 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1297, i32 %err.msg.len321316, ptr %err.msg.data1318, i32 %err.file.len321329, ptr %err.file.data1331, i64 %err.line1303, i64 %err.col1305)
  call void @exit(i32 1)
  unreachable

err.abort1339:                                    ; No predecessors!
  br label %choice.exit1292

a.create1343:                                     ; preds = %loop.exit.39
  %arena.cur1345 = call ptr @dva_arena_current()
  %a.create1346 = call ptr @dva_arena_alloc(ptr %arena.cur1345, i64 24)
  %arena.cur1347 = call ptr @dva_arena_current()
  %a.buf1348 = call ptr @dva_arena_alloc(ptr %arena.cur1347, i64 128)
  %a.len.gep1349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1346, i32 0, i32 0
  store i64 0, ptr %a.len.gep1349, align 8
  %a.data.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1346, i32 0, i32 1
  store ptr %a.buf1348, ptr %a.data.gep1350, align 8
  %a.cap.gep1351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1351, align 8
  store ptr %a.create1346, ptr %var.lows, align 8
  br label %a.after1344

a.after1344:                                      ; preds = %a.create1343, %loop.exit.39
  %a.load21352 = load ptr, ptr %var.lows, align 8
  %var.load1353 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1354 = icmp ne ptr %a.load21352, null
  br i1 %a.rd.nonnull1354, label %a.rd.check1355, label %a.rd.err.null1357

a.rd.check1355:                                   ; preds = %a.after1344
  %a.rd.len1360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21352, i32 0, i32 0
  %a.rd.len1361 = load i64, ptr %a.rd.len1360, align 8
  %a.rd.ge01362 = icmp sge i64 %var.load1353, 0
  %a.rd.lt1363 = icmp slt i64 %var.load1353, %a.rd.len1361
  %a.rd.bounds1364 = and i1 %a.rd.ge01362, %a.rd.lt1363
  br i1 %a.rd.bounds1364, label %a.rd.ok1356, label %a.rd.err.oob1358

a.rd.ok1356:                                      ; preds = %a.rd.check1355
  %a.rd.data1365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21352, i32 0, i32 1
  %a.rd.data1366 = load ptr, ptr %a.rd.data1365, align 8
  %a.rd.elem.gep1367 = getelementptr i64, ptr %a.rd.data1366, i64 %var.load1353
  %a.rd.elem1368 = load i64, ptr %a.rd.elem.gep1367, align 8
  br label %a.rd.done1359

a.rd.err.null1357:                                ; preds = %a.after1344
  %arena.cur1369 = call ptr @dva_arena_current()
  %err.alloc1370 = call ptr @dva_arena_alloc(ptr %arena.cur1369, i64 56)
  %err.code.gep1371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1371, align 8
  %err.msg.gep1372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1372, align 8
  %err.file.gep1373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1373, align 8
  %err.line.gep1374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 3
  store i64 305, ptr %err.line.gep1374, align 8
  %err.col.gep1375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 4
  store i64 19, ptr %err.col.gep1375, align 8
  %err.ctx.gep1376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1370, i32 0, i32 5
  %err.ctx0.gep1377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1376, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1377, align 8
  %err.ctx1.gep1378 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1376, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1378, align 8
  %err.p2i1379 = ptrtoint ptr %err.alloc1370 to i64
  br label %a.rd.done1359

a.rd.err.oob1358:                                 ; preds = %a.rd.check1355
  %arena.cur1380 = call ptr @dva_arena_current()
  %err.alloc1381 = call ptr @dva_arena_alloc(ptr %arena.cur1380, i64 56)
  %err.code.gep1382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1382, align 8
  %err.msg.gep1383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1383, align 8
  %err.file.gep1384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1384, align 8
  %err.line.gep1385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 3
  store i64 305, ptr %err.line.gep1385, align 8
  %err.col.gep1386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 4
  store i64 19, ptr %err.col.gep1386, align 8
  %err.ctx.gep1387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1381, i32 0, i32 5
  %err.ctx0.gep1388 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1387, i32 0, i32 0
  store i64 %var.load1353, ptr %err.ctx0.gep1388, align 8
  %err.ctx1.gep1389 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1387, i32 0, i32 1
  store i64 %a.rd.len1361, ptr %err.ctx1.gep1389, align 8
  %err.p2i1390 = ptrtoint ptr %err.alloc1381 to i64
  br label %a.rd.done1359

a.rd.done1359:                                    ; preds = %a.rd.err.oob1358, %a.rd.err.null1357, %a.rd.ok1356
  %a.rd.tag1391 = phi i1 [ true, %a.rd.ok1356 ], [ false, %a.rd.err.null1357 ], [ false, %a.rd.err.oob1358 ]
  %a.rd.pay1392 = phi i64 [ %a.rd.elem1368, %a.rd.ok1356 ], [ %err.p2i1379, %a.rd.err.null1357 ], [ %err.p2i1390, %a.rd.err.oob1358 ]
  %ram.tag1393 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1391, 0
  %ram.pay1394 = insertvalue { i1, i64 } %ram.tag1393, i64 %a.rd.pay1392, 1
  %unwrap.is_pos1395 = extractvalue { i1, i64 } %ram.pay1394, 0
  br i1 %unwrap.is_pos1395, label %unwrap.pos.44, label %unwrap.abort.44

unwrap.pos.44:                                    ; preds = %a.rd.done1359
  %unwrap.pay.pos1441 = extractvalue { i1, i64 } %ram.pay1394, 1
  store i64 %unwrap.pay.pos1441, ptr %var.low_u, align 8
  %var.load1442 = load ptr, ptr %var.idxs, align 8
  %a.load1443 = load ptr, ptr %var.idxs, align 8
  %a.null1444 = icmp eq ptr %a.load1443, null
  br i1 %a.null1444, label %a.create1445, label %a.after1446

unwrap.abort.44:                                  ; preds = %a.rd.done1359
  %unwrap.pay.abort1396 = extractvalue { i1, i64 } %ram.pay1394, 1
  %err.ptr1397 = inttoptr i64 %unwrap.pay.abort1396 to ptr
  %err.code.gep1398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1397, i32 0, i32 0
  %err.code1399 = load i64, ptr %err.code.gep1398, align 8
  %err.msg.gep1400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1397, i32 0, i32 1
  %err.msg.struct1401 = load ptr, ptr %err.msg.gep1400, align 8
  %err.file.gep1402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1397, i32 0, i32 2
  %err.file.struct1403 = load ptr, ptr %err.file.gep1402, align 8
  %err.line.gep1404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1397, i32 0, i32 3
  %err.line1405 = load i64, ptr %err.line.gep1404, align 8
  %err.col.gep1406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1397, i32 0, i32 4
  %err.col1407 = load i64, ptr %err.col.gep1406, align 8
  %err.msg.len1408 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1401, i32 0, i32 0
  %err.msg.len1409 = load i64, ptr %err.msg.len1408, align 8
  %err.msg.len1410 = and i64 %err.msg.len1409, 281474976710655
  %str.tag1411 = lshr i64 %err.msg.len1409, 48
  %str.immortal1412 = icmp eq i64 %str.tag1411, 0
  br i1 %str.immortal1412, label %str_ok1414, label %str_gen_check1413

str_gen_check1413:                                ; preds = %unwrap.abort.44
  %arena.cur1416 = call ptr @dva_arena_current()
  %tag.valid1417 = call i1 @dva_arena_validate_tag(ptr %arena.cur1416, i64 %str.tag1411)
  br i1 %tag.valid1417, label %str_ok1414, label %str_stale1415

str_ok1414:                                       ; preds = %str_stale1415, %str_gen_check1413, %unwrap.abort.44
  %err.msg.len321418 = trunc i64 %err.msg.len1410 to i32
  %err.msg.data1419 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1401, i32 0, i32 1
  %err.msg.data1420 = load ptr, ptr %err.msg.data1419, align 8
  %err.file.len1421 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1403, i32 0, i32 0
  %err.file.len1422 = load i64, ptr %err.file.len1421, align 8
  %err.file.len1423 = and i64 %err.file.len1422, 281474976710655
  %str.tag1424 = lshr i64 %err.file.len1422, 48
  %str.immortal1425 = icmp eq i64 %str.tag1424, 0
  br i1 %str.immortal1425, label %str_ok1427, label %str_gen_check1426

str_stale1415:                                    ; preds = %str_gen_check1413
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1414

str_gen_check1426:                                ; preds = %str_ok1414
  %arena.cur1429 = call ptr @dva_arena_current()
  %tag.valid1430 = call i1 @dva_arena_validate_tag(ptr %arena.cur1429, i64 %str.tag1424)
  br i1 %tag.valid1430, label %str_ok1427, label %str_stale1428

str_ok1427:                                       ; preds = %str_stale1428, %str_gen_check1426, %str_ok1414
  %err.file.len321431 = trunc i64 %err.file.len1423 to i32
  %err.file.data1432 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1403, i32 0, i32 1
  %err.file.data1433 = load ptr, ptr %err.file.data1432, align 8
  %err.thread.rec1434 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1435 = icmp ne ptr %err.thread.rec1434, null
  br i1 %err.is.thread1435, label %err.thread1436, label %err.normal1437

str_stale1428:                                    ; preds = %str_gen_check1426
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1427

err.thread1436:                                   ; preds = %str_ok1427
  %err.haserr.gep1438 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1434, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1438, align 8
  %err.err.gep1439 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1434, i32 0, i32 7
  store ptr %err.ptr1397, ptr %err.err.gep1439, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1437:                                   ; preds = %str_ok1427
  %err.panic.printf1440 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1399, i32 %err.msg.len321418, ptr %err.msg.data1420, i32 %err.file.len321431, ptr %err.file.data1433, i64 %err.line1405, i64 %err.col1407)
  call void @exit(i32 1)
  unreachable

a.create1445:                                     ; preds = %unwrap.pos.44
  %arena.cur1447 = call ptr @dva_arena_current()
  %a.create1448 = call ptr @dva_arena_alloc(ptr %arena.cur1447, i64 24)
  %arena.cur1449 = call ptr @dva_arena_current()
  %a.buf1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 128)
  %a.len.gep1451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1448, i32 0, i32 0
  store i64 0, ptr %a.len.gep1451, align 8
  %a.data.gep1452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1448, i32 0, i32 1
  store ptr %a.buf1450, ptr %a.data.gep1452, align 8
  %a.cap.gep1453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1448, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1453, align 8
  store ptr %a.create1448, ptr %var.idxs, align 8
  br label %a.after1446

a.after1446:                                      ; preds = %a.create1445, %unwrap.pos.44
  %a.load21454 = load ptr, ptr %var.idxs, align 8
  %var.load1455 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1456 = icmp ne ptr %a.load21454, null
  br i1 %a.rd.nonnull1456, label %a.rd.check1457, label %a.rd.err.null1459

a.rd.check1457:                                   ; preds = %a.after1446
  %a.rd.len1462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21454, i32 0, i32 0
  %a.rd.len1463 = load i64, ptr %a.rd.len1462, align 8
  %a.rd.ge01464 = icmp sge i64 %var.load1455, 0
  %a.rd.lt1465 = icmp slt i64 %var.load1455, %a.rd.len1463
  %a.rd.bounds1466 = and i1 %a.rd.ge01464, %a.rd.lt1465
  br i1 %a.rd.bounds1466, label %a.rd.ok1458, label %a.rd.err.oob1460

a.rd.ok1458:                                      ; preds = %a.rd.check1457
  %a.rd.data1467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21454, i32 0, i32 1
  %a.rd.data1468 = load ptr, ptr %a.rd.data1467, align 8
  %a.rd.elem.gep1469 = getelementptr i64, ptr %a.rd.data1468, i64 %var.load1455
  %a.rd.elem1470 = load i64, ptr %a.rd.elem.gep1469, align 8
  br label %a.rd.done1461

a.rd.err.null1459:                                ; preds = %a.after1446
  %arena.cur1471 = call ptr @dva_arena_current()
  %err.alloc1472 = call ptr @dva_arena_alloc(ptr %arena.cur1471, i64 56)
  %err.code.gep1473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1473, align 8
  %err.msg.gep1474 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1474, align 8
  %err.file.gep1475 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1475, align 8
  %err.line.gep1476 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 3
  store i64 306, ptr %err.line.gep1476, align 8
  %err.col.gep1477 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 4
  store i64 19, ptr %err.col.gep1477, align 8
  %err.ctx.gep1478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1472, i32 0, i32 5
  %err.ctx0.gep1479 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1478, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1479, align 8
  %err.ctx1.gep1480 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1478, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1480, align 8
  %err.p2i1481 = ptrtoint ptr %err.alloc1472 to i64
  br label %a.rd.done1461

a.rd.err.oob1460:                                 ; preds = %a.rd.check1457
  %arena.cur1482 = call ptr @dva_arena_current()
  %err.alloc1483 = call ptr @dva_arena_alloc(ptr %arena.cur1482, i64 56)
  %err.code.gep1484 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1484, align 8
  %err.msg.gep1485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1485, align 8
  %err.file.gep1486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1486, align 8
  %err.line.gep1487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 3
  store i64 306, ptr %err.line.gep1487, align 8
  %err.col.gep1488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 4
  store i64 19, ptr %err.col.gep1488, align 8
  %err.ctx.gep1489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1483, i32 0, i32 5
  %err.ctx0.gep1490 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1489, i32 0, i32 0
  store i64 %var.load1455, ptr %err.ctx0.gep1490, align 8
  %err.ctx1.gep1491 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1489, i32 0, i32 1
  store i64 %a.rd.len1463, ptr %err.ctx1.gep1491, align 8
  %err.p2i1492 = ptrtoint ptr %err.alloc1483 to i64
  br label %a.rd.done1461

a.rd.done1461:                                    ; preds = %a.rd.err.oob1460, %a.rd.err.null1459, %a.rd.ok1458
  %a.rd.tag1493 = phi i1 [ true, %a.rd.ok1458 ], [ false, %a.rd.err.null1459 ], [ false, %a.rd.err.oob1460 ]
  %a.rd.pay1494 = phi i64 [ %a.rd.elem1470, %a.rd.ok1458 ], [ %err.p2i1481, %a.rd.err.null1459 ], [ %err.p2i1492, %a.rd.err.oob1460 ]
  %ram.tag1495 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1493, 0
  %ram.pay1496 = insertvalue { i1, i64 } %ram.tag1495, i64 %a.rd.pay1494, 1
  %unwrap.is_pos1497 = extractvalue { i1, i64 } %ram.pay1496, 0
  br i1 %unwrap.is_pos1497, label %unwrap.pos.45, label %unwrap.abort.45

unwrap.pos.45:                                    ; preds = %a.rd.done1461
  %unwrap.pay.pos1543 = extractvalue { i1, i64 } %ram.pay1496, 1
  store i64 %unwrap.pay.pos1543, ptr %var.idx_u, align 8
  %var.load1544 = load i64, ptr %var.low_u, align 8
  %var.load1545 = load i64, ptr %var.idx_u, align 8
  %cmptmp1546 = icmp eq i64 %var.load1544, %var.load1545
  br i1 %cmptmp1546, label %choice.then1547, label %choice.exit1548

unwrap.abort.45:                                  ; preds = %a.rd.done1461
  %unwrap.pay.abort1498 = extractvalue { i1, i64 } %ram.pay1496, 1
  %err.ptr1499 = inttoptr i64 %unwrap.pay.abort1498 to ptr
  %err.code.gep1500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1499, i32 0, i32 0
  %err.code1501 = load i64, ptr %err.code.gep1500, align 8
  %err.msg.gep1502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1499, i32 0, i32 1
  %err.msg.struct1503 = load ptr, ptr %err.msg.gep1502, align 8
  %err.file.gep1504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1499, i32 0, i32 2
  %err.file.struct1505 = load ptr, ptr %err.file.gep1504, align 8
  %err.line.gep1506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1499, i32 0, i32 3
  %err.line1507 = load i64, ptr %err.line.gep1506, align 8
  %err.col.gep1508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1499, i32 0, i32 4
  %err.col1509 = load i64, ptr %err.col.gep1508, align 8
  %err.msg.len1510 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1503, i32 0, i32 0
  %err.msg.len1511 = load i64, ptr %err.msg.len1510, align 8
  %err.msg.len1512 = and i64 %err.msg.len1511, 281474976710655
  %str.tag1513 = lshr i64 %err.msg.len1511, 48
  %str.immortal1514 = icmp eq i64 %str.tag1513, 0
  br i1 %str.immortal1514, label %str_ok1516, label %str_gen_check1515

str_gen_check1515:                                ; preds = %unwrap.abort.45
  %arena.cur1518 = call ptr @dva_arena_current()
  %tag.valid1519 = call i1 @dva_arena_validate_tag(ptr %arena.cur1518, i64 %str.tag1513)
  br i1 %tag.valid1519, label %str_ok1516, label %str_stale1517

str_ok1516:                                       ; preds = %str_stale1517, %str_gen_check1515, %unwrap.abort.45
  %err.msg.len321520 = trunc i64 %err.msg.len1512 to i32
  %err.msg.data1521 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1503, i32 0, i32 1
  %err.msg.data1522 = load ptr, ptr %err.msg.data1521, align 8
  %err.file.len1523 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1505, i32 0, i32 0
  %err.file.len1524 = load i64, ptr %err.file.len1523, align 8
  %err.file.len1525 = and i64 %err.file.len1524, 281474976710655
  %str.tag1526 = lshr i64 %err.file.len1524, 48
  %str.immortal1527 = icmp eq i64 %str.tag1526, 0
  br i1 %str.immortal1527, label %str_ok1529, label %str_gen_check1528

str_stale1517:                                    ; preds = %str_gen_check1515
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1516

str_gen_check1528:                                ; preds = %str_ok1516
  %arena.cur1531 = call ptr @dva_arena_current()
  %tag.valid1532 = call i1 @dva_arena_validate_tag(ptr %arena.cur1531, i64 %str.tag1526)
  br i1 %tag.valid1532, label %str_ok1529, label %str_stale1530

str_ok1529:                                       ; preds = %str_stale1530, %str_gen_check1528, %str_ok1516
  %err.file.len321533 = trunc i64 %err.file.len1525 to i32
  %err.file.data1534 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1505, i32 0, i32 1
  %err.file.data1535 = load ptr, ptr %err.file.data1534, align 8
  %err.thread.rec1536 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1537 = icmp ne ptr %err.thread.rec1536, null
  br i1 %err.is.thread1537, label %err.thread1538, label %err.normal1539

str_stale1530:                                    ; preds = %str_gen_check1528
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1529

err.thread1538:                                   ; preds = %str_ok1529
  %err.haserr.gep1540 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1536, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1540, align 8
  %err.err.gep1541 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1536, i32 0, i32 7
  store ptr %err.ptr1499, ptr %err.err.gep1541, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1539:                                   ; preds = %str_ok1529
  %err.panic.printf1542 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1501, i32 %err.msg.len321520, ptr %err.msg.data1522, i32 %err.file.len321533, ptr %err.file.data1535, i64 %err.line1507, i64 %err.col1509)
  call void @exit(i32 1)
  unreachable

choice.then1547:                                  ; preds = %unwrap.pos.45
  %arena.cur1549 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1549, i64 24)
  %arena.cur1550 = call ptr @dva_arena_current()
  %a.buf1551 = call ptr @dva_arena_alloc(ptr %arena.cur1550, i64 128)
  %a.len.gep1552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1552, align 8
  %a.data.gep1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1551, ptr %a.data.gep1553, align 8
  %a.cap.gep1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1554, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1555 = load ptr, ptr %var.u_node, align 8
  %var.load1556 = load ptr, ptr %var.u_node, align 8
  %fld.gep1557 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1556, i32 0, i32 0
  %fld.load1558 = load ptr, ptr %fld.gep1557, align 8
  %call.res1559 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1555, ptr %fld.load1558)
  store i1 %call.res1559, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.46, align 8
  br label %loop.header.46

choice.exit1548:                                  ; preds = %a.store1940, %unwrap.pos.45
  ret void

loop.header.46:                                   ; preds = %loop.latch.46, %choice.then1547
  %counter.load1560 = load i64, ptr %loop.idx.46, align 8
  br label %loop.body.46

loop.body.46:                                     ; preds = %loop.header.46
  %loop.rel.i1561 = sub i64 %counter.load1560, 0
  store i64 1, ptr %loop.step.46, align 8
  store i64 %loop.rel.i1561, ptr %var._i1562, align 8
  store i64 %counter.load1560, ptr %var._1563, align 8
  %var.load1564 = load ptr, ptr %var.state, align 8
  %fld.gep1565 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1564, i32 0, i32 4
  %fld.load1566 = load ptr, ptr %fld.gep1565, align 8
  store ptr %fld.load1566, ptr %var.s_ptr, align 8
  %var.load1567 = load ptr, ptr %var.s_ptr, align 8
  %a.load1568 = load ptr, ptr %var.s_ptr, align 8
  %a.null1569 = icmp eq ptr %a.load1568, null
  br i1 %a.null1569, label %a.create1570, label %a.after1571

loop.exit.nat.46:                                 ; No predecessors!
  br label %loop.exit.46

loop.latch.46:                                    ; preds = %choice.exit1901
  %step.val1902 = load i64, ptr %loop.step.46, align 8
  %loop.next1903 = add i64 %counter.load1560, %step.val1902
  store i64 %loop.next1903, ptr %loop.idx.46, align 8
  br label %loop.header.46

loop.exit.46:                                     ; preds = %choice.then1900, %choice.then1669, %loop.exit.nat.46
  %var.load1904 = load ptr, ptr %var.scc_names, align 8
  %a.load1905 = load ptr, ptr %var.scc_names, align 8
  %a.null1906 = icmp eq ptr %a.load1905, null
  br i1 %a.null1906, label %a.create1907, label %a.after1908

a.create1570:                                     ; preds = %loop.body.46
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
  store ptr %a.create1573, ptr %var.s_ptr, align 8
  br label %a.after1571

a.after1571:                                      ; preds = %a.create1570, %loop.body.46
  %a.load21579 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1580 = icmp ne ptr %a.load21579, null
  br i1 %a.rd.nonnull1580, label %a.rd.check1581, label %a.rd.err.null1583

a.rd.check1581:                                   ; preds = %a.after1571
  %a.rd.len1586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21579, i32 0, i32 0
  %a.rd.len1587 = load i64, ptr %a.rd.len1586, align 8
  %a.rd.lt1588 = icmp slt i64 0, %a.rd.len1587
  %a.rd.bounds1589 = and i1 true, %a.rd.lt1588
  br i1 %a.rd.bounds1589, label %a.rd.ok1582, label %a.rd.err.oob1584

a.rd.ok1582:                                      ; preds = %a.rd.check1581
  %a.rd.data1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21579, i32 0, i32 1
  %a.rd.data1591 = load ptr, ptr %a.rd.data1590, align 8
  %a.rd.elem.gep1592 = getelementptr i64, ptr %a.rd.data1591, i64 0
  %a.rd.elem1593 = load i64, ptr %a.rd.elem.gep1592, align 8
  br label %a.rd.done1585

a.rd.err.null1583:                                ; preds = %a.after1571
  %arena.cur1594 = call ptr @dva_arena_current()
  %err.alloc1595 = call ptr @dva_arena_alloc(ptr %arena.cur1594, i64 56)
  %err.code.gep1596 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1596, align 8
  %err.msg.gep1597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1597, align 8
  %err.file.gep1598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1598, align 8
  %err.line.gep1599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 3
  store i64 313, ptr %err.line.gep1599, align 8
  %err.col.gep1600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 4
  store i64 26, ptr %err.col.gep1600, align 8
  %err.ctx.gep1601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 5
  %err.ctx0.gep1602 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1601, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1602, align 8
  %err.ctx1.gep1603 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1601, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1603, align 8
  %err.p2i1604 = ptrtoint ptr %err.alloc1595 to i64
  br label %a.rd.done1585

a.rd.err.oob1584:                                 ; preds = %a.rd.check1581
  %arena.cur1605 = call ptr @dva_arena_current()
  %err.alloc1606 = call ptr @dva_arena_alloc(ptr %arena.cur1605, i64 56)
  %err.code.gep1607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1607, align 8
  %err.msg.gep1608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1608, align 8
  %err.file.gep1609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1609, align 8
  %err.line.gep1610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 3
  store i64 313, ptr %err.line.gep1610, align 8
  %err.col.gep1611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 4
  store i64 26, ptr %err.col.gep1611, align 8
  %err.ctx.gep1612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 5
  %err.ctx0.gep1613 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1612, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1613, align 8
  %err.ctx1.gep1614 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1612, i32 0, i32 1
  store i64 %a.rd.len1587, ptr %err.ctx1.gep1614, align 8
  %err.p2i1615 = ptrtoint ptr %err.alloc1606 to i64
  br label %a.rd.done1585

a.rd.done1585:                                    ; preds = %a.rd.err.oob1584, %a.rd.err.null1583, %a.rd.ok1582
  %a.rd.tag1616 = phi i1 [ true, %a.rd.ok1582 ], [ false, %a.rd.err.null1583 ], [ false, %a.rd.err.oob1584 ]
  %a.rd.pay1617 = phi i64 [ %a.rd.elem1593, %a.rd.ok1582 ], [ %err.p2i1604, %a.rd.err.null1583 ], [ %err.p2i1615, %a.rd.err.oob1584 ]
  %ram.tag1618 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1616, 0
  %ram.pay1619 = insertvalue { i1, i64 } %ram.tag1618, i64 %a.rd.pay1617, 1
  %unwrap.is_pos1620 = extractvalue { i1, i64 } %ram.pay1619, 0
  br i1 %unwrap.is_pos1620, label %unwrap.pos.47, label %unwrap.abort.47

unwrap.pos.47:                                    ; preds = %a.rd.done1585
  %unwrap.pay.pos1666 = extractvalue { i1, i64 } %ram.pay1619, 1
  store i64 %unwrap.pay.pos1666, ptr %var.sp, align 8
  %var.load1667 = load i64, ptr %var.sp, align 8
  %cmptmp1668 = icmp eq i64 %var.load1667, 0
  br i1 %cmptmp1668, label %choice.then1669, label %choice.exit1670

unwrap.abort.47:                                  ; preds = %a.rd.done1585
  %unwrap.pay.abort1621 = extractvalue { i1, i64 } %ram.pay1619, 1
  %err.ptr1622 = inttoptr i64 %unwrap.pay.abort1621 to ptr
  %err.code.gep1623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1622, i32 0, i32 0
  %err.code1624 = load i64, ptr %err.code.gep1623, align 8
  %err.msg.gep1625 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1622, i32 0, i32 1
  %err.msg.struct1626 = load ptr, ptr %err.msg.gep1625, align 8
  %err.file.gep1627 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1622, i32 0, i32 2
  %err.file.struct1628 = load ptr, ptr %err.file.gep1627, align 8
  %err.line.gep1629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1622, i32 0, i32 3
  %err.line1630 = load i64, ptr %err.line.gep1629, align 8
  %err.col.gep1631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1622, i32 0, i32 4
  %err.col1632 = load i64, ptr %err.col.gep1631, align 8
  %err.msg.len1633 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1626, i32 0, i32 0
  %err.msg.len1634 = load i64, ptr %err.msg.len1633, align 8
  %err.msg.len1635 = and i64 %err.msg.len1634, 281474976710655
  %str.tag1636 = lshr i64 %err.msg.len1634, 48
  %str.immortal1637 = icmp eq i64 %str.tag1636, 0
  br i1 %str.immortal1637, label %str_ok1639, label %str_gen_check1638

str_gen_check1638:                                ; preds = %unwrap.abort.47
  %arena.cur1641 = call ptr @dva_arena_current()
  %tag.valid1642 = call i1 @dva_arena_validate_tag(ptr %arena.cur1641, i64 %str.tag1636)
  br i1 %tag.valid1642, label %str_ok1639, label %str_stale1640

str_ok1639:                                       ; preds = %str_stale1640, %str_gen_check1638, %unwrap.abort.47
  %err.msg.len321643 = trunc i64 %err.msg.len1635 to i32
  %err.msg.data1644 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1626, i32 0, i32 1
  %err.msg.data1645 = load ptr, ptr %err.msg.data1644, align 8
  %err.file.len1646 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1628, i32 0, i32 0
  %err.file.len1647 = load i64, ptr %err.file.len1646, align 8
  %err.file.len1648 = and i64 %err.file.len1647, 281474976710655
  %str.tag1649 = lshr i64 %err.file.len1647, 48
  %str.immortal1650 = icmp eq i64 %str.tag1649, 0
  br i1 %str.immortal1650, label %str_ok1652, label %str_gen_check1651

str_stale1640:                                    ; preds = %str_gen_check1638
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1639

str_gen_check1651:                                ; preds = %str_ok1639
  %arena.cur1654 = call ptr @dva_arena_current()
  %tag.valid1655 = call i1 @dva_arena_validate_tag(ptr %arena.cur1654, i64 %str.tag1649)
  br i1 %tag.valid1655, label %str_ok1652, label %str_stale1653

str_ok1652:                                       ; preds = %str_stale1653, %str_gen_check1651, %str_ok1639
  %err.file.len321656 = trunc i64 %err.file.len1648 to i32
  %err.file.data1657 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1628, i32 0, i32 1
  %err.file.data1658 = load ptr, ptr %err.file.data1657, align 8
  %err.thread.rec1659 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1660 = icmp ne ptr %err.thread.rec1659, null
  br i1 %err.is.thread1660, label %err.thread1661, label %err.normal1662

str_stale1653:                                    ; preds = %str_gen_check1651
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1652

err.thread1661:                                   ; preds = %str_ok1652
  %err.haserr.gep1663 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1659, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1663, align 8
  %err.err.gep1664 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1659, i32 0, i32 7
  store ptr %err.ptr1622, ptr %err.err.gep1664, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1662:                                   ; preds = %str_ok1652
  %err.panic.printf1665 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1624, i32 %err.msg.len321643, ptr %err.msg.data1645, i32 %err.file.len321656, ptr %err.file.data1658, i64 %err.line1630, i64 %err.col1632)
  call void @exit(i32 1)
  unreachable

choice.then1669:                                  ; preds = %unwrap.pos.47
  br label %loop.exit.46

choice.exit1670:                                  ; preds = %unwrap.pos.47
  %var.load1671 = load ptr, ptr %var.state, align 8
  %call.res1672 = call i64 @"dep_graph::pop_stack"(ptr %var.load1671)
  store i64 %call.res1672, ptr %var.w, align 8
  %var.load1673 = load ptr, ptr %var.ons, align 8
  %a.load1674 = load ptr, ptr %var.ons, align 8
  %a.null1675 = icmp eq ptr %a.load1674, null
  br i1 %a.null1675, label %a.create1676, label %a.after1677

a.create1676:                                     ; preds = %choice.exit1670
  %arena.cur1678 = call ptr @dva_arena_current()
  %a.create1679 = call ptr @dva_arena_alloc(ptr %arena.cur1678, i64 24)
  %arena.cur1680 = call ptr @dva_arena_current()
  %a.buf1681 = call ptr @dva_arena_alloc(ptr %arena.cur1680, i64 128)
  %a.len.gep1682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1679, i32 0, i32 0
  store i64 0, ptr %a.len.gep1682, align 8
  %a.data.gep1683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1679, i32 0, i32 1
  store ptr %a.buf1681, ptr %a.data.gep1683, align 8
  %a.cap.gep1684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1679, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1684, align 8
  store ptr %a.create1679, ptr %var.ons, align 8
  br label %a.after1677

a.after1677:                                      ; preds = %a.create1676, %choice.exit1670
  %a.load21685 = load ptr, ptr %var.ons, align 8
  %var.load1686 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1687 = icmp ne ptr %a.load21685, null
  br i1 %a.wr.nonnull1687, label %a.wr.check1688, label %a.wr.err.null1690

a.wr.check1688:                                   ; preds = %a.after1677
  %a.wr.len1693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21685, i32 0, i32 0
  %a.wr.len1694 = load i64, ptr %a.wr.len1693, align 8
  %a.wr.ge01695 = icmp sge i64 %var.load1686, 0
  %a.wr.lt1696 = icmp slt i64 %var.load1686, %a.wr.len1694
  %a.wr.bounds1697 = and i1 %a.wr.ge01695, %a.wr.lt1696
  br i1 %a.wr.bounds1697, label %a.wr.ok1689, label %a.wr.err.oob1691

a.wr.ok1689:                                      ; preds = %a.wr.check1688
  %a.wr.data1698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21685, i32 0, i32 1
  %a.wr.data1699 = load ptr, ptr %a.wr.data1698, align 8
  %a.elem.gep1700 = getelementptr i64, ptr %a.wr.data1699, i64 %var.load1686
  store i64 0, ptr %a.elem.gep1700, align 8
  br label %a.wr.done1692

a.wr.err.null1690:                                ; preds = %a.after1677
  %arena.cur1701 = call ptr @dva_arena_current()
  %err.alloc1702 = call ptr @dva_arena_alloc(ptr %arena.cur1701, i64 56)
  %err.code.gep1703 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1703, align 8
  %err.msg.gep1704 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1704, align 8
  %err.file.gep1705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1705, align 8
  %err.line.gep1706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 3
  store i64 0, ptr %err.line.gep1706, align 8
  %err.col.gep1707 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 4
  store i64 0, ptr %err.col.gep1707, align 8
  %err.ctx.gep1708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1702, i32 0, i32 5
  %err.ctx0.gep1709 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1708, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1709, align 8
  %err.ctx1.gep1710 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1708, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1710, align 8
  br label %a.wr.done1692

a.wr.err.oob1691:                                 ; preds = %a.wr.check1688
  %arena.cur1711 = call ptr @dva_arena_current()
  %err.alloc1712 = call ptr @dva_arena_alloc(ptr %arena.cur1711, i64 56)
  %err.code.gep1713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1713, align 8
  %err.msg.gep1714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1714, align 8
  %err.file.gep1715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1715, align 8
  %err.line.gep1716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 3
  store i64 0, ptr %err.line.gep1716, align 8
  %err.col.gep1717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 4
  store i64 0, ptr %err.col.gep1717, align 8
  %err.ctx.gep1718 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1712, i32 0, i32 5
  %err.ctx0.gep1719 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1718, i32 0, i32 0
  store i64 %var.load1686, ptr %err.ctx0.gep1719, align 8
  %err.ctx1.gep1720 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1718, i32 0, i32 1
  store i64 %a.wr.len1694, ptr %err.ctx1.gep1720, align 8
  br label %a.wr.done1692

a.wr.done1692:                                    ; preds = %a.wr.err.oob1691, %a.wr.err.null1690, %a.wr.ok1689
  %a.wr.tag1721 = phi i64 [ 1, %a.wr.ok1689 ], [ 0, %a.wr.err.null1690 ], [ 0, %a.wr.err.oob1691 ]
  %a.wr.pay1722 = phi ptr [ null, %a.wr.ok1689 ], [ %err.alloc1702, %a.wr.err.null1690 ], [ %err.alloc1712, %a.wr.err.oob1691 ]
  %arena.cur1723 = call ptr @dva_arena_current()
  %a.wr.succ1724 = call ptr @dva_arena_alloc(ptr %arena.cur1723, i64 16)
  %tag.gep1725 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1724, i32 0, i32 0
  %pay.gep1726 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1724, i32 0, i32 1
  store i64 %a.wr.tag1721, ptr %tag.gep1725, align 8
  store ptr %a.wr.pay1722, ptr %pay.gep1726, align 8
  %tag.gep1727 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1724, i32 0, i32 0
  %tag.id1728 = load i64, ptr %tag.gep1727, align 8
  %tag.eq.one1729 = icmp eq i64 %tag.id1728, 1
  %tag.eq.two1730 = icmp eq i64 %tag.id1728, 2
  %is.pos1731 = or i1 %tag.eq.one1729, %tag.eq.two1730
  %pay.gep1732 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ1724, i32 0, i32 1
  %payload.ptr1733 = load ptr, ptr %pay.gep1732, align 8
  br i1 %is.pos1731, label %choice.then1734, label %choice.else1735

choice.then1734:                                  ; preds = %a.wr.done1692
  br label %choice.exit1736

choice.else1735:                                  ; preds = %a.wr.done1692
  store ptr %payload.ptr1733, ptr %var._1737, align 8
  store ptr %payload.ptr1733, ptr %var._1738, align 8
  store ptr %payload.ptr1733, ptr %var._1739, align 8
  %err.code.gep1740 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1733, i32 0, i32 0
  %err.code1741 = load i64, ptr %err.code.gep1740, align 8
  %err.msg.gep1742 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1733, i32 0, i32 1
  %err.msg.struct1743 = load ptr, ptr %err.msg.gep1742, align 8
  %err.file.gep1744 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1733, i32 0, i32 2
  %err.file.struct1745 = load ptr, ptr %err.file.gep1744, align 8
  %err.line.gep1746 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1733, i32 0, i32 3
  %err.line1747 = load i64, ptr %err.line.gep1746, align 8
  %err.col.gep1748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr1733, i32 0, i32 4
  %err.col1749 = load i64, ptr %err.col.gep1748, align 8
  %err.msg.len1750 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1743, i32 0, i32 0
  %err.msg.len1751 = load i64, ptr %err.msg.len1750, align 8
  %err.msg.len1752 = and i64 %err.msg.len1751, 281474976710655
  %str.tag1753 = lshr i64 %err.msg.len1751, 48
  %str.immortal1754 = icmp eq i64 %str.tag1753, 0
  br i1 %str.immortal1754, label %str_ok1756, label %str_gen_check1755

choice.exit1736:                                  ; preds = %err.abort1783, %choice.then1734
  %var.load1784 = load ptr, ptr %var.graph, align 8
  %fld.gep1785 = getelementptr inbounds { ptr, ptr }, ptr %var.load1784, i32 0, i32 0
  %fld.load1786 = load ptr, ptr %fld.gep1785, align 8
  %var.load1787 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1788 = icmp ne ptr %fld.load1786, null
  br i1 %a.rd.nonnull1788, label %a.rd.check1789, label %a.rd.err.null1791

str_gen_check1755:                                ; preds = %choice.else1735
  %arena.cur1758 = call ptr @dva_arena_current()
  %tag.valid1759 = call i1 @dva_arena_validate_tag(ptr %arena.cur1758, i64 %str.tag1753)
  br i1 %tag.valid1759, label %str_ok1756, label %str_stale1757

str_ok1756:                                       ; preds = %str_stale1757, %str_gen_check1755, %choice.else1735
  %err.msg.len321760 = trunc i64 %err.msg.len1752 to i32
  %err.msg.data1761 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1743, i32 0, i32 1
  %err.msg.data1762 = load ptr, ptr %err.msg.data1761, align 8
  %err.file.len1763 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1745, i32 0, i32 0
  %err.file.len1764 = load i64, ptr %err.file.len1763, align 8
  %err.file.len1765 = and i64 %err.file.len1764, 281474976710655
  %str.tag1766 = lshr i64 %err.file.len1764, 48
  %str.immortal1767 = icmp eq i64 %str.tag1766, 0
  br i1 %str.immortal1767, label %str_ok1769, label %str_gen_check1768

str_stale1757:                                    ; preds = %str_gen_check1755
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1756

str_gen_check1768:                                ; preds = %str_ok1756
  %arena.cur1771 = call ptr @dva_arena_current()
  %tag.valid1772 = call i1 @dva_arena_validate_tag(ptr %arena.cur1771, i64 %str.tag1766)
  br i1 %tag.valid1772, label %str_ok1769, label %str_stale1770

str_ok1769:                                       ; preds = %str_stale1770, %str_gen_check1768, %str_ok1756
  %err.file.len321773 = trunc i64 %err.file.len1765 to i32
  %err.file.data1774 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1745, i32 0, i32 1
  %err.file.data1775 = load ptr, ptr %err.file.data1774, align 8
  %err.thread.rec1776 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1777 = icmp ne ptr %err.thread.rec1776, null
  br i1 %err.is.thread1777, label %err.thread1778, label %err.normal1779

str_stale1770:                                    ; preds = %str_gen_check1768
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1769

err.thread1778:                                   ; preds = %str_ok1769
  %err.haserr.gep1780 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1776, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1780, align 8
  %err.err.gep1781 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1776, i32 0, i32 7
  store ptr %payload.ptr1733, ptr %err.err.gep1781, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1779:                                   ; preds = %str_ok1769
  %err.panic.printf1782 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1741, i32 %err.msg.len321760, ptr %err.msg.data1762, i32 %err.file.len321773, ptr %err.file.data1775, i64 %err.line1747, i64 %err.col1749)
  call void @exit(i32 1)
  unreachable

err.abort1783:                                    ; No predecessors!
  br label %choice.exit1736

a.rd.check1789:                                   ; preds = %choice.exit1736
  %a.rd.len1794 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1786, i32 0, i32 0
  %a.rd.len1795 = load i64, ptr %a.rd.len1794, align 8
  %a.rd.ge01796 = icmp sge i64 %var.load1787, 0
  %a.rd.lt1797 = icmp slt i64 %var.load1787, %a.rd.len1795
  %a.rd.bounds1798 = and i1 %a.rd.ge01796, %a.rd.lt1797
  br i1 %a.rd.bounds1798, label %a.rd.ok1790, label %a.rd.err.oob1792

a.rd.ok1790:                                      ; preds = %a.rd.check1789
  %a.rd.data1799 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1786, i32 0, i32 1
  %a.rd.data1800 = load ptr, ptr %a.rd.data1799, align 8
  %a.rd.elem.gep1801 = getelementptr i64, ptr %a.rd.data1800, i64 %var.load1787
  %a.rd.elem1802 = load i64, ptr %a.rd.elem.gep1801, align 8
  br label %a.rd.done1793

a.rd.err.null1791:                                ; preds = %choice.exit1736
  %arena.cur1803 = call ptr @dva_arena_current()
  %err.alloc1804 = call ptr @dva_arena_alloc(ptr %arena.cur1803, i64 56)
  %err.code.gep1805 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1805, align 8
  %err.msg.gep1806 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1806, align 8
  %err.file.gep1807 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1807, align 8
  %err.line.gep1808 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 3
  store i64 0, ptr %err.line.gep1808, align 8
  %err.col.gep1809 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 4
  store i64 0, ptr %err.col.gep1809, align 8
  %err.ctx.gep1810 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1804, i32 0, i32 5
  %err.ctx0.gep1811 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1810, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1811, align 8
  %err.ctx1.gep1812 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1810, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1812, align 8
  %err.p2i1813 = ptrtoint ptr %err.alloc1804 to i64
  br label %a.rd.done1793

a.rd.err.oob1792:                                 ; preds = %a.rd.check1789
  %arena.cur1814 = call ptr @dva_arena_current()
  %err.alloc1815 = call ptr @dva_arena_alloc(ptr %arena.cur1814, i64 56)
  %err.code.gep1816 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1816, align 8
  %err.msg.gep1817 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1817, align 8
  %err.file.gep1818 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1818, align 8
  %err.line.gep1819 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 3
  store i64 0, ptr %err.line.gep1819, align 8
  %err.col.gep1820 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 4
  store i64 0, ptr %err.col.gep1820, align 8
  %err.ctx.gep1821 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1815, i32 0, i32 5
  %err.ctx0.gep1822 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1821, i32 0, i32 0
  store i64 %var.load1787, ptr %err.ctx0.gep1822, align 8
  %err.ctx1.gep1823 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1821, i32 0, i32 1
  store i64 %a.rd.len1795, ptr %err.ctx1.gep1823, align 8
  %err.p2i1824 = ptrtoint ptr %err.alloc1815 to i64
  br label %a.rd.done1793

a.rd.done1793:                                    ; preds = %a.rd.err.oob1792, %a.rd.err.null1791, %a.rd.ok1790
  %a.rd.tag1825 = phi i1 [ true, %a.rd.ok1790 ], [ false, %a.rd.err.null1791 ], [ false, %a.rd.err.oob1792 ]
  %a.rd.pay1826 = phi i64 [ %a.rd.elem1802, %a.rd.ok1790 ], [ %err.p2i1813, %a.rd.err.null1791 ], [ %err.p2i1824, %a.rd.err.oob1792 ]
  %ram.tag1827 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1825, 0
  %ram.pay1828 = insertvalue { i1, i64 } %ram.tag1827, i64 %a.rd.pay1826, 1
  %unwrap.is_pos1829 = extractvalue { i1, i64 } %ram.pay1828, 0
  br i1 %unwrap.is_pos1829, label %unwrap.pos.48, label %unwrap.abort.48

unwrap.pos.48:                                    ; preds = %a.rd.done1793
  %unwrap.pay.pos1875 = extractvalue { i1, i64 } %ram.pay1828, 1
  %pay.ptr1876 = inttoptr i64 %unwrap.pay.pos1875 to ptr
  store ptr %pay.ptr1876, ptr %var.w_node, align 8
  %var.load1877 = load ptr, ptr %var.w_node, align 8
  %fld.gep1878 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1877, i32 0, i32 0
  %fld.load1879 = load ptr, ptr %fld.gep1878, align 8
  %a.load1880 = load ptr, ptr %var.scc_names, align 8
  %a.null1881 = icmp eq ptr %a.load1880, null
  br i1 %a.null1881, label %a.create1882, label %a.after1883

unwrap.abort.48:                                  ; preds = %a.rd.done1793
  %unwrap.pay.abort1830 = extractvalue { i1, i64 } %ram.pay1828, 1
  %err.ptr1831 = inttoptr i64 %unwrap.pay.abort1830 to ptr
  %err.code.gep1832 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1831, i32 0, i32 0
  %err.code1833 = load i64, ptr %err.code.gep1832, align 8
  %err.msg.gep1834 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1831, i32 0, i32 1
  %err.msg.struct1835 = load ptr, ptr %err.msg.gep1834, align 8
  %err.file.gep1836 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1831, i32 0, i32 2
  %err.file.struct1837 = load ptr, ptr %err.file.gep1836, align 8
  %err.line.gep1838 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1831, i32 0, i32 3
  %err.line1839 = load i64, ptr %err.line.gep1838, align 8
  %err.col.gep1840 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1831, i32 0, i32 4
  %err.col1841 = load i64, ptr %err.col.gep1840, align 8
  %err.msg.len1842 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1835, i32 0, i32 0
  %err.msg.len1843 = load i64, ptr %err.msg.len1842, align 8
  %err.msg.len1844 = and i64 %err.msg.len1843, 281474976710655
  %str.tag1845 = lshr i64 %err.msg.len1843, 48
  %str.immortal1846 = icmp eq i64 %str.tag1845, 0
  br i1 %str.immortal1846, label %str_ok1848, label %str_gen_check1847

str_gen_check1847:                                ; preds = %unwrap.abort.48
  %arena.cur1850 = call ptr @dva_arena_current()
  %tag.valid1851 = call i1 @dva_arena_validate_tag(ptr %arena.cur1850, i64 %str.tag1845)
  br i1 %tag.valid1851, label %str_ok1848, label %str_stale1849

str_ok1848:                                       ; preds = %str_stale1849, %str_gen_check1847, %unwrap.abort.48
  %err.msg.len321852 = trunc i64 %err.msg.len1844 to i32
  %err.msg.data1853 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1835, i32 0, i32 1
  %err.msg.data1854 = load ptr, ptr %err.msg.data1853, align 8
  %err.file.len1855 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1837, i32 0, i32 0
  %err.file.len1856 = load i64, ptr %err.file.len1855, align 8
  %err.file.len1857 = and i64 %err.file.len1856, 281474976710655
  %str.tag1858 = lshr i64 %err.file.len1856, 48
  %str.immortal1859 = icmp eq i64 %str.tag1858, 0
  br i1 %str.immortal1859, label %str_ok1861, label %str_gen_check1860

str_stale1849:                                    ; preds = %str_gen_check1847
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1848

str_gen_check1860:                                ; preds = %str_ok1848
  %arena.cur1863 = call ptr @dva_arena_current()
  %tag.valid1864 = call i1 @dva_arena_validate_tag(ptr %arena.cur1863, i64 %str.tag1858)
  br i1 %tag.valid1864, label %str_ok1861, label %str_stale1862

str_ok1861:                                       ; preds = %str_stale1862, %str_gen_check1860, %str_ok1848
  %err.file.len321865 = trunc i64 %err.file.len1857 to i32
  %err.file.data1866 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1837, i32 0, i32 1
  %err.file.data1867 = load ptr, ptr %err.file.data1866, align 8
  %err.thread.rec1868 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1869 = icmp ne ptr %err.thread.rec1868, null
  br i1 %err.is.thread1869, label %err.thread1870, label %err.normal1871

str_stale1862:                                    ; preds = %str_gen_check1860
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1861

err.thread1870:                                   ; preds = %str_ok1861
  %err.haserr.gep1872 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1868, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1872, align 8
  %err.err.gep1873 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1868, i32 0, i32 7
  store ptr %err.ptr1831, ptr %err.err.gep1873, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1871:                                   ; preds = %str_ok1861
  %err.panic.printf1874 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1833, i32 %err.msg.len321852, ptr %err.msg.data1854, i32 %err.file.len321865, ptr %err.file.data1867, i64 %err.line1839, i64 %err.col1841)
  call void @exit(i32 1)
  unreachable

a.create1882:                                     ; preds = %unwrap.pos.48
  %arena.cur1884 = call ptr @dva_arena_current()
  %a.create1885 = call ptr @dva_arena_alloc(ptr %arena.cur1884, i64 24)
  %arena.cur1886 = call ptr @dva_arena_current()
  %a.buf1887 = call ptr @dva_arena_alloc(ptr %arena.cur1886, i64 128)
  %a.len.gep1888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 0
  store i64 0, ptr %a.len.gep1888, align 8
  %a.data.gep1889 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 1
  store ptr %a.buf1887, ptr %a.data.gep1889, align 8
  %a.cap.gep1890 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1885, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1890, align 8
  store ptr %a.create1885, ptr %var.scc_names, align 8
  br label %a.after1883

a.after1883:                                      ; preds = %a.create1882, %unwrap.pos.48
  %a.load21891 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1883
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21891, i32 0, i32 0
  %a.len1892 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21891, i32 0, i32 2
  %a.cap1893 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1892, %a.cap1893
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21891)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21891, i32 0, i32 1
  %a.cur.data1894 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21891, i32 0, i32 0
  %a.cur.len1895 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1896 = getelementptr i64, ptr %a.cur.data1894, i64 %a.cur.len1895
  %slot.p2i = ptrtoint ptr %fld.load1879 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1896, align 8
  %a.next.len = add i64 %a.cur.len1895, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21891, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1897 = load i64, ptr %var.w, align 8
  %var.load1898 = load i64, ptr %var.u, align 8
  %cmptmp1899 = icmp eq i64 %var.load1897, %var.load1898
  br i1 %cmptmp1899, label %choice.then1900, label %choice.exit1901

choice.then1900:                                  ; preds = %a.store
  br label %loop.exit.46

choice.exit1901:                                  ; preds = %a.store
  br label %loop.latch.46

a.create1907:                                     ; preds = %loop.exit.46
  %arena.cur1909 = call ptr @dva_arena_current()
  %a.create1910 = call ptr @dva_arena_alloc(ptr %arena.cur1909, i64 24)
  %arena.cur1911 = call ptr @dva_arena_current()
  %a.buf1912 = call ptr @dva_arena_alloc(ptr %arena.cur1911, i64 128)
  %a.len.gep1913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1910, i32 0, i32 0
  store i64 0, ptr %a.len.gep1913, align 8
  %a.data.gep1914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1910, i32 0, i32 1
  store ptr %a.buf1912, ptr %a.data.gep1914, align 8
  %a.cap.gep1915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1910, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1915, align 8
  store ptr %a.create1910, ptr %var.scc_names, align 8
  br label %a.after1908

a.after1908:                                      ; preds = %a.create1907, %loop.exit.46
  %a.load21916 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21916, i32 0, i32 0
  %a.len.query1917 = load i64, ptr %a.len.query, align 8
  %cmptmp1918 = icmp sgt i64 %a.len.query1917, 1
  br i1 %cmptmp1918, label %or.49.then, label %or.49.else

or.49.then:                                       ; preds = %a.after1908
  br label %or.49.exit

or.49.else:                                       ; preds = %a.after1908
  %var.load1919 = load i1, ptr %var.is_self_rec, align 1
  br label %or.49.exit

or.49.exit:                                       ; preds = %or.49.else, %or.49.then
  %or.49.phi = phi i1 [ %cmptmp1918, %or.49.then ], [ %var.load1919, %or.49.else ]
  store i1 %or.49.phi, ptr %var.is_rec, align 1
  %var.load1920 = load ptr, ptr %var.state, align 8
  %var.load1921 = load ptr, ptr %var.scc_names, align 8
  %a.load1922 = load ptr, ptr %var.scc_names, align 8
  %a.null1923 = icmp eq ptr %a.load1922, null
  br i1 %a.null1923, label %a.create1924, label %a.after1925

a.create1924:                                     ; preds = %or.49.exit
  %arena.cur1926 = call ptr @dva_arena_current()
  %a.create1927 = call ptr @dva_arena_alloc(ptr %arena.cur1926, i64 24)
  %arena.cur1928 = call ptr @dva_arena_current()
  %a.buf1929 = call ptr @dva_arena_alloc(ptr %arena.cur1928, i64 128)
  %a.len.gep1930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1927, i32 0, i32 0
  store i64 0, ptr %a.len.gep1930, align 8
  %a.data.gep1931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1927, i32 0, i32 1
  store ptr %a.buf1929, ptr %a.data.gep1931, align 8
  %a.cap.gep1932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1927, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1932, align 8
  store ptr %a.create1927, ptr %var.scc_names, align 8
  br label %a.after1925

a.after1925:                                      ; preds = %a.create1924, %or.49.exit
  %a.load21933 = load ptr, ptr %var.scc_names, align 8
  %var.load1934 = load i1, ptr %var.is_rec, align 1
  %arena.cur1935 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1935, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21933, ptr %rec.fld, align 8
  %rec.fld1936 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1934, ptr %rec.fld1936, align 1
  %fld.gep1937 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1920, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1937, align 8
  br label %a.check1938

a.check1938:                                      ; preds = %a.after1925
  %a.len1941 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1942 = load i64, ptr %a.len1941, align 8
  %a.cap1943 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1944 = load i64, ptr %a.cap1943, align 8
  %a.needs.grow1945 = icmp eq i64 %a.len1942, %a.cap1944
  br i1 %a.needs.grow1945, label %a.grow1939, label %a.store1940

a.grow1939:                                       ; preds = %a.check1938
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1940

a.store1940:                                      ; preds = %a.grow1939, %a.check1938
  %a.cur.data1946 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1947 = load ptr, ptr %a.cur.data1946, align 8
  %a.cur.len1948 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1949 = load i64, ptr %a.cur.len1948, align 8
  %a.elem.gep1950 = getelementptr i64, ptr %a.cur.data1947, i64 %a.cur.len1949
  %slot.p2i1951 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1951, ptr %a.elem.gep1950, align 8
  %a.next.len1952 = add i64 %a.cur.len1949, 1
  %b.len.gep1953 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1952, ptr %b.len.gep1953, align 8
  br label %choice.exit1548
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

define ptr @"dep_graph::tarjan_scc"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._29 = alloca ptr, align 8
  %var._27 = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.header.50:                                   ; preds = %loop.latch.50, %entry
  %counter.load = load i64, ptr %loop.idx.50, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.50, label %loop.exit.nat.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.50, align 8
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

loop.exit.nat.50:                                 ; preds = %loop.header.50
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.50, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %loop.exit.nat.50
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  ret ptr %fld.load38

a.create:                                         ; preds = %loop.body.50
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

a.after:                                          ; preds = %a.create, %loop.body.50
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
  store i64 329, ptr %err.line.gep, align 8
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
  store i64 329, ptr %err.line.gep19, align 8
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
  br label %loop.latch.50
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
