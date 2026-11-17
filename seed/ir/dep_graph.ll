; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
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

declare ptr @dva_arena_current() #0

declare ptr @dva_arena_set_current(ptr) #0

declare noalias ptr @malloc(i64) #0

declare void @free(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

declare void @dva_arena_init(ptr, i64) #0

declare noalias ptr @dva_arena_alloc(ptr, i64) #0

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

declare void @dva_arena_adopt(ptr, ptr) #0

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_dep_graph() #0 {
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

define i1 @"dep_graph::is_fwd_assign"(ptr %0) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.case
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %choice.exit
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

declare i32 @memcmp(ptr, ptr, i64) #0

define ptr @"dep_graph::copy_names"(ptr %0) #0 {
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define i1 @"dep_graph::has_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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

choice.exit:                                      ; preds = %choice.exit49, %choice.then
  %choice.res67 = phi i1 [ false, %choice.then ], [ %choice.res66, %choice.exit49 ]
  ret i1 %choice.res67

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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len32 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %str.tag34 = lshr i64 %eq.rhs.len32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  br i1 %tag.immortal36, label %str_ok35, label %tag.gen_check37

tag.gen_check:                                    ; preds = %choice.exit23
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok35:                                         ; preds = %abort.dead44, %tag.slow_check38, %tag.gen_check37, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check37:                                  ; preds = %str_ok
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok41 = icmp eq i64 %str.tag34, %active.gen40
  br i1 %tag.fast.ok41, label %str_ok35, label %tag.slow_check38

tag.slow_check38:                                 ; preds = %tag.gen_check37
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag34)
  br i1 %tag.valid43, label %str_ok35, label %tag.stale39

tag.stale39:                                      ; preds = %tag.slow_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data45 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data46 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data45, ptr %eq.rhs.data46, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then47, label %choice.else48

choice.then47:                                    ; preds = %str.eq.merge
  br label %choice.exit49

choice.else48:                                    ; preds = %str.eq.merge
  %var.load50 = load ptr, ptr %var.names, align 8
  %a.load51 = load ptr, ptr %var.names, align 8
  %a.null52 = icmp eq ptr %a.load51, null
  br i1 %a.null52, label %a.create53, label %a.after54

choice.exit49:                                    ; preds = %a.after54, %choice.then47
  %choice.res66 = phi i1 [ true, %choice.then47 ], [ %call.res, %a.after54 ]
  br label %choice.exit

a.create53:                                       ; preds = %choice.else48
  %arena.cur55 = call ptr @dva_arena_current()
  %a.create56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %arena.cur57 = call ptr @dva_arena_current()
  %a.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 128)
  %a.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 0
  store i64 0, ptr %a.len.gep59, align 8
  %a.data.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 1
  store ptr %a.buf58, ptr %a.data.gep60, align 8
  %a.cap.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 2
  store i64 16, ptr %a.cap.gep61, align 8
  store ptr %a.create56, ptr %var.names, align 8
  br label %a.after54

a.after54:                                        ; preds = %a.create53, %choice.else48
  %a.load262 = load ptr, ptr %var.names, align 8
  %var.load63 = load ptr, ptr %var.s, align 8
  %var.load64 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load64, 1
  %var.load65 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load262, ptr %var.load63, i64 %addtmp, i64 %var.load65)
  br label %choice.exit49
}

define i1 @"dep_graph::has_name"(ptr %0, ptr %1) #0 {
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

define i1 @"dep_graph::name_is_qualified"(ptr %0, i64 %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.27.then, label %and.27.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.27.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.27.else:                                      ; preds = %str_ok
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %idx_ok
  %and.27.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.27.else ]
  br i1 %and.27.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.27.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.27.exit

idx_oob:                                          ; preds = %idx_big_check, %and.27.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.27.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.27.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit48
  %choice.res52 = phi i1 [ %choice.res, %choice.exit48 ], [ false, %choice.else ]
  ret i1 %choice.res52

idx_big_check19:                                  ; preds = %choice.then
  %idx.big22 = icmp sge i64 %var.load17, %s.read.len14
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 58
  br i1 %cmptmp27, label %and.28.then, label %and.28.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.28.then:                                      ; preds = %idx_ok20
  %var.load28 = load ptr, ptr %var.name, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %var.load34 = load i64, ptr %var.i, align 8
  %addtmp35 = add i64 %var.load34, 1
  %idx.neg36 = icmp slt i64 %addtmp35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

and.28.else:                                      ; preds = %idx_ok20
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %idx_ok38
  %and.28.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.28.else ]
  br i1 %and.28.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.28.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.28.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.28.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.28.exit
  br label %choice.exit48

choice.else47:                                    ; preds = %and.28.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load49, i64 %addtmp51)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i1 [ true, %choice.then46 ], [ %call.res, %choice.else47 ]
  br label %choice.exit
}

define i64 @"dep_graph::decl_module_find"(ptr %0, i64 %1, i64 %2) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.29.then, label %and.29.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.29.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.29.else:                                      ; preds = %str_ok
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %idx_ok
  %and.29.phi = phi i1 [ %cmptmp10, %idx_ok ], [ %cmptmp, %and.29.else ]
  br i1 %and.29.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.29.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp10 = icmp ne i64 %s.byte.val, 36
  br label %and.29.exit

idx_oob:                                          ; preds = %idx_big_check, %and.29.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.29.exit
  %var.load11 = load ptr, ptr %var.name, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %idx.neg18 = icmp slt i64 %var.load17, 0
  br i1 %idx.neg18, label %idx_oob21, label %idx_big_check19

choice.else:                                      ; preds = %and.29.exit
  %var.load58 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit48
  %choice.res59 = phi i64 [ %choice.res, %choice.exit48 ], [ %var.load58, %choice.else ]
  ret i64 %choice.res59

idx_big_check19:                                  ; preds = %choice.then
  %idx.big22 = icmp sge i64 %var.load17, %s.read.len14
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 58
  br i1 %cmptmp27, label %and.30.then, label %and.30.else

idx_oob21:                                        ; preds = %idx_big_check19, %choice.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

and.30.then:                                      ; preds = %idx_ok20
  %var.load28 = load ptr, ptr %var.name, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %var.load34 = load i64, ptr %var.i, align 8
  %addtmp35 = add i64 %var.load34, 1
  %idx.neg36 = icmp slt i64 %addtmp35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

and.30.else:                                      ; preds = %idx_ok20
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %idx_ok38
  %and.30.phi = phi i1 [ %cmptmp45, %idx_ok38 ], [ %cmptmp27, %and.30.else ]
  br i1 %and.30.phi, label %choice.then46, label %choice.else47

idx_big_check37:                                  ; preds = %and.30.then
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 58
  br label %and.30.exit

idx_oob39:                                        ; preds = %idx_big_check37, %and.30.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then46:                                    ; preds = %and.30.exit
  %var.load49 = load ptr, ptr %var.name, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %addtmp51 = add i64 %var.load50, 2
  %var.load52 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load49, i64 %addtmp51, i64 %var.load52)
  br label %choice.exit48

choice.else47:                                    ; preds = %and.30.exit
  %var.load53 = load ptr, ptr %var.name, align 8
  %var.load54 = load i64, ptr %var.i, align 8
  %addtmp55 = add i64 %var.load54, 1
  %var.load56 = load i64, ptr %var.last, align 8
  %call.res57 = call i64 @"dep_graph::decl_module_find"(ptr %var.load53, i64 %addtmp55, i64 %var.load56)
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res = phi i64 [ %call.res, %choice.then46 ], [ %call.res57, %choice.else47 ]
  br label %choice.exit
}

define { i64, ptr } @"dep_graph::decl_module"(ptr %0, i64 %1) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %str.view, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"dep_graph::resolve_dep_ref"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.ref = alloca ptr, align 8
  %var.mod = alloca ptr, align 8
  %var.defs = alloca ptr, align 8
  store ptr %0, ptr %var.defs, align 8
  store ptr %1, ptr %var.mod, align 8
  store ptr %2, ptr %var.ref, align 8
  %var.load = load ptr, ptr %var.mod, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.31.then, label %and.31.else

and.31.then:                                      ; preds = %str.eq.merge
  %var.load5 = load ptr, ptr %var.ref, align 8
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load5, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.31.exit

and.31.else:                                      ; preds = %str.eq.merge
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %and.31.then
  %and.31.phi = phi i1 [ %nottmp, %and.31.then ], [ %str.neq, %and.31.else ]
  br i1 %and.31.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.31.exit
  %var.load6 = load ptr, ptr %var.defs, align 8
  %var.load7 = load ptr, ptr %var.mod, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  br i1 %tag.immortal12, label %str_ok11, label %tag.gen_check13

choice.exit:                                      ; preds = %ret.dead390, %and.31.exit
  %var.load391 = load ptr, ptr %var.defs, align 8
  %var.load392 = load ptr, ptr %var.ref, align 8
  %m.cap393 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load391, i32 0, i32 1
  %m.cap394 = load i64, ptr %m.cap393, align 8
  %m.keys395 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load391, i32 0, i32 2
  %m.keys396 = load ptr, ptr %m.keys395, align 8
  %m.states397 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load391, i32 0, i32 4
  %m.states398 = load ptr, ptr %m.states397, align 8
  %mk.data399 = getelementptr inbounds { i64, ptr }, ptr %var.load392, i32 0, i32 1
  %mk.data400 = load ptr, ptr %mk.data399, align 8
  %mk.len401 = getelementptr inbounds { i64, ptr }, ptr %var.load392, i32 0, i32 0
  %mk.len402 = load i64, ptr %mk.len401, align 8
  %mk.len403 = and i64 %mk.len402, 281474976710655
  %str.tag404 = lshr i64 %mk.len402, 48
  %tag.immortal406 = icmp eq i64 %str.tag404, 0
  br i1 %tag.immortal406, label %str_ok405, label %tag.gen_check407

str_ok11:                                         ; preds = %abort.dead20, %tag.slow_check14, %tag.gen_check13, %choice.then
  %cat.seg21 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %cat.seg22 = load ptr, ptr %cat.seg21, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load23 = load ptr, ptr %var.ref, align 8
  %cat.seg24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %cat.seg25 = load i64, ptr %cat.seg24, align 8
  %cat.seg26 = and i64 %cat.seg25, 281474976710655
  %str.tag27 = lshr i64 %cat.seg25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  br i1 %tag.immortal29, label %str_ok28, label %tag.gen_check30

tag.gen_check13:                                  ; preds = %choice.then
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok17 = icmp eq i64 %str.tag10, %active.gen16
  br i1 %tag.fast.ok17, label %str_ok11, label %tag.slow_check14

tag.slow_check14:                                 ; preds = %tag.gen_check13
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag10)
  br i1 %tag.valid19, label %str_ok11, label %tag.stale15

tag.stale15:                                      ; preds = %tag.slow_check14
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %str_ok11

str_ok28:                                         ; preds = %abort.dead37, %tag.slow_check31, %tag.gen_check30, %str_ok11
  %cat.seg38 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %cat.seg39 = load ptr, ptr %cat.seg38, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg9, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len40

tag.gen_check30:                                  ; preds = %str_ok11
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok34 = icmp eq i64 %str.tag27, %active.gen33
  br i1 %tag.fast.ok34, label %str_ok28, label %tag.slow_check31

tag.slow_check31:                                 ; preds = %tag.gen_check30
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag27)
  br i1 %tag.valid36, label %str_ok28, label %tag.stale32

tag.stale32:                                      ; preds = %tag.slow_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %str_ok28

cat.sum.len40:                                    ; preds = %abort.dead41, %str_ok28
  %cat.sum.len42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg26)
  %sum43 = extractvalue { i64, i1 } %cat.sum.len42, 0
  %ovf44 = extractvalue { i64, i1 } %cat.sum.len42, 1
  br i1 %ovf44, label %str_overflow_abort46, label %cat.sum.len45

str_overflow_abort:                               ; preds = %str_ok28
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %cat.sum.len40

cat.sum.len45:                                    ; preds = %abort.dead47, %cat.sum.len40
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum43, i64 1)
  %sum48 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf49 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf49, label %str_overflow_abort51, label %concat.tot.len50

str_overflow_abort46:                             ; preds = %cat.sum.len40
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %cat.sum.len45

concat.tot.len50:                                 ; preds = %abort.dead52, %cat.sum.len45
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum48)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg22, i64 %cat.seg9, i1 false)
  %cat.off = add i64 0, %cat.seg9
  %cat.dst54 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst54, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off55 = add i64 %cat.off, 2
  %cat.dst56 = getelementptr i8, ptr %concat.buf, i64 %cat.off55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst56, ptr align 1 %cat.seg39, i64 %cat.seg26, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum43
  store i8 0, ptr %concat.nul, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum43, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %m.cap58 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %m.keys59 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load6, i32 0, i32 4
  %m.states60 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.data61 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.len62 = load i64, ptr %mk.len, align 8
  %mk.len63 = and i64 %mk.len62, 281474976710655
  %str.tag64 = lshr i64 %mk.len62, 48
  %tag.immortal66 = icmp eq i64 %str.tag64, 0
  br i1 %tag.immortal66, label %str_ok65, label %tag.gen_check67

str_overflow_abort51:                             ; preds = %cat.sum.len45
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %concat.tot.len50

str_ok65:                                         ; preds = %abort.dead74, %tag.slow_check68, %tag.gen_check67, %concat.tot.len50
  %hash.str = call i64 @dva_hash_string(ptr %mk.data61, i64 %mk.len63)
  %m.capm1 = sub i64 %m.cap58, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

tag.gen_check67:                                  ; preds = %concat.tot.len50
  %active.gen70 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok71 = icmp eq i64 %str.tag64, %active.gen70
  br i1 %tag.fast.ok71, label %str_ok65, label %tag.slow_check68

tag.slow_check68:                                 ; preds = %tag.gen_check67
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag64)
  br i1 %tag.valid73, label %str_ok65, label %tag.stale69

tag.stale69:                                      ; preds = %tag.slow_check68
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %str_ok65

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok65
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok65 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe75 = phi i64 [ 0, %str_ok65 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe75, %m.cap58
  %m.mem.state.gep = getelementptr i8, ptr %m.states60, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr i64, ptr %m.keys59, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen76 = load i64, ptr %mk.slen, align 8
  %mk.slen77 = and i64 %mk.slen76, 281474976710655
  %str.tag78 = lshr i64 %mk.slen76, 48
  %tag.immortal80 = icmp eq i64 %str.tag78, 0
  br i1 %tag.immortal80, label %str_ok79, label %tag.gen_check81

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe75, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then104, label %choice.exit105

str_ok79:                                         ; preds = %abort.dead88, %tag.slow_check82, %tag.gen_check81, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %mk.nlen89 = load i64, ptr %mk.nlen, align 8
  %mk.nlen90 = and i64 %mk.nlen89, 281474976710655
  %str.tag91 = lshr i64 %mk.nlen89, 48
  %tag.immortal93 = icmp eq i64 %str.tag91, 0
  br i1 %tag.immortal93, label %str_ok92, label %tag.gen_check94

tag.gen_check81:                                  ; preds = %m.mem.found
  %active.gen84 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok85 = icmp eq i64 %str.tag78, %active.gen84
  br i1 %tag.fast.ok85, label %str_ok79, label %tag.slow_check82

tag.slow_check82:                                 ; preds = %tag.gen_check81
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag78)
  br i1 %tag.valid87, label %str_ok79, label %tag.stale83

tag.stale83:                                      ; preds = %tag.slow_check82
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %str_ok79

str_ok92:                                         ; preds = %abort.dead101, %tag.slow_check95, %tag.gen_check94, %str_ok79
  %mk.lenseq = icmp eq i64 %mk.slen77, %mk.nlen90
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.gen_check94:                                  ; preds = %str_ok79
  %active.gen97 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok98 = icmp eq i64 %str.tag91, %active.gen97
  br i1 %tag.fast.ok98, label %str_ok92, label %tag.slow_check95

tag.slow_check95:                                 ; preds = %tag.gen_check94
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag91)
  br i1 %tag.valid100, label %str_ok92, label %tag.stale96

tag.stale96:                                      ; preds = %tag.slow_check95
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %str_ok92

mk.eq.then:                                       ; preds = %str_ok92
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata102 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %mk.ndata103 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata102, ptr %mk.ndata103, i64 %mk.nlen90)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok92
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then104:                                   ; preds = %m.mem.done
  %var.load106 = load ptr, ptr %var.mod, align 8
  %cat.seg107 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %cat.seg108 = load i64, ptr %cat.seg107, align 8
  %cat.seg109 = and i64 %cat.seg108, 281474976710655
  %str.tag110 = lshr i64 %cat.seg108, 48
  %tag.immortal112 = icmp eq i64 %str.tag110, 0
  br i1 %tag.immortal112, label %str_ok111, label %tag.gen_check113

choice.exit105:                                   ; preds = %ret.dead, %m.mem.done
  %var.load171 = load ptr, ptr %var.defs, align 8
  %var.load172 = load ptr, ptr %var.mod, align 8
  %cat.seg173 = getelementptr inbounds { i64, ptr }, ptr %var.load172, i32 0, i32 0
  %cat.seg174 = load i64, ptr %cat.seg173, align 8
  %cat.seg175 = and i64 %cat.seg174, 281474976710655
  %str.tag176 = lshr i64 %cat.seg174, 48
  %tag.immortal178 = icmp eq i64 %str.tag176, 0
  br i1 %tag.immortal178, label %str_ok177, label %tag.gen_check179

str_ok111:                                        ; preds = %abort.dead120, %tag.slow_check114, %tag.gen_check113, %choice.then104
  %cat.seg121 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %cat.seg122 = load ptr, ptr %cat.seg121, align 8
  %cat.lit.data123 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %var.load124 = load ptr, ptr %var.ref, align 8
  %cat.seg125 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %cat.seg126 = load i64, ptr %cat.seg125, align 8
  %cat.seg127 = and i64 %cat.seg126, 281474976710655
  %str.tag128 = lshr i64 %cat.seg126, 48
  %tag.immortal130 = icmp eq i64 %str.tag128, 0
  br i1 %tag.immortal130, label %str_ok129, label %tag.gen_check131

tag.gen_check113:                                 ; preds = %choice.then104
  %active.gen116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok117 = icmp eq i64 %str.tag110, %active.gen116
  br i1 %tag.fast.ok117, label %str_ok111, label %tag.slow_check114

tag.slow_check114:                                ; preds = %tag.gen_check113
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag110)
  br i1 %tag.valid119, label %str_ok111, label %tag.stale115

tag.stale115:                                     ; preds = %tag.slow_check114
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %str_ok111

str_ok129:                                        ; preds = %abort.dead138, %tag.slow_check132, %tag.gen_check131, %str_ok111
  %cat.seg139 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %cat.seg140 = load ptr, ptr %cat.seg139, align 8
  %cat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg109, i64 2)
  %sum142 = extractvalue { i64, i1 } %cat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %cat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %cat.sum.len144

tag.gen_check131:                                 ; preds = %str_ok111
  %active.gen134 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok135 = icmp eq i64 %str.tag128, %active.gen134
  br i1 %tag.fast.ok135, label %str_ok129, label %tag.slow_check132

tag.slow_check132:                                ; preds = %tag.gen_check131
  %arena.cur136 = call ptr @dva_arena_current()
  %tag.valid137 = call i1 @dva_arena_validate_tag(ptr %arena.cur136, i64 %str.tag128)
  br i1 %tag.valid137, label %str_ok129, label %tag.stale133

tag.stale133:                                     ; preds = %tag.slow_check132
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead138:                                    ; No predecessors!
  br label %str_ok129

cat.sum.len144:                                   ; preds = %abort.dead146, %str_ok129
  %cat.sum.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 %cat.seg127)
  %sum148 = extractvalue { i64, i1 } %cat.sum.len147, 0
  %ovf149 = extractvalue { i64, i1 } %cat.sum.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %cat.sum.len150

str_overflow_abort145:                            ; preds = %str_ok129
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead146:                                    ; No predecessors!
  br label %cat.sum.len144

cat.sum.len150:                                   ; preds = %abort.dead152, %cat.sum.len144
  %concat.tot.len153 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum148, i64 1)
  %sum154 = extractvalue { i64, i1 } %concat.tot.len153, 0
  %ovf155 = extractvalue { i64, i1 } %concat.tot.len153, 1
  br i1 %ovf155, label %str_overflow_abort157, label %concat.tot.len156

str_overflow_abort151:                            ; preds = %cat.sum.len144
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead152:                                    ; No predecessors!
  br label %cat.sum.len150

concat.tot.len156:                                ; preds = %abort.dead158, %cat.sum.len150
  %arena.cur159 = call ptr @dva_arena_current()
  %concat.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum154)
  %cat.dst161 = getelementptr i8, ptr %concat.buf160, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst161, ptr align 1 %cat.seg122, i64 %cat.seg109, i1 false)
  %cat.off162 = add i64 0, %cat.seg109
  %cat.dst163 = getelementptr i8, ptr %concat.buf160, i64 %cat.off162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst163, ptr align 1 %cat.lit.data123, i64 2, i1 false)
  %cat.off164 = add i64 %cat.off162, 2
  %cat.dst165 = getelementptr i8, ptr %concat.buf160, i64 %cat.off164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst165, ptr align 1 %cat.seg140, i64 %cat.seg127, i1 false)
  %concat.nul166 = getelementptr i8, ptr %concat.buf160, i64 %sum148
  store i8 0, ptr %concat.nul166, align 1
  %arena.cur167 = call ptr @dva_arena_current()
  %concat.str168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 16)
  %str.build.len.gep169 = getelementptr inbounds { i64, ptr }, ptr %concat.str168, i32 0, i32 0
  store i64 %sum148, ptr %str.build.len.gep169, align 8
  %str.build.data.gep170 = getelementptr inbounds { i64, ptr }, ptr %concat.str168, i32 0, i32 1
  store ptr %concat.buf160, ptr %str.build.data.gep170, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str168, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort157:                            ; preds = %cat.sum.len150
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead158:                                    ; No predecessors!
  br label %concat.tot.len156

ret.dead:                                         ; No predecessors!
  br label %choice.exit105

str_ok177:                                        ; preds = %abort.dead186, %tag.slow_check180, %tag.gen_check179, %choice.exit105
  %cat.seg187 = getelementptr inbounds { i64, ptr }, ptr %var.load172, i32 0, i32 1
  %cat.seg188 = load ptr, ptr %cat.seg187, align 8
  %cat.lit.data189 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load190 = load ptr, ptr %var.ref, align 8
  %cat.seg191 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 0
  %cat.seg192 = load i64, ptr %cat.seg191, align 8
  %cat.seg193 = and i64 %cat.seg192, 281474976710655
  %str.tag194 = lshr i64 %cat.seg192, 48
  %tag.immortal196 = icmp eq i64 %str.tag194, 0
  br i1 %tag.immortal196, label %str_ok195, label %tag.gen_check197

tag.gen_check179:                                 ; preds = %choice.exit105
  %active.gen182 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok183 = icmp eq i64 %str.tag176, %active.gen182
  br i1 %tag.fast.ok183, label %str_ok177, label %tag.slow_check180

tag.slow_check180:                                ; preds = %tag.gen_check179
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %str.tag176)
  br i1 %tag.valid185, label %str_ok177, label %tag.stale181

tag.stale181:                                     ; preds = %tag.slow_check180
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %str_ok177

str_ok195:                                        ; preds = %abort.dead204, %tag.slow_check198, %tag.gen_check197, %str_ok177
  %cat.seg205 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 1
  %cat.seg206 = load ptr, ptr %cat.seg205, align 8
  %cat.sum.len207 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg175, i64 3)
  %sum208 = extractvalue { i64, i1 } %cat.sum.len207, 0
  %ovf209 = extractvalue { i64, i1 } %cat.sum.len207, 1
  br i1 %ovf209, label %str_overflow_abort211, label %cat.sum.len210

tag.gen_check197:                                 ; preds = %str_ok177
  %active.gen200 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok201 = icmp eq i64 %str.tag194, %active.gen200
  br i1 %tag.fast.ok201, label %str_ok195, label %tag.slow_check198

tag.slow_check198:                                ; preds = %tag.gen_check197
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag194)
  br i1 %tag.valid203, label %str_ok195, label %tag.stale199

tag.stale199:                                     ; preds = %tag.slow_check198
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead204:                                    ; No predecessors!
  br label %str_ok195

cat.sum.len210:                                   ; preds = %abort.dead212, %str_ok195
  %cat.sum.len213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum208, i64 %cat.seg193)
  %sum214 = extractvalue { i64, i1 } %cat.sum.len213, 0
  %ovf215 = extractvalue { i64, i1 } %cat.sum.len213, 1
  br i1 %ovf215, label %str_overflow_abort217, label %cat.sum.len216

str_overflow_abort211:                            ; preds = %str_ok195
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead212:                                    ; No predecessors!
  br label %cat.sum.len210

cat.sum.len216:                                   ; preds = %abort.dead218, %cat.sum.len210
  %concat.tot.len219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum214, i64 1)
  %sum220 = extractvalue { i64, i1 } %concat.tot.len219, 0
  %ovf221 = extractvalue { i64, i1 } %concat.tot.len219, 1
  br i1 %ovf221, label %str_overflow_abort223, label %concat.tot.len222

str_overflow_abort217:                            ; preds = %cat.sum.len210
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead218:                                    ; No predecessors!
  br label %cat.sum.len216

concat.tot.len222:                                ; preds = %abort.dead224, %cat.sum.len216
  %arena.cur225 = call ptr @dva_arena_current()
  %concat.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum220)
  %cat.dst227 = getelementptr i8, ptr %concat.buf226, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst227, ptr align 1 %cat.seg188, i64 %cat.seg175, i1 false)
  %cat.off228 = add i64 0, %cat.seg175
  %cat.dst229 = getelementptr i8, ptr %concat.buf226, i64 %cat.off228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst229, ptr align 1 %cat.lit.data189, i64 3, i1 false)
  %cat.off230 = add i64 %cat.off228, 3
  %cat.dst231 = getelementptr i8, ptr %concat.buf226, i64 %cat.off230
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst231, ptr align 1 %cat.seg206, i64 %cat.seg193, i1 false)
  %concat.nul232 = getelementptr i8, ptr %concat.buf226, i64 %sum214
  store i8 0, ptr %concat.nul232, align 1
  %arena.cur233 = call ptr @dva_arena_current()
  %concat.str234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 16)
  %str.build.len.gep235 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 0
  store i64 %sum214, ptr %str.build.len.gep235, align 8
  %str.build.data.gep236 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 1
  store ptr %concat.buf226, ptr %str.build.data.gep236, align 8
  %m.cap237 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load171, i32 0, i32 1
  %m.cap238 = load i64, ptr %m.cap237, align 8
  %m.keys239 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load171, i32 0, i32 2
  %m.keys240 = load ptr, ptr %m.keys239, align 8
  %m.states241 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load171, i32 0, i32 4
  %m.states242 = load ptr, ptr %m.states241, align 8
  %mk.data243 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 1
  %mk.data244 = load ptr, ptr %mk.data243, align 8
  %mk.len245 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 0
  %mk.len246 = load i64, ptr %mk.len245, align 8
  %mk.len247 = and i64 %mk.len246, 281474976710655
  %str.tag248 = lshr i64 %mk.len246, 48
  %tag.immortal250 = icmp eq i64 %str.tag248, 0
  br i1 %tag.immortal250, label %str_ok249, label %tag.gen_check251

str_overflow_abort223:                            ; preds = %cat.sum.len216
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead224:                                    ; No predecessors!
  br label %concat.tot.len222

str_ok249:                                        ; preds = %abort.dead258, %tag.slow_check252, %tag.gen_check251, %concat.tot.len222
  %hash.str259 = call i64 @dva_hash_string(ptr %mk.data244, i64 %mk.len247)
  %m.capm1260 = sub i64 %m.cap238, 1
  %m.idx0261 = and i64 %hash.str259, %m.capm1260
  br label %m.mem.loop262

tag.gen_check251:                                 ; preds = %concat.tot.len222
  %active.gen254 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok255 = icmp eq i64 %str.tag248, %active.gen254
  br i1 %tag.fast.ok255, label %str_ok249, label %tag.slow_check252

tag.slow_check252:                                ; preds = %tag.gen_check251
  %arena.cur256 = call ptr @dva_arena_current()
  %tag.valid257 = call i1 @dva_arena_validate_tag(ptr %arena.cur256, i64 %str.tag248)
  br i1 %tag.valid257, label %str_ok249, label %tag.stale253

tag.stale253:                                     ; preds = %tag.slow_check252
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead258:                                    ; No predecessors!
  br label %str_ok249

m.mem.loop262:                                    ; preds = %m.mem.next265, %str_ok249
  %m.mem.idx268 = phi i64 [ %m.idx0261, %str_ok249 ], [ %m.mem.idx.next319, %m.mem.next265 ]
  %m.mem.probe269 = phi i64 [ 0, %str_ok249 ], [ %m.mem.probe.next320, %m.mem.next265 ]
  %m.mem.reached270 = icmp eq i64 %m.mem.probe269, %m.cap238
  %m.mem.state.gep271 = getelementptr i8, ptr %m.states242, i64 %m.mem.idx268
  %m.mem.state272 = load i8, ptr %m.mem.state.gep271, align 1
  %m.mem.is.empty273 = icmp eq i8 %m.mem.state272, 0
  %m.mem.stop274 = or i1 %m.mem.is.empty273, %m.mem.reached270
  br i1 %m.mem.stop274, label %m.mem.miss266, label %m.mem.probe263

m.mem.probe263:                                   ; preds = %m.mem.loop262
  %m.mem.is.tomb275 = icmp eq i8 %m.mem.state272, 2
  br i1 %m.mem.is.tomb275, label %m.mem.next265, label %m.mem.found264

m.mem.found264:                                   ; preds = %m.mem.probe263
  %m.mem.key.slot276 = getelementptr i64, ptr %m.keys240, i64 %m.mem.idx268
  %mk.stored277 = load ptr, ptr %m.mem.key.slot276, align 8
  %mk.slen278 = getelementptr inbounds { i64, ptr }, ptr %mk.stored277, i32 0, i32 0
  %mk.slen279 = load i64, ptr %mk.slen278, align 8
  %mk.slen280 = and i64 %mk.slen279, 281474976710655
  %str.tag281 = lshr i64 %mk.slen279, 48
  %tag.immortal283 = icmp eq i64 %str.tag281, 0
  br i1 %tag.immortal283, label %str_ok282, label %tag.gen_check284

m.mem.next265:                                    ; preds = %mk.eq.merge309, %m.mem.probe263
  %m.mem.idx.add318 = add i64 %m.mem.idx268, 1
  %m.mem.idx.next319 = and i64 %m.mem.idx.add318, %m.capm1260
  %m.mem.probe.next320 = add i64 %m.mem.probe269, 1
  br label %m.mem.loop262

m.mem.miss266:                                    ; preds = %m.mem.loop262
  br label %m.mem.done267

m.mem.done267:                                    ; preds = %m.mem.miss266, %m.mem.hit317
  %m.mem.res321 = phi i1 [ true, %m.mem.hit317 ], [ false, %m.mem.miss266 ]
  br i1 %m.mem.res321, label %choice.then322, label %choice.else

str_ok282:                                        ; preds = %abort.dead291, %tag.slow_check285, %tag.gen_check284, %m.mem.found264
  %mk.nlen292 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 0
  %mk.nlen293 = load i64, ptr %mk.nlen292, align 8
  %mk.nlen294 = and i64 %mk.nlen293, 281474976710655
  %str.tag295 = lshr i64 %mk.nlen293, 48
  %tag.immortal297 = icmp eq i64 %str.tag295, 0
  br i1 %tag.immortal297, label %str_ok296, label %tag.gen_check298

tag.gen_check284:                                 ; preds = %m.mem.found264
  %active.gen287 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok288 = icmp eq i64 %str.tag281, %active.gen287
  br i1 %tag.fast.ok288, label %str_ok282, label %tag.slow_check285

tag.slow_check285:                                ; preds = %tag.gen_check284
  %arena.cur289 = call ptr @dva_arena_current()
  %tag.valid290 = call i1 @dva_arena_validate_tag(ptr %arena.cur289, i64 %str.tag281)
  br i1 %tag.valid290, label %str_ok282, label %tag.stale286

tag.stale286:                                     ; preds = %tag.slow_check285
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead291:                                    ; No predecessors!
  br label %str_ok282

str_ok296:                                        ; preds = %abort.dead305, %tag.slow_check299, %tag.gen_check298, %str_ok282
  %mk.lenseq306 = icmp eq i64 %mk.slen280, %mk.nlen294
  br i1 %mk.lenseq306, label %mk.eq.then307, label %mk.eq.else308

tag.gen_check298:                                 ; preds = %str_ok282
  %active.gen301 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok302 = icmp eq i64 %str.tag295, %active.gen301
  br i1 %tag.fast.ok302, label %str_ok296, label %tag.slow_check299

tag.slow_check299:                                ; preds = %tag.gen_check298
  %arena.cur303 = call ptr @dva_arena_current()
  %tag.valid304 = call i1 @dva_arena_validate_tag(ptr %arena.cur303, i64 %str.tag295)
  br i1 %tag.valid304, label %str_ok296, label %tag.stale300

tag.stale300:                                     ; preds = %tag.slow_check299
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead305:                                    ; No predecessors!
  br label %str_ok296

mk.eq.then307:                                    ; preds = %str_ok296
  %mk.sdata310 = getelementptr inbounds { i64, ptr }, ptr %mk.stored277, i32 0, i32 1
  %mk.sdata311 = load ptr, ptr %mk.sdata310, align 8
  %mk.ndata312 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 1
  %mk.ndata313 = load ptr, ptr %mk.ndata312, align 8
  %mk.memcmp314 = call i32 @memcmp(ptr %mk.sdata311, ptr %mk.ndata313, i64 %mk.nlen294)
  %mk.cmpeq315 = icmp eq i32 %mk.memcmp314, 0
  br label %mk.eq.merge309

mk.eq.else308:                                    ; preds = %str_ok296
  br label %mk.eq.merge309

mk.eq.merge309:                                   ; preds = %mk.eq.else308, %mk.eq.then307
  %mk.eq316 = phi i1 [ %mk.cmpeq315, %mk.eq.then307 ], [ false, %mk.eq.else308 ]
  br i1 %mk.eq316, label %m.mem.hit317, label %m.mem.next265

m.mem.hit317:                                     ; preds = %mk.eq.merge309
  br label %m.mem.done267

choice.then322:                                   ; preds = %m.mem.done267
  %var.load324 = load ptr, ptr %var.mod, align 8
  %cat.seg325 = getelementptr inbounds { i64, ptr }, ptr %var.load324, i32 0, i32 0
  %cat.seg326 = load i64, ptr %cat.seg325, align 8
  %cat.seg327 = and i64 %cat.seg326, 281474976710655
  %str.tag328 = lshr i64 %cat.seg326, 48
  %tag.immortal330 = icmp eq i64 %str.tag328, 0
  br i1 %tag.immortal330, label %str_ok329, label %tag.gen_check331

choice.else:                                      ; preds = %m.mem.done267
  br label %choice.exit323

choice.exit323:                                   ; preds = %choice.else, %concat.tot.len374
  %choice.res = phi ptr [ %concat.str386, %concat.tot.len374 ], [ @str.4.struct, %choice.else ]
  %ret.pack389 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack389

str_ok329:                                        ; preds = %abort.dead338, %tag.slow_check332, %tag.gen_check331, %choice.then322
  %cat.seg339 = getelementptr inbounds { i64, ptr }, ptr %var.load324, i32 0, i32 1
  %cat.seg340 = load ptr, ptr %cat.seg339, align 8
  %cat.lit.data341 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load342 = load ptr, ptr %var.ref, align 8
  %cat.seg343 = getelementptr inbounds { i64, ptr }, ptr %var.load342, i32 0, i32 0
  %cat.seg344 = load i64, ptr %cat.seg343, align 8
  %cat.seg345 = and i64 %cat.seg344, 281474976710655
  %str.tag346 = lshr i64 %cat.seg344, 48
  %tag.immortal348 = icmp eq i64 %str.tag346, 0
  br i1 %tag.immortal348, label %str_ok347, label %tag.gen_check349

tag.gen_check331:                                 ; preds = %choice.then322
  %active.gen334 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok335 = icmp eq i64 %str.tag328, %active.gen334
  br i1 %tag.fast.ok335, label %str_ok329, label %tag.slow_check332

tag.slow_check332:                                ; preds = %tag.gen_check331
  %arena.cur336 = call ptr @dva_arena_current()
  %tag.valid337 = call i1 @dva_arena_validate_tag(ptr %arena.cur336, i64 %str.tag328)
  br i1 %tag.valid337, label %str_ok329, label %tag.stale333

tag.stale333:                                     ; preds = %tag.slow_check332
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead338:                                    ; No predecessors!
  br label %str_ok329

str_ok347:                                        ; preds = %abort.dead356, %tag.slow_check350, %tag.gen_check349, %str_ok329
  %cat.seg357 = getelementptr inbounds { i64, ptr }, ptr %var.load342, i32 0, i32 1
  %cat.seg358 = load ptr, ptr %cat.seg357, align 8
  %cat.sum.len359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg327, i64 3)
  %sum360 = extractvalue { i64, i1 } %cat.sum.len359, 0
  %ovf361 = extractvalue { i64, i1 } %cat.sum.len359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %cat.sum.len362

tag.gen_check349:                                 ; preds = %str_ok329
  %active.gen352 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok353 = icmp eq i64 %str.tag346, %active.gen352
  br i1 %tag.fast.ok353, label %str_ok347, label %tag.slow_check350

tag.slow_check350:                                ; preds = %tag.gen_check349
  %arena.cur354 = call ptr @dva_arena_current()
  %tag.valid355 = call i1 @dva_arena_validate_tag(ptr %arena.cur354, i64 %str.tag346)
  br i1 %tag.valid355, label %str_ok347, label %tag.stale351

tag.stale351:                                     ; preds = %tag.slow_check350
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead356:                                    ; No predecessors!
  br label %str_ok347

cat.sum.len362:                                   ; preds = %abort.dead364, %str_ok347
  %cat.sum.len365 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum360, i64 %cat.seg345)
  %sum366 = extractvalue { i64, i1 } %cat.sum.len365, 0
  %ovf367 = extractvalue { i64, i1 } %cat.sum.len365, 1
  br i1 %ovf367, label %str_overflow_abort369, label %cat.sum.len368

str_overflow_abort363:                            ; preds = %str_ok347
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead364:                                    ; No predecessors!
  br label %cat.sum.len362

cat.sum.len368:                                   ; preds = %abort.dead370, %cat.sum.len362
  %concat.tot.len371 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum366, i64 1)
  %sum372 = extractvalue { i64, i1 } %concat.tot.len371, 0
  %ovf373 = extractvalue { i64, i1 } %concat.tot.len371, 1
  br i1 %ovf373, label %str_overflow_abort375, label %concat.tot.len374

str_overflow_abort369:                            ; preds = %cat.sum.len362
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead370:                                    ; No predecessors!
  br label %cat.sum.len368

concat.tot.len374:                                ; preds = %abort.dead376, %cat.sum.len368
  %arena.cur377 = call ptr @dva_arena_current()
  %concat.buf378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 %sum372)
  %cat.dst379 = getelementptr i8, ptr %concat.buf378, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst379, ptr align 1 %cat.seg340, i64 %cat.seg327, i1 false)
  %cat.off380 = add i64 0, %cat.seg327
  %cat.dst381 = getelementptr i8, ptr %concat.buf378, i64 %cat.off380
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst381, ptr align 1 %cat.lit.data341, i64 3, i1 false)
  %cat.off382 = add i64 %cat.off380, 3
  %cat.dst383 = getelementptr i8, ptr %concat.buf378, i64 %cat.off382
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst383, ptr align 1 %cat.seg358, i64 %cat.seg345, i1 false)
  %concat.nul384 = getelementptr i8, ptr %concat.buf378, i64 %sum366
  store i8 0, ptr %concat.nul384, align 1
  %arena.cur385 = call ptr @dva_arena_current()
  %concat.str386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 16)
  %str.build.len.gep387 = getelementptr inbounds { i64, ptr }, ptr %concat.str386, i32 0, i32 0
  store i64 %sum366, ptr %str.build.len.gep387, align 8
  %str.build.data.gep388 = getelementptr inbounds { i64, ptr }, ptr %concat.str386, i32 0, i32 1
  store ptr %concat.buf378, ptr %str.build.data.gep388, align 8
  br label %choice.exit323

str_overflow_abort375:                            ; preds = %cat.sum.len368
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead376:                                    ; No predecessors!
  br label %concat.tot.len374

ret.dead390:                                      ; No predecessors!
  br label %choice.exit

str_ok405:                                        ; preds = %abort.dead414, %tag.slow_check408, %tag.gen_check407, %choice.exit
  %hash.str415 = call i64 @dva_hash_string(ptr %mk.data400, i64 %mk.len403)
  %m.capm1416 = sub i64 %m.cap394, 1
  %m.idx0417 = and i64 %hash.str415, %m.capm1416
  br label %m.mem.loop418

tag.gen_check407:                                 ; preds = %choice.exit
  %active.gen410 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok411 = icmp eq i64 %str.tag404, %active.gen410
  br i1 %tag.fast.ok411, label %str_ok405, label %tag.slow_check408

tag.slow_check408:                                ; preds = %tag.gen_check407
  %arena.cur412 = call ptr @dva_arena_current()
  %tag.valid413 = call i1 @dva_arena_validate_tag(ptr %arena.cur412, i64 %str.tag404)
  br i1 %tag.valid413, label %str_ok405, label %tag.stale409

tag.stale409:                                     ; preds = %tag.slow_check408
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead414:                                    ; No predecessors!
  br label %str_ok405

m.mem.loop418:                                    ; preds = %m.mem.next421, %str_ok405
  %m.mem.idx424 = phi i64 [ %m.idx0417, %str_ok405 ], [ %m.mem.idx.next475, %m.mem.next421 ]
  %m.mem.probe425 = phi i64 [ 0, %str_ok405 ], [ %m.mem.probe.next476, %m.mem.next421 ]
  %m.mem.reached426 = icmp eq i64 %m.mem.probe425, %m.cap394
  %m.mem.state.gep427 = getelementptr i8, ptr %m.states398, i64 %m.mem.idx424
  %m.mem.state428 = load i8, ptr %m.mem.state.gep427, align 1
  %m.mem.is.empty429 = icmp eq i8 %m.mem.state428, 0
  %m.mem.stop430 = or i1 %m.mem.is.empty429, %m.mem.reached426
  br i1 %m.mem.stop430, label %m.mem.miss422, label %m.mem.probe419

m.mem.probe419:                                   ; preds = %m.mem.loop418
  %m.mem.is.tomb431 = icmp eq i8 %m.mem.state428, 2
  br i1 %m.mem.is.tomb431, label %m.mem.next421, label %m.mem.found420

m.mem.found420:                                   ; preds = %m.mem.probe419
  %m.mem.key.slot432 = getelementptr i64, ptr %m.keys396, i64 %m.mem.idx424
  %mk.stored433 = load ptr, ptr %m.mem.key.slot432, align 8
  %mk.slen434 = getelementptr inbounds { i64, ptr }, ptr %mk.stored433, i32 0, i32 0
  %mk.slen435 = load i64, ptr %mk.slen434, align 8
  %mk.slen436 = and i64 %mk.slen435, 281474976710655
  %str.tag437 = lshr i64 %mk.slen435, 48
  %tag.immortal439 = icmp eq i64 %str.tag437, 0
  br i1 %tag.immortal439, label %str_ok438, label %tag.gen_check440

m.mem.next421:                                    ; preds = %mk.eq.merge465, %m.mem.probe419
  %m.mem.idx.add474 = add i64 %m.mem.idx424, 1
  %m.mem.idx.next475 = and i64 %m.mem.idx.add474, %m.capm1416
  %m.mem.probe.next476 = add i64 %m.mem.probe425, 1
  br label %m.mem.loop418

m.mem.miss422:                                    ; preds = %m.mem.loop418
  br label %m.mem.done423

m.mem.done423:                                    ; preds = %m.mem.miss422, %m.mem.hit473
  %m.mem.res477 = phi i1 [ true, %m.mem.hit473 ], [ false, %m.mem.miss422 ]
  br i1 %m.mem.res477, label %choice.then478, label %choice.else479

str_ok438:                                        ; preds = %abort.dead447, %tag.slow_check441, %tag.gen_check440, %m.mem.found420
  %mk.nlen448 = getelementptr inbounds { i64, ptr }, ptr %var.load392, i32 0, i32 0
  %mk.nlen449 = load i64, ptr %mk.nlen448, align 8
  %mk.nlen450 = and i64 %mk.nlen449, 281474976710655
  %str.tag451 = lshr i64 %mk.nlen449, 48
  %tag.immortal453 = icmp eq i64 %str.tag451, 0
  br i1 %tag.immortal453, label %str_ok452, label %tag.gen_check454

tag.gen_check440:                                 ; preds = %m.mem.found420
  %active.gen443 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok444 = icmp eq i64 %str.tag437, %active.gen443
  br i1 %tag.fast.ok444, label %str_ok438, label %tag.slow_check441

tag.slow_check441:                                ; preds = %tag.gen_check440
  %arena.cur445 = call ptr @dva_arena_current()
  %tag.valid446 = call i1 @dva_arena_validate_tag(ptr %arena.cur445, i64 %str.tag437)
  br i1 %tag.valid446, label %str_ok438, label %tag.stale442

tag.stale442:                                     ; preds = %tag.slow_check441
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead447:                                    ; No predecessors!
  br label %str_ok438

str_ok452:                                        ; preds = %abort.dead461, %tag.slow_check455, %tag.gen_check454, %str_ok438
  %mk.lenseq462 = icmp eq i64 %mk.slen436, %mk.nlen450
  br i1 %mk.lenseq462, label %mk.eq.then463, label %mk.eq.else464

tag.gen_check454:                                 ; preds = %str_ok438
  %active.gen457 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok458 = icmp eq i64 %str.tag451, %active.gen457
  br i1 %tag.fast.ok458, label %str_ok452, label %tag.slow_check455

tag.slow_check455:                                ; preds = %tag.gen_check454
  %arena.cur459 = call ptr @dva_arena_current()
  %tag.valid460 = call i1 @dva_arena_validate_tag(ptr %arena.cur459, i64 %str.tag451)
  br i1 %tag.valid460, label %str_ok452, label %tag.stale456

tag.stale456:                                     ; preds = %tag.slow_check455
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %str_ok452

mk.eq.then463:                                    ; preds = %str_ok452
  %mk.sdata466 = getelementptr inbounds { i64, ptr }, ptr %mk.stored433, i32 0, i32 1
  %mk.sdata467 = load ptr, ptr %mk.sdata466, align 8
  %mk.ndata468 = getelementptr inbounds { i64, ptr }, ptr %var.load392, i32 0, i32 1
  %mk.ndata469 = load ptr, ptr %mk.ndata468, align 8
  %mk.memcmp470 = call i32 @memcmp(ptr %mk.sdata467, ptr %mk.ndata469, i64 %mk.nlen450)
  %mk.cmpeq471 = icmp eq i32 %mk.memcmp470, 0
  br label %mk.eq.merge465

mk.eq.else464:                                    ; preds = %str_ok452
  br label %mk.eq.merge465

mk.eq.merge465:                                   ; preds = %mk.eq.else464, %mk.eq.then463
  %mk.eq472 = phi i1 [ %mk.cmpeq471, %mk.eq.then463 ], [ false, %mk.eq.else464 ]
  br i1 %mk.eq472, label %m.mem.hit473, label %m.mem.next421

m.mem.hit473:                                     ; preds = %mk.eq.merge465
  br label %m.mem.done423

choice.then478:                                   ; preds = %m.mem.done423
  %var.load481 = load ptr, ptr %var.ref, align 8
  br label %choice.exit480

choice.else479:                                   ; preds = %m.mem.done423
  br label %choice.exit480

choice.exit480:                                   ; preds = %choice.else479, %choice.then478
  %choice.res482 = phi ptr [ %var.load481, %choice.then478 ], [ @str.4.struct, %choice.else479 ]
  %ret.pack483 = load { i64, ptr }, ptr %choice.res482, align 8
  ret { i64, ptr } %ret.pack483
}

define void @"dep_graph::collect_expr_refs"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.rm = alloca ptr, align 8
  %var._2000 = alloca ptr, align 8
  %var._1932 = alloca ptr, align 8
  %var._i1931 = alloca i64, align 8
  %var.p1923 = alloca ptr, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.m1905 = alloca ptr, align 8
  %var._1904 = alloca ptr, align 8
  %var.r1862 = alloca ptr, align 8
  %var._1861 = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1824 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1789 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1754 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1716 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1681 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1644 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1609 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1574 = alloca ptr, align 8
  %var._1537 = alloca ptr, align 8
  %var._i1536 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %loop.step.47 = alloca i64, align 8
  %loop.idx.47 = alloca i64, align 8
  %var.v1521 = alloca ptr, align 8
  %var._1520 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1483 = alloca ptr, align 8
  %var.v1383 = alloca ptr, align 8
  %var._1382 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1331 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1265 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1199 = alloca ptr, align 8
  %var.a1133 = alloca ptr, align 8
  %var._1132 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1066 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._1000 = alloca ptr, align 8
  %var._961 = alloca ptr, align 8
  %var._i960 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._945 = alloca ptr, align 8
  %var._853 = alloca ptr, align 8
  %var._i852 = alloca i64, align 8
  %var.vn = alloca ptr, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._807 = alloca ptr, align 8
  %var._i806 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var._682 = alloca ptr, align 8
  %var._i681 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._652 = alloca ptr, align 8
  %var._i651 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._607 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._489 = alloca ptr, align 8
  %var._479 = alloca ptr, align 8
  %var._i478 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._439 = alloca ptr, align 8
  %var._352 = alloca ptr, align 8
  %var._i351 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._322 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._285 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._219 = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._52 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next1994, %a.after2021, %loop.exit.48, %choice.exit1867, %a.after1845, %a.after1808, %a.after1773, %a.after1738, %a.after1700, %a.after1665, %a.after1628, %a.after1593, %loop.exit.47, %a.after1504, %choice.exit1370, %a.after1315, %a.after1249, %a.after1183, %a.after1116, %a.after1050, %loop.exit.45, %loop.exit.39, %loop.exit.38, %a.after423, %a.after306, %a.after269, %loop.exit.36, %choice.exit27
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.next:                                      ; preds = %entry
  %tag.gep47 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id48 = load i64, ptr %tag.gep47, align 8
  %tag.match49 = icmp eq i64 %tag.id48, 9
  br i1 %tag.match49, label %choice.case45, label %choice.next46

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.case
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data5 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data5, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge
  %var.load6 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.32.else:                                      ; preds = %str.eq.merge
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %a.after
  %and.32.phi = phi i1 [ %nottmp, %a.after ], [ %str.neq, %and.32.else ]
  br i1 %and.32.phi, label %and.33.then, label %and.33.else

a.create:                                         ; preds = %and.32.then
  %arena.cur7 = call ptr @dva_arena_current()
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create8, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.32.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load10 = load ptr, ptr %var.v, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %a.load2, ptr %var.load10)
  %nottmp = xor i1 %call.res, true
  br label %and.32.exit

and.33.then:                                      ; preds = %and.32.exit
  %var.load11 = load ptr, ptr %var.refs, align 8
  %a.load12 = load ptr, ptr %var.refs, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

and.33.else:                                      ; preds = %and.32.exit
  br label %and.33.exit

and.33.exit:                                      ; preds = %and.33.else, %a.after15
  %and.33.phi = phi i1 [ %nottmp26, %a.after15 ], [ %and.32.phi, %and.33.else ]
  br i1 %and.33.phi, label %choice.then, label %choice.exit27

a.create14:                                       ; preds = %and.33.then
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.refs, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %and.33.then
  %a.load223 = load ptr, ptr %var.refs, align 8
  %var.load24 = load ptr, ptr %var.v, align 8
  %call.res25 = call i1 @"dep_graph::has_name"(ptr %a.load223, ptr %var.load24)
  %nottmp26 = xor i1 %call.res25, true
  br label %and.33.exit

choice.then:                                      ; preds = %and.33.exit
  %var.load28 = load ptr, ptr %var.v, align 8
  %a.load29 = load ptr, ptr %var.refs, align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

choice.exit27:                                    ; preds = %a.store, %and.33.exit
  br label %choice.exit

a.create31:                                       ; preds = %choice.then
  %arena.cur33 = call ptr @dva_arena_current()
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %var.refs, align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %choice.then
  %a.load240 = load ptr, ptr %var.refs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after32
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.len41 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 2
  %a.cap42 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len41, %a.cap42
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load240)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 1
  %a.cur.data43 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.cur.len44 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data43, i64 %a.cur.len44
  %slot.p2i = ptrtoint ptr %var.load28 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len44, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit27

choice.case45:                                    ; preds = %choice.next
  %pay.gep50 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr51 = load ptr, ptr %pay.gep50, align 8
  store ptr %payload.ptr51, ptr %var._52, align 8
  store ptr %payload.ptr51, ptr %var.c, align 8
  %var.load53 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len54 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len55 = load i64, ptr %eq.lhs.len54, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %str.tag57 = lshr i64 %eq.lhs.len55, 48
  %tag.immortal59 = icmp eq i64 %str.tag57, 0
  br i1 %tag.immortal59, label %str_ok58, label %tag.gen_check60

choice.next46:                                    ; preds = %choice.next
  %tag.gep214 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id215 = load i64, ptr %tag.gep214, align 8
  %tag.match216 = icmp eq i64 %tag.id215, 5
  br i1 %tag.match216, label %choice.case212, label %choice.next213

str_ok58:                                         ; preds = %abort.dead67, %tag.slow_check61, %tag.gen_check60, %choice.case45
  %eq.rhs.len68 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len69 = and i64 %eq.rhs.len68, 281474976710655
  %eq.len70 = icmp eq i64 %eq.lhs.len56, %eq.rhs.len69
  br i1 %eq.len70, label %str.eq.then71, label %str.eq.else72

tag.gen_check60:                                  ; preds = %choice.case45
  %active.gen63 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok64 = icmp eq i64 %str.tag57, %active.gen63
  br i1 %tag.fast.ok64, label %str_ok58, label %tag.slow_check61

tag.slow_check61:                                 ; preds = %tag.gen_check60
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag57)
  br i1 %tag.valid66, label %str_ok58, label %tag.stale62

tag.stale62:                                      ; preds = %tag.slow_check61
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %str_ok58

str.eq.then71:                                    ; preds = %str_ok58
  %eq.lhs.data74 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data75 = load ptr, ptr %eq.lhs.data74, align 8
  %eq.rhs.data76 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp77 = call i32 @memcmp(ptr %eq.lhs.data75, ptr %eq.rhs.data76, i64 %eq.lhs.len56)
  %eq.cmp.zero78 = icmp eq i32 %eq.memcmp77, 0
  br label %str.eq.merge73

str.eq.else72:                                    ; preds = %str_ok58
  br label %str.eq.merge73

str.eq.merge73:                                   ; preds = %str.eq.else72, %str.eq.then71
  %str.eq.result79 = phi i1 [ %eq.cmp.zero78, %str.eq.then71 ], [ false, %str.eq.else72 ]
  %str.neq80 = xor i1 %str.eq.result79, true
  br i1 %str.neq80, label %and.34.then, label %and.34.else

and.34.then:                                      ; preds = %str.eq.merge73
  %var.load81 = load ptr, ptr %var.locals, align 8
  %a.load82 = load ptr, ptr %var.locals, align 8
  %a.null83 = icmp eq ptr %a.load82, null
  br i1 %a.null83, label %a.create84, label %a.after85

and.34.else:                                      ; preds = %str.eq.merge73
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %a.after85
  %and.34.phi = phi i1 [ %nottmp98, %a.after85 ], [ %str.neq80, %and.34.else ]
  br i1 %and.34.phi, label %and.35.then, label %and.35.else

a.create84:                                       ; preds = %and.34.then
  %arena.cur86 = call ptr @dva_arena_current()
  %a.create87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 24)
  %arena.cur88 = call ptr @dva_arena_current()
  %a.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 128)
  %a.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 0
  store i64 0, ptr %a.len.gep90, align 8
  %a.data.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 1
  store ptr %a.buf89, ptr %a.data.gep91, align 8
  %a.cap.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 2
  store i64 16, ptr %a.cap.gep92, align 8
  store ptr %a.create87, ptr %var.locals, align 8
  br label %a.after85

a.after85:                                        ; preds = %a.create84, %and.34.then
  %a.load293 = load ptr, ptr %var.locals, align 8
  %var.load94 = load ptr, ptr %var.c, align 8
  %fld.gep95 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load94, i32 0, i32 0
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %call.res97 = call i1 @"dep_graph::has_name"(ptr %a.load293, ptr %fld.load96)
  %nottmp98 = xor i1 %call.res97, true
  br label %and.34.exit

and.35.then:                                      ; preds = %and.34.exit
  %var.load99 = load ptr, ptr %var.refs, align 8
  %a.load100 = load ptr, ptr %var.refs, align 8
  %a.null101 = icmp eq ptr %a.load100, null
  br i1 %a.null101, label %a.create102, label %a.after103

and.35.else:                                      ; preds = %and.34.exit
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %a.after103
  %and.35.phi = phi i1 [ %nottmp116, %a.after103 ], [ %and.34.phi, %and.35.else ]
  br i1 %and.35.phi, label %choice.then117, label %choice.exit118

a.create102:                                      ; preds = %and.35.then
  %arena.cur104 = call ptr @dva_arena_current()
  %a.create105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 24)
  %arena.cur106 = call ptr @dva_arena_current()
  %a.buf107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 128)
  %a.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 0
  store i64 0, ptr %a.len.gep108, align 8
  %a.data.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 1
  store ptr %a.buf107, ptr %a.data.gep109, align 8
  %a.cap.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 2
  store i64 16, ptr %a.cap.gep110, align 8
  store ptr %a.create105, ptr %var.refs, align 8
  br label %a.after103

a.after103:                                       ; preds = %a.create102, %and.35.then
  %a.load2111 = load ptr, ptr %var.refs, align 8
  %var.load112 = load ptr, ptr %var.c, align 8
  %fld.gep113 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load112, i32 0, i32 0
  %fld.load114 = load ptr, ptr %fld.gep113, align 8
  %call.res115 = call i1 @"dep_graph::has_name"(ptr %a.load2111, ptr %fld.load114)
  %nottmp116 = xor i1 %call.res115, true
  br label %and.35.exit

choice.then117:                                   ; preds = %and.35.exit
  %var.load119 = load ptr, ptr %var.c, align 8
  %fld.gep120 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load119, i32 0, i32 0
  %fld.load121 = load ptr, ptr %fld.gep120, align 8
  %a.load122 = load ptr, ptr %var.refs, align 8
  %a.null123 = icmp eq ptr %a.load122, null
  br i1 %a.null123, label %a.create124, label %a.after125

choice.exit118:                                   ; preds = %a.store136, %and.35.exit
  %var.load150 = load ptr, ptr %var.c, align 8
  %fld.gep151 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load150, i32 0, i32 1
  %fld.load152 = load ptr, ptr %fld.gep151, align 8
  %var.load153 = load ptr, ptr %var.locals, align 8
  %a.load154 = load ptr, ptr %var.locals, align 8
  %a.null155 = icmp eq ptr %a.load154, null
  br i1 %a.null155, label %a.create156, label %a.after157

a.create124:                                      ; preds = %choice.then117
  %arena.cur126 = call ptr @dva_arena_current()
  %a.create127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 24)
  %arena.cur128 = call ptr @dva_arena_current()
  %a.buf129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 128)
  %a.len.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 0
  store i64 0, ptr %a.len.gep130, align 8
  %a.data.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 1
  store ptr %a.buf129, ptr %a.data.gep131, align 8
  %a.cap.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 2
  store i64 16, ptr %a.cap.gep132, align 8
  store ptr %a.create127, ptr %var.refs, align 8
  br label %a.after125

a.after125:                                       ; preds = %a.create124, %choice.then117
  %a.load2133 = load ptr, ptr %var.refs, align 8
  br label %a.check134

a.check134:                                       ; preds = %a.after125
  %a.len137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  %a.len138 = load i64, ptr %a.len137, align 8
  %a.cap139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 2
  %a.cap140 = load i64, ptr %a.cap139, align 8
  %a.needs.grow141 = icmp eq i64 %a.len138, %a.cap140
  br i1 %a.needs.grow141, label %a.grow135, label %a.store136

a.grow135:                                        ; preds = %a.check134
  call void @dva_array_grow(ptr %a.load2133)
  br label %a.store136

a.store136:                                       ; preds = %a.grow135, %a.check134
  %a.cur.data142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 1
  %a.cur.data143 = load ptr, ptr %a.cur.data142, align 8
  %a.cur.len144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  %a.cur.len145 = load i64, ptr %a.cur.len144, align 8
  %a.elem.gep146 = getelementptr i64, ptr %a.cur.data143, i64 %a.cur.len145
  %slot.p2i147 = ptrtoint ptr %fld.load121 to i64
  store i64 %slot.p2i147, ptr %a.elem.gep146, align 8
  %a.next.len148 = add i64 %a.cur.len145, 1
  %b.len.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  store i64 %a.next.len148, ptr %b.len.gep149, align 8
  br label %choice.exit118

a.create156:                                      ; preds = %choice.exit118
  %arena.cur158 = call ptr @dva_arena_current()
  %a.create159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 24)
  %arena.cur160 = call ptr @dva_arena_current()
  %a.buf161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 128)
  %a.len.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 0
  store i64 0, ptr %a.len.gep162, align 8
  %a.data.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 1
  store ptr %a.buf161, ptr %a.data.gep163, align 8
  %a.cap.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 2
  store i64 16, ptr %a.cap.gep164, align 8
  store ptr %a.create159, ptr %var.locals, align 8
  br label %a.after157

a.after157:                                       ; preds = %a.create156, %choice.exit118
  %a.load2165 = load ptr, ptr %var.locals, align 8
  %var.load166 = load ptr, ptr %var.refs, align 8
  %a.load167 = load ptr, ptr %var.refs, align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

a.create169:                                      ; preds = %a.after157
  %arena.cur171 = call ptr @dva_arena_current()
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = call ptr @dva_arena_current()
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %var.refs, align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %a.after157
  %a.load2178 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load152, ptr %a.load2165, ptr %a.load2178)
  %var.load179 = load ptr, ptr %var.c, align 8
  %fld.gep180 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load179, i32 0, i32 2
  %fld.load181 = load ptr, ptr %fld.gep180, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load181, i32 0, i32 0
  %arr.cycle.len182 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load181, i32 0, i32 1
  %arr.cycle.data183 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.36, align 8
  %cycle.prev.u = load ptr, ptr %var._52, align 8
  br label %loop.header.36

loop.header.36:                                   ; preds = %loop.latch.36, %a.after170
  %counter.load = load i64, ptr %loop.idx.36, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len182
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.nat.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.36, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data183, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._184, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load185 = load ptr, ptr %var.arg, align 8
  %var.load186 = load ptr, ptr %var.locals, align 8
  %a.load187 = load ptr, ptr %var.locals, align 8
  %a.null188 = icmp eq ptr %a.load187, null
  br i1 %a.null188, label %a.create189, label %a.after190

loop.exit.nat.36:                                 ; preds = %loop.header.36
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %a.after203
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %loop.exit.nat.36
  store ptr %cycle.prev.u, ptr %var._52, align 8
  br label %choice.exit

a.create189:                                      ; preds = %loop.body.36
  %arena.cur191 = call ptr @dva_arena_current()
  %a.create192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 24)
  %arena.cur193 = call ptr @dva_arena_current()
  %a.buf194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 128)
  %a.len.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 0
  store i64 0, ptr %a.len.gep195, align 8
  %a.data.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 1
  store ptr %a.buf194, ptr %a.data.gep196, align 8
  %a.cap.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 2
  store i64 16, ptr %a.cap.gep197, align 8
  store ptr %a.create192, ptr %var.locals, align 8
  br label %a.after190

a.after190:                                       ; preds = %a.create189, %loop.body.36
  %a.load2198 = load ptr, ptr %var.locals, align 8
  %var.load199 = load ptr, ptr %var.refs, align 8
  %a.load200 = load ptr, ptr %var.refs, align 8
  %a.null201 = icmp eq ptr %a.load200, null
  br i1 %a.null201, label %a.create202, label %a.after203

a.create202:                                      ; preds = %a.after190
  %arena.cur204 = call ptr @dva_arena_current()
  %a.create205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 24)
  %arena.cur206 = call ptr @dva_arena_current()
  %a.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 128)
  %a.len.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 0
  store i64 0, ptr %a.len.gep208, align 8
  %a.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 1
  store ptr %a.buf207, ptr %a.data.gep209, align 8
  %a.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep210, align 8
  store ptr %a.create205, ptr %var.refs, align 8
  br label %a.after203

a.after203:                                       ; preds = %a.create202, %a.after190
  %a.load2211 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load185, ptr %a.load2198, ptr %a.load2211)
  br label %loop.latch.36

choice.case212:                                   ; preds = %choice.next46
  %pay.gep217 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr218 = load ptr, ptr %pay.gep217, align 8
  store ptr %payload.ptr218, ptr %var._219, align 8
  store ptr %payload.ptr218, ptr %var.b, align 8
  %var.load220 = load ptr, ptr %var.b, align 8
  %fld.gep221 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load220, i32 0, i32 1
  %fld.load222 = load ptr, ptr %fld.gep221, align 8
  %var.load223 = load ptr, ptr %var.locals, align 8
  %a.load224 = load ptr, ptr %var.locals, align 8
  %a.null225 = icmp eq ptr %a.load224, null
  br i1 %a.null225, label %a.create226, label %a.after227

choice.next213:                                   ; preds = %choice.next46
  %tag.gep280 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id281 = load i64, ptr %tag.gep280, align 8
  %tag.match282 = icmp eq i64 %tag.id281, 24
  br i1 %tag.match282, label %choice.case278, label %choice.next279

a.create226:                                      ; preds = %choice.case212
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

a.after227:                                       ; preds = %a.create226, %choice.case212
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
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load222, ptr %a.load2235, ptr %a.load2248)
  %var.load249 = load ptr, ptr %var.b, align 8
  %fld.gep250 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load249, i32 0, i32 2
  %fld.load251 = load ptr, ptr %fld.gep250, align 8
  %var.load252 = load ptr, ptr %var.locals, align 8
  %a.load253 = load ptr, ptr %var.locals, align 8
  %a.null254 = icmp eq ptr %a.load253, null
  br i1 %a.null254, label %a.create255, label %a.after256

a.create255:                                      ; preds = %a.after240
  %arena.cur257 = call ptr @dva_arena_current()
  %a.create258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 24)
  %arena.cur259 = call ptr @dva_arena_current()
  %a.buf260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 128)
  %a.len.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 0
  store i64 0, ptr %a.len.gep261, align 8
  %a.data.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 1
  store ptr %a.buf260, ptr %a.data.gep262, align 8
  %a.cap.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 2
  store i64 16, ptr %a.cap.gep263, align 8
  store ptr %a.create258, ptr %var.locals, align 8
  br label %a.after256

a.after256:                                       ; preds = %a.create255, %a.after240
  %a.load2264 = load ptr, ptr %var.locals, align 8
  %var.load265 = load ptr, ptr %var.refs, align 8
  %a.load266 = load ptr, ptr %var.refs, align 8
  %a.null267 = icmp eq ptr %a.load266, null
  br i1 %a.null267, label %a.create268, label %a.after269

a.create268:                                      ; preds = %a.after256
  %arena.cur270 = call ptr @dva_arena_current()
  %a.create271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 24)
  %arena.cur272 = call ptr @dva_arena_current()
  %a.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 128)
  %a.len.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create271, i32 0, i32 0
  store i64 0, ptr %a.len.gep274, align 8
  %a.data.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create271, i32 0, i32 1
  store ptr %a.buf273, ptr %a.data.gep275, align 8
  %a.cap.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create271, i32 0, i32 2
  store i64 16, ptr %a.cap.gep276, align 8
  store ptr %a.create271, ptr %var.refs, align 8
  br label %a.after269

a.after269:                                       ; preds = %a.create268, %a.after256
  %a.load2277 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load251, ptr %a.load2264, ptr %a.load2277)
  br label %choice.exit

choice.case278:                                   ; preds = %choice.next213
  %pay.gep283 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr284 = load ptr, ptr %pay.gep283, align 8
  store ptr %payload.ptr284, ptr %var._285, align 8
  store ptr %payload.ptr284, ptr %var.u, align 8
  %var.load286 = load ptr, ptr %var.u, align 8
  %fld.gep287 = getelementptr inbounds { ptr, ptr }, ptr %var.load286, i32 0, i32 1
  %fld.load288 = load ptr, ptr %fld.gep287, align 8
  %var.load289 = load ptr, ptr %var.locals, align 8
  %a.load290 = load ptr, ptr %var.locals, align 8
  %a.null291 = icmp eq ptr %a.load290, null
  br i1 %a.null291, label %a.create292, label %a.after293

choice.next279:                                   ; preds = %choice.next213
  %tag.gep317 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id318 = load i64, ptr %tag.gep317, align 8
  %tag.match319 = icmp eq i64 %tag.id318, 14
  br i1 %tag.match319, label %choice.case315, label %choice.next316

a.create292:                                      ; preds = %choice.case278
  %arena.cur294 = call ptr @dva_arena_current()
  %a.create295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 24)
  %arena.cur296 = call ptr @dva_arena_current()
  %a.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 128)
  %a.len.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 0
  store i64 0, ptr %a.len.gep298, align 8
  %a.data.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 1
  store ptr %a.buf297, ptr %a.data.gep299, align 8
  %a.cap.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 2
  store i64 16, ptr %a.cap.gep300, align 8
  store ptr %a.create295, ptr %var.locals, align 8
  br label %a.after293

a.after293:                                       ; preds = %a.create292, %choice.case278
  %a.load2301 = load ptr, ptr %var.locals, align 8
  %var.load302 = load ptr, ptr %var.refs, align 8
  %a.load303 = load ptr, ptr %var.refs, align 8
  %a.null304 = icmp eq ptr %a.load303, null
  br i1 %a.null304, label %a.create305, label %a.after306

a.create305:                                      ; preds = %a.after293
  %arena.cur307 = call ptr @dva_arena_current()
  %a.create308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 24)
  %arena.cur309 = call ptr @dva_arena_current()
  %a.buf310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 128)
  %a.len.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 0
  store i64 0, ptr %a.len.gep311, align 8
  %a.data.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 1
  store ptr %a.buf310, ptr %a.data.gep312, align 8
  %a.cap.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create308, i32 0, i32 2
  store i64 16, ptr %a.cap.gep313, align 8
  store ptr %a.create308, ptr %var.refs, align 8
  br label %a.after306

a.after306:                                       ; preds = %a.create305, %a.after293
  %a.load2314 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load288, ptr %a.load2301, ptr %a.load2314)
  br label %choice.exit

choice.case315:                                   ; preds = %choice.next279
  %pay.gep320 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr321 = load ptr, ptr %pay.gep320, align 8
  store ptr %payload.ptr321, ptr %var._322, align 8
  store ptr %payload.ptr321, ptr %var.fe, align 8
  %var.load323 = load ptr, ptr %var.locals, align 8
  %a.load324 = load ptr, ptr %var.locals, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

choice.next316:                                   ; preds = %choice.next279
  %tag.gep434 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id435 = load i64, ptr %tag.gep434, align 8
  %tag.match436 = icmp eq i64 %tag.id435, 8
  br i1 %tag.match436, label %choice.case432, label %choice.next433

a.create326:                                      ; preds = %choice.case315
  %arena.cur328 = call ptr @dva_arena_current()
  %a.create329 = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 24)
  %arena.cur330 = call ptr @dva_arena_current()
  %a.buf331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 128)
  %a.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 0
  store i64 0, ptr %a.len.gep332, align 8
  %a.data.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 1
  store ptr %a.buf331, ptr %a.data.gep333, align 8
  %a.cap.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 2
  store i64 16, ptr %a.cap.gep334, align 8
  store ptr %a.create329, ptr %var.locals, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %choice.case315
  %a.load2335 = load ptr, ptr %var.locals, align 8
  %call.res336 = call ptr @"dep_graph::copy_names"(ptr %a.load2335)
  store ptr %call.res336, ptr %var.fn_locals, align 8
  %var.load337 = load ptr, ptr %var.fe, align 8
  %fld.gep338 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load337, i32 0, i32 0
  %fld.load339 = load ptr, ptr %fld.gep338, align 8
  %arr.cycle.len340 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load339, i32 0, i32 0
  %arr.cycle.len341 = load i64, ptr %arr.cycle.len340, align 8
  %arr.cycle.data342 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load339, i32 0, i32 1
  %arr.cycle.data343 = load ptr, ptr %arr.cycle.data342, align 8
  store i64 0, ptr %loop.idx.37, align 8
  %cycle.prev.u344 = load ptr, ptr %var._322, align 8
  br label %loop.header.37

loop.header.37:                                   ; preds = %loop.latch.37, %a.after327
  %counter.load345 = load i64, ptr %loop.idx.37, align 8
  %loop.cond346 = icmp slt i64 %counter.load345, %arr.cycle.len341
  br i1 %loop.cond346, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i347 = sub i64 %counter.load345, 0
  store i64 1, ptr %loop.step.37, align 8
  %arr.elem.gep348 = getelementptr i64, ptr %arr.cycle.data343, i64 %counter.load345
  %arr.elem.raw349 = load i64, ptr %arr.elem.gep348, align 8
  %slot.i2p350 = inttoptr i64 %arr.elem.raw349 to ptr
  store i64 %loop.rel.i347, ptr %var._i351, align 8
  store ptr %slot.i2p350, ptr %var._352, align 8
  store ptr %slot.i2p350, ptr %var.p, align 8
  %var.load353 = load ptr, ptr %var.p, align 8
  %eq.lhs.len354 = getelementptr inbounds { i64, ptr }, ptr %var.load353, i32 0, i32 0
  %eq.lhs.len355 = load i64, ptr %eq.lhs.len354, align 8
  %eq.lhs.len356 = and i64 %eq.lhs.len355, 281474976710655
  %eq.rhs.len357 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len358 = and i64 %eq.rhs.len357, 281474976710655
  %eq.len359 = icmp eq i64 %eq.lhs.len356, %eq.rhs.len358
  br i1 %eq.len359, label %str.eq.then360, label %str.eq.else361

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %choice.exit371
  %step.val401 = load i64, ptr %loop.step.37, align 8
  %loop.next402 = add i64 %counter.load345, %step.val401
  store i64 %loop.next402, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  store ptr %cycle.prev.u344, ptr %var._322, align 8
  %var.load403 = load ptr, ptr %var.fe, align 8
  %fld.gep404 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load403, i32 0, i32 2
  %fld.load405 = load ptr, ptr %fld.gep404, align 8
  %var.load406 = load ptr, ptr %var.fn_locals, align 8
  %a.load407 = load ptr, ptr %var.fn_locals, align 8
  %a.null408 = icmp eq ptr %a.load407, null
  br i1 %a.null408, label %a.create409, label %a.after410

str.eq.then360:                                   ; preds = %loop.body.37
  %eq.lhs.data363 = getelementptr inbounds { i64, ptr }, ptr %var.load353, i32 0, i32 1
  %eq.lhs.data364 = load ptr, ptr %eq.lhs.data363, align 8
  %eq.rhs.data365 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp366 = call i32 @memcmp(ptr %eq.lhs.data364, ptr %eq.rhs.data365, i64 %eq.lhs.len356)
  %eq.cmp.zero367 = icmp eq i32 %eq.memcmp366, 0
  br label %str.eq.merge362

str.eq.else361:                                   ; preds = %loop.body.37
  br label %str.eq.merge362

str.eq.merge362:                                  ; preds = %str.eq.else361, %str.eq.then360
  %str.eq.result368 = phi i1 [ %eq.cmp.zero367, %str.eq.then360 ], [ false, %str.eq.else361 ]
  %str.neq369 = xor i1 %str.eq.result368, true
  br i1 %str.neq369, label %choice.then370, label %choice.exit371

choice.then370:                                   ; preds = %str.eq.merge362
  %var.load372 = load ptr, ptr %var.p, align 8
  %a.load373 = load ptr, ptr %var.fn_locals, align 8
  %a.null374 = icmp eq ptr %a.load373, null
  br i1 %a.null374, label %a.create375, label %a.after376

choice.exit371:                                   ; preds = %a.store387, %str.eq.merge362
  br label %loop.latch.37

a.create375:                                      ; preds = %choice.then370
  %arena.cur377 = call ptr @dva_arena_current()
  %a.create378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 24)
  %arena.cur379 = call ptr @dva_arena_current()
  %a.buf380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 128)
  %a.len.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 0
  store i64 0, ptr %a.len.gep381, align 8
  %a.data.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 1
  store ptr %a.buf380, ptr %a.data.gep382, align 8
  %a.cap.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 2
  store i64 16, ptr %a.cap.gep383, align 8
  store ptr %a.create378, ptr %var.fn_locals, align 8
  br label %a.after376

a.after376:                                       ; preds = %a.create375, %choice.then370
  %a.load2384 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check385

a.check385:                                       ; preds = %a.after376
  %a.len388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  %a.len389 = load i64, ptr %a.len388, align 8
  %a.cap390 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 2
  %a.cap391 = load i64, ptr %a.cap390, align 8
  %a.needs.grow392 = icmp eq i64 %a.len389, %a.cap391
  br i1 %a.needs.grow392, label %a.grow386, label %a.store387

a.grow386:                                        ; preds = %a.check385
  call void @dva_array_grow(ptr %a.load2384)
  br label %a.store387

a.store387:                                       ; preds = %a.grow386, %a.check385
  %a.cur.data393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 1
  %a.cur.data394 = load ptr, ptr %a.cur.data393, align 8
  %a.cur.len395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  %a.cur.len396 = load i64, ptr %a.cur.len395, align 8
  %a.elem.gep397 = getelementptr i64, ptr %a.cur.data394, i64 %a.cur.len396
  %slot.p2i398 = ptrtoint ptr %var.load372 to i64
  store i64 %slot.p2i398, ptr %a.elem.gep397, align 8
  %a.next.len399 = add i64 %a.cur.len396, 1
  %b.len.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  store i64 %a.next.len399, ptr %b.len.gep400, align 8
  br label %choice.exit371

a.create409:                                      ; preds = %loop.exit.37
  %arena.cur411 = call ptr @dva_arena_current()
  %a.create412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 24)
  %arena.cur413 = call ptr @dva_arena_current()
  %a.buf414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 128)
  %a.len.gep415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 0
  store i64 0, ptr %a.len.gep415, align 8
  %a.data.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 1
  store ptr %a.buf414, ptr %a.data.gep416, align 8
  %a.cap.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create412, i32 0, i32 2
  store i64 16, ptr %a.cap.gep417, align 8
  store ptr %a.create412, ptr %var.fn_locals, align 8
  br label %a.after410

a.after410:                                       ; preds = %a.create409, %loop.exit.37
  %a.load2418 = load ptr, ptr %var.fn_locals, align 8
  %var.load419 = load ptr, ptr %var.refs, align 8
  %a.load420 = load ptr, ptr %var.refs, align 8
  %a.null421 = icmp eq ptr %a.load420, null
  br i1 %a.null421, label %a.create422, label %a.after423

a.create422:                                      ; preds = %a.after410
  %arena.cur424 = call ptr @dva_arena_current()
  %a.create425 = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 24)
  %arena.cur426 = call ptr @dva_arena_current()
  %a.buf427 = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 128)
  %a.len.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create425, i32 0, i32 0
  store i64 0, ptr %a.len.gep428, align 8
  %a.data.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create425, i32 0, i32 1
  store ptr %a.buf427, ptr %a.data.gep429, align 8
  %a.cap.gep430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create425, i32 0, i32 2
  store i64 16, ptr %a.cap.gep430, align 8
  store ptr %a.create425, ptr %var.refs, align 8
  br label %a.after423

a.after423:                                       ; preds = %a.create422, %a.after410
  %a.load2431 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load405, ptr %a.load2418, ptr %a.load2431)
  br label %choice.exit

choice.case432:                                   ; preds = %choice.next316
  %pay.gep437 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr438 = load ptr, ptr %pay.gep437, align 8
  store ptr %payload.ptr438, ptr %var._439, align 8
  store ptr %payload.ptr438, ptr %var.be, align 8
  %var.load440 = load ptr, ptr %var.locals, align 8
  %a.load441 = load ptr, ptr %var.locals, align 8
  %a.null442 = icmp eq ptr %a.load441, null
  br i1 %a.null442, label %a.create443, label %a.after444

choice.next433:                                   ; preds = %choice.next316
  %tag.gep602 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id603 = load i64, ptr %tag.gep602, align 8
  %tag.match604 = icmp eq i64 %tag.id603, 7
  br i1 %tag.match604, label %choice.case600, label %choice.next601

a.create443:                                      ; preds = %choice.case432
  %arena.cur445 = call ptr @dva_arena_current()
  %a.create446 = call ptr @dva_arena_alloc(ptr %arena.cur445, i64 24)
  %arena.cur447 = call ptr @dva_arena_current()
  %a.buf448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 128)
  %a.len.gep449 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create446, i32 0, i32 0
  store i64 0, ptr %a.len.gep449, align 8
  %a.data.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create446, i32 0, i32 1
  store ptr %a.buf448, ptr %a.data.gep450, align 8
  %a.cap.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create446, i32 0, i32 2
  store i64 16, ptr %a.cap.gep451, align 8
  store ptr %a.create446, ptr %var.locals, align 8
  br label %a.after444

a.after444:                                       ; preds = %a.create443, %choice.case432
  %a.load2452 = load ptr, ptr %var.locals, align 8
  %call.res453 = call ptr @"dep_graph::copy_names"(ptr %a.load2452)
  store ptr %call.res453, ptr %var.blk_locals, align 8
  %var.load454 = load ptr, ptr %var.be, align 8
  %a.load455 = load ptr, ptr %var.be, align 8
  %a.null456 = icmp eq ptr %a.load455, null
  br i1 %a.null456, label %a.create457, label %a.after458

a.create457:                                      ; preds = %a.after444
  %arena.cur459 = call ptr @dva_arena_current()
  %a.create460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 24)
  %arena.cur461 = call ptr @dva_arena_current()
  %a.buf462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 128)
  %a.len.gep463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 0
  store i64 0, ptr %a.len.gep463, align 8
  %a.data.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 1
  store ptr %a.buf462, ptr %a.data.gep464, align 8
  %a.cap.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 2
  store i64 16, ptr %a.cap.gep465, align 8
  store ptr %a.create460, ptr %var.be, align 8
  br label %a.after458

a.after458:                                       ; preds = %a.create457, %a.after444
  %a.load2466 = load ptr, ptr %var.be, align 8
  %arr.cycle.len467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2466, i32 0, i32 0
  %arr.cycle.len468 = load i64, ptr %arr.cycle.len467, align 8
  %arr.cycle.data469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2466, i32 0, i32 1
  %arr.cycle.data470 = load ptr, ptr %arr.cycle.data469, align 8
  store i64 0, ptr %loop.idx.38, align 8
  %cycle.prev.u471 = load ptr, ptr %var._439, align 8
  br label %loop.header.38

loop.header.38:                                   ; preds = %loop.latch.38, %a.after458
  %counter.load472 = load i64, ptr %loop.idx.38, align 8
  %loop.cond473 = icmp slt i64 %counter.load472, %arr.cycle.len468
  br i1 %loop.cond473, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i474 = sub i64 %counter.load472, 0
  store i64 1, ptr %loop.step.38, align 8
  %arr.elem.gep475 = getelementptr i64, ptr %arr.cycle.data470, i64 %counter.load472
  %arr.elem.raw476 = load i64, ptr %arr.elem.gep475, align 8
  %slot.i2p477 = inttoptr i64 %arr.elem.raw476 to ptr
  store i64 %loop.rel.i474, ptr %var._i478, align 8
  store ptr %slot.i2p477, ptr %var._479, align 8
  store ptr %slot.i2p477, ptr %var.st, align 8
  %var.load480 = load ptr, ptr %var.st, align 8
  %tag.gep484 = getelementptr inbounds { i64, ptr }, ptr %var.load480, i32 0, i32 0
  %tag.id485 = load i64, ptr %tag.gep484, align 8
  %tag.match486 = icmp eq i64 %tag.id485, 6
  br i1 %tag.match486, label %choice.case482, label %choice.next483

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit481
  %step.val598 = load i64, ptr %loop.step.38, align 8
  %loop.next599 = add i64 %counter.load472, %step.val598
  store i64 %loop.next599, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %loop.exit.nat.38
  store ptr %cycle.prev.u471, ptr %var._439, align 8
  br label %choice.exit

choice.exit481:                                   ; preds = %a.after589, %choice.exit539
  br label %loop.latch.38

choice.case482:                                   ; preds = %loop.body.38
  %pay.gep487 = getelementptr inbounds { i64, ptr }, ptr %var.load480, i32 0, i32 1
  %payload.ptr488 = load ptr, ptr %pay.gep487, align 8
  store ptr %payload.ptr488, ptr %var._489, align 8
  store ptr %payload.ptr488, ptr %var.a, align 8
  %var.load490 = load ptr, ptr %var.a, align 8
  %fld.gep491 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load490, i32 0, i32 5
  %fld.load492 = load ptr, ptr %fld.gep491, align 8
  %var.load493 = load ptr, ptr %var.blk_locals, align 8
  %a.load494 = load ptr, ptr %var.blk_locals, align 8
  %a.null495 = icmp eq ptr %a.load494, null
  br i1 %a.null495, label %a.create496, label %a.after497

choice.next483:                                   ; preds = %loop.body.38
  %var.load571 = load ptr, ptr %var.st, align 8
  %var.load572 = load ptr, ptr %var.blk_locals, align 8
  %a.load573 = load ptr, ptr %var.blk_locals, align 8
  %a.null574 = icmp eq ptr %a.load573, null
  br i1 %a.null574, label %a.create575, label %a.after576

a.create496:                                      ; preds = %choice.case482
  %arena.cur498 = call ptr @dva_arena_current()
  %a.create499 = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 24)
  %arena.cur500 = call ptr @dva_arena_current()
  %a.buf501 = call ptr @dva_arena_alloc(ptr %arena.cur500, i64 128)
  %a.len.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create499, i32 0, i32 0
  store i64 0, ptr %a.len.gep502, align 8
  %a.data.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create499, i32 0, i32 1
  store ptr %a.buf501, ptr %a.data.gep503, align 8
  %a.cap.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create499, i32 0, i32 2
  store i64 16, ptr %a.cap.gep504, align 8
  store ptr %a.create499, ptr %var.blk_locals, align 8
  br label %a.after497

a.after497:                                       ; preds = %a.create496, %choice.case482
  %a.load2505 = load ptr, ptr %var.blk_locals, align 8
  %var.load506 = load ptr, ptr %var.refs, align 8
  %a.load507 = load ptr, ptr %var.refs, align 8
  %a.null508 = icmp eq ptr %a.load507, null
  br i1 %a.null508, label %a.create509, label %a.after510

a.create509:                                      ; preds = %a.after497
  %arena.cur511 = call ptr @dva_arena_current()
  %a.create512 = call ptr @dva_arena_alloc(ptr %arena.cur511, i64 24)
  %arena.cur513 = call ptr @dva_arena_current()
  %a.buf514 = call ptr @dva_arena_alloc(ptr %arena.cur513, i64 128)
  %a.len.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create512, i32 0, i32 0
  store i64 0, ptr %a.len.gep515, align 8
  %a.data.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create512, i32 0, i32 1
  store ptr %a.buf514, ptr %a.data.gep516, align 8
  %a.cap.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create512, i32 0, i32 2
  store i64 16, ptr %a.cap.gep517, align 8
  store ptr %a.create512, ptr %var.refs, align 8
  br label %a.after510

a.after510:                                       ; preds = %a.create509, %a.after497
  %a.load2518 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load492, ptr %a.load2505, ptr %a.load2518)
  %var.load519 = load ptr, ptr %var.a, align 8
  %fld.gep520 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load519, i32 0, i32 0
  %fld.load521 = load ptr, ptr %fld.gep520, align 8
  %eq.lhs.len522 = getelementptr inbounds { i64, ptr }, ptr %fld.load521, i32 0, i32 0
  %eq.lhs.len523 = load i64, ptr %eq.lhs.len522, align 8
  %eq.lhs.len524 = and i64 %eq.lhs.len523, 281474976710655
  %eq.rhs.len525 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len526 = and i64 %eq.rhs.len525, 281474976710655
  %eq.len527 = icmp eq i64 %eq.lhs.len524, %eq.rhs.len526
  br i1 %eq.len527, label %str.eq.then528, label %str.eq.else529

str.eq.then528:                                   ; preds = %a.after510
  %eq.lhs.data531 = getelementptr inbounds { i64, ptr }, ptr %fld.load521, i32 0, i32 1
  %eq.lhs.data532 = load ptr, ptr %eq.lhs.data531, align 8
  %eq.rhs.data533 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp534 = call i32 @memcmp(ptr %eq.lhs.data532, ptr %eq.rhs.data533, i64 %eq.lhs.len524)
  %eq.cmp.zero535 = icmp eq i32 %eq.memcmp534, 0
  br label %str.eq.merge530

str.eq.else529:                                   ; preds = %a.after510
  br label %str.eq.merge530

str.eq.merge530:                                  ; preds = %str.eq.else529, %str.eq.then528
  %str.eq.result536 = phi i1 [ %eq.cmp.zero535, %str.eq.then528 ], [ false, %str.eq.else529 ]
  %str.neq537 = xor i1 %str.eq.result536, true
  br i1 %str.neq537, label %choice.then538, label %choice.exit539

choice.then538:                                   ; preds = %str.eq.merge530
  %var.load540 = load ptr, ptr %var.a, align 8
  %fld.gep541 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load540, i32 0, i32 0
  %fld.load542 = load ptr, ptr %fld.gep541, align 8
  %a.load543 = load ptr, ptr %var.blk_locals, align 8
  %a.null544 = icmp eq ptr %a.load543, null
  br i1 %a.null544, label %a.create545, label %a.after546

choice.exit539:                                   ; preds = %a.store557, %str.eq.merge530
  br label %choice.exit481

a.create545:                                      ; preds = %choice.then538
  %arena.cur547 = call ptr @dva_arena_current()
  %a.create548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 24)
  %arena.cur549 = call ptr @dva_arena_current()
  %a.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 128)
  %a.len.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 0
  store i64 0, ptr %a.len.gep551, align 8
  %a.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 1
  store ptr %a.buf550, ptr %a.data.gep552, align 8
  %a.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep553, align 8
  store ptr %a.create548, ptr %var.blk_locals, align 8
  br label %a.after546

a.after546:                                       ; preds = %a.create545, %choice.then538
  %a.load2554 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check555

a.check555:                                       ; preds = %a.after546
  %a.len558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  %a.len559 = load i64, ptr %a.len558, align 8
  %a.cap560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 2
  %a.cap561 = load i64, ptr %a.cap560, align 8
  %a.needs.grow562 = icmp eq i64 %a.len559, %a.cap561
  br i1 %a.needs.grow562, label %a.grow556, label %a.store557

a.grow556:                                        ; preds = %a.check555
  call void @dva_array_grow(ptr %a.load2554)
  br label %a.store557

a.store557:                                       ; preds = %a.grow556, %a.check555
  %a.cur.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 1
  %a.cur.data564 = load ptr, ptr %a.cur.data563, align 8
  %a.cur.len565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  %a.cur.len566 = load i64, ptr %a.cur.len565, align 8
  %a.elem.gep567 = getelementptr i64, ptr %a.cur.data564, i64 %a.cur.len566
  %slot.p2i568 = ptrtoint ptr %fld.load542 to i64
  store i64 %slot.p2i568, ptr %a.elem.gep567, align 8
  %a.next.len569 = add i64 %a.cur.len566, 1
  %b.len.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  store i64 %a.next.len569, ptr %b.len.gep570, align 8
  br label %choice.exit539

a.create575:                                      ; preds = %choice.next483
  %arena.cur577 = call ptr @dva_arena_current()
  %a.create578 = call ptr @dva_arena_alloc(ptr %arena.cur577, i64 24)
  %arena.cur579 = call ptr @dva_arena_current()
  %a.buf580 = call ptr @dva_arena_alloc(ptr %arena.cur579, i64 128)
  %a.len.gep581 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create578, i32 0, i32 0
  store i64 0, ptr %a.len.gep581, align 8
  %a.data.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create578, i32 0, i32 1
  store ptr %a.buf580, ptr %a.data.gep582, align 8
  %a.cap.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create578, i32 0, i32 2
  store i64 16, ptr %a.cap.gep583, align 8
  store ptr %a.create578, ptr %var.blk_locals, align 8
  br label %a.after576

a.after576:                                       ; preds = %a.create575, %choice.next483
  %a.load2584 = load ptr, ptr %var.blk_locals, align 8
  %var.load585 = load ptr, ptr %var.refs, align 8
  %a.load586 = load ptr, ptr %var.refs, align 8
  %a.null587 = icmp eq ptr %a.load586, null
  br i1 %a.null587, label %a.create588, label %a.after589

a.create588:                                      ; preds = %a.after576
  %arena.cur590 = call ptr @dva_arena_current()
  %a.create591 = call ptr @dva_arena_alloc(ptr %arena.cur590, i64 24)
  %arena.cur592 = call ptr @dva_arena_current()
  %a.buf593 = call ptr @dva_arena_alloc(ptr %arena.cur592, i64 128)
  %a.len.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 0
  store i64 0, ptr %a.len.gep594, align 8
  %a.data.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 1
  store ptr %a.buf593, ptr %a.data.gep595, align 8
  %a.cap.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create591, i32 0, i32 2
  store i64 16, ptr %a.cap.gep596, align 8
  store ptr %a.create591, ptr %var.refs, align 8
  br label %a.after589

a.after589:                                       ; preds = %a.create588, %a.after576
  %a.load2597 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load571, ptr %a.load2584, ptr %a.load2597)
  br label %choice.exit481

choice.case600:                                   ; preds = %choice.next433
  %pay.gep605 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr606 = load ptr, ptr %pay.gep605, align 8
  store ptr %payload.ptr606, ptr %var._607, align 8
  store ptr %payload.ptr606, ptr %var.ch, align 8
  %var.load608 = load ptr, ptr %var.ch, align 8
  %fld.gep609 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load608, i32 0, i32 0
  %fld.load610 = load ptr, ptr %fld.gep609, align 8
  %var.load611 = load ptr, ptr %var.locals, align 8
  %a.load612 = load ptr, ptr %var.locals, align 8
  %a.null613 = icmp eq ptr %a.load612, null
  br i1 %a.null613, label %a.create614, label %a.after615

choice.next601:                                   ; preds = %choice.next433
  %tag.gep940 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id941 = load i64, ptr %tag.gep940, align 8
  %tag.match942 = icmp eq i64 %tag.id941, 15
  br i1 %tag.match942, label %choice.case938, label %choice.next939

a.create614:                                      ; preds = %choice.case600
  %arena.cur616 = call ptr @dva_arena_current()
  %a.create617 = call ptr @dva_arena_alloc(ptr %arena.cur616, i64 24)
  %arena.cur618 = call ptr @dva_arena_current()
  %a.buf619 = call ptr @dva_arena_alloc(ptr %arena.cur618, i64 128)
  %a.len.gep620 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 0
  store i64 0, ptr %a.len.gep620, align 8
  %a.data.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 1
  store ptr %a.buf619, ptr %a.data.gep621, align 8
  %a.cap.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 2
  store i64 16, ptr %a.cap.gep622, align 8
  store ptr %a.create617, ptr %var.locals, align 8
  br label %a.after615

a.after615:                                       ; preds = %a.create614, %choice.case600
  %a.load2623 = load ptr, ptr %var.locals, align 8
  %var.load624 = load ptr, ptr %var.refs, align 8
  %a.load625 = load ptr, ptr %var.refs, align 8
  %a.null626 = icmp eq ptr %a.load625, null
  br i1 %a.null626, label %a.create627, label %a.after628

a.create627:                                      ; preds = %a.after615
  %arena.cur629 = call ptr @dva_arena_current()
  %a.create630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 24)
  %arena.cur631 = call ptr @dva_arena_current()
  %a.buf632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 128)
  %a.len.gep633 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 0
  store i64 0, ptr %a.len.gep633, align 8
  %a.data.gep634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 1
  store ptr %a.buf632, ptr %a.data.gep634, align 8
  %a.cap.gep635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 2
  store i64 16, ptr %a.cap.gep635, align 8
  store ptr %a.create630, ptr %var.refs, align 8
  br label %a.after628

a.after628:                                       ; preds = %a.create627, %a.after615
  %a.load2636 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load610, ptr %a.load2623, ptr %a.load2636)
  %var.load637 = load ptr, ptr %var.ch, align 8
  %fld.gep638 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load637, i32 0, i32 2
  %fld.load639 = load ptr, ptr %fld.gep638, align 8
  %arr.cycle.len640 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load639, i32 0, i32 0
  %arr.cycle.len641 = load i64, ptr %arr.cycle.len640, align 8
  %arr.cycle.data642 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load639, i32 0, i32 1
  %arr.cycle.data643 = load ptr, ptr %arr.cycle.data642, align 8
  store i64 0, ptr %loop.idx.39, align 8
  %cycle.prev.u644 = load ptr, ptr %var._607, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %a.after628
  %counter.load645 = load i64, ptr %loop.idx.39, align 8
  %loop.cond646 = icmp slt i64 %counter.load645, %arr.cycle.len641
  br i1 %loop.cond646, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i647 = sub i64 %counter.load645, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep648 = getelementptr i64, ptr %arr.cycle.data643, i64 %counter.load645
  %arr.elem.raw649 = load i64, ptr %arr.elem.gep648, align 8
  %slot.i2p650 = inttoptr i64 %arr.elem.raw649 to ptr
  store i64 %loop.rel.i647, ptr %var._i651, align 8
  store ptr %slot.i2p650, ptr %var._652, align 8
  store ptr %slot.i2p650, ptr %var.br, align 8
  %var.load653 = load ptr, ptr %var.locals, align 8
  %a.load654 = load ptr, ptr %var.locals, align 8
  %a.null655 = icmp eq ptr %a.load654, null
  br i1 %a.null655, label %a.create656, label %a.after657

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %loop.exit.42
  %step.val936 = load i64, ptr %loop.step.39, align 8
  %loop.next937 = add i64 %counter.load645, %step.val936
  store i64 %loop.next937, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  store ptr %cycle.prev.u644, ptr %var._607, align 8
  br label %choice.exit

a.create656:                                      ; preds = %loop.body.39
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
  store ptr %a.create659, ptr %var.locals, align 8
  br label %a.after657

a.after657:                                       ; preds = %a.create656, %loop.body.39
  %a.load2665 = load ptr, ptr %var.locals, align 8
  %call.res666 = call ptr @"dep_graph::copy_names"(ptr %a.load2665)
  store ptr %call.res666, ptr %var.br_locals, align 8
  %var.load667 = load ptr, ptr %var.br, align 8
  %fld.gep668 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load667, i32 0, i32 4
  %fld.load669 = load ptr, ptr %fld.gep668, align 8
  %arr.cycle.len670 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load669, i32 0, i32 0
  %arr.cycle.len671 = load i64, ptr %arr.cycle.len670, align 8
  %arr.cycle.data672 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load669, i32 0, i32 1
  %arr.cycle.data673 = load ptr, ptr %arr.cycle.data672, align 8
  store i64 0, ptr %loop.idx.40, align 8
  %cycle.prev.u674 = load ptr, ptr %var._652, align 8
  %cycle.prev.i = load i64, ptr %var._i651, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after657
  %counter.load675 = load i64, ptr %loop.idx.40, align 8
  %loop.cond676 = icmp slt i64 %counter.load675, %arr.cycle.len671
  br i1 %loop.cond676, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i677 = sub i64 %counter.load675, 0
  store i64 1, ptr %loop.step.40, align 8
  %arr.elem.gep678 = getelementptr i64, ptr %arr.cycle.data673, i64 %counter.load675
  %arr.elem.raw679 = load i64, ptr %arr.elem.gep678, align 8
  %slot.i2p680 = inttoptr i64 %arr.elem.raw679 to ptr
  store i64 %loop.rel.i677, ptr %var._i681, align 8
  store ptr %slot.i2p680, ptr %var._682, align 8
  store ptr %slot.i2p680, ptr %var.bv, align 8
  %var.load683 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len684 = getelementptr inbounds { i64, ptr }, ptr %var.load683, i32 0, i32 0
  %eq.lhs.len685 = load i64, ptr %eq.lhs.len684, align 8
  %eq.lhs.len686 = and i64 %eq.lhs.len685, 281474976710655
  %eq.rhs.len687 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len688 = and i64 %eq.rhs.len687, 281474976710655
  %eq.len689 = icmp eq i64 %eq.lhs.len686, %eq.rhs.len688
  br i1 %eq.len689, label %str.eq.then690, label %str.eq.else691

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit701
  %step.val731 = load i64, ptr %loop.step.40, align 8
  %loop.next732 = add i64 %counter.load675, %step.val731
  store i64 %loop.next732, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  store ptr %cycle.prev.u674, ptr %var._652, align 8
  store i64 %cycle.prev.i, ptr %var._i651, align 8
  %var.load733 = load ptr, ptr %var.br, align 8
  %fld.gep734 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load733, i32 0, i32 6
  %fld.load735 = load ptr, ptr %fld.gep734, align 8
  %var.load736 = load ptr, ptr %var.br_locals, align 8
  %a.load737 = load ptr, ptr %var.br_locals, align 8
  %a.null738 = icmp eq ptr %a.load737, null
  br i1 %a.null738, label %a.create739, label %a.after740

str.eq.then690:                                   ; preds = %loop.body.40
  %eq.lhs.data693 = getelementptr inbounds { i64, ptr }, ptr %var.load683, i32 0, i32 1
  %eq.lhs.data694 = load ptr, ptr %eq.lhs.data693, align 8
  %eq.rhs.data695 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp696 = call i32 @memcmp(ptr %eq.lhs.data694, ptr %eq.rhs.data695, i64 %eq.lhs.len686)
  %eq.cmp.zero697 = icmp eq i32 %eq.memcmp696, 0
  br label %str.eq.merge692

str.eq.else691:                                   ; preds = %loop.body.40
  br label %str.eq.merge692

str.eq.merge692:                                  ; preds = %str.eq.else691, %str.eq.then690
  %str.eq.result698 = phi i1 [ %eq.cmp.zero697, %str.eq.then690 ], [ false, %str.eq.else691 ]
  %str.neq699 = xor i1 %str.eq.result698, true
  br i1 %str.neq699, label %choice.then700, label %choice.exit701

choice.then700:                                   ; preds = %str.eq.merge692
  %var.load702 = load ptr, ptr %var.bv, align 8
  %a.load703 = load ptr, ptr %var.br_locals, align 8
  %a.null704 = icmp eq ptr %a.load703, null
  br i1 %a.null704, label %a.create705, label %a.after706

choice.exit701:                                   ; preds = %a.store717, %str.eq.merge692
  br label %loop.latch.40

a.create705:                                      ; preds = %choice.then700
  %arena.cur707 = call ptr @dva_arena_current()
  %a.create708 = call ptr @dva_arena_alloc(ptr %arena.cur707, i64 24)
  %arena.cur709 = call ptr @dva_arena_current()
  %a.buf710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 128)
  %a.len.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create708, i32 0, i32 0
  store i64 0, ptr %a.len.gep711, align 8
  %a.data.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create708, i32 0, i32 1
  store ptr %a.buf710, ptr %a.data.gep712, align 8
  %a.cap.gep713 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create708, i32 0, i32 2
  store i64 16, ptr %a.cap.gep713, align 8
  store ptr %a.create708, ptr %var.br_locals, align 8
  br label %a.after706

a.after706:                                       ; preds = %a.create705, %choice.then700
  %a.load2714 = load ptr, ptr %var.br_locals, align 8
  br label %a.check715

a.check715:                                       ; preds = %a.after706
  %a.len718 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2714, i32 0, i32 0
  %a.len719 = load i64, ptr %a.len718, align 8
  %a.cap720 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2714, i32 0, i32 2
  %a.cap721 = load i64, ptr %a.cap720, align 8
  %a.needs.grow722 = icmp eq i64 %a.len719, %a.cap721
  br i1 %a.needs.grow722, label %a.grow716, label %a.store717

a.grow716:                                        ; preds = %a.check715
  call void @dva_array_grow(ptr %a.load2714)
  br label %a.store717

a.store717:                                       ; preds = %a.grow716, %a.check715
  %a.cur.data723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2714, i32 0, i32 1
  %a.cur.data724 = load ptr, ptr %a.cur.data723, align 8
  %a.cur.len725 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2714, i32 0, i32 0
  %a.cur.len726 = load i64, ptr %a.cur.len725, align 8
  %a.elem.gep727 = getelementptr i64, ptr %a.cur.data724, i64 %a.cur.len726
  %slot.p2i728 = ptrtoint ptr %var.load702 to i64
  store i64 %slot.p2i728, ptr %a.elem.gep727, align 8
  %a.next.len729 = add i64 %a.cur.len726, 1
  %b.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2714, i32 0, i32 0
  store i64 %a.next.len729, ptr %b.len.gep730, align 8
  br label %choice.exit701

a.create739:                                      ; preds = %loop.exit.40
  %arena.cur741 = call ptr @dva_arena_current()
  %a.create742 = call ptr @dva_arena_alloc(ptr %arena.cur741, i64 24)
  %arena.cur743 = call ptr @dva_arena_current()
  %a.buf744 = call ptr @dva_arena_alloc(ptr %arena.cur743, i64 128)
  %a.len.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create742, i32 0, i32 0
  store i64 0, ptr %a.len.gep745, align 8
  %a.data.gep746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create742, i32 0, i32 1
  store ptr %a.buf744, ptr %a.data.gep746, align 8
  %a.cap.gep747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create742, i32 0, i32 2
  store i64 16, ptr %a.cap.gep747, align 8
  store ptr %a.create742, ptr %var.br_locals, align 8
  br label %a.after740

a.after740:                                       ; preds = %a.create739, %loop.exit.40
  %a.load2748 = load ptr, ptr %var.br_locals, align 8
  %var.load749 = load ptr, ptr %var.refs, align 8
  %a.load750 = load ptr, ptr %var.refs, align 8
  %a.null751 = icmp eq ptr %a.load750, null
  br i1 %a.null751, label %a.create752, label %a.after753

a.create752:                                      ; preds = %a.after740
  %arena.cur754 = call ptr @dva_arena_current()
  %a.create755 = call ptr @dva_arena_alloc(ptr %arena.cur754, i64 24)
  %arena.cur756 = call ptr @dva_arena_current()
  %a.buf757 = call ptr @dva_arena_alloc(ptr %arena.cur756, i64 128)
  %a.len.gep758 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 0
  store i64 0, ptr %a.len.gep758, align 8
  %a.data.gep759 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 1
  store ptr %a.buf757, ptr %a.data.gep759, align 8
  %a.cap.gep760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create755, i32 0, i32 2
  store i64 16, ptr %a.cap.gep760, align 8
  store ptr %a.create755, ptr %var.refs, align 8
  br label %a.after753

a.after753:                                       ; preds = %a.create752, %a.after740
  %a.load2761 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load735, ptr %a.load2748, ptr %a.load2761)
  %var.load762 = load ptr, ptr %var.br, align 8
  %fld.gep763 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load762, i32 0, i32 2
  %fld.load764 = load ptr, ptr %fld.gep763, align 8
  %var.load765 = load ptr, ptr %var.br_locals, align 8
  %a.load766 = load ptr, ptr %var.br_locals, align 8
  %a.null767 = icmp eq ptr %a.load766, null
  br i1 %a.null767, label %a.create768, label %a.after769

a.create768:                                      ; preds = %a.after753
  %arena.cur770 = call ptr @dva_arena_current()
  %a.create771 = call ptr @dva_arena_alloc(ptr %arena.cur770, i64 24)
  %arena.cur772 = call ptr @dva_arena_current()
  %a.buf773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 128)
  %a.len.gep774 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 0
  store i64 0, ptr %a.len.gep774, align 8
  %a.data.gep775 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 1
  store ptr %a.buf773, ptr %a.data.gep775, align 8
  %a.cap.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create771, i32 0, i32 2
  store i64 16, ptr %a.cap.gep776, align 8
  store ptr %a.create771, ptr %var.br_locals, align 8
  br label %a.after769

a.after769:                                       ; preds = %a.create768, %a.after753
  %a.load2777 = load ptr, ptr %var.br_locals, align 8
  %var.load778 = load ptr, ptr %var.refs, align 8
  %a.load779 = load ptr, ptr %var.refs, align 8
  %a.null780 = icmp eq ptr %a.load779, null
  br i1 %a.null780, label %a.create781, label %a.after782

a.create781:                                      ; preds = %a.after769
  %arena.cur783 = call ptr @dva_arena_current()
  %a.create784 = call ptr @dva_arena_alloc(ptr %arena.cur783, i64 24)
  %arena.cur785 = call ptr @dva_arena_current()
  %a.buf786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 128)
  %a.len.gep787 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create784, i32 0, i32 0
  store i64 0, ptr %a.len.gep787, align 8
  %a.data.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create784, i32 0, i32 1
  store ptr %a.buf786, ptr %a.data.gep788, align 8
  %a.cap.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create784, i32 0, i32 2
  store i64 16, ptr %a.cap.gep789, align 8
  store ptr %a.create784, ptr %var.refs, align 8
  br label %a.after782

a.after782:                                       ; preds = %a.create781, %a.after769
  %a.load2790 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load764, ptr %a.load2777, ptr %a.load2790)
  %var.load791 = load ptr, ptr %var.br, align 8
  %fld.gep792 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load791, i32 0, i32 1
  %fld.load793 = load ptr, ptr %fld.gep792, align 8
  %arr.cycle.len794 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load793, i32 0, i32 0
  %arr.cycle.len795 = load i64, ptr %arr.cycle.len794, align 8
  %arr.cycle.data796 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load793, i32 0, i32 1
  %arr.cycle.data797 = load ptr, ptr %arr.cycle.data796, align 8
  store i64 0, ptr %loop.idx.41, align 8
  %cycle.prev.u798 = load ptr, ptr %var._652, align 8
  %cycle.prev.i799 = load i64, ptr %var._i651, align 8
  br label %loop.header.41

loop.header.41:                                   ; preds = %loop.latch.41, %a.after782
  %counter.load800 = load i64, ptr %loop.idx.41, align 8
  %loop.cond801 = icmp slt i64 %counter.load800, %arr.cycle.len795
  br i1 %loop.cond801, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i802 = sub i64 %counter.load800, 0
  store i64 1, ptr %loop.step.41, align 8
  %arr.elem.gep803 = getelementptr i64, ptr %arr.cycle.data797, i64 %counter.load800
  %arr.elem.raw804 = load i64, ptr %arr.elem.gep803, align 8
  %slot.i2p805 = inttoptr i64 %arr.elem.raw804 to ptr
  store i64 %loop.rel.i802, ptr %var._i806, align 8
  store ptr %slot.i2p805, ptr %var._807, align 8
  store ptr %slot.i2p805, ptr %var.cv, align 8
  %var.load808 = load ptr, ptr %var.cv, align 8
  %var.load809 = load ptr, ptr %var.br_locals, align 8
  %a.load810 = load ptr, ptr %var.br_locals, align 8
  %a.null811 = icmp eq ptr %a.load810, null
  br i1 %a.null811, label %a.create812, label %a.after813

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %a.after826
  %step.val835 = load i64, ptr %loop.step.41, align 8
  %loop.next836 = add i64 %counter.load800, %step.val835
  store i64 %loop.next836, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  store ptr %cycle.prev.u798, ptr %var._652, align 8
  store i64 %cycle.prev.i799, ptr %var._i651, align 8
  %var.load837 = load ptr, ptr %var.br, align 8
  %fld.gep838 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load837, i32 0, i32 3
  %fld.load839 = load ptr, ptr %fld.gep838, align 8
  %arr.cycle.len840 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load839, i32 0, i32 0
  %arr.cycle.len841 = load i64, ptr %arr.cycle.len840, align 8
  %arr.cycle.data842 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load839, i32 0, i32 1
  %arr.cycle.data843 = load ptr, ptr %arr.cycle.data842, align 8
  store i64 0, ptr %loop.idx.42, align 8
  %cycle.prev.u844 = load ptr, ptr %var._652, align 8
  %cycle.prev.i845 = load i64, ptr %var._i651, align 8
  br label %loop.header.42

a.create812:                                      ; preds = %loop.body.41
  %arena.cur814 = call ptr @dva_arena_current()
  %a.create815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 24)
  %arena.cur816 = call ptr @dva_arena_current()
  %a.buf817 = call ptr @dva_arena_alloc(ptr %arena.cur816, i64 128)
  %a.len.gep818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 0
  store i64 0, ptr %a.len.gep818, align 8
  %a.data.gep819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 1
  store ptr %a.buf817, ptr %a.data.gep819, align 8
  %a.cap.gep820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 2
  store i64 16, ptr %a.cap.gep820, align 8
  store ptr %a.create815, ptr %var.br_locals, align 8
  br label %a.after813

a.after813:                                       ; preds = %a.create812, %loop.body.41
  %a.load2821 = load ptr, ptr %var.br_locals, align 8
  %var.load822 = load ptr, ptr %var.refs, align 8
  %a.load823 = load ptr, ptr %var.refs, align 8
  %a.null824 = icmp eq ptr %a.load823, null
  br i1 %a.null824, label %a.create825, label %a.after826

a.create825:                                      ; preds = %a.after813
  %arena.cur827 = call ptr @dva_arena_current()
  %a.create828 = call ptr @dva_arena_alloc(ptr %arena.cur827, i64 24)
  %arena.cur829 = call ptr @dva_arena_current()
  %a.buf830 = call ptr @dva_arena_alloc(ptr %arena.cur829, i64 128)
  %a.len.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create828, i32 0, i32 0
  store i64 0, ptr %a.len.gep831, align 8
  %a.data.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create828, i32 0, i32 1
  store ptr %a.buf830, ptr %a.data.gep832, align 8
  %a.cap.gep833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create828, i32 0, i32 2
  store i64 16, ptr %a.cap.gep833, align 8
  store ptr %a.create828, ptr %var.refs, align 8
  br label %a.after826

a.after826:                                       ; preds = %a.create825, %a.after813
  %a.load2834 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load808, ptr %a.load2821, ptr %a.load2834)
  br label %loop.latch.41

loop.header.42:                                   ; preds = %loop.latch.42, %loop.exit.41
  %counter.load846 = load i64, ptr %loop.idx.42, align 8
  %loop.cond847 = icmp slt i64 %counter.load846, %arr.cycle.len841
  br i1 %loop.cond847, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i848 = sub i64 %counter.load846, 0
  store i64 1, ptr %loop.step.42, align 8
  %arr.elem.gep849 = getelementptr i64, ptr %arr.cycle.data843, i64 %counter.load846
  %arr.elem.raw850 = load i64, ptr %arr.elem.gep849, align 8
  %slot.i2p851 = inttoptr i64 %arr.elem.raw850 to ptr
  store i64 %loop.rel.i848, ptr %var._i852, align 8
  store ptr %slot.i2p851, ptr %var._853, align 8
  store ptr %slot.i2p851, ptr %var.vn, align 8
  %var.load854 = load ptr, ptr %var.vn, align 8
  %eq.lhs.len855 = getelementptr inbounds { i64, ptr }, ptr %var.load854, i32 0, i32 0
  %eq.lhs.len856 = load i64, ptr %eq.lhs.len855, align 8
  %eq.lhs.len857 = and i64 %eq.lhs.len856, 281474976710655
  %eq.rhs.len858 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len859 = and i64 %eq.rhs.len858, 281474976710655
  %eq.len860 = icmp eq i64 %eq.lhs.len857, %eq.rhs.len859
  br i1 %eq.len860, label %str.eq.then861, label %str.eq.else862

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit904
  %step.val934 = load i64, ptr %loop.step.42, align 8
  %loop.next935 = add i64 %counter.load846, %step.val934
  store i64 %loop.next935, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  store ptr %cycle.prev.u844, ptr %var._652, align 8
  store i64 %cycle.prev.i845, ptr %var._i651, align 8
  br label %loop.latch.39

str.eq.then861:                                   ; preds = %loop.body.42
  %eq.lhs.data864 = getelementptr inbounds { i64, ptr }, ptr %var.load854, i32 0, i32 1
  %eq.lhs.data865 = load ptr, ptr %eq.lhs.data864, align 8
  %eq.rhs.data866 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp867 = call i32 @memcmp(ptr %eq.lhs.data865, ptr %eq.rhs.data866, i64 %eq.lhs.len857)
  %eq.cmp.zero868 = icmp eq i32 %eq.memcmp867, 0
  br label %str.eq.merge863

str.eq.else862:                                   ; preds = %loop.body.42
  br label %str.eq.merge863

str.eq.merge863:                                  ; preds = %str.eq.else862, %str.eq.then861
  %str.eq.result869 = phi i1 [ %eq.cmp.zero868, %str.eq.then861 ], [ false, %str.eq.else862 ]
  %str.neq870 = xor i1 %str.eq.result869, true
  br i1 %str.neq870, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %str.eq.merge863
  %var.load871 = load ptr, ptr %var.br_locals, align 8
  %a.load872 = load ptr, ptr %var.br_locals, align 8
  %a.null873 = icmp eq ptr %a.load872, null
  br i1 %a.null873, label %a.create874, label %a.after875

and.43.else:                                      ; preds = %str.eq.merge863
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %a.after875
  %and.43.phi = phi i1 [ %nottmp886, %a.after875 ], [ %str.neq870, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

a.create874:                                      ; preds = %and.43.then
  %arena.cur876 = call ptr @dva_arena_current()
  %a.create877 = call ptr @dva_arena_alloc(ptr %arena.cur876, i64 24)
  %arena.cur878 = call ptr @dva_arena_current()
  %a.buf879 = call ptr @dva_arena_alloc(ptr %arena.cur878, i64 128)
  %a.len.gep880 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 0
  store i64 0, ptr %a.len.gep880, align 8
  %a.data.gep881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 1
  store ptr %a.buf879, ptr %a.data.gep881, align 8
  %a.cap.gep882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create877, i32 0, i32 2
  store i64 16, ptr %a.cap.gep882, align 8
  store ptr %a.create877, ptr %var.br_locals, align 8
  br label %a.after875

a.after875:                                       ; preds = %a.create874, %and.43.then
  %a.load2883 = load ptr, ptr %var.br_locals, align 8
  %var.load884 = load ptr, ptr %var.vn, align 8
  %call.res885 = call i1 @"dep_graph::has_name"(ptr %a.load2883, ptr %var.load884)
  %nottmp886 = xor i1 %call.res885, true
  br label %and.43.exit

and.44.then:                                      ; preds = %and.43.exit
  %var.load887 = load ptr, ptr %var.refs, align 8
  %a.load888 = load ptr, ptr %var.refs, align 8
  %a.null889 = icmp eq ptr %a.load888, null
  br i1 %a.null889, label %a.create890, label %a.after891

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %a.after891
  %and.44.phi = phi i1 [ %nottmp902, %a.after891 ], [ %and.43.phi, %and.44.else ]
  br i1 %and.44.phi, label %choice.then903, label %choice.exit904

a.create890:                                      ; preds = %and.44.then
  %arena.cur892 = call ptr @dva_arena_current()
  %a.create893 = call ptr @dva_arena_alloc(ptr %arena.cur892, i64 24)
  %arena.cur894 = call ptr @dva_arena_current()
  %a.buf895 = call ptr @dva_arena_alloc(ptr %arena.cur894, i64 128)
  %a.len.gep896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create893, i32 0, i32 0
  store i64 0, ptr %a.len.gep896, align 8
  %a.data.gep897 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create893, i32 0, i32 1
  store ptr %a.buf895, ptr %a.data.gep897, align 8
  %a.cap.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create893, i32 0, i32 2
  store i64 16, ptr %a.cap.gep898, align 8
  store ptr %a.create893, ptr %var.refs, align 8
  br label %a.after891

a.after891:                                       ; preds = %a.create890, %and.44.then
  %a.load2899 = load ptr, ptr %var.refs, align 8
  %var.load900 = load ptr, ptr %var.vn, align 8
  %call.res901 = call i1 @"dep_graph::has_name"(ptr %a.load2899, ptr %var.load900)
  %nottmp902 = xor i1 %call.res901, true
  br label %and.44.exit

choice.then903:                                   ; preds = %and.44.exit
  %var.load905 = load ptr, ptr %var.vn, align 8
  %a.load906 = load ptr, ptr %var.refs, align 8
  %a.null907 = icmp eq ptr %a.load906, null
  br i1 %a.null907, label %a.create908, label %a.after909

choice.exit904:                                   ; preds = %a.store920, %and.44.exit
  br label %loop.latch.42

a.create908:                                      ; preds = %choice.then903
  %arena.cur910 = call ptr @dva_arena_current()
  %a.create911 = call ptr @dva_arena_alloc(ptr %arena.cur910, i64 24)
  %arena.cur912 = call ptr @dva_arena_current()
  %a.buf913 = call ptr @dva_arena_alloc(ptr %arena.cur912, i64 128)
  %a.len.gep914 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 0
  store i64 0, ptr %a.len.gep914, align 8
  %a.data.gep915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 1
  store ptr %a.buf913, ptr %a.data.gep915, align 8
  %a.cap.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create911, i32 0, i32 2
  store i64 16, ptr %a.cap.gep916, align 8
  store ptr %a.create911, ptr %var.refs, align 8
  br label %a.after909

a.after909:                                       ; preds = %a.create908, %choice.then903
  %a.load2917 = load ptr, ptr %var.refs, align 8
  br label %a.check918

a.check918:                                       ; preds = %a.after909
  %a.len921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 0
  %a.len922 = load i64, ptr %a.len921, align 8
  %a.cap923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 2
  %a.cap924 = load i64, ptr %a.cap923, align 8
  %a.needs.grow925 = icmp eq i64 %a.len922, %a.cap924
  br i1 %a.needs.grow925, label %a.grow919, label %a.store920

a.grow919:                                        ; preds = %a.check918
  call void @dva_array_grow(ptr %a.load2917)
  br label %a.store920

a.store920:                                       ; preds = %a.grow919, %a.check918
  %a.cur.data926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 1
  %a.cur.data927 = load ptr, ptr %a.cur.data926, align 8
  %a.cur.len928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 0
  %a.cur.len929 = load i64, ptr %a.cur.len928, align 8
  %a.elem.gep930 = getelementptr i64, ptr %a.cur.data927, i64 %a.cur.len929
  %slot.p2i931 = ptrtoint ptr %var.load905 to i64
  store i64 %slot.p2i931, ptr %a.elem.gep930, align 8
  %a.next.len932 = add i64 %a.cur.len929, 1
  %b.len.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2917, i32 0, i32 0
  store i64 %a.next.len932, ptr %b.len.gep933, align 8
  br label %choice.exit904

choice.case938:                                   ; preds = %choice.next601
  %pay.gep943 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr944 = load ptr, ptr %pay.gep943, align 8
  store ptr %payload.ptr944, ptr %var._945, align 8
  store ptr %payload.ptr944, ptr %var.re, align 8
  %var.load946 = load ptr, ptr %var.re, align 8
  %fld.gep947 = getelementptr inbounds { ptr, i1 }, ptr %var.load946, i32 0, i32 0
  %fld.load948 = load ptr, ptr %fld.gep947, align 8
  %arr.cycle.len949 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load948, i32 0, i32 0
  %arr.cycle.len950 = load i64, ptr %arr.cycle.len949, align 8
  %arr.cycle.data951 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load948, i32 0, i32 1
  %arr.cycle.data952 = load ptr, ptr %arr.cycle.data951, align 8
  store i64 0, ptr %loop.idx.45, align 8
  %cycle.prev.u953 = load ptr, ptr %var._945, align 8
  br label %loop.header.45

choice.next939:                                   ; preds = %choice.next601
  %tag.gep995 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id996 = load i64, ptr %tag.gep995, align 8
  %tag.match997 = icmp eq i64 %tag.id996, 16
  br i1 %tag.match997, label %choice.case993, label %choice.next994

loop.header.45:                                   ; preds = %loop.latch.45, %choice.case938
  %counter.load954 = load i64, ptr %loop.idx.45, align 8
  %loop.cond955 = icmp slt i64 %counter.load954, %arr.cycle.len950
  br i1 %loop.cond955, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i956 = sub i64 %counter.load954, 0
  store i64 1, ptr %loop.step.45, align 8
  %arr.elem.gep957 = getelementptr i64, ptr %arr.cycle.data952, i64 %counter.load954
  %arr.elem.raw958 = load i64, ptr %arr.elem.gep957, align 8
  %slot.i2p959 = inttoptr i64 %arr.elem.raw958 to ptr
  store i64 %loop.rel.i956, ptr %var._i960, align 8
  store ptr %slot.i2p959, ptr %var._961, align 8
  store ptr %slot.i2p959, ptr %var.fld, align 8
  %var.load962 = load ptr, ptr %var.fld, align 8
  %fld.gep963 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load962, i32 0, i32 2
  %fld.load964 = load ptr, ptr %fld.gep963, align 8
  %var.load965 = load ptr, ptr %var.locals, align 8
  %a.load966 = load ptr, ptr %var.locals, align 8
  %a.null967 = icmp eq ptr %a.load966, null
  br i1 %a.null967, label %a.create968, label %a.after969

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.after982
  %step.val991 = load i64, ptr %loop.step.45, align 8
  %loop.next992 = add i64 %counter.load954, %step.val991
  store i64 %loop.next992, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  store ptr %cycle.prev.u953, ptr %var._945, align 8
  br label %choice.exit

a.create968:                                      ; preds = %loop.body.45
  %arena.cur970 = call ptr @dva_arena_current()
  %a.create971 = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 24)
  %arena.cur972 = call ptr @dva_arena_current()
  %a.buf973 = call ptr @dva_arena_alloc(ptr %arena.cur972, i64 128)
  %a.len.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create971, i32 0, i32 0
  store i64 0, ptr %a.len.gep974, align 8
  %a.data.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create971, i32 0, i32 1
  store ptr %a.buf973, ptr %a.data.gep975, align 8
  %a.cap.gep976 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create971, i32 0, i32 2
  store i64 16, ptr %a.cap.gep976, align 8
  store ptr %a.create971, ptr %var.locals, align 8
  br label %a.after969

a.after969:                                       ; preds = %a.create968, %loop.body.45
  %a.load2977 = load ptr, ptr %var.locals, align 8
  %var.load978 = load ptr, ptr %var.refs, align 8
  %a.load979 = load ptr, ptr %var.refs, align 8
  %a.null980 = icmp eq ptr %a.load979, null
  br i1 %a.null980, label %a.create981, label %a.after982

a.create981:                                      ; preds = %a.after969
  %arena.cur983 = call ptr @dva_arena_current()
  %a.create984 = call ptr @dva_arena_alloc(ptr %arena.cur983, i64 24)
  %arena.cur985 = call ptr @dva_arena_current()
  %a.buf986 = call ptr @dva_arena_alloc(ptr %arena.cur985, i64 128)
  %a.len.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create984, i32 0, i32 0
  store i64 0, ptr %a.len.gep987, align 8
  %a.data.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create984, i32 0, i32 1
  store ptr %a.buf986, ptr %a.data.gep988, align 8
  %a.cap.gep989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep989, align 8
  store ptr %a.create984, ptr %var.refs, align 8
  br label %a.after982

a.after982:                                       ; preds = %a.create981, %a.after969
  %a.load2990 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load964, ptr %a.load2977, ptr %a.load2990)
  br label %loop.latch.45

choice.case993:                                   ; preds = %choice.next939
  %pay.gep998 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr999 = load ptr, ptr %pay.gep998, align 8
  store ptr %payload.ptr999, ptr %var._1000, align 8
  store ptr %payload.ptr999, ptr %var.m, align 8
  %var.load1001 = load ptr, ptr %var.m, align 8
  %fld.gep1002 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1001, i32 0, i32 0
  %fld.load1003 = load ptr, ptr %fld.gep1002, align 8
  %var.load1004 = load ptr, ptr %var.locals, align 8
  %a.load1005 = load ptr, ptr %var.locals, align 8
  %a.null1006 = icmp eq ptr %a.load1005, null
  br i1 %a.null1006, label %a.create1007, label %a.after1008

choice.next994:                                   ; preds = %choice.next939
  %tag.gep1061 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1062 = load i64, ptr %tag.gep1061, align 8
  %tag.match1063 = icmp eq i64 %tag.id1062, 17
  br i1 %tag.match1063, label %choice.case1059, label %choice.next1060

a.create1007:                                     ; preds = %choice.case993
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
  store ptr %a.create1010, ptr %var.locals, align 8
  br label %a.after1008

a.after1008:                                      ; preds = %a.create1007, %choice.case993
  %a.load21016 = load ptr, ptr %var.locals, align 8
  %var.load1017 = load ptr, ptr %var.refs, align 8
  %a.load1018 = load ptr, ptr %var.refs, align 8
  %a.null1019 = icmp eq ptr %a.load1018, null
  br i1 %a.null1019, label %a.create1020, label %a.after1021

a.create1020:                                     ; preds = %a.after1008
  %arena.cur1022 = call ptr @dva_arena_current()
  %a.create1023 = call ptr @dva_arena_alloc(ptr %arena.cur1022, i64 24)
  %arena.cur1024 = call ptr @dva_arena_current()
  %a.buf1025 = call ptr @dva_arena_alloc(ptr %arena.cur1024, i64 128)
  %a.len.gep1026 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1023, i32 0, i32 0
  store i64 0, ptr %a.len.gep1026, align 8
  %a.data.gep1027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1023, i32 0, i32 1
  store ptr %a.buf1025, ptr %a.data.gep1027, align 8
  %a.cap.gep1028 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1023, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1028, align 8
  store ptr %a.create1023, ptr %var.refs, align 8
  br label %a.after1021

a.after1021:                                      ; preds = %a.create1020, %a.after1008
  %a.load21029 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1003, ptr %a.load21016, ptr %a.load21029)
  %var.load1030 = load ptr, ptr %var.m, align 8
  %fld.gep1031 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load1030, i32 0, i32 3
  %fld.load1032 = load ptr, ptr %fld.gep1031, align 8
  %var.load1033 = load ptr, ptr %var.locals, align 8
  %a.load1034 = load ptr, ptr %var.locals, align 8
  %a.null1035 = icmp eq ptr %a.load1034, null
  br i1 %a.null1035, label %a.create1036, label %a.after1037

a.create1036:                                     ; preds = %a.after1021
  %arena.cur1038 = call ptr @dva_arena_current()
  %a.create1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 24)
  %arena.cur1040 = call ptr @dva_arena_current()
  %a.buf1041 = call ptr @dva_arena_alloc(ptr %arena.cur1040, i64 128)
  %a.len.gep1042 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1039, i32 0, i32 0
  store i64 0, ptr %a.len.gep1042, align 8
  %a.data.gep1043 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1039, i32 0, i32 1
  store ptr %a.buf1041, ptr %a.data.gep1043, align 8
  %a.cap.gep1044 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1039, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1044, align 8
  store ptr %a.create1039, ptr %var.locals, align 8
  br label %a.after1037

a.after1037:                                      ; preds = %a.create1036, %a.after1021
  %a.load21045 = load ptr, ptr %var.locals, align 8
  %var.load1046 = load ptr, ptr %var.refs, align 8
  %a.load1047 = load ptr, ptr %var.refs, align 8
  %a.null1048 = icmp eq ptr %a.load1047, null
  br i1 %a.null1048, label %a.create1049, label %a.after1050

a.create1049:                                     ; preds = %a.after1037
  %arena.cur1051 = call ptr @dva_arena_current()
  %a.create1052 = call ptr @dva_arena_alloc(ptr %arena.cur1051, i64 24)
  %arena.cur1053 = call ptr @dva_arena_current()
  %a.buf1054 = call ptr @dva_arena_alloc(ptr %arena.cur1053, i64 128)
  %a.len.gep1055 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1052, i32 0, i32 0
  store i64 0, ptr %a.len.gep1055, align 8
  %a.data.gep1056 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1052, i32 0, i32 1
  store ptr %a.buf1054, ptr %a.data.gep1056, align 8
  %a.cap.gep1057 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1052, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1057, align 8
  store ptr %a.create1052, ptr %var.refs, align 8
  br label %a.after1050

a.after1050:                                      ; preds = %a.create1049, %a.after1037
  %a.load21058 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1032, ptr %a.load21045, ptr %a.load21058)
  br label %choice.exit

choice.case1059:                                  ; preds = %choice.next994
  %pay.gep1064 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1065 = load ptr, ptr %pay.gep1064, align 8
  store ptr %payload.ptr1065, ptr %var._1066, align 8
  store ptr %payload.ptr1065, ptr %var.ka, align 8
  %var.load1067 = load ptr, ptr %var.ka, align 8
  %fld.gep1068 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1067, i32 0, i32 0
  %fld.load1069 = load ptr, ptr %fld.gep1068, align 8
  %var.load1070 = load ptr, ptr %var.locals, align 8
  %a.load1071 = load ptr, ptr %var.locals, align 8
  %a.null1072 = icmp eq ptr %a.load1071, null
  br i1 %a.null1072, label %a.create1073, label %a.after1074

choice.next1060:                                  ; preds = %choice.next994
  %tag.gep1127 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1128 = load i64, ptr %tag.gep1127, align 8
  %tag.match1129 = icmp eq i64 %tag.id1128, 6
  br i1 %tag.match1129, label %choice.case1125, label %choice.next1126

a.create1073:                                     ; preds = %choice.case1059
  %arena.cur1075 = call ptr @dva_arena_current()
  %a.create1076 = call ptr @dva_arena_alloc(ptr %arena.cur1075, i64 24)
  %arena.cur1077 = call ptr @dva_arena_current()
  %a.buf1078 = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 128)
  %a.len.gep1079 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1076, i32 0, i32 0
  store i64 0, ptr %a.len.gep1079, align 8
  %a.data.gep1080 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1076, i32 0, i32 1
  store ptr %a.buf1078, ptr %a.data.gep1080, align 8
  %a.cap.gep1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1076, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1081, align 8
  store ptr %a.create1076, ptr %var.locals, align 8
  br label %a.after1074

a.after1074:                                      ; preds = %a.create1073, %choice.case1059
  %a.load21082 = load ptr, ptr %var.locals, align 8
  %var.load1083 = load ptr, ptr %var.refs, align 8
  %a.load1084 = load ptr, ptr %var.refs, align 8
  %a.null1085 = icmp eq ptr %a.load1084, null
  br i1 %a.null1085, label %a.create1086, label %a.after1087

a.create1086:                                     ; preds = %a.after1074
  %arena.cur1088 = call ptr @dva_arena_current()
  %a.create1089 = call ptr @dva_arena_alloc(ptr %arena.cur1088, i64 24)
  %arena.cur1090 = call ptr @dva_arena_current()
  %a.buf1091 = call ptr @dva_arena_alloc(ptr %arena.cur1090, i64 128)
  %a.len.gep1092 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1089, i32 0, i32 0
  store i64 0, ptr %a.len.gep1092, align 8
  %a.data.gep1093 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1089, i32 0, i32 1
  store ptr %a.buf1091, ptr %a.data.gep1093, align 8
  %a.cap.gep1094 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1089, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1094, align 8
  store ptr %a.create1089, ptr %var.refs, align 8
  br label %a.after1087

a.after1087:                                      ; preds = %a.create1086, %a.after1074
  %a.load21095 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1069, ptr %a.load21082, ptr %a.load21095)
  %var.load1096 = load ptr, ptr %var.ka, align 8
  %fld.gep1097 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1096, i32 0, i32 1
  %fld.load1098 = load ptr, ptr %fld.gep1097, align 8
  %var.load1099 = load ptr, ptr %var.locals, align 8
  %a.load1100 = load ptr, ptr %var.locals, align 8
  %a.null1101 = icmp eq ptr %a.load1100, null
  br i1 %a.null1101, label %a.create1102, label %a.after1103

a.create1102:                                     ; preds = %a.after1087
  %arena.cur1104 = call ptr @dva_arena_current()
  %a.create1105 = call ptr @dva_arena_alloc(ptr %arena.cur1104, i64 24)
  %arena.cur1106 = call ptr @dva_arena_current()
  %a.buf1107 = call ptr @dva_arena_alloc(ptr %arena.cur1106, i64 128)
  %a.len.gep1108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1105, i32 0, i32 0
  store i64 0, ptr %a.len.gep1108, align 8
  %a.data.gep1109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1105, i32 0, i32 1
  store ptr %a.buf1107, ptr %a.data.gep1109, align 8
  %a.cap.gep1110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1105, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1110, align 8
  store ptr %a.create1105, ptr %var.locals, align 8
  br label %a.after1103

a.after1103:                                      ; preds = %a.create1102, %a.after1087
  %a.load21111 = load ptr, ptr %var.locals, align 8
  %var.load1112 = load ptr, ptr %var.refs, align 8
  %a.load1113 = load ptr, ptr %var.refs, align 8
  %a.null1114 = icmp eq ptr %a.load1113, null
  br i1 %a.null1114, label %a.create1115, label %a.after1116

a.create1115:                                     ; preds = %a.after1103
  %arena.cur1117 = call ptr @dva_arena_current()
  %a.create1118 = call ptr @dva_arena_alloc(ptr %arena.cur1117, i64 24)
  %arena.cur1119 = call ptr @dva_arena_current()
  %a.buf1120 = call ptr @dva_arena_alloc(ptr %arena.cur1119, i64 128)
  %a.len.gep1121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 0
  store i64 0, ptr %a.len.gep1121, align 8
  %a.data.gep1122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 1
  store ptr %a.buf1120, ptr %a.data.gep1122, align 8
  %a.cap.gep1123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1123, align 8
  store ptr %a.create1118, ptr %var.refs, align 8
  br label %a.after1116

a.after1116:                                      ; preds = %a.create1115, %a.after1103
  %a.load21124 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1098, ptr %a.load21111, ptr %a.load21124)
  br label %choice.exit

choice.case1125:                                  ; preds = %choice.next1060
  %pay.gep1130 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1131 = load ptr, ptr %pay.gep1130, align 8
  store ptr %payload.ptr1131, ptr %var._1132, align 8
  store ptr %payload.ptr1131, ptr %var.a1133, align 8
  %var.load1134 = load ptr, ptr %var.a1133, align 8
  %fld.gep1135 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1134, i32 0, i32 5
  %fld.load1136 = load ptr, ptr %fld.gep1135, align 8
  %var.load1137 = load ptr, ptr %var.locals, align 8
  %a.load1138 = load ptr, ptr %var.locals, align 8
  %a.null1139 = icmp eq ptr %a.load1138, null
  br i1 %a.null1139, label %a.create1140, label %a.after1141

choice.next1126:                                  ; preds = %choice.next1060
  %tag.gep1194 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1195 = load i64, ptr %tag.gep1194, align 8
  %tag.match1196 = icmp eq i64 %tag.id1195, 12
  br i1 %tag.match1196, label %choice.case1192, label %choice.next1193

a.create1140:                                     ; preds = %choice.case1125
  %arena.cur1142 = call ptr @dva_arena_current()
  %a.create1143 = call ptr @dva_arena_alloc(ptr %arena.cur1142, i64 24)
  %arena.cur1144 = call ptr @dva_arena_current()
  %a.buf1145 = call ptr @dva_arena_alloc(ptr %arena.cur1144, i64 128)
  %a.len.gep1146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1143, i32 0, i32 0
  store i64 0, ptr %a.len.gep1146, align 8
  %a.data.gep1147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1143, i32 0, i32 1
  store ptr %a.buf1145, ptr %a.data.gep1147, align 8
  %a.cap.gep1148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1148, align 8
  store ptr %a.create1143, ptr %var.locals, align 8
  br label %a.after1141

a.after1141:                                      ; preds = %a.create1140, %choice.case1125
  %a.load21149 = load ptr, ptr %var.locals, align 8
  %var.load1150 = load ptr, ptr %var.refs, align 8
  %a.load1151 = load ptr, ptr %var.refs, align 8
  %a.null1152 = icmp eq ptr %a.load1151, null
  br i1 %a.null1152, label %a.create1153, label %a.after1154

a.create1153:                                     ; preds = %a.after1141
  %arena.cur1155 = call ptr @dva_arena_current()
  %a.create1156 = call ptr @dva_arena_alloc(ptr %arena.cur1155, i64 24)
  %arena.cur1157 = call ptr @dva_arena_current()
  %a.buf1158 = call ptr @dva_arena_alloc(ptr %arena.cur1157, i64 128)
  %a.len.gep1159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1156, i32 0, i32 0
  store i64 0, ptr %a.len.gep1159, align 8
  %a.data.gep1160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1156, i32 0, i32 1
  store ptr %a.buf1158, ptr %a.data.gep1160, align 8
  %a.cap.gep1161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1161, align 8
  store ptr %a.create1156, ptr %var.refs, align 8
  br label %a.after1154

a.after1154:                                      ; preds = %a.create1153, %a.after1141
  %a.load21162 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1136, ptr %a.load21149, ptr %a.load21162)
  %var.load1163 = load ptr, ptr %var.a1133, align 8
  %fld.gep1164 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1163, i32 0, i32 6
  %fld.load1165 = load ptr, ptr %fld.gep1164, align 8
  %var.load1166 = load ptr, ptr %var.locals, align 8
  %a.load1167 = load ptr, ptr %var.locals, align 8
  %a.null1168 = icmp eq ptr %a.load1167, null
  br i1 %a.null1168, label %a.create1169, label %a.after1170

a.create1169:                                     ; preds = %a.after1154
  %arena.cur1171 = call ptr @dva_arena_current()
  %a.create1172 = call ptr @dva_arena_alloc(ptr %arena.cur1171, i64 24)
  %arena.cur1173 = call ptr @dva_arena_current()
  %a.buf1174 = call ptr @dva_arena_alloc(ptr %arena.cur1173, i64 128)
  %a.len.gep1175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1172, i32 0, i32 0
  store i64 0, ptr %a.len.gep1175, align 8
  %a.data.gep1176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1172, i32 0, i32 1
  store ptr %a.buf1174, ptr %a.data.gep1176, align 8
  %a.cap.gep1177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1177, align 8
  store ptr %a.create1172, ptr %var.locals, align 8
  br label %a.after1170

a.after1170:                                      ; preds = %a.create1169, %a.after1154
  %a.load21178 = load ptr, ptr %var.locals, align 8
  %var.load1179 = load ptr, ptr %var.refs, align 8
  %a.load1180 = load ptr, ptr %var.refs, align 8
  %a.null1181 = icmp eq ptr %a.load1180, null
  br i1 %a.null1181, label %a.create1182, label %a.after1183

a.create1182:                                     ; preds = %a.after1170
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
  store ptr %a.create1185, ptr %var.refs, align 8
  br label %a.after1183

a.after1183:                                      ; preds = %a.create1182, %a.after1170
  %a.load21191 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1165, ptr %a.load21178, ptr %a.load21191)
  br label %choice.exit

choice.case1192:                                  ; preds = %choice.next1126
  %pay.gep1197 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1198 = load ptr, ptr %pay.gep1197, align 8
  store ptr %payload.ptr1198, ptr %var._1199, align 8
  store ptr %payload.ptr1198, ptr %var.cy, align 8
  %var.load1200 = load ptr, ptr %var.cy, align 8
  %fld.gep1201 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1200, i32 0, i32 0
  %fld.load1202 = load ptr, ptr %fld.gep1201, align 8
  %var.load1203 = load ptr, ptr %var.locals, align 8
  %a.load1204 = load ptr, ptr %var.locals, align 8
  %a.null1205 = icmp eq ptr %a.load1204, null
  br i1 %a.null1205, label %a.create1206, label %a.after1207

choice.next1193:                                  ; preds = %choice.next1126
  %tag.gep1260 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1261 = load i64, ptr %tag.gep1260, align 8
  %tag.match1262 = icmp eq i64 %tag.id1261, 11
  br i1 %tag.match1262, label %choice.case1258, label %choice.next1259

a.create1206:                                     ; preds = %choice.case1192
  %arena.cur1208 = call ptr @dva_arena_current()
  %a.create1209 = call ptr @dva_arena_alloc(ptr %arena.cur1208, i64 24)
  %arena.cur1210 = call ptr @dva_arena_current()
  %a.buf1211 = call ptr @dva_arena_alloc(ptr %arena.cur1210, i64 128)
  %a.len.gep1212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1209, i32 0, i32 0
  store i64 0, ptr %a.len.gep1212, align 8
  %a.data.gep1213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1209, i32 0, i32 1
  store ptr %a.buf1211, ptr %a.data.gep1213, align 8
  %a.cap.gep1214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1209, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1214, align 8
  store ptr %a.create1209, ptr %var.locals, align 8
  br label %a.after1207

a.after1207:                                      ; preds = %a.create1206, %choice.case1192
  %a.load21215 = load ptr, ptr %var.locals, align 8
  %var.load1216 = load ptr, ptr %var.refs, align 8
  %a.load1217 = load ptr, ptr %var.refs, align 8
  %a.null1218 = icmp eq ptr %a.load1217, null
  br i1 %a.null1218, label %a.create1219, label %a.after1220

a.create1219:                                     ; preds = %a.after1207
  %arena.cur1221 = call ptr @dva_arena_current()
  %a.create1222 = call ptr @dva_arena_alloc(ptr %arena.cur1221, i64 24)
  %arena.cur1223 = call ptr @dva_arena_current()
  %a.buf1224 = call ptr @dva_arena_alloc(ptr %arena.cur1223, i64 128)
  %a.len.gep1225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1222, i32 0, i32 0
  store i64 0, ptr %a.len.gep1225, align 8
  %a.data.gep1226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1222, i32 0, i32 1
  store ptr %a.buf1224, ptr %a.data.gep1226, align 8
  %a.cap.gep1227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1222, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1227, align 8
  store ptr %a.create1222, ptr %var.refs, align 8
  br label %a.after1220

a.after1220:                                      ; preds = %a.create1219, %a.after1207
  %a.load21228 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1202, ptr %a.load21215, ptr %a.load21228)
  %var.load1229 = load ptr, ptr %var.cy, align 8
  %fld.gep1230 = getelementptr inbounds { ptr, ptr, i1, i1 }, ptr %var.load1229, i32 0, i32 1
  %fld.load1231 = load ptr, ptr %fld.gep1230, align 8
  %var.load1232 = load ptr, ptr %var.locals, align 8
  %a.load1233 = load ptr, ptr %var.locals, align 8
  %a.null1234 = icmp eq ptr %a.load1233, null
  br i1 %a.null1234, label %a.create1235, label %a.after1236

a.create1235:                                     ; preds = %a.after1220
  %arena.cur1237 = call ptr @dva_arena_current()
  %a.create1238 = call ptr @dva_arena_alloc(ptr %arena.cur1237, i64 24)
  %arena.cur1239 = call ptr @dva_arena_current()
  %a.buf1240 = call ptr @dva_arena_alloc(ptr %arena.cur1239, i64 128)
  %a.len.gep1241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1238, i32 0, i32 0
  store i64 0, ptr %a.len.gep1241, align 8
  %a.data.gep1242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1238, i32 0, i32 1
  store ptr %a.buf1240, ptr %a.data.gep1242, align 8
  %a.cap.gep1243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1238, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1243, align 8
  store ptr %a.create1238, ptr %var.locals, align 8
  br label %a.after1236

a.after1236:                                      ; preds = %a.create1235, %a.after1220
  %a.load21244 = load ptr, ptr %var.locals, align 8
  %var.load1245 = load ptr, ptr %var.refs, align 8
  %a.load1246 = load ptr, ptr %var.refs, align 8
  %a.null1247 = icmp eq ptr %a.load1246, null
  br i1 %a.null1247, label %a.create1248, label %a.after1249

a.create1248:                                     ; preds = %a.after1236
  %arena.cur1250 = call ptr @dva_arena_current()
  %a.create1251 = call ptr @dva_arena_alloc(ptr %arena.cur1250, i64 24)
  %arena.cur1252 = call ptr @dva_arena_current()
  %a.buf1253 = call ptr @dva_arena_alloc(ptr %arena.cur1252, i64 128)
  %a.len.gep1254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1251, i32 0, i32 0
  store i64 0, ptr %a.len.gep1254, align 8
  %a.data.gep1255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1251, i32 0, i32 1
  store ptr %a.buf1253, ptr %a.data.gep1255, align 8
  %a.cap.gep1256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1251, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1256, align 8
  store ptr %a.create1251, ptr %var.refs, align 8
  br label %a.after1249

a.after1249:                                      ; preds = %a.create1248, %a.after1236
  %a.load21257 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1231, ptr %a.load21244, ptr %a.load21257)
  br label %choice.exit

choice.case1258:                                  ; preds = %choice.next1193
  %pay.gep1263 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1264 = load ptr, ptr %pay.gep1263, align 8
  store ptr %payload.ptr1264, ptr %var._1265, align 8
  store ptr %payload.ptr1264, ptr %var.ce, align 8
  %var.load1266 = load ptr, ptr %var.ce, align 8
  %fld.gep1267 = getelementptr inbounds { ptr, ptr }, ptr %var.load1266, i32 0, i32 0
  %fld.load1268 = load ptr, ptr %fld.gep1267, align 8
  %var.load1269 = load ptr, ptr %var.locals, align 8
  %a.load1270 = load ptr, ptr %var.locals, align 8
  %a.null1271 = icmp eq ptr %a.load1270, null
  br i1 %a.null1271, label %a.create1272, label %a.after1273

choice.next1259:                                  ; preds = %choice.next1193
  %tag.gep1326 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1327 = load i64, ptr %tag.gep1326, align 8
  %tag.match1328 = icmp eq i64 %tag.id1327, 13
  br i1 %tag.match1328, label %choice.case1324, label %choice.next1325

a.create1272:                                     ; preds = %choice.case1258
  %arena.cur1274 = call ptr @dva_arena_current()
  %a.create1275 = call ptr @dva_arena_alloc(ptr %arena.cur1274, i64 24)
  %arena.cur1276 = call ptr @dva_arena_current()
  %a.buf1277 = call ptr @dva_arena_alloc(ptr %arena.cur1276, i64 128)
  %a.len.gep1278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 0
  store i64 0, ptr %a.len.gep1278, align 8
  %a.data.gep1279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 1
  store ptr %a.buf1277, ptr %a.data.gep1279, align 8
  %a.cap.gep1280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1280, align 8
  store ptr %a.create1275, ptr %var.locals, align 8
  br label %a.after1273

a.after1273:                                      ; preds = %a.create1272, %choice.case1258
  %a.load21281 = load ptr, ptr %var.locals, align 8
  %var.load1282 = load ptr, ptr %var.refs, align 8
  %a.load1283 = load ptr, ptr %var.refs, align 8
  %a.null1284 = icmp eq ptr %a.load1283, null
  br i1 %a.null1284, label %a.create1285, label %a.after1286

a.create1285:                                     ; preds = %a.after1273
  %arena.cur1287 = call ptr @dva_arena_current()
  %a.create1288 = call ptr @dva_arena_alloc(ptr %arena.cur1287, i64 24)
  %arena.cur1289 = call ptr @dva_arena_current()
  %a.buf1290 = call ptr @dva_arena_alloc(ptr %arena.cur1289, i64 128)
  %a.len.gep1291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 0
  store i64 0, ptr %a.len.gep1291, align 8
  %a.data.gep1292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 1
  store ptr %a.buf1290, ptr %a.data.gep1292, align 8
  %a.cap.gep1293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1293, align 8
  store ptr %a.create1288, ptr %var.refs, align 8
  br label %a.after1286

a.after1286:                                      ; preds = %a.create1285, %a.after1273
  %a.load21294 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1268, ptr %a.load21281, ptr %a.load21294)
  %var.load1295 = load ptr, ptr %var.ce, align 8
  %fld.gep1296 = getelementptr inbounds { ptr, ptr }, ptr %var.load1295, i32 0, i32 1
  %fld.load1297 = load ptr, ptr %fld.gep1296, align 8
  %var.load1298 = load ptr, ptr %var.locals, align 8
  %a.load1299 = load ptr, ptr %var.locals, align 8
  %a.null1300 = icmp eq ptr %a.load1299, null
  br i1 %a.null1300, label %a.create1301, label %a.after1302

a.create1301:                                     ; preds = %a.after1286
  %arena.cur1303 = call ptr @dva_arena_current()
  %a.create1304 = call ptr @dva_arena_alloc(ptr %arena.cur1303, i64 24)
  %arena.cur1305 = call ptr @dva_arena_current()
  %a.buf1306 = call ptr @dva_arena_alloc(ptr %arena.cur1305, i64 128)
  %a.len.gep1307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1304, i32 0, i32 0
  store i64 0, ptr %a.len.gep1307, align 8
  %a.data.gep1308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1304, i32 0, i32 1
  store ptr %a.buf1306, ptr %a.data.gep1308, align 8
  %a.cap.gep1309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1304, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1309, align 8
  store ptr %a.create1304, ptr %var.locals, align 8
  br label %a.after1302

a.after1302:                                      ; preds = %a.create1301, %a.after1286
  %a.load21310 = load ptr, ptr %var.locals, align 8
  %var.load1311 = load ptr, ptr %var.refs, align 8
  %a.load1312 = load ptr, ptr %var.refs, align 8
  %a.null1313 = icmp eq ptr %a.load1312, null
  br i1 %a.null1313, label %a.create1314, label %a.after1315

a.create1314:                                     ; preds = %a.after1302
  %arena.cur1316 = call ptr @dva_arena_current()
  %a.create1317 = call ptr @dva_arena_alloc(ptr %arena.cur1316, i64 24)
  %arena.cur1318 = call ptr @dva_arena_current()
  %a.buf1319 = call ptr @dva_arena_alloc(ptr %arena.cur1318, i64 128)
  %a.len.gep1320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1317, i32 0, i32 0
  store i64 0, ptr %a.len.gep1320, align 8
  %a.data.gep1321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1317, i32 0, i32 1
  store ptr %a.buf1319, ptr %a.data.gep1321, align 8
  %a.cap.gep1322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1317, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1322, align 8
  store ptr %a.create1317, ptr %var.refs, align 8
  br label %a.after1315

a.after1315:                                      ; preds = %a.create1314, %a.after1302
  %a.load21323 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1297, ptr %a.load21310, ptr %a.load21323)
  br label %choice.exit

choice.case1324:                                  ; preds = %choice.next1259
  %pay.gep1329 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1330 = load ptr, ptr %pay.gep1329, align 8
  store ptr %payload.ptr1330, ptr %var._1331, align 8
  store ptr %payload.ptr1330, ptr %var.r, align 8
  %var.load1332 = load ptr, ptr %var.r, align 8
  %fld.gep1333 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1332, i32 0, i32 0
  %fld.load1334 = load i1, ptr %fld.gep1333, align 1
  br i1 %fld.load1334, label %choice.then1335, label %choice.exit1336

choice.next1325:                                  ; preds = %choice.next1259
  %tag.gep1478 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1479 = load i64, ptr %tag.gep1478, align 8
  %tag.match1480 = icmp eq i64 %tag.id1479, 36
  br i1 %tag.match1480, label %choice.case1476, label %choice.next1477

choice.then1335:                                  ; preds = %choice.case1324
  %var.load1337 = load ptr, ptr %var.r, align 8
  %fld.gep1338 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1337, i32 0, i32 2
  %fld.load1339 = load ptr, ptr %fld.gep1338, align 8
  %var.load1340 = load ptr, ptr %var.locals, align 8
  %a.load1341 = load ptr, ptr %var.locals, align 8
  %a.null1342 = icmp eq ptr %a.load1341, null
  br i1 %a.null1342, label %a.create1343, label %a.after1344

choice.exit1336:                                  ; preds = %a.after1357, %choice.case1324
  %var.load1366 = load ptr, ptr %var.r, align 8
  %fld.gep1367 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1366, i32 0, i32 1
  %fld.load1368 = load i1, ptr %fld.gep1367, align 1
  br i1 %fld.load1368, label %choice.then1369, label %choice.exit1370

a.create1343:                                     ; preds = %choice.then1335
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
  store ptr %a.create1346, ptr %var.locals, align 8
  br label %a.after1344

a.after1344:                                      ; preds = %a.create1343, %choice.then1335
  %a.load21352 = load ptr, ptr %var.locals, align 8
  %var.load1353 = load ptr, ptr %var.refs, align 8
  %a.load1354 = load ptr, ptr %var.refs, align 8
  %a.null1355 = icmp eq ptr %a.load1354, null
  br i1 %a.null1355, label %a.create1356, label %a.after1357

a.create1356:                                     ; preds = %a.after1344
  %arena.cur1358 = call ptr @dva_arena_current()
  %a.create1359 = call ptr @dva_arena_alloc(ptr %arena.cur1358, i64 24)
  %arena.cur1360 = call ptr @dva_arena_current()
  %a.buf1361 = call ptr @dva_arena_alloc(ptr %arena.cur1360, i64 128)
  %a.len.gep1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1359, i32 0, i32 0
  store i64 0, ptr %a.len.gep1362, align 8
  %a.data.gep1363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1359, i32 0, i32 1
  store ptr %a.buf1361, ptr %a.data.gep1363, align 8
  %a.cap.gep1364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1359, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1364, align 8
  store ptr %a.create1359, ptr %var.refs, align 8
  br label %a.after1357

a.after1357:                                      ; preds = %a.create1356, %a.after1344
  %a.load21365 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1339, ptr %a.load21352, ptr %a.load21365)
  br label %choice.exit1336

choice.then1369:                                  ; preds = %choice.exit1336
  %var.load1371 = load ptr, ptr %var.r, align 8
  %fld.gep1372 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1371, i32 0, i32 3
  %fld.load1373 = load ptr, ptr %fld.gep1372, align 8
  %tag.gep1377 = getelementptr inbounds { i64, ptr }, ptr %fld.load1373, i32 0, i32 0
  %tag.id1378 = load i64, ptr %tag.gep1377, align 8
  %tag.match1379 = icmp eq i64 %tag.id1378, 3
  br i1 %tag.match1379, label %choice.case1375, label %choice.next1376

choice.exit1370:                                  ; preds = %choice.exit1374, %choice.exit1336
  br label %choice.exit

choice.exit1374:                                  ; preds = %a.after1467, %choice.exit1417
  br label %choice.exit1370

choice.case1375:                                  ; preds = %choice.then1369
  %pay.gep1380 = getelementptr inbounds { i64, ptr }, ptr %fld.load1373, i32 0, i32 1
  %payload.ptr1381 = load ptr, ptr %pay.gep1380, align 8
  store ptr %payload.ptr1381, ptr %var._1382, align 8
  store ptr %payload.ptr1381, ptr %var.v1383, align 8
  %var.load1384 = load ptr, ptr %var.v1383, align 8
  %eq.lhs.len1385 = getelementptr inbounds { i64, ptr }, ptr %var.load1384, i32 0, i32 0
  %eq.lhs.len1386 = load i64, ptr %eq.lhs.len1385, align 8
  %eq.lhs.len1387 = and i64 %eq.lhs.len1386, 281474976710655
  %str.tag1388 = lshr i64 %eq.lhs.len1386, 48
  %tag.immortal1390 = icmp eq i64 %str.tag1388, 0
  br i1 %tag.immortal1390, label %str_ok1389, label %tag.gen_check1391

choice.next1376:                                  ; preds = %choice.then1369
  %var.load1447 = load ptr, ptr %var.r, align 8
  %fld.gep1448 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1447, i32 0, i32 3
  %fld.load1449 = load ptr, ptr %fld.gep1448, align 8
  %var.load1450 = load ptr, ptr %var.locals, align 8
  %a.load1451 = load ptr, ptr %var.locals, align 8
  %a.null1452 = icmp eq ptr %a.load1451, null
  br i1 %a.null1452, label %a.create1453, label %a.after1454

str_ok1389:                                       ; preds = %abort.dead1398, %tag.slow_check1392, %tag.gen_check1391, %choice.case1375
  %eq.rhs.len1399 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1400 = and i64 %eq.rhs.len1399, 281474976710655
  %eq.len1401 = icmp eq i64 %eq.lhs.len1387, %eq.rhs.len1400
  br i1 %eq.len1401, label %str.eq.then1402, label %str.eq.else1403

tag.gen_check1391:                                ; preds = %choice.case1375
  %active.gen1394 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok1395 = icmp eq i64 %str.tag1388, %active.gen1394
  br i1 %tag.fast.ok1395, label %str_ok1389, label %tag.slow_check1392

tag.slow_check1392:                               ; preds = %tag.gen_check1391
  %arena.cur1396 = call ptr @dva_arena_current()
  %tag.valid1397 = call i1 @dva_arena_validate_tag(ptr %arena.cur1396, i64 %str.tag1388)
  br i1 %tag.valid1397, label %str_ok1389, label %tag.stale1393

tag.stale1393:                                    ; preds = %tag.slow_check1392
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead1398:                                   ; No predecessors!
  br label %str_ok1389

str.eq.then1402:                                  ; preds = %str_ok1389
  %eq.lhs.data1405 = getelementptr inbounds { i64, ptr }, ptr %var.load1384, i32 0, i32 1
  %eq.lhs.data1406 = load ptr, ptr %eq.lhs.data1405, align 8
  %eq.rhs.data1407 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1408 = call i32 @memcmp(ptr %eq.lhs.data1406, ptr %eq.rhs.data1407, i64 %eq.lhs.len1387)
  %eq.cmp.zero1409 = icmp eq i32 %eq.memcmp1408, 0
  br label %str.eq.merge1404

str.eq.else1403:                                  ; preds = %str_ok1389
  br label %str.eq.merge1404

str.eq.merge1404:                                 ; preds = %str.eq.else1403, %str.eq.then1402
  %str.eq.result1410 = phi i1 [ %eq.cmp.zero1409, %str.eq.then1402 ], [ false, %str.eq.else1403 ]
  br i1 %str.eq.result1410, label %and.46.then, label %and.46.else

and.46.then:                                      ; preds = %str.eq.merge1404
  %var.load1411 = load ptr, ptr %var.r, align 8
  %fld.gep1412 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1411, i32 0, i32 0
  %fld.load1413 = load i1, ptr %fld.gep1412, align 1
  %nottmp1414 = xor i1 %fld.load1413, true
  br label %and.46.exit

and.46.else:                                      ; preds = %str.eq.merge1404
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %nottmp1414, %and.46.then ], [ %str.eq.result1410, %and.46.else ]
  %nottmp1415 = xor i1 %and.46.phi, true
  br i1 %nottmp1415, label %choice.then1416, label %choice.exit1417

choice.then1416:                                  ; preds = %and.46.exit
  %var.load1418 = load ptr, ptr %var.r, align 8
  %fld.gep1419 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1418, i32 0, i32 3
  %fld.load1420 = load ptr, ptr %fld.gep1419, align 8
  %var.load1421 = load ptr, ptr %var.locals, align 8
  %a.load1422 = load ptr, ptr %var.locals, align 8
  %a.null1423 = icmp eq ptr %a.load1422, null
  br i1 %a.null1423, label %a.create1424, label %a.after1425

choice.exit1417:                                  ; preds = %a.after1438, %and.46.exit
  br label %choice.exit1374

a.create1424:                                     ; preds = %choice.then1416
  %arena.cur1426 = call ptr @dva_arena_current()
  %a.create1427 = call ptr @dva_arena_alloc(ptr %arena.cur1426, i64 24)
  %arena.cur1428 = call ptr @dva_arena_current()
  %a.buf1429 = call ptr @dva_arena_alloc(ptr %arena.cur1428, i64 128)
  %a.len.gep1430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1427, i32 0, i32 0
  store i64 0, ptr %a.len.gep1430, align 8
  %a.data.gep1431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1427, i32 0, i32 1
  store ptr %a.buf1429, ptr %a.data.gep1431, align 8
  %a.cap.gep1432 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1427, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1432, align 8
  store ptr %a.create1427, ptr %var.locals, align 8
  br label %a.after1425

a.after1425:                                      ; preds = %a.create1424, %choice.then1416
  %a.load21433 = load ptr, ptr %var.locals, align 8
  %var.load1434 = load ptr, ptr %var.refs, align 8
  %a.load1435 = load ptr, ptr %var.refs, align 8
  %a.null1436 = icmp eq ptr %a.load1435, null
  br i1 %a.null1436, label %a.create1437, label %a.after1438

a.create1437:                                     ; preds = %a.after1425
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
  store ptr %a.create1440, ptr %var.refs, align 8
  br label %a.after1438

a.after1438:                                      ; preds = %a.create1437, %a.after1425
  %a.load21446 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1420, ptr %a.load21433, ptr %a.load21446)
  br label %choice.exit1417

a.create1453:                                     ; preds = %choice.next1376
  %arena.cur1455 = call ptr @dva_arena_current()
  %a.create1456 = call ptr @dva_arena_alloc(ptr %arena.cur1455, i64 24)
  %arena.cur1457 = call ptr @dva_arena_current()
  %a.buf1458 = call ptr @dva_arena_alloc(ptr %arena.cur1457, i64 128)
  %a.len.gep1459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1456, i32 0, i32 0
  store i64 0, ptr %a.len.gep1459, align 8
  %a.data.gep1460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1456, i32 0, i32 1
  store ptr %a.buf1458, ptr %a.data.gep1460, align 8
  %a.cap.gep1461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1456, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1461, align 8
  store ptr %a.create1456, ptr %var.locals, align 8
  br label %a.after1454

a.after1454:                                      ; preds = %a.create1453, %choice.next1376
  %a.load21462 = load ptr, ptr %var.locals, align 8
  %var.load1463 = load ptr, ptr %var.refs, align 8
  %a.load1464 = load ptr, ptr %var.refs, align 8
  %a.null1465 = icmp eq ptr %a.load1464, null
  br i1 %a.null1465, label %a.create1466, label %a.after1467

a.create1466:                                     ; preds = %a.after1454
  %arena.cur1468 = call ptr @dva_arena_current()
  %a.create1469 = call ptr @dva_arena_alloc(ptr %arena.cur1468, i64 24)
  %arena.cur1470 = call ptr @dva_arena_current()
  %a.buf1471 = call ptr @dva_arena_alloc(ptr %arena.cur1470, i64 128)
  %a.len.gep1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1469, i32 0, i32 0
  store i64 0, ptr %a.len.gep1472, align 8
  %a.data.gep1473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1469, i32 0, i32 1
  store ptr %a.buf1471, ptr %a.data.gep1473, align 8
  %a.cap.gep1474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1469, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1474, align 8
  store ptr %a.create1469, ptr %var.refs, align 8
  br label %a.after1467

a.after1467:                                      ; preds = %a.create1466, %a.after1454
  %a.load21475 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1449, ptr %a.load21462, ptr %a.load21475)
  br label %choice.exit1374

choice.case1476:                                  ; preds = %choice.next1325
  %pay.gep1481 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1482 = load ptr, ptr %pay.gep1481, align 8
  store ptr %payload.ptr1482, ptr %var._1483, align 8
  store ptr %payload.ptr1482, ptr %var.na, align 8
  %var.load1484 = load ptr, ptr %var.na, align 8
  %fld.gep1485 = getelementptr inbounds { ptr, ptr }, ptr %var.load1484, i32 0, i32 1
  %fld.load1486 = load ptr, ptr %fld.gep1485, align 8
  %var.load1487 = load ptr, ptr %var.locals, align 8
  %a.load1488 = load ptr, ptr %var.locals, align 8
  %a.null1489 = icmp eq ptr %a.load1488, null
  br i1 %a.null1489, label %a.create1490, label %a.after1491

choice.next1477:                                  ; preds = %choice.next1325
  %tag.gep1515 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1516 = load i64, ptr %tag.gep1515, align 8
  %tag.match1517 = icmp eq i64 %tag.id1516, 18
  br i1 %tag.match1517, label %choice.case1513, label %choice.next1514

a.create1490:                                     ; preds = %choice.case1476
  %arena.cur1492 = call ptr @dva_arena_current()
  %a.create1493 = call ptr @dva_arena_alloc(ptr %arena.cur1492, i64 24)
  %arena.cur1494 = call ptr @dva_arena_current()
  %a.buf1495 = call ptr @dva_arena_alloc(ptr %arena.cur1494, i64 128)
  %a.len.gep1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1493, i32 0, i32 0
  store i64 0, ptr %a.len.gep1496, align 8
  %a.data.gep1497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1493, i32 0, i32 1
  store ptr %a.buf1495, ptr %a.data.gep1497, align 8
  %a.cap.gep1498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1493, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1498, align 8
  store ptr %a.create1493, ptr %var.locals, align 8
  br label %a.after1491

a.after1491:                                      ; preds = %a.create1490, %choice.case1476
  %a.load21499 = load ptr, ptr %var.locals, align 8
  %var.load1500 = load ptr, ptr %var.refs, align 8
  %a.load1501 = load ptr, ptr %var.refs, align 8
  %a.null1502 = icmp eq ptr %a.load1501, null
  br i1 %a.null1502, label %a.create1503, label %a.after1504

a.create1503:                                     ; preds = %a.after1491
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
  store ptr %a.create1506, ptr %var.refs, align 8
  br label %a.after1504

a.after1504:                                      ; preds = %a.create1503, %a.after1491
  %a.load21512 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1486, ptr %a.load21499, ptr %a.load21512)
  br label %choice.exit

choice.case1513:                                  ; preds = %choice.next1477
  %pay.gep1518 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1519 = load ptr, ptr %pay.gep1518, align 8
  store ptr %payload.ptr1519, ptr %var._1520, align 8
  store ptr %payload.ptr1519, ptr %var.v1521, align 8
  %var.load1522 = load ptr, ptr %var.v1521, align 8
  %fld.gep1523 = getelementptr inbounds { ptr, ptr }, ptr %var.load1522, i32 0, i32 1
  %fld.load1524 = load ptr, ptr %fld.gep1523, align 8
  %arr.cycle.len1525 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1524, i32 0, i32 0
  %arr.cycle.len1526 = load i64, ptr %arr.cycle.len1525, align 8
  %arr.cycle.data1527 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1524, i32 0, i32 1
  %arr.cycle.data1528 = load ptr, ptr %arr.cycle.data1527, align 8
  store i64 0, ptr %loop.idx.47, align 8
  %cycle.prev.u1529 = load ptr, ptr %var._1520, align 8
  br label %loop.header.47

choice.next1514:                                  ; preds = %choice.next1477
  %tag.gep1569 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1570 = load i64, ptr %tag.gep1569, align 8
  %tag.match1571 = icmp eq i64 %tag.id1570, 25
  br i1 %tag.match1571, label %choice.case1567, label %choice.next1568

loop.header.47:                                   ; preds = %loop.latch.47, %choice.case1513
  %counter.load1530 = load i64, ptr %loop.idx.47, align 8
  %loop.cond1531 = icmp slt i64 %counter.load1530, %arr.cycle.len1526
  br i1 %loop.cond1531, label %loop.body.47, label %loop.exit.nat.47

loop.body.47:                                     ; preds = %loop.header.47
  %loop.rel.i1532 = sub i64 %counter.load1530, 0
  store i64 1, ptr %loop.step.47, align 8
  %arr.elem.gep1533 = getelementptr i64, ptr %arr.cycle.data1528, i64 %counter.load1530
  %arr.elem.raw1534 = load i64, ptr %arr.elem.gep1533, align 8
  %slot.i2p1535 = inttoptr i64 %arr.elem.raw1534 to ptr
  store i64 %loop.rel.i1532, ptr %var._i1536, align 8
  store ptr %slot.i2p1535, ptr %var._1537, align 8
  store ptr %slot.i2p1535, ptr %var.varg, align 8
  %var.load1538 = load ptr, ptr %var.varg, align 8
  %var.load1539 = load ptr, ptr %var.locals, align 8
  %a.load1540 = load ptr, ptr %var.locals, align 8
  %a.null1541 = icmp eq ptr %a.load1540, null
  br i1 %a.null1541, label %a.create1542, label %a.after1543

loop.exit.nat.47:                                 ; preds = %loop.header.47
  br label %loop.exit.47

loop.latch.47:                                    ; preds = %a.after1556
  %step.val1565 = load i64, ptr %loop.step.47, align 8
  %loop.next1566 = add i64 %counter.load1530, %step.val1565
  store i64 %loop.next1566, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.exit.47:                                     ; preds = %loop.exit.nat.47
  store ptr %cycle.prev.u1529, ptr %var._1520, align 8
  br label %choice.exit

a.create1542:                                     ; preds = %loop.body.47
  %arena.cur1544 = call ptr @dva_arena_current()
  %a.create1545 = call ptr @dva_arena_alloc(ptr %arena.cur1544, i64 24)
  %arena.cur1546 = call ptr @dva_arena_current()
  %a.buf1547 = call ptr @dva_arena_alloc(ptr %arena.cur1546, i64 128)
  %a.len.gep1548 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1545, i32 0, i32 0
  store i64 0, ptr %a.len.gep1548, align 8
  %a.data.gep1549 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1545, i32 0, i32 1
  store ptr %a.buf1547, ptr %a.data.gep1549, align 8
  %a.cap.gep1550 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1545, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1550, align 8
  store ptr %a.create1545, ptr %var.locals, align 8
  br label %a.after1543

a.after1543:                                      ; preds = %a.create1542, %loop.body.47
  %a.load21551 = load ptr, ptr %var.locals, align 8
  %var.load1552 = load ptr, ptr %var.refs, align 8
  %a.load1553 = load ptr, ptr %var.refs, align 8
  %a.null1554 = icmp eq ptr %a.load1553, null
  br i1 %a.null1554, label %a.create1555, label %a.after1556

a.create1555:                                     ; preds = %a.after1543
  %arena.cur1557 = call ptr @dva_arena_current()
  %a.create1558 = call ptr @dva_arena_alloc(ptr %arena.cur1557, i64 24)
  %arena.cur1559 = call ptr @dva_arena_current()
  %a.buf1560 = call ptr @dva_arena_alloc(ptr %arena.cur1559, i64 128)
  %a.len.gep1561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1558, i32 0, i32 0
  store i64 0, ptr %a.len.gep1561, align 8
  %a.data.gep1562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1558, i32 0, i32 1
  store ptr %a.buf1560, ptr %a.data.gep1562, align 8
  %a.cap.gep1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1558, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1563, align 8
  store ptr %a.create1558, ptr %var.refs, align 8
  br label %a.after1556

a.after1556:                                      ; preds = %a.create1555, %a.after1543
  %a.load21564 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1538, ptr %a.load21551, ptr %a.load21564)
  br label %loop.latch.47

choice.case1567:                                  ; preds = %choice.next1514
  %pay.gep1572 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1573 = load ptr, ptr %pay.gep1572, align 8
  store ptr %payload.ptr1573, ptr %var._1574, align 8
  store ptr %payload.ptr1573, ptr %var.cp, align 8
  %var.load1575 = load ptr, ptr %var.cp, align 8
  %var.load1576 = load ptr, ptr %var.locals, align 8
  %a.load1577 = load ptr, ptr %var.locals, align 8
  %a.null1578 = icmp eq ptr %a.load1577, null
  br i1 %a.null1578, label %a.create1579, label %a.after1580

choice.next1568:                                  ; preds = %choice.next1514
  %tag.gep1604 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1605 = load i64, ptr %tag.gep1604, align 8
  %tag.match1606 = icmp eq i64 %tag.id1605, 27
  br i1 %tag.match1606, label %choice.case1602, label %choice.next1603

a.create1579:                                     ; preds = %choice.case1567
  %arena.cur1581 = call ptr @dva_arena_current()
  %a.create1582 = call ptr @dva_arena_alloc(ptr %arena.cur1581, i64 24)
  %arena.cur1583 = call ptr @dva_arena_current()
  %a.buf1584 = call ptr @dva_arena_alloc(ptr %arena.cur1583, i64 128)
  %a.len.gep1585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 0
  store i64 0, ptr %a.len.gep1585, align 8
  %a.data.gep1586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 1
  store ptr %a.buf1584, ptr %a.data.gep1586, align 8
  %a.cap.gep1587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1587, align 8
  store ptr %a.create1582, ptr %var.locals, align 8
  br label %a.after1580

a.after1580:                                      ; preds = %a.create1579, %choice.case1567
  %a.load21588 = load ptr, ptr %var.locals, align 8
  %var.load1589 = load ptr, ptr %var.refs, align 8
  %a.load1590 = load ptr, ptr %var.refs, align 8
  %a.null1591 = icmp eq ptr %a.load1590, null
  br i1 %a.null1591, label %a.create1592, label %a.after1593

a.create1592:                                     ; preds = %a.after1580
  %arena.cur1594 = call ptr @dva_arena_current()
  %a.create1595 = call ptr @dva_arena_alloc(ptr %arena.cur1594, i64 24)
  %arena.cur1596 = call ptr @dva_arena_current()
  %a.buf1597 = call ptr @dva_arena_alloc(ptr %arena.cur1596, i64 128)
  %a.len.gep1598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1595, i32 0, i32 0
  store i64 0, ptr %a.len.gep1598, align 8
  %a.data.gep1599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1595, i32 0, i32 1
  store ptr %a.buf1597, ptr %a.data.gep1599, align 8
  %a.cap.gep1600 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1595, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1600, align 8
  store ptr %a.create1595, ptr %var.refs, align 8
  br label %a.after1593

a.after1593:                                      ; preds = %a.create1592, %a.after1580
  %a.load21601 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1575, ptr %a.load21588, ptr %a.load21601)
  br label %choice.exit

choice.case1602:                                  ; preds = %choice.next1568
  %pay.gep1607 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1608 = load ptr, ptr %pay.gep1607, align 8
  store ptr %payload.ptr1608, ptr %var._1609, align 8
  store ptr %payload.ptr1608, ptr %var.bc, align 8
  %var.load1610 = load ptr, ptr %var.bc, align 8
  %var.load1611 = load ptr, ptr %var.locals, align 8
  %a.load1612 = load ptr, ptr %var.locals, align 8
  %a.null1613 = icmp eq ptr %a.load1612, null
  br i1 %a.null1613, label %a.create1614, label %a.after1615

choice.next1603:                                  ; preds = %choice.next1568
  %tag.gep1639 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1640 = load i64, ptr %tag.gep1639, align 8
  %tag.match1641 = icmp eq i64 %tag.id1640, 22
  br i1 %tag.match1641, label %choice.case1637, label %choice.next1638

a.create1614:                                     ; preds = %choice.case1602
  %arena.cur1616 = call ptr @dva_arena_current()
  %a.create1617 = call ptr @dva_arena_alloc(ptr %arena.cur1616, i64 24)
  %arena.cur1618 = call ptr @dva_arena_current()
  %a.buf1619 = call ptr @dva_arena_alloc(ptr %arena.cur1618, i64 128)
  %a.len.gep1620 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1617, i32 0, i32 0
  store i64 0, ptr %a.len.gep1620, align 8
  %a.data.gep1621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1617, i32 0, i32 1
  store ptr %a.buf1619, ptr %a.data.gep1621, align 8
  %a.cap.gep1622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1617, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1622, align 8
  store ptr %a.create1617, ptr %var.locals, align 8
  br label %a.after1615

a.after1615:                                      ; preds = %a.create1614, %choice.case1602
  %a.load21623 = load ptr, ptr %var.locals, align 8
  %var.load1624 = load ptr, ptr %var.refs, align 8
  %a.load1625 = load ptr, ptr %var.refs, align 8
  %a.null1626 = icmp eq ptr %a.load1625, null
  br i1 %a.null1626, label %a.create1627, label %a.after1628

a.create1627:                                     ; preds = %a.after1615
  %arena.cur1629 = call ptr @dva_arena_current()
  %a.create1630 = call ptr @dva_arena_alloc(ptr %arena.cur1629, i64 24)
  %arena.cur1631 = call ptr @dva_arena_current()
  %a.buf1632 = call ptr @dva_arena_alloc(ptr %arena.cur1631, i64 128)
  %a.len.gep1633 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1630, i32 0, i32 0
  store i64 0, ptr %a.len.gep1633, align 8
  %a.data.gep1634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1630, i32 0, i32 1
  store ptr %a.buf1632, ptr %a.data.gep1634, align 8
  %a.cap.gep1635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1630, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1635, align 8
  store ptr %a.create1630, ptr %var.refs, align 8
  br label %a.after1628

a.after1628:                                      ; preds = %a.create1627, %a.after1615
  %a.load21636 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1610, ptr %a.load21623, ptr %a.load21636)
  br label %choice.exit

choice.case1637:                                  ; preds = %choice.next1603
  %pay.gep1642 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1643 = load ptr, ptr %pay.gep1642, align 8
  store ptr %payload.ptr1643, ptr %var._1644, align 8
  store ptr %payload.ptr1643, ptr %var.tc, align 8
  %var.load1645 = load ptr, ptr %var.tc, align 8
  %fld.gep1646 = getelementptr inbounds { ptr, ptr }, ptr %var.load1645, i32 0, i32 1
  %fld.load1647 = load ptr, ptr %fld.gep1646, align 8
  %var.load1648 = load ptr, ptr %var.locals, align 8
  %a.load1649 = load ptr, ptr %var.locals, align 8
  %a.null1650 = icmp eq ptr %a.load1649, null
  br i1 %a.null1650, label %a.create1651, label %a.after1652

choice.next1638:                                  ; preds = %choice.next1603
  %tag.gep1676 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1677 = load i64, ptr %tag.gep1676, align 8
  %tag.match1678 = icmp eq i64 %tag.id1677, 30
  br i1 %tag.match1678, label %choice.case1674, label %choice.next1675

a.create1651:                                     ; preds = %choice.case1637
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

a.after1652:                                      ; preds = %a.create1651, %choice.case1637
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
  br label %choice.exit

choice.case1674:                                  ; preds = %choice.next1638
  %pay.gep1679 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1680 = load ptr, ptr %pay.gep1679, align 8
  store ptr %payload.ptr1680, ptr %var._1681, align 8
  store ptr %payload.ptr1680, ptr %var.ct, align 8
  %var.load1682 = load ptr, ptr %var.ct, align 8
  %var.load1683 = load ptr, ptr %var.locals, align 8
  %a.load1684 = load ptr, ptr %var.locals, align 8
  %a.null1685 = icmp eq ptr %a.load1684, null
  br i1 %a.null1685, label %a.create1686, label %a.after1687

choice.next1675:                                  ; preds = %choice.next1638
  %tag.gep1711 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1712 = load i64, ptr %tag.gep1711, align 8
  %tag.match1713 = icmp eq i64 %tag.id1712, 31
  br i1 %tag.match1713, label %choice.case1709, label %choice.next1710

a.create1686:                                     ; preds = %choice.case1674
  %arena.cur1688 = call ptr @dva_arena_current()
  %a.create1689 = call ptr @dva_arena_alloc(ptr %arena.cur1688, i64 24)
  %arena.cur1690 = call ptr @dva_arena_current()
  %a.buf1691 = call ptr @dva_arena_alloc(ptr %arena.cur1690, i64 128)
  %a.len.gep1692 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 0
  store i64 0, ptr %a.len.gep1692, align 8
  %a.data.gep1693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 1
  store ptr %a.buf1691, ptr %a.data.gep1693, align 8
  %a.cap.gep1694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1689, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1694, align 8
  store ptr %a.create1689, ptr %var.locals, align 8
  br label %a.after1687

a.after1687:                                      ; preds = %a.create1686, %choice.case1674
  %a.load21695 = load ptr, ptr %var.locals, align 8
  %var.load1696 = load ptr, ptr %var.refs, align 8
  %a.load1697 = load ptr, ptr %var.refs, align 8
  %a.null1698 = icmp eq ptr %a.load1697, null
  br i1 %a.null1698, label %a.create1699, label %a.after1700

a.create1699:                                     ; preds = %a.after1687
  %arena.cur1701 = call ptr @dva_arena_current()
  %a.create1702 = call ptr @dva_arena_alloc(ptr %arena.cur1701, i64 24)
  %arena.cur1703 = call ptr @dva_arena_current()
  %a.buf1704 = call ptr @dva_arena_alloc(ptr %arena.cur1703, i64 128)
  %a.len.gep1705 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1702, i32 0, i32 0
  store i64 0, ptr %a.len.gep1705, align 8
  %a.data.gep1706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1702, i32 0, i32 1
  store ptr %a.buf1704, ptr %a.data.gep1706, align 8
  %a.cap.gep1707 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1702, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1707, align 8
  store ptr %a.create1702, ptr %var.refs, align 8
  br label %a.after1700

a.after1700:                                      ; preds = %a.create1699, %a.after1687
  %a.load21708 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1682, ptr %a.load21695, ptr %a.load21708)
  br label %choice.exit

choice.case1709:                                  ; preds = %choice.next1675
  %pay.gep1714 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1715 = load ptr, ptr %pay.gep1714, align 8
  store ptr %payload.ptr1715, ptr %var._1716, align 8
  store ptr %payload.ptr1715, ptr %var.sp, align 8
  %arena.cur1717 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1717, i64 16)
  %tag.gep1718 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1718, align 8
  %pay.gep1719 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1720 = load ptr, ptr %var.sp, align 8
  store ptr %var.load1720, ptr %pay.gep1719, align 8
  %var.load1721 = load ptr, ptr %var.locals, align 8
  %a.load1722 = load ptr, ptr %var.locals, align 8
  %a.null1723 = icmp eq ptr %a.load1722, null
  br i1 %a.null1723, label %a.create1724, label %a.after1725

choice.next1710:                                  ; preds = %choice.next1675
  %tag.gep1749 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1750 = load i64, ptr %tag.gep1749, align 8
  %tag.match1751 = icmp eq i64 %tag.id1750, 32
  br i1 %tag.match1751, label %choice.case1747, label %choice.next1748

a.create1724:                                     ; preds = %choice.case1709
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
  store ptr %a.create1727, ptr %var.locals, align 8
  br label %a.after1725

a.after1725:                                      ; preds = %a.create1724, %choice.case1709
  %a.load21733 = load ptr, ptr %var.locals, align 8
  %var.load1734 = load ptr, ptr %var.refs, align 8
  %a.load1735 = load ptr, ptr %var.refs, align 8
  %a.null1736 = icmp eq ptr %a.load1735, null
  br i1 %a.null1736, label %a.create1737, label %a.after1738

a.create1737:                                     ; preds = %a.after1725
  %arena.cur1739 = call ptr @dva_arena_current()
  %a.create1740 = call ptr @dva_arena_alloc(ptr %arena.cur1739, i64 24)
  %arena.cur1741 = call ptr @dva_arena_current()
  %a.buf1742 = call ptr @dva_arena_alloc(ptr %arena.cur1741, i64 128)
  %a.len.gep1743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1740, i32 0, i32 0
  store i64 0, ptr %a.len.gep1743, align 8
  %a.data.gep1744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1740, i32 0, i32 1
  store ptr %a.buf1742, ptr %a.data.gep1744, align 8
  %a.cap.gep1745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1740, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1745, align 8
  store ptr %a.create1740, ptr %var.refs, align 8
  br label %a.after1738

a.after1738:                                      ; preds = %a.create1737, %a.after1725
  %a.load21746 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21733, ptr %a.load21746)
  br label %choice.exit

choice.case1747:                                  ; preds = %choice.next1710
  %pay.gep1752 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1753 = load ptr, ptr %pay.gep1752, align 8
  store ptr %payload.ptr1753, ptr %var._1754, align 8
  store ptr %payload.ptr1753, ptr %var.jn, align 8
  %var.load1755 = load ptr, ptr %var.jn, align 8
  %var.load1756 = load ptr, ptr %var.locals, align 8
  %a.load1757 = load ptr, ptr %var.locals, align 8
  %a.null1758 = icmp eq ptr %a.load1757, null
  br i1 %a.null1758, label %a.create1759, label %a.after1760

choice.next1748:                                  ; preds = %choice.next1710
  %tag.gep1784 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1785 = load i64, ptr %tag.gep1784, align 8
  %tag.match1786 = icmp eq i64 %tag.id1785, 33
  br i1 %tag.match1786, label %choice.case1782, label %choice.next1783

a.create1759:                                     ; preds = %choice.case1747
  %arena.cur1761 = call ptr @dva_arena_current()
  %a.create1762 = call ptr @dva_arena_alloc(ptr %arena.cur1761, i64 24)
  %arena.cur1763 = call ptr @dva_arena_current()
  %a.buf1764 = call ptr @dva_arena_alloc(ptr %arena.cur1763, i64 128)
  %a.len.gep1765 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1762, i32 0, i32 0
  store i64 0, ptr %a.len.gep1765, align 8
  %a.data.gep1766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1762, i32 0, i32 1
  store ptr %a.buf1764, ptr %a.data.gep1766, align 8
  %a.cap.gep1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1762, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1767, align 8
  store ptr %a.create1762, ptr %var.locals, align 8
  br label %a.after1760

a.after1760:                                      ; preds = %a.create1759, %choice.case1747
  %a.load21768 = load ptr, ptr %var.locals, align 8
  %var.load1769 = load ptr, ptr %var.refs, align 8
  %a.load1770 = load ptr, ptr %var.refs, align 8
  %a.null1771 = icmp eq ptr %a.load1770, null
  br i1 %a.null1771, label %a.create1772, label %a.after1773

a.create1772:                                     ; preds = %a.after1760
  %arena.cur1774 = call ptr @dva_arena_current()
  %a.create1775 = call ptr @dva_arena_alloc(ptr %arena.cur1774, i64 24)
  %arena.cur1776 = call ptr @dva_arena_current()
  %a.buf1777 = call ptr @dva_arena_alloc(ptr %arena.cur1776, i64 128)
  %a.len.gep1778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 0
  store i64 0, ptr %a.len.gep1778, align 8
  %a.data.gep1779 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 1
  store ptr %a.buf1777, ptr %a.data.gep1779, align 8
  %a.cap.gep1780 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1780, align 8
  store ptr %a.create1775, ptr %var.refs, align 8
  br label %a.after1773

a.after1773:                                      ; preds = %a.create1772, %a.after1760
  %a.load21781 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1755, ptr %a.load21768, ptr %a.load21781)
  br label %choice.exit

choice.case1782:                                  ; preds = %choice.next1748
  %pay.gep1787 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1788 = load ptr, ptr %pay.gep1787, align 8
  store ptr %payload.ptr1788, ptr %var._1789, align 8
  store ptr %payload.ptr1788, ptr %var.ex, align 8
  %var.load1790 = load ptr, ptr %var.ex, align 8
  %var.load1791 = load ptr, ptr %var.locals, align 8
  %a.load1792 = load ptr, ptr %var.locals, align 8
  %a.null1793 = icmp eq ptr %a.load1792, null
  br i1 %a.null1793, label %a.create1794, label %a.after1795

choice.next1783:                                  ; preds = %choice.next1748
  %tag.gep1819 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1820 = load i64, ptr %tag.gep1819, align 8
  %tag.match1821 = icmp eq i64 %tag.id1820, 38
  br i1 %tag.match1821, label %choice.case1817, label %choice.next1818

a.create1794:                                     ; preds = %choice.case1782
  %arena.cur1796 = call ptr @dva_arena_current()
  %a.create1797 = call ptr @dva_arena_alloc(ptr %arena.cur1796, i64 24)
  %arena.cur1798 = call ptr @dva_arena_current()
  %a.buf1799 = call ptr @dva_arena_alloc(ptr %arena.cur1798, i64 128)
  %a.len.gep1800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1797, i32 0, i32 0
  store i64 0, ptr %a.len.gep1800, align 8
  %a.data.gep1801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1797, i32 0, i32 1
  store ptr %a.buf1799, ptr %a.data.gep1801, align 8
  %a.cap.gep1802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1797, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1802, align 8
  store ptr %a.create1797, ptr %var.locals, align 8
  br label %a.after1795

a.after1795:                                      ; preds = %a.create1794, %choice.case1782
  %a.load21803 = load ptr, ptr %var.locals, align 8
  %var.load1804 = load ptr, ptr %var.refs, align 8
  %a.load1805 = load ptr, ptr %var.refs, align 8
  %a.null1806 = icmp eq ptr %a.load1805, null
  br i1 %a.null1806, label %a.create1807, label %a.after1808

a.create1807:                                     ; preds = %a.after1795
  %arena.cur1809 = call ptr @dva_arena_current()
  %a.create1810 = call ptr @dva_arena_alloc(ptr %arena.cur1809, i64 24)
  %arena.cur1811 = call ptr @dva_arena_current()
  %a.buf1812 = call ptr @dva_arena_alloc(ptr %arena.cur1811, i64 128)
  %a.len.gep1813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 0
  store i64 0, ptr %a.len.gep1813, align 8
  %a.data.gep1814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 1
  store ptr %a.buf1812, ptr %a.data.gep1814, align 8
  %a.cap.gep1815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1810, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1815, align 8
  store ptr %a.create1810, ptr %var.refs, align 8
  br label %a.after1808

a.after1808:                                      ; preds = %a.create1807, %a.after1795
  %a.load21816 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1790, ptr %a.load21803, ptr %a.load21816)
  br label %choice.exit

choice.case1817:                                  ; preds = %choice.next1783
  %pay.gep1822 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1823 = load ptr, ptr %pay.gep1822, align 8
  store ptr %payload.ptr1823, ptr %var._1824, align 8
  store ptr %payload.ptr1823, ptr %var.ud, align 8
  %var.load1825 = load ptr, ptr %var.ud, align 8
  %fld.gep1826 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1825, i32 0, i32 1
  %fld.load1827 = load ptr, ptr %fld.gep1826, align 8
  %var.load1828 = load ptr, ptr %var.locals, align 8
  %a.load1829 = load ptr, ptr %var.locals, align 8
  %a.null1830 = icmp eq ptr %a.load1829, null
  br i1 %a.null1830, label %a.create1831, label %a.after1832

choice.next1818:                                  ; preds = %choice.next1783
  %tag.gep1856 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1857 = load i64, ptr %tag.gep1856, align 8
  %tag.match1858 = icmp eq i64 %tag.id1857, 37
  br i1 %tag.match1858, label %choice.case1854, label %choice.next1855

a.create1831:                                     ; preds = %choice.case1817
  %arena.cur1833 = call ptr @dva_arena_current()
  %a.create1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 24)
  %arena.cur1835 = call ptr @dva_arena_current()
  %a.buf1836 = call ptr @dva_arena_alloc(ptr %arena.cur1835, i64 128)
  %a.len.gep1837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 0
  store i64 0, ptr %a.len.gep1837, align 8
  %a.data.gep1838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 1
  store ptr %a.buf1836, ptr %a.data.gep1838, align 8
  %a.cap.gep1839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1839, align 8
  store ptr %a.create1834, ptr %var.locals, align 8
  br label %a.after1832

a.after1832:                                      ; preds = %a.create1831, %choice.case1817
  %a.load21840 = load ptr, ptr %var.locals, align 8
  %var.load1841 = load ptr, ptr %var.refs, align 8
  %a.load1842 = load ptr, ptr %var.refs, align 8
  %a.null1843 = icmp eq ptr %a.load1842, null
  br i1 %a.null1843, label %a.create1844, label %a.after1845

a.create1844:                                     ; preds = %a.after1832
  %arena.cur1846 = call ptr @dva_arena_current()
  %a.create1847 = call ptr @dva_arena_alloc(ptr %arena.cur1846, i64 24)
  %arena.cur1848 = call ptr @dva_arena_current()
  %a.buf1849 = call ptr @dva_arena_alloc(ptr %arena.cur1848, i64 128)
  %a.len.gep1850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 0
  store i64 0, ptr %a.len.gep1850, align 8
  %a.data.gep1851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 1
  store ptr %a.buf1849, ptr %a.data.gep1851, align 8
  %a.cap.gep1852 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1852, align 8
  store ptr %a.create1847, ptr %var.refs, align 8
  br label %a.after1845

a.after1845:                                      ; preds = %a.create1844, %a.after1832
  %a.load21853 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1827, ptr %a.load21840, ptr %a.load21853)
  br label %choice.exit

choice.case1854:                                  ; preds = %choice.next1818
  %pay.gep1859 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1860 = load ptr, ptr %pay.gep1859, align 8
  store ptr %payload.ptr1860, ptr %var._1861, align 8
  store ptr %payload.ptr1860, ptr %var.r1862, align 8
  %var.load1863 = load ptr, ptr %var.r1862, align 8
  %fld.gep1864 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1863, i32 0, i32 0
  %fld.load1865 = load i1, ptr %fld.gep1864, align 1
  br i1 %fld.load1865, label %choice.then1866, label %choice.exit1867

choice.next1855:                                  ; preds = %choice.next1818
  %tag.gep1899 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1900 = load i64, ptr %tag.gep1899, align 8
  %tag.match1901 = icmp eq i64 %tag.id1900, 29
  br i1 %tag.match1901, label %choice.case1897, label %choice.next1898

choice.then1866:                                  ; preds = %choice.case1854
  %var.load1868 = load ptr, ptr %var.r1862, align 8
  %fld.gep1869 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1868, i32 0, i32 1
  %fld.load1870 = load ptr, ptr %fld.gep1869, align 8
  %var.load1871 = load ptr, ptr %var.locals, align 8
  %a.load1872 = load ptr, ptr %var.locals, align 8
  %a.null1873 = icmp eq ptr %a.load1872, null
  br i1 %a.null1873, label %a.create1874, label %a.after1875

choice.exit1867:                                  ; preds = %a.after1888, %choice.case1854
  br label %choice.exit

a.create1874:                                     ; preds = %choice.then1866
  %arena.cur1876 = call ptr @dva_arena_current()
  %a.create1877 = call ptr @dva_arena_alloc(ptr %arena.cur1876, i64 24)
  %arena.cur1878 = call ptr @dva_arena_current()
  %a.buf1879 = call ptr @dva_arena_alloc(ptr %arena.cur1878, i64 128)
  %a.len.gep1880 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1877, i32 0, i32 0
  store i64 0, ptr %a.len.gep1880, align 8
  %a.data.gep1881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1877, i32 0, i32 1
  store ptr %a.buf1879, ptr %a.data.gep1881, align 8
  %a.cap.gep1882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1877, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1882, align 8
  store ptr %a.create1877, ptr %var.locals, align 8
  br label %a.after1875

a.after1875:                                      ; preds = %a.create1874, %choice.then1866
  %a.load21883 = load ptr, ptr %var.locals, align 8
  %var.load1884 = load ptr, ptr %var.refs, align 8
  %a.load1885 = load ptr, ptr %var.refs, align 8
  %a.null1886 = icmp eq ptr %a.load1885, null
  br i1 %a.null1886, label %a.create1887, label %a.after1888

a.create1887:                                     ; preds = %a.after1875
  %arena.cur1889 = call ptr @dva_arena_current()
  %a.create1890 = call ptr @dva_arena_alloc(ptr %arena.cur1889, i64 24)
  %arena.cur1891 = call ptr @dva_arena_current()
  %a.buf1892 = call ptr @dva_arena_alloc(ptr %arena.cur1891, i64 128)
  %a.len.gep1893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1890, i32 0, i32 0
  store i64 0, ptr %a.len.gep1893, align 8
  %a.data.gep1894 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1890, i32 0, i32 1
  store ptr %a.buf1892, ptr %a.data.gep1894, align 8
  %a.cap.gep1895 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1890, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1895, align 8
  store ptr %a.create1890, ptr %var.refs, align 8
  br label %a.after1888

a.after1888:                                      ; preds = %a.create1887, %a.after1875
  %a.load21896 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1870, ptr %a.load21883, ptr %a.load21896)
  br label %choice.exit1867

choice.case1897:                                  ; preds = %choice.next1855
  %pay.gep1902 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1903 = load ptr, ptr %pay.gep1902, align 8
  store ptr %payload.ptr1903, ptr %var._1904, align 8
  store ptr %payload.ptr1903, ptr %var.m1905, align 8
  %var.load1906 = load ptr, ptr %var.m1905, align 8
  %a.load1907 = load ptr, ptr %var.m1905, align 8
  %a.null1908 = icmp eq ptr %a.load1907, null
  br i1 %a.null1908, label %a.create1909, label %a.after1910

choice.next1898:                                  ; preds = %choice.next1855
  %tag.gep1995 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1996 = load i64, ptr %tag.gep1995, align 8
  %tag.match1997 = icmp eq i64 %tag.id1996, 19
  br i1 %tag.match1997, label %choice.case1993, label %choice.next1994

a.create1909:                                     ; preds = %choice.case1897
  %arena.cur1911 = call ptr @dva_arena_current()
  %a.create1912 = call ptr @dva_arena_alloc(ptr %arena.cur1911, i64 24)
  %arena.cur1913 = call ptr @dva_arena_current()
  %a.buf1914 = call ptr @dva_arena_alloc(ptr %arena.cur1913, i64 128)
  %a.len.gep1915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 0
  store i64 0, ptr %a.len.gep1915, align 8
  %a.data.gep1916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 1
  store ptr %a.buf1914, ptr %a.data.gep1916, align 8
  %a.cap.gep1917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1917, align 8
  store ptr %a.create1912, ptr %var.m1905, align 8
  br label %a.after1910

a.after1910:                                      ; preds = %a.create1909, %choice.case1897
  %a.load21918 = load ptr, ptr %var.m1905, align 8
  %arr.cycle.len1919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21918, i32 0, i32 0
  %arr.cycle.len1920 = load i64, ptr %arr.cycle.len1919, align 8
  %arr.cycle.data1921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21918, i32 0, i32 1
  %arr.cycle.data1922 = load ptr, ptr %arr.cycle.data1921, align 8
  store i64 0, ptr %loop.idx.48, align 8
  %cycle.prev.u1924 = load ptr, ptr %var._1904, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %a.after1910
  %counter.load1925 = load i64, ptr %loop.idx.48, align 8
  %loop.cond1926 = icmp slt i64 %counter.load1925, %arr.cycle.len1920
  br i1 %loop.cond1926, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i1927 = sub i64 %counter.load1925, 0
  store i64 1, ptr %loop.step.48, align 8
  %arr.elem.gep1928 = getelementptr i64, ptr %arr.cycle.data1922, i64 %counter.load1925
  %arr.elem.raw1929 = load i64, ptr %arr.elem.gep1928, align 8
  %slot.i2p1930 = inttoptr i64 %arr.elem.raw1929 to ptr
  store i64 %loop.rel.i1927, ptr %var._i1931, align 8
  store ptr %slot.i2p1930, ptr %var._1932, align 8
  store ptr %slot.i2p1930, ptr %var.p1923, align 8
  %var.load1933 = load ptr, ptr %var.p1923, align 8
  %fld.gep1934 = getelementptr inbounds { ptr, ptr }, ptr %var.load1933, i32 0, i32 0
  %fld.load1935 = load ptr, ptr %fld.gep1934, align 8
  %var.load1936 = load ptr, ptr %var.locals, align 8
  %a.load1937 = load ptr, ptr %var.locals, align 8
  %a.null1938 = icmp eq ptr %a.load1937, null
  br i1 %a.null1938, label %a.create1939, label %a.after1940

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %a.after1982
  %step.val1991 = load i64, ptr %loop.step.48, align 8
  %loop.next1992 = add i64 %counter.load1925, %step.val1991
  store i64 %loop.next1992, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  store ptr %cycle.prev.u1924, ptr %var._1904, align 8
  br label %choice.exit

a.create1939:                                     ; preds = %loop.body.48
  %arena.cur1941 = call ptr @dva_arena_current()
  %a.create1942 = call ptr @dva_arena_alloc(ptr %arena.cur1941, i64 24)
  %arena.cur1943 = call ptr @dva_arena_current()
  %a.buf1944 = call ptr @dva_arena_alloc(ptr %arena.cur1943, i64 128)
  %a.len.gep1945 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1942, i32 0, i32 0
  store i64 0, ptr %a.len.gep1945, align 8
  %a.data.gep1946 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1942, i32 0, i32 1
  store ptr %a.buf1944, ptr %a.data.gep1946, align 8
  %a.cap.gep1947 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1942, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1947, align 8
  store ptr %a.create1942, ptr %var.locals, align 8
  br label %a.after1940

a.after1940:                                      ; preds = %a.create1939, %loop.body.48
  %a.load21948 = load ptr, ptr %var.locals, align 8
  %var.load1949 = load ptr, ptr %var.refs, align 8
  %a.load1950 = load ptr, ptr %var.refs, align 8
  %a.null1951 = icmp eq ptr %a.load1950, null
  br i1 %a.null1951, label %a.create1952, label %a.after1953

a.create1952:                                     ; preds = %a.after1940
  %arena.cur1954 = call ptr @dva_arena_current()
  %a.create1955 = call ptr @dva_arena_alloc(ptr %arena.cur1954, i64 24)
  %arena.cur1956 = call ptr @dva_arena_current()
  %a.buf1957 = call ptr @dva_arena_alloc(ptr %arena.cur1956, i64 128)
  %a.len.gep1958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 0
  store i64 0, ptr %a.len.gep1958, align 8
  %a.data.gep1959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 1
  store ptr %a.buf1957, ptr %a.data.gep1959, align 8
  %a.cap.gep1960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1955, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1960, align 8
  store ptr %a.create1955, ptr %var.refs, align 8
  br label %a.after1953

a.after1953:                                      ; preds = %a.create1952, %a.after1940
  %a.load21961 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1935, ptr %a.load21948, ptr %a.load21961)
  %var.load1962 = load ptr, ptr %var.p1923, align 8
  %fld.gep1963 = getelementptr inbounds { ptr, ptr }, ptr %var.load1962, i32 0, i32 1
  %fld.load1964 = load ptr, ptr %fld.gep1963, align 8
  %var.load1965 = load ptr, ptr %var.locals, align 8
  %a.load1966 = load ptr, ptr %var.locals, align 8
  %a.null1967 = icmp eq ptr %a.load1966, null
  br i1 %a.null1967, label %a.create1968, label %a.after1969

a.create1968:                                     ; preds = %a.after1953
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
  store ptr %a.create1971, ptr %var.locals, align 8
  br label %a.after1969

a.after1969:                                      ; preds = %a.create1968, %a.after1953
  %a.load21977 = load ptr, ptr %var.locals, align 8
  %var.load1978 = load ptr, ptr %var.refs, align 8
  %a.load1979 = load ptr, ptr %var.refs, align 8
  %a.null1980 = icmp eq ptr %a.load1979, null
  br i1 %a.null1980, label %a.create1981, label %a.after1982

a.create1981:                                     ; preds = %a.after1969
  %arena.cur1983 = call ptr @dva_arena_current()
  %a.create1984 = call ptr @dva_arena_alloc(ptr %arena.cur1983, i64 24)
  %arena.cur1985 = call ptr @dva_arena_current()
  %a.buf1986 = call ptr @dva_arena_alloc(ptr %arena.cur1985, i64 128)
  %a.len.gep1987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 0
  store i64 0, ptr %a.len.gep1987, align 8
  %a.data.gep1988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 1
  store ptr %a.buf1986, ptr %a.data.gep1988, align 8
  %a.cap.gep1989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1989, align 8
  store ptr %a.create1984, ptr %var.refs, align 8
  br label %a.after1982

a.after1982:                                      ; preds = %a.create1981, %a.after1969
  %a.load21990 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1964, ptr %a.load21977, ptr %a.load21990)
  br label %loop.latch.48

choice.case1993:                                  ; preds = %choice.next1898
  %pay.gep1998 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1999 = load ptr, ptr %pay.gep1998, align 8
  store ptr %payload.ptr1999, ptr %var._2000, align 8
  store ptr %payload.ptr1999, ptr %var.rm, align 8
  %var.load2001 = load ptr, ptr %var.rm, align 8
  %fld.gep2002 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load2001, i32 0, i32 0
  %fld.load2003 = load ptr, ptr %fld.gep2002, align 8
  %var.load2004 = load ptr, ptr %var.locals, align 8
  %a.load2005 = load ptr, ptr %var.locals, align 8
  %a.null2006 = icmp eq ptr %a.load2005, null
  br i1 %a.null2006, label %a.create2007, label %a.after2008

choice.next1994:                                  ; preds = %choice.next1898
  br label %choice.exit

a.create2007:                                     ; preds = %choice.case1993
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
  store ptr %a.create2010, ptr %var.locals, align 8
  br label %a.after2008

a.after2008:                                      ; preds = %a.create2007, %choice.case1993
  %a.load22016 = load ptr, ptr %var.locals, align 8
  %var.load2017 = load ptr, ptr %var.refs, align 8
  %a.load2018 = load ptr, ptr %var.refs, align 8
  %a.null2019 = icmp eq ptr %a.load2018, null
  br i1 %a.null2019, label %a.create2020, label %a.after2021

a.create2020:                                     ; preds = %a.after2008
  %arena.cur2022 = call ptr @dva_arena_current()
  %a.create2023 = call ptr @dva_arena_alloc(ptr %arena.cur2022, i64 24)
  %arena.cur2024 = call ptr @dva_arena_current()
  %a.buf2025 = call ptr @dva_arena_alloc(ptr %arena.cur2024, i64 128)
  %a.len.gep2026 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2023, i32 0, i32 0
  store i64 0, ptr %a.len.gep2026, align 8
  %a.data.gep2027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2023, i32 0, i32 1
  store ptr %a.buf2025, ptr %a.data.gep2027, align 8
  %a.cap.gep2028 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2023, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2028, align 8
  store ptr %a.create2023, ptr %var.refs, align 8
  br label %a.after2021

a.after2021:                                      ; preds = %a.create2020, %a.after2008
  %a.load22029 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load2003, ptr %a.load22016, ptr %a.load22029)
  br label %choice.exit
}

define internal void @dva_array_grow(ptr %0) #0 {
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
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
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
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

define i64 @"dep_graph::find_node_idx"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._116 = alloca ptr, align 8
  %var._115 = alloca ptr, align 8
  %var._114 = alloca ptr, align 8
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data6, i64 %mk.len8)
  %m.capm1 = sub i64 %m.cap3, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %m.mem.key.slot = getelementptr i64, ptr %m.keys4, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen10 = load i64, ptr %mk.slen, align 8
  %mk.slen11 = and i64 %mk.slen10, 281474976710655
  %str.tag12 = lshr i64 %mk.slen10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

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

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen23 = load i64, ptr %mk.nlen, align 8
  %mk.nlen24 = and i64 %mk.nlen23, 281474976710655
  %str.tag25 = lshr i64 %mk.nlen23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  br i1 %tag.immortal27, label %str_ok26, label %tag.gen_check28

tag.gen_check15:                                  ; preds = %m.mem.found
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok19 = icmp eq i64 %str.tag12, %active.gen18
  br i1 %tag.fast.ok19, label %str_ok13, label %tag.slow_check16

tag.slow_check16:                                 ; preds = %tag.gen_check15
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag12)
  br i1 %tag.valid21, label %str_ok13, label %tag.stale17

tag.stale17:                                      ; preds = %tag.slow_check16
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %str_ok13

str_ok26:                                         ; preds = %abort.dead35, %tag.slow_check29, %tag.gen_check28, %str_ok13
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen24
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

tag.gen_check28:                                  ; preds = %str_ok13
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok32 = icmp eq i64 %str.tag25, %active.gen31
  br i1 %tag.fast.ok32, label %str_ok26, label %tag.slow_check29

tag.slow_check29:                                 ; preds = %tag.gen_check28
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag25)
  br i1 %tag.valid34, label %str_ok26, label %tag.stale30

tag.stale30:                                      ; preds = %tag.slow_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %str_ok26

mk.eq.then:                                       ; preds = %str_ok26
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata36 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata37 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata36, ptr %mk.ndata37, i64 %mk.nlen24)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok26
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load38 = load ptr, ptr %var.indices, align 8
  %var.load39 = load ptr, ptr %var.name, align 8
  %m.cap40 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load38, i32 0, i32 1
  %m.cap41 = load i64, ptr %m.cap40, align 8
  %m.keys42 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load38, i32 0, i32 2
  %m.keys43 = load ptr, ptr %m.keys42, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load38, i32 0, i32 3
  %m.vals44 = load ptr, ptr %m.vals, align 8
  %m.states45 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load38, i32 0, i32 4
  %m.states46 = load ptr, ptr %m.states45, align 8
  %mk.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %mk.data48 = load ptr, ptr %mk.data47, align 8
  %mk.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %mk.len50 = load i64, ptr %mk.len49, align 8
  %mk.len51 = and i64 %mk.len50, 281474976710655
  %str.tag52 = lshr i64 %mk.len50, 48
  %tag.immortal54 = icmp eq i64 %str.tag52, 0
  br i1 %tag.immortal54, label %str_ok53, label %tag.gen_check55

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit111
  %choice.res151 = phi i64 [ %var.load150, %choice.exit111 ], [ -1, %choice.else ]
  ret i64 %choice.res151

str_ok53:                                         ; preds = %abort.dead62, %tag.slow_check56, %tag.gen_check55, %choice.then
  %hash.str63 = call i64 @dva_hash_string(ptr %mk.data48, i64 %mk.len51)
  %m.capm164 = sub i64 %m.cap41, 1
  %m.idx065 = and i64 %hash.str63, %m.capm164
  br label %m.rd.loop

tag.gen_check55:                                  ; preds = %choice.then
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok59 = icmp eq i64 %str.tag52, %active.gen58
  br i1 %tag.fast.ok59, label %str_ok53, label %tag.slow_check56

tag.slow_check56:                                 ; preds = %tag.gen_check55
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag52)
  br i1 %tag.valid61, label %str_ok53, label %tag.stale57

tag.stale57:                                      ; preds = %tag.slow_check56
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %str_ok53

m.rd.loop:                                        ; preds = %m.rd.next, %str_ok53
  %m.rd.idx = phi i64 [ %m.idx065, %str_ok53 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe66 = phi i64 [ 0, %str_ok53 ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe66, %m.cap41
  %m.rd.state.gep = getelementptr i8, ptr %m.states46, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys43, i64 %m.rd.idx
  %mk.stored67 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen68 = getelementptr inbounds { i64, ptr }, ptr %mk.stored67, i32 0, i32 0
  %mk.slen69 = load i64, ptr %mk.slen68, align 8
  %mk.slen70 = and i64 %mk.slen69, 281474976710655
  %str.tag71 = lshr i64 %mk.slen69, 48
  %tag.immortal73 = icmp eq i64 %str.tag71, 0
  br i1 %tag.immortal73, label %str_ok72, label %tag.gen_check74

m.rd.next:                                        ; preds = %mk.eq.merge99, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm164
  %m.rd.probe.next = add i64 %m.rd.probe66, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur107 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 56)
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
  %ram.tag108 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag108, label %choice.then109, label %choice.else110

str_ok72:                                         ; preds = %abort.dead81, %tag.slow_check75, %tag.gen_check74, %m.rd.found
  %mk.nlen82 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %mk.nlen83 = load i64, ptr %mk.nlen82, align 8
  %mk.nlen84 = and i64 %mk.nlen83, 281474976710655
  %str.tag85 = lshr i64 %mk.nlen83, 48
  %tag.immortal87 = icmp eq i64 %str.tag85, 0
  br i1 %tag.immortal87, label %str_ok86, label %tag.gen_check88

tag.gen_check74:                                  ; preds = %m.rd.found
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok78 = icmp eq i64 %str.tag71, %active.gen77
  br i1 %tag.fast.ok78, label %str_ok72, label %tag.slow_check75

tag.slow_check75:                                 ; preds = %tag.gen_check74
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag71)
  br i1 %tag.valid80, label %str_ok72, label %tag.stale76

tag.stale76:                                      ; preds = %tag.slow_check75
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %str_ok72

str_ok86:                                         ; preds = %abort.dead95, %tag.slow_check89, %tag.gen_check88, %str_ok72
  %mk.lenseq96 = icmp eq i64 %mk.slen70, %mk.nlen84
  br i1 %mk.lenseq96, label %mk.eq.then97, label %mk.eq.else98

tag.gen_check88:                                  ; preds = %str_ok72
  %active.gen91 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok92 = icmp eq i64 %str.tag85, %active.gen91
  br i1 %tag.fast.ok92, label %str_ok86, label %tag.slow_check89

tag.slow_check89:                                 ; preds = %tag.gen_check88
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag85)
  br i1 %tag.valid94, label %str_ok86, label %tag.stale90

tag.stale90:                                      ; preds = %tag.slow_check89
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %str_ok86

mk.eq.then97:                                     ; preds = %str_ok86
  %mk.sdata100 = getelementptr inbounds { i64, ptr }, ptr %mk.stored67, i32 0, i32 1
  %mk.sdata101 = load ptr, ptr %mk.sdata100, align 8
  %mk.ndata102 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %mk.ndata103 = load ptr, ptr %mk.ndata102, align 8
  %mk.memcmp104 = call i32 @memcmp(ptr %mk.sdata101, ptr %mk.ndata103, i64 %mk.nlen84)
  %mk.cmpeq105 = icmp eq i32 %mk.memcmp104, 0
  br label %mk.eq.merge99

mk.eq.else98:                                     ; preds = %str_ok86
  br label %mk.eq.merge99

mk.eq.merge99:                                    ; preds = %mk.eq.else98, %mk.eq.then97
  %mk.eq106 = phi i1 [ %mk.cmpeq105, %mk.eq.then97 ], [ false, %mk.eq.else98 ]
  br i1 %mk.eq106, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.merge99
  %m.rd.val.slot = getelementptr i64, ptr %m.vals44, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then109:                                   ; preds = %m.rd.done
  %ram.pay112 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay112, ptr %var._, align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %m.rd.done
  %ram.pay113 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay113 to ptr
  store ptr %pay.ptr, ptr %var._114, align 8
  store ptr %pay.ptr, ptr %var._115, align 8
  store ptr %pay.ptr, ptr %var._116, align 8
  %err.code.gep117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep117, align 8
  %err.msg.gep118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep118, align 8
  %err.file.gep119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep119, align 8
  %err.line.gep120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep120, align 8
  %err.col.gep121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep121, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len122 = load i64, ptr %err.msg.len, align 8
  %err.msg.len123 = and i64 %err.msg.len122, 281474976710655
  %str.tag124 = lshr i64 %err.msg.len122, 48
  %tag.immortal126 = icmp eq i64 %str.tag124, 0
  br i1 %tag.immortal126, label %str_ok125, label %tag.gen_check127

choice.exit111:                                   ; preds = %err.abort, %choice.then109
  %choice.res = phi i64 [ %ram.pay112, %choice.then109 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load150 = load i64, ptr %var.idx, align 8
  br label %choice.exit

str_ok125:                                        ; preds = %abort.dead134, %tag.slow_check128, %tag.gen_check127, %choice.else110
  %err.msg.len32 = trunc i64 %err.msg.len123 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data135 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len136 = load i64, ptr %err.file.len, align 8
  %err.file.len137 = and i64 %err.file.len136, 281474976710655
  %str.tag138 = lshr i64 %err.file.len136, 48
  %tag.immortal140 = icmp eq i64 %str.tag138, 0
  br i1 %tag.immortal140, label %str_ok139, label %tag.gen_check141

tag.gen_check127:                                 ; preds = %choice.else110
  %active.gen130 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok131 = icmp eq i64 %str.tag124, %active.gen130
  br i1 %tag.fast.ok131, label %str_ok125, label %tag.slow_check128

tag.slow_check128:                                ; preds = %tag.gen_check127
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %str.tag124)
  br i1 %tag.valid133, label %str_ok125, label %tag.stale129

tag.stale129:                                     ; preds = %tag.slow_check128
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %str_ok125

str_ok139:                                        ; preds = %abort.dead148, %tag.slow_check142, %tag.gen_check141, %str_ok125
  %err.file.len32 = trunc i64 %err.file.len137 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data149 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check141:                                 ; preds = %str_ok125
  %active.gen144 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok145 = icmp eq i64 %str.tag138, %active.gen144
  br i1 %tag.fast.ok145, label %str_ok139, label %tag.slow_check142

tag.slow_check142:                                ; preds = %tag.gen_check141
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag138)
  br i1 %tag.valid147, label %str_ok139, label %tag.stale143

tag.stale143:                                     ; preds = %tag.slow_check142
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead148:                                    ; No predecessors!
  br label %str_ok139

err.thread:                                       ; preds = %str_ok139
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok139
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data135, i32 %err.file.len32, ptr %err.file.data149, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit111
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i1 @"dep_graph::node_has_dep"(ptr %0, ptr %1) #0 {
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

define i1 @"dep_graph::is_generic_sig"(ptr %0) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.51.then, label %and.51.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.51.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 7
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.chk.len6 = load i64, ptr %s.chk.len, align 8
  %s.chk.len7 = and i64 %s.chk.len6, 281474976710655
  %str.tag8 = lshr i64 %s.chk.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

and.51.else:                                      ; preds = %str_ok
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %str.eq.merge
  %and.51.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.51.else ]
  store i1 %and.51.phi, ptr %var.is_ct, align 1
  %var.load24 = load ptr, ptr %var.a, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load24, i32 0, i32 8
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %and.51.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len20, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len20
  %final.start = select i1 %start.gt.len, i64 %s.read.len20, i64 %c.start.0
  %rel.end = add i64 %s.read.len20, 4
  %norm.end = select i1 false, i64 %rel.end, i64 4
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len20
  %final.end = select i1 %end.gt.len, i64 %s.read.len20, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %cmp.str = load i64, ptr @str.9.struct, align 8
  %cmp.str22 = and i64 %cmp.str, 281474976710655
  %cmp.str23 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str22
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check11:                                  ; preds = %and.51.then
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str23, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.51.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp31, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load32 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load32, label %or.52.then, label %or.52.else

choice.case:                                      ; preds = %and.51.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load27 = load ptr, ptr %var.f, align 8
  %fld.gep28 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load27, i32 0, i32 4
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 0
  %a.len.query30 = load i64, ptr %a.len.query, align 8
  %cmptmp31 = icmp sgt i64 %a.len.query30, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.51.exit
  br label %choice.exit

or.52.then:                                       ; preds = %choice.exit
  br label %or.52.exit

or.52.else:                                       ; preds = %choice.exit
  %var.load33 = load i1, ptr %var.is_ti, align 1
  br label %or.52.exit

or.52.exit:                                       ; preds = %or.52.else, %or.52.then
  %or.52.phi = phi i1 [ %var.load32, %or.52.then ], [ %var.load33, %or.52.else ]
  ret i1 %or.52.phi
}

define ptr @"dep_graph::build_dep_graph"(ptr %0) #0 {
entry:
  %var.known = alloca i1, align 1
  %var.node_indices = alloca ptr, align 8
  %var.target_ref = alloca ptr, align 8
  %var._833 = alloca ptr, align 8
  %var._i832 = alloca i64, align 8
  %var.ref_name = alloca ptr, align 8
  %loop.step.67 = alloca i64, align 8
  %loop.idx.67 = alloca i64, align 8
  %var.mod2 = alloca ptr, align 8
  %var.filtered_deps = alloca ptr, align 8
  %var.raw_refs = alloca ptr, align 8
  %var.name2 = alloca ptr, align 8
  %var.is_gen2 = alloca i1, align 1
  %var.is_fwd2 = alloca i1, align 1
  %var.a2 = alloca ptr, align 8
  %var._677 = alloca ptr, align 8
  %var._667 = alloca ptr, align 8
  %var._i666 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %var.st2 = alloca ptr, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._296 = alloca ptr, align 8
  %var._286 = alloca ptr, align 8
  %var._i285 = alloca i64, align 8
  %var.st1 = alloca ptr, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
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
  %loop.step.54 = alloca i64, align 8
  %loop.idx.54 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.54, align 8
  br label %loop.header.54

loop.header.54:                                   ; preds = %loop.latch.54, %a.after27
  %counter.load = load i64, ptr %loop.idx.54, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len36
  br i1 %loop.cond, label %loop.body.54, label %loop.exit.nat.54

loop.body.54:                                     ; preds = %loop.header.54
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.54, align 8
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

loop.exit.nat.54:                                 ; preds = %loop.header.54
  br label %loop.exit.54

loop.latch.54:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.54, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.54, align 8
  br label %loop.header.54

loop.exit.54:                                     ; preds = %loop.exit.nat.54
  %arena.cur248 = call ptr @dva_arena_current()
  %m.new249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 48)
  %arena.cur250 = call ptr @dva_arena_current()
  %m.keys251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 64)
  %arena.cur252 = call ptr @dva_arena_current()
  %m.vals253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 64)
  %arena.cur254 = call ptr @dva_arena_current()
  %m.states255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states255, i8 0, i64 8, i1 false)
  %m.count.gep256 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 0
  store i64 0, ptr %m.count.gep256, align 8
  %m.cap.gep257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 1
  store i64 8, ptr %m.cap.gep257, align 8
  %m.keys.gep258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 2
  store ptr %m.keys251, ptr %m.keys.gep258, align 8
  %m.vals.gep259 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 3
  store ptr %m.vals253, ptr %m.vals.gep259, align 8
  %m.states.gep260 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 4
  store ptr %m.states255, ptr %m.states.gep260, align 8
  %m.tombs.gep261 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new249, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep261, align 8
  store ptr %m.new249, ptr %var.def_names, align 8
  %var.load262 = load ptr, ptr %var.stmts, align 8
  %a.load263 = load ptr, ptr %var.stmts, align 8
  %a.null264 = icmp eq ptr %a.load263, null
  br i1 %a.null264, label %a.create265, label %a.after266

choice.exit:                                      ; preds = %choice.next, %choice.exit64
  br label %loop.latch.54

choice.case:                                      ; preds = %loop.body.54
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

choice.next:                                      ; preds = %loop.body.54
  br label %choice.exit

choice.exit41:                                    ; preds = %choice.next43, %choice.case42
  %choice.res = phi i1 [ %cmptmp, %choice.case42 ], [ false, %choice.next43 ]
  store i1 %choice.res, ptr %var.is_fe, align 1
  %var.load54 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load54)
  br i1 %call.res, label %or.55.then, label %or.55.else

choice.case42:                                    ; preds = %choice.case
  %pay.gep47 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr48 = load ptr, ptr %pay.gep47, align 8
  store ptr %payload.ptr48, ptr %var._49, align 8
  store ptr %payload.ptr48, ptr %var.fek, align 8
  %var.load50 = load ptr, ptr %var.fek, align 8
  %fld.gep51 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 0
  %a.len.query53 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query53, 0
  br label %choice.exit41

choice.next43:                                    ; preds = %choice.case
  br label %choice.exit41

or.55.then:                                       ; preds = %choice.exit41
  br label %or.55.exit

or.55.else:                                       ; preds = %choice.exit41
  %var.load55 = load i1, ptr %var.is_fe, align 1
  br label %or.55.exit

or.55.exit:                                       ; preds = %or.55.else, %or.55.then
  %or.55.phi = phi i1 [ %call.res, %or.55.then ], [ %var.load55, %or.55.else ]
  store i1 %or.55.phi, ptr %var.is_gen, align 1
  %var.load56 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load56, label %and.56.then, label %and.56.else

and.56.then:                                      ; preds = %or.55.exit
  %var.load57 = load ptr, ptr %var.ak, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len62 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len61, %eq.rhs.len62
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.56.else:                                      ; preds = %or.55.exit
  br label %and.56.exit

and.56.exit:                                      ; preds = %and.56.else, %str.eq.merge
  %and.56.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load56, %and.56.else ]
  br i1 %and.56.phi, label %choice.then, label %choice.exit64

str.eq.then:                                      ; preds = %and.56.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %eq.lhs.data63 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data63, ptr %eq.rhs.data, i64 %eq.lhs.len61)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.56.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.56.exit

choice.then:                                      ; preds = %and.56.exit
  %var.load65 = load ptr, ptr %var.gen_names, align 8
  %var.load66 = load ptr, ptr %var.ak, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load66, i32 0, i32 0
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %m.cap69 = load i64, ptr %m.cap, align 8
  %m.keys70 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  %m.keys71 = load ptr, ptr %m.keys70, align 8
  %m.vals72 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 3
  %m.vals73 = load ptr, ptr %m.vals72, align 8
  %m.states74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 4
  %m.states75 = load ptr, ptr %m.states74, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %mk.data76 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %mk.len77 = load i64, ptr %mk.len, align 8
  %mk.len78 = and i64 %mk.len77, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %mk.data76, i64 %mk.len78)
  %m.capm1 = sub i64 %m.cap69, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

choice.exit64:                                    ; preds = %m.done, %and.56.exit
  br label %choice.exit

m.loop:                                           ; preds = %m.next, %choice.then
  %m.idx = phi i64 [ %m.idx0, %choice.then ], [ %m.idx.next, %m.next ]
  %m.tomb79 = phi i64 [ -1, %choice.then ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %choice.then ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap69
  %m.state.gep = getelementptr i8, ptr %m.states75, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb79, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb79, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys71, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen80 = load i64, ptr %mk.slen, align 8
  %mk.slen81 = and i64 %mk.slen80, 281474976710655
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %mk.nlen82 = load i64, ptr %mk.nlen, align 8
  %mk.nlen83 = and i64 %mk.nlen82, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen81, %mk.nlen83
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals73, i64 %m.idx
  store i64 1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb79, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap69, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done186, %m.overwrite
  br label %choice.exit64

mk.eq.then:                                       ; preds = %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata84 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %mk.ndata85 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata84, ptr %mk.ndata85, i64 %mk.nlen83)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %m.found
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %m.old.cap86 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  %m.old.keys87 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 3
  %m.old.vals88 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 4
  %m.old.states89 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap86, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %m.live.cnt90 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt90, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap86
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap86
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur91 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur92 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 %m.gv.bytes)
  %arena.cur93 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep94 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep94, align 8
  %m.keys.gep95 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep95, align 8
  %m.vals.gep96 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep96, align 8
  %m.states.gep97 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep97, align 8
  %m.count.gep98 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 0, ptr %m.count.gep98, align 8
  %m.tombs.gep99 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep99, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb235 = icmp ne i64 %m.tomb79, -1
  %m.ins.idx236 = select i1 %m.use.tomb235, i64 %m.tomb79, i64 %m.idx
  %m.key.slot237 = getelementptr i64, ptr %m.keys71, i64 %m.ins.idx236
  store ptr %fld.load68, ptr %m.key.slot237, align 8
  %m.val.slot238 = getelementptr i64, ptr %m.vals73, i64 %m.ins.idx236
  store i64 1, ptr %m.val.slot238, align 8
  %m.ins.state.slot239 = getelementptr i8, ptr %m.states75, i64 %m.ins.idx236
  store i8 1, ptr %m.ins.state.slot239, align 1
  %m.count240 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %m.count241 = load i64, ptr %m.count240, align 8
  %m.count.next242 = add i64 %m.count241, 1
  %m.count.gep243 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 %m.count.next242, ptr %m.count.gep243, align 8
  %m.ins.tombs.p244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 5
  %m.ins.tombs245 = load i64, ptr %m.ins.tombs.p244, align 8
  %m.tomb.dec246 = select i1 %m.use.tomb235, i64 1, i64 0
  %m.ins.tombs.next247 = sub i64 %m.ins.tombs245, %m.tomb.dec246
  store i64 %m.ins.tombs.next247, ptr %m.ins.tombs.p244, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap86
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states89, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done123, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap163 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %m.cap164 = load i64, ptr %m.cap163, align 8
  %m.keys165 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  %m.keys166 = load ptr, ptr %m.keys165, align 8
  %m.vals167 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 3
  %m.vals168 = load ptr, ptr %m.vals167, align 8
  %m.states169 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 4
  %m.states170 = load ptr, ptr %m.states169, align 8
  %mk.data171 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %mk.data172 = load ptr, ptr %mk.data171, align 8
  %mk.len173 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %mk.len174 = load i64, ptr %mk.len173, align 8
  %mk.len175 = and i64 %mk.len174, 281474976710655
  %hash.str176 = call i64 @dva_hash_string(ptr %mk.data172, i64 %mk.len175)
  %m.capm1177 = sub i64 %m.cap164, 1
  %m.idx0178 = and i64 %hash.str176, %m.capm1177
  br label %m.loop179

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys87, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals88, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap100 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %m.cap101 = load i64, ptr %m.cap100, align 8
  %m.keys102 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  %m.keys103 = load ptr, ptr %m.keys102, align 8
  %m.vals104 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 3
  %m.vals105 = load ptr, ptr %m.vals104, align 8
  %m.states106 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 4
  %m.states107 = load ptr, ptr %m.states106, align 8
  %mk.data108 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data109 = load ptr, ptr %mk.data108, align 8
  %mk.len110 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len111 = load i64, ptr %mk.len110, align 8
  %mk.len112 = and i64 %mk.len111, 281474976710655
  %hash.str113 = call i64 @dva_hash_string(ptr %mk.data109, i64 %mk.len112)
  %m.capm1114 = sub i64 %m.cap101, 1
  %m.idx0115 = and i64 %hash.str113, %m.capm1114
  br label %m.loop116

m.loop116:                                        ; preds = %m.next121, %m.re.ins
  %m.idx124 = phi i64 [ %m.idx0115, %m.re.ins ], [ %m.idx.next157, %m.next121 ]
  %m.tomb125 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb155, %m.next121 ]
  %m.probe126 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next158, %m.next121 ]
  %m.reached.cap127 = icmp eq i64 %m.probe126, %m.cap101
  %m.state.gep128 = getelementptr i8, ptr %m.states107, i64 %m.idx124
  %m.state129 = load i8, ptr %m.state.gep128, align 1
  %m.is.empty130 = icmp eq i8 %m.state129, 0
  %m.stop131 = or i1 %m.is.empty130, %m.reached.cap127
  br i1 %m.stop131, label %m.empty122, label %m.check.tomb117

m.check.tomb117:                                  ; preds = %m.loop116
  %m.is.tomb132 = icmp eq i8 %m.state129, 2
  br i1 %m.is.tomb132, label %m.tomb118, label %m.found119

m.tomb118:                                        ; preds = %m.check.tomb117
  %m.has.tomb133 = icmp ne i64 %m.tomb125, -1
  %m.tomb.sel134 = select i1 %m.has.tomb133, i64 %m.tomb125, i64 %m.idx124
  br label %m.next121

m.found119:                                       ; preds = %m.check.tomb117
  %m.key.slot135 = getelementptr i64, ptr %m.keys103, i64 %m.idx124
  %mk.stored136 = load ptr, ptr %m.key.slot135, align 8
  %mk.slen137 = getelementptr inbounds { i64, ptr }, ptr %mk.stored136, i32 0, i32 0
  %mk.slen138 = load i64, ptr %mk.slen137, align 8
  %mk.slen139 = and i64 %mk.slen138, 281474976710655
  %mk.nlen140 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen141 = load i64, ptr %mk.nlen140, align 8
  %mk.nlen142 = and i64 %mk.nlen141, 281474976710655
  %mk.lenseq143 = icmp eq i64 %mk.slen139, %mk.nlen142
  br i1 %mk.lenseq143, label %mk.eq.then144, label %mk.eq.else145

m.overwrite120:                                   ; preds = %mk.eq.merge146
  %m.val.slot154 = getelementptr i64, ptr %m.vals105, i64 %m.idx124
  store i64 %m.re.val, ptr %m.val.slot154, align 8
  br label %m.done123

m.next121:                                        ; preds = %mk.eq.merge146, %m.tomb118
  %m.next.tomb155 = phi i64 [ %m.tomb.sel134, %m.tomb118 ], [ %m.tomb125, %mk.eq.merge146 ]
  %m.idx.add156 = add i64 %m.idx124, 1
  %m.idx.next157 = and i64 %m.idx.add156, %m.capm1114
  %m.probe.next158 = add i64 %m.probe126, 1
  br label %m.loop116

m.empty122:                                       ; preds = %m.loop116
  %m.use.tomb = icmp ne i64 %m.tomb125, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb125, i64 %m.idx124
  %m.key.slot159 = getelementptr i64, ptr %m.keys103, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot159, align 8
  %m.val.slot160 = getelementptr i64, ptr %m.vals105, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot160, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states107, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %m.count161 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count161, 1
  %m.count.gep162 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep162, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done123

m.done123:                                        ; preds = %m.empty122, %m.overwrite120
  br label %m.re.cont

mk.eq.then144:                                    ; preds = %m.found119
  %mk.sdata147 = getelementptr inbounds { i64, ptr }, ptr %mk.stored136, i32 0, i32 1
  %mk.sdata148 = load ptr, ptr %mk.sdata147, align 8
  %mk.ndata149 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata150 = load ptr, ptr %mk.ndata149, align 8
  %mk.memcmp151 = call i32 @memcmp(ptr %mk.sdata148, ptr %mk.ndata150, i64 %mk.nlen142)
  %mk.cmpeq152 = icmp eq i32 %mk.memcmp151, 0
  br label %mk.eq.merge146

mk.eq.else145:                                    ; preds = %m.found119
  br label %mk.eq.merge146

mk.eq.merge146:                                   ; preds = %mk.eq.else145, %mk.eq.then144
  %mk.eq153 = phi i1 [ %mk.cmpeq152, %mk.eq.then144 ], [ false, %mk.eq.else145 ]
  br i1 %mk.eq153, label %m.overwrite120, label %m.next121

m.loop179:                                        ; preds = %m.next184, %m.re.done
  %m.idx187 = phi i64 [ %m.idx0178, %m.re.done ], [ %m.idx.next220, %m.next184 ]
  %m.tomb188 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb218, %m.next184 ]
  %m.probe189 = phi i64 [ 0, %m.re.done ], [ %m.probe.next221, %m.next184 ]
  %m.reached.cap190 = icmp eq i64 %m.probe189, %m.cap164
  %m.state.gep191 = getelementptr i8, ptr %m.states170, i64 %m.idx187
  %m.state192 = load i8, ptr %m.state.gep191, align 1
  %m.is.empty193 = icmp eq i8 %m.state192, 0
  %m.stop194 = or i1 %m.is.empty193, %m.reached.cap190
  br i1 %m.stop194, label %m.empty185, label %m.check.tomb180

m.check.tomb180:                                  ; preds = %m.loop179
  %m.is.tomb195 = icmp eq i8 %m.state192, 2
  br i1 %m.is.tomb195, label %m.tomb181, label %m.found182

m.tomb181:                                        ; preds = %m.check.tomb180
  %m.has.tomb196 = icmp ne i64 %m.tomb188, -1
  %m.tomb.sel197 = select i1 %m.has.tomb196, i64 %m.tomb188, i64 %m.idx187
  br label %m.next184

m.found182:                                       ; preds = %m.check.tomb180
  %m.key.slot198 = getelementptr i64, ptr %m.keys166, i64 %m.idx187
  %mk.stored199 = load ptr, ptr %m.key.slot198, align 8
  %mk.slen200 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 0
  %mk.slen201 = load i64, ptr %mk.slen200, align 8
  %mk.slen202 = and i64 %mk.slen201, 281474976710655
  %mk.nlen203 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %mk.nlen204 = load i64, ptr %mk.nlen203, align 8
  %mk.nlen205 = and i64 %mk.nlen204, 281474976710655
  %mk.lenseq206 = icmp eq i64 %mk.slen202, %mk.nlen205
  br i1 %mk.lenseq206, label %mk.eq.then207, label %mk.eq.else208

m.overwrite183:                                   ; preds = %mk.eq.merge209
  %m.val.slot217 = getelementptr i64, ptr %m.vals168, i64 %m.idx187
  store i64 1, ptr %m.val.slot217, align 8
  br label %m.done186

m.next184:                                        ; preds = %mk.eq.merge209, %m.tomb181
  %m.next.tomb218 = phi i64 [ %m.tomb.sel197, %m.tomb181 ], [ %m.tomb188, %mk.eq.merge209 ]
  %m.idx.add219 = add i64 %m.idx187, 1
  %m.idx.next220 = and i64 %m.idx.add219, %m.capm1177
  %m.probe.next221 = add i64 %m.probe189, 1
  br label %m.loop179

m.empty185:                                       ; preds = %m.loop179
  %m.use.tomb222 = icmp ne i64 %m.tomb188, -1
  %m.ins.idx223 = select i1 %m.use.tomb222, i64 %m.tomb188, i64 %m.idx187
  %m.key.slot224 = getelementptr i64, ptr %m.keys166, i64 %m.ins.idx223
  store ptr %fld.load68, ptr %m.key.slot224, align 8
  %m.val.slot225 = getelementptr i64, ptr %m.vals168, i64 %m.ins.idx223
  store i64 1, ptr %m.val.slot225, align 8
  %m.ins.state.slot226 = getelementptr i8, ptr %m.states170, i64 %m.ins.idx223
  store i8 1, ptr %m.ins.state.slot226, align 1
  %m.count227 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %m.count228 = load i64, ptr %m.count227, align 8
  %m.count.next229 = add i64 %m.count228, 1
  %m.count.gep230 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 %m.count.next229, ptr %m.count.gep230, align 8
  %m.ins.tombs.p231 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load65, i32 0, i32 5
  %m.ins.tombs232 = load i64, ptr %m.ins.tombs.p231, align 8
  %m.tomb.dec233 = select i1 %m.use.tomb222, i64 1, i64 0
  %m.ins.tombs.next234 = sub i64 %m.ins.tombs232, %m.tomb.dec233
  store i64 %m.ins.tombs.next234, ptr %m.ins.tombs.p231, align 8
  br label %m.done186

m.done186:                                        ; preds = %m.empty185, %m.overwrite183
  br label %m.done

mk.eq.then207:                                    ; preds = %m.found182
  %mk.sdata210 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 1
  %mk.sdata211 = load ptr, ptr %mk.sdata210, align 8
  %mk.ndata212 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %mk.ndata213 = load ptr, ptr %mk.ndata212, align 8
  %mk.memcmp214 = call i32 @memcmp(ptr %mk.sdata211, ptr %mk.ndata213, i64 %mk.nlen205)
  %mk.cmpeq215 = icmp eq i32 %mk.memcmp214, 0
  br label %mk.eq.merge209

mk.eq.else208:                                    ; preds = %m.found182
  br label %mk.eq.merge209

mk.eq.merge209:                                   ; preds = %mk.eq.else208, %mk.eq.then207
  %mk.eq216 = phi i1 [ %mk.cmpeq215, %mk.eq.then207 ], [ false, %mk.eq.else208 ]
  br i1 %mk.eq216, label %m.overwrite183, label %m.next184

a.create265:                                      ; preds = %loop.exit.54
  %arena.cur267 = call ptr @dva_arena_current()
  %a.create268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 24)
  %arena.cur269 = call ptr @dva_arena_current()
  %a.buf270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 128)
  %a.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 0
  store i64 0, ptr %a.len.gep271, align 8
  %a.data.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 1
  store ptr %a.buf270, ptr %a.data.gep272, align 8
  %a.cap.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 2
  store i64 16, ptr %a.cap.gep273, align 8
  store ptr %a.create268, ptr %var.stmts, align 8
  br label %a.after266

a.after266:                                       ; preds = %a.create265, %loop.exit.54
  %a.load2274 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 0
  %arr.cycle.len276 = load i64, ptr %arr.cycle.len275, align 8
  %arr.cycle.data277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 1
  %arr.cycle.data278 = load ptr, ptr %arr.cycle.data277, align 8
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.header.57:                                   ; preds = %loop.latch.57, %a.after266
  %counter.load279 = load i64, ptr %loop.idx.57, align 8
  %loop.cond280 = icmp slt i64 %counter.load279, %arr.cycle.len276
  br i1 %loop.cond280, label %loop.body.57, label %loop.exit.nat.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i281 = sub i64 %counter.load279, 0
  store i64 1, ptr %loop.step.57, align 8
  %arr.elem.gep282 = getelementptr i64, ptr %arr.cycle.data278, i64 %counter.load279
  %arr.elem.raw283 = load i64, ptr %arr.elem.gep282, align 8
  %slot.i2p284 = inttoptr i64 %arr.elem.raw283 to ptr
  store i64 %loop.rel.i281, ptr %var._i285, align 8
  store ptr %slot.i2p284, ptr %var._286, align 8
  store ptr %slot.i2p284, ptr %var.st1, align 8
  %var.load287 = load ptr, ptr %var.st1, align 8
  %tag.gep291 = getelementptr inbounds { i64, ptr }, ptr %var.load287, i32 0, i32 0
  %tag.id292 = load i64, ptr %tag.gep291, align 8
  %tag.match293 = icmp eq i64 %tag.id292, 6
  br i1 %tag.match293, label %choice.case289, label %choice.next290

loop.exit.nat.57:                                 ; preds = %loop.header.57
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit288
  %step.val641 = load i64, ptr %loop.step.57, align 8
  %loop.next642 = add i64 %counter.load279, %step.val641
  store i64 %loop.next642, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %loop.exit.nat.57
  %var.load643 = load ptr, ptr %var.stmts, align 8
  %a.load644 = load ptr, ptr %var.stmts, align 8
  %a.null645 = icmp eq ptr %a.load644, null
  br i1 %a.null645, label %a.create646, label %a.after647

choice.exit288:                                   ; preds = %choice.next290, %choice.exit368
  br label %loop.latch.57

choice.case289:                                   ; preds = %loop.body.57
  %pay.gep294 = getelementptr inbounds { i64, ptr }, ptr %var.load287, i32 0, i32 1
  %payload.ptr295 = load ptr, ptr %pay.gep294, align 8
  store ptr %payload.ptr295, ptr %var._296, align 8
  store ptr %payload.ptr295, ptr %var.a1, align 8
  %var.load297 = load ptr, ptr %var.a1, align 8
  %call.res298 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load297)
  store i1 %call.res298, ptr %var.is_fwd1, align 1
  %var.load299 = load ptr, ptr %var.gen_names, align 8
  %var.load300 = load ptr, ptr %var.a1, align 8
  %fld.gep301 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load300, i32 0, i32 0
  %fld.load302 = load ptr, ptr %fld.gep301, align 8
  %m.cap303 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load299, i32 0, i32 1
  %m.cap304 = load i64, ptr %m.cap303, align 8
  %m.keys305 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load299, i32 0, i32 2
  %m.keys306 = load ptr, ptr %m.keys305, align 8
  %m.states307 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load299, i32 0, i32 4
  %m.states308 = load ptr, ptr %m.states307, align 8
  %mk.data309 = getelementptr inbounds { i64, ptr }, ptr %fld.load302, i32 0, i32 1
  %mk.data310 = load ptr, ptr %mk.data309, align 8
  %mk.len311 = getelementptr inbounds { i64, ptr }, ptr %fld.load302, i32 0, i32 0
  %mk.len312 = load i64, ptr %mk.len311, align 8
  %mk.len313 = and i64 %mk.len312, 281474976710655
  %hash.str314 = call i64 @dva_hash_string(ptr %mk.data310, i64 %mk.len313)
  %m.capm1315 = sub i64 %m.cap304, 1
  %m.idx0316 = and i64 %hash.str314, %m.capm1315
  br label %m.mem.loop

choice.next290:                                   ; preds = %loop.body.57
  br label %choice.exit288

m.mem.loop:                                       ; preds = %m.mem.next, %choice.case289
  %m.mem.idx = phi i64 [ %m.idx0316, %choice.case289 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe317 = phi i64 [ 0, %choice.case289 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe317, %m.cap304
  %m.mem.state.gep = getelementptr i8, ptr %m.states308, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr i64, ptr %m.keys306, i64 %m.mem.idx
  %mk.stored318 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen319 = getelementptr inbounds { i64, ptr }, ptr %mk.stored318, i32 0, i32 0
  %mk.slen320 = load i64, ptr %mk.slen319, align 8
  %mk.slen321 = and i64 %mk.slen320, 281474976710655
  %mk.nlen322 = getelementptr inbounds { i64, ptr }, ptr %fld.load302, i32 0, i32 0
  %mk.nlen323 = load i64, ptr %mk.nlen322, align 8
  %mk.nlen324 = and i64 %mk.nlen323, 281474976710655
  %mk.lenseq325 = icmp eq i64 %mk.slen321, %mk.nlen324
  br i1 %mk.lenseq325, label %mk.eq.then326, label %mk.eq.else327

m.mem.next:                                       ; preds = %mk.eq.merge328, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1315
  %m.mem.probe.next = add i64 %m.mem.probe317, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load336 = load ptr, ptr %var.a1, align 8
  %fld.gep337 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load336, i32 0, i32 0
  %fld.load338 = load ptr, ptr %fld.gep337, align 8
  store ptr %fld.load338, ptr %var.name1, align 8
  %var.load339 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load339, true
  br i1 %nottmp, label %and.58.then, label %and.58.else

mk.eq.then326:                                    ; preds = %m.mem.found
  %mk.sdata329 = getelementptr inbounds { i64, ptr }, ptr %mk.stored318, i32 0, i32 1
  %mk.sdata330 = load ptr, ptr %mk.sdata329, align 8
  %mk.ndata331 = getelementptr inbounds { i64, ptr }, ptr %fld.load302, i32 0, i32 1
  %mk.ndata332 = load ptr, ptr %mk.ndata331, align 8
  %mk.memcmp333 = call i32 @memcmp(ptr %mk.sdata330, ptr %mk.ndata332, i64 %mk.nlen324)
  %mk.cmpeq334 = icmp eq i32 %mk.memcmp333, 0
  br label %mk.eq.merge328

mk.eq.else327:                                    ; preds = %m.mem.found
  br label %mk.eq.merge328

mk.eq.merge328:                                   ; preds = %mk.eq.else327, %mk.eq.then326
  %mk.eq335 = phi i1 [ %mk.cmpeq334, %mk.eq.then326 ], [ false, %mk.eq.else327 ]
  br i1 %mk.eq335, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge328
  br label %m.mem.done

and.58.then:                                      ; preds = %m.mem.done
  %var.load340 = load i1, ptr %var.is_gen1, align 1
  %nottmp341 = xor i1 %var.load340, true
  br label %and.58.exit

and.58.else:                                      ; preds = %m.mem.done
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %and.58.then
  %and.58.phi = phi i1 [ %nottmp341, %and.58.then ], [ %nottmp, %and.58.else ]
  br i1 %and.58.phi, label %and.59.then, label %and.59.else

and.59.then:                                      ; preds = %and.58.exit
  %var.load342 = load ptr, ptr %var.a1, align 8
  %fld.gep343 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load342, i32 0, i32 2
  %fld.load344 = load i1, ptr %fld.gep343, align 1
  %nottmp345 = xor i1 %fld.load344, true
  br label %and.59.exit

and.59.else:                                      ; preds = %and.58.exit
  br label %and.59.exit

and.59.exit:                                      ; preds = %and.59.else, %and.59.then
  %and.59.phi = phi i1 [ %nottmp345, %and.59.then ], [ %and.58.phi, %and.59.else ]
  br i1 %and.59.phi, label %and.60.then, label %and.60.else

and.60.then:                                      ; preds = %and.59.exit
  %var.load346 = load ptr, ptr %var.a1, align 8
  %fld.gep347 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load346, i32 0, i32 4
  %fld.load348 = load i1, ptr %fld.gep347, align 1
  %nottmp349 = xor i1 %fld.load348, true
  br label %and.60.exit

and.60.else:                                      ; preds = %and.59.exit
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %and.60.then
  %and.60.phi = phi i1 [ %nottmp349, %and.60.then ], [ %and.59.phi, %and.60.else ]
  br i1 %and.60.phi, label %and.61.then, label %and.61.else

and.61.then:                                      ; preds = %and.60.exit
  %var.load350 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len351 = getelementptr inbounds { i64, ptr }, ptr %var.load350, i32 0, i32 0
  %eq.lhs.len352 = load i64, ptr %eq.lhs.len351, align 8
  %eq.lhs.len353 = and i64 %eq.lhs.len352, 281474976710655
  %eq.rhs.len354 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len355 = and i64 %eq.rhs.len354, 281474976710655
  %eq.len356 = icmp eq i64 %eq.lhs.len353, %eq.rhs.len355
  br i1 %eq.len356, label %str.eq.then357, label %str.eq.else358

and.61.else:                                      ; preds = %and.60.exit
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %str.eq.merge359
  %and.61.phi = phi i1 [ %str.neq366, %str.eq.merge359 ], [ %and.60.phi, %and.61.else ]
  br i1 %and.61.phi, label %choice.then367, label %choice.exit368

str.eq.then357:                                   ; preds = %and.61.then
  %eq.lhs.data360 = getelementptr inbounds { i64, ptr }, ptr %var.load350, i32 0, i32 1
  %eq.lhs.data361 = load ptr, ptr %eq.lhs.data360, align 8
  %eq.rhs.data362 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp363 = call i32 @memcmp(ptr %eq.lhs.data361, ptr %eq.rhs.data362, i64 %eq.lhs.len353)
  %eq.cmp.zero364 = icmp eq i32 %eq.memcmp363, 0
  br label %str.eq.merge359

str.eq.else358:                                   ; preds = %and.61.then
  br label %str.eq.merge359

str.eq.merge359:                                  ; preds = %str.eq.else358, %str.eq.then357
  %str.eq.result365 = phi i1 [ %eq.cmp.zero364, %str.eq.then357 ], [ false, %str.eq.else358 ]
  %str.neq366 = xor i1 %str.eq.result365, true
  br label %and.61.exit

choice.then367:                                   ; preds = %and.61.exit
  %var.load369 = load ptr, ptr %var.def_names, align 8
  %var.load370 = load ptr, ptr %var.name1, align 8
  %m.cap371 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 1
  %m.cap372 = load i64, ptr %m.cap371, align 8
  %m.keys373 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 2
  %m.keys374 = load ptr, ptr %m.keys373, align 8
  %m.vals375 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 3
  %m.vals376 = load ptr, ptr %m.vals375, align 8
  %m.states377 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 4
  %m.states378 = load ptr, ptr %m.states377, align 8
  %mk.data379 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 1
  %mk.data380 = load ptr, ptr %mk.data379, align 8
  %mk.len381 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 0
  %mk.len382 = load i64, ptr %mk.len381, align 8
  %mk.len383 = and i64 %mk.len382, 281474976710655
  %hash.str384 = call i64 @dva_hash_string(ptr %mk.data380, i64 %mk.len383)
  %m.capm1385 = sub i64 %m.cap372, 1
  %m.idx0386 = and i64 %hash.str384, %m.capm1385
  br label %m.loop387

choice.exit368:                                   ; preds = %m.done394, %and.61.exit
  br label %choice.exit288

m.loop387:                                        ; preds = %m.next392, %choice.then367
  %m.idx395 = phi i64 [ %m.idx0386, %choice.then367 ], [ %m.idx.next428, %m.next392 ]
  %m.tomb396 = phi i64 [ -1, %choice.then367 ], [ %m.next.tomb426, %m.next392 ]
  %m.probe397 = phi i64 [ 0, %choice.then367 ], [ %m.probe.next429, %m.next392 ]
  %m.reached.cap398 = icmp eq i64 %m.probe397, %m.cap372
  %m.state.gep399 = getelementptr i8, ptr %m.states378, i64 %m.idx395
  %m.state400 = load i8, ptr %m.state.gep399, align 1
  %m.is.empty401 = icmp eq i8 %m.state400, 0
  %m.stop402 = or i1 %m.is.empty401, %m.reached.cap398
  br i1 %m.stop402, label %m.empty393, label %m.check.tomb388

m.check.tomb388:                                  ; preds = %m.loop387
  %m.is.tomb403 = icmp eq i8 %m.state400, 2
  br i1 %m.is.tomb403, label %m.tomb389, label %m.found390

m.tomb389:                                        ; preds = %m.check.tomb388
  %m.has.tomb404 = icmp ne i64 %m.tomb396, -1
  %m.tomb.sel405 = select i1 %m.has.tomb404, i64 %m.tomb396, i64 %m.idx395
  br label %m.next392

m.found390:                                       ; preds = %m.check.tomb388
  %m.key.slot406 = getelementptr i64, ptr %m.keys374, i64 %m.idx395
  %mk.stored407 = load ptr, ptr %m.key.slot406, align 8
  %mk.slen408 = getelementptr inbounds { i64, ptr }, ptr %mk.stored407, i32 0, i32 0
  %mk.slen409 = load i64, ptr %mk.slen408, align 8
  %mk.slen410 = and i64 %mk.slen409, 281474976710655
  %mk.nlen411 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 0
  %mk.nlen412 = load i64, ptr %mk.nlen411, align 8
  %mk.nlen413 = and i64 %mk.nlen412, 281474976710655
  %mk.lenseq414 = icmp eq i64 %mk.slen410, %mk.nlen413
  br i1 %mk.lenseq414, label %mk.eq.then415, label %mk.eq.else416

m.overwrite391:                                   ; preds = %mk.eq.merge417
  %m.val.slot425 = getelementptr i64, ptr %m.vals376, i64 %m.idx395
  store i64 1, ptr %m.val.slot425, align 8
  br label %m.done394

m.next392:                                        ; preds = %mk.eq.merge417, %m.tomb389
  %m.next.tomb426 = phi i64 [ %m.tomb.sel405, %m.tomb389 ], [ %m.tomb396, %mk.eq.merge417 ]
  %m.idx.add427 = add i64 %m.idx395, 1
  %m.idx.next428 = and i64 %m.idx.add427, %m.capm1385
  %m.probe.next429 = add i64 %m.probe397, 1
  br label %m.loop387

m.empty393:                                       ; preds = %m.loop387
  %m.grow.cnt.p430 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  %m.grow.cnt431 = load i64, ptr %m.grow.cnt.p430, align 8
  %m.grow.tm.p432 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 5
  %m.grow.tm433 = load i64, ptr %m.grow.tm.p432, align 8
  %m.occupied434 = add i64 %m.grow.cnt431, %m.grow.tm433
  %m.c.plus435 = add i64 %m.occupied434, 1
  %m.c.lhs436 = mul i64 %m.c.plus435, 4
  %m.c.rhs437 = mul i64 %m.cap372, 3
  %m.need.grow438 = icmp sgt i64 %m.c.lhs436, %m.c.rhs437
  br i1 %m.need.grow438, label %m.grow439, label %m.ins.slot440

m.done394:                                        ; preds = %m.ins.slot440, %m.done579, %m.overwrite391
  br label %choice.exit368

mk.eq.then415:                                    ; preds = %m.found390
  %mk.sdata418 = getelementptr inbounds { i64, ptr }, ptr %mk.stored407, i32 0, i32 1
  %mk.sdata419 = load ptr, ptr %mk.sdata418, align 8
  %mk.ndata420 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 1
  %mk.ndata421 = load ptr, ptr %mk.ndata420, align 8
  %mk.memcmp422 = call i32 @memcmp(ptr %mk.sdata419, ptr %mk.ndata421, i64 %mk.nlen413)
  %mk.cmpeq423 = icmp eq i32 %mk.memcmp422, 0
  br label %mk.eq.merge417

mk.eq.else416:                                    ; preds = %m.found390
  br label %mk.eq.merge417

mk.eq.merge417:                                   ; preds = %mk.eq.else416, %mk.eq.then415
  %mk.eq424 = phi i1 [ %mk.cmpeq423, %mk.eq.then415 ], [ false, %mk.eq.else416 ]
  br i1 %mk.eq424, label %m.overwrite391, label %m.next392

m.grow439:                                        ; preds = %m.empty393
  %m.old.cap441 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 1
  %m.old.cap442 = load i64, ptr %m.old.cap441, align 8
  %m.old.keys443 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 2
  %m.old.keys444 = load ptr, ptr %m.old.keys443, align 8
  %m.old.vals445 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 3
  %m.old.vals446 = load ptr, ptr %m.old.vals445, align 8
  %m.old.states447 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 4
  %m.old.states448 = load ptr, ptr %m.old.states447, align 8
  %m.double.cap449 = mul i64 %m.old.cap442, 2
  %m.live.cnt450 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  %m.live.cnt451 = load i64, ptr %m.live.cnt450, align 8
  %m.live.x2452 = mul i64 %m.live.cnt451, 2
  %m.should.double453 = icmp sgt i64 %m.live.x2452, %m.old.cap442
  %m.new.cap454 = select i1 %m.should.double453, i64 %m.double.cap449, i64 %m.old.cap442
  %m.gk.bytes455 = mul i64 %m.new.cap454, 8
  %arena.cur456 = call ptr @dva_arena_current()
  %m.gk457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 %m.gk.bytes455)
  %m.gv.bytes458 = mul i64 %m.new.cap454, 8
  %arena.cur459 = call ptr @dva_arena_current()
  %m.gv460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 %m.gv.bytes458)
  %arena.cur461 = call ptr @dva_arena_current()
  %m.gs462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 %m.new.cap454)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs462, i8 0, i64 %m.new.cap454, i1 false)
  %m.cap.gep463 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 1
  store i64 %m.new.cap454, ptr %m.cap.gep463, align 8
  %m.keys.gep464 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 2
  store ptr %m.gk457, ptr %m.keys.gep464, align 8
  %m.vals.gep465 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 3
  store ptr %m.gv460, ptr %m.vals.gep465, align 8
  %m.states.gep466 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 4
  store ptr %m.gs462, ptr %m.states.gep466, align 8
  %m.count.gep467 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  store i64 0, ptr %m.count.gep467, align 8
  %m.tombs.gep468 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep468, align 8
  br label %m.re.loop469

m.ins.slot440:                                    ; preds = %m.empty393
  %m.use.tomb628 = icmp ne i64 %m.tomb396, -1
  %m.ins.idx629 = select i1 %m.use.tomb628, i64 %m.tomb396, i64 %m.idx395
  %m.key.slot630 = getelementptr i64, ptr %m.keys374, i64 %m.ins.idx629
  store ptr %var.load370, ptr %m.key.slot630, align 8
  %m.val.slot631 = getelementptr i64, ptr %m.vals376, i64 %m.ins.idx629
  store i64 1, ptr %m.val.slot631, align 8
  %m.ins.state.slot632 = getelementptr i8, ptr %m.states378, i64 %m.ins.idx629
  store i8 1, ptr %m.ins.state.slot632, align 1
  %m.count633 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  %m.count634 = load i64, ptr %m.count633, align 8
  %m.count.next635 = add i64 %m.count634, 1
  %m.count.gep636 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  store i64 %m.count.next635, ptr %m.count.gep636, align 8
  %m.ins.tombs.p637 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 5
  %m.ins.tombs638 = load i64, ptr %m.ins.tombs.p637, align 8
  %m.tomb.dec639 = select i1 %m.use.tomb628, i64 1, i64 0
  %m.ins.tombs.next640 = sub i64 %m.ins.tombs638, %m.tomb.dec639
  store i64 %m.ins.tombs.next640, ptr %m.ins.tombs.p637, align 8
  br label %m.done394

m.re.loop469:                                     ; preds = %m.re.cont471, %m.grow439
  %m.re.i473 = phi i64 [ 0, %m.grow439 ], [ %m.re.i.next555, %m.re.cont471 ]
  %m.re.lt474 = icmp slt i64 %m.re.i473, %m.old.cap442
  br i1 %m.re.lt474, label %m.re.body470, label %m.re.done472

m.re.body470:                                     ; preds = %m.re.loop469
  %m.re.state.gep475 = getelementptr i8, ptr %m.old.states448, i64 %m.re.i473
  %m.re.state476 = load i8, ptr %m.re.state.gep475, align 1
  %m.re.occ477 = icmp eq i8 %m.re.state476, 1
  br i1 %m.re.occ477, label %m.re.ins478, label %m.re.cont471

m.re.cont471:                                     ; preds = %m.done506, %m.re.body470
  %m.re.i.next555 = add i64 %m.re.i473, 1
  br label %m.re.loop469

m.re.done472:                                     ; preds = %m.re.loop469
  %m.cap556 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 1
  %m.cap557 = load i64, ptr %m.cap556, align 8
  %m.keys558 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 2
  %m.keys559 = load ptr, ptr %m.keys558, align 8
  %m.vals560 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 3
  %m.vals561 = load ptr, ptr %m.vals560, align 8
  %m.states562 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 4
  %m.states563 = load ptr, ptr %m.states562, align 8
  %mk.data564 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 1
  %mk.data565 = load ptr, ptr %mk.data564, align 8
  %mk.len566 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 0
  %mk.len567 = load i64, ptr %mk.len566, align 8
  %mk.len568 = and i64 %mk.len567, 281474976710655
  %hash.str569 = call i64 @dva_hash_string(ptr %mk.data565, i64 %mk.len568)
  %m.capm1570 = sub i64 %m.cap557, 1
  %m.idx0571 = and i64 %hash.str569, %m.capm1570
  br label %m.loop572

m.re.ins478:                                      ; preds = %m.re.body470
  %m.re.key.slot479 = getelementptr i64, ptr %m.old.keys444, i64 %m.re.i473
  %m.re.val.slot480 = getelementptr i64, ptr %m.old.vals446, i64 %m.re.i473
  %m.re.key481 = load ptr, ptr %m.re.key.slot479, align 8
  %m.re.val482 = load i64, ptr %m.re.val.slot480, align 8
  %m.cap483 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 1
  %m.cap484 = load i64, ptr %m.cap483, align 8
  %m.keys485 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 2
  %m.keys486 = load ptr, ptr %m.keys485, align 8
  %m.vals487 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 3
  %m.vals488 = load ptr, ptr %m.vals487, align 8
  %m.states489 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 4
  %m.states490 = load ptr, ptr %m.states489, align 8
  %mk.data491 = getelementptr inbounds { i64, ptr }, ptr %m.re.key481, i32 0, i32 1
  %mk.data492 = load ptr, ptr %mk.data491, align 8
  %mk.len493 = getelementptr inbounds { i64, ptr }, ptr %m.re.key481, i32 0, i32 0
  %mk.len494 = load i64, ptr %mk.len493, align 8
  %mk.len495 = and i64 %mk.len494, 281474976710655
  %hash.str496 = call i64 @dva_hash_string(ptr %mk.data492, i64 %mk.len495)
  %m.capm1497 = sub i64 %m.cap484, 1
  %m.idx0498 = and i64 %hash.str496, %m.capm1497
  br label %m.loop499

m.loop499:                                        ; preds = %m.next504, %m.re.ins478
  %m.idx507 = phi i64 [ %m.idx0498, %m.re.ins478 ], [ %m.idx.next540, %m.next504 ]
  %m.tomb508 = phi i64 [ -1, %m.re.ins478 ], [ %m.next.tomb538, %m.next504 ]
  %m.probe509 = phi i64 [ 0, %m.re.ins478 ], [ %m.probe.next541, %m.next504 ]
  %m.reached.cap510 = icmp eq i64 %m.probe509, %m.cap484
  %m.state.gep511 = getelementptr i8, ptr %m.states490, i64 %m.idx507
  %m.state512 = load i8, ptr %m.state.gep511, align 1
  %m.is.empty513 = icmp eq i8 %m.state512, 0
  %m.stop514 = or i1 %m.is.empty513, %m.reached.cap510
  br i1 %m.stop514, label %m.empty505, label %m.check.tomb500

m.check.tomb500:                                  ; preds = %m.loop499
  %m.is.tomb515 = icmp eq i8 %m.state512, 2
  br i1 %m.is.tomb515, label %m.tomb501, label %m.found502

m.tomb501:                                        ; preds = %m.check.tomb500
  %m.has.tomb516 = icmp ne i64 %m.tomb508, -1
  %m.tomb.sel517 = select i1 %m.has.tomb516, i64 %m.tomb508, i64 %m.idx507
  br label %m.next504

m.found502:                                       ; preds = %m.check.tomb500
  %m.key.slot518 = getelementptr i64, ptr %m.keys486, i64 %m.idx507
  %mk.stored519 = load ptr, ptr %m.key.slot518, align 8
  %mk.slen520 = getelementptr inbounds { i64, ptr }, ptr %mk.stored519, i32 0, i32 0
  %mk.slen521 = load i64, ptr %mk.slen520, align 8
  %mk.slen522 = and i64 %mk.slen521, 281474976710655
  %mk.nlen523 = getelementptr inbounds { i64, ptr }, ptr %m.re.key481, i32 0, i32 0
  %mk.nlen524 = load i64, ptr %mk.nlen523, align 8
  %mk.nlen525 = and i64 %mk.nlen524, 281474976710655
  %mk.lenseq526 = icmp eq i64 %mk.slen522, %mk.nlen525
  br i1 %mk.lenseq526, label %mk.eq.then527, label %mk.eq.else528

m.overwrite503:                                   ; preds = %mk.eq.merge529
  %m.val.slot537 = getelementptr i64, ptr %m.vals488, i64 %m.idx507
  store i64 %m.re.val482, ptr %m.val.slot537, align 8
  br label %m.done506

m.next504:                                        ; preds = %mk.eq.merge529, %m.tomb501
  %m.next.tomb538 = phi i64 [ %m.tomb.sel517, %m.tomb501 ], [ %m.tomb508, %mk.eq.merge529 ]
  %m.idx.add539 = add i64 %m.idx507, 1
  %m.idx.next540 = and i64 %m.idx.add539, %m.capm1497
  %m.probe.next541 = add i64 %m.probe509, 1
  br label %m.loop499

m.empty505:                                       ; preds = %m.loop499
  %m.use.tomb542 = icmp ne i64 %m.tomb508, -1
  %m.ins.idx543 = select i1 %m.use.tomb542, i64 %m.tomb508, i64 %m.idx507
  %m.key.slot544 = getelementptr i64, ptr %m.keys486, i64 %m.ins.idx543
  store ptr %m.re.key481, ptr %m.key.slot544, align 8
  %m.val.slot545 = getelementptr i64, ptr %m.vals488, i64 %m.ins.idx543
  store i64 %m.re.val482, ptr %m.val.slot545, align 8
  %m.ins.state.slot546 = getelementptr i8, ptr %m.states490, i64 %m.ins.idx543
  store i8 1, ptr %m.ins.state.slot546, align 1
  %m.count547 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  %m.count548 = load i64, ptr %m.count547, align 8
  %m.count.next549 = add i64 %m.count548, 1
  %m.count.gep550 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  store i64 %m.count.next549, ptr %m.count.gep550, align 8
  %m.ins.tombs.p551 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 5
  %m.ins.tombs552 = load i64, ptr %m.ins.tombs.p551, align 8
  %m.tomb.dec553 = select i1 %m.use.tomb542, i64 1, i64 0
  %m.ins.tombs.next554 = sub i64 %m.ins.tombs552, %m.tomb.dec553
  store i64 %m.ins.tombs.next554, ptr %m.ins.tombs.p551, align 8
  br label %m.done506

m.done506:                                        ; preds = %m.empty505, %m.overwrite503
  br label %m.re.cont471

mk.eq.then527:                                    ; preds = %m.found502
  %mk.sdata530 = getelementptr inbounds { i64, ptr }, ptr %mk.stored519, i32 0, i32 1
  %mk.sdata531 = load ptr, ptr %mk.sdata530, align 8
  %mk.ndata532 = getelementptr inbounds { i64, ptr }, ptr %m.re.key481, i32 0, i32 1
  %mk.ndata533 = load ptr, ptr %mk.ndata532, align 8
  %mk.memcmp534 = call i32 @memcmp(ptr %mk.sdata531, ptr %mk.ndata533, i64 %mk.nlen525)
  %mk.cmpeq535 = icmp eq i32 %mk.memcmp534, 0
  br label %mk.eq.merge529

mk.eq.else528:                                    ; preds = %m.found502
  br label %mk.eq.merge529

mk.eq.merge529:                                   ; preds = %mk.eq.else528, %mk.eq.then527
  %mk.eq536 = phi i1 [ %mk.cmpeq535, %mk.eq.then527 ], [ false, %mk.eq.else528 ]
  br i1 %mk.eq536, label %m.overwrite503, label %m.next504

m.loop572:                                        ; preds = %m.next577, %m.re.done472
  %m.idx580 = phi i64 [ %m.idx0571, %m.re.done472 ], [ %m.idx.next613, %m.next577 ]
  %m.tomb581 = phi i64 [ -1, %m.re.done472 ], [ %m.next.tomb611, %m.next577 ]
  %m.probe582 = phi i64 [ 0, %m.re.done472 ], [ %m.probe.next614, %m.next577 ]
  %m.reached.cap583 = icmp eq i64 %m.probe582, %m.cap557
  %m.state.gep584 = getelementptr i8, ptr %m.states563, i64 %m.idx580
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
  %m.key.slot591 = getelementptr i64, ptr %m.keys559, i64 %m.idx580
  %mk.stored592 = load ptr, ptr %m.key.slot591, align 8
  %mk.slen593 = getelementptr inbounds { i64, ptr }, ptr %mk.stored592, i32 0, i32 0
  %mk.slen594 = load i64, ptr %mk.slen593, align 8
  %mk.slen595 = and i64 %mk.slen594, 281474976710655
  %mk.nlen596 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 0
  %mk.nlen597 = load i64, ptr %mk.nlen596, align 8
  %mk.nlen598 = and i64 %mk.nlen597, 281474976710655
  %mk.lenseq599 = icmp eq i64 %mk.slen595, %mk.nlen598
  br i1 %mk.lenseq599, label %mk.eq.then600, label %mk.eq.else601

m.overwrite576:                                   ; preds = %mk.eq.merge602
  %m.val.slot610 = getelementptr i64, ptr %m.vals561, i64 %m.idx580
  store i64 1, ptr %m.val.slot610, align 8
  br label %m.done579

m.next577:                                        ; preds = %mk.eq.merge602, %m.tomb574
  %m.next.tomb611 = phi i64 [ %m.tomb.sel590, %m.tomb574 ], [ %m.tomb581, %mk.eq.merge602 ]
  %m.idx.add612 = add i64 %m.idx580, 1
  %m.idx.next613 = and i64 %m.idx.add612, %m.capm1570
  %m.probe.next614 = add i64 %m.probe582, 1
  br label %m.loop572

m.empty578:                                       ; preds = %m.loop572
  %m.use.tomb615 = icmp ne i64 %m.tomb581, -1
  %m.ins.idx616 = select i1 %m.use.tomb615, i64 %m.tomb581, i64 %m.idx580
  %m.key.slot617 = getelementptr i64, ptr %m.keys559, i64 %m.ins.idx616
  store ptr %var.load370, ptr %m.key.slot617, align 8
  %m.val.slot618 = getelementptr i64, ptr %m.vals561, i64 %m.ins.idx616
  store i64 1, ptr %m.val.slot618, align 8
  %m.ins.state.slot619 = getelementptr i8, ptr %m.states563, i64 %m.ins.idx616
  store i8 1, ptr %m.ins.state.slot619, align 1
  %m.count620 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  %m.count621 = load i64, ptr %m.count620, align 8
  %m.count.next622 = add i64 %m.count621, 1
  %m.count.gep623 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 0
  store i64 %m.count.next622, ptr %m.count.gep623, align 8
  %m.ins.tombs.p624 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load369, i32 0, i32 5
  %m.ins.tombs625 = load i64, ptr %m.ins.tombs.p624, align 8
  %m.tomb.dec626 = select i1 %m.use.tomb615, i64 1, i64 0
  %m.ins.tombs.next627 = sub i64 %m.ins.tombs625, %m.tomb.dec626
  store i64 %m.ins.tombs.next627, ptr %m.ins.tombs.p624, align 8
  br label %m.done579

m.done579:                                        ; preds = %m.empty578, %m.overwrite576
  br label %m.done394

mk.eq.then600:                                    ; preds = %m.found575
  %mk.sdata603 = getelementptr inbounds { i64, ptr }, ptr %mk.stored592, i32 0, i32 1
  %mk.sdata604 = load ptr, ptr %mk.sdata603, align 8
  %mk.ndata605 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 1
  %mk.ndata606 = load ptr, ptr %mk.ndata605, align 8
  %mk.memcmp607 = call i32 @memcmp(ptr %mk.sdata604, ptr %mk.ndata606, i64 %mk.nlen598)
  %mk.cmpeq608 = icmp eq i32 %mk.memcmp607, 0
  br label %mk.eq.merge602

mk.eq.else601:                                    ; preds = %m.found575
  br label %mk.eq.merge602

mk.eq.merge602:                                   ; preds = %mk.eq.else601, %mk.eq.then600
  %mk.eq609 = phi i1 [ %mk.cmpeq608, %mk.eq.then600 ], [ false, %mk.eq.else601 ]
  br i1 %mk.eq609, label %m.overwrite576, label %m.next577

a.create646:                                      ; preds = %loop.exit.57
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
  store ptr %a.create649, ptr %var.stmts, align 8
  br label %a.after647

a.after647:                                       ; preds = %a.create646, %loop.exit.57
  %a.load2655 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len656 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 0
  %arr.cycle.len657 = load i64, ptr %arr.cycle.len656, align 8
  %arr.cycle.data658 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2655, i32 0, i32 1
  %arr.cycle.data659 = load ptr, ptr %arr.cycle.data658, align 8
  store i64 0, ptr %loop.idx.62, align 8
  store i64 0, ptr %var.j, align 8
  br label %loop.header.62

loop.header.62:                                   ; preds = %loop.latch.62, %a.after647
  %counter.load660 = load i64, ptr %loop.idx.62, align 8
  %loop.cond661 = icmp slt i64 %counter.load660, %arr.cycle.len657
  br i1 %loop.cond661, label %loop.body.62, label %loop.exit.nat.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i662 = sub i64 %counter.load660, 0
  store i64 1, ptr %loop.step.62, align 8
  %arr.elem.gep663 = getelementptr i64, ptr %arr.cycle.data659, i64 %counter.load660
  %arr.elem.raw664 = load i64, ptr %arr.elem.gep663, align 8
  %slot.i2p665 = inttoptr i64 %arr.elem.raw664 to ptr
  store i64 %loop.rel.i662, ptr %var._i666, align 8
  store ptr %slot.i2p665, ptr %var._667, align 8
  store ptr %slot.i2p665, ptr %var.st2, align 8
  store i64 %loop.rel.i662, ptr %var.j, align 8
  %var.load668 = load ptr, ptr %var.st2, align 8
  %tag.gep672 = getelementptr inbounds { i64, ptr }, ptr %var.load668, i32 0, i32 0
  %tag.id673 = load i64, ptr %tag.gep672, align 8
  %tag.match674 = icmp eq i64 %tag.id673, 6
  br i1 %tag.match674, label %choice.case670, label %choice.next671

loop.exit.nat.62:                                 ; preds = %loop.header.62
  %loop.rel.end = sub i64 %counter.load660, 0
  store i64 %loop.rel.end, ptr %var.j, align 8
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit669
  %step.val1270 = load i64, ptr %loop.step.62, align 8
  %loop.next1271 = add i64 %counter.load660, %step.val1270
  store i64 %loop.next1271, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %loop.exit.nat.62
  %var.load1272 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1272

choice.exit669:                                   ; preds = %choice.next671, %choice.exit769
  br label %loop.latch.62

choice.case670:                                   ; preds = %loop.body.62
  %pay.gep675 = getelementptr inbounds { i64, ptr }, ptr %var.load668, i32 0, i32 1
  %payload.ptr676 = load ptr, ptr %pay.gep675, align 8
  store ptr %payload.ptr676, ptr %var._677, align 8
  store ptr %payload.ptr676, ptr %var.a2, align 8
  %var.load678 = load ptr, ptr %var.a2, align 8
  %call.res679 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load678)
  store i1 %call.res679, ptr %var.is_fwd2, align 1
  %var.load680 = load ptr, ptr %var.gen_names, align 8
  %var.load681 = load ptr, ptr %var.a2, align 8
  %fld.gep682 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load681, i32 0, i32 0
  %fld.load683 = load ptr, ptr %fld.gep682, align 8
  %m.cap684 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load680, i32 0, i32 1
  %m.cap685 = load i64, ptr %m.cap684, align 8
  %m.keys686 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load680, i32 0, i32 2
  %m.keys687 = load ptr, ptr %m.keys686, align 8
  %m.states688 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load680, i32 0, i32 4
  %m.states689 = load ptr, ptr %m.states688, align 8
  %mk.data690 = getelementptr inbounds { i64, ptr }, ptr %fld.load683, i32 0, i32 1
  %mk.data691 = load ptr, ptr %mk.data690, align 8
  %mk.len692 = getelementptr inbounds { i64, ptr }, ptr %fld.load683, i32 0, i32 0
  %mk.len693 = load i64, ptr %mk.len692, align 8
  %mk.len694 = and i64 %mk.len693, 281474976710655
  %hash.str695 = call i64 @dva_hash_string(ptr %mk.data691, i64 %mk.len694)
  %m.capm1696 = sub i64 %m.cap685, 1
  %m.idx0697 = and i64 %hash.str695, %m.capm1696
  br label %m.mem.loop698

choice.next671:                                   ; preds = %loop.body.62
  br label %choice.exit669

m.mem.loop698:                                    ; preds = %m.mem.next701, %choice.case670
  %m.mem.idx704 = phi i64 [ %m.idx0697, %choice.case670 ], [ %m.mem.idx.next733, %m.mem.next701 ]
  %m.mem.probe705 = phi i64 [ 0, %choice.case670 ], [ %m.mem.probe.next734, %m.mem.next701 ]
  %m.mem.reached706 = icmp eq i64 %m.mem.probe705, %m.cap685
  %m.mem.state.gep707 = getelementptr i8, ptr %m.states689, i64 %m.mem.idx704
  %m.mem.state708 = load i8, ptr %m.mem.state.gep707, align 1
  %m.mem.is.empty709 = icmp eq i8 %m.mem.state708, 0
  %m.mem.stop710 = or i1 %m.mem.is.empty709, %m.mem.reached706
  br i1 %m.mem.stop710, label %m.mem.miss702, label %m.mem.probe699

m.mem.probe699:                                   ; preds = %m.mem.loop698
  %m.mem.is.tomb711 = icmp eq i8 %m.mem.state708, 2
  br i1 %m.mem.is.tomb711, label %m.mem.next701, label %m.mem.found700

m.mem.found700:                                   ; preds = %m.mem.probe699
  %m.mem.key.slot712 = getelementptr i64, ptr %m.keys687, i64 %m.mem.idx704
  %mk.stored713 = load ptr, ptr %m.mem.key.slot712, align 8
  %mk.slen714 = getelementptr inbounds { i64, ptr }, ptr %mk.stored713, i32 0, i32 0
  %mk.slen715 = load i64, ptr %mk.slen714, align 8
  %mk.slen716 = and i64 %mk.slen715, 281474976710655
  %mk.nlen717 = getelementptr inbounds { i64, ptr }, ptr %fld.load683, i32 0, i32 0
  %mk.nlen718 = load i64, ptr %mk.nlen717, align 8
  %mk.nlen719 = and i64 %mk.nlen718, 281474976710655
  %mk.lenseq720 = icmp eq i64 %mk.slen716, %mk.nlen719
  br i1 %mk.lenseq720, label %mk.eq.then721, label %mk.eq.else722

m.mem.next701:                                    ; preds = %mk.eq.merge723, %m.mem.probe699
  %m.mem.idx.add732 = add i64 %m.mem.idx704, 1
  %m.mem.idx.next733 = and i64 %m.mem.idx.add732, %m.capm1696
  %m.mem.probe.next734 = add i64 %m.mem.probe705, 1
  br label %m.mem.loop698

m.mem.miss702:                                    ; preds = %m.mem.loop698
  br label %m.mem.done703

m.mem.done703:                                    ; preds = %m.mem.miss702, %m.mem.hit731
  %m.mem.res735 = phi i1 [ true, %m.mem.hit731 ], [ false, %m.mem.miss702 ]
  store i1 %m.mem.res735, ptr %var.is_gen2, align 1
  %var.load736 = load ptr, ptr %var.a2, align 8
  %fld.gep737 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load736, i32 0, i32 0
  %fld.load738 = load ptr, ptr %fld.gep737, align 8
  store ptr %fld.load738, ptr %var.name2, align 8
  %var.load739 = load i1, ptr %var.is_fwd2, align 1
  %nottmp740 = xor i1 %var.load739, true
  br i1 %nottmp740, label %and.63.then, label %and.63.else

mk.eq.then721:                                    ; preds = %m.mem.found700
  %mk.sdata724 = getelementptr inbounds { i64, ptr }, ptr %mk.stored713, i32 0, i32 1
  %mk.sdata725 = load ptr, ptr %mk.sdata724, align 8
  %mk.ndata726 = getelementptr inbounds { i64, ptr }, ptr %fld.load683, i32 0, i32 1
  %mk.ndata727 = load ptr, ptr %mk.ndata726, align 8
  %mk.memcmp728 = call i32 @memcmp(ptr %mk.sdata725, ptr %mk.ndata727, i64 %mk.nlen719)
  %mk.cmpeq729 = icmp eq i32 %mk.memcmp728, 0
  br label %mk.eq.merge723

mk.eq.else722:                                    ; preds = %m.mem.found700
  br label %mk.eq.merge723

mk.eq.merge723:                                   ; preds = %mk.eq.else722, %mk.eq.then721
  %mk.eq730 = phi i1 [ %mk.cmpeq729, %mk.eq.then721 ], [ false, %mk.eq.else722 ]
  br i1 %mk.eq730, label %m.mem.hit731, label %m.mem.next701

m.mem.hit731:                                     ; preds = %mk.eq.merge723
  br label %m.mem.done703

and.63.then:                                      ; preds = %m.mem.done703
  %var.load741 = load i1, ptr %var.is_gen2, align 1
  %nottmp742 = xor i1 %var.load741, true
  br label %and.63.exit

and.63.else:                                      ; preds = %m.mem.done703
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %and.63.then
  %and.63.phi = phi i1 [ %nottmp742, %and.63.then ], [ %nottmp740, %and.63.else ]
  br i1 %and.63.phi, label %and.64.then, label %and.64.else

and.64.then:                                      ; preds = %and.63.exit
  %var.load743 = load ptr, ptr %var.a2, align 8
  %fld.gep744 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load743, i32 0, i32 2
  %fld.load745 = load i1, ptr %fld.gep744, align 1
  %nottmp746 = xor i1 %fld.load745, true
  br label %and.64.exit

and.64.else:                                      ; preds = %and.63.exit
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %and.64.then
  %and.64.phi = phi i1 [ %nottmp746, %and.64.then ], [ %and.63.phi, %and.64.else ]
  br i1 %and.64.phi, label %and.65.then, label %and.65.else

and.65.then:                                      ; preds = %and.64.exit
  %var.load747 = load ptr, ptr %var.a2, align 8
  %fld.gep748 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load747, i32 0, i32 4
  %fld.load749 = load i1, ptr %fld.gep748, align 1
  %nottmp750 = xor i1 %fld.load749, true
  br label %and.65.exit

and.65.else:                                      ; preds = %and.64.exit
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %and.65.then
  %and.65.phi = phi i1 [ %nottmp750, %and.65.then ], [ %and.64.phi, %and.65.else ]
  br i1 %and.65.phi, label %and.66.then, label %and.66.else

and.66.then:                                      ; preds = %and.65.exit
  %var.load751 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len752 = getelementptr inbounds { i64, ptr }, ptr %var.load751, i32 0, i32 0
  %eq.lhs.len753 = load i64, ptr %eq.lhs.len752, align 8
  %eq.lhs.len754 = and i64 %eq.lhs.len753, 281474976710655
  %eq.rhs.len755 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len756 = and i64 %eq.rhs.len755, 281474976710655
  %eq.len757 = icmp eq i64 %eq.lhs.len754, %eq.rhs.len756
  br i1 %eq.len757, label %str.eq.then758, label %str.eq.else759

and.66.else:                                      ; preds = %and.65.exit
  br label %and.66.exit

and.66.exit:                                      ; preds = %and.66.else, %str.eq.merge760
  %and.66.phi = phi i1 [ %str.neq767, %str.eq.merge760 ], [ %and.65.phi, %and.66.else ]
  br i1 %and.66.phi, label %choice.then768, label %choice.exit769

str.eq.then758:                                   ; preds = %and.66.then
  %eq.lhs.data761 = getelementptr inbounds { i64, ptr }, ptr %var.load751, i32 0, i32 1
  %eq.lhs.data762 = load ptr, ptr %eq.lhs.data761, align 8
  %eq.rhs.data763 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp764 = call i32 @memcmp(ptr %eq.lhs.data762, ptr %eq.rhs.data763, i64 %eq.lhs.len754)
  %eq.cmp.zero765 = icmp eq i32 %eq.memcmp764, 0
  br label %str.eq.merge760

str.eq.else759:                                   ; preds = %and.66.then
  br label %str.eq.merge760

str.eq.merge760:                                  ; preds = %str.eq.else759, %str.eq.then758
  %str.eq.result766 = phi i1 [ %eq.cmp.zero765, %str.eq.then758 ], [ false, %str.eq.else759 ]
  %str.neq767 = xor i1 %str.eq.result766, true
  br label %and.66.exit

choice.then768:                                   ; preds = %and.66.exit
  %arena.cur770 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur770, i64 24)
  %arena.cur771 = call ptr @dva_arena_current()
  %a.buf772 = call ptr @dva_arena_alloc(ptr %arena.cur771, i64 128)
  %a.len.gep773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep773, align 8
  %a.data.gep774 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf772, ptr %a.data.gep774, align 8
  %a.cap.gep775 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep775, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load776 = load ptr, ptr %var.a2, align 8
  %fld.gep777 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load776, i32 0, i32 5
  %fld.load778 = load ptr, ptr %fld.gep777, align 8
  %arena.cur779 = call ptr @dva_arena_current()
  %a.new780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 24)
  %arena.cur781 = call ptr @dva_arena_current()
  %a.buf782 = call ptr @dva_arena_alloc(ptr %arena.cur781, i64 128)
  %a.len.gep783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new780, i32 0, i32 0
  store i64 0, ptr %a.len.gep783, align 8
  %a.data.gep784 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new780, i32 0, i32 1
  store ptr %a.buf782, ptr %a.data.gep784, align 8
  %a.cap.gep785 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new780, i32 0, i32 2
  store i64 16, ptr %a.cap.gep785, align 8
  %var.load786 = load ptr, ptr %var.raw_refs, align 8
  %a.load787 = load ptr, ptr %var.raw_refs, align 8
  %a.null788 = icmp eq ptr %a.load787, null
  br i1 %a.null788, label %a.create789, label %a.after790

choice.exit769:                                   ; preds = %a.store1256, %and.66.exit
  br label %choice.exit669

a.create789:                                      ; preds = %choice.then768
  %arena.cur791 = call ptr @dva_arena_current()
  %a.create792 = call ptr @dva_arena_alloc(ptr %arena.cur791, i64 24)
  %arena.cur793 = call ptr @dva_arena_current()
  %a.buf794 = call ptr @dva_arena_alloc(ptr %arena.cur793, i64 128)
  %a.len.gep795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create792, i32 0, i32 0
  store i64 0, ptr %a.len.gep795, align 8
  %a.data.gep796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create792, i32 0, i32 1
  store ptr %a.buf794, ptr %a.data.gep796, align 8
  %a.cap.gep797 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create792, i32 0, i32 2
  store i64 16, ptr %a.cap.gep797, align 8
  store ptr %a.create792, ptr %var.raw_refs, align 8
  br label %a.after790

a.after790:                                       ; preds = %a.create789, %choice.then768
  %a.load2798 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load778, ptr %a.new780, ptr %a.load2798)
  %arena.cur799 = call ptr @dva_arena_current()
  %a.new800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 24)
  %arena.cur801 = call ptr @dva_arena_current()
  %a.buf802 = call ptr @dva_arena_alloc(ptr %arena.cur801, i64 128)
  %a.len.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new800, i32 0, i32 0
  store i64 0, ptr %a.len.gep803, align 8
  %a.data.gep804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new800, i32 0, i32 1
  store ptr %a.buf802, ptr %a.data.gep804, align 8
  %a.cap.gep805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new800, i32 0, i32 2
  store i64 16, ptr %a.cap.gep805, align 8
  store ptr %a.new800, ptr %var.filtered_deps, align 8
  %var.load806 = load ptr, ptr %var.name2, align 8
  %call.res807 = call { i64, ptr } @"dep_graph::decl_module"(ptr %var.load806, i64 0)
  %arena.cur808 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur808, i64 16)
  store { i64, ptr } %call.res807, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.mod2, align 8
  %var.load809 = load ptr, ptr %var.raw_refs, align 8
  %a.load810 = load ptr, ptr %var.raw_refs, align 8
  %a.null811 = icmp eq ptr %a.load810, null
  br i1 %a.null811, label %a.create812, label %a.after813

a.create812:                                      ; preds = %a.after790
  %arena.cur814 = call ptr @dva_arena_current()
  %a.create815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 24)
  %arena.cur816 = call ptr @dva_arena_current()
  %a.buf817 = call ptr @dva_arena_alloc(ptr %arena.cur816, i64 128)
  %a.len.gep818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 0
  store i64 0, ptr %a.len.gep818, align 8
  %a.data.gep819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 1
  store ptr %a.buf817, ptr %a.data.gep819, align 8
  %a.cap.gep820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create815, i32 0, i32 2
  store i64 16, ptr %a.cap.gep820, align 8
  store ptr %a.create815, ptr %var.raw_refs, align 8
  br label %a.after813

a.after813:                                       ; preds = %a.create812, %a.after790
  %a.load2821 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len822 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2821, i32 0, i32 0
  %arr.cycle.len823 = load i64, ptr %arr.cycle.len822, align 8
  %arr.cycle.data824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2821, i32 0, i32 1
  %arr.cycle.data825 = load ptr, ptr %arr.cycle.data824, align 8
  store i64 0, ptr %loop.idx.67, align 8
  %cycle.prev.u = load ptr, ptr %var._677, align 8
  %cycle.prev.i = load i64, ptr %var._i666, align 8
  br label %loop.header.67

loop.header.67:                                   ; preds = %loop.latch.67, %a.after813
  %counter.load826 = load i64, ptr %loop.idx.67, align 8
  %loop.cond827 = icmp slt i64 %counter.load826, %arr.cycle.len823
  br i1 %loop.cond827, label %loop.body.67, label %loop.exit.nat.67

loop.body.67:                                     ; preds = %loop.header.67
  %loop.rel.i828 = sub i64 %counter.load826, 0
  store i64 1, ptr %loop.step.67, align 8
  %arr.elem.gep829 = getelementptr i64, ptr %arr.cycle.data825, i64 %counter.load826
  %arr.elem.raw830 = load i64, ptr %arr.elem.gep829, align 8
  %slot.i2p831 = inttoptr i64 %arr.elem.raw830 to ptr
  store i64 %loop.rel.i828, ptr %var._i832, align 8
  store ptr %slot.i2p831, ptr %var._833, align 8
  store ptr %slot.i2p831, ptr %var.ref_name, align 8
  %var.load834 = load ptr, ptr %var.def_names, align 8
  %var.load835 = load ptr, ptr %var.mod2, align 8
  %var.load836 = load ptr, ptr %var.ref_name, align 8
  %call.res837 = call { i64, ptr } @"dep_graph::resolve_dep_ref"(ptr %var.load834, ptr %var.load835, ptr %var.load836)
  %arena.cur838 = call ptr @dva_arena_current()
  %ret.ub.alloc839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 16)
  store { i64, ptr } %call.res837, ptr %ret.ub.alloc839, align 8
  store ptr %ret.ub.alloc839, ptr %var.target_ref, align 8
  %var.load840 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len841 = getelementptr inbounds { i64, ptr }, ptr %var.load840, i32 0, i32 0
  %eq.lhs.len842 = load i64, ptr %eq.lhs.len841, align 8
  %eq.lhs.len843 = and i64 %eq.lhs.len842, 281474976710655
  %eq.rhs.len844 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len845 = and i64 %eq.rhs.len844, 281474976710655
  %eq.len846 = icmp eq i64 %eq.lhs.len843, %eq.rhs.len845
  br i1 %eq.len846, label %str.eq.then847, label %str.eq.else848

loop.exit.nat.67:                                 ; preds = %loop.header.67
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %choice.exit874
  %step.val892 = load i64, ptr %loop.step.67, align 8
  %loop.next893 = add i64 %counter.load826, %step.val892
  store i64 %loop.next893, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %loop.exit.nat.67
  store ptr %cycle.prev.u, ptr %var._677, align 8
  store i64 %cycle.prev.i, ptr %var._i666, align 8
  %var.load894 = load ptr, ptr %var.graph, align 8
  %fld.gep895 = getelementptr inbounds { ptr, ptr }, ptr %var.load894, i32 0, i32 1
  %fld.load896 = load ptr, ptr %fld.gep895, align 8
  store ptr %fld.load896, ptr %var.node_indices, align 8
  %var.load897 = load ptr, ptr %var.node_indices, align 8
  %var.load898 = load ptr, ptr %var.name2, align 8
  %m.cap899 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load897, i32 0, i32 1
  %m.cap900 = load i64, ptr %m.cap899, align 8
  %m.keys901 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load897, i32 0, i32 2
  %m.keys902 = load ptr, ptr %m.keys901, align 8
  %m.states903 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load897, i32 0, i32 4
  %m.states904 = load ptr, ptr %m.states903, align 8
  %mk.data905 = getelementptr inbounds { i64, ptr }, ptr %var.load898, i32 0, i32 1
  %mk.data906 = load ptr, ptr %mk.data905, align 8
  %mk.len907 = getelementptr inbounds { i64, ptr }, ptr %var.load898, i32 0, i32 0
  %mk.len908 = load i64, ptr %mk.len907, align 8
  %mk.len909 = and i64 %mk.len908, 281474976710655
  %hash.str910 = call i64 @dva_hash_string(ptr %mk.data906, i64 %mk.len909)
  %m.capm1911 = sub i64 %m.cap900, 1
  %m.idx0912 = and i64 %hash.str910, %m.capm1911
  br label %m.mem.loop913

str.eq.then847:                                   ; preds = %loop.body.67
  %eq.lhs.data850 = getelementptr inbounds { i64, ptr }, ptr %var.load840, i32 0, i32 1
  %eq.lhs.data851 = load ptr, ptr %eq.lhs.data850, align 8
  %eq.rhs.data852 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp853 = call i32 @memcmp(ptr %eq.lhs.data851, ptr %eq.rhs.data852, i64 %eq.lhs.len843)
  %eq.cmp.zero854 = icmp eq i32 %eq.memcmp853, 0
  br label %str.eq.merge849

str.eq.else848:                                   ; preds = %loop.body.67
  br label %str.eq.merge849

str.eq.merge849:                                  ; preds = %str.eq.else848, %str.eq.then847
  %str.eq.result855 = phi i1 [ %eq.cmp.zero854, %str.eq.then847 ], [ false, %str.eq.else848 ]
  %str.neq856 = xor i1 %str.eq.result855, true
  br i1 %str.neq856, label %and.68.then, label %and.68.else

and.68.then:                                      ; preds = %str.eq.merge849
  %var.load857 = load ptr, ptr %var.filtered_deps, align 8
  %a.load858 = load ptr, ptr %var.filtered_deps, align 8
  %a.null859 = icmp eq ptr %a.load858, null
  br i1 %a.null859, label %a.create860, label %a.after861

and.68.else:                                      ; preds = %str.eq.merge849
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %a.after861
  %and.68.phi = phi i1 [ %nottmp872, %a.after861 ], [ %str.neq856, %and.68.else ]
  br i1 %and.68.phi, label %choice.then873, label %choice.exit874

a.create860:                                      ; preds = %and.68.then
  %arena.cur862 = call ptr @dva_arena_current()
  %a.create863 = call ptr @dva_arena_alloc(ptr %arena.cur862, i64 24)
  %arena.cur864 = call ptr @dva_arena_current()
  %a.buf865 = call ptr @dva_arena_alloc(ptr %arena.cur864, i64 128)
  %a.len.gep866 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 0
  store i64 0, ptr %a.len.gep866, align 8
  %a.data.gep867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 1
  store ptr %a.buf865, ptr %a.data.gep867, align 8
  %a.cap.gep868 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create863, i32 0, i32 2
  store i64 16, ptr %a.cap.gep868, align 8
  store ptr %a.create863, ptr %var.filtered_deps, align 8
  br label %a.after861

a.after861:                                       ; preds = %a.create860, %and.68.then
  %a.load2869 = load ptr, ptr %var.filtered_deps, align 8
  %var.load870 = load ptr, ptr %var.target_ref, align 8
  %call.res871 = call i1 @"dep_graph::has_name"(ptr %a.load2869, ptr %var.load870)
  %nottmp872 = xor i1 %call.res871, true
  br label %and.68.exit

choice.then873:                                   ; preds = %and.68.exit
  %var.load875 = load ptr, ptr %var.target_ref, align 8
  %a.load876 = load ptr, ptr %var.filtered_deps, align 8
  %a.null877 = icmp eq ptr %a.load876, null
  br i1 %a.null877, label %a.create878, label %a.after879

choice.exit874:                                   ; preds = %a.store, %and.68.exit
  br label %loop.latch.67

a.create878:                                      ; preds = %choice.then873
  %arena.cur880 = call ptr @dva_arena_current()
  %a.create881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 24)
  %arena.cur882 = call ptr @dva_arena_current()
  %a.buf883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 128)
  %a.len.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 0
  store i64 0, ptr %a.len.gep884, align 8
  %a.data.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 1
  store ptr %a.buf883, ptr %a.data.gep885, align 8
  %a.cap.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 2
  store i64 16, ptr %a.cap.gep886, align 8
  store ptr %a.create881, ptr %var.filtered_deps, align 8
  br label %a.after879

a.after879:                                       ; preds = %a.create878, %choice.then873
  %a.load2887 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after879
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  %a.len888 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 2
  %a.cap889 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len888, %a.cap889
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2887)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 1
  %a.cur.data890 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  %a.cur.len891 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data890, i64 %a.cur.len891
  %slot.p2i = ptrtoint ptr %var.load875 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len891, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit874

m.mem.loop913:                                    ; preds = %m.mem.next916, %loop.exit.67
  %m.mem.idx919 = phi i64 [ %m.idx0912, %loop.exit.67 ], [ %m.mem.idx.next948, %m.mem.next916 ]
  %m.mem.probe920 = phi i64 [ 0, %loop.exit.67 ], [ %m.mem.probe.next949, %m.mem.next916 ]
  %m.mem.reached921 = icmp eq i64 %m.mem.probe920, %m.cap900
  %m.mem.state.gep922 = getelementptr i8, ptr %m.states904, i64 %m.mem.idx919
  %m.mem.state923 = load i8, ptr %m.mem.state.gep922, align 1
  %m.mem.is.empty924 = icmp eq i8 %m.mem.state923, 0
  %m.mem.stop925 = or i1 %m.mem.is.empty924, %m.mem.reached921
  br i1 %m.mem.stop925, label %m.mem.miss917, label %m.mem.probe914

m.mem.probe914:                                   ; preds = %m.mem.loop913
  %m.mem.is.tomb926 = icmp eq i8 %m.mem.state923, 2
  br i1 %m.mem.is.tomb926, label %m.mem.next916, label %m.mem.found915

m.mem.found915:                                   ; preds = %m.mem.probe914
  %m.mem.key.slot927 = getelementptr i64, ptr %m.keys902, i64 %m.mem.idx919
  %mk.stored928 = load ptr, ptr %m.mem.key.slot927, align 8
  %mk.slen929 = getelementptr inbounds { i64, ptr }, ptr %mk.stored928, i32 0, i32 0
  %mk.slen930 = load i64, ptr %mk.slen929, align 8
  %mk.slen931 = and i64 %mk.slen930, 281474976710655
  %mk.nlen932 = getelementptr inbounds { i64, ptr }, ptr %var.load898, i32 0, i32 0
  %mk.nlen933 = load i64, ptr %mk.nlen932, align 8
  %mk.nlen934 = and i64 %mk.nlen933, 281474976710655
  %mk.lenseq935 = icmp eq i64 %mk.slen931, %mk.nlen934
  br i1 %mk.lenseq935, label %mk.eq.then936, label %mk.eq.else937

m.mem.next916:                                    ; preds = %mk.eq.merge938, %m.mem.probe914
  %m.mem.idx.add947 = add i64 %m.mem.idx919, 1
  %m.mem.idx.next948 = and i64 %m.mem.idx.add947, %m.capm1911
  %m.mem.probe.next949 = add i64 %m.mem.probe920, 1
  br label %m.mem.loop913

m.mem.miss917:                                    ; preds = %m.mem.loop913
  br label %m.mem.done918

m.mem.done918:                                    ; preds = %m.mem.miss917, %m.mem.hit946
  %m.mem.res950 = phi i1 [ true, %m.mem.hit946 ], [ false, %m.mem.miss917 ]
  store i1 %m.mem.res950, ptr %var.known, align 1
  %var.load951 = load i1, ptr %var.known, align 1
  %nottmp952 = xor i1 %var.load951, true
  br i1 %nottmp952, label %choice.then953, label %choice.exit954

mk.eq.then936:                                    ; preds = %m.mem.found915
  %mk.sdata939 = getelementptr inbounds { i64, ptr }, ptr %mk.stored928, i32 0, i32 1
  %mk.sdata940 = load ptr, ptr %mk.sdata939, align 8
  %mk.ndata941 = getelementptr inbounds { i64, ptr }, ptr %var.load898, i32 0, i32 1
  %mk.ndata942 = load ptr, ptr %mk.ndata941, align 8
  %mk.memcmp943 = call i32 @memcmp(ptr %mk.sdata940, ptr %mk.ndata942, i64 %mk.nlen934)
  %mk.cmpeq944 = icmp eq i32 %mk.memcmp943, 0
  br label %mk.eq.merge938

mk.eq.else937:                                    ; preds = %m.mem.found915
  br label %mk.eq.merge938

mk.eq.merge938:                                   ; preds = %mk.eq.else937, %mk.eq.then936
  %mk.eq945 = phi i1 [ %mk.cmpeq944, %mk.eq.then936 ], [ false, %mk.eq.else937 ]
  br i1 %mk.eq945, label %m.mem.hit946, label %m.mem.next916

m.mem.hit946:                                     ; preds = %mk.eq.merge938
  br label %m.mem.done918

choice.then953:                                   ; preds = %m.mem.done918
  %var.load955 = load ptr, ptr %var.node_indices, align 8
  %var.load956 = load ptr, ptr %var.name2, align 8
  %var.load957 = load ptr, ptr %var.graph, align 8
  %fld.gep958 = getelementptr inbounds { ptr, ptr }, ptr %var.load957, i32 0, i32 0
  %fld.load959 = load ptr, ptr %fld.gep958, align 8
  %a.len.query960 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load959, i32 0, i32 0
  %a.len.query961 = load i64, ptr %a.len.query960, align 8
  %m.cap962 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 1
  %m.cap963 = load i64, ptr %m.cap962, align 8
  %m.keys964 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 2
  %m.keys965 = load ptr, ptr %m.keys964, align 8
  %m.vals966 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 3
  %m.vals967 = load ptr, ptr %m.vals966, align 8
  %m.states968 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 4
  %m.states969 = load ptr, ptr %m.states968, align 8
  %mk.data970 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 1
  %mk.data971 = load ptr, ptr %mk.data970, align 8
  %mk.len972 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 0
  %mk.len973 = load i64, ptr %mk.len972, align 8
  %mk.len974 = and i64 %mk.len973, 281474976710655
  %hash.str975 = call i64 @dva_hash_string(ptr %mk.data971, i64 %mk.len974)
  %m.capm1976 = sub i64 %m.cap963, 1
  %m.idx0977 = and i64 %hash.str975, %m.capm1976
  br label %m.loop978

choice.exit954:                                   ; preds = %m.done985, %m.mem.done918
  %var.load1232 = load ptr, ptr %var.graph, align 8
  %var.load1233 = load ptr, ptr %var.name2, align 8
  %var.load1234 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1235 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1236 = icmp eq ptr %a.load1235, null
  br i1 %a.null1236, label %a.create1237, label %a.after1238

m.loop978:                                        ; preds = %m.next983, %choice.then953
  %m.idx986 = phi i64 [ %m.idx0977, %choice.then953 ], [ %m.idx.next1019, %m.next983 ]
  %m.tomb987 = phi i64 [ -1, %choice.then953 ], [ %m.next.tomb1017, %m.next983 ]
  %m.probe988 = phi i64 [ 0, %choice.then953 ], [ %m.probe.next1020, %m.next983 ]
  %m.reached.cap989 = icmp eq i64 %m.probe988, %m.cap963
  %m.state.gep990 = getelementptr i8, ptr %m.states969, i64 %m.idx986
  %m.state991 = load i8, ptr %m.state.gep990, align 1
  %m.is.empty992 = icmp eq i8 %m.state991, 0
  %m.stop993 = or i1 %m.is.empty992, %m.reached.cap989
  br i1 %m.stop993, label %m.empty984, label %m.check.tomb979

m.check.tomb979:                                  ; preds = %m.loop978
  %m.is.tomb994 = icmp eq i8 %m.state991, 2
  br i1 %m.is.tomb994, label %m.tomb980, label %m.found981

m.tomb980:                                        ; preds = %m.check.tomb979
  %m.has.tomb995 = icmp ne i64 %m.tomb987, -1
  %m.tomb.sel996 = select i1 %m.has.tomb995, i64 %m.tomb987, i64 %m.idx986
  br label %m.next983

m.found981:                                       ; preds = %m.check.tomb979
  %m.key.slot997 = getelementptr i64, ptr %m.keys965, i64 %m.idx986
  %mk.stored998 = load ptr, ptr %m.key.slot997, align 8
  %mk.slen999 = getelementptr inbounds { i64, ptr }, ptr %mk.stored998, i32 0, i32 0
  %mk.slen1000 = load i64, ptr %mk.slen999, align 8
  %mk.slen1001 = and i64 %mk.slen1000, 281474976710655
  %mk.nlen1002 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 0
  %mk.nlen1003 = load i64, ptr %mk.nlen1002, align 8
  %mk.nlen1004 = and i64 %mk.nlen1003, 281474976710655
  %mk.lenseq1005 = icmp eq i64 %mk.slen1001, %mk.nlen1004
  br i1 %mk.lenseq1005, label %mk.eq.then1006, label %mk.eq.else1007

m.overwrite982:                                   ; preds = %mk.eq.merge1008
  %m.val.slot1016 = getelementptr i64, ptr %m.vals967, i64 %m.idx986
  store i64 %a.len.query961, ptr %m.val.slot1016, align 8
  br label %m.done985

m.next983:                                        ; preds = %mk.eq.merge1008, %m.tomb980
  %m.next.tomb1017 = phi i64 [ %m.tomb.sel996, %m.tomb980 ], [ %m.tomb987, %mk.eq.merge1008 ]
  %m.idx.add1018 = add i64 %m.idx986, 1
  %m.idx.next1019 = and i64 %m.idx.add1018, %m.capm1976
  %m.probe.next1020 = add i64 %m.probe988, 1
  br label %m.loop978

m.empty984:                                       ; preds = %m.loop978
  %m.grow.cnt.p1021 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  %m.grow.cnt1022 = load i64, ptr %m.grow.cnt.p1021, align 8
  %m.grow.tm.p1023 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 5
  %m.grow.tm1024 = load i64, ptr %m.grow.tm.p1023, align 8
  %m.occupied1025 = add i64 %m.grow.cnt1022, %m.grow.tm1024
  %m.c.plus1026 = add i64 %m.occupied1025, 1
  %m.c.lhs1027 = mul i64 %m.c.plus1026, 4
  %m.c.rhs1028 = mul i64 %m.cap963, 3
  %m.need.grow1029 = icmp sgt i64 %m.c.lhs1027, %m.c.rhs1028
  br i1 %m.need.grow1029, label %m.grow1030, label %m.ins.slot1031

m.done985:                                        ; preds = %m.ins.slot1031, %m.done1170, %m.overwrite982
  br label %choice.exit954

mk.eq.then1006:                                   ; preds = %m.found981
  %mk.sdata1009 = getelementptr inbounds { i64, ptr }, ptr %mk.stored998, i32 0, i32 1
  %mk.sdata1010 = load ptr, ptr %mk.sdata1009, align 8
  %mk.ndata1011 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 1
  %mk.ndata1012 = load ptr, ptr %mk.ndata1011, align 8
  %mk.memcmp1013 = call i32 @memcmp(ptr %mk.sdata1010, ptr %mk.ndata1012, i64 %mk.nlen1004)
  %mk.cmpeq1014 = icmp eq i32 %mk.memcmp1013, 0
  br label %mk.eq.merge1008

mk.eq.else1007:                                   ; preds = %m.found981
  br label %mk.eq.merge1008

mk.eq.merge1008:                                  ; preds = %mk.eq.else1007, %mk.eq.then1006
  %mk.eq1015 = phi i1 [ %mk.cmpeq1014, %mk.eq.then1006 ], [ false, %mk.eq.else1007 ]
  br i1 %mk.eq1015, label %m.overwrite982, label %m.next983

m.grow1030:                                       ; preds = %m.empty984
  %m.old.cap1032 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 1
  %m.old.cap1033 = load i64, ptr %m.old.cap1032, align 8
  %m.old.keys1034 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 2
  %m.old.keys1035 = load ptr, ptr %m.old.keys1034, align 8
  %m.old.vals1036 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 3
  %m.old.vals1037 = load ptr, ptr %m.old.vals1036, align 8
  %m.old.states1038 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 4
  %m.old.states1039 = load ptr, ptr %m.old.states1038, align 8
  %m.double.cap1040 = mul i64 %m.old.cap1033, 2
  %m.live.cnt1041 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  %m.live.cnt1042 = load i64, ptr %m.live.cnt1041, align 8
  %m.live.x21043 = mul i64 %m.live.cnt1042, 2
  %m.should.double1044 = icmp sgt i64 %m.live.x21043, %m.old.cap1033
  %m.new.cap1045 = select i1 %m.should.double1044, i64 %m.double.cap1040, i64 %m.old.cap1033
  %m.gk.bytes1046 = mul i64 %m.new.cap1045, 8
  %arena.cur1047 = call ptr @dva_arena_current()
  %m.gk1048 = call ptr @dva_arena_alloc(ptr %arena.cur1047, i64 %m.gk.bytes1046)
  %m.gv.bytes1049 = mul i64 %m.new.cap1045, 8
  %arena.cur1050 = call ptr @dva_arena_current()
  %m.gv1051 = call ptr @dva_arena_alloc(ptr %arena.cur1050, i64 %m.gv.bytes1049)
  %arena.cur1052 = call ptr @dva_arena_current()
  %m.gs1053 = call ptr @dva_arena_alloc(ptr %arena.cur1052, i64 %m.new.cap1045)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1053, i8 0, i64 %m.new.cap1045, i1 false)
  %m.cap.gep1054 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 1
  store i64 %m.new.cap1045, ptr %m.cap.gep1054, align 8
  %m.keys.gep1055 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 2
  store ptr %m.gk1048, ptr %m.keys.gep1055, align 8
  %m.vals.gep1056 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 3
  store ptr %m.gv1051, ptr %m.vals.gep1056, align 8
  %m.states.gep1057 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 4
  store ptr %m.gs1053, ptr %m.states.gep1057, align 8
  %m.count.gep1058 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  store i64 0, ptr %m.count.gep1058, align 8
  %m.tombs.gep1059 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1059, align 8
  br label %m.re.loop1060

m.ins.slot1031:                                   ; preds = %m.empty984
  %m.use.tomb1219 = icmp ne i64 %m.tomb987, -1
  %m.ins.idx1220 = select i1 %m.use.tomb1219, i64 %m.tomb987, i64 %m.idx986
  %m.key.slot1221 = getelementptr i64, ptr %m.keys965, i64 %m.ins.idx1220
  store ptr %var.load956, ptr %m.key.slot1221, align 8
  %m.val.slot1222 = getelementptr i64, ptr %m.vals967, i64 %m.ins.idx1220
  store i64 %a.len.query961, ptr %m.val.slot1222, align 8
  %m.ins.state.slot1223 = getelementptr i8, ptr %m.states969, i64 %m.ins.idx1220
  store i8 1, ptr %m.ins.state.slot1223, align 1
  %m.count1224 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  %m.count1225 = load i64, ptr %m.count1224, align 8
  %m.count.next1226 = add i64 %m.count1225, 1
  %m.count.gep1227 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  store i64 %m.count.next1226, ptr %m.count.gep1227, align 8
  %m.ins.tombs.p1228 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 5
  %m.ins.tombs1229 = load i64, ptr %m.ins.tombs.p1228, align 8
  %m.tomb.dec1230 = select i1 %m.use.tomb1219, i64 1, i64 0
  %m.ins.tombs.next1231 = sub i64 %m.ins.tombs1229, %m.tomb.dec1230
  store i64 %m.ins.tombs.next1231, ptr %m.ins.tombs.p1228, align 8
  br label %m.done985

m.re.loop1060:                                    ; preds = %m.re.cont1062, %m.grow1030
  %m.re.i1064 = phi i64 [ 0, %m.grow1030 ], [ %m.re.i.next1146, %m.re.cont1062 ]
  %m.re.lt1065 = icmp slt i64 %m.re.i1064, %m.old.cap1033
  br i1 %m.re.lt1065, label %m.re.body1061, label %m.re.done1063

m.re.body1061:                                    ; preds = %m.re.loop1060
  %m.re.state.gep1066 = getelementptr i8, ptr %m.old.states1039, i64 %m.re.i1064
  %m.re.state1067 = load i8, ptr %m.re.state.gep1066, align 1
  %m.re.occ1068 = icmp eq i8 %m.re.state1067, 1
  br i1 %m.re.occ1068, label %m.re.ins1069, label %m.re.cont1062

m.re.cont1062:                                    ; preds = %m.done1097, %m.re.body1061
  %m.re.i.next1146 = add i64 %m.re.i1064, 1
  br label %m.re.loop1060

m.re.done1063:                                    ; preds = %m.re.loop1060
  %m.cap1147 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 1
  %m.cap1148 = load i64, ptr %m.cap1147, align 8
  %m.keys1149 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 2
  %m.keys1150 = load ptr, ptr %m.keys1149, align 8
  %m.vals1151 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 3
  %m.vals1152 = load ptr, ptr %m.vals1151, align 8
  %m.states1153 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 4
  %m.states1154 = load ptr, ptr %m.states1153, align 8
  %mk.data1155 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 1
  %mk.data1156 = load ptr, ptr %mk.data1155, align 8
  %mk.len1157 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 0
  %mk.len1158 = load i64, ptr %mk.len1157, align 8
  %mk.len1159 = and i64 %mk.len1158, 281474976710655
  %hash.str1160 = call i64 @dva_hash_string(ptr %mk.data1156, i64 %mk.len1159)
  %m.capm11161 = sub i64 %m.cap1148, 1
  %m.idx01162 = and i64 %hash.str1160, %m.capm11161
  br label %m.loop1163

m.re.ins1069:                                     ; preds = %m.re.body1061
  %m.re.key.slot1070 = getelementptr i64, ptr %m.old.keys1035, i64 %m.re.i1064
  %m.re.val.slot1071 = getelementptr i64, ptr %m.old.vals1037, i64 %m.re.i1064
  %m.re.key1072 = load ptr, ptr %m.re.key.slot1070, align 8
  %m.re.val1073 = load i64, ptr %m.re.val.slot1071, align 8
  %m.cap1074 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 1
  %m.cap1075 = load i64, ptr %m.cap1074, align 8
  %m.keys1076 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 2
  %m.keys1077 = load ptr, ptr %m.keys1076, align 8
  %m.vals1078 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 3
  %m.vals1079 = load ptr, ptr %m.vals1078, align 8
  %m.states1080 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 4
  %m.states1081 = load ptr, ptr %m.states1080, align 8
  %mk.data1082 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1072, i32 0, i32 1
  %mk.data1083 = load ptr, ptr %mk.data1082, align 8
  %mk.len1084 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1072, i32 0, i32 0
  %mk.len1085 = load i64, ptr %mk.len1084, align 8
  %mk.len1086 = and i64 %mk.len1085, 281474976710655
  %hash.str1087 = call i64 @dva_hash_string(ptr %mk.data1083, i64 %mk.len1086)
  %m.capm11088 = sub i64 %m.cap1075, 1
  %m.idx01089 = and i64 %hash.str1087, %m.capm11088
  br label %m.loop1090

m.loop1090:                                       ; preds = %m.next1095, %m.re.ins1069
  %m.idx1098 = phi i64 [ %m.idx01089, %m.re.ins1069 ], [ %m.idx.next1131, %m.next1095 ]
  %m.tomb1099 = phi i64 [ -1, %m.re.ins1069 ], [ %m.next.tomb1129, %m.next1095 ]
  %m.probe1100 = phi i64 [ 0, %m.re.ins1069 ], [ %m.probe.next1132, %m.next1095 ]
  %m.reached.cap1101 = icmp eq i64 %m.probe1100, %m.cap1075
  %m.state.gep1102 = getelementptr i8, ptr %m.states1081, i64 %m.idx1098
  %m.state1103 = load i8, ptr %m.state.gep1102, align 1
  %m.is.empty1104 = icmp eq i8 %m.state1103, 0
  %m.stop1105 = or i1 %m.is.empty1104, %m.reached.cap1101
  br i1 %m.stop1105, label %m.empty1096, label %m.check.tomb1091

m.check.tomb1091:                                 ; preds = %m.loop1090
  %m.is.tomb1106 = icmp eq i8 %m.state1103, 2
  br i1 %m.is.tomb1106, label %m.tomb1092, label %m.found1093

m.tomb1092:                                       ; preds = %m.check.tomb1091
  %m.has.tomb1107 = icmp ne i64 %m.tomb1099, -1
  %m.tomb.sel1108 = select i1 %m.has.tomb1107, i64 %m.tomb1099, i64 %m.idx1098
  br label %m.next1095

m.found1093:                                      ; preds = %m.check.tomb1091
  %m.key.slot1109 = getelementptr i64, ptr %m.keys1077, i64 %m.idx1098
  %mk.stored1110 = load ptr, ptr %m.key.slot1109, align 8
  %mk.slen1111 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1110, i32 0, i32 0
  %mk.slen1112 = load i64, ptr %mk.slen1111, align 8
  %mk.slen1113 = and i64 %mk.slen1112, 281474976710655
  %mk.nlen1114 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1072, i32 0, i32 0
  %mk.nlen1115 = load i64, ptr %mk.nlen1114, align 8
  %mk.nlen1116 = and i64 %mk.nlen1115, 281474976710655
  %mk.lenseq1117 = icmp eq i64 %mk.slen1113, %mk.nlen1116
  br i1 %mk.lenseq1117, label %mk.eq.then1118, label %mk.eq.else1119

m.overwrite1094:                                  ; preds = %mk.eq.merge1120
  %m.val.slot1128 = getelementptr i64, ptr %m.vals1079, i64 %m.idx1098
  store i64 %m.re.val1073, ptr %m.val.slot1128, align 8
  br label %m.done1097

m.next1095:                                       ; preds = %mk.eq.merge1120, %m.tomb1092
  %m.next.tomb1129 = phi i64 [ %m.tomb.sel1108, %m.tomb1092 ], [ %m.tomb1099, %mk.eq.merge1120 ]
  %m.idx.add1130 = add i64 %m.idx1098, 1
  %m.idx.next1131 = and i64 %m.idx.add1130, %m.capm11088
  %m.probe.next1132 = add i64 %m.probe1100, 1
  br label %m.loop1090

m.empty1096:                                      ; preds = %m.loop1090
  %m.use.tomb1133 = icmp ne i64 %m.tomb1099, -1
  %m.ins.idx1134 = select i1 %m.use.tomb1133, i64 %m.tomb1099, i64 %m.idx1098
  %m.key.slot1135 = getelementptr i64, ptr %m.keys1077, i64 %m.ins.idx1134
  store ptr %m.re.key1072, ptr %m.key.slot1135, align 8
  %m.val.slot1136 = getelementptr i64, ptr %m.vals1079, i64 %m.ins.idx1134
  store i64 %m.re.val1073, ptr %m.val.slot1136, align 8
  %m.ins.state.slot1137 = getelementptr i8, ptr %m.states1081, i64 %m.ins.idx1134
  store i8 1, ptr %m.ins.state.slot1137, align 1
  %m.count1138 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  %m.count1139 = load i64, ptr %m.count1138, align 8
  %m.count.next1140 = add i64 %m.count1139, 1
  %m.count.gep1141 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  store i64 %m.count.next1140, ptr %m.count.gep1141, align 8
  %m.ins.tombs.p1142 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 5
  %m.ins.tombs1143 = load i64, ptr %m.ins.tombs.p1142, align 8
  %m.tomb.dec1144 = select i1 %m.use.tomb1133, i64 1, i64 0
  %m.ins.tombs.next1145 = sub i64 %m.ins.tombs1143, %m.tomb.dec1144
  store i64 %m.ins.tombs.next1145, ptr %m.ins.tombs.p1142, align 8
  br label %m.done1097

m.done1097:                                       ; preds = %m.empty1096, %m.overwrite1094
  br label %m.re.cont1062

mk.eq.then1118:                                   ; preds = %m.found1093
  %mk.sdata1121 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1110, i32 0, i32 1
  %mk.sdata1122 = load ptr, ptr %mk.sdata1121, align 8
  %mk.ndata1123 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1072, i32 0, i32 1
  %mk.ndata1124 = load ptr, ptr %mk.ndata1123, align 8
  %mk.memcmp1125 = call i32 @memcmp(ptr %mk.sdata1122, ptr %mk.ndata1124, i64 %mk.nlen1116)
  %mk.cmpeq1126 = icmp eq i32 %mk.memcmp1125, 0
  br label %mk.eq.merge1120

mk.eq.else1119:                                   ; preds = %m.found1093
  br label %mk.eq.merge1120

mk.eq.merge1120:                                  ; preds = %mk.eq.else1119, %mk.eq.then1118
  %mk.eq1127 = phi i1 [ %mk.cmpeq1126, %mk.eq.then1118 ], [ false, %mk.eq.else1119 ]
  br i1 %mk.eq1127, label %m.overwrite1094, label %m.next1095

m.loop1163:                                       ; preds = %m.next1168, %m.re.done1063
  %m.idx1171 = phi i64 [ %m.idx01162, %m.re.done1063 ], [ %m.idx.next1204, %m.next1168 ]
  %m.tomb1172 = phi i64 [ -1, %m.re.done1063 ], [ %m.next.tomb1202, %m.next1168 ]
  %m.probe1173 = phi i64 [ 0, %m.re.done1063 ], [ %m.probe.next1205, %m.next1168 ]
  %m.reached.cap1174 = icmp eq i64 %m.probe1173, %m.cap1148
  %m.state.gep1175 = getelementptr i8, ptr %m.states1154, i64 %m.idx1171
  %m.state1176 = load i8, ptr %m.state.gep1175, align 1
  %m.is.empty1177 = icmp eq i8 %m.state1176, 0
  %m.stop1178 = or i1 %m.is.empty1177, %m.reached.cap1174
  br i1 %m.stop1178, label %m.empty1169, label %m.check.tomb1164

m.check.tomb1164:                                 ; preds = %m.loop1163
  %m.is.tomb1179 = icmp eq i8 %m.state1176, 2
  br i1 %m.is.tomb1179, label %m.tomb1165, label %m.found1166

m.tomb1165:                                       ; preds = %m.check.tomb1164
  %m.has.tomb1180 = icmp ne i64 %m.tomb1172, -1
  %m.tomb.sel1181 = select i1 %m.has.tomb1180, i64 %m.tomb1172, i64 %m.idx1171
  br label %m.next1168

m.found1166:                                      ; preds = %m.check.tomb1164
  %m.key.slot1182 = getelementptr i64, ptr %m.keys1150, i64 %m.idx1171
  %mk.stored1183 = load ptr, ptr %m.key.slot1182, align 8
  %mk.slen1184 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1183, i32 0, i32 0
  %mk.slen1185 = load i64, ptr %mk.slen1184, align 8
  %mk.slen1186 = and i64 %mk.slen1185, 281474976710655
  %mk.nlen1187 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 0
  %mk.nlen1188 = load i64, ptr %mk.nlen1187, align 8
  %mk.nlen1189 = and i64 %mk.nlen1188, 281474976710655
  %mk.lenseq1190 = icmp eq i64 %mk.slen1186, %mk.nlen1189
  br i1 %mk.lenseq1190, label %mk.eq.then1191, label %mk.eq.else1192

m.overwrite1167:                                  ; preds = %mk.eq.merge1193
  %m.val.slot1201 = getelementptr i64, ptr %m.vals1152, i64 %m.idx1171
  store i64 %a.len.query961, ptr %m.val.slot1201, align 8
  br label %m.done1170

m.next1168:                                       ; preds = %mk.eq.merge1193, %m.tomb1165
  %m.next.tomb1202 = phi i64 [ %m.tomb.sel1181, %m.tomb1165 ], [ %m.tomb1172, %mk.eq.merge1193 ]
  %m.idx.add1203 = add i64 %m.idx1171, 1
  %m.idx.next1204 = and i64 %m.idx.add1203, %m.capm11161
  %m.probe.next1205 = add i64 %m.probe1173, 1
  br label %m.loop1163

m.empty1169:                                      ; preds = %m.loop1163
  %m.use.tomb1206 = icmp ne i64 %m.tomb1172, -1
  %m.ins.idx1207 = select i1 %m.use.tomb1206, i64 %m.tomb1172, i64 %m.idx1171
  %m.key.slot1208 = getelementptr i64, ptr %m.keys1150, i64 %m.ins.idx1207
  store ptr %var.load956, ptr %m.key.slot1208, align 8
  %m.val.slot1209 = getelementptr i64, ptr %m.vals1152, i64 %m.ins.idx1207
  store i64 %a.len.query961, ptr %m.val.slot1209, align 8
  %m.ins.state.slot1210 = getelementptr i8, ptr %m.states1154, i64 %m.ins.idx1207
  store i8 1, ptr %m.ins.state.slot1210, align 1
  %m.count1211 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  %m.count1212 = load i64, ptr %m.count1211, align 8
  %m.count.next1213 = add i64 %m.count1212, 1
  %m.count.gep1214 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 0
  store i64 %m.count.next1213, ptr %m.count.gep1214, align 8
  %m.ins.tombs.p1215 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load955, i32 0, i32 5
  %m.ins.tombs1216 = load i64, ptr %m.ins.tombs.p1215, align 8
  %m.tomb.dec1217 = select i1 %m.use.tomb1206, i64 1, i64 0
  %m.ins.tombs.next1218 = sub i64 %m.ins.tombs1216, %m.tomb.dec1217
  store i64 %m.ins.tombs.next1218, ptr %m.ins.tombs.p1215, align 8
  br label %m.done1170

m.done1170:                                       ; preds = %m.empty1169, %m.overwrite1167
  br label %m.done985

mk.eq.then1191:                                   ; preds = %m.found1166
  %mk.sdata1194 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1183, i32 0, i32 1
  %mk.sdata1195 = load ptr, ptr %mk.sdata1194, align 8
  %mk.ndata1196 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 1
  %mk.ndata1197 = load ptr, ptr %mk.ndata1196, align 8
  %mk.memcmp1198 = call i32 @memcmp(ptr %mk.sdata1195, ptr %mk.ndata1197, i64 %mk.nlen1189)
  %mk.cmpeq1199 = icmp eq i32 %mk.memcmp1198, 0
  br label %mk.eq.merge1193

mk.eq.else1192:                                   ; preds = %m.found1166
  br label %mk.eq.merge1193

mk.eq.merge1193:                                  ; preds = %mk.eq.else1192, %mk.eq.then1191
  %mk.eq1200 = phi i1 [ %mk.cmpeq1199, %mk.eq.then1191 ], [ false, %mk.eq.else1192 ]
  br i1 %mk.eq1200, label %m.overwrite1167, label %m.next1168

a.create1237:                                     ; preds = %choice.exit954
  %arena.cur1239 = call ptr @dva_arena_current()
  %a.create1240 = call ptr @dva_arena_alloc(ptr %arena.cur1239, i64 24)
  %arena.cur1241 = call ptr @dva_arena_current()
  %a.buf1242 = call ptr @dva_arena_alloc(ptr %arena.cur1241, i64 128)
  %a.len.gep1243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1240, i32 0, i32 0
  store i64 0, ptr %a.len.gep1243, align 8
  %a.data.gep1244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1240, i32 0, i32 1
  store ptr %a.buf1242, ptr %a.data.gep1244, align 8
  %a.cap.gep1245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1240, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1245, align 8
  store ptr %a.create1240, ptr %var.filtered_deps, align 8
  br label %a.after1238

a.after1238:                                      ; preds = %a.create1237, %choice.exit954
  %a.load21246 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1247 = load i64, ptr %var.j, align 8
  %arena.cur1248 = call ptr @dva_arena_current()
  %rec.alloc1249 = call ptr @dva_arena_alloc(ptr %arena.cur1248, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1250 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1249, i32 0, i32 0
  store ptr %var.load1233, ptr %rec.fld1250, align 8
  %rec.fld1251 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1249, i32 0, i32 1
  store ptr %a.load21246, ptr %rec.fld1251, align 8
  %rec.fld1252 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1249, i32 0, i32 2
  store i64 %var.load1247, ptr %rec.fld1252, align 8
  %fld.gep1253 = getelementptr inbounds { ptr, ptr }, ptr %var.load1232, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1253, align 8
  br label %a.check1254

a.check1254:                                      ; preds = %a.after1238
  %a.len1257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1258 = load i64, ptr %a.len1257, align 8
  %a.cap1259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1260 = load i64, ptr %a.cap1259, align 8
  %a.needs.grow1261 = icmp eq i64 %a.len1258, %a.cap1260
  br i1 %a.needs.grow1261, label %a.grow1255, label %a.store1256

a.grow1255:                                       ; preds = %a.check1254
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1256

a.store1256:                                      ; preds = %a.grow1255, %a.check1254
  %a.cur.data1262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1263 = load ptr, ptr %a.cur.data1262, align 8
  %a.cur.len1264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1265 = load i64, ptr %a.cur.len1264, align 8
  %a.elem.gep1266 = getelementptr i64, ptr %a.cur.data1263, i64 %a.cur.len1265
  %slot.p2i1267 = ptrtoint ptr %rec.alloc1249 to i64
  store i64 %slot.p2i1267, ptr %a.elem.gep1266, align 8
  %a.next.len1268 = add i64 %a.cur.len1265, 1
  %b.len.gep1269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1268, ptr %b.len.gep1269, align 8
  br label %choice.exit769
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

define ptr @"dep_graph::init_tarjan_state"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.header.70:                                   ; preds = %loop.latch.70, %a.store21
  %counter.load = load i64, ptr %loop.idx.70, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.70, label %loop.exit.nat.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %a.load34 = load ptr, ptr %var.indices, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

loop.exit.nat.70:                                 ; preds = %loop.header.70
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %a.store102
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  %var.load115 = load ptr, ptr %var.indices, align 8
  %a.load116 = load ptr, ptr %var.indices, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

a.create36:                                       ; preds = %loop.body.70
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

a.after37:                                        ; preds = %a.create36, %loop.body.70
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
  br label %loop.latch.70

a.create118:                                      ; preds = %loop.exit.70
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

a.after119:                                       ; preds = %a.create118, %loop.exit.70
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

define void @"dep_graph::push_stack"(ptr %0, i64 %1) #0 {
entry:
  %var._224 = alloca ptr, align 8
  %var._223 = alloca ptr, align 8
  %var._222 = alloca ptr, align 8
  %var._100 = alloca ptr, align 8
  %var._99 = alloca ptr, align 8
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
  store i64 264, ptr %err.line.gep, align 8
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
  store i64 264, ptr %err.line.gep12, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.71, label %unwrap.abort.71

unwrap.pos.71:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load41 = load ptr, ptr %var.state, align 8
  %fld.gep42 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load41, i32 0, i32 3
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  store ptr %fld.load43, ptr %var.stk, align 8
  %var.load44 = load i64, ptr %var.sp, align 8
  %var.load45 = load ptr, ptr %var.stk, align 8
  %a.load46 = load ptr, ptr %var.stk, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

unwrap.abort.71:                                  ; preds = %a.rd.done
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %unwrap.abort.71
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

tag.gen_check:                                    ; preds = %unwrap.abort.71
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data40 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check32:                                  ; preds = %str_ok
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

err.thread:                                       ; preds = %str_ok30
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok30
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data40, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create48:                                       ; preds = %unwrap.pos.71
  %arena.cur50 = call ptr @dva_arena_current()
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = call ptr @dva_arena_current()
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var.stk, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %unwrap.pos.71
  %a.load257 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.len.query58 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load44, %a.len.query58
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after49
  %var.load59 = load ptr, ptr %var.stk, align 8
  %a.load60 = load ptr, ptr %var.stk, align 8
  %a.null61 = icmp eq ptr %a.load60, null
  br i1 %a.null61, label %a.create62, label %a.after63

choice.else:                                      ; preds = %a.after49
  %var.load152 = load i64, ptr %var.u, align 8
  %a.load153 = load ptr, ptr %var.stk, align 8
  %a.null154 = icmp eq ptr %a.load153, null
  br i1 %a.null154, label %a.create155, label %a.after156

choice.exit:                                      ; preds = %a.store, %choice.exit98
  %var.load170 = load ptr, ptr %var.s_ptr, align 8
  %a.load171 = load ptr, ptr %var.s_ptr, align 8
  %a.null172 = icmp eq ptr %a.load171, null
  br i1 %a.null172, label %a.create173, label %a.after174

a.create62:                                       ; preds = %choice.then
  %arena.cur64 = call ptr @dva_arena_current()
  %a.create65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 24)
  %arena.cur66 = call ptr @dva_arena_current()
  %a.buf67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 128)
  %a.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 0
  store i64 0, ptr %a.len.gep68, align 8
  %a.data.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 1
  store ptr %a.buf67, ptr %a.data.gep69, align 8
  %a.cap.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 2
  store i64 16, ptr %a.cap.gep70, align 8
  store ptr %a.create65, ptr %var.stk, align 8
  br label %a.after63

a.after63:                                        ; preds = %a.create62, %choice.then
  %a.load271 = load ptr, ptr %var.stk, align 8
  %var.load72 = load i64, ptr %var.sp, align 8
  %var.load73 = load i64, ptr %var.u, align 8
  %a.wr.nonnull = icmp ne ptr %a.load271, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after63
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load271, i32 0, i32 0
  %a.wr.len74 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load72, 0
  %a.wr.lt = icmp slt i64 %var.load72, %a.wr.len74
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load271, i32 0, i32 1
  %a.wr.data75 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data75, i64 %var.load72
  store i64 %var.load73, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after63
  %arena.cur76 = call ptr @dva_arena_current()
  %err.alloc77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 56)
  %err.code.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 0
  store i64 4011, ptr %err.code.gep78, align 8
  %err.msg.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep79, align 8
  %err.file.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep80, align 8
  %err.line.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 3
  store i64 0, ptr %err.line.gep81, align 8
  %err.col.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 4
  store i64 0, ptr %err.col.gep82, align 8
  %err.ctx.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc77, i32 0, i32 5
  %err.ctx0.gep84 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep83, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep84, align 8
  %err.ctx1.gep85 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep83, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep85, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur86 = call ptr @dva_arena_current()
  %err.alloc87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 56)
  %err.code.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 0
  store i64 4011, ptr %err.code.gep88, align 8
  %err.msg.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep89, align 8
  %err.file.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep90, align 8
  %err.line.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 3
  store i64 0, ptr %err.line.gep91, align 8
  %err.col.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 4
  store i64 0, ptr %err.col.gep92, align 8
  %err.ctx.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc87, i32 0, i32 5
  %err.ctx0.gep94 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep93, i32 0, i32 0
  store i64 %var.load72, ptr %err.ctx0.gep94, align 8
  %err.ctx1.gep95 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep93, i32 0, i32 1
  store i64 %a.wr.len74, ptr %err.ctx1.gep95, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc77, %a.wr.err.null ], [ %err.alloc87, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then96, label %choice.else97

choice.then96:                                    ; preds = %a.wr.done
  br label %choice.exit98

choice.else97:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._99, align 8
  store ptr %a.wr.niche, ptr %var._100, align 8
  %err.code.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code102 = load i64, ptr %err.code.gep101, align 8
  %err.msg.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct104 = load ptr, ptr %err.msg.gep103, align 8
  %err.file.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct106 = load ptr, ptr %err.file.gep105, align 8
  %err.line.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line108 = load i64, ptr %err.line.gep107, align 8
  %err.col.gep109 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col110 = load i64, ptr %err.col.gep109, align 8
  %err.msg.len111 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct104, i32 0, i32 0
  %err.msg.len112 = load i64, ptr %err.msg.len111, align 8
  %err.msg.len113 = and i64 %err.msg.len112, 281474976710655
  %str.tag114 = lshr i64 %err.msg.len112, 48
  %tag.immortal116 = icmp eq i64 %str.tag114, 0
  br i1 %tag.immortal116, label %str_ok115, label %tag.gen_check117

choice.exit98:                                    ; preds = %err.abort, %choice.then96
  br label %choice.exit

str_ok115:                                        ; preds = %abort.dead124, %tag.slow_check118, %tag.gen_check117, %choice.else97
  %err.msg.len32125 = trunc i64 %err.msg.len113 to i32
  %err.msg.data126 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct104, i32 0, i32 1
  %err.msg.data127 = load ptr, ptr %err.msg.data126, align 8
  %err.file.len128 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct106, i32 0, i32 0
  %err.file.len129 = load i64, ptr %err.file.len128, align 8
  %err.file.len130 = and i64 %err.file.len129, 281474976710655
  %str.tag131 = lshr i64 %err.file.len129, 48
  %tag.immortal133 = icmp eq i64 %str.tag131, 0
  br i1 %tag.immortal133, label %str_ok132, label %tag.gen_check134

tag.gen_check117:                                 ; preds = %choice.else97
  %active.gen120 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok121 = icmp eq i64 %str.tag114, %active.gen120
  br i1 %tag.fast.ok121, label %str_ok115, label %tag.slow_check118

tag.slow_check118:                                ; preds = %tag.gen_check117
  %arena.cur122 = call ptr @dva_arena_current()
  %tag.valid123 = call i1 @dva_arena_validate_tag(ptr %arena.cur122, i64 %str.tag114)
  br i1 %tag.valid123, label %str_ok115, label %tag.stale119

tag.stale119:                                     ; preds = %tag.slow_check118
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead124:                                    ; No predecessors!
  br label %str_ok115

str_ok132:                                        ; preds = %abort.dead141, %tag.slow_check135, %tag.gen_check134, %str_ok115
  %err.file.len32142 = trunc i64 %err.file.len130 to i32
  %err.file.data143 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct106, i32 0, i32 1
  %err.file.data144 = load ptr, ptr %err.file.data143, align 8
  %err.thread.rec145 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread146 = icmp ne ptr %err.thread.rec145, null
  br i1 %err.is.thread146, label %err.thread147, label %err.normal148

tag.gen_check134:                                 ; preds = %str_ok115
  %active.gen137 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok138 = icmp eq i64 %str.tag131, %active.gen137
  br i1 %tag.fast.ok138, label %str_ok132, label %tag.slow_check135

tag.slow_check135:                                ; preds = %tag.gen_check134
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag131)
  br i1 %tag.valid140, label %str_ok132, label %tag.stale136

tag.stale136:                                     ; preds = %tag.slow_check135
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead141:                                    ; No predecessors!
  br label %str_ok132

err.thread147:                                    ; preds = %str_ok132
  %err.haserr.gep149 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec145, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep149, align 8
  %err.err.gep150 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec145, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep150, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal148:                                    ; preds = %str_ok132
  %err.panic.printf151 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code102, i32 %err.msg.len32125, ptr %err.msg.data127, i32 %err.file.len32142, ptr %err.file.data144, i64 %err.line108, i64 %err.col110)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit98

a.create155:                                      ; preds = %choice.else
  %arena.cur157 = call ptr @dva_arena_current()
  %a.create158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 24)
  %arena.cur159 = call ptr @dva_arena_current()
  %a.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 128)
  %a.len.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 0
  store i64 0, ptr %a.len.gep161, align 8
  %a.data.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 1
  store ptr %a.buf160, ptr %a.data.gep162, align 8
  %a.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 2
  store i64 16, ptr %a.cap.gep163, align 8
  store ptr %a.create158, ptr %var.stk, align 8
  br label %a.after156

a.after156:                                       ; preds = %a.create155, %choice.else
  %a.load2164 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after156
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  %a.len165 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 2
  %a.cap166 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len165, %a.cap166
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2164)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 1
  %a.cur.data167 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  %a.cur.len168 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep169 = getelementptr i64, ptr %a.cur.data167, i64 %a.cur.len168
  store i64 %var.load152, ptr %a.elem.gep169, align 8
  %a.next.len = add i64 %a.cur.len168, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create173:                                      ; preds = %choice.exit
  %arena.cur175 = call ptr @dva_arena_current()
  %a.create176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 24)
  %arena.cur177 = call ptr @dva_arena_current()
  %a.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 128)
  %a.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 0
  store i64 0, ptr %a.len.gep179, align 8
  %a.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 1
  store ptr %a.buf178, ptr %a.data.gep180, align 8
  %a.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 2
  store i64 16, ptr %a.cap.gep181, align 8
  store ptr %a.create176, ptr %var.s_ptr, align 8
  br label %a.after174

a.after174:                                       ; preds = %a.create173, %choice.exit
  %a.load2182 = load ptr, ptr %var.s_ptr, align 8
  %var.load183 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load183, 1
  %a.wr.nonnull184 = icmp ne ptr %a.load2182, null
  br i1 %a.wr.nonnull184, label %a.wr.check185, label %a.wr.err.null187

a.wr.check185:                                    ; preds = %a.after174
  %a.wr.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  %a.wr.len191 = load i64, ptr %a.wr.len190, align 8
  %a.wr.lt192 = icmp slt i64 0, %a.wr.len191
  %a.wr.bounds193 = and i1 true, %a.wr.lt192
  br i1 %a.wr.bounds193, label %a.wr.ok186, label %a.wr.err.oob188

a.wr.ok186:                                       ; preds = %a.wr.check185
  %a.wr.data194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 1
  %a.wr.data195 = load ptr, ptr %a.wr.data194, align 8
  %a.elem.gep196 = getelementptr i64, ptr %a.wr.data195, i64 0
  store i64 %addtmp, ptr %a.elem.gep196, align 8
  br label %a.wr.done189

a.wr.err.null187:                                 ; preds = %a.after174
  %arena.cur197 = call ptr @dva_arena_current()
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
  br label %a.wr.done189

a.wr.err.oob188:                                  ; preds = %a.wr.check185
  %arena.cur207 = call ptr @dva_arena_current()
  %err.alloc208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 56)
  %err.code.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 0
  store i64 4011, ptr %err.code.gep209, align 8
  %err.msg.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep210, align 8
  %err.file.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep211, align 8
  %err.line.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 3
  store i64 0, ptr %err.line.gep212, align 8
  %err.col.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 4
  store i64 0, ptr %err.col.gep213, align 8
  %err.ctx.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 5
  %err.ctx0.gep215 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep214, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep215, align 8
  %err.ctx1.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep214, i32 0, i32 1
  store i64 %a.wr.len191, ptr %err.ctx1.gep216, align 8
  br label %a.wr.done189

a.wr.done189:                                     ; preds = %a.wr.err.oob188, %a.wr.err.null187, %a.wr.ok186
  %a.wr.niche217 = phi ptr [ null, %a.wr.ok186 ], [ %err.alloc198, %a.wr.err.null187 ], [ %err.alloc208, %a.wr.err.oob188 ]
  %niche.eq.null218 = icmp eq ptr %a.wr.niche217, null
  br i1 %niche.eq.null218, label %choice.then219, label %choice.else220

choice.then219:                                   ; preds = %a.wr.done189
  br label %choice.exit221

choice.else220:                                   ; preds = %a.wr.done189
  store ptr %a.wr.niche217, ptr %var._222, align 8
  store ptr %a.wr.niche217, ptr %var._223, align 8
  store ptr %a.wr.niche217, ptr %var._224, align 8
  %err.code.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche217, i32 0, i32 0
  %err.code226 = load i64, ptr %err.code.gep225, align 8
  %err.msg.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche217, i32 0, i32 1
  %err.msg.struct228 = load ptr, ptr %err.msg.gep227, align 8
  %err.file.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche217, i32 0, i32 2
  %err.file.struct230 = load ptr, ptr %err.file.gep229, align 8
  %err.line.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche217, i32 0, i32 3
  %err.line232 = load i64, ptr %err.line.gep231, align 8
  %err.col.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche217, i32 0, i32 4
  %err.col234 = load i64, ptr %err.col.gep233, align 8
  %err.msg.len235 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct228, i32 0, i32 0
  %err.msg.len236 = load i64, ptr %err.msg.len235, align 8
  %err.msg.len237 = and i64 %err.msg.len236, 281474976710655
  %str.tag238 = lshr i64 %err.msg.len236, 48
  %tag.immortal240 = icmp eq i64 %str.tag238, 0
  br i1 %tag.immortal240, label %str_ok239, label %tag.gen_check241

choice.exit221:                                   ; preds = %err.abort276, %choice.then219
  ret void

str_ok239:                                        ; preds = %abort.dead248, %tag.slow_check242, %tag.gen_check241, %choice.else220
  %err.msg.len32249 = trunc i64 %err.msg.len237 to i32
  %err.msg.data250 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct228, i32 0, i32 1
  %err.msg.data251 = load ptr, ptr %err.msg.data250, align 8
  %err.file.len252 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct230, i32 0, i32 0
  %err.file.len253 = load i64, ptr %err.file.len252, align 8
  %err.file.len254 = and i64 %err.file.len253, 281474976710655
  %str.tag255 = lshr i64 %err.file.len253, 48
  %tag.immortal257 = icmp eq i64 %str.tag255, 0
  br i1 %tag.immortal257, label %str_ok256, label %tag.gen_check258

tag.gen_check241:                                 ; preds = %choice.else220
  %active.gen244 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok245 = icmp eq i64 %str.tag238, %active.gen244
  br i1 %tag.fast.ok245, label %str_ok239, label %tag.slow_check242

tag.slow_check242:                                ; preds = %tag.gen_check241
  %arena.cur246 = call ptr @dva_arena_current()
  %tag.valid247 = call i1 @dva_arena_validate_tag(ptr %arena.cur246, i64 %str.tag238)
  br i1 %tag.valid247, label %str_ok239, label %tag.stale243

tag.stale243:                                     ; preds = %tag.slow_check242
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead248:                                    ; No predecessors!
  br label %str_ok239

str_ok256:                                        ; preds = %abort.dead265, %tag.slow_check259, %tag.gen_check258, %str_ok239
  %err.file.len32266 = trunc i64 %err.file.len254 to i32
  %err.file.data267 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct230, i32 0, i32 1
  %err.file.data268 = load ptr, ptr %err.file.data267, align 8
  %err.thread.rec269 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread270 = icmp ne ptr %err.thread.rec269, null
  br i1 %err.is.thread270, label %err.thread271, label %err.normal272

tag.gen_check258:                                 ; preds = %str_ok239
  %active.gen261 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok262 = icmp eq i64 %str.tag255, %active.gen261
  br i1 %tag.fast.ok262, label %str_ok256, label %tag.slow_check259

tag.slow_check259:                                ; preds = %tag.gen_check258
  %arena.cur263 = call ptr @dva_arena_current()
  %tag.valid264 = call i1 @dva_arena_validate_tag(ptr %arena.cur263, i64 %str.tag255)
  br i1 %tag.valid264, label %str_ok256, label %tag.stale260

tag.stale260:                                     ; preds = %tag.slow_check259
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead265:                                    ; No predecessors!
  br label %str_ok256

err.thread271:                                    ; preds = %str_ok256
  %err.haserr.gep273 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec269, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep273, align 8
  %err.err.gep274 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec269, i32 0, i32 7
  store ptr %a.wr.niche217, ptr %err.err.gep274, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal272:                                    ; preds = %str_ok256
  %err.panic.printf275 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code226, i32 %err.msg.len32249, ptr %err.msg.data251, i32 %err.file.len32266, ptr %err.file.data268, i64 %err.line232, i64 %err.col234)
  call void @exit(i32 1)
  unreachable

err.abort276:                                     ; No predecessors!
  br label %choice.exit221
}

define i64 @"dep_graph::pop_stack"(ptr %0) #0 {
entry:
  %var.stk = alloca ptr, align 8
  %var._83 = alloca ptr, align 8
  %var._82 = alloca ptr, align 8
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
  store i64 275, ptr %err.line.gep, align 8
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
  store i64 275, ptr %err.line.gep12, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.72, label %unwrap.abort.72

unwrap.pos.72:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load41 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load41, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

unwrap.abort.72:                                  ; preds = %a.rd.done
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %unwrap.abort.72
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

tag.gen_check:                                    ; preds = %unwrap.abort.72
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data40 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check32:                                  ; preds = %str_ok
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

err.thread:                                       ; preds = %str_ok30
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok30
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data40, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.72
  %var.load42 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load42, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.72
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load43 = load ptr, ptr %var.s_ptr, align 8
  %a.load44 = load ptr, ptr %var.s_ptr, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

a.create46:                                       ; preds = %choice.exit
  %arena.cur48 = call ptr @dva_arena_current()
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = call ptr @dva_arena_current()
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var.s_ptr, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %choice.exit
  %a.load255 = load ptr, ptr %var.s_ptr, align 8
  %var.load56 = load i64, ptr %var.new_sp, align 8
  %a.wr.nonnull = icmp ne ptr %a.load255, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after47
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.wr.len57 = load i64, ptr %a.wr.len, align 8
  %a.wr.lt = icmp slt i64 0, %a.wr.len57
  %a.wr.bounds = and i1 true, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 1
  %a.wr.data58 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data58, i64 0
  store i64 %var.load56, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after47
  %arena.cur59 = call ptr @dva_arena_current()
  %err.alloc60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 56)
  %err.code.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 0
  store i64 4011, ptr %err.code.gep61, align 8
  %err.msg.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep62, align 8
  %err.file.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep63, align 8
  %err.line.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 3
  store i64 0, ptr %err.line.gep64, align 8
  %err.col.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 4
  store i64 0, ptr %err.col.gep65, align 8
  %err.ctx.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 5
  %err.ctx0.gep67 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep66, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep67, align 8
  %err.ctx1.gep68 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep66, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep68, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur69 = call ptr @dva_arena_current()
  %err.alloc70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 56)
  %err.code.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 0
  store i64 4011, ptr %err.code.gep71, align 8
  %err.msg.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep72, align 8
  %err.file.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep73, align 8
  %err.line.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 3
  store i64 0, ptr %err.line.gep74, align 8
  %err.col.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 4
  store i64 0, ptr %err.col.gep75, align 8
  %err.ctx.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 5
  %err.ctx0.gep77 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep76, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep77, align 8
  %err.ctx1.gep78 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep76, i32 0, i32 1
  store i64 %a.wr.len57, ptr %err.ctx1.gep78, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc60, %a.wr.err.null ], [ %err.alloc70, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then79, label %choice.else80

choice.then79:                                    ; preds = %a.wr.done
  br label %choice.exit81

choice.else80:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._82, align 8
  store ptr %a.wr.niche, ptr %var._83, align 8
  %err.code.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code85 = load i64, ptr %err.code.gep84, align 8
  %err.msg.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct87 = load ptr, ptr %err.msg.gep86, align 8
  %err.file.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct89 = load ptr, ptr %err.file.gep88, align 8
  %err.line.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line91 = load i64, ptr %err.line.gep90, align 8
  %err.col.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col93 = load i64, ptr %err.col.gep92, align 8
  %err.msg.len94 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct87, i32 0, i32 0
  %err.msg.len95 = load i64, ptr %err.msg.len94, align 8
  %err.msg.len96 = and i64 %err.msg.len95, 281474976710655
  %str.tag97 = lshr i64 %err.msg.len95, 48
  %tag.immortal99 = icmp eq i64 %str.tag97, 0
  br i1 %tag.immortal99, label %str_ok98, label %tag.gen_check100

choice.exit81:                                    ; preds = %err.abort, %choice.then79
  %var.load135 = load ptr, ptr %var.state, align 8
  %fld.gep136 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load135, i32 0, i32 3
  %fld.load137 = load ptr, ptr %fld.gep136, align 8
  store ptr %fld.load137, ptr %var.stk, align 8
  %var.load138 = load ptr, ptr %var.stk, align 8
  %a.load139 = load ptr, ptr %var.stk, align 8
  %a.null140 = icmp eq ptr %a.load139, null
  br i1 %a.null140, label %a.create141, label %a.after142

str_ok98:                                         ; preds = %abort.dead107, %tag.slow_check101, %tag.gen_check100, %choice.else80
  %err.msg.len32108 = trunc i64 %err.msg.len96 to i32
  %err.msg.data109 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct87, i32 0, i32 1
  %err.msg.data110 = load ptr, ptr %err.msg.data109, align 8
  %err.file.len111 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct89, i32 0, i32 0
  %err.file.len112 = load i64, ptr %err.file.len111, align 8
  %err.file.len113 = and i64 %err.file.len112, 281474976710655
  %str.tag114 = lshr i64 %err.file.len112, 48
  %tag.immortal116 = icmp eq i64 %str.tag114, 0
  br i1 %tag.immortal116, label %str_ok115, label %tag.gen_check117

tag.gen_check100:                                 ; preds = %choice.else80
  %active.gen103 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok104 = icmp eq i64 %str.tag97, %active.gen103
  br i1 %tag.fast.ok104, label %str_ok98, label %tag.slow_check101

tag.slow_check101:                                ; preds = %tag.gen_check100
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag97)
  br i1 %tag.valid106, label %str_ok98, label %tag.stale102

tag.stale102:                                     ; preds = %tag.slow_check101
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %str_ok98

str_ok115:                                        ; preds = %abort.dead124, %tag.slow_check118, %tag.gen_check117, %str_ok98
  %err.file.len32125 = trunc i64 %err.file.len113 to i32
  %err.file.data126 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct89, i32 0, i32 1
  %err.file.data127 = load ptr, ptr %err.file.data126, align 8
  %err.thread.rec128 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread129 = icmp ne ptr %err.thread.rec128, null
  br i1 %err.is.thread129, label %err.thread130, label %err.normal131

tag.gen_check117:                                 ; preds = %str_ok98
  %active.gen120 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok121 = icmp eq i64 %str.tag114, %active.gen120
  br i1 %tag.fast.ok121, label %str_ok115, label %tag.slow_check118

tag.slow_check118:                                ; preds = %tag.gen_check117
  %arena.cur122 = call ptr @dva_arena_current()
  %tag.valid123 = call i1 @dva_arena_validate_tag(ptr %arena.cur122, i64 %str.tag114)
  br i1 %tag.valid123, label %str_ok115, label %tag.stale119

tag.stale119:                                     ; preds = %tag.slow_check118
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead124:                                    ; No predecessors!
  br label %str_ok115

err.thread130:                                    ; preds = %str_ok115
  %err.haserr.gep132 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec128, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep132, align 8
  %err.err.gep133 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec128, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep133, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal131:                                    ; preds = %str_ok115
  %err.panic.printf134 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code85, i32 %err.msg.len32108, ptr %err.msg.data110, i32 %err.file.len32125, ptr %err.file.data127, i64 %err.line91, i64 %err.col93)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit81

a.create141:                                      ; preds = %choice.exit81
  %arena.cur143 = call ptr @dva_arena_current()
  %a.create144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 24)
  %arena.cur145 = call ptr @dva_arena_current()
  %a.buf146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 128)
  %a.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 0
  store i64 0, ptr %a.len.gep147, align 8
  %a.data.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 1
  store ptr %a.buf146, ptr %a.data.gep148, align 8
  %a.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 2
  store i64 16, ptr %a.cap.gep149, align 8
  store ptr %a.create144, ptr %var.stk, align 8
  br label %a.after142

a.after142:                                       ; preds = %a.create141, %choice.exit81
  %a.load2150 = load ptr, ptr %var.stk, align 8
  %var.load151 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull152 = icmp ne ptr %a.load2150, null
  br i1 %a.rd.nonnull152, label %a.rd.check153, label %a.rd.err.null155

a.rd.check153:                                    ; preds = %a.after142
  %a.rd.len158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 0
  %a.rd.len159 = load i64, ptr %a.rd.len158, align 8
  %a.rd.ge0 = icmp sge i64 %var.load151, 0
  %a.rd.lt160 = icmp slt i64 %var.load151, %a.rd.len159
  %a.rd.bounds161 = and i1 %a.rd.ge0, %a.rd.lt160
  br i1 %a.rd.bounds161, label %a.rd.ok154, label %a.rd.err.oob156

a.rd.ok154:                                       ; preds = %a.rd.check153
  %a.rd.data162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 1
  %a.rd.data163 = load ptr, ptr %a.rd.data162, align 8
  %a.rd.elem.gep164 = getelementptr i64, ptr %a.rd.data163, i64 %var.load151
  %a.rd.elem165 = load i64, ptr %a.rd.elem.gep164, align 8
  br label %a.rd.done157

a.rd.err.null155:                                 ; preds = %a.after142
  %arena.cur166 = call ptr @dva_arena_current()
  %err.alloc167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 56)
  %err.code.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 0
  store i64 4011, ptr %err.code.gep168, align 8
  %err.msg.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep169, align 8
  %err.file.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep170, align 8
  %err.line.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 3
  store i64 279, ptr %err.line.gep171, align 8
  %err.col.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 4
  store i64 15, ptr %err.col.gep172, align 8
  %err.ctx.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc167, i32 0, i32 5
  %err.ctx0.gep174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep173, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep174, align 8
  %err.ctx1.gep175 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep173, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep175, align 8
  %err.p2i176 = ptrtoint ptr %err.alloc167 to i64
  br label %a.rd.done157

a.rd.err.oob156:                                  ; preds = %a.rd.check153
  %arena.cur177 = call ptr @dva_arena_current()
  %err.alloc178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 56)
  %err.code.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 0
  store i64 4011, ptr %err.code.gep179, align 8
  %err.msg.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep180, align 8
  %err.file.gep181 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep181, align 8
  %err.line.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 3
  store i64 279, ptr %err.line.gep182, align 8
  %err.col.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 4
  store i64 15, ptr %err.col.gep183, align 8
  %err.ctx.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc178, i32 0, i32 5
  %err.ctx0.gep185 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep184, i32 0, i32 0
  store i64 %var.load151, ptr %err.ctx0.gep185, align 8
  %err.ctx1.gep186 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep184, i32 0, i32 1
  store i64 %a.rd.len159, ptr %err.ctx1.gep186, align 8
  %err.p2i187 = ptrtoint ptr %err.alloc178 to i64
  br label %a.rd.done157

a.rd.done157:                                     ; preds = %a.rd.err.oob156, %a.rd.err.null155, %a.rd.ok154
  %a.rd.tag188 = phi i1 [ true, %a.rd.ok154 ], [ false, %a.rd.err.null155 ], [ false, %a.rd.err.oob156 ]
  %a.rd.pay189 = phi i64 [ %a.rd.elem165, %a.rd.ok154 ], [ %err.p2i176, %a.rd.err.null155 ], [ %err.p2i187, %a.rd.err.oob156 ]
  %ram.tag190 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag188, 0
  %ram.pay191 = insertvalue { i1, i64 } %ram.tag190, i64 %a.rd.pay189, 1
  %unwrap.is_pos192 = extractvalue { i1, i64 } %ram.pay191, 0
  br i1 %unwrap.is_pos192, label %unwrap.pos.73, label %unwrap.abort.73

unwrap.pos.73:                                    ; preds = %a.rd.done157
  %unwrap.pay.pos246 = extractvalue { i1, i64 } %ram.pay191, 1
  ret i64 %unwrap.pay.pos246

unwrap.abort.73:                                  ; preds = %a.rd.done157
  %unwrap.pay.abort193 = extractvalue { i1, i64 } %ram.pay191, 1
  %err.ptr194 = inttoptr i64 %unwrap.pay.abort193 to ptr
  %err.code.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr194, i32 0, i32 0
  %err.code196 = load i64, ptr %err.code.gep195, align 8
  %err.msg.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr194, i32 0, i32 1
  %err.msg.struct198 = load ptr, ptr %err.msg.gep197, align 8
  %err.file.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr194, i32 0, i32 2
  %err.file.struct200 = load ptr, ptr %err.file.gep199, align 8
  %err.line.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr194, i32 0, i32 3
  %err.line202 = load i64, ptr %err.line.gep201, align 8
  %err.col.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr194, i32 0, i32 4
  %err.col204 = load i64, ptr %err.col.gep203, align 8
  %err.msg.len205 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct198, i32 0, i32 0
  %err.msg.len206 = load i64, ptr %err.msg.len205, align 8
  %err.msg.len207 = and i64 %err.msg.len206, 281474976710655
  %str.tag208 = lshr i64 %err.msg.len206, 48
  %tag.immortal210 = icmp eq i64 %str.tag208, 0
  br i1 %tag.immortal210, label %str_ok209, label %tag.gen_check211

str_ok209:                                        ; preds = %abort.dead218, %tag.slow_check212, %tag.gen_check211, %unwrap.abort.73
  %err.msg.len32219 = trunc i64 %err.msg.len207 to i32
  %err.msg.data220 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct198, i32 0, i32 1
  %err.msg.data221 = load ptr, ptr %err.msg.data220, align 8
  %err.file.len222 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct200, i32 0, i32 0
  %err.file.len223 = load i64, ptr %err.file.len222, align 8
  %err.file.len224 = and i64 %err.file.len223, 281474976710655
  %str.tag225 = lshr i64 %err.file.len223, 48
  %tag.immortal227 = icmp eq i64 %str.tag225, 0
  br i1 %tag.immortal227, label %str_ok226, label %tag.gen_check228

tag.gen_check211:                                 ; preds = %unwrap.abort.73
  %active.gen214 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok215 = icmp eq i64 %str.tag208, %active.gen214
  br i1 %tag.fast.ok215, label %str_ok209, label %tag.slow_check212

tag.slow_check212:                                ; preds = %tag.gen_check211
  %arena.cur216 = call ptr @dva_arena_current()
  %tag.valid217 = call i1 @dva_arena_validate_tag(ptr %arena.cur216, i64 %str.tag208)
  br i1 %tag.valid217, label %str_ok209, label %tag.stale213

tag.stale213:                                     ; preds = %tag.slow_check212
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead218:                                    ; No predecessors!
  br label %str_ok209

str_ok226:                                        ; preds = %abort.dead235, %tag.slow_check229, %tag.gen_check228, %str_ok209
  %err.file.len32236 = trunc i64 %err.file.len224 to i32
  %err.file.data237 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct200, i32 0, i32 1
  %err.file.data238 = load ptr, ptr %err.file.data237, align 8
  %err.thread.rec239 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread240 = icmp ne ptr %err.thread.rec239, null
  br i1 %err.is.thread240, label %err.thread241, label %err.normal242

tag.gen_check228:                                 ; preds = %str_ok209
  %active.gen231 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok232 = icmp eq i64 %str.tag225, %active.gen231
  br i1 %tag.fast.ok232, label %str_ok226, label %tag.slow_check229

tag.slow_check229:                                ; preds = %tag.gen_check228
  %arena.cur233 = call ptr @dva_arena_current()
  %tag.valid234 = call i1 @dva_arena_validate_tag(ptr %arena.cur233, i64 %str.tag225)
  br i1 %tag.valid234, label %str_ok226, label %tag.stale230

tag.stale230:                                     ; preds = %tag.slow_check229
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead235:                                    ; No predecessors!
  br label %str_ok226

err.thread241:                                    ; preds = %str_ok226
  %err.haserr.gep243 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec239, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep243, align 8
  %err.err.gep244 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec239, i32 0, i32 7
  store ptr %err.ptr194, ptr %err.err.gep244, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal242:                                    ; preds = %str_ok226
  %err.panic.printf245 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code196, i32 %err.msg.len32219, ptr %err.msg.data221, i32 %err.file.len32236, ptr %err.file.data238, i64 %err.line202, i64 %err.col204)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1632 = alloca ptr, align 8
  %var._1631 = alloca ptr, align 8
  %var._1630 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1481 = alloca i64, align 8
  %var._i1480 = alloca i64, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1211 = alloca ptr, align 8
  %var._1210 = alloca ptr, align 8
  %var._1209 = alloca ptr, align 8
  %var.v_on = alloca i1, align 1
  %var._974 = alloca ptr, align 8
  %var._971 = alloca i1, align 1
  %var._880 = alloca ptr, align 8
  %var._879 = alloca ptr, align 8
  %var._878 = alloca ptr, align 8
  %var.v_idx = alloca i64, align 8
  %var._640 = alloca ptr, align 8
  %var._637 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._571 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._414 = alloca ptr, align 8
  %var._413 = alloca ptr, align 8
  %var._412 = alloca ptr, align 8
  %var._304 = alloca ptr, align 8
  %var._303 = alloca ptr, align 8
  %var._302 = alloca ptr, align 8
  %var._197 = alloca ptr, align 8
  %var._196 = alloca ptr, align 8
  %var._195 = alloca ptr, align 8
  %var._89 = alloca ptr, align 8
  %var._88 = alloca ptr, align 8
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
  store i64 287, ptr %err.line.gep, align 8
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
  store i64 287, ptr %err.line.gep21, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.74, label %unwrap.abort.74

unwrap.pos.74:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.cnt, align 8
  %var.load51 = load ptr, ptr %var.idxs, align 8
  %a.load52 = load ptr, ptr %var.idxs, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

unwrap.abort.74:                                  ; preds = %a.rd.done
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %unwrap.abort.74
  %err.msg.len3235 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data36 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len37 = load i64, ptr %err.file.len, align 8
  %err.file.len38 = and i64 %err.file.len37, 281474976710655
  %str.tag39 = lshr i64 %err.file.len37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  br i1 %tag.immortal41, label %str_ok40, label %tag.gen_check42

tag.gen_check:                                    ; preds = %unwrap.abort.74
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok40:                                         ; preds = %abort.dead49, %tag.slow_check43, %tag.gen_check42, %str_ok
  %err.file.len32 = trunc i64 %err.file.len38 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data50 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check42:                                  ; preds = %str_ok
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok46 = icmp eq i64 %str.tag39, %active.gen45
  br i1 %tag.fast.ok46, label %str_ok40, label %tag.slow_check43

tag.slow_check43:                                 ; preds = %tag.gen_check42
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag39)
  br i1 %tag.valid48, label %str_ok40, label %tag.stale44

tag.stale44:                                      ; preds = %tag.slow_check43
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %str_ok40

err.thread:                                       ; preds = %str_ok40
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok40
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3235, ptr %err.msg.data36, i32 %err.file.len32, ptr %err.file.data50, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create54:                                       ; preds = %unwrap.pos.74
  %arena.cur56 = call ptr @dva_arena_current()
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = call ptr @dva_arena_current()
  %a.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 128)
  %a.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 0
  store i64 0, ptr %a.len.gep60, align 8
  %a.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 1
  store ptr %a.buf59, ptr %a.data.gep61, align 8
  %a.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 2
  store i64 16, ptr %a.cap.gep62, align 8
  store ptr %a.create57, ptr %var.idxs, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %unwrap.pos.74
  %a.load263 = load ptr, ptr %var.idxs, align 8
  %var.load64 = load i64, ptr %var.u, align 8
  %var.load65 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull = icmp ne ptr %a.load263, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after55
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 0
  %a.wr.len66 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load64, 0
  %a.wr.lt = icmp slt i64 %var.load64, %a.wr.len66
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 1
  %a.wr.data67 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data67, i64 %var.load64
  store i64 %var.load65, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after55
  %arena.cur68 = call ptr @dva_arena_current()
  %err.alloc69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 56)
  %err.code.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 0
  store i64 4011, ptr %err.code.gep70, align 8
  %err.msg.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep71, align 8
  %err.file.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep72, align 8
  %err.line.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 3
  store i64 0, ptr %err.line.gep73, align 8
  %err.col.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 4
  store i64 0, ptr %err.col.gep74, align 8
  %err.ctx.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc69, i32 0, i32 5
  %err.ctx0.gep76 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep75, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep76, align 8
  %err.ctx1.gep77 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep75, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep77, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur78 = call ptr @dva_arena_current()
  %err.alloc79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 56)
  %err.code.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 0
  store i64 4011, ptr %err.code.gep80, align 8
  %err.msg.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep81, align 8
  %err.file.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep82, align 8
  %err.line.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 3
  store i64 0, ptr %err.line.gep83, align 8
  %err.col.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 4
  store i64 0, ptr %err.col.gep84, align 8
  %err.ctx.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc79, i32 0, i32 5
  %err.ctx0.gep86 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep85, i32 0, i32 0
  store i64 %var.load64, ptr %err.ctx0.gep86, align 8
  %err.ctx1.gep87 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep85, i32 0, i32 1
  store i64 %a.wr.len66, ptr %err.ctx1.gep87, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc69, %a.wr.err.null ], [ %err.alloc79, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.wr.done
  br label %choice.exit

choice.else:                                      ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._88, align 8
  store ptr %a.wr.niche, ptr %var._89, align 8
  %err.code.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code91 = load i64, ptr %err.code.gep90, align 8
  %err.msg.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct93 = load ptr, ptr %err.msg.gep92, align 8
  %err.file.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct95 = load ptr, ptr %err.file.gep94, align 8
  %err.line.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line97 = load i64, ptr %err.line.gep96, align 8
  %err.col.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col99 = load i64, ptr %err.col.gep98, align 8
  %err.msg.len100 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct93, i32 0, i32 0
  %err.msg.len101 = load i64, ptr %err.msg.len100, align 8
  %err.msg.len102 = and i64 %err.msg.len101, 281474976710655
  %str.tag103 = lshr i64 %err.msg.len101, 48
  %tag.immortal105 = icmp eq i64 %str.tag103, 0
  br i1 %tag.immortal105, label %str_ok104, label %tag.gen_check106

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load141 = load ptr, ptr %var.lows, align 8
  %a.load142 = load ptr, ptr %var.lows, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

str_ok104:                                        ; preds = %abort.dead113, %tag.slow_check107, %tag.gen_check106, %choice.else
  %err.msg.len32114 = trunc i64 %err.msg.len102 to i32
  %err.msg.data115 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct93, i32 0, i32 1
  %err.msg.data116 = load ptr, ptr %err.msg.data115, align 8
  %err.file.len117 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct95, i32 0, i32 0
  %err.file.len118 = load i64, ptr %err.file.len117, align 8
  %err.file.len119 = and i64 %err.file.len118, 281474976710655
  %str.tag120 = lshr i64 %err.file.len118, 48
  %tag.immortal122 = icmp eq i64 %str.tag120, 0
  br i1 %tag.immortal122, label %str_ok121, label %tag.gen_check123

tag.gen_check106:                                 ; preds = %choice.else
  %active.gen109 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok110 = icmp eq i64 %str.tag103, %active.gen109
  br i1 %tag.fast.ok110, label %str_ok104, label %tag.slow_check107

tag.slow_check107:                                ; preds = %tag.gen_check106
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag103)
  br i1 %tag.valid112, label %str_ok104, label %tag.stale108

tag.stale108:                                     ; preds = %tag.slow_check107
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %str_ok104

str_ok121:                                        ; preds = %abort.dead130, %tag.slow_check124, %tag.gen_check123, %str_ok104
  %err.file.len32131 = trunc i64 %err.file.len119 to i32
  %err.file.data132 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct95, i32 0, i32 1
  %err.file.data133 = load ptr, ptr %err.file.data132, align 8
  %err.thread.rec134 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread135 = icmp ne ptr %err.thread.rec134, null
  br i1 %err.is.thread135, label %err.thread136, label %err.normal137

tag.gen_check123:                                 ; preds = %str_ok104
  %active.gen126 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok127 = icmp eq i64 %str.tag120, %active.gen126
  br i1 %tag.fast.ok127, label %str_ok121, label %tag.slow_check124

tag.slow_check124:                                ; preds = %tag.gen_check123
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag120)
  br i1 %tag.valid129, label %str_ok121, label %tag.stale125

tag.stale125:                                     ; preds = %tag.slow_check124
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead130:                                    ; No predecessors!
  br label %str_ok121

err.thread136:                                    ; preds = %str_ok121
  %err.haserr.gep138 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec134, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep138, align 8
  %err.err.gep139 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec134, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep139, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal137:                                    ; preds = %str_ok121
  %err.panic.printf140 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code91, i32 %err.msg.len32114, ptr %err.msg.data116, i32 %err.file.len32131, ptr %err.file.data133, i64 %err.line97, i64 %err.col99)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create144:                                      ; preds = %choice.exit
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
  store ptr %a.create147, ptr %var.lows, align 8
  br label %a.after145

a.after145:                                       ; preds = %a.create144, %choice.exit
  %a.load2153 = load ptr, ptr %var.lows, align 8
  %var.load154 = load i64, ptr %var.u, align 8
  %var.load155 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull156 = icmp ne ptr %a.load2153, null
  br i1 %a.wr.nonnull156, label %a.wr.check157, label %a.wr.err.null159

a.wr.check157:                                    ; preds = %a.after145
  %a.wr.len162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2153, i32 0, i32 0
  %a.wr.len163 = load i64, ptr %a.wr.len162, align 8
  %a.wr.ge0164 = icmp sge i64 %var.load154, 0
  %a.wr.lt165 = icmp slt i64 %var.load154, %a.wr.len163
  %a.wr.bounds166 = and i1 %a.wr.ge0164, %a.wr.lt165
  br i1 %a.wr.bounds166, label %a.wr.ok158, label %a.wr.err.oob160

a.wr.ok158:                                       ; preds = %a.wr.check157
  %a.wr.data167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2153, i32 0, i32 1
  %a.wr.data168 = load ptr, ptr %a.wr.data167, align 8
  %a.elem.gep169 = getelementptr i64, ptr %a.wr.data168, i64 %var.load154
  store i64 %var.load155, ptr %a.elem.gep169, align 8
  br label %a.wr.done161

a.wr.err.null159:                                 ; preds = %a.after145
  %arena.cur170 = call ptr @dva_arena_current()
  %err.alloc171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 56)
  %err.code.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 0
  store i64 4011, ptr %err.code.gep172, align 8
  %err.msg.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep173, align 8
  %err.file.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep174, align 8
  %err.line.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 3
  store i64 0, ptr %err.line.gep175, align 8
  %err.col.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 4
  store i64 0, ptr %err.col.gep176, align 8
  %err.ctx.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc171, i32 0, i32 5
  %err.ctx0.gep178 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep177, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep178, align 8
  %err.ctx1.gep179 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep177, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep179, align 8
  br label %a.wr.done161

a.wr.err.oob160:                                  ; preds = %a.wr.check157
  %arena.cur180 = call ptr @dva_arena_current()
  %err.alloc181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 56)
  %err.code.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 0
  store i64 4011, ptr %err.code.gep182, align 8
  %err.msg.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep183, align 8
  %err.file.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep184, align 8
  %err.line.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 3
  store i64 0, ptr %err.line.gep185, align 8
  %err.col.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 4
  store i64 0, ptr %err.col.gep186, align 8
  %err.ctx.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 5
  %err.ctx0.gep188 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep187, i32 0, i32 0
  store i64 %var.load154, ptr %err.ctx0.gep188, align 8
  %err.ctx1.gep189 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep187, i32 0, i32 1
  store i64 %a.wr.len163, ptr %err.ctx1.gep189, align 8
  br label %a.wr.done161

a.wr.done161:                                     ; preds = %a.wr.err.oob160, %a.wr.err.null159, %a.wr.ok158
  %a.wr.niche190 = phi ptr [ null, %a.wr.ok158 ], [ %err.alloc171, %a.wr.err.null159 ], [ %err.alloc181, %a.wr.err.oob160 ]
  %niche.eq.null191 = icmp eq ptr %a.wr.niche190, null
  br i1 %niche.eq.null191, label %choice.then192, label %choice.else193

choice.then192:                                   ; preds = %a.wr.done161
  br label %choice.exit194

choice.else193:                                   ; preds = %a.wr.done161
  store ptr %a.wr.niche190, ptr %var._195, align 8
  store ptr %a.wr.niche190, ptr %var._196, align 8
  store ptr %a.wr.niche190, ptr %var._197, align 8
  %err.code.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche190, i32 0, i32 0
  %err.code199 = load i64, ptr %err.code.gep198, align 8
  %err.msg.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche190, i32 0, i32 1
  %err.msg.struct201 = load ptr, ptr %err.msg.gep200, align 8
  %err.file.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche190, i32 0, i32 2
  %err.file.struct203 = load ptr, ptr %err.file.gep202, align 8
  %err.line.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche190, i32 0, i32 3
  %err.line205 = load i64, ptr %err.line.gep204, align 8
  %err.col.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche190, i32 0, i32 4
  %err.col207 = load i64, ptr %err.col.gep206, align 8
  %err.msg.len208 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct201, i32 0, i32 0
  %err.msg.len209 = load i64, ptr %err.msg.len208, align 8
  %err.msg.len210 = and i64 %err.msg.len209, 281474976710655
  %str.tag211 = lshr i64 %err.msg.len209, 48
  %tag.immortal213 = icmp eq i64 %str.tag211, 0
  br i1 %tag.immortal213, label %str_ok212, label %tag.gen_check214

choice.exit194:                                   ; preds = %err.abort249, %choice.then192
  %var.load250 = load ptr, ptr %var.s_cnt, align 8
  %a.load251 = load ptr, ptr %var.s_cnt, align 8
  %a.null252 = icmp eq ptr %a.load251, null
  br i1 %a.null252, label %a.create253, label %a.after254

str_ok212:                                        ; preds = %abort.dead221, %tag.slow_check215, %tag.gen_check214, %choice.else193
  %err.msg.len32222 = trunc i64 %err.msg.len210 to i32
  %err.msg.data223 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct201, i32 0, i32 1
  %err.msg.data224 = load ptr, ptr %err.msg.data223, align 8
  %err.file.len225 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct203, i32 0, i32 0
  %err.file.len226 = load i64, ptr %err.file.len225, align 8
  %err.file.len227 = and i64 %err.file.len226, 281474976710655
  %str.tag228 = lshr i64 %err.file.len226, 48
  %tag.immortal230 = icmp eq i64 %str.tag228, 0
  br i1 %tag.immortal230, label %str_ok229, label %tag.gen_check231

tag.gen_check214:                                 ; preds = %choice.else193
  %active.gen217 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok218 = icmp eq i64 %str.tag211, %active.gen217
  br i1 %tag.fast.ok218, label %str_ok212, label %tag.slow_check215

tag.slow_check215:                                ; preds = %tag.gen_check214
  %arena.cur219 = call ptr @dva_arena_current()
  %tag.valid220 = call i1 @dva_arena_validate_tag(ptr %arena.cur219, i64 %str.tag211)
  br i1 %tag.valid220, label %str_ok212, label %tag.stale216

tag.stale216:                                     ; preds = %tag.slow_check215
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead221:                                    ; No predecessors!
  br label %str_ok212

str_ok229:                                        ; preds = %abort.dead238, %tag.slow_check232, %tag.gen_check231, %str_ok212
  %err.file.len32239 = trunc i64 %err.file.len227 to i32
  %err.file.data240 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct203, i32 0, i32 1
  %err.file.data241 = load ptr, ptr %err.file.data240, align 8
  %err.thread.rec242 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread243 = icmp ne ptr %err.thread.rec242, null
  br i1 %err.is.thread243, label %err.thread244, label %err.normal245

tag.gen_check231:                                 ; preds = %str_ok212
  %active.gen234 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok235 = icmp eq i64 %str.tag228, %active.gen234
  br i1 %tag.fast.ok235, label %str_ok229, label %tag.slow_check232

tag.slow_check232:                                ; preds = %tag.gen_check231
  %arena.cur236 = call ptr @dva_arena_current()
  %tag.valid237 = call i1 @dva_arena_validate_tag(ptr %arena.cur236, i64 %str.tag228)
  br i1 %tag.valid237, label %str_ok229, label %tag.stale233

tag.stale233:                                     ; preds = %tag.slow_check232
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead238:                                    ; No predecessors!
  br label %str_ok229

err.thread244:                                    ; preds = %str_ok229
  %err.haserr.gep246 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec242, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep246, align 8
  %err.err.gep247 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec242, i32 0, i32 7
  store ptr %a.wr.niche190, ptr %err.err.gep247, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal245:                                    ; preds = %str_ok229
  %err.panic.printf248 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code199, i32 %err.msg.len32222, ptr %err.msg.data224, i32 %err.file.len32239, ptr %err.file.data241, i64 %err.line205, i64 %err.col207)
  call void @exit(i32 1)
  unreachable

err.abort249:                                     ; No predecessors!
  br label %choice.exit194

a.create253:                                      ; preds = %choice.exit194
  %arena.cur255 = call ptr @dva_arena_current()
  %a.create256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 24)
  %arena.cur257 = call ptr @dva_arena_current()
  %a.buf258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 128)
  %a.len.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 0
  store i64 0, ptr %a.len.gep259, align 8
  %a.data.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 1
  store ptr %a.buf258, ptr %a.data.gep260, align 8
  %a.cap.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create256, i32 0, i32 2
  store i64 16, ptr %a.cap.gep261, align 8
  store ptr %a.create256, ptr %var.s_cnt, align 8
  br label %a.after254

a.after254:                                       ; preds = %a.create253, %choice.exit194
  %a.load2262 = load ptr, ptr %var.s_cnt, align 8
  %var.load263 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load263, 1
  %a.wr.nonnull264 = icmp ne ptr %a.load2262, null
  br i1 %a.wr.nonnull264, label %a.wr.check265, label %a.wr.err.null267

a.wr.check265:                                    ; preds = %a.after254
  %a.wr.len270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2262, i32 0, i32 0
  %a.wr.len271 = load i64, ptr %a.wr.len270, align 8
  %a.wr.lt272 = icmp slt i64 0, %a.wr.len271
  %a.wr.bounds273 = and i1 true, %a.wr.lt272
  br i1 %a.wr.bounds273, label %a.wr.ok266, label %a.wr.err.oob268

a.wr.ok266:                                       ; preds = %a.wr.check265
  %a.wr.data274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2262, i32 0, i32 1
  %a.wr.data275 = load ptr, ptr %a.wr.data274, align 8
  %a.elem.gep276 = getelementptr i64, ptr %a.wr.data275, i64 0
  store i64 %addtmp, ptr %a.elem.gep276, align 8
  br label %a.wr.done269

a.wr.err.null267:                                 ; preds = %a.after254
  %arena.cur277 = call ptr @dva_arena_current()
  %err.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 56)
  %err.code.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 0
  store i64 4011, ptr %err.code.gep279, align 8
  %err.msg.gep280 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep280, align 8
  %err.file.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep281, align 8
  %err.line.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 3
  store i64 0, ptr %err.line.gep282, align 8
  %err.col.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 4
  store i64 0, ptr %err.col.gep283, align 8
  %err.ctx.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 5
  %err.ctx0.gep285 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep284, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep285, align 8
  %err.ctx1.gep286 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep284, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep286, align 8
  br label %a.wr.done269

a.wr.err.oob268:                                  ; preds = %a.wr.check265
  %arena.cur287 = call ptr @dva_arena_current()
  %err.alloc288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 56)
  %err.code.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 0
  store i64 4011, ptr %err.code.gep289, align 8
  %err.msg.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep290, align 8
  %err.file.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep291, align 8
  %err.line.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 3
  store i64 0, ptr %err.line.gep292, align 8
  %err.col.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 4
  store i64 0, ptr %err.col.gep293, align 8
  %err.ctx.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc288, i32 0, i32 5
  %err.ctx0.gep295 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep294, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep295, align 8
  %err.ctx1.gep296 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep294, i32 0, i32 1
  store i64 %a.wr.len271, ptr %err.ctx1.gep296, align 8
  br label %a.wr.done269

a.wr.done269:                                     ; preds = %a.wr.err.oob268, %a.wr.err.null267, %a.wr.ok266
  %a.wr.niche297 = phi ptr [ null, %a.wr.ok266 ], [ %err.alloc278, %a.wr.err.null267 ], [ %err.alloc288, %a.wr.err.oob268 ]
  %niche.eq.null298 = icmp eq ptr %a.wr.niche297, null
  br i1 %niche.eq.null298, label %choice.then299, label %choice.else300

choice.then299:                                   ; preds = %a.wr.done269
  br label %choice.exit301

choice.else300:                                   ; preds = %a.wr.done269
  store ptr %a.wr.niche297, ptr %var._302, align 8
  store ptr %a.wr.niche297, ptr %var._303, align 8
  store ptr %a.wr.niche297, ptr %var._304, align 8
  %err.code.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche297, i32 0, i32 0
  %err.code306 = load i64, ptr %err.code.gep305, align 8
  %err.msg.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche297, i32 0, i32 1
  %err.msg.struct308 = load ptr, ptr %err.msg.gep307, align 8
  %err.file.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche297, i32 0, i32 2
  %err.file.struct310 = load ptr, ptr %err.file.gep309, align 8
  %err.line.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche297, i32 0, i32 3
  %err.line312 = load i64, ptr %err.line.gep311, align 8
  %err.col.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche297, i32 0, i32 4
  %err.col314 = load i64, ptr %err.col.gep313, align 8
  %err.msg.len315 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct308, i32 0, i32 0
  %err.msg.len316 = load i64, ptr %err.msg.len315, align 8
  %err.msg.len317 = and i64 %err.msg.len316, 281474976710655
  %str.tag318 = lshr i64 %err.msg.len316, 48
  %tag.immortal320 = icmp eq i64 %str.tag318, 0
  br i1 %tag.immortal320, label %str_ok319, label %tag.gen_check321

choice.exit301:                                   ; preds = %err.abort356, %choice.then299
  %var.load357 = load ptr, ptr %var.state, align 8
  %var.load358 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load357, i64 %var.load358)
  %var.load359 = load ptr, ptr %var.ons, align 8
  %a.load360 = load ptr, ptr %var.ons, align 8
  %a.null361 = icmp eq ptr %a.load360, null
  br i1 %a.null361, label %a.create362, label %a.after363

str_ok319:                                        ; preds = %abort.dead328, %tag.slow_check322, %tag.gen_check321, %choice.else300
  %err.msg.len32329 = trunc i64 %err.msg.len317 to i32
  %err.msg.data330 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct308, i32 0, i32 1
  %err.msg.data331 = load ptr, ptr %err.msg.data330, align 8
  %err.file.len332 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct310, i32 0, i32 0
  %err.file.len333 = load i64, ptr %err.file.len332, align 8
  %err.file.len334 = and i64 %err.file.len333, 281474976710655
  %str.tag335 = lshr i64 %err.file.len333, 48
  %tag.immortal337 = icmp eq i64 %str.tag335, 0
  br i1 %tag.immortal337, label %str_ok336, label %tag.gen_check338

tag.gen_check321:                                 ; preds = %choice.else300
  %active.gen324 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok325 = icmp eq i64 %str.tag318, %active.gen324
  br i1 %tag.fast.ok325, label %str_ok319, label %tag.slow_check322

tag.slow_check322:                                ; preds = %tag.gen_check321
  %arena.cur326 = call ptr @dva_arena_current()
  %tag.valid327 = call i1 @dva_arena_validate_tag(ptr %arena.cur326, i64 %str.tag318)
  br i1 %tag.valid327, label %str_ok319, label %tag.stale323

tag.stale323:                                     ; preds = %tag.slow_check322
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead328:                                    ; No predecessors!
  br label %str_ok319

str_ok336:                                        ; preds = %abort.dead345, %tag.slow_check339, %tag.gen_check338, %str_ok319
  %err.file.len32346 = trunc i64 %err.file.len334 to i32
  %err.file.data347 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct310, i32 0, i32 1
  %err.file.data348 = load ptr, ptr %err.file.data347, align 8
  %err.thread.rec349 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread350 = icmp ne ptr %err.thread.rec349, null
  br i1 %err.is.thread350, label %err.thread351, label %err.normal352

tag.gen_check338:                                 ; preds = %str_ok319
  %active.gen341 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok342 = icmp eq i64 %str.tag335, %active.gen341
  br i1 %tag.fast.ok342, label %str_ok336, label %tag.slow_check339

tag.slow_check339:                                ; preds = %tag.gen_check338
  %arena.cur343 = call ptr @dva_arena_current()
  %tag.valid344 = call i1 @dva_arena_validate_tag(ptr %arena.cur343, i64 %str.tag335)
  br i1 %tag.valid344, label %str_ok336, label %tag.stale340

tag.stale340:                                     ; preds = %tag.slow_check339
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead345:                                    ; No predecessors!
  br label %str_ok336

err.thread351:                                    ; preds = %str_ok336
  %err.haserr.gep353 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec349, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep353, align 8
  %err.err.gep354 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec349, i32 0, i32 7
  store ptr %a.wr.niche297, ptr %err.err.gep354, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal352:                                    ; preds = %str_ok336
  %err.panic.printf355 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code306, i32 %err.msg.len32329, ptr %err.msg.data331, i32 %err.file.len32346, ptr %err.file.data348, i64 %err.line312, i64 %err.col314)
  call void @exit(i32 1)
  unreachable

err.abort356:                                     ; No predecessors!
  br label %choice.exit301

a.create362:                                      ; preds = %choice.exit301
  %arena.cur364 = call ptr @dva_arena_current()
  %a.create365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 24)
  %arena.cur366 = call ptr @dva_arena_current()
  %a.buf367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 128)
  %a.len.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 0
  store i64 0, ptr %a.len.gep368, align 8
  %a.data.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 1
  store ptr %a.buf367, ptr %a.data.gep369, align 8
  %a.cap.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create365, i32 0, i32 2
  store i64 16, ptr %a.cap.gep370, align 8
  store ptr %a.create365, ptr %var.ons, align 8
  br label %a.after363

a.after363:                                       ; preds = %a.create362, %choice.exit301
  %a.load2371 = load ptr, ptr %var.ons, align 8
  %var.load372 = load i64, ptr %var.u, align 8
  %a.wr.nonnull373 = icmp ne ptr %a.load2371, null
  br i1 %a.wr.nonnull373, label %a.wr.check374, label %a.wr.err.null376

a.wr.check374:                                    ; preds = %a.after363
  %a.wr.len379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 0
  %a.wr.len380 = load i64, ptr %a.wr.len379, align 8
  %a.wr.ge0381 = icmp sge i64 %var.load372, 0
  %a.wr.lt382 = icmp slt i64 %var.load372, %a.wr.len380
  %a.wr.bounds383 = and i1 %a.wr.ge0381, %a.wr.lt382
  br i1 %a.wr.bounds383, label %a.wr.ok375, label %a.wr.err.oob377

a.wr.ok375:                                       ; preds = %a.wr.check374
  %a.wr.data384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2371, i32 0, i32 1
  %a.wr.data385 = load ptr, ptr %a.wr.data384, align 8
  %a.elem.gep386 = getelementptr i64, ptr %a.wr.data385, i64 %var.load372
  store i64 1, ptr %a.elem.gep386, align 8
  br label %a.wr.done378

a.wr.err.null376:                                 ; preds = %a.after363
  %arena.cur387 = call ptr @dva_arena_current()
  %err.alloc388 = call ptr @dva_arena_alloc(ptr %arena.cur387, i64 56)
  %err.code.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 0
  store i64 4011, ptr %err.code.gep389, align 8
  %err.msg.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep390, align 8
  %err.file.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep391, align 8
  %err.line.gep392 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 3
  store i64 0, ptr %err.line.gep392, align 8
  %err.col.gep393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 4
  store i64 0, ptr %err.col.gep393, align 8
  %err.ctx.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc388, i32 0, i32 5
  %err.ctx0.gep395 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep394, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep395, align 8
  %err.ctx1.gep396 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep394, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep396, align 8
  br label %a.wr.done378

a.wr.err.oob377:                                  ; preds = %a.wr.check374
  %arena.cur397 = call ptr @dva_arena_current()
  %err.alloc398 = call ptr @dva_arena_alloc(ptr %arena.cur397, i64 56)
  %err.code.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 0
  store i64 4011, ptr %err.code.gep399, align 8
  %err.msg.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep400, align 8
  %err.file.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep401, align 8
  %err.line.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 3
  store i64 0, ptr %err.line.gep402, align 8
  %err.col.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 4
  store i64 0, ptr %err.col.gep403, align 8
  %err.ctx.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc398, i32 0, i32 5
  %err.ctx0.gep405 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep404, i32 0, i32 0
  store i64 %var.load372, ptr %err.ctx0.gep405, align 8
  %err.ctx1.gep406 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep404, i32 0, i32 1
  store i64 %a.wr.len380, ptr %err.ctx1.gep406, align 8
  br label %a.wr.done378

a.wr.done378:                                     ; preds = %a.wr.err.oob377, %a.wr.err.null376, %a.wr.ok375
  %a.wr.niche407 = phi ptr [ null, %a.wr.ok375 ], [ %err.alloc388, %a.wr.err.null376 ], [ %err.alloc398, %a.wr.err.oob377 ]
  %niche.eq.null408 = icmp eq ptr %a.wr.niche407, null
  br i1 %niche.eq.null408, label %choice.then409, label %choice.else410

choice.then409:                                   ; preds = %a.wr.done378
  br label %choice.exit411

choice.else410:                                   ; preds = %a.wr.done378
  store ptr %a.wr.niche407, ptr %var._412, align 8
  store ptr %a.wr.niche407, ptr %var._413, align 8
  store ptr %a.wr.niche407, ptr %var._414, align 8
  %err.code.gep415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche407, i32 0, i32 0
  %err.code416 = load i64, ptr %err.code.gep415, align 8
  %err.msg.gep417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche407, i32 0, i32 1
  %err.msg.struct418 = load ptr, ptr %err.msg.gep417, align 8
  %err.file.gep419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche407, i32 0, i32 2
  %err.file.struct420 = load ptr, ptr %err.file.gep419, align 8
  %err.line.gep421 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche407, i32 0, i32 3
  %err.line422 = load i64, ptr %err.line.gep421, align 8
  %err.col.gep423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche407, i32 0, i32 4
  %err.col424 = load i64, ptr %err.col.gep423, align 8
  %err.msg.len425 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct418, i32 0, i32 0
  %err.msg.len426 = load i64, ptr %err.msg.len425, align 8
  %err.msg.len427 = and i64 %err.msg.len426, 281474976710655
  %str.tag428 = lshr i64 %err.msg.len426, 48
  %tag.immortal430 = icmp eq i64 %str.tag428, 0
  br i1 %tag.immortal430, label %str_ok429, label %tag.gen_check431

choice.exit411:                                   ; preds = %err.abort466, %choice.then409
  %var.load467 = load ptr, ptr %var.graph, align 8
  %fld.gep468 = getelementptr inbounds { ptr, ptr }, ptr %var.load467, i32 0, i32 0
  %fld.load469 = load ptr, ptr %fld.gep468, align 8
  %var.load470 = load i64, ptr %var.u, align 8
  %a.rd.nonnull471 = icmp ne ptr %fld.load469, null
  br i1 %a.rd.nonnull471, label %a.rd.check472, label %a.rd.err.null474

str_ok429:                                        ; preds = %abort.dead438, %tag.slow_check432, %tag.gen_check431, %choice.else410
  %err.msg.len32439 = trunc i64 %err.msg.len427 to i32
  %err.msg.data440 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct418, i32 0, i32 1
  %err.msg.data441 = load ptr, ptr %err.msg.data440, align 8
  %err.file.len442 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct420, i32 0, i32 0
  %err.file.len443 = load i64, ptr %err.file.len442, align 8
  %err.file.len444 = and i64 %err.file.len443, 281474976710655
  %str.tag445 = lshr i64 %err.file.len443, 48
  %tag.immortal447 = icmp eq i64 %str.tag445, 0
  br i1 %tag.immortal447, label %str_ok446, label %tag.gen_check448

tag.gen_check431:                                 ; preds = %choice.else410
  %active.gen434 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok435 = icmp eq i64 %str.tag428, %active.gen434
  br i1 %tag.fast.ok435, label %str_ok429, label %tag.slow_check432

tag.slow_check432:                                ; preds = %tag.gen_check431
  %arena.cur436 = call ptr @dva_arena_current()
  %tag.valid437 = call i1 @dva_arena_validate_tag(ptr %arena.cur436, i64 %str.tag428)
  br i1 %tag.valid437, label %str_ok429, label %tag.stale433

tag.stale433:                                     ; preds = %tag.slow_check432
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead438:                                    ; No predecessors!
  br label %str_ok429

str_ok446:                                        ; preds = %abort.dead455, %tag.slow_check449, %tag.gen_check448, %str_ok429
  %err.file.len32456 = trunc i64 %err.file.len444 to i32
  %err.file.data457 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct420, i32 0, i32 1
  %err.file.data458 = load ptr, ptr %err.file.data457, align 8
  %err.thread.rec459 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread460 = icmp ne ptr %err.thread.rec459, null
  br i1 %err.is.thread460, label %err.thread461, label %err.normal462

tag.gen_check448:                                 ; preds = %str_ok429
  %active.gen451 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok452 = icmp eq i64 %str.tag445, %active.gen451
  br i1 %tag.fast.ok452, label %str_ok446, label %tag.slow_check449

tag.slow_check449:                                ; preds = %tag.gen_check448
  %arena.cur453 = call ptr @dva_arena_current()
  %tag.valid454 = call i1 @dva_arena_validate_tag(ptr %arena.cur453, i64 %str.tag445)
  br i1 %tag.valid454, label %str_ok446, label %tag.stale450

tag.stale450:                                     ; preds = %tag.slow_check449
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead455:                                    ; No predecessors!
  br label %str_ok446

err.thread461:                                    ; preds = %str_ok446
  %err.haserr.gep463 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep463, align 8
  %err.err.gep464 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec459, i32 0, i32 7
  store ptr %a.wr.niche407, ptr %err.err.gep464, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal462:                                    ; preds = %str_ok446
  %err.panic.printf465 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code416, i32 %err.msg.len32439, ptr %err.msg.data441, i32 %err.file.len32456, ptr %err.file.data458, i64 %err.line422, i64 %err.col424)
  call void @exit(i32 1)
  unreachable

err.abort466:                                     ; No predecessors!
  br label %choice.exit411

a.rd.check472:                                    ; preds = %choice.exit411
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

a.rd.err.null474:                                 ; preds = %choice.exit411
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
  br i1 %unwrap.is_pos511, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done476
  %unwrap.pay.pos565 = extractvalue { i1, i64 } %ram.pay510, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos565 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load566 = load ptr, ptr %var.u_node, align 8
  %fld.gep567 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load566, i32 0, i32 1
  %fld.load568 = load ptr, ptr %fld.gep567, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load568, i32 0, i32 0
  %arr.cycle.len569 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load568, i32 0, i32 1
  %arr.cycle.data570 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

unwrap.abort.75:                                  ; preds = %a.rd.done476
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
  %tag.immortal529 = icmp eq i64 %str.tag527, 0
  br i1 %tag.immortal529, label %str_ok528, label %tag.gen_check530

str_ok528:                                        ; preds = %abort.dead537, %tag.slow_check531, %tag.gen_check530, %unwrap.abort.75
  %err.msg.len32538 = trunc i64 %err.msg.len526 to i32
  %err.msg.data539 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct517, i32 0, i32 1
  %err.msg.data540 = load ptr, ptr %err.msg.data539, align 8
  %err.file.len541 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct519, i32 0, i32 0
  %err.file.len542 = load i64, ptr %err.file.len541, align 8
  %err.file.len543 = and i64 %err.file.len542, 281474976710655
  %str.tag544 = lshr i64 %err.file.len542, 48
  %tag.immortal546 = icmp eq i64 %str.tag544, 0
  br i1 %tag.immortal546, label %str_ok545, label %tag.gen_check547

tag.gen_check530:                                 ; preds = %unwrap.abort.75
  %active.gen533 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok534 = icmp eq i64 %str.tag527, %active.gen533
  br i1 %tag.fast.ok534, label %str_ok528, label %tag.slow_check531

tag.slow_check531:                                ; preds = %tag.gen_check530
  %arena.cur535 = call ptr @dva_arena_current()
  %tag.valid536 = call i1 @dva_arena_validate_tag(ptr %arena.cur535, i64 %str.tag527)
  br i1 %tag.valid536, label %str_ok528, label %tag.stale532

tag.stale532:                                     ; preds = %tag.slow_check531
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead537:                                    ; No predecessors!
  br label %str_ok528

str_ok545:                                        ; preds = %abort.dead554, %tag.slow_check548, %tag.gen_check547, %str_ok528
  %err.file.len32555 = trunc i64 %err.file.len543 to i32
  %err.file.data556 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct519, i32 0, i32 1
  %err.file.data557 = load ptr, ptr %err.file.data556, align 8
  %err.thread.rec558 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread559 = icmp ne ptr %err.thread.rec558, null
  br i1 %err.is.thread559, label %err.thread560, label %err.normal561

tag.gen_check547:                                 ; preds = %str_ok528
  %active.gen550 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok551 = icmp eq i64 %str.tag544, %active.gen550
  br i1 %tag.fast.ok551, label %str_ok545, label %tag.slow_check548

tag.slow_check548:                                ; preds = %tag.gen_check547
  %arena.cur552 = call ptr @dva_arena_current()
  %tag.valid553 = call i1 @dva_arena_validate_tag(ptr %arena.cur552, i64 %str.tag544)
  br i1 %tag.valid553, label %str_ok545, label %tag.stale549

tag.stale549:                                     ; preds = %tag.slow_check548
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead554:                                    ; No predecessors!
  br label %str_ok545

err.thread560:                                    ; preds = %str_ok545
  %err.haserr.gep562 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec558, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep562, align 8
  %err.err.gep563 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec558, i32 0, i32 7
  store ptr %err.ptr513, ptr %err.err.gep563, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal561:                                    ; preds = %str_ok545
  %err.panic.printf564 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code515, i32 %err.msg.len32538, ptr %err.msg.data540, i32 %err.file.len32555, ptr %err.file.data557, i64 %err.line521, i64 %err.col523)
  call void @exit(i32 1)
  unreachable

loop.header.76:                                   ; preds = %loop.latch.76, %unwrap.pos.75
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len569
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data570, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._571, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  %var.load572 = load ptr, ptr %var.graph, align 8
  %var.load573 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load572, ptr %var.load573)
  store i64 %call.res, ptr %var.v, align 8
  %var.load574 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load574, 0
  br i1 %cmptmp, label %choice.then575, label %choice.exit576

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit576
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %loop.exit.nat.76
  %var.load1242 = load ptr, ptr %var.lows, align 8
  %a.load1243 = load ptr, ptr %var.lows, align 8
  %a.null1244 = icmp eq ptr %a.load1243, null
  br i1 %a.null1244, label %a.create1245, label %a.after1246

choice.then575:                                   ; preds = %loop.body.76
  %var.load577 = load ptr, ptr %var.idxs, align 8
  %a.load578 = load ptr, ptr %var.idxs, align 8
  %a.null579 = icmp eq ptr %a.load578, null
  br i1 %a.null579, label %a.create580, label %a.after581

choice.exit576:                                   ; preds = %choice.exit645, %loop.body.76
  br label %loop.latch.76

a.create580:                                      ; preds = %choice.then575
  %arena.cur582 = call ptr @dva_arena_current()
  %a.create583 = call ptr @dva_arena_alloc(ptr %arena.cur582, i64 24)
  %arena.cur584 = call ptr @dva_arena_current()
  %a.buf585 = call ptr @dva_arena_alloc(ptr %arena.cur584, i64 128)
  %a.len.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create583, i32 0, i32 0
  store i64 0, ptr %a.len.gep586, align 8
  %a.data.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create583, i32 0, i32 1
  store ptr %a.buf585, ptr %a.data.gep587, align 8
  %a.cap.gep588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create583, i32 0, i32 2
  store i64 16, ptr %a.cap.gep588, align 8
  store ptr %a.create583, ptr %var.idxs, align 8
  br label %a.after581

a.after581:                                       ; preds = %a.create580, %choice.then575
  %a.load2589 = load ptr, ptr %var.idxs, align 8
  %var.load590 = load i64, ptr %var.v, align 8
  %a.rd.nonnull591 = icmp ne ptr %a.load2589, null
  br i1 %a.rd.nonnull591, label %a.rd.check592, label %a.rd.err.null594

a.rd.check592:                                    ; preds = %a.after581
  %a.rd.len597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2589, i32 0, i32 0
  %a.rd.len598 = load i64, ptr %a.rd.len597, align 8
  %a.rd.ge0599 = icmp sge i64 %var.load590, 0
  %a.rd.lt600 = icmp slt i64 %var.load590, %a.rd.len598
  %a.rd.bounds601 = and i1 %a.rd.ge0599, %a.rd.lt600
  br i1 %a.rd.bounds601, label %a.rd.ok593, label %a.rd.err.oob595

a.rd.ok593:                                       ; preds = %a.rd.check592
  %a.rd.data602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2589, i32 0, i32 1
  %a.rd.data603 = load ptr, ptr %a.rd.data602, align 8
  %a.rd.elem.gep604 = getelementptr i64, ptr %a.rd.data603, i64 %var.load590
  %a.rd.elem605 = load i64, ptr %a.rd.elem.gep604, align 8
  br label %a.rd.done596

a.rd.err.null594:                                 ; preds = %a.after581
  %arena.cur606 = call ptr @dva_arena_current()
  %err.alloc607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 56)
  %err.code.gep608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 0
  store i64 4011, ptr %err.code.gep608, align 8
  %err.msg.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep609, align 8
  %err.file.gep610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep610, align 8
  %err.line.gep611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 3
  store i64 299, ptr %err.line.gep611, align 8
  %err.col.gep612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 4
  store i64 29, ptr %err.col.gep612, align 8
  %err.ctx.gep613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 5
  %err.ctx0.gep614 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep613, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep614, align 8
  %err.ctx1.gep615 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep613, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep615, align 8
  %err.p2i616 = ptrtoint ptr %err.alloc607 to i64
  br label %a.rd.done596

a.rd.err.oob595:                                  ; preds = %a.rd.check592
  %arena.cur617 = call ptr @dva_arena_current()
  %err.alloc618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 56)
  %err.code.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 0
  store i64 4011, ptr %err.code.gep619, align 8
  %err.msg.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep620, align 8
  %err.file.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep621, align 8
  %err.line.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 3
  store i64 299, ptr %err.line.gep622, align 8
  %err.col.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 4
  store i64 29, ptr %err.col.gep623, align 8
  %err.ctx.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 5
  %err.ctx0.gep625 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 0
  store i64 %var.load590, ptr %err.ctx0.gep625, align 8
  %err.ctx1.gep626 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 1
  store i64 %a.rd.len598, ptr %err.ctx1.gep626, align 8
  %err.p2i627 = ptrtoint ptr %err.alloc618 to i64
  br label %a.rd.done596

a.rd.done596:                                     ; preds = %a.rd.err.oob595, %a.rd.err.null594, %a.rd.ok593
  %a.rd.tag628 = phi i1 [ true, %a.rd.ok593 ], [ false, %a.rd.err.null594 ], [ false, %a.rd.err.oob595 ]
  %a.rd.pay629 = phi i64 [ %a.rd.elem605, %a.rd.ok593 ], [ %err.p2i616, %a.rd.err.null594 ], [ %err.p2i627, %a.rd.err.oob595 ]
  %ram.tag630 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag628, 0
  %ram.pay631 = insertvalue { i1, i64 } %ram.tag630, i64 %a.rd.pay629, 1
  %ram.tag632 = extractvalue { i1, i64 } %ram.pay631, 0
  br i1 %ram.tag632, label %choice.then633, label %choice.else634

choice.then633:                                   ; preds = %a.rd.done596
  %ram.pay636 = extractvalue { i1, i64 } %ram.pay631, 1
  store i64 %ram.pay636, ptr %var._637, align 8
  br label %choice.exit635

choice.else634:                                   ; preds = %a.rd.done596
  %ram.pay638 = extractvalue { i1, i64 } %ram.pay631, 1
  %pay.ptr639 = inttoptr i64 %ram.pay638 to ptr
  store ptr %pay.ptr639, ptr %var._640, align 8
  br label %choice.exit635

choice.exit635:                                   ; preds = %choice.else634, %choice.then633
  %choice.res = phi i64 [ %ram.pay636, %choice.then633 ], [ -1, %choice.else634 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load641 = load i64, ptr %var.v_idx, align 8
  %cmptmp642 = icmp slt i64 %var.load641, 0
  br i1 %cmptmp642, label %choice.then643, label %choice.else644

choice.then643:                                   ; preds = %choice.exit635
  %var.load646 = load ptr, ptr %var.graph, align 8
  %var.load647 = load ptr, ptr %var.state, align 8
  %var.load648 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load646, ptr %var.load647, i64 %var.load648)
  %var.load649 = load ptr, ptr %var.lows, align 8
  %a.load650 = load ptr, ptr %var.lows, align 8
  %a.null651 = icmp eq ptr %a.load650, null
  br i1 %a.null651, label %a.create652, label %a.after653

choice.else644:                                   ; preds = %choice.exit635
  %var.load911 = load ptr, ptr %var.ons, align 8
  %a.load912 = load ptr, ptr %var.ons, align 8
  %a.null913 = icmp eq ptr %a.load912, null
  br i1 %a.null913, label %a.create914, label %a.after915

choice.exit645:                                   ; preds = %choice.exit978, %choice.exit877
  br label %choice.exit576

a.create652:                                      ; preds = %choice.then643
  %arena.cur654 = call ptr @dva_arena_current()
  %a.create655 = call ptr @dva_arena_alloc(ptr %arena.cur654, i64 24)
  %arena.cur656 = call ptr @dva_arena_current()
  %a.buf657 = call ptr @dva_arena_alloc(ptr %arena.cur656, i64 128)
  %a.len.gep658 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create655, i32 0, i32 0
  store i64 0, ptr %a.len.gep658, align 8
  %a.data.gep659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create655, i32 0, i32 1
  store ptr %a.buf657, ptr %a.data.gep659, align 8
  %a.cap.gep660 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create655, i32 0, i32 2
  store i64 16, ptr %a.cap.gep660, align 8
  store ptr %a.create655, ptr %var.lows, align 8
  br label %a.after653

a.after653:                                       ; preds = %a.create652, %choice.then643
  %a.load2661 = load ptr, ptr %var.lows, align 8
  %var.load662 = load i64, ptr %var.u, align 8
  %var.load663 = load ptr, ptr %var.lows, align 8
  %a.load664 = load ptr, ptr %var.lows, align 8
  %a.null665 = icmp eq ptr %a.load664, null
  br i1 %a.null665, label %a.create666, label %a.after667

a.create666:                                      ; preds = %a.after653
  %arena.cur668 = call ptr @dva_arena_current()
  %a.create669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 24)
  %arena.cur670 = call ptr @dva_arena_current()
  %a.buf671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 128)
  %a.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 0
  store i64 0, ptr %a.len.gep672, align 8
  %a.data.gep673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 1
  store ptr %a.buf671, ptr %a.data.gep673, align 8
  %a.cap.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 2
  store i64 16, ptr %a.cap.gep674, align 8
  store ptr %a.create669, ptr %var.lows, align 8
  br label %a.after667

a.after667:                                       ; preds = %a.create666, %a.after653
  %a.load2675 = load ptr, ptr %var.lows, align 8
  %var.load676 = load i64, ptr %var.u, align 8
  %a.rd.nonnull677 = icmp ne ptr %a.load2675, null
  br i1 %a.rd.nonnull677, label %a.rd.check678, label %a.rd.err.null680

a.rd.check678:                                    ; preds = %a.after667
  %a.rd.len683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2675, i32 0, i32 0
  %a.rd.len684 = load i64, ptr %a.rd.len683, align 8
  %a.rd.ge0685 = icmp sge i64 %var.load676, 0
  %a.rd.lt686 = icmp slt i64 %var.load676, %a.rd.len684
  %a.rd.bounds687 = and i1 %a.rd.ge0685, %a.rd.lt686
  br i1 %a.rd.bounds687, label %a.rd.ok679, label %a.rd.err.oob681

a.rd.ok679:                                       ; preds = %a.rd.check678
  %a.rd.data688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2675, i32 0, i32 1
  %a.rd.data689 = load ptr, ptr %a.rd.data688, align 8
  %a.rd.elem.gep690 = getelementptr i64, ptr %a.rd.data689, i64 %var.load676
  %a.rd.elem691 = load i64, ptr %a.rd.elem.gep690, align 8
  br label %a.rd.done682

a.rd.err.null680:                                 ; preds = %a.after667
  %arena.cur692 = call ptr @dva_arena_current()
  %err.alloc693 = call ptr @dva_arena_alloc(ptr %arena.cur692, i64 56)
  %err.code.gep694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 0
  store i64 4011, ptr %err.code.gep694, align 8
  %err.msg.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep695, align 8
  %err.file.gep696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep696, align 8
  %err.line.gep697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 3
  store i64 303, ptr %err.line.gep697, align 8
  %err.col.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 4
  store i64 41, ptr %err.col.gep698, align 8
  %err.ctx.gep699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc693, i32 0, i32 5
  %err.ctx0.gep700 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep699, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep700, align 8
  %err.ctx1.gep701 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep699, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep701, align 8
  %err.p2i702 = ptrtoint ptr %err.alloc693 to i64
  br label %a.rd.done682

a.rd.err.oob681:                                  ; preds = %a.rd.check678
  %arena.cur703 = call ptr @dva_arena_current()
  %err.alloc704 = call ptr @dva_arena_alloc(ptr %arena.cur703, i64 56)
  %err.code.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 0
  store i64 4011, ptr %err.code.gep705, align 8
  %err.msg.gep706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep706, align 8
  %err.file.gep707 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep707, align 8
  %err.line.gep708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 3
  store i64 303, ptr %err.line.gep708, align 8
  %err.col.gep709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 4
  store i64 41, ptr %err.col.gep709, align 8
  %err.ctx.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 5
  %err.ctx0.gep711 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 0
  store i64 %var.load676, ptr %err.ctx0.gep711, align 8
  %err.ctx1.gep712 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 1
  store i64 %a.rd.len684, ptr %err.ctx1.gep712, align 8
  %err.p2i713 = ptrtoint ptr %err.alloc704 to i64
  br label %a.rd.done682

a.rd.done682:                                     ; preds = %a.rd.err.oob681, %a.rd.err.null680, %a.rd.ok679
  %a.rd.tag714 = phi i1 [ true, %a.rd.ok679 ], [ false, %a.rd.err.null680 ], [ false, %a.rd.err.oob681 ]
  %a.rd.pay715 = phi i64 [ %a.rd.elem691, %a.rd.ok679 ], [ %err.p2i702, %a.rd.err.null680 ], [ %err.p2i713, %a.rd.err.oob681 ]
  %ram.tag716 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag714, 0
  %ram.pay717 = insertvalue { i1, i64 } %ram.tag716, i64 %a.rd.pay715, 1
  %unwrap.is_pos718 = extractvalue { i1, i64 } %ram.pay717, 0
  br i1 %unwrap.is_pos718, label %unwrap.pos.77, label %unwrap.abort.77

unwrap.pos.77:                                    ; preds = %a.rd.done682
  %unwrap.pay.pos750 = extractvalue { i1, i64 } %ram.pay717, 1
  %var.load751 = load ptr, ptr %var.lows, align 8
  %a.load752 = load ptr, ptr %var.lows, align 8
  %a.null753 = icmp eq ptr %a.load752, null
  br i1 %a.null753, label %a.create754, label %a.after755

unwrap.abort.77:                                  ; preds = %a.rd.done682
  %unwrap.pay.abort719 = extractvalue { i1, i64 } %ram.pay717, 1
  %err.ptr720 = inttoptr i64 %unwrap.pay.abort719 to ptr
  %err.code.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr720, i32 0, i32 0
  %err.code722 = load i64, ptr %err.code.gep721, align 8
  %err.msg.gep723 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr720, i32 0, i32 1
  %err.msg.struct724 = load ptr, ptr %err.msg.gep723, align 8
  %err.file.gep725 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr720, i32 0, i32 2
  %err.file.struct726 = load ptr, ptr %err.file.gep725, align 8
  %err.line.gep727 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr720, i32 0, i32 3
  %err.line728 = load i64, ptr %err.line.gep727, align 8
  %err.col.gep729 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr720, i32 0, i32 4
  %err.col730 = load i64, ptr %err.col.gep729, align 8
  %err.msg.len731 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct724, i32 0, i32 0
  %err.msg.len732 = load i64, ptr %err.msg.len731, align 8
  %err.msg.len733 = and i64 %err.msg.len732, 281474976710655
  %err.msg.len32734 = trunc i64 %err.msg.len733 to i32
  %err.msg.data735 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct724, i32 0, i32 1
  %err.msg.data736 = load ptr, ptr %err.msg.data735, align 8
  %err.file.len737 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct726, i32 0, i32 0
  %err.file.len738 = load i64, ptr %err.file.len737, align 8
  %err.file.len739 = and i64 %err.file.len738, 281474976710655
  %err.file.len32740 = trunc i64 %err.file.len739 to i32
  %err.file.data741 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct726, i32 0, i32 1
  %err.file.data742 = load ptr, ptr %err.file.data741, align 8
  %err.thread.rec743 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread744 = icmp ne ptr %err.thread.rec743, null
  br i1 %err.is.thread744, label %err.thread745, label %err.normal746

err.thread745:                                    ; preds = %unwrap.abort.77
  %err.haserr.gep747 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec743, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep747, align 8
  %err.err.gep748 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec743, i32 0, i32 7
  store ptr %err.ptr720, ptr %err.err.gep748, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal746:                                    ; preds = %unwrap.abort.77
  %err.panic.printf749 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code722, i32 %err.msg.len32734, ptr %err.msg.data736, i32 %err.file.len32740, ptr %err.file.data742, i64 %err.line728, i64 %err.col730)
  call void @exit(i32 1)
  unreachable

a.create754:                                      ; preds = %unwrap.pos.77
  %arena.cur756 = call ptr @dva_arena_current()
  %a.create757 = call ptr @dva_arena_alloc(ptr %arena.cur756, i64 24)
  %arena.cur758 = call ptr @dva_arena_current()
  %a.buf759 = call ptr @dva_arena_alloc(ptr %arena.cur758, i64 128)
  %a.len.gep760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create757, i32 0, i32 0
  store i64 0, ptr %a.len.gep760, align 8
  %a.data.gep761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create757, i32 0, i32 1
  store ptr %a.buf759, ptr %a.data.gep761, align 8
  %a.cap.gep762 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create757, i32 0, i32 2
  store i64 16, ptr %a.cap.gep762, align 8
  store ptr %a.create757, ptr %var.lows, align 8
  br label %a.after755

a.after755:                                       ; preds = %a.create754, %unwrap.pos.77
  %a.load2763 = load ptr, ptr %var.lows, align 8
  %var.load764 = load i64, ptr %var.v, align 8
  %a.rd.nonnull765 = icmp ne ptr %a.load2763, null
  br i1 %a.rd.nonnull765, label %a.rd.check766, label %a.rd.err.null768

a.rd.check766:                                    ; preds = %a.after755
  %a.rd.len771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2763, i32 0, i32 0
  %a.rd.len772 = load i64, ptr %a.rd.len771, align 8
  %a.rd.ge0773 = icmp sge i64 %var.load764, 0
  %a.rd.lt774 = icmp slt i64 %var.load764, %a.rd.len772
  %a.rd.bounds775 = and i1 %a.rd.ge0773, %a.rd.lt774
  br i1 %a.rd.bounds775, label %a.rd.ok767, label %a.rd.err.oob769

a.rd.ok767:                                       ; preds = %a.rd.check766
  %a.rd.data776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2763, i32 0, i32 1
  %a.rd.data777 = load ptr, ptr %a.rd.data776, align 8
  %a.rd.elem.gep778 = getelementptr i64, ptr %a.rd.data777, i64 %var.load764
  %a.rd.elem779 = load i64, ptr %a.rd.elem.gep778, align 8
  br label %a.rd.done770

a.rd.err.null768:                                 ; preds = %a.after755
  %arena.cur780 = call ptr @dva_arena_current()
  %err.alloc781 = call ptr @dva_arena_alloc(ptr %arena.cur780, i64 56)
  %err.code.gep782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 0
  store i64 4011, ptr %err.code.gep782, align 8
  %err.msg.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep783, align 8
  %err.file.gep784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep784, align 8
  %err.line.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 3
  store i64 303, ptr %err.line.gep785, align 8
  %err.col.gep786 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 4
  store i64 52, ptr %err.col.gep786, align 8
  %err.ctx.gep787 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc781, i32 0, i32 5
  %err.ctx0.gep788 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep787, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep788, align 8
  %err.ctx1.gep789 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep787, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep789, align 8
  %err.p2i790 = ptrtoint ptr %err.alloc781 to i64
  br label %a.rd.done770

a.rd.err.oob769:                                  ; preds = %a.rd.check766
  %arena.cur791 = call ptr @dva_arena_current()
  %err.alloc792 = call ptr @dva_arena_alloc(ptr %arena.cur791, i64 56)
  %err.code.gep793 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 0
  store i64 4011, ptr %err.code.gep793, align 8
  %err.msg.gep794 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep794, align 8
  %err.file.gep795 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep795, align 8
  %err.line.gep796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 3
  store i64 303, ptr %err.line.gep796, align 8
  %err.col.gep797 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 4
  store i64 52, ptr %err.col.gep797, align 8
  %err.ctx.gep798 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc792, i32 0, i32 5
  %err.ctx0.gep799 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep798, i32 0, i32 0
  store i64 %var.load764, ptr %err.ctx0.gep799, align 8
  %err.ctx1.gep800 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep798, i32 0, i32 1
  store i64 %a.rd.len772, ptr %err.ctx1.gep800, align 8
  %err.p2i801 = ptrtoint ptr %err.alloc792 to i64
  br label %a.rd.done770

a.rd.done770:                                     ; preds = %a.rd.err.oob769, %a.rd.err.null768, %a.rd.ok767
  %a.rd.tag802 = phi i1 [ true, %a.rd.ok767 ], [ false, %a.rd.err.null768 ], [ false, %a.rd.err.oob769 ]
  %a.rd.pay803 = phi i64 [ %a.rd.elem779, %a.rd.ok767 ], [ %err.p2i790, %a.rd.err.null768 ], [ %err.p2i801, %a.rd.err.oob769 ]
  %ram.tag804 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag802, 0
  %ram.pay805 = insertvalue { i1, i64 } %ram.tag804, i64 %a.rd.pay803, 1
  %unwrap.is_pos806 = extractvalue { i1, i64 } %ram.pay805, 0
  br i1 %unwrap.is_pos806, label %unwrap.pos.78, label %unwrap.abort.78

unwrap.pos.78:                                    ; preds = %a.rd.done770
  %unwrap.pay.pos838 = extractvalue { i1, i64 } %ram.pay805, 1
  %min = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos750, i64 %unwrap.pay.pos838)
  %a.wr.nonnull839 = icmp ne ptr %a.load2661, null
  br i1 %a.wr.nonnull839, label %a.wr.check840, label %a.wr.err.null842

unwrap.abort.78:                                  ; preds = %a.rd.done770
  %unwrap.pay.abort807 = extractvalue { i1, i64 } %ram.pay805, 1
  %err.ptr808 = inttoptr i64 %unwrap.pay.abort807 to ptr
  %err.code.gep809 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr808, i32 0, i32 0
  %err.code810 = load i64, ptr %err.code.gep809, align 8
  %err.msg.gep811 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr808, i32 0, i32 1
  %err.msg.struct812 = load ptr, ptr %err.msg.gep811, align 8
  %err.file.gep813 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr808, i32 0, i32 2
  %err.file.struct814 = load ptr, ptr %err.file.gep813, align 8
  %err.line.gep815 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr808, i32 0, i32 3
  %err.line816 = load i64, ptr %err.line.gep815, align 8
  %err.col.gep817 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr808, i32 0, i32 4
  %err.col818 = load i64, ptr %err.col.gep817, align 8
  %err.msg.len819 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct812, i32 0, i32 0
  %err.msg.len820 = load i64, ptr %err.msg.len819, align 8
  %err.msg.len821 = and i64 %err.msg.len820, 281474976710655
  %err.msg.len32822 = trunc i64 %err.msg.len821 to i32
  %err.msg.data823 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct812, i32 0, i32 1
  %err.msg.data824 = load ptr, ptr %err.msg.data823, align 8
  %err.file.len825 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct814, i32 0, i32 0
  %err.file.len826 = load i64, ptr %err.file.len825, align 8
  %err.file.len827 = and i64 %err.file.len826, 281474976710655
  %err.file.len32828 = trunc i64 %err.file.len827 to i32
  %err.file.data829 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct814, i32 0, i32 1
  %err.file.data830 = load ptr, ptr %err.file.data829, align 8
  %err.thread.rec831 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread832 = icmp ne ptr %err.thread.rec831, null
  br i1 %err.is.thread832, label %err.thread833, label %err.normal834

err.thread833:                                    ; preds = %unwrap.abort.78
  %err.haserr.gep835 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec831, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep835, align 8
  %err.err.gep836 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec831, i32 0, i32 7
  store ptr %err.ptr808, ptr %err.err.gep836, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal834:                                    ; preds = %unwrap.abort.78
  %err.panic.printf837 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code810, i32 %err.msg.len32822, ptr %err.msg.data824, i32 %err.file.len32828, ptr %err.file.data830, i64 %err.line816, i64 %err.col818)
  call void @exit(i32 1)
  unreachable

a.wr.check840:                                    ; preds = %unwrap.pos.78
  %a.wr.len845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2661, i32 0, i32 0
  %a.wr.len846 = load i64, ptr %a.wr.len845, align 8
  %a.wr.ge0847 = icmp sge i64 %var.load662, 0
  %a.wr.lt848 = icmp slt i64 %var.load662, %a.wr.len846
  %a.wr.bounds849 = and i1 %a.wr.ge0847, %a.wr.lt848
  br i1 %a.wr.bounds849, label %a.wr.ok841, label %a.wr.err.oob843

a.wr.ok841:                                       ; preds = %a.wr.check840
  %a.wr.data850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2661, i32 0, i32 1
  %a.wr.data851 = load ptr, ptr %a.wr.data850, align 8
  %a.elem.gep852 = getelementptr i64, ptr %a.wr.data851, i64 %var.load662
  store i64 %min, ptr %a.elem.gep852, align 8
  br label %a.wr.done844

a.wr.err.null842:                                 ; preds = %unwrap.pos.78
  %arena.cur853 = call ptr @dva_arena_current()
  %err.alloc854 = call ptr @dva_arena_alloc(ptr %arena.cur853, i64 56)
  %err.code.gep855 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 0
  store i64 4011, ptr %err.code.gep855, align 8
  %err.msg.gep856 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep856, align 8
  %err.file.gep857 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep857, align 8
  %err.line.gep858 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 3
  store i64 0, ptr %err.line.gep858, align 8
  %err.col.gep859 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 4
  store i64 0, ptr %err.col.gep859, align 8
  %err.ctx.gep860 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc854, i32 0, i32 5
  %err.ctx0.gep861 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep860, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep861, align 8
  %err.ctx1.gep862 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep860, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep862, align 8
  br label %a.wr.done844

a.wr.err.oob843:                                  ; preds = %a.wr.check840
  %arena.cur863 = call ptr @dva_arena_current()
  %err.alloc864 = call ptr @dva_arena_alloc(ptr %arena.cur863, i64 56)
  %err.code.gep865 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 0
  store i64 4011, ptr %err.code.gep865, align 8
  %err.msg.gep866 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep866, align 8
  %err.file.gep867 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep867, align 8
  %err.line.gep868 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 3
  store i64 0, ptr %err.line.gep868, align 8
  %err.col.gep869 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 4
  store i64 0, ptr %err.col.gep869, align 8
  %err.ctx.gep870 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc864, i32 0, i32 5
  %err.ctx0.gep871 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep870, i32 0, i32 0
  store i64 %var.load662, ptr %err.ctx0.gep871, align 8
  %err.ctx1.gep872 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep870, i32 0, i32 1
  store i64 %a.wr.len846, ptr %err.ctx1.gep872, align 8
  br label %a.wr.done844

a.wr.done844:                                     ; preds = %a.wr.err.oob843, %a.wr.err.null842, %a.wr.ok841
  %a.wr.niche873 = phi ptr [ null, %a.wr.ok841 ], [ %err.alloc854, %a.wr.err.null842 ], [ %err.alloc864, %a.wr.err.oob843 ]
  %niche.eq.null874 = icmp eq ptr %a.wr.niche873, null
  br i1 %niche.eq.null874, label %choice.then875, label %choice.else876

choice.then875:                                   ; preds = %a.wr.done844
  br label %choice.exit877

choice.else876:                                   ; preds = %a.wr.done844
  store ptr %a.wr.niche873, ptr %var._878, align 8
  store ptr %a.wr.niche873, ptr %var._879, align 8
  store ptr %a.wr.niche873, ptr %var._880, align 8
  %err.code.gep881 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche873, i32 0, i32 0
  %err.code882 = load i64, ptr %err.code.gep881, align 8
  %err.msg.gep883 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche873, i32 0, i32 1
  %err.msg.struct884 = load ptr, ptr %err.msg.gep883, align 8
  %err.file.gep885 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche873, i32 0, i32 2
  %err.file.struct886 = load ptr, ptr %err.file.gep885, align 8
  %err.line.gep887 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche873, i32 0, i32 3
  %err.line888 = load i64, ptr %err.line.gep887, align 8
  %err.col.gep889 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche873, i32 0, i32 4
  %err.col890 = load i64, ptr %err.col.gep889, align 8
  %err.msg.len891 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct884, i32 0, i32 0
  %err.msg.len892 = load i64, ptr %err.msg.len891, align 8
  %err.msg.len893 = and i64 %err.msg.len892, 281474976710655
  %err.msg.len32894 = trunc i64 %err.msg.len893 to i32
  %err.msg.data895 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct884, i32 0, i32 1
  %err.msg.data896 = load ptr, ptr %err.msg.data895, align 8
  %err.file.len897 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct886, i32 0, i32 0
  %err.file.len898 = load i64, ptr %err.file.len897, align 8
  %err.file.len899 = and i64 %err.file.len898, 281474976710655
  %err.file.len32900 = trunc i64 %err.file.len899 to i32
  %err.file.data901 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct886, i32 0, i32 1
  %err.file.data902 = load ptr, ptr %err.file.data901, align 8
  %err.thread.rec903 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread904 = icmp ne ptr %err.thread.rec903, null
  br i1 %err.is.thread904, label %err.thread905, label %err.normal906

choice.exit877:                                   ; preds = %err.abort910, %choice.then875
  br label %choice.exit645

err.thread905:                                    ; preds = %choice.else876
  %err.haserr.gep907 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec903, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep907, align 8
  %err.err.gep908 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec903, i32 0, i32 7
  store ptr %a.wr.niche873, ptr %err.err.gep908, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal906:                                    ; preds = %choice.else876
  %err.panic.printf909 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code882, i32 %err.msg.len32894, ptr %err.msg.data896, i32 %err.file.len32900, ptr %err.file.data902, i64 %err.line888, i64 %err.col890)
  call void @exit(i32 1)
  unreachable

err.abort910:                                     ; No predecessors!
  br label %choice.exit877

a.create914:                                      ; preds = %choice.else644
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
  store ptr %a.create917, ptr %var.ons, align 8
  br label %a.after915

a.after915:                                       ; preds = %a.create914, %choice.else644
  %a.load2923 = load ptr, ptr %var.ons, align 8
  %var.load924 = load i64, ptr %var.v, align 8
  %a.rd.nonnull925 = icmp ne ptr %a.load2923, null
  br i1 %a.rd.nonnull925, label %a.rd.check926, label %a.rd.err.null928

a.rd.check926:                                    ; preds = %a.after915
  %a.rd.len931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 0
  %a.rd.len932 = load i64, ptr %a.rd.len931, align 8
  %a.rd.ge0933 = icmp sge i64 %var.load924, 0
  %a.rd.lt934 = icmp slt i64 %var.load924, %a.rd.len932
  %a.rd.bounds935 = and i1 %a.rd.ge0933, %a.rd.lt934
  br i1 %a.rd.bounds935, label %a.rd.ok927, label %a.rd.err.oob929

a.rd.ok927:                                       ; preds = %a.rd.check926
  %a.rd.data936 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2923, i32 0, i32 1
  %a.rd.data937 = load ptr, ptr %a.rd.data936, align 8
  %a.rd.elem.gep938 = getelementptr i64, ptr %a.rd.data937, i64 %var.load924
  %a.rd.elem939 = load i64, ptr %a.rd.elem.gep938, align 8
  br label %a.rd.done930

a.rd.err.null928:                                 ; preds = %a.after915
  %arena.cur940 = call ptr @dva_arena_current()
  %err.alloc941 = call ptr @dva_arena_alloc(ptr %arena.cur940, i64 56)
  %err.code.gep942 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 0
  store i64 4011, ptr %err.code.gep942, align 8
  %err.msg.gep943 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep943, align 8
  %err.file.gep944 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep944, align 8
  %err.line.gep945 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 3
  store i64 305, ptr %err.line.gep945, align 8
  %err.col.gep946 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 4
  store i64 33, ptr %err.col.gep946, align 8
  %err.ctx.gep947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc941, i32 0, i32 5
  %err.ctx0.gep948 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep947, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep948, align 8
  %err.ctx1.gep949 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep947, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep949, align 8
  %err.p2i950 = ptrtoint ptr %err.alloc941 to i64
  br label %a.rd.done930

a.rd.err.oob929:                                  ; preds = %a.rd.check926
  %arena.cur951 = call ptr @dva_arena_current()
  %err.alloc952 = call ptr @dva_arena_alloc(ptr %arena.cur951, i64 56)
  %err.code.gep953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 0
  store i64 4011, ptr %err.code.gep953, align 8
  %err.msg.gep954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep954, align 8
  %err.file.gep955 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep955, align 8
  %err.line.gep956 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 3
  store i64 305, ptr %err.line.gep956, align 8
  %err.col.gep957 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 4
  store i64 33, ptr %err.col.gep957, align 8
  %err.ctx.gep958 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc952, i32 0, i32 5
  %err.ctx0.gep959 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep958, i32 0, i32 0
  store i64 %var.load924, ptr %err.ctx0.gep959, align 8
  %err.ctx1.gep960 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep958, i32 0, i32 1
  store i64 %a.rd.len932, ptr %err.ctx1.gep960, align 8
  %err.p2i961 = ptrtoint ptr %err.alloc952 to i64
  br label %a.rd.done930

a.rd.done930:                                     ; preds = %a.rd.err.oob929, %a.rd.err.null928, %a.rd.ok927
  %a.rd.tag962 = phi i1 [ true, %a.rd.ok927 ], [ false, %a.rd.err.null928 ], [ false, %a.rd.err.oob929 ]
  %a.rd.pay963 = phi i64 [ %a.rd.elem939, %a.rd.ok927 ], [ %err.p2i950, %a.rd.err.null928 ], [ %err.p2i961, %a.rd.err.oob929 ]
  %ram.tag964 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag962, 0
  %ram.pay965 = insertvalue { i1, i64 } %ram.tag964, i64 %a.rd.pay963, 1
  %ram.tag966 = extractvalue { i1, i64 } %ram.pay965, 0
  br i1 %ram.tag966, label %choice.then967, label %choice.else968

choice.then967:                                   ; preds = %a.rd.done930
  %ram.pay970 = extractvalue { i1, i64 } %ram.pay965, 1
  %pay.flag = trunc i64 %ram.pay970 to i1
  store i1 %pay.flag, ptr %var._971, align 1
  br label %choice.exit969

choice.else968:                                   ; preds = %a.rd.done930
  %ram.pay972 = extractvalue { i1, i64 } %ram.pay965, 1
  %pay.ptr973 = inttoptr i64 %ram.pay972 to ptr
  store ptr %pay.ptr973, ptr %var._974, align 8
  br label %choice.exit969

choice.exit969:                                   ; preds = %choice.else968, %choice.then967
  %choice.res975 = phi i1 [ %pay.flag, %choice.then967 ], [ false, %choice.else968 ]
  store i1 %choice.res975, ptr %var.v_on, align 1
  %var.load976 = load i1, ptr %var.v_on, align 1
  br i1 %var.load976, label %choice.then977, label %choice.exit978

choice.then977:                                   ; preds = %choice.exit969
  %var.load979 = load ptr, ptr %var.lows, align 8
  %a.load980 = load ptr, ptr %var.lows, align 8
  %a.null981 = icmp eq ptr %a.load980, null
  br i1 %a.null981, label %a.create982, label %a.after983

choice.exit978:                                   ; preds = %choice.exit1208, %choice.exit969
  br label %choice.exit645

a.create982:                                      ; preds = %choice.then977
  %arena.cur984 = call ptr @dva_arena_current()
  %a.create985 = call ptr @dva_arena_alloc(ptr %arena.cur984, i64 24)
  %arena.cur986 = call ptr @dva_arena_current()
  %a.buf987 = call ptr @dva_arena_alloc(ptr %arena.cur986, i64 128)
  %a.len.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create985, i32 0, i32 0
  store i64 0, ptr %a.len.gep988, align 8
  %a.data.gep989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create985, i32 0, i32 1
  store ptr %a.buf987, ptr %a.data.gep989, align 8
  %a.cap.gep990 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create985, i32 0, i32 2
  store i64 16, ptr %a.cap.gep990, align 8
  store ptr %a.create985, ptr %var.lows, align 8
  br label %a.after983

a.after983:                                       ; preds = %a.create982, %choice.then977
  %a.load2991 = load ptr, ptr %var.lows, align 8
  %var.load992 = load i64, ptr %var.u, align 8
  %var.load993 = load ptr, ptr %var.lows, align 8
  %a.load994 = load ptr, ptr %var.lows, align 8
  %a.null995 = icmp eq ptr %a.load994, null
  br i1 %a.null995, label %a.create996, label %a.after997

a.create996:                                      ; preds = %a.after983
  %arena.cur998 = call ptr @dva_arena_current()
  %a.create999 = call ptr @dva_arena_alloc(ptr %arena.cur998, i64 24)
  %arena.cur1000 = call ptr @dva_arena_current()
  %a.buf1001 = call ptr @dva_arena_alloc(ptr %arena.cur1000, i64 128)
  %a.len.gep1002 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create999, i32 0, i32 0
  store i64 0, ptr %a.len.gep1002, align 8
  %a.data.gep1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create999, i32 0, i32 1
  store ptr %a.buf1001, ptr %a.data.gep1003, align 8
  %a.cap.gep1004 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create999, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1004, align 8
  store ptr %a.create999, ptr %var.lows, align 8
  br label %a.after997

a.after997:                                       ; preds = %a.create996, %a.after983
  %a.load21005 = load ptr, ptr %var.lows, align 8
  %var.load1006 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1007 = icmp ne ptr %a.load21005, null
  br i1 %a.rd.nonnull1007, label %a.rd.check1008, label %a.rd.err.null1010

a.rd.check1008:                                   ; preds = %a.after997
  %a.rd.len1013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21005, i32 0, i32 0
  %a.rd.len1014 = load i64, ptr %a.rd.len1013, align 8
  %a.rd.ge01015 = icmp sge i64 %var.load1006, 0
  %a.rd.lt1016 = icmp slt i64 %var.load1006, %a.rd.len1014
  %a.rd.bounds1017 = and i1 %a.rd.ge01015, %a.rd.lt1016
  br i1 %a.rd.bounds1017, label %a.rd.ok1009, label %a.rd.err.oob1011

a.rd.ok1009:                                      ; preds = %a.rd.check1008
  %a.rd.data1018 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21005, i32 0, i32 1
  %a.rd.data1019 = load ptr, ptr %a.rd.data1018, align 8
  %a.rd.elem.gep1020 = getelementptr i64, ptr %a.rd.data1019, i64 %var.load1006
  %a.rd.elem1021 = load i64, ptr %a.rd.elem.gep1020, align 8
  br label %a.rd.done1012

a.rd.err.null1010:                                ; preds = %a.after997
  %arena.cur1022 = call ptr @dva_arena_current()
  %err.alloc1023 = call ptr @dva_arena_alloc(ptr %arena.cur1022, i64 56)
  %err.code.gep1024 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1024, align 8
  %err.msg.gep1025 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1025, align 8
  %err.file.gep1026 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1026, align 8
  %err.line.gep1027 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 3
  store i64 308, ptr %err.line.gep1027, align 8
  %err.col.gep1028 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 4
  store i64 47, ptr %err.col.gep1028, align 8
  %err.ctx.gep1029 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1023, i32 0, i32 5
  %err.ctx0.gep1030 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1029, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1030, align 8
  %err.ctx1.gep1031 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1029, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1031, align 8
  %err.p2i1032 = ptrtoint ptr %err.alloc1023 to i64
  br label %a.rd.done1012

a.rd.err.oob1011:                                 ; preds = %a.rd.check1008
  %arena.cur1033 = call ptr @dva_arena_current()
  %err.alloc1034 = call ptr @dva_arena_alloc(ptr %arena.cur1033, i64 56)
  %err.code.gep1035 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1035, align 8
  %err.msg.gep1036 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1036, align 8
  %err.file.gep1037 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1037, align 8
  %err.line.gep1038 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 3
  store i64 308, ptr %err.line.gep1038, align 8
  %err.col.gep1039 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 4
  store i64 47, ptr %err.col.gep1039, align 8
  %err.ctx.gep1040 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1034, i32 0, i32 5
  %err.ctx0.gep1041 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1040, i32 0, i32 0
  store i64 %var.load1006, ptr %err.ctx0.gep1041, align 8
  %err.ctx1.gep1042 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1040, i32 0, i32 1
  store i64 %a.rd.len1014, ptr %err.ctx1.gep1042, align 8
  %err.p2i1043 = ptrtoint ptr %err.alloc1034 to i64
  br label %a.rd.done1012

a.rd.done1012:                                    ; preds = %a.rd.err.oob1011, %a.rd.err.null1010, %a.rd.ok1009
  %a.rd.tag1044 = phi i1 [ true, %a.rd.ok1009 ], [ false, %a.rd.err.null1010 ], [ false, %a.rd.err.oob1011 ]
  %a.rd.pay1045 = phi i64 [ %a.rd.elem1021, %a.rd.ok1009 ], [ %err.p2i1032, %a.rd.err.null1010 ], [ %err.p2i1043, %a.rd.err.oob1011 ]
  %ram.tag1046 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1044, 0
  %ram.pay1047 = insertvalue { i1, i64 } %ram.tag1046, i64 %a.rd.pay1045, 1
  %unwrap.is_pos1048 = extractvalue { i1, i64 } %ram.pay1047, 0
  br i1 %unwrap.is_pos1048, label %unwrap.pos.79, label %unwrap.abort.79

unwrap.pos.79:                                    ; preds = %a.rd.done1012
  %unwrap.pay.pos1080 = extractvalue { i1, i64 } %ram.pay1047, 1
  %var.load1081 = load ptr, ptr %var.idxs, align 8
  %a.load1082 = load ptr, ptr %var.idxs, align 8
  %a.null1083 = icmp eq ptr %a.load1082, null
  br i1 %a.null1083, label %a.create1084, label %a.after1085

unwrap.abort.79:                                  ; preds = %a.rd.done1012
  %unwrap.pay.abort1049 = extractvalue { i1, i64 } %ram.pay1047, 1
  %err.ptr1050 = inttoptr i64 %unwrap.pay.abort1049 to ptr
  %err.code.gep1051 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1050, i32 0, i32 0
  %err.code1052 = load i64, ptr %err.code.gep1051, align 8
  %err.msg.gep1053 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1050, i32 0, i32 1
  %err.msg.struct1054 = load ptr, ptr %err.msg.gep1053, align 8
  %err.file.gep1055 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1050, i32 0, i32 2
  %err.file.struct1056 = load ptr, ptr %err.file.gep1055, align 8
  %err.line.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1050, i32 0, i32 3
  %err.line1058 = load i64, ptr %err.line.gep1057, align 8
  %err.col.gep1059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1050, i32 0, i32 4
  %err.col1060 = load i64, ptr %err.col.gep1059, align 8
  %err.msg.len1061 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1054, i32 0, i32 0
  %err.msg.len1062 = load i64, ptr %err.msg.len1061, align 8
  %err.msg.len1063 = and i64 %err.msg.len1062, 281474976710655
  %err.msg.len321064 = trunc i64 %err.msg.len1063 to i32
  %err.msg.data1065 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1054, i32 0, i32 1
  %err.msg.data1066 = load ptr, ptr %err.msg.data1065, align 8
  %err.file.len1067 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1056, i32 0, i32 0
  %err.file.len1068 = load i64, ptr %err.file.len1067, align 8
  %err.file.len1069 = and i64 %err.file.len1068, 281474976710655
  %err.file.len321070 = trunc i64 %err.file.len1069 to i32
  %err.file.data1071 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1056, i32 0, i32 1
  %err.file.data1072 = load ptr, ptr %err.file.data1071, align 8
  %err.thread.rec1073 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1074 = icmp ne ptr %err.thread.rec1073, null
  br i1 %err.is.thread1074, label %err.thread1075, label %err.normal1076

err.thread1075:                                   ; preds = %unwrap.abort.79
  %err.haserr.gep1077 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1073, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1077, align 8
  %err.err.gep1078 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1073, i32 0, i32 7
  store ptr %err.ptr1050, ptr %err.err.gep1078, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1076:                                   ; preds = %unwrap.abort.79
  %err.panic.printf1079 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1052, i32 %err.msg.len321064, ptr %err.msg.data1066, i32 %err.file.len321070, ptr %err.file.data1072, i64 %err.line1058, i64 %err.col1060)
  call void @exit(i32 1)
  unreachable

a.create1084:                                     ; preds = %unwrap.pos.79
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
  store ptr %a.create1087, ptr %var.idxs, align 8
  br label %a.after1085

a.after1085:                                      ; preds = %a.create1084, %unwrap.pos.79
  %a.load21093 = load ptr, ptr %var.idxs, align 8
  %var.load1094 = load i64, ptr %var.v, align 8
  %a.rd.nonnull1095 = icmp ne ptr %a.load21093, null
  br i1 %a.rd.nonnull1095, label %a.rd.check1096, label %a.rd.err.null1098

a.rd.check1096:                                   ; preds = %a.after1085
  %a.rd.len1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21093, i32 0, i32 0
  %a.rd.len1102 = load i64, ptr %a.rd.len1101, align 8
  %a.rd.ge01103 = icmp sge i64 %var.load1094, 0
  %a.rd.lt1104 = icmp slt i64 %var.load1094, %a.rd.len1102
  %a.rd.bounds1105 = and i1 %a.rd.ge01103, %a.rd.lt1104
  br i1 %a.rd.bounds1105, label %a.rd.ok1097, label %a.rd.err.oob1099

a.rd.ok1097:                                      ; preds = %a.rd.check1096
  %a.rd.data1106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21093, i32 0, i32 1
  %a.rd.data1107 = load ptr, ptr %a.rd.data1106, align 8
  %a.rd.elem.gep1108 = getelementptr i64, ptr %a.rd.data1107, i64 %var.load1094
  %a.rd.elem1109 = load i64, ptr %a.rd.elem.gep1108, align 8
  br label %a.rd.done1100

a.rd.err.null1098:                                ; preds = %a.after1085
  %arena.cur1110 = call ptr @dva_arena_current()
  %err.alloc1111 = call ptr @dva_arena_alloc(ptr %arena.cur1110, i64 56)
  %err.code.gep1112 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1112, align 8
  %err.msg.gep1113 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1113, align 8
  %err.file.gep1114 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1114, align 8
  %err.line.gep1115 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 3
  store i64 308, ptr %err.line.gep1115, align 8
  %err.col.gep1116 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 4
  store i64 58, ptr %err.col.gep1116, align 8
  %err.ctx.gep1117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1111, i32 0, i32 5
  %err.ctx0.gep1118 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1117, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1118, align 8
  %err.ctx1.gep1119 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1117, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1119, align 8
  %err.p2i1120 = ptrtoint ptr %err.alloc1111 to i64
  br label %a.rd.done1100

a.rd.err.oob1099:                                 ; preds = %a.rd.check1096
  %arena.cur1121 = call ptr @dva_arena_current()
  %err.alloc1122 = call ptr @dva_arena_alloc(ptr %arena.cur1121, i64 56)
  %err.code.gep1123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1123, align 8
  %err.msg.gep1124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1124, align 8
  %err.file.gep1125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1125, align 8
  %err.line.gep1126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 3
  store i64 308, ptr %err.line.gep1126, align 8
  %err.col.gep1127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 4
  store i64 58, ptr %err.col.gep1127, align 8
  %err.ctx.gep1128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1122, i32 0, i32 5
  %err.ctx0.gep1129 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1128, i32 0, i32 0
  store i64 %var.load1094, ptr %err.ctx0.gep1129, align 8
  %err.ctx1.gep1130 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1128, i32 0, i32 1
  store i64 %a.rd.len1102, ptr %err.ctx1.gep1130, align 8
  %err.p2i1131 = ptrtoint ptr %err.alloc1122 to i64
  br label %a.rd.done1100

a.rd.done1100:                                    ; preds = %a.rd.err.oob1099, %a.rd.err.null1098, %a.rd.ok1097
  %a.rd.tag1132 = phi i1 [ true, %a.rd.ok1097 ], [ false, %a.rd.err.null1098 ], [ false, %a.rd.err.oob1099 ]
  %a.rd.pay1133 = phi i64 [ %a.rd.elem1109, %a.rd.ok1097 ], [ %err.p2i1120, %a.rd.err.null1098 ], [ %err.p2i1131, %a.rd.err.oob1099 ]
  %ram.tag1134 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1132, 0
  %ram.pay1135 = insertvalue { i1, i64 } %ram.tag1134, i64 %a.rd.pay1133, 1
  %unwrap.is_pos1136 = extractvalue { i1, i64 } %ram.pay1135, 0
  br i1 %unwrap.is_pos1136, label %unwrap.pos.80, label %unwrap.abort.80

unwrap.pos.80:                                    ; preds = %a.rd.done1100
  %unwrap.pay.pos1168 = extractvalue { i1, i64 } %ram.pay1135, 1
  %min1169 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos1080, i64 %unwrap.pay.pos1168)
  %a.wr.nonnull1170 = icmp ne ptr %a.load2991, null
  br i1 %a.wr.nonnull1170, label %a.wr.check1171, label %a.wr.err.null1173

unwrap.abort.80:                                  ; preds = %a.rd.done1100
  %unwrap.pay.abort1137 = extractvalue { i1, i64 } %ram.pay1135, 1
  %err.ptr1138 = inttoptr i64 %unwrap.pay.abort1137 to ptr
  %err.code.gep1139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1138, i32 0, i32 0
  %err.code1140 = load i64, ptr %err.code.gep1139, align 8
  %err.msg.gep1141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1138, i32 0, i32 1
  %err.msg.struct1142 = load ptr, ptr %err.msg.gep1141, align 8
  %err.file.gep1143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1138, i32 0, i32 2
  %err.file.struct1144 = load ptr, ptr %err.file.gep1143, align 8
  %err.line.gep1145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1138, i32 0, i32 3
  %err.line1146 = load i64, ptr %err.line.gep1145, align 8
  %err.col.gep1147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1138, i32 0, i32 4
  %err.col1148 = load i64, ptr %err.col.gep1147, align 8
  %err.msg.len1149 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1142, i32 0, i32 0
  %err.msg.len1150 = load i64, ptr %err.msg.len1149, align 8
  %err.msg.len1151 = and i64 %err.msg.len1150, 281474976710655
  %err.msg.len321152 = trunc i64 %err.msg.len1151 to i32
  %err.msg.data1153 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1142, i32 0, i32 1
  %err.msg.data1154 = load ptr, ptr %err.msg.data1153, align 8
  %err.file.len1155 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1144, i32 0, i32 0
  %err.file.len1156 = load i64, ptr %err.file.len1155, align 8
  %err.file.len1157 = and i64 %err.file.len1156, 281474976710655
  %err.file.len321158 = trunc i64 %err.file.len1157 to i32
  %err.file.data1159 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1144, i32 0, i32 1
  %err.file.data1160 = load ptr, ptr %err.file.data1159, align 8
  %err.thread.rec1161 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1162 = icmp ne ptr %err.thread.rec1161, null
  br i1 %err.is.thread1162, label %err.thread1163, label %err.normal1164

err.thread1163:                                   ; preds = %unwrap.abort.80
  %err.haserr.gep1165 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1161, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1165, align 8
  %err.err.gep1166 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1161, i32 0, i32 7
  store ptr %err.ptr1138, ptr %err.err.gep1166, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1164:                                   ; preds = %unwrap.abort.80
  %err.panic.printf1167 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1140, i32 %err.msg.len321152, ptr %err.msg.data1154, i32 %err.file.len321158, ptr %err.file.data1160, i64 %err.line1146, i64 %err.col1148)
  call void @exit(i32 1)
  unreachable

a.wr.check1171:                                   ; preds = %unwrap.pos.80
  %a.wr.len1176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2991, i32 0, i32 0
  %a.wr.len1177 = load i64, ptr %a.wr.len1176, align 8
  %a.wr.ge01178 = icmp sge i64 %var.load992, 0
  %a.wr.lt1179 = icmp slt i64 %var.load992, %a.wr.len1177
  %a.wr.bounds1180 = and i1 %a.wr.ge01178, %a.wr.lt1179
  br i1 %a.wr.bounds1180, label %a.wr.ok1172, label %a.wr.err.oob1174

a.wr.ok1172:                                      ; preds = %a.wr.check1171
  %a.wr.data1181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2991, i32 0, i32 1
  %a.wr.data1182 = load ptr, ptr %a.wr.data1181, align 8
  %a.elem.gep1183 = getelementptr i64, ptr %a.wr.data1182, i64 %var.load992
  store i64 %min1169, ptr %a.elem.gep1183, align 8
  br label %a.wr.done1175

a.wr.err.null1173:                                ; preds = %unwrap.pos.80
  %arena.cur1184 = call ptr @dva_arena_current()
  %err.alloc1185 = call ptr @dva_arena_alloc(ptr %arena.cur1184, i64 56)
  %err.code.gep1186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1186, align 8
  %err.msg.gep1187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1187, align 8
  %err.file.gep1188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1188, align 8
  %err.line.gep1189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 3
  store i64 0, ptr %err.line.gep1189, align 8
  %err.col.gep1190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 4
  store i64 0, ptr %err.col.gep1190, align 8
  %err.ctx.gep1191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1185, i32 0, i32 5
  %err.ctx0.gep1192 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1191, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1192, align 8
  %err.ctx1.gep1193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1191, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1193, align 8
  br label %a.wr.done1175

a.wr.err.oob1174:                                 ; preds = %a.wr.check1171
  %arena.cur1194 = call ptr @dva_arena_current()
  %err.alloc1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 56)
  %err.code.gep1196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1196, align 8
  %err.msg.gep1197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1197, align 8
  %err.file.gep1198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1198, align 8
  %err.line.gep1199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 3
  store i64 0, ptr %err.line.gep1199, align 8
  %err.col.gep1200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 4
  store i64 0, ptr %err.col.gep1200, align 8
  %err.ctx.gep1201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1195, i32 0, i32 5
  %err.ctx0.gep1202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1201, i32 0, i32 0
  store i64 %var.load992, ptr %err.ctx0.gep1202, align 8
  %err.ctx1.gep1203 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1201, i32 0, i32 1
  store i64 %a.wr.len1177, ptr %err.ctx1.gep1203, align 8
  br label %a.wr.done1175

a.wr.done1175:                                    ; preds = %a.wr.err.oob1174, %a.wr.err.null1173, %a.wr.ok1172
  %a.wr.niche1204 = phi ptr [ null, %a.wr.ok1172 ], [ %err.alloc1185, %a.wr.err.null1173 ], [ %err.alloc1195, %a.wr.err.oob1174 ]
  %niche.eq.null1205 = icmp eq ptr %a.wr.niche1204, null
  br i1 %niche.eq.null1205, label %choice.then1206, label %choice.else1207

choice.then1206:                                  ; preds = %a.wr.done1175
  br label %choice.exit1208

choice.else1207:                                  ; preds = %a.wr.done1175
  store ptr %a.wr.niche1204, ptr %var._1209, align 8
  store ptr %a.wr.niche1204, ptr %var._1210, align 8
  store ptr %a.wr.niche1204, ptr %var._1211, align 8
  %err.code.gep1212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1204, i32 0, i32 0
  %err.code1213 = load i64, ptr %err.code.gep1212, align 8
  %err.msg.gep1214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1204, i32 0, i32 1
  %err.msg.struct1215 = load ptr, ptr %err.msg.gep1214, align 8
  %err.file.gep1216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1204, i32 0, i32 2
  %err.file.struct1217 = load ptr, ptr %err.file.gep1216, align 8
  %err.line.gep1218 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1204, i32 0, i32 3
  %err.line1219 = load i64, ptr %err.line.gep1218, align 8
  %err.col.gep1220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1204, i32 0, i32 4
  %err.col1221 = load i64, ptr %err.col.gep1220, align 8
  %err.msg.len1222 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1215, i32 0, i32 0
  %err.msg.len1223 = load i64, ptr %err.msg.len1222, align 8
  %err.msg.len1224 = and i64 %err.msg.len1223, 281474976710655
  %err.msg.len321225 = trunc i64 %err.msg.len1224 to i32
  %err.msg.data1226 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1215, i32 0, i32 1
  %err.msg.data1227 = load ptr, ptr %err.msg.data1226, align 8
  %err.file.len1228 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1217, i32 0, i32 0
  %err.file.len1229 = load i64, ptr %err.file.len1228, align 8
  %err.file.len1230 = and i64 %err.file.len1229, 281474976710655
  %err.file.len321231 = trunc i64 %err.file.len1230 to i32
  %err.file.data1232 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1217, i32 0, i32 1
  %err.file.data1233 = load ptr, ptr %err.file.data1232, align 8
  %err.thread.rec1234 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1235 = icmp ne ptr %err.thread.rec1234, null
  br i1 %err.is.thread1235, label %err.thread1236, label %err.normal1237

choice.exit1208:                                  ; preds = %err.abort1241, %choice.then1206
  br label %choice.exit978

err.thread1236:                                   ; preds = %choice.else1207
  %err.haserr.gep1238 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1234, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1238, align 8
  %err.err.gep1239 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1234, i32 0, i32 7
  store ptr %a.wr.niche1204, ptr %err.err.gep1239, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1237:                                   ; preds = %choice.else1207
  %err.panic.printf1240 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1213, i32 %err.msg.len321225, ptr %err.msg.data1227, i32 %err.file.len321231, ptr %err.file.data1233, i64 %err.line1219, i64 %err.col1221)
  call void @exit(i32 1)
  unreachable

err.abort1241:                                    ; No predecessors!
  br label %choice.exit1208

a.create1245:                                     ; preds = %loop.exit.76
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
  store ptr %a.create1248, ptr %var.lows, align 8
  br label %a.after1246

a.after1246:                                      ; preds = %a.create1245, %loop.exit.76
  %a.load21254 = load ptr, ptr %var.lows, align 8
  %var.load1255 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1256 = icmp ne ptr %a.load21254, null
  br i1 %a.rd.nonnull1256, label %a.rd.check1257, label %a.rd.err.null1259

a.rd.check1257:                                   ; preds = %a.after1246
  %a.rd.len1262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21254, i32 0, i32 0
  %a.rd.len1263 = load i64, ptr %a.rd.len1262, align 8
  %a.rd.ge01264 = icmp sge i64 %var.load1255, 0
  %a.rd.lt1265 = icmp slt i64 %var.load1255, %a.rd.len1263
  %a.rd.bounds1266 = and i1 %a.rd.ge01264, %a.rd.lt1265
  br i1 %a.rd.bounds1266, label %a.rd.ok1258, label %a.rd.err.oob1260

a.rd.ok1258:                                      ; preds = %a.rd.check1257
  %a.rd.data1267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21254, i32 0, i32 1
  %a.rd.data1268 = load ptr, ptr %a.rd.data1267, align 8
  %a.rd.elem.gep1269 = getelementptr i64, ptr %a.rd.data1268, i64 %var.load1255
  %a.rd.elem1270 = load i64, ptr %a.rd.elem.gep1269, align 8
  br label %a.rd.done1261

a.rd.err.null1259:                                ; preds = %a.after1246
  %arena.cur1271 = call ptr @dva_arena_current()
  %err.alloc1272 = call ptr @dva_arena_alloc(ptr %arena.cur1271, i64 56)
  %err.code.gep1273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1273, align 8
  %err.msg.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1274, align 8
  %err.file.gep1275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1275, align 8
  %err.line.gep1276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 3
  store i64 310, ptr %err.line.gep1276, align 8
  %err.col.gep1277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 4
  store i64 19, ptr %err.col.gep1277, align 8
  %err.ctx.gep1278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1272, i32 0, i32 5
  %err.ctx0.gep1279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1278, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1279, align 8
  %err.ctx1.gep1280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1278, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1280, align 8
  %err.p2i1281 = ptrtoint ptr %err.alloc1272 to i64
  br label %a.rd.done1261

a.rd.err.oob1260:                                 ; preds = %a.rd.check1257
  %arena.cur1282 = call ptr @dva_arena_current()
  %err.alloc1283 = call ptr @dva_arena_alloc(ptr %arena.cur1282, i64 56)
  %err.code.gep1284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1284, align 8
  %err.msg.gep1285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1285, align 8
  %err.file.gep1286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1286, align 8
  %err.line.gep1287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 3
  store i64 310, ptr %err.line.gep1287, align 8
  %err.col.gep1288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 4
  store i64 19, ptr %err.col.gep1288, align 8
  %err.ctx.gep1289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1283, i32 0, i32 5
  %err.ctx0.gep1290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1289, i32 0, i32 0
  store i64 %var.load1255, ptr %err.ctx0.gep1290, align 8
  %err.ctx1.gep1291 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1289, i32 0, i32 1
  store i64 %a.rd.len1263, ptr %err.ctx1.gep1291, align 8
  %err.p2i1292 = ptrtoint ptr %err.alloc1283 to i64
  br label %a.rd.done1261

a.rd.done1261:                                    ; preds = %a.rd.err.oob1260, %a.rd.err.null1259, %a.rd.ok1258
  %a.rd.tag1293 = phi i1 [ true, %a.rd.ok1258 ], [ false, %a.rd.err.null1259 ], [ false, %a.rd.err.oob1260 ]
  %a.rd.pay1294 = phi i64 [ %a.rd.elem1270, %a.rd.ok1258 ], [ %err.p2i1281, %a.rd.err.null1259 ], [ %err.p2i1292, %a.rd.err.oob1260 ]
  %ram.tag1295 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1293, 0
  %ram.pay1296 = insertvalue { i1, i64 } %ram.tag1295, i64 %a.rd.pay1294, 1
  %unwrap.is_pos1297 = extractvalue { i1, i64 } %ram.pay1296, 0
  br i1 %unwrap.is_pos1297, label %unwrap.pos.81, label %unwrap.abort.81

unwrap.pos.81:                                    ; preds = %a.rd.done1261
  %unwrap.pay.pos1351 = extractvalue { i1, i64 } %ram.pay1296, 1
  store i64 %unwrap.pay.pos1351, ptr %var.low_u, align 8
  %var.load1352 = load ptr, ptr %var.idxs, align 8
  %a.load1353 = load ptr, ptr %var.idxs, align 8
  %a.null1354 = icmp eq ptr %a.load1353, null
  br i1 %a.null1354, label %a.create1355, label %a.after1356

unwrap.abort.81:                                  ; preds = %a.rd.done1261
  %unwrap.pay.abort1298 = extractvalue { i1, i64 } %ram.pay1296, 1
  %err.ptr1299 = inttoptr i64 %unwrap.pay.abort1298 to ptr
  %err.code.gep1300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1299, i32 0, i32 0
  %err.code1301 = load i64, ptr %err.code.gep1300, align 8
  %err.msg.gep1302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1299, i32 0, i32 1
  %err.msg.struct1303 = load ptr, ptr %err.msg.gep1302, align 8
  %err.file.gep1304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1299, i32 0, i32 2
  %err.file.struct1305 = load ptr, ptr %err.file.gep1304, align 8
  %err.line.gep1306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1299, i32 0, i32 3
  %err.line1307 = load i64, ptr %err.line.gep1306, align 8
  %err.col.gep1308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1299, i32 0, i32 4
  %err.col1309 = load i64, ptr %err.col.gep1308, align 8
  %err.msg.len1310 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1303, i32 0, i32 0
  %err.msg.len1311 = load i64, ptr %err.msg.len1310, align 8
  %err.msg.len1312 = and i64 %err.msg.len1311, 281474976710655
  %str.tag1313 = lshr i64 %err.msg.len1311, 48
  %tag.immortal1315 = icmp eq i64 %str.tag1313, 0
  br i1 %tag.immortal1315, label %str_ok1314, label %tag.gen_check1316

str_ok1314:                                       ; preds = %abort.dead1323, %tag.slow_check1317, %tag.gen_check1316, %unwrap.abort.81
  %err.msg.len321324 = trunc i64 %err.msg.len1312 to i32
  %err.msg.data1325 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1303, i32 0, i32 1
  %err.msg.data1326 = load ptr, ptr %err.msg.data1325, align 8
  %err.file.len1327 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1305, i32 0, i32 0
  %err.file.len1328 = load i64, ptr %err.file.len1327, align 8
  %err.file.len1329 = and i64 %err.file.len1328, 281474976710655
  %str.tag1330 = lshr i64 %err.file.len1328, 48
  %tag.immortal1332 = icmp eq i64 %str.tag1330, 0
  br i1 %tag.immortal1332, label %str_ok1331, label %tag.gen_check1333

tag.gen_check1316:                                ; preds = %unwrap.abort.81
  %active.gen1319 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok1320 = icmp eq i64 %str.tag1313, %active.gen1319
  br i1 %tag.fast.ok1320, label %str_ok1314, label %tag.slow_check1317

tag.slow_check1317:                               ; preds = %tag.gen_check1316
  %arena.cur1321 = call ptr @dva_arena_current()
  %tag.valid1322 = call i1 @dva_arena_validate_tag(ptr %arena.cur1321, i64 %str.tag1313)
  br i1 %tag.valid1322, label %str_ok1314, label %tag.stale1318

tag.stale1318:                                    ; preds = %tag.slow_check1317
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead1323:                                   ; No predecessors!
  br label %str_ok1314

str_ok1331:                                       ; preds = %abort.dead1340, %tag.slow_check1334, %tag.gen_check1333, %str_ok1314
  %err.file.len321341 = trunc i64 %err.file.len1329 to i32
  %err.file.data1342 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1305, i32 0, i32 1
  %err.file.data1343 = load ptr, ptr %err.file.data1342, align 8
  %err.thread.rec1344 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1345 = icmp ne ptr %err.thread.rec1344, null
  br i1 %err.is.thread1345, label %err.thread1346, label %err.normal1347

tag.gen_check1333:                                ; preds = %str_ok1314
  %active.gen1336 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok1337 = icmp eq i64 %str.tag1330, %active.gen1336
  br i1 %tag.fast.ok1337, label %str_ok1331, label %tag.slow_check1334

tag.slow_check1334:                               ; preds = %tag.gen_check1333
  %arena.cur1338 = call ptr @dva_arena_current()
  %tag.valid1339 = call i1 @dva_arena_validate_tag(ptr %arena.cur1338, i64 %str.tag1330)
  br i1 %tag.valid1339, label %str_ok1331, label %tag.stale1335

tag.stale1335:                                    ; preds = %tag.slow_check1334
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead1340:                                   ; No predecessors!
  br label %str_ok1331

err.thread1346:                                   ; preds = %str_ok1331
  %err.haserr.gep1348 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1344, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1348, align 8
  %err.err.gep1349 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1344, i32 0, i32 7
  store ptr %err.ptr1299, ptr %err.err.gep1349, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1347:                                   ; preds = %str_ok1331
  %err.panic.printf1350 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1301, i32 %err.msg.len321324, ptr %err.msg.data1326, i32 %err.file.len321341, ptr %err.file.data1343, i64 %err.line1307, i64 %err.col1309)
  call void @exit(i32 1)
  unreachable

a.create1355:                                     ; preds = %unwrap.pos.81
  %arena.cur1357 = call ptr @dva_arena_current()
  %a.create1358 = call ptr @dva_arena_alloc(ptr %arena.cur1357, i64 24)
  %arena.cur1359 = call ptr @dva_arena_current()
  %a.buf1360 = call ptr @dva_arena_alloc(ptr %arena.cur1359, i64 128)
  %a.len.gep1361 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1358, i32 0, i32 0
  store i64 0, ptr %a.len.gep1361, align 8
  %a.data.gep1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1358, i32 0, i32 1
  store ptr %a.buf1360, ptr %a.data.gep1362, align 8
  %a.cap.gep1363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1358, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1363, align 8
  store ptr %a.create1358, ptr %var.idxs, align 8
  br label %a.after1356

a.after1356:                                      ; preds = %a.create1355, %unwrap.pos.81
  %a.load21364 = load ptr, ptr %var.idxs, align 8
  %var.load1365 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1366 = icmp ne ptr %a.load21364, null
  br i1 %a.rd.nonnull1366, label %a.rd.check1367, label %a.rd.err.null1369

a.rd.check1367:                                   ; preds = %a.after1356
  %a.rd.len1372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21364, i32 0, i32 0
  %a.rd.len1373 = load i64, ptr %a.rd.len1372, align 8
  %a.rd.ge01374 = icmp sge i64 %var.load1365, 0
  %a.rd.lt1375 = icmp slt i64 %var.load1365, %a.rd.len1373
  %a.rd.bounds1376 = and i1 %a.rd.ge01374, %a.rd.lt1375
  br i1 %a.rd.bounds1376, label %a.rd.ok1368, label %a.rd.err.oob1370

a.rd.ok1368:                                      ; preds = %a.rd.check1367
  %a.rd.data1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21364, i32 0, i32 1
  %a.rd.data1378 = load ptr, ptr %a.rd.data1377, align 8
  %a.rd.elem.gep1379 = getelementptr i64, ptr %a.rd.data1378, i64 %var.load1365
  %a.rd.elem1380 = load i64, ptr %a.rd.elem.gep1379, align 8
  br label %a.rd.done1371

a.rd.err.null1369:                                ; preds = %a.after1356
  %arena.cur1381 = call ptr @dva_arena_current()
  %err.alloc1382 = call ptr @dva_arena_alloc(ptr %arena.cur1381, i64 56)
  %err.code.gep1383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1383, align 8
  %err.msg.gep1384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1384, align 8
  %err.file.gep1385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1385, align 8
  %err.line.gep1386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 3
  store i64 311, ptr %err.line.gep1386, align 8
  %err.col.gep1387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 4
  store i64 19, ptr %err.col.gep1387, align 8
  %err.ctx.gep1388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1382, i32 0, i32 5
  %err.ctx0.gep1389 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1388, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1389, align 8
  %err.ctx1.gep1390 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1388, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1390, align 8
  %err.p2i1391 = ptrtoint ptr %err.alloc1382 to i64
  br label %a.rd.done1371

a.rd.err.oob1370:                                 ; preds = %a.rd.check1367
  %arena.cur1392 = call ptr @dva_arena_current()
  %err.alloc1393 = call ptr @dva_arena_alloc(ptr %arena.cur1392, i64 56)
  %err.code.gep1394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1394, align 8
  %err.msg.gep1395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1395, align 8
  %err.file.gep1396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1396, align 8
  %err.line.gep1397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 3
  store i64 311, ptr %err.line.gep1397, align 8
  %err.col.gep1398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 4
  store i64 19, ptr %err.col.gep1398, align 8
  %err.ctx.gep1399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1393, i32 0, i32 5
  %err.ctx0.gep1400 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1399, i32 0, i32 0
  store i64 %var.load1365, ptr %err.ctx0.gep1400, align 8
  %err.ctx1.gep1401 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1399, i32 0, i32 1
  store i64 %a.rd.len1373, ptr %err.ctx1.gep1401, align 8
  %err.p2i1402 = ptrtoint ptr %err.alloc1393 to i64
  br label %a.rd.done1371

a.rd.done1371:                                    ; preds = %a.rd.err.oob1370, %a.rd.err.null1369, %a.rd.ok1368
  %a.rd.tag1403 = phi i1 [ true, %a.rd.ok1368 ], [ false, %a.rd.err.null1369 ], [ false, %a.rd.err.oob1370 ]
  %a.rd.pay1404 = phi i64 [ %a.rd.elem1380, %a.rd.ok1368 ], [ %err.p2i1391, %a.rd.err.null1369 ], [ %err.p2i1402, %a.rd.err.oob1370 ]
  %ram.tag1405 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1403, 0
  %ram.pay1406 = insertvalue { i1, i64 } %ram.tag1405, i64 %a.rd.pay1404, 1
  %unwrap.is_pos1407 = extractvalue { i1, i64 } %ram.pay1406, 0
  br i1 %unwrap.is_pos1407, label %unwrap.pos.82, label %unwrap.abort.82

unwrap.pos.82:                                    ; preds = %a.rd.done1371
  %unwrap.pay.pos1461 = extractvalue { i1, i64 } %ram.pay1406, 1
  store i64 %unwrap.pay.pos1461, ptr %var.idx_u, align 8
  %var.load1462 = load i64, ptr %var.low_u, align 8
  %var.load1463 = load i64, ptr %var.idx_u, align 8
  %cmptmp1464 = icmp eq i64 %var.load1462, %var.load1463
  br i1 %cmptmp1464, label %choice.then1465, label %choice.exit1466

unwrap.abort.82:                                  ; preds = %a.rd.done1371
  %unwrap.pay.abort1408 = extractvalue { i1, i64 } %ram.pay1406, 1
  %err.ptr1409 = inttoptr i64 %unwrap.pay.abort1408 to ptr
  %err.code.gep1410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1409, i32 0, i32 0
  %err.code1411 = load i64, ptr %err.code.gep1410, align 8
  %err.msg.gep1412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1409, i32 0, i32 1
  %err.msg.struct1413 = load ptr, ptr %err.msg.gep1412, align 8
  %err.file.gep1414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1409, i32 0, i32 2
  %err.file.struct1415 = load ptr, ptr %err.file.gep1414, align 8
  %err.line.gep1416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1409, i32 0, i32 3
  %err.line1417 = load i64, ptr %err.line.gep1416, align 8
  %err.col.gep1418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1409, i32 0, i32 4
  %err.col1419 = load i64, ptr %err.col.gep1418, align 8
  %err.msg.len1420 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1413, i32 0, i32 0
  %err.msg.len1421 = load i64, ptr %err.msg.len1420, align 8
  %err.msg.len1422 = and i64 %err.msg.len1421, 281474976710655
  %str.tag1423 = lshr i64 %err.msg.len1421, 48
  %tag.immortal1425 = icmp eq i64 %str.tag1423, 0
  br i1 %tag.immortal1425, label %str_ok1424, label %tag.gen_check1426

str_ok1424:                                       ; preds = %abort.dead1433, %tag.slow_check1427, %tag.gen_check1426, %unwrap.abort.82
  %err.msg.len321434 = trunc i64 %err.msg.len1422 to i32
  %err.msg.data1435 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1413, i32 0, i32 1
  %err.msg.data1436 = load ptr, ptr %err.msg.data1435, align 8
  %err.file.len1437 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1415, i32 0, i32 0
  %err.file.len1438 = load i64, ptr %err.file.len1437, align 8
  %err.file.len1439 = and i64 %err.file.len1438, 281474976710655
  %str.tag1440 = lshr i64 %err.file.len1438, 48
  %tag.immortal1442 = icmp eq i64 %str.tag1440, 0
  br i1 %tag.immortal1442, label %str_ok1441, label %tag.gen_check1443

tag.gen_check1426:                                ; preds = %unwrap.abort.82
  %active.gen1429 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok1430 = icmp eq i64 %str.tag1423, %active.gen1429
  br i1 %tag.fast.ok1430, label %str_ok1424, label %tag.slow_check1427

tag.slow_check1427:                               ; preds = %tag.gen_check1426
  %arena.cur1431 = call ptr @dva_arena_current()
  %tag.valid1432 = call i1 @dva_arena_validate_tag(ptr %arena.cur1431, i64 %str.tag1423)
  br i1 %tag.valid1432, label %str_ok1424, label %tag.stale1428

tag.stale1428:                                    ; preds = %tag.slow_check1427
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead1433:                                   ; No predecessors!
  br label %str_ok1424

str_ok1441:                                       ; preds = %abort.dead1450, %tag.slow_check1444, %tag.gen_check1443, %str_ok1424
  %err.file.len321451 = trunc i64 %err.file.len1439 to i32
  %err.file.data1452 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1415, i32 0, i32 1
  %err.file.data1453 = load ptr, ptr %err.file.data1452, align 8
  %err.thread.rec1454 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1455 = icmp ne ptr %err.thread.rec1454, null
  br i1 %err.is.thread1455, label %err.thread1456, label %err.normal1457

tag.gen_check1443:                                ; preds = %str_ok1424
  %active.gen1446 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok1447 = icmp eq i64 %str.tag1440, %active.gen1446
  br i1 %tag.fast.ok1447, label %str_ok1441, label %tag.slow_check1444

tag.slow_check1444:                               ; preds = %tag.gen_check1443
  %arena.cur1448 = call ptr @dva_arena_current()
  %tag.valid1449 = call i1 @dva_arena_validate_tag(ptr %arena.cur1448, i64 %str.tag1440)
  br i1 %tag.valid1449, label %str_ok1441, label %tag.stale1445

tag.stale1445:                                    ; preds = %tag.slow_check1444
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead1450:                                   ; No predecessors!
  br label %str_ok1441

err.thread1456:                                   ; preds = %str_ok1441
  %err.haserr.gep1458 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1454, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1458, align 8
  %err.err.gep1459 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1454, i32 0, i32 7
  store ptr %err.ptr1409, ptr %err.err.gep1459, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1457:                                   ; preds = %str_ok1441
  %err.panic.printf1460 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1411, i32 %err.msg.len321434, ptr %err.msg.data1436, i32 %err.file.len321451, ptr %err.file.data1453, i64 %err.line1417, i64 %err.col1419)
  call void @exit(i32 1)
  unreachable

choice.then1465:                                  ; preds = %unwrap.pos.82
  %arena.cur1467 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1467, i64 24)
  %arena.cur1468 = call ptr @dva_arena_current()
  %a.buf1469 = call ptr @dva_arena_alloc(ptr %arena.cur1468, i64 128)
  %a.len.gep1470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1470, align 8
  %a.data.gep1471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1469, ptr %a.data.gep1471, align 8
  %a.cap.gep1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1472, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1473 = load ptr, ptr %var.u_node, align 8
  %var.load1474 = load ptr, ptr %var.u_node, align 8
  %fld.gep1475 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1474, i32 0, i32 0
  %fld.load1476 = load ptr, ptr %fld.gep1475, align 8
  %call.res1477 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1473, ptr %fld.load1476)
  store i1 %call.res1477, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

choice.exit1466:                                  ; preds = %a.store1805, %unwrap.pos.82
  ret void

loop.header.83:                                   ; preds = %loop.latch.83, %choice.then1465
  %counter.load1478 = load i64, ptr %loop.idx.83, align 8
  br label %loop.body.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i1479 = sub i64 %counter.load1478, 0
  store i64 1, ptr %loop.step.83, align 8
  store i64 %loop.rel.i1479, ptr %var._i1480, align 8
  store i64 %counter.load1478, ptr %var._1481, align 8
  %var.load1482 = load ptr, ptr %var.state, align 8
  %fld.gep1483 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1482, i32 0, i32 4
  %fld.load1484 = load ptr, ptr %fld.gep1483, align 8
  store ptr %fld.load1484, ptr %var.s_ptr, align 8
  %var.load1485 = load ptr, ptr %var.s_ptr, align 8
  %a.load1486 = load ptr, ptr %var.s_ptr, align 8
  %a.null1487 = icmp eq ptr %a.load1486, null
  br i1 %a.null1487, label %a.create1488, label %a.after1489

loop.exit.nat.83:                                 ; No predecessors!
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %choice.exit1766
  %step.val1767 = load i64, ptr %loop.step.83, align 8
  %loop.next1768 = add i64 %counter.load1478, %step.val1767
  store i64 %loop.next1768, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %choice.then1765, %choice.then1573, %loop.exit.nat.83
  %var.load1769 = load ptr, ptr %var.scc_names, align 8
  %a.load1770 = load ptr, ptr %var.scc_names, align 8
  %a.null1771 = icmp eq ptr %a.load1770, null
  br i1 %a.null1771, label %a.create1772, label %a.after1773

a.create1488:                                     ; preds = %loop.body.83
  %arena.cur1490 = call ptr @dva_arena_current()
  %a.create1491 = call ptr @dva_arena_alloc(ptr %arena.cur1490, i64 24)
  %arena.cur1492 = call ptr @dva_arena_current()
  %a.buf1493 = call ptr @dva_arena_alloc(ptr %arena.cur1492, i64 128)
  %a.len.gep1494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1491, i32 0, i32 0
  store i64 0, ptr %a.len.gep1494, align 8
  %a.data.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1491, i32 0, i32 1
  store ptr %a.buf1493, ptr %a.data.gep1495, align 8
  %a.cap.gep1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1491, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1496, align 8
  store ptr %a.create1491, ptr %var.s_ptr, align 8
  br label %a.after1489

a.after1489:                                      ; preds = %a.create1488, %loop.body.83
  %a.load21497 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1498 = icmp ne ptr %a.load21497, null
  br i1 %a.rd.nonnull1498, label %a.rd.check1499, label %a.rd.err.null1501

a.rd.check1499:                                   ; preds = %a.after1489
  %a.rd.len1504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21497, i32 0, i32 0
  %a.rd.len1505 = load i64, ptr %a.rd.len1504, align 8
  %a.rd.lt1506 = icmp slt i64 0, %a.rd.len1505
  %a.rd.bounds1507 = and i1 true, %a.rd.lt1506
  br i1 %a.rd.bounds1507, label %a.rd.ok1500, label %a.rd.err.oob1502

a.rd.ok1500:                                      ; preds = %a.rd.check1499
  %a.rd.data1508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21497, i32 0, i32 1
  %a.rd.data1509 = load ptr, ptr %a.rd.data1508, align 8
  %a.rd.elem.gep1510 = getelementptr i64, ptr %a.rd.data1509, i64 0
  %a.rd.elem1511 = load i64, ptr %a.rd.elem.gep1510, align 8
  br label %a.rd.done1503

a.rd.err.null1501:                                ; preds = %a.after1489
  %arena.cur1512 = call ptr @dva_arena_current()
  %err.alloc1513 = call ptr @dva_arena_alloc(ptr %arena.cur1512, i64 56)
  %err.code.gep1514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1514, align 8
  %err.msg.gep1515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1515, align 8
  %err.file.gep1516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1516, align 8
  %err.line.gep1517 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 3
  store i64 318, ptr %err.line.gep1517, align 8
  %err.col.gep1518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 4
  store i64 26, ptr %err.col.gep1518, align 8
  %err.ctx.gep1519 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1513, i32 0, i32 5
  %err.ctx0.gep1520 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1519, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1520, align 8
  %err.ctx1.gep1521 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1519, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1521, align 8
  %err.p2i1522 = ptrtoint ptr %err.alloc1513 to i64
  br label %a.rd.done1503

a.rd.err.oob1502:                                 ; preds = %a.rd.check1499
  %arena.cur1523 = call ptr @dva_arena_current()
  %err.alloc1524 = call ptr @dva_arena_alloc(ptr %arena.cur1523, i64 56)
  %err.code.gep1525 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1525, align 8
  %err.msg.gep1526 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1526, align 8
  %err.file.gep1527 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1527, align 8
  %err.line.gep1528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 3
  store i64 318, ptr %err.line.gep1528, align 8
  %err.col.gep1529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 4
  store i64 26, ptr %err.col.gep1529, align 8
  %err.ctx.gep1530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1524, i32 0, i32 5
  %err.ctx0.gep1531 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1530, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1531, align 8
  %err.ctx1.gep1532 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1530, i32 0, i32 1
  store i64 %a.rd.len1505, ptr %err.ctx1.gep1532, align 8
  %err.p2i1533 = ptrtoint ptr %err.alloc1524 to i64
  br label %a.rd.done1503

a.rd.done1503:                                    ; preds = %a.rd.err.oob1502, %a.rd.err.null1501, %a.rd.ok1500
  %a.rd.tag1534 = phi i1 [ true, %a.rd.ok1500 ], [ false, %a.rd.err.null1501 ], [ false, %a.rd.err.oob1502 ]
  %a.rd.pay1535 = phi i64 [ %a.rd.elem1511, %a.rd.ok1500 ], [ %err.p2i1522, %a.rd.err.null1501 ], [ %err.p2i1533, %a.rd.err.oob1502 ]
  %ram.tag1536 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1534, 0
  %ram.pay1537 = insertvalue { i1, i64 } %ram.tag1536, i64 %a.rd.pay1535, 1
  %unwrap.is_pos1538 = extractvalue { i1, i64 } %ram.pay1537, 0
  br i1 %unwrap.is_pos1538, label %unwrap.pos.84, label %unwrap.abort.84

unwrap.pos.84:                                    ; preds = %a.rd.done1503
  %unwrap.pay.pos1570 = extractvalue { i1, i64 } %ram.pay1537, 1
  store i64 %unwrap.pay.pos1570, ptr %var.sp, align 8
  %var.load1571 = load i64, ptr %var.sp, align 8
  %cmptmp1572 = icmp eq i64 %var.load1571, 0
  br i1 %cmptmp1572, label %choice.then1573, label %choice.exit1574

unwrap.abort.84:                                  ; preds = %a.rd.done1503
  %unwrap.pay.abort1539 = extractvalue { i1, i64 } %ram.pay1537, 1
  %err.ptr1540 = inttoptr i64 %unwrap.pay.abort1539 to ptr
  %err.code.gep1541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1540, i32 0, i32 0
  %err.code1542 = load i64, ptr %err.code.gep1541, align 8
  %err.msg.gep1543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1540, i32 0, i32 1
  %err.msg.struct1544 = load ptr, ptr %err.msg.gep1543, align 8
  %err.file.gep1545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1540, i32 0, i32 2
  %err.file.struct1546 = load ptr, ptr %err.file.gep1545, align 8
  %err.line.gep1547 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1540, i32 0, i32 3
  %err.line1548 = load i64, ptr %err.line.gep1547, align 8
  %err.col.gep1549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1540, i32 0, i32 4
  %err.col1550 = load i64, ptr %err.col.gep1549, align 8
  %err.msg.len1551 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1544, i32 0, i32 0
  %err.msg.len1552 = load i64, ptr %err.msg.len1551, align 8
  %err.msg.len1553 = and i64 %err.msg.len1552, 281474976710655
  %err.msg.len321554 = trunc i64 %err.msg.len1553 to i32
  %err.msg.data1555 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1544, i32 0, i32 1
  %err.msg.data1556 = load ptr, ptr %err.msg.data1555, align 8
  %err.file.len1557 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1546, i32 0, i32 0
  %err.file.len1558 = load i64, ptr %err.file.len1557, align 8
  %err.file.len1559 = and i64 %err.file.len1558, 281474976710655
  %err.file.len321560 = trunc i64 %err.file.len1559 to i32
  %err.file.data1561 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1546, i32 0, i32 1
  %err.file.data1562 = load ptr, ptr %err.file.data1561, align 8
  %err.thread.rec1563 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1564 = icmp ne ptr %err.thread.rec1563, null
  br i1 %err.is.thread1564, label %err.thread1565, label %err.normal1566

err.thread1565:                                   ; preds = %unwrap.abort.84
  %err.haserr.gep1567 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1563, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1567, align 8
  %err.err.gep1568 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1563, i32 0, i32 7
  store ptr %err.ptr1540, ptr %err.err.gep1568, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1566:                                   ; preds = %unwrap.abort.84
  %err.panic.printf1569 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1542, i32 %err.msg.len321554, ptr %err.msg.data1556, i32 %err.file.len321560, ptr %err.file.data1562, i64 %err.line1548, i64 %err.col1550)
  call void @exit(i32 1)
  unreachable

choice.then1573:                                  ; preds = %unwrap.pos.84
  br label %loop.exit.83

choice.exit1574:                                  ; preds = %unwrap.pos.84
  %var.load1575 = load ptr, ptr %var.state, align 8
  %call.res1576 = call i64 @"dep_graph::pop_stack"(ptr %var.load1575)
  store i64 %call.res1576, ptr %var.w, align 8
  %var.load1577 = load ptr, ptr %var.ons, align 8
  %a.load1578 = load ptr, ptr %var.ons, align 8
  %a.null1579 = icmp eq ptr %a.load1578, null
  br i1 %a.null1579, label %a.create1580, label %a.after1581

a.create1580:                                     ; preds = %choice.exit1574
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
  store ptr %a.create1583, ptr %var.ons, align 8
  br label %a.after1581

a.after1581:                                      ; preds = %a.create1580, %choice.exit1574
  %a.load21589 = load ptr, ptr %var.ons, align 8
  %var.load1590 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1591 = icmp ne ptr %a.load21589, null
  br i1 %a.wr.nonnull1591, label %a.wr.check1592, label %a.wr.err.null1594

a.wr.check1592:                                   ; preds = %a.after1581
  %a.wr.len1597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21589, i32 0, i32 0
  %a.wr.len1598 = load i64, ptr %a.wr.len1597, align 8
  %a.wr.ge01599 = icmp sge i64 %var.load1590, 0
  %a.wr.lt1600 = icmp slt i64 %var.load1590, %a.wr.len1598
  %a.wr.bounds1601 = and i1 %a.wr.ge01599, %a.wr.lt1600
  br i1 %a.wr.bounds1601, label %a.wr.ok1593, label %a.wr.err.oob1595

a.wr.ok1593:                                      ; preds = %a.wr.check1592
  %a.wr.data1602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21589, i32 0, i32 1
  %a.wr.data1603 = load ptr, ptr %a.wr.data1602, align 8
  %a.elem.gep1604 = getelementptr i64, ptr %a.wr.data1603, i64 %var.load1590
  store i64 0, ptr %a.elem.gep1604, align 8
  br label %a.wr.done1596

a.wr.err.null1594:                                ; preds = %a.after1581
  %arena.cur1605 = call ptr @dva_arena_current()
  %err.alloc1606 = call ptr @dva_arena_alloc(ptr %arena.cur1605, i64 56)
  %err.code.gep1607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1607, align 8
  %err.msg.gep1608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1608, align 8
  %err.file.gep1609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1609, align 8
  %err.line.gep1610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 3
  store i64 0, ptr %err.line.gep1610, align 8
  %err.col.gep1611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 4
  store i64 0, ptr %err.col.gep1611, align 8
  %err.ctx.gep1612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1606, i32 0, i32 5
  %err.ctx0.gep1613 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1612, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1613, align 8
  %err.ctx1.gep1614 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1612, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1614, align 8
  br label %a.wr.done1596

a.wr.err.oob1595:                                 ; preds = %a.wr.check1592
  %arena.cur1615 = call ptr @dva_arena_current()
  %err.alloc1616 = call ptr @dva_arena_alloc(ptr %arena.cur1615, i64 56)
  %err.code.gep1617 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1617, align 8
  %err.msg.gep1618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1618, align 8
  %err.file.gep1619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1619, align 8
  %err.line.gep1620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 3
  store i64 0, ptr %err.line.gep1620, align 8
  %err.col.gep1621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 4
  store i64 0, ptr %err.col.gep1621, align 8
  %err.ctx.gep1622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1616, i32 0, i32 5
  %err.ctx0.gep1623 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1622, i32 0, i32 0
  store i64 %var.load1590, ptr %err.ctx0.gep1623, align 8
  %err.ctx1.gep1624 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1622, i32 0, i32 1
  store i64 %a.wr.len1598, ptr %err.ctx1.gep1624, align 8
  br label %a.wr.done1596

a.wr.done1596:                                    ; preds = %a.wr.err.oob1595, %a.wr.err.null1594, %a.wr.ok1593
  %a.wr.niche1625 = phi ptr [ null, %a.wr.ok1593 ], [ %err.alloc1606, %a.wr.err.null1594 ], [ %err.alloc1616, %a.wr.err.oob1595 ]
  %niche.eq.null1626 = icmp eq ptr %a.wr.niche1625, null
  br i1 %niche.eq.null1626, label %choice.then1627, label %choice.else1628

choice.then1627:                                  ; preds = %a.wr.done1596
  br label %choice.exit1629

choice.else1628:                                  ; preds = %a.wr.done1596
  store ptr %a.wr.niche1625, ptr %var._1630, align 8
  store ptr %a.wr.niche1625, ptr %var._1631, align 8
  store ptr %a.wr.niche1625, ptr %var._1632, align 8
  %err.code.gep1633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1625, i32 0, i32 0
  %err.code1634 = load i64, ptr %err.code.gep1633, align 8
  %err.msg.gep1635 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1625, i32 0, i32 1
  %err.msg.struct1636 = load ptr, ptr %err.msg.gep1635, align 8
  %err.file.gep1637 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1625, i32 0, i32 2
  %err.file.struct1638 = load ptr, ptr %err.file.gep1637, align 8
  %err.line.gep1639 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1625, i32 0, i32 3
  %err.line1640 = load i64, ptr %err.line.gep1639, align 8
  %err.col.gep1641 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1625, i32 0, i32 4
  %err.col1642 = load i64, ptr %err.col.gep1641, align 8
  %err.msg.len1643 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1636, i32 0, i32 0
  %err.msg.len1644 = load i64, ptr %err.msg.len1643, align 8
  %err.msg.len1645 = and i64 %err.msg.len1644, 281474976710655
  %err.msg.len321646 = trunc i64 %err.msg.len1645 to i32
  %err.msg.data1647 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1636, i32 0, i32 1
  %err.msg.data1648 = load ptr, ptr %err.msg.data1647, align 8
  %err.file.len1649 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1638, i32 0, i32 0
  %err.file.len1650 = load i64, ptr %err.file.len1649, align 8
  %err.file.len1651 = and i64 %err.file.len1650, 281474976710655
  %err.file.len321652 = trunc i64 %err.file.len1651 to i32
  %err.file.data1653 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1638, i32 0, i32 1
  %err.file.data1654 = load ptr, ptr %err.file.data1653, align 8
  %err.thread.rec1655 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1656 = icmp ne ptr %err.thread.rec1655, null
  br i1 %err.is.thread1656, label %err.thread1657, label %err.normal1658

choice.exit1629:                                  ; preds = %err.abort1662, %choice.then1627
  %var.load1663 = load ptr, ptr %var.graph, align 8
  %fld.gep1664 = getelementptr inbounds { ptr, ptr }, ptr %var.load1663, i32 0, i32 0
  %fld.load1665 = load ptr, ptr %fld.gep1664, align 8
  %var.load1666 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1667 = icmp ne ptr %fld.load1665, null
  br i1 %a.rd.nonnull1667, label %a.rd.check1668, label %a.rd.err.null1670

err.thread1657:                                   ; preds = %choice.else1628
  %err.haserr.gep1659 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1655, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1659, align 8
  %err.err.gep1660 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1655, i32 0, i32 7
  store ptr %a.wr.niche1625, ptr %err.err.gep1660, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1658:                                   ; preds = %choice.else1628
  %err.panic.printf1661 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1634, i32 %err.msg.len321646, ptr %err.msg.data1648, i32 %err.file.len321652, ptr %err.file.data1654, i64 %err.line1640, i64 %err.col1642)
  call void @exit(i32 1)
  unreachable

err.abort1662:                                    ; No predecessors!
  br label %choice.exit1629

a.rd.check1668:                                   ; preds = %choice.exit1629
  %a.rd.len1673 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1665, i32 0, i32 0
  %a.rd.len1674 = load i64, ptr %a.rd.len1673, align 8
  %a.rd.ge01675 = icmp sge i64 %var.load1666, 0
  %a.rd.lt1676 = icmp slt i64 %var.load1666, %a.rd.len1674
  %a.rd.bounds1677 = and i1 %a.rd.ge01675, %a.rd.lt1676
  br i1 %a.rd.bounds1677, label %a.rd.ok1669, label %a.rd.err.oob1671

a.rd.ok1669:                                      ; preds = %a.rd.check1668
  %a.rd.data1678 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1665, i32 0, i32 1
  %a.rd.data1679 = load ptr, ptr %a.rd.data1678, align 8
  %a.rd.elem.gep1680 = getelementptr i64, ptr %a.rd.data1679, i64 %var.load1666
  %a.rd.elem1681 = load i64, ptr %a.rd.elem.gep1680, align 8
  br label %a.rd.done1672

a.rd.err.null1670:                                ; preds = %choice.exit1629
  %arena.cur1682 = call ptr @dva_arena_current()
  %err.alloc1683 = call ptr @dva_arena_alloc(ptr %arena.cur1682, i64 56)
  %err.code.gep1684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1684, align 8
  %err.msg.gep1685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1685, align 8
  %err.file.gep1686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1686, align 8
  %err.line.gep1687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 3
  store i64 0, ptr %err.line.gep1687, align 8
  %err.col.gep1688 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 4
  store i64 0, ptr %err.col.gep1688, align 8
  %err.ctx.gep1689 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1683, i32 0, i32 5
  %err.ctx0.gep1690 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1689, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1690, align 8
  %err.ctx1.gep1691 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1689, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1691, align 8
  %err.p2i1692 = ptrtoint ptr %err.alloc1683 to i64
  br label %a.rd.done1672

a.rd.err.oob1671:                                 ; preds = %a.rd.check1668
  %arena.cur1693 = call ptr @dva_arena_current()
  %err.alloc1694 = call ptr @dva_arena_alloc(ptr %arena.cur1693, i64 56)
  %err.code.gep1695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1695, align 8
  %err.msg.gep1696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1696, align 8
  %err.file.gep1697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1697, align 8
  %err.line.gep1698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 3
  store i64 0, ptr %err.line.gep1698, align 8
  %err.col.gep1699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 4
  store i64 0, ptr %err.col.gep1699, align 8
  %err.ctx.gep1700 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1694, i32 0, i32 5
  %err.ctx0.gep1701 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1700, i32 0, i32 0
  store i64 %var.load1666, ptr %err.ctx0.gep1701, align 8
  %err.ctx1.gep1702 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1700, i32 0, i32 1
  store i64 %a.rd.len1674, ptr %err.ctx1.gep1702, align 8
  %err.p2i1703 = ptrtoint ptr %err.alloc1694 to i64
  br label %a.rd.done1672

a.rd.done1672:                                    ; preds = %a.rd.err.oob1671, %a.rd.err.null1670, %a.rd.ok1669
  %a.rd.tag1704 = phi i1 [ true, %a.rd.ok1669 ], [ false, %a.rd.err.null1670 ], [ false, %a.rd.err.oob1671 ]
  %a.rd.pay1705 = phi i64 [ %a.rd.elem1681, %a.rd.ok1669 ], [ %err.p2i1692, %a.rd.err.null1670 ], [ %err.p2i1703, %a.rd.err.oob1671 ]
  %ram.tag1706 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1704, 0
  %ram.pay1707 = insertvalue { i1, i64 } %ram.tag1706, i64 %a.rd.pay1705, 1
  %unwrap.is_pos1708 = extractvalue { i1, i64 } %ram.pay1707, 0
  br i1 %unwrap.is_pos1708, label %unwrap.pos.85, label %unwrap.abort.85

unwrap.pos.85:                                    ; preds = %a.rd.done1672
  %unwrap.pay.pos1740 = extractvalue { i1, i64 } %ram.pay1707, 1
  %pay.ptr1741 = inttoptr i64 %unwrap.pay.pos1740 to ptr
  store ptr %pay.ptr1741, ptr %var.w_node, align 8
  %var.load1742 = load ptr, ptr %var.w_node, align 8
  %fld.gep1743 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1742, i32 0, i32 0
  %fld.load1744 = load ptr, ptr %fld.gep1743, align 8
  %a.load1745 = load ptr, ptr %var.scc_names, align 8
  %a.null1746 = icmp eq ptr %a.load1745, null
  br i1 %a.null1746, label %a.create1747, label %a.after1748

unwrap.abort.85:                                  ; preds = %a.rd.done1672
  %unwrap.pay.abort1709 = extractvalue { i1, i64 } %ram.pay1707, 1
  %err.ptr1710 = inttoptr i64 %unwrap.pay.abort1709 to ptr
  %err.code.gep1711 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1710, i32 0, i32 0
  %err.code1712 = load i64, ptr %err.code.gep1711, align 8
  %err.msg.gep1713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1710, i32 0, i32 1
  %err.msg.struct1714 = load ptr, ptr %err.msg.gep1713, align 8
  %err.file.gep1715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1710, i32 0, i32 2
  %err.file.struct1716 = load ptr, ptr %err.file.gep1715, align 8
  %err.line.gep1717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1710, i32 0, i32 3
  %err.line1718 = load i64, ptr %err.line.gep1717, align 8
  %err.col.gep1719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1710, i32 0, i32 4
  %err.col1720 = load i64, ptr %err.col.gep1719, align 8
  %err.msg.len1721 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1714, i32 0, i32 0
  %err.msg.len1722 = load i64, ptr %err.msg.len1721, align 8
  %err.msg.len1723 = and i64 %err.msg.len1722, 281474976710655
  %err.msg.len321724 = trunc i64 %err.msg.len1723 to i32
  %err.msg.data1725 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1714, i32 0, i32 1
  %err.msg.data1726 = load ptr, ptr %err.msg.data1725, align 8
  %err.file.len1727 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1716, i32 0, i32 0
  %err.file.len1728 = load i64, ptr %err.file.len1727, align 8
  %err.file.len1729 = and i64 %err.file.len1728, 281474976710655
  %err.file.len321730 = trunc i64 %err.file.len1729 to i32
  %err.file.data1731 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1716, i32 0, i32 1
  %err.file.data1732 = load ptr, ptr %err.file.data1731, align 8
  %err.thread.rec1733 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1734 = icmp ne ptr %err.thread.rec1733, null
  br i1 %err.is.thread1734, label %err.thread1735, label %err.normal1736

err.thread1735:                                   ; preds = %unwrap.abort.85
  %err.haserr.gep1737 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1733, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1737, align 8
  %err.err.gep1738 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1733, i32 0, i32 7
  store ptr %err.ptr1710, ptr %err.err.gep1738, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1736:                                   ; preds = %unwrap.abort.85
  %err.panic.printf1739 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1712, i32 %err.msg.len321724, ptr %err.msg.data1726, i32 %err.file.len321730, ptr %err.file.data1732, i64 %err.line1718, i64 %err.col1720)
  call void @exit(i32 1)
  unreachable

a.create1747:                                     ; preds = %unwrap.pos.85
  %arena.cur1749 = call ptr @dva_arena_current()
  %a.create1750 = call ptr @dva_arena_alloc(ptr %arena.cur1749, i64 24)
  %arena.cur1751 = call ptr @dva_arena_current()
  %a.buf1752 = call ptr @dva_arena_alloc(ptr %arena.cur1751, i64 128)
  %a.len.gep1753 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 0
  store i64 0, ptr %a.len.gep1753, align 8
  %a.data.gep1754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 1
  store ptr %a.buf1752, ptr %a.data.gep1754, align 8
  %a.cap.gep1755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1750, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1755, align 8
  store ptr %a.create1750, ptr %var.scc_names, align 8
  br label %a.after1748

a.after1748:                                      ; preds = %a.create1747, %unwrap.pos.85
  %a.load21756 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1748
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21756, i32 0, i32 0
  %a.len1757 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21756, i32 0, i32 2
  %a.cap1758 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1757, %a.cap1758
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21756)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21756, i32 0, i32 1
  %a.cur.data1759 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21756, i32 0, i32 0
  %a.cur.len1760 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1761 = getelementptr i64, ptr %a.cur.data1759, i64 %a.cur.len1760
  %slot.p2i = ptrtoint ptr %fld.load1744 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1761, align 8
  %a.next.len = add i64 %a.cur.len1760, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21756, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1762 = load i64, ptr %var.w, align 8
  %var.load1763 = load i64, ptr %var.u, align 8
  %cmptmp1764 = icmp eq i64 %var.load1762, %var.load1763
  br i1 %cmptmp1764, label %choice.then1765, label %choice.exit1766

choice.then1765:                                  ; preds = %a.store
  br label %loop.exit.83

choice.exit1766:                                  ; preds = %a.store
  br label %loop.latch.83

a.create1772:                                     ; preds = %loop.exit.83
  %arena.cur1774 = call ptr @dva_arena_current()
  %a.create1775 = call ptr @dva_arena_alloc(ptr %arena.cur1774, i64 24)
  %arena.cur1776 = call ptr @dva_arena_current()
  %a.buf1777 = call ptr @dva_arena_alloc(ptr %arena.cur1776, i64 128)
  %a.len.gep1778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 0
  store i64 0, ptr %a.len.gep1778, align 8
  %a.data.gep1779 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 1
  store ptr %a.buf1777, ptr %a.data.gep1779, align 8
  %a.cap.gep1780 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1775, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1780, align 8
  store ptr %a.create1775, ptr %var.scc_names, align 8
  br label %a.after1773

a.after1773:                                      ; preds = %a.create1772, %loop.exit.83
  %a.load21781 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21781, i32 0, i32 0
  %a.len.query1782 = load i64, ptr %a.len.query, align 8
  %cmptmp1783 = icmp sgt i64 %a.len.query1782, 1
  br i1 %cmptmp1783, label %or.86.then, label %or.86.else

or.86.then:                                       ; preds = %a.after1773
  br label %or.86.exit

or.86.else:                                       ; preds = %a.after1773
  %var.load1784 = load i1, ptr %var.is_self_rec, align 1
  br label %or.86.exit

or.86.exit:                                       ; preds = %or.86.else, %or.86.then
  %or.86.phi = phi i1 [ %cmptmp1783, %or.86.then ], [ %var.load1784, %or.86.else ]
  store i1 %or.86.phi, ptr %var.is_rec, align 1
  %var.load1785 = load ptr, ptr %var.state, align 8
  %var.load1786 = load ptr, ptr %var.scc_names, align 8
  %a.load1787 = load ptr, ptr %var.scc_names, align 8
  %a.null1788 = icmp eq ptr %a.load1787, null
  br i1 %a.null1788, label %a.create1789, label %a.after1790

a.create1789:                                     ; preds = %or.86.exit
  %arena.cur1791 = call ptr @dva_arena_current()
  %a.create1792 = call ptr @dva_arena_alloc(ptr %arena.cur1791, i64 24)
  %arena.cur1793 = call ptr @dva_arena_current()
  %a.buf1794 = call ptr @dva_arena_alloc(ptr %arena.cur1793, i64 128)
  %a.len.gep1795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1792, i32 0, i32 0
  store i64 0, ptr %a.len.gep1795, align 8
  %a.data.gep1796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1792, i32 0, i32 1
  store ptr %a.buf1794, ptr %a.data.gep1796, align 8
  %a.cap.gep1797 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1792, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1797, align 8
  store ptr %a.create1792, ptr %var.scc_names, align 8
  br label %a.after1790

a.after1790:                                      ; preds = %a.create1789, %or.86.exit
  %a.load21798 = load ptr, ptr %var.scc_names, align 8
  %var.load1799 = load i1, ptr %var.is_rec, align 1
  %arena.cur1800 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1800, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21798, ptr %rec.fld, align 8
  %rec.fld1801 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1799, ptr %rec.fld1801, align 1
  %fld.gep1802 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1785, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1802, align 8
  br label %a.check1803

a.check1803:                                      ; preds = %a.after1790
  %a.len1806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1807 = load i64, ptr %a.len1806, align 8
  %a.cap1808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1809 = load i64, ptr %a.cap1808, align 8
  %a.needs.grow1810 = icmp eq i64 %a.len1807, %a.cap1809
  br i1 %a.needs.grow1810, label %a.grow1804, label %a.store1805

a.grow1804:                                       ; preds = %a.check1803
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1805

a.store1805:                                      ; preds = %a.grow1804, %a.check1803
  %a.cur.data1811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1812 = load ptr, ptr %a.cur.data1811, align 8
  %a.cur.len1813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1814 = load i64, ptr %a.cur.len1813, align 8
  %a.elem.gep1815 = getelementptr i64, ptr %a.cur.data1812, i64 %a.cur.len1814
  %slot.p2i1816 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1816, ptr %a.elem.gep1815, align 8
  %a.next.len1817 = add i64 %a.cur.len1814, 1
  %b.len.gep1818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1817, ptr %b.len.gep1818, align 8
  br label %choice.exit1466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

define ptr @"dep_graph::tarjan_scc"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._29 = alloca ptr, align 8
  %var._27 = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %entry
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
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

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  ret ptr %fld.load38

a.create:                                         ; preds = %loop.body.87
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

a.after:                                          ; preds = %a.create, %loop.body.87
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
  store i64 334, ptr %err.line.gep, align 8
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
  store i64 334, ptr %err.line.gep19, align 8
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
  br label %loop.latch.87
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
